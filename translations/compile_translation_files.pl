use 5.010;
use warnings;
use FindBin qw($RealBin);
use File::Find;
use File::Basename;
use File::Path qw(make_path remove_tree);

my $script_directory = $RealBin;

my $source_directory = $script_directory . '/locale_raw';
my $destination_directory =  $script_directory . '/locale';

sub compile_po_file_to_mo_file {
	my $po_file = $_;
	if ($po_file =~ /\.po$/) {
		my $mo_file_base = $po_file;
		$mo_file_base =~ s/\.po$//;

		my $dest_path = "$destination_directory/$mo_file_base/LC_MESSAGES";
		make_path($dest_path);

		system("msgfmt --output-file=$dest_path/tomte.mo $File::Find::name");
	}
}

remove_tree($destination_directory);
find(\&compile_po_file_to_mo_file, $source_directory);

print "Compilations of *.po in $source_directory to *.mo in $destination_directory is complete.\n";
