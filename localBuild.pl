#!/usr/bin/perl -w

use strict qw( vars subs );
use warnings;
use Cwd qw( cwd );
use File::Copy;
use File::Copy::Recursive qw( dircopy );
use File::Path qw( make_path rmtree );
use File::chdir;
use POSIX qw( strftime );

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

rmtree('/tmp/tuxedo-tomte');
my $baseBuildDirectory = '/tmp/tuxedo-tomte/build_local_deb';
my $gitCloneDir = $currentPath;
$gitCloneDir =~ s/.*\///;
my $buildDirectory = $baseBuildDirectory.'/'.$gitCloneDir;
make_path($buildDirectory) or die "-> could not create build directory : $!\n";
dircopy($currentPath, $buildDirectory) or die "-> can't copy directory : $!";
$CWD = $buildDirectory;

# Extract version details for creating test version
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
print "-> make a final release for publication? y/n\n".
		"(version would be: $lastChangelogVersion, only say 'y' if you REALLY know what you are doing!!)\n";
$input = <STDIN>;
$input =~ s/\s+//g;

my $finalVersion;
if ($input eq 'y') {
	$finalVersion = "$lastChangelogVersion";
} else {
	$finalVersion="$lastChangelogVersion-test-$timeStamp-$issueNumber";
}

my $commitHash = `git log -1 --pretty="%H" -- debian/changelog`;
$commitHash =~ s/\s+//g;

# Generate a new entry in the debian changelog file
my $command = "gbp dch --verbose --debian-branch \"$branchName\" --new-version \"$finalVersion\" --since=\"$commitHash\"";
`$command`;

# Run the build script
print "-> Running build script...\n";
`./build.pl`;

# Change back to the original directory
chdir($currentPath);
chdir('..');

print "-> copying deb-file ...\n";
`cp $baseBuildDirectory/tuxedo-tomte_$finalVersion\_\*\.deb .`;
print "-> building compressed file ...\n";
`tar czf tuxedo-tomte_$finalVersion\.tar\.gz -C $baseBuildDirectory \.`;

# Remove the temporary build directory
print "-> Removing temporary build directory...\n";
rmtree('/tmp/tuxedo-tomte');
print "done!\n";
