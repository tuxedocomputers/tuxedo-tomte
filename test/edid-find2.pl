#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use FindBin qw($Bin);
use lib "$Bin/.";
use Parse::EDID qw(parse_edid);


# TODO just for debug, delete afterwards
use Data::Dumper qw(Dumper);


print "present? ".isDisplayPresent("LPL")."\n";


sub isDisplayPresent {
    my $edidSearchString = shift;
    my @edidRefs = getEDIDData();
    my $edidInfo;
    foreach my $edidData (@edidRefs) {
		print "ediddata: $edidData\n";
        $edidInfo = $$edidData{manufacturer_name}." Model ".$$edidData{product_code}." Serial Number ".$$edidData{serial_number};
		print "edidinfo: $edidInfo\n";
        if ($edidInfo =~ /$edidSearchString/) {
            return (1);
        }
    }
    print "edid string not found\n";
    return (0);
}


sub getEDIDData {
    my @edidFiles = findActiveEDIDs();
    my @edidRefs;
    my @edidInfo;
    my $FH;
    my $fileContent;
    foreach ( @edidFiles ) {
        if ( open $FH, '<', $_ ) {
            $fileContent = do { local $/; <$FH> };
            close $FH;
            push @edidRefs, parse_edid($fileContent);
        } else {
            print "Err: $!\n";
            print "could not open file $_ $!\n";
        }
    }
    # returns array of hash references to module
    return @edidRefs;
}

sub findActiveEDIDs {
    my $cards_dir = '/sys/class/drm';
    my $dir_handle;
    my @edidfile;
    my $enabledFileContent;
    my $statusFileContent;

    my $edidTrigger = 0;

    if ( !opendir ($dir_handle, $cards_dir)) {
        print "Err: $!\n";
        print "unable to open $cards_dir: $!\n";
        return @edidfile;
    }
    my @FILES = grep { $_ ne '.' && $_ ne '..' } readdir($dir_handle);
    foreach my $file (@FILES) {
        my $path = "$cards_dir/$file";
        if ( -d $path ) {
            my $enabledFile = "$path/enabled";
            if ( -e $enabledFile ) {
                open(FILE, $enabledFile);
                $enabledFileContent = <FILE>;
                close(FILE);
                if ($enabledFileContent =~ /enabled/) {
                    my $statusFile = "$path/status";
                    if ( -e $statusFile ) {
                        open(FILE2, $statusFile);
                        $statusFileContent = <FILE2>;
                        if ($statusFileContent =~ /connected/) {
                            push @edidfile, "$path/edid";
                            $edidTrigger = 1;
                        }
                    }
                }
            }
        }
    }
    if (! $edidTrigger ) {
        print "no enabled and active edid files found!\n";
    }
    return @edidfile;
}
