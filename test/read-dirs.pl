#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

# for debugging
use Data::Dumper;

my $sourcesListDir = '/etc/apt/sources.list.d/';
my %dirHash;
my $DH;

if (opendir($DH,$sourcesListDir)) {
	while (readdir $DH) {
		if ($_ eq '.' or $_ eq '..') { next; }
		print "dir: $_\n";
	}
}

