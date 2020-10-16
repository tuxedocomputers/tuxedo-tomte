#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my %firstHash = (
	module1 => {
		aString => '1',
		aNumber => 1,
	},
	module2 => {
		aString => '2',
		aNumber => 2,
	},
);

my $module;

foreach $module (sort keys %firstHash) {
	print "#### Module: $module\n";
	print Dumper( %firstHash );
	if (int($firstHash{$module}{aString}) == int($firstHash{$module}{aNumber})) {
		print "is equal\n";
	} else {
		print "is NOT equal\n";
	}
}

print "second run\n";

foreach $module (sort keys %firstHash) {
	print "#### Module: $module\n";
	print Dumper( %firstHash );
	if (int($firstHash{$module}{aString}) == int($firstHash{$module}{aNumber})) {
		print "is equal\n";
	} else {
		print "is NOT equal\n";
	}
}




