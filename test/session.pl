#!/usr/bin/perl

my $number = '50e6c1a9';
$number =~ /(.{8})/;
$number = hex($1);
print "nr: $number\n";
