#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $retVal = `lspci -d 8086:2829`;

print "retval: $retVal\n";

if ($retVal =~ /Intel/) {
	print "found!\n";
}

if (`lspci -d 8086:2829` =~ /Intel/) {
	print "found2\n";
}
