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
my $script_directory = $RealBin;
my $start_directory = $script_directory . '/po/';
my $defaultLanguage = 'en';


# Define the subroutine to be executed for each file
sub load_msg_ids_from_directories {
    my $file_path = $File::Find::name;

    # Skip directories
    return if -d $file_path;
    return unless $file_path =~ /$start_directory(.*)\.po/;

    my $language_code = $1;

    open my $input_file, '<', $file_path or warn "Couldn't open $file_path: $!";

    while (my $line = <$input_file>) {
        if (my ($match) = $line =~ /msgid "(.*?)"/) {
            if(length($match) > 0){
                push @{$msgids{$language_code}}, $match;
            }
        }
    }

    close $input_file;
}

# Perform the file search
find({ wanted => \&load_msg_ids_from_directories, no_chdir => 1 }, $start_directory);

my %tomte_msgids;

# Open the tomte file
open my $tomte_file, '<', 'src/tuxedo-tomte' or die "Couldn't open input file: $!";

# Process each line in the input file
while (my $line = <$tomte_file>) {
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
            if (!$tomte_msgids{$match}) {
                $tomte_msgids{$match} = 1;  # Mark as seen
                # print "Tomte: $match\n";
            }
        }
    }
}

# call descriptions are directly read from modules
delete $tomte_msgids{'module . "_description'};
my %origConfModules = read_toml_file('config/modules/modules_raw.toml');
foreach my $module (keys %origConfModules) {
    next if $module eq 'default';
    next if ! defined $module;
    my $module_string = $module . "_description";
    $tomte_msgids{$module_string} = 1;
}

# Subroutine to compare two lists
sub compare_language_with_tomte_and_print_diff {
    my ($language_code) = @_;

     print "Comparing Tomte Code msgids with those from $language_code..\n";


    my %unique_items = %{ dclone(\%tomte_msgids) };
    my %return_hash;
    my @only_in_list1;
    my @only_in_list2;

    # Check items in list 2
    foreach my $item (@{$msgids{$language_code}}) {
        if (exists $unique_items{$item}) {
            delete $unique_items{$item};  # Remove common items
        } else {
            push @only_in_list2, $item;  # Item only in list 2
        }
    }

    # Remaining items in %unique_items are only in list 1
    @only_in_list1 = keys %unique_items;



    my $list1_size = scalar @only_in_list1;
    my $list2_size = scalar @only_in_list2;

    print "Found $list1_size msgids only present in Tomte Code:\n";
    if($list1_size > 0){
        foreach my $msgid (@only_in_list1){
            if (defined $msgid) {
                print "$msgid\n";
            } else {
                print "Undefined value\n";  # Or handle it in another way
            }
        }

        print "\n";
    }

    print "Found $list2_size msgids only present in $language_code:\n";
    if($list2_size > 0){
        foreach my $msgid (@only_in_list2){
            if (defined $msgid) {
                print "$msgid\n";
            } else {
                print "Undefined value\n";  # Or handle it in another way
            }
        }

        print "\n";
    }
    print "\n\n";

    return $list1_size + $list2_size;
}

sub read_toml_file {
	my $file_path = shift;

	my $toml_str = read_file($file_path);
	my $toml_hash_ref = from_toml($toml_str);

    # Check if the TOML data was parsed successfully
    if (!defined $toml_hash_ref) {
        die("Failed to parse TOML data from file: $file_path");
    }

	return %$toml_hash_ref;
}

my $differences = 0;
foreach my $language_code (keys %msgids){
    $differences += compare_language_with_tomte_and_print_diff($language_code);
}

exit $differences;