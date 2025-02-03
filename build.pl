#!/usr/bin/perl -w

use strict qw(vars subs);
use warnings;
use File::Slurp qw(read_file write_file);

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
