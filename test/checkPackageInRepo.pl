#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $searchPattern = 'nvidia-driver-530';
my $return = `apt-cache search --names-only ^$searchPattern\$`;
chop($return);
$return =~ s/ .*//;

if ($searchPattern eq $return) {
	print "package exists\n";
} else {
	print "no\n";
}
