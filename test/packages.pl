#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


my $pkcon = 'pkcon';
my $silent = '-y';
my $plain = '-p';
my $action = shift;
my $package = shift;

my $status = system($pkcon, $silent, $plain ,$action, $package);

print 'status: '.$status."\n";

