#!/usr/bin/perl

use 5.010;
use warnings;
use strict;
use FindBin qw($RealBin);
use Storable qw(dclone);
use File::Find;

use File::Slurp qw(write_file read_file);
use TOML qw(from_toml to_toml);

my %msgids;

# Specify the directory to start the search
my $scriptDirectory = $RealBin;
my startDirectory = $scriptDirectory . '/po/';
my $defaultLanguage = 'en';


# Define the subroutine to be executed for each file
sub loadMsgIdsFromDirectories {
	my $filePath = $File::Find::name;

	# Skip directories
	return if -d $filePath;
	return unless $filePath =~ /startDirectory(.*)\.po/;

	my $languageCode = $1;

	open my $inputFile, '<', $filePath or warn "Couldn't open $filePath: $!";

	while (my $line = <$inputFile>) {
		if (my ($match) = $line =~ /msgid "(.*?)"/) {
			if(length($match) > 0){
				push @{$msgids{$languageCode}}, $match;
			}
		}
	}

	close $inputFile;
}

# Subroutine to compare two lists
sub compareLanguageWithTomteAndPrintDiff {
	my ($languageCode) = @_;

	print "Comparing Tomte Code msgids with those from $languageCode..\n";


	my %unique_items = %{ dclone(\%tomteMsgids) };
	my %returnHash;
	my @onlyInList1;
	my @onlyInList2;

	# Check items in list 2
	foreach my $item (@{$msgids{$language_code}}) {
		if (exists $uniqueItems{$item}) {
			delete $uniqueItems{$item};  # Remove common items
		} else {
			push @onlyInList2, $item;  # Item only in list 2
		}
	}

	# Remaining items in %unique_items are only in list 1
	@onlyInList1 = keys %uniqueItems;



	my $list1Size = scalar @onlyInList1;
	my $list2Size = scalar @onlyInList2;

	print "Found $list1Size msgids only present in Tomte Code:\n";
	if($list1Size > 0){
		foreach my $msgid (@onlyInList1){
			if (defined $msgid) {
				print "$msgid\n";
			} else {
				print "Undefined value\n";  # Or handle it in another way
			}
		}

		print "\n";
	}

	print "Found $list2Size msgids only present in $languageCode:\n";
	if($list2Size > 0){
		foreach my $msgid (@onlyInList2){
			if (defined $msgid) {
				print "$msgid\n";
			} else {
				print "Undefined value\n";  # Or handle it in another way
			}
		}

		print "\n";
	}
	print "\n\n";

	return $list1Size + $list2Size;
}

#sub readTomlFile {
#	my $filePath = shift;
#
#	my $tomlStr = read_file($filePath);
#	my $tomlHashRef = from_toml($toml_str);

    # Check if the TOML data was parsed successfully
	#    if (!defined $tomlHashRef) {
	#        die("Failed to parse TOML data from file: $filePath");
	#    }

	#	return %$tomlHashRef;
	#}


# Perform the file search
find({ wanted => \&loadMsgIdsFromDirectories, no_chdir => 1 }, startDirectory);

my %tomteMsgids;

# Open the tomte file
open my $tomteFile, '<', 'src/tuxedo-tomte' or die "Couldn't open input file: $!";

# Process each line in the input file
while (my $line = <$tomteFile>) {
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
			if (!$tomteMsgids{$match}) {
				$tomteMsgids{$match} = 1;  # Mark as seen
			# print "Tomte: $match\n";
			}
		}
	}
}

# call descriptions are directly read from modules
#delete $tomteMsgids{'module . "_description'};
#my %origConfModules = readTomlFile('config/modules/modules_raw.toml');
#foreach my $module (keys %origConfModules) {
#    next if $module eq 'default';
#    next if ! defined $module;
#    my $moduleString = $module . "_description";
#    $tomteMsgids{$moduleString} = 1;
#}


my $differences = 0;
foreach my $languageCode (keys %msgids){
	$differences += compareLanguageWithTomteAndPrintDiff($languageCode);
}

exit $differences;
