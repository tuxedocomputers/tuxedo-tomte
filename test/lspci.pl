#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $lspciValues = `lspci -vn`;

my @subsystemValues = ('1558:50f0', '1558:96e1', '8086:001[0-9A-Za-z]');
my $lspciDevices = `lspci -vn`;

sub findPciDevice {
    my ($lspciList, @pciDevices) = @_;
    my $pciDevice;
    foreach $pciDevice (@pciDevices) {
		$pciDevice = $pciDevice;
		print "$pciDevice\n";
        if ($lspciList =~ /$pciDevice/) {
            return 1;
        }
    }
    return 0;
}

if (findPciDevice($lspciDevices, @subsystemValues)) {
	print "found\n";
} else {
	print "none\n";
}
