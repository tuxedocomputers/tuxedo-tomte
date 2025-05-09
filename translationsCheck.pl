#!/usr/bin/perl

use 5.010;
use warnings;
use strict;
use FindBin qw($RealBin);
use Storable qw(dclone);
use File::Find;

use File::Slurp qw(write_file read_file);

use Data::Dumper;

use lib "$RealBin";
use Tomte::Presets qw( devices initialModuleSettings supportedOS essentialRepos otherRepos kernels lockFiles postConfPrograms );


my %msgids;
my %msgStubs;

# Specify the directory to start the search
my $scriptDirectory = $RealBin;
my $startDirectory = $scriptDirectory . '/po/';
my $defaultLanguage = 'en';

# Define the subroutine to be executed for each file
sub loadMsgIdsFromDirectories {
	my $filePath = $File::Find::name;

	# Skip directories
	if (-d $filePath) {
		return (0);
	}
	if ($filePath !~ /$startDirectory(.*)\.po$/) {
		return (0);
	}

	my $languageCode = $1;
	print "found language code: $languageCode\n";

	my $FH;
	print "opening $filePath\n";
	open($FH, '<', $filePath) or warn "Couldn't open $filePath: $!";

	while (my $line = <$FH>) {
		if (my ($match) = $line =~ /^msgid "(.*?)"/) {
			if(length($match) > 0) {
				push @{$msgids{$languageCode}}, $match;
			}
		}
	}
	close $FH;
}

# Subroutine to compare stubs and msgids for a languageCode
sub compareLanguageWithTomteAndPrintDiff {
	my $languageCode = shift;
	print "#########################################################\n";
	print "Comparing stubs in code with msgIds from >$languageCode<..\n";
	my %uniqueStubs = %{ dclone(\%msgStubs) };
	my %returnHash;
	my @orphanStubs;
	my @orphanMsgId;

	# create list with orphan stubs
	foreach my $msgid (@{$msgids{$languageCode}}) {
		if (exists $uniqueStubs{$msgid}) {
			delete $uniqueStubs{$msgid};  # Remove common items
		} else {
			push @orphanMsgId, $msgid;
		}
	}

	# Remaining items are msgIds without stub
	@orphanStubs = keys %uniqueStubs;

	my $orphanStubsSize = scalar @orphanStubs;
	my $orphanMsgIdSize = scalar @orphanMsgId;

	print "Found $orphanStubsSize stubs only present in Tomte code:\n";
	if($orphanStubsSize > 0){
		foreach my $msgid (@orphanStubs) {
			if (defined $msgid) {
				print "orphanMsgid: $msgid\n";
			} else {
				print "Undefined value\n";  # Or handle it in another way
			}
		}
	}
	print "\n";

	print "Found $orphanMsgIdSize message ID's only present in language file >$languageCode<:\n";
	if($orphanMsgIdSize > 0) {
		foreach my $msgid (@orphanMsgId) {
			if (defined $msgid) {
				print "orphanStub: $msgid\n";
			} else {
				print "Undefined value\n";  # Or handle it in another way
			}
		}
	}
	print "\n";
	return $orphanStubsSize + $orphanMsgIdSize;
}

# loads message stubs from files with source code
sub loadMsgStubs {
	my ($file) = @_;
	my $FH;
	open($FH,'<', $file) or die "Couldn't open $file: $!";

	# Process each line in the tomte file
	while (my $line = <$FH>) {
		# Find all text between __(' and ')
		my @matches;
		push @matches, $line =~ /__\((.*?)\)/g;
		push @matches, $line =~ /__x\((.*?),/g;
		push @matches, $line =~ /__n\((.*?),/g;
		push @matches, $line =~ /__nx\((.*?),/g;
	
		# If at least one text was found, process them
		if (@matches) {
			foreach my $match (@matches) {
				$match =~ s/^.(.*).$/$1/;  # Remove the first and last quotation marks
				# Check if this msgid is unique, then write it to the output
				if (!$msgStubs{$match}) {
					$msgStubs{$match} = 1;  # Mark as seen
				}
			}
		}
	}
	return (0);
}

# load Stubs from Perl mmodule Presets.pm
sub loadPresetsValues {
	# call descriptions are directly read from modules
	delete $msgStubs{'module . "_description'};
	my %origConfModules = initialModuleSettings();
	foreach my $module (keys %origConfModules) {
		next if $module eq 'default';
		next if ! defined $module;
		my $moduleString = $module . "_description";
		$msgStubs{$moduleString} = 1;
	}
	return (0);
}

# Perform the po file search
# and load all msgid-entries into %msgids
find({ wanted => \&loadMsgIdsFromDirectories, no_chdir => 1 }, $startDirectory);

# load the msgid-stubs from source files
loadMsgStubs('src/tuxedo-tomte');
loadMsgStubs('Tomte/Presets.pm');
loadPresetsValues();

my $differences = 0;
foreach my $languageCode (keys %msgids){
	$differences += compareLanguageWithTomteAndPrintDiff($languageCode);
}

if ($differences != 0) {
	exit (1);
}

exit (0);
