#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;
use File::Copy;

# for debugging
use Data::Dumper;

my $sourcesListDir = '/etc/apt/sources.list.d/';
my %dirHash;
my $DH;
my $distribution = 'Ubuntu';
my $distributionVersion = '20.04';

my %repos = (
    "Ubuntu 18.04" => {
        deb => {
            directory => '/etc/apt/sources.list.d/',
            filename => 'tuxedo-computers.list',
            content => ['deb http://deb.tuxedocomputers.com/ubuntu bionic main'],
        },
        oibaf => {
            directory => '/etc/apt/sources.list.d/',
            filename => 'oibaf-tuxedo.list',
            content => ['deb http://oibaf.tuxedocomputers.com/ubuntu bionic main'],
        },
        graphics => {
            directory => '/etc/apt/sources.list.d/',
            filename => 'graphics-tuxedo.list',
            content => ['deb http://graphics.tuxedocomputers.com/ubuntu focal main'],
        },
        mirrors => {
            directory => '/etc/apt/',
            filename => 'sources.list',
            content => ['deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu bionic main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu bionic-security main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu bionic-updates main restricted universe multiverse'],
        },
        pubKey => ['pub   4096R/54840598 2016-05-12',
'Key fingerprint = E5D0 C320 BBCE 8D21 CDF6  0DD5 120E D28D 5484 0598',
'uid TUXEDO Computers GmbH (www.tuxedocomputers.com)',
'sub 4096R/A5842AD4 2016-05-12'],
    },
    "Ubuntu 20.04" => {
        deb => {
            directory => '/etc/apt/sources.list.d/',
            filename => 'tuxedo-computers.list',
            content => ['deb http://deb.tuxedocomputers.com/ubuntu focal main'],
        },
        oibaf => {
            directory => '/etc/apt/sources.list.d/',
            filename => 'oibaf-tuxedo.list',
            content => ['deb http://oibaf.tuxedocomputers.com/ubuntu focal main'],
        },
        graphics => {
            directory => '/etc/apt/sources.list.d/',
            filename => 'graphics-tuxedo.list',
            content => ['deb http://graphics.tuxedocomputers.com/ubuntu bionic main'],
        },
        mirrors => {
            directory => '/etc/apt/',
            filename => 'sources.list',
            content => ['deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu focal main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/security.ubuntu.com/ubuntu focal-security main restricted universe multiverse',
'deb http://mirrors.tuxedocomputers.com/ubuntu/mirror/archive.ubuntu.com/ubuntu focal-updates main restricted universe multiverse'],
            pubKey => ['pub   4096R/54840598 2016-05-12',
'Key fingerprint = E5D0 C320 BBCE 8D21 CDF6  0DD5 120E D28D 5484 0598',
'uid TUXEDO Computers GmbH (www.tuxedocomputers.com)',
'sub 4096R/A5842AD4 2016-05-12'],
        },
    },
);



sub readFileReturnLines {
    my $file = shift;
    my $FH;
    my @lines;
    if ( open $FH, "<", $file ) {
        @lines = <$FH>;
        close $FH;
    } else {
        printLog("no $file present or unable to open the file for reading");
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
    if (move($fileName, $backupFile)) {
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
    if (-e $fileName) {
        backupFile($fileName);
    }
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
	foreach $filenameKey (keys %dirHash) {
		foreach (@{ $dirHash{$filenameKey} }) {
			if ($line =~ m/$_/) {
				print "found\n";
				return (1);
			}
		}
	}
	return (0);
}


my $fileName = '/etc/apt/sources.list';

$dirHash{'/etc/apt/sources.list'} = [readFileReturnLines($fileName)];

if (opendir($DH,$sourcesListDir)) {
	while (readdir $DH) {
		if ($_ eq '.' or $_ eq '..') { next; }
		$fileName = $sourcesListDir.$_;
		$dirHash{$fileName} = [readFileReturnLines($fileName)];
	}
}
closedir($DH);

#print Dumper(%dirHash);

my $compDistVer = $distribution.' '.$distributionVersion;
my $key;

# each file
foreach $key (keys %{ $repos{$compDistVer} }) {
	print "$repos{$compDistVer}{$key}{filename}\n";
	# each line
	foreach (@{ $repos{$compDistVer}{$key}{content} }) {
		if (!isLinePresent($_)) {
			# make file + line
			if (! -e $repos{$compDistVer}{$key}{filename}) {
				createFile($repos{$compDistVer}{$key}{filename}, "$_");
			} else {
				appendFile($repos{$compDistVer}{$key}{filename}, "$_");
			}
		}
	}
}

# comment out anything else on sources.list which has deb http://.*.ubuntu.com/ubuntu/
my $FHsource;
my @sourcelines;
if (open $FHsource, "<", "sources.list") {
	@sourcelines = <$FHsource>;
	close $FHsource;
	if (open $FHsource, ">", "sources.list") {
		foreach (@sourcelines) {
			print "found line: $_\n";
			print "#### commented out by Tomte\n"."#$_"
				if $_ =~ /^deb.*\.ubuntu\.com\/ubuntu\/.*$/;
		}
		close $FHsource;
	}
} else { 
	#error message
}
