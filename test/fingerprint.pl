#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

	my $fingerprintLsUsb = `lsusb`;
	print "lsusb:\n$fingerprintLsUsb\n----------------\n";

	my @fingerprintRegExp = (
        qr/147e:100[0123]/,
        qr/147e:20(15|16|20)/,
        qr/147e:300[01]/,
        qr/147e:500[23]/,
        qr/0483:201[56]/,
        qr/1c7a:0603/);


