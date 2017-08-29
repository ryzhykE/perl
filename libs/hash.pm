package libs::hash;

use strict;
use warnings;
use Data::Dumper;
use DBI;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless{},$class;
}

sub makeHash
{
    my $dbh = DBI->connect(
          "DBI:mysql:user12:localhost",
                "user12", "tuser12");
    my  $sth = $dbh->prepare('select * from Perl');
    $sth->execute();
    my %hash = ();
    while(my $row = $sth->fetchrow_hashref())
    {
       $hash{$row->{'key'}} = $row->{'value'};
    }

    return \%hash;
}


1;


