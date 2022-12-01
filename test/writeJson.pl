#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;
use JSON;

my %list;

$list{module1} = {
		name => 'module1-fix',
		version => 1,
		installed => 'yes',
		blocked => 'no',
		required => 'yes',
	};

$list{module2} = {
		name => 'module2-fix',
		version => 1,
		installed => 'yes',
		blocked => 'no',
		required => 'yes',
	};

$list{module3} = {
		name => 'module3-fix',
		version => 1,
		installed => 'yes',
		blocked => 'no',
		required => 'yes'.
	};

my $listJSON = encode_json $list;

print "list\n";
print "%list\n";




