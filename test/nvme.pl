#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my %nvmeDevice;
my $key;

while ( defined (my $dir = glob '/sys/class/nvme/*' )) {
	$nvmeDevice{$dir}{'model'} = readFileReturnLine("$dir/model");
	$nvmeDevice{$dir}{'subdevice'} = readFileReturnLine("$dir/device/subsystem_device");
	$nvmeDevice{$dir}{'subvendor'} = readFileReturnLine("$dir/device/subsystem_vendor");
	$nvmeDevice{$dir}{'firmware'} = readFileReturnLine("$dir/firmware_rev");
}
print Dumper(%nvmeDevice);

foreach $key ( keys %nvmeDevice ) {
	if (($nvmeDevice{$key}{model} =~ /SA2000M8(?:25|50|100)0G/) &&
			($nvmeDevice{$key}{subdevice} =~ /0x2263/) &&
			($nvmeDevice{$key}{subvendor} =~ /0x2646/) &&
			($nvmeDevice{$key}{firmware} lt 'S5Z42109')) {
		print "upgrade necessary on $key\n";
	}
}



sub readFileReturnLine {
    my $file = shift;
    my $FH;
    my $line;
    if ( open $FH, "<", $file ) {
        chomp($line = <$FH>);
        close $FH;
    } else {
        print "Err: $!";
        print "no $file present or unable to open the file for reading";
        return;
    }
    return $line;
}

