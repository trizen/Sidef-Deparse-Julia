use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share('share');

WriteMakefile(
    NAME             => 'Sidef::Deparse::Julia',
    AUTHOR           => q{Daniel Șuteu <trizenx@gmail.com>},
    VERSION_FROM     => 'lib/Sidef/Deparse/Julia.pm',
    ABSTRACT_FROM    => 'lib/Sidef/Deparse/Julia.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
        'File::ShareDir::Install' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'File::ShareDir' => 0,
        'Sidef' => 2.26,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Sidef-Deparse-Julia-*' },
);
