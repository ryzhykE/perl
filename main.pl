#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

use libs::file;
use libs::hash;
use libs::parser;

my $file = libs::file->new();
my $hash = libs::hash->new();
my $parser = libs::parser->new();


my $html = $file->readFile('index.html');
my @hash = $file->readFile('text.txt');
my $do = $hash->makeHash(@hash);

my $result = $parser->pars($html,$do);



print Dumper(\$result);


