#!/usr/bin/perl -w

use strict qw( vars subs );
use warnings;
use Cwd qw( cwd );
use File::Copy;
use File::Copy::Recursive qw( dircopy );
use File::Path qw( make_path rmtree );
use File::chdir;
use File::Slurp qw(read_file write_file);
use POSIX qw( strftime );
use Dpkg::Changelog;

sub stop {
	my ($string) = @_;
	print "$string\n";
	my $input = <STDIN>;
}

# executes a given command, prints a given description and the output
sub execute {
	my ($description, $command) = @_;
	print "$description\n";
	my $output = `$command`;
	my $retValue = $?;
	my $retMessage = q{};
	if ($retValue == 0) {
		$retMessage = "no errors: $retValue";
	} else {
		$retMessage = "errors found !!!: $retValue";
	}
	print "$output\n$retMessage\n";
	return (0);
}

# files which do not belong to the public
# and must be removed before publication
my @notForPublicFiles = (
	'codeCheck.pl',
	'localBuild.pl',
	'locale_handling.md',
	'README.md',
	'releaseCommit.pl',
	'translationsCheck.pl',
	'archive/TomteTomb.pl',
	'archive',
	'.git',
	'.gitattributes',
	'.gitignore',
	'.gitlab-ci.yml',
	'.*.swp',
	'tuxedo-tomte');

# Set default email if environment variable is not given
sub setEmail {
	my $email = q{};
	my $debemail = q{};
	if (defined($ENV{'EMAIL'})) {
		$email = $ENV{EMAIL};
	} elsif (defined($ENV{'DEBEMAIL'})) {
		$debemail = $ENV{DEBEMAIL};
	} else {
		print '-> default emailaddress not set\n';
		print '-> setting tux@tuxedocomputers.com\n';
		$ENV{'DEBEMAIL'} = 'tux@tuxedocomputers.com';
	}
}

sub build {
	# replaces placeholder with current version numbers
	my $versionInChangelog = `dpkg-parsechangelog --show-field Version`;
	my $data = read_file 'src/tuxedo-tomte', {binmode => ':utf8'};
	$data =~ s/API-Change.Feature-Release.Hotfix-Release/$versionInChangelog/g;
	write_file 'src/tuxedo-tomte', {binmode => ':utf8'}, $data;

	# build the package
	print "build package ...\n";
	my $output = `dpkg-buildpackage --build=full -uc -us`;
	print "return from dpkg-buildpackage:\n$output";
	print "done building package !!\n";
	print "the resulting files are in the folder above this one\n";
}

my $codeCheckOutput = `./codeCheck.pl`;
print "$codeCheckOutput\n";

my $input;
print "-> Do you wish to proceed based on these informations? y/n\n";
$input = <STDIN>;
chomp $input;
if ($input ne 'y') {
	exit (1);
}

my $currentPath = cwd;

# clean up possible old remnants
rmtree('/tmp/tuxedo-tomte');
my $baseBuildDirectory = '/tmp/tuxedo-tomte/build_local_deb';
my $buildDirectory = $baseBuildDirectory.'/tuxedo-tomte';
make_path($buildDirectory) or die "-> could not create build directory : $!\n";
dircopy($currentPath, $buildDirectory) or die "-> can't copy directory : $!";
$CWD = $buildDirectory;

# extract version details for creating test version
my $lastChangelogVersion = `dpkg-parsechangelog --show-field Version`;
$lastChangelogVersion =~ s/\s+//;
my $branchName = `git branch --show-current`;
$branchName =~ s/\s+//g;
my $issueNumber = $branchName;
$issueNumber =~ s/-.*//;
$issueNumber =~ s/\s+//g;
my $timeStamp = `git log -1 --format="%at"`;
$timeStamp =~ s/\s+//g;
$timeStamp = strftime("%Y%m%d-%H%M%S", localtime($timeStamp));

$input = '0';
print "make a final release for publication? y/n\n".
	"(last version was: $lastChangelogVersion, only say 'y' if you REALLY know what you are doing!!)\n";
$input = <STDIN>;
$input =~ s/\s+//g;

my $finalVersion;
my $finalRelease = 'no';
my $newVersion;
if ($input eq 'y') {
	print "enter new release version number:\n";
	$newVersion = <STDIN>;
	$newVersion =~ s/\s+//g;
	if ($newVersion eq $lastChangelogVersion) {
		print "new version number is equal to last version number !!!: $newVersion\n";
		exit (0);
	}
	$finalRelease = 'yes';
	$finalVersion = "$newVersion";
} else {
	$finalRelease = 'no';
	$finalVersion="$lastChangelogVersion-test-$timeStamp-$issueNumber";
}

my $commitHash = `git log -1 --pretty="%H" -- debian/changelog`;
$commitHash =~ s/\s+//g;

# Generate a new entry in the debian changelog file
my $command = "gbp dch --verbose --debian-branch \"$branchName\" --new-version \"$finalVersion\" --since=\"$commitHash\"";
`$command`;


if ($finalRelease eq 'yes') {
	system( 'vim debian/changelog' );
	`dch --release ""`;
	copy('debian/changelog', 'changelog');
	`git add changelog`;
	`git add debian/changelog`;
	my $commitBody = `dpkg-parsechangelog --show-field Changes | awk 'NR>3'`;
	print "--------------------------------------------\n";
	print "-> git commit ...\n";
	my $commitMessage = "Version Release $finalVersion";
	$commitBody =~ s/\"/\\"/g;
	print ">$commitMessage< >$commitBody<\n";
	execute(">$commitMessage< >$commitBody<", "git commit -m \"$commitMessage\" -m \"$commitBody\"");
	print "--------------------------------------------\n";
	execute("--> git tag $finalVersion", "git tag $finalVersion");
	execute("--> git push", "git push");
	execute("--> git push origin $finalVersion", "git push origin $finalVersion");
}

# remove stuff that does not belong into the package
foreach my $name (@notForPublicFiles) {
	if (-d $name) {
		rmtree($name);
	} else {
		unlink glob "$name";
	}
}

stop("after removing files");

# Run the build script
print "-> Running build script...\n";
build();

# Change back to the original directory
chdir($currentPath);
chdir('..');

# remove the old files if they exist
if (-e "tuxedo-tomte_$finalVersion\_\*\.deb") {
	print "old file exists -> removing\n";
	unlink("tuxedo-tomte_$finalVersion\_\*\.deb");
}
execute("-> copying deb-file ...", "cp $baseBuildDirectory/tuxedo-tomte_$finalVersion\_\*\.deb \.");
if (-e "tuxedo-tomte_$finalVersion\.tar\.gz") {
	print "old file exists -> removing\n";
	unlink("tuxedo-tomte_$finalVersion\.tar\.gz");
}
execute("-> building compressed file ...", "tar czvf tuxedo-tomte_$finalVersion\.tar\.gz -C $baseBuildDirectory \.");

# Remove the temporary build directory
print "-> Removing temporary build directory...\n";
rmtree('/tmp/tuxedo-tomte');
print "done!\n";
