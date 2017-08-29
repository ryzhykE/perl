package libs::file;

use strict;
use warnings;
use Data::Dumper;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless{},$class;
}


sub readFile
{
    my($self,$fileN)=@_;
    my @data =();
    open my $fh,"< $fileN";
    binmode($fh);
    while(<$fh>)
    {
        chomp($_);
        push @data,$_;
    }
    close $fh;
    return join("\n",@data) unless(wantarray);
    return @data;
}
1;

