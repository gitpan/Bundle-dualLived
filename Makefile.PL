use ExtUtils::MakeMaker;

WriteMakefile (
    'NAME'              => 'Bundle::dualLived',
    'ABSTRACT'          => 'Updates dual-lived modules',
    'VERSION'           => '1.05',
    'PREREQ_PM'         => { 
                           'CPAN' => 0,
                           },
    
    'EXE_FILES'         => [qw(bin/noncoredeps)],
                                                        
    'dist'              => {'COMPRESS' => 'gzip -9f', 
                            'SUFFIX'   => '.gz', },
    (
        $] >= 5.005     
            ? ( AUTHOR  => 'Kevin W. Henwood <Khen1950fx@aol.com>') 
            : ()
     ),
     (
            ExtUtils::MakeMaker->VERSION() gt '5.50' 
                ?  ('LICENSE'  => 'perl')         
                : ()
        ),

);  
