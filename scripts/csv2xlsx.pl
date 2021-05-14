#!/usr/bin/env perl

use strict;
use Getopt::Long;
use Excel::Writer::XLSX;
use Text::CSV_XS;
use Tie::IxHash;

use constant usage => <<'EOT'
csv2xlsx.pl [options] [csv_directory]

Automatically generate Excel XLSX file from CSV files stored in <csv_directory>.

  --help                  Show this text

EOT
    ;
our ($csv_dir, $help, $delete);

GetOptions(
  'help|?|h'  => \$help,
  'delete'    => \$delete
) or do { print usage; exit 1; };

if ($help) { print usage; exit 0; }

# Now, we can also specify the spec and version on the command line.
$csv_dir ||= shift;

# Check usage...
unless (defined($csv_dir)) {
    print usage;
    exit 1;
}

my %csvfiles;
my $t = tie( %csvfiles, 'Tie::IxHash' );

%csvfiles = (
    'Metadata'                => "metadata",
    'Organisations'           => "organisations",
    'Clients'                 => "clients",
    'Episodes'                => "episodes",
    'HeadtoHelp Episodes'     => "headtohelp-episodes",
    'Collection Occasions'    => "collection-occasions",
    'K10+'                    => "k10p",
    'K5'                      => "k5",
    'SDQ'                     => "sdq",
    'IAR-DST'                 => "iar-dst",
    'Service Contacts'        => "service-contacts",
    'Practitioners'           => "practitioners",
);

if ( $delete ) {
  make_delete_workbook();
} else {
  make_workbooks();
}

exit( 0 );

sub make_workbooks {
  foreach my $worksheet ( keys( %csvfiles ) ) {
    my $filename = 'HEADTOHELP-3-0-' . $csvfiles{$worksheet} . '.xlsx';
    create_workbook ( $filename, $worksheet );
  }

  return;
}

sub make_delete_workbook {
  my %delete_csvfiles = %csvfiles;

  # Can't delete organisations via upload so remove this worksheet from the example
  delete $csvfiles{'Organisations'};

  my $worksheet = 'HeadtoHelp Episodes';
  $csvfiles{$worksheet} = "headtohelp-episodes";
  my $filename = 'HEADTOHELP-3-0-' . $csvfiles{$worksheet} . '-delete.xlsx';
  create_workbook( $filename, $worksheet );
}

sub create_workbook {

  my ( $filename, $active_worksheet ) = ( @_ );

  print STDERR "Filename: " . $filename . "\n";
  # Create a new Excel workbook
  my $workbook  = Excel::Writer::XLSX->new( "$csv_dir/$filename" );

  # Create a new CSV parsing object
  my $csv = Text::CSV_XS->new;

  foreach my $worksheet_name ( keys( %csvfiles ) ) {
    # Add a worksheet
    my $worksheet = $workbook->add_worksheet( $worksheet_name );

    # Open the Comma Separated Variable file
    my $csvfile = "$csv_dir/" . $csvfiles{$worksheet_name} . ".csv";
    print STDERR "CSV file: $csvfile\n";
    if ( -e $csvfile ) {
        open( CSVFILE, $csvfile ) or die "$ARGV[0]: $!";

        # Row and column are zero indexed
        my $row = 0;

        while (<CSVFILE>) {
            if ( $csv->parse($_) ) {
                my @Fld = $csv->fields;

                my $col = 0;
                foreach my $token (@Fld) {
                    $worksheet->write( $row, $col, $token );
                    $col++;
                }
                $row++;
            } else {
                my $err = $csv->error_input;
                print "Text::CSV_XS parse() failed on argument: ", $err, "\n";
            }
        }
    } else {
        print STDERR "WARNING: $csvfile doesn't exist. Creating workbook without it.\n";
    }
  }

  print "Active worksheet: $active_worksheet\n";
  my $worksheet = $workbook->get_worksheet_by_name( $active_worksheet );
  $worksheet->activate();
  $workbook->close();

  return;
}
