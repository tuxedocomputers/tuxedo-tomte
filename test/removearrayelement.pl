#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my @removeelements = ('mirrors', 'repos', 'test');
my @allmodules = ('mirrors', 'repos', 'corefix');

foreach (@removeelements) {
	for my $index (reverse 0..$#allmodules) {
		if ( $allmodules[$index] =~ /$_/ ) {
			splice(@allmodules, $index, 1, ());
		}
	}
	print "element: $_\n";
	print Dumper(@allmodules);
}
print "lenght: ".scalar(@allmodules)."\n";
