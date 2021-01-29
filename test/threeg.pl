#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $retVal = system('lsusb -d 12d1:15bb');

print "retval: $retVal\n";

$retVal = system('lsusb');

print "retval: $retVal\n";

if ($retVal == 256) {
	print "retval = 0";
}
