#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use FindBin qw($Bin);
use lib "$Bin/.";
use Parse::EDID qw(parse_edid);


# TODO just for debug, delete afterwards
use Data::Dumper qw(Dumper);


print "present? ".isDisplayPresent("LPL")."\n";



###############################################################################
# searches the sysfs subdirectory for active monitor entries
# and returns them as an array
#
sub findActiveEDIDs {
	my $cards_dir = '/sys/class/drm';
	my $dir_handle;
	my @edidfile;

	if ( !opendir ($dir_handle, $cards_dir)) {
		printLog("unable to open $cards_dir: $!");
		return @edidfile;
	}
	my @FILES = grep { $_ ne '.' && $_ ne '..' } readdir($dir_handle);
	foreach my $file (@FILES) {
		my $path = "$cards_dir/$file";
		if ( -d $path ) {
			print "path: $path\n";
			my $enabledfile = "$path/enabled";
			if ( -e $enabledfile ) {
				open(FILE, $enabledfile);
				$_ = <FILE>;
				print "enabled: $_\n";
				close(FILE);
				if ($_ =~ /enabled/) {
					#print "enabled found under $path\n";
					my $statusfile = "$path/status";
					if ( -e $statusfile ) {
						open(FILE2, $statusfile);
						$_ = <FILE2>;
						print "status: $_\n";
						if ($_ =~ /connected/) {
							push @edidfile, "$path/edid";
						}
					}
				}
			}
		}
	}
	return @edidfile;
}


###############################################################################
# gets valid edid files
# converts edid data into an array of hash references to origConfModules
#
###############################################################################
# gets valid edid files
# converts edid data into an array of hash references to origConfModules
#
sub getEDIDData {
    my @edidFiles = findActiveEDIDs();
    my @edidRefs;
    my @edidInfo;
    my $fh;
    my $fileContent;
    foreach ( @edidFiles ) {
        if ( open $fh, '<', $_ ) {
            $fileContent = do { local $/; <$fh> };
            close $fh;
            push @edidRefs, parse_edid($fileContent);
        } else {
            printLog("could not open file $_ $!");
        }
    }
    # returns array of hash references to module
    return @edidInfo;
}


sub isDisplayPresent {
    my $edidSearchString = shift;
    my @edidRefs = getEDIDData();
    my $edidInfo;
    foreach my $edidData (@edidRefs) {
        $edidInfo = $$edidData{manufacturer_name}." Model ".$$edidData{product_code}." Serial Number ".$$edidData{serial_number};
        if ($edidInfo =~ m/$edidSearchString/) {
            return (1);
        }
    }
    return (0);
}


