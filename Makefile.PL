use 5.040000;
use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME => 'Murmilad::Panda',
    VERSION_FROM => 'lib/Murmilad/Panda.pm', # finds $VERSION, requires EU::MM from perl >= 5.5
    PREREQ_PM    => {},                      # e.g., Module::Name => 1.1
    ABSTRACT_FROM => 'lib/Murmilad/Panda.pm',    # retrieve abstract from module
    AUTHOR        => 'Murmilad <murmilad@gmail.com>',

    #LICENSE           => 'perl',
    #Value must be from legacy list of licenses here
    #https://metacpan.org/pod/Module::Build::API
    PM => {
        'Murmilad/Panda.pm'   => 'lib/Murmilad/Panda.pm',
        'Murmilad/Panda_1.pm' => 'lib/Murmilad/Panda_1.pm',
    },
);
