package Murmilad::Panda;

use 5.040000;
use strict;
use warnings;
use Data::Dumper;

use Murmilad::Panda_1_2;
use Murmilad::Panda_1_1;
use Murmilad::Panda_2_Accessors;
use Murmilad::Panda_3_Accessors_Fast;

use Time::HiRes qw(time);

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Murmilad::Panda ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = (
    'all' => [
        qw(

        )
    ]
);

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

);

our $VERSION = '0.01';

sub execute {
    my %h       = @_;
    my $handler = $h{handler};

    my $object = $handler->create();

    my $values = [];

    for ( 1 .. 10000 ) {
        push( @{$values}, $object->prepare_values() );
    }

    my $begin_time = time();
    foreach ( @{$values} ) {
        $object->run($_);
    }
    my $end_time = time();
    print "[$handler] call time:" . ( $end_time - $begin_time ) . "\n";

    foreach ( @{$values} ) {
        $object->run($_);

        print "[$handler] error with object:" . Dumper($object) . "\n"
          unless $object->check($_);
    }

}

execute( handler => 'Murmilad::Panda_1_1' );
execute( handler => 'Murmilad::Panda_1_2' );
execute( handler => 'Murmilad::Panda_2_Accessors' );
execute( handler => 'Murmilad::Panda_3_Accessors_Fast' );

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Murmilad::Panda - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Murmilad::Panda;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Murmilad::Panda, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

A. U. Thor, E<lt>alex@nonetE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by A. U. Thor

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.40.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
