#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

# for debugging
use Data::Dumper;

my $sourcesListDir = '/etc/apt/sources.list.d/';
my %dirHash;
my $DH;


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

print Dumper(%dirHash);



