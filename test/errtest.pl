#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $output = `dpkg-query -W mc`;
my $ret = $?;
$ret = $ret >> 8;

print "$output\n";

print "$ret\n";
