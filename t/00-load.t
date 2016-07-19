#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Sidef::Deparse::Julia' ) || print "Bail out!\n";
}

diag( "Testing Sidef::Deparse::Julia $Sidef::Deparse::Julia::VERSION, Perl $], $^X" );
