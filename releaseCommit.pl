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
my $commitMessage = "Version Release $versionTag\n";

# Set default email if environment variable is not given
my $email = q{};
my $debemail = q{};
if (defined($ENV{'EMAIL'})) {
	$email = $ENV{EMAIL};
}
if (defined($ENV{'DEBEMAIL'})) {
	$debemail = $ENV{DEBEMAIL};
}
if (($email eq q{}) && ($debemail eq q{})) {
	print 'default emailaddress not set\n';
	print 'setting tux@tuxedocomputers.com\n';
	$ENV{'DEBEMAIL'} = 'tux@tuxedocomputers.com';
}

my $branch = `git symbolic-ref --short HEAD`;
my $commitHash = `git log -1 --pretty="%H" -- debian/changelog`;
`gbp dch --verbose --debian-branch="\$branch" --new-version="\$versionTag" --since="\$commitHash"`;
`head debian/changelog -n 5`;
`vim debian/changelog`;
`dch --release ""`;
`cp debian/changelog changelog`;

# Set version tag and perform commit
`git add debian/changelog`;
`git add changelog`;

my $commitBody = `dpkg-parsechangelog --show-field Changes | awk 'NR>3'`;
`git commit -m "\$commitMessage" -m "\$commitBody"`;
`git tag \$versionTag`;

print "done!\n";
