#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $err = system("dmidecode -s bios-version");
print "!: $!\n";
print "err: $err\n";
