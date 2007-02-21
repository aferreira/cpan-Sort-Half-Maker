
use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Sort::Half::Maker',
    VERSION_FROM => 'lib/Sort/Half/Maker.pm',
    PREREQ_PM => {
        Exporter     => 0,
        Test::More   => 0,
    },
    ($] >= 5.005 ? (
       ABSTRACT_FROM  => 'lib/Sort/Half/Maker.pm', # retrieve abstract from module
       AUTHOR         => 'A. R. Ferreira <ferreira@cpan.org>',
     #  NO_META           => 1
     ) : ()),
);

