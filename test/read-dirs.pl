#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;
use File::Copy;

# for debugging
use Data::Dumper;

my %repoHash;
my $DH;
my $distribution = 'Ubuntu';
my $distributionVersion = '20.04';

my %repos = (
    "Ubuntu 18.04" => {
        deb => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/tuxedo-computers.list',
            content => ['deb http://deb.tuxedocomputers.com/ubuntu bionic main'],
        },
        oibaf => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/oibaf-tuxedo.list',
            content => ['deb http://oibaf.tuxedocomputers.com/ubuntu bionic main'],
        },
        graphics => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/graphics-tuxedo.list',
            content => ['deb http://graphics.tuxedocomputers.com/ubuntu focal main'],
        },
        mirrors => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list',
            content => ['deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu bionic main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu bionic-security main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu bionic-updates main restricted universe multiverse'],
        },
		name => 'bionic',
        pubKey => ['pub   4096R/54840598 2016-05-12',
'Key fingerprint = E5D0 C320 BBCE 8D21 CDF6  0DD5 120E D28D 5484 0598',
'uid TUXEDO Computers GmbH (www.tuxedocomputers.com)',
'sub 4096R/A5842AD4 2016-05-12'],
    },
    "Ubuntu 20.04" => {
        deb => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/tuxedo-computers.list',
            content => ['deb http://deb.tuxedocomputers.com/ubuntu focal main'],
        },
        oibaf => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/oibaf-tuxedo.list',
            content => ['deb http://oibaf.tuxedocomputers.com/ubuntu focal main'],
        },
        graphics => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/graphics-tuxedo.list',
            content => ['deb http://graphics.tuxedocomputers.com/ubuntu bionic main'],
        },
        mirrors => {
            filename => '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list',
            content => ['deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu focal main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu focal-security main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu focal-updates main restricted universe multiverse'],
        },
		name => 'focal',
        pubKey => ['pub   4096R/54840598 2016-05-12',
'Key fingerprint = E5D0 C320 BBCE 8D21 CDF6  0DD5 120E D28D 5484 0598',
'uid TUXEDO Computers GmbH (www.tuxedocomputers.com)',
'sub 4096R/A5842AD4 2016-05-12'],
    },
);



sub readFileReturnLines {
    my $file = shift;
    my $FH;
    my @lines;
    if ( open $FH, "<", $file ) {
        chomp(@lines = <$FH>);
        close $FH;
    } else {
		#printLog("no $file present or unable to open the file for reading");
        return;
    }
    return @lines;
}

sub createFile {
    my $fileName = shift;
    my $fileText = shift;
    my $FH;
    if (-e $fileName) {
        backupFile($fileName);
    }
    if (open $FH, ">",$fileName) {
        print $FH "$fileText";
        close $FH;
        return 1;
    } else {
        printLog("can't open $fileName for writing");
        print "Can't open $fileName for writing\n";
        return 0;
    }
}

sub backupFile {
    my $fileName = shift;
    my $backupFile = $fileName.'_'.getBackupFileTime().'.bak';
    if (copy($fileName, $backupFile)) {
        print "created backup for $fileName\n";
        return 1;
    } else {
        printLog("can't create backup file for $fileName");
        print "Can't create backup for $fileName\n";
        return 0;
    }
}

sub getLoggingTime {
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time);
    my $nice_timestamp = sprintf ( "%04d%02d%02d %02d:%02d:%02d",
                                    $year+1900,$mon+1,$mday,$hour,$min,$sec);
    return $nice_timestamp;
}

###############################################################################
#
sub getBackupFileTime {
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time);
    my $nice_timestamp = sprintf ( "%04d%02d%02d%02d%02d%02d",
                                    $year+1900,$mon+1,$mday,$hour,$min,$sec);
    return $nice_timestamp;
}

sub appendFile {
    my $fileName = shift;
    my $fileText = shift;
    my $FH;
    if (open $FH, ">>",$fileName) {
        print $FH "$fileText";
        close $FH;
        return 1;
    } else {
        printLog("can't open $fileName for writing");
        print "Can't open $fileName for writing\n";
        return 0;
    }
}





sub isLinePresent {
	my $line = shift;
	my $filenameKey;
	foreach $filenameKey (keys %repoHash) {
		foreach (@{ $dirHash{$filenameKey} }) {
			if ($line eq $_) {
				return (1);
			}
		}
	}
	return (0);
}


my $sourcesListDir = '/home/pablo/tuxedo-tomte/test/etc/apt/';
#my $sourcesListDir = '/etc/apt/';
my $sourcesListDirD = '/home/pablo/tuxedo-tomte/test/etc/apt/sources.list.d/';
#my $sourcesListDirD = '/etc/apt/sources.list.d/';
my $fileName = $sourcesListDir.'sources.list';
if (-e $fileName) {
	$dirHash{$fileName} = [readFileReturnLines($fileName)];
}

# read all files *.list into hash
if (opendir($DH,$sourcesListDirD)) {
	while (readdir $DH) {
		if ( $_ =~ /.*\.list$/ ) {
			$fileName = $sourcesListDirD.$_;
			$dirHash{$fileName} = [readFileReturnLines($fileName)];
		}
	}
	closedir($DH);
} else {
	# print error messages
}

#print Dumper(%repoHash);


my $compDistVer = $distribution.' '.$distributionVersion;
my $key;

# each file
my $noSourceFile = 1;
foreach $key (keys %{ $repos{$compDistVer} }) {
	# each line
	if (($key ne 'pubKey') && ($key ne 'name')) {
		foreach (@{ $repos{$compDistVer}{$key}{content} }) {
			if (!isLinePresent($_)) {
    			if ( (-e $repos{$compDistVer}{$key}{filename}) && ($noSourceFile == 1) ) {
        			backupFile($repos{$compDistVer}{$key}{filename});
					$noSourceFile = 0;
    			}
				# make file + line
				if (! -e $repos{$compDistVer}{$key}{filename}) {
					createFile($repos{$compDistVer}{$key}{filename}, "# Added by TUXEDO Tomte\n$_\n");
					$noSourceFile = 0;
				} else {
					appendFile($repos{$compDistVer}{$key}{filename}, "\n# Added by TUXEDO Tomte\n$_\n");
				}
			}
		}
	}
}

# comment out anything else on sources.list which has deb http://.*.ubuntu.com/ubuntu/
# and not tuxedocomputers
my $regEx = '^deb.*\.ubuntu\.com\/ubuntu.* '.$repos{$compDistVer}{name}.'.*$';
my $FHsource;
my @sourcelines;
if (open $FHsource, "<", $sourcesListDir."sources.list") {
	chomp(@sourcelines = <$FHsource>);
	close $FHsource;
	if (open $FHsource, ">", $sourcesListDir."sources.list") {
		foreach (@sourcelines) {
			if (($_ =~ /$regEx/) && !($_ =~ /tuxedocomputers/)) {
				print $FHsource "#### commented out by TUXEDO Tomte\n"."# $_\n"
			} else {
				print $FHsource "$_\n";
			}
		}
		close $FHsource;
	}
} else { 
	#error message
}

