#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $retVal = `lspci -nd 11de:`;

print "retval: $retVal\n";

if ($retVal =~ /030[02]:/) {
    print "found\n";
}

