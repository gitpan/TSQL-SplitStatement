#!/bin/perl

use 5.010 ;
use warnings;
use strict;

use Data::Dump 'pp';
use autodie qw(:all);


use TSQL::SplitStatement;

my $s = do { local $/ = undef; <> ;} ;

my $parser = TSQL::SplitStatement->new();

my @parsedInput = $parser->split($s);

pp @parsedInput ;




__DATA__

