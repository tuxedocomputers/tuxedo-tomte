#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


my $package = 'tree';
my $cmd = 'dpkg -s '.$package.' >/dev/null 2>&1';
my $cmd2 = 'dpkg-query -W -f=\'${status}\' '.$package;
my $retString = `$cmd2`;
my $retValue = $?;
print 'retValue: '.$retValue."\n";
print "retString: $retString\n";
if ($retString =~ m/install ok installed/) {
    print "package $package is installed (return 0)\n";
} else {
    print "package $package is not installed (return 1)\n";
}


