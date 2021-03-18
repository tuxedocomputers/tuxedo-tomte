#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);

my $files;


my $var = 123;

my $md5_hash = md5_hex($var);

print $md5_hash;


