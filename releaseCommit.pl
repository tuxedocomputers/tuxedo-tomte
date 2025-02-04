#!/usr/bin/perl -w

use strict qw(vars subs);
use warnings;

# check git status
print "Check git status\n";
`git status`;

# check
print "Check for consistency\n";
`./codeCheck.pl`;
my $exitCode = $?;
if ($exitCode != 0) {
	print "code check returns with $exitCode ... something is not right with the code\nproceed with caution\n";
} else {
	print "code check returns with $exitCode ... looks great to build release\n";
}

print "Do you wish to proceed based on these informations? (press enter to continue)\n";
<STDIN>;

# Prompt user for the version
my $versionString = `dpkg-parsechangelog | awk '/^Version:/ {print \$2}'`;
print "Last version is $versionString\n";
print "Please enter the new version as: X.X.X\n";
my $versionTag = <STDIN>;
$versionTag =~ s/\s+//g;
if ($versionTag !~ /^\d+\.\d+\.\d+$/) {
	print "something is wrong with the release version !!";
	exit (1);
}
print "version tag: >$versionTag<\n";
my $commitMessage = "Version release $versionTag\n";

# Set default email if environment variable is not given
my $email = q{};
my $debemail = q{};
if (defined($ENV{'EMAIL'})) {
	$email = $ENV{EMAIL};
	print "using $email as \$EMAIL\n";
}
if (defined($ENV{'DEBEMAIL'})) {
	$debemail = $ENV{DEBEMAIL};
	print "using $debemail as \$DEBEMAIL\n";
}
if (($email eq q{}) && ($debemail eq q{})) {
	print 'default emailaddress not set\n';
	print 'setting tux@tuxedocomputers.com\n';
	$ENV{'DEBEMAIL'} = 'tux@tuxedocomputers.com';
}

my $branch = `git symbolic-ref --short HEAD`;
$branch =~ s/\s+//g;
print "branch: >$branch<\n";
my $commitHash = `git log -1 --pretty="%H" -- debian/changelog`;
$commitHash =~ s/\s+//g;
print "commitHash: >$commitHash<\n";
print "--------------------------------------------\n";
print "gbp dch ...\n";
my $output = `gbp dch --verbose --debian-branch="$branch" --new-version="$versionTag" --since="$commitHash"`;
print "$output\n";
`head debian/changelog -n 5`;
system('vim debian/changelog');
print "commitHash: >$commitHash<\n";
`dch --release ""`;
`cp debian/changelog changelog`;

# Set version tag and perform commit
`git add debian/changelog`;
`git add changelog`;

my $commitBody = `dpkg-parsechangelog --show-field Changes | awk 'NR>3'`;
print "--------------------------------------------\n";
print "git commit ...\n";
$commitMessage =~ s/"/\"/g;
$commitBody =~ s/"/\"/g;
$output = `git commit -m "$commitMessage" -m "$commitBody"`;
print "$output\n";
print "--------------------------------------------\n";
print "git tag ...\n";
$output = `git tag $versionTag`;
print "$output\n";

print "done!\n";
