#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


my $pkconf = 'pkcon';
my $install = 'install';
my $remove = 'remove';
my $package = 'tree';

my $status = system($pkconf, ,$remove, $package);

print 'status: '.$status."\n";

