#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


my $package = 'tree';
my $retString = `dpkg-query -W $package`;
my $retValue = $?;
print 'retValue: '.$retValue."\n";
if ($retValue != 0) {
    print "package $package is not installed (return 0)\n";
} else {
    if ($retString =~ /$package/) {
        print "package $package is installed (return 1)\n";
    }
}


