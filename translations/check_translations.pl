#!/usr/bin/perl

use 5.010;
use warnings;
use FindBin qw($RealBin);
use Storable qw(dclone);
use File::Find;

my %msgids;

# Specify the directory to start the search
my $script_directory = $RealBin;
my $start_directory = $script_directory . '/locale_raw/';
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

$differences = 0;
foreach my $language_code (keys %msgids){
    $differences += compare_language_with_tomte_and_print_diff($language_code);
}

exit $differences;