#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


sub cpuinfo {
    my $infos;
    if ( open(FH, '<', '/proc/cpuinfo') ) {
		local $/;
        $infos = <FH>;
        close FH;
        if ($infos =~ /vendor_id\s*:\s*AuthenticAMD/) {
            return (1);
        }
    }
    return (0);
}

if (cpuinfo()) {
	print "AMD\n";
} else {
	print "no AMD\n";
}



