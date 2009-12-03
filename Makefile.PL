use 5.005;
use ExtUtils::MakeMaker;
use strict;

WriteMakefile (
    NAME              => 'Bundle::dualLived',
    VERSION_FROM      => 'lib/Bundle/dualLived.pm', 
    dist              => {COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    (
        $] >= 5.005     
            ? (ABSTRACT_FROM  => 'lib/Bundle/dualLived.pm', 
               AUTHOR         => 'Kevin W. Henwood <Khen1950fx@aol.com>') 
            : ()
     ),
     (
            ExtUtils::MakeMaker->VERSION() gt '6.30' 
                ?  ('LICENSE'  => 'perl')         
                : ()
        ),

);  