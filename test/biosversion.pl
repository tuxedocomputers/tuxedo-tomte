#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $biosVersion = `dmidecode -s bios-version`;
$biosVersion =~ s/\s+//g;
print ">>$biosVersion<<\n";
