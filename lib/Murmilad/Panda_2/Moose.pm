package Murmilad::Panda_2::Moose;

use Moose;

extends 'Murmilad::Panda_2';

sub run {
    my $self = shift;
    my $legs = shift;
    return $self->SUPER::run( $legs, 'Murmilad::Moose' );
}

1;

package Murmilad::Moose;

use Moose;

has 'legs' =>
  ( isa => 'Int', is => 'rw', reader => 'get_legs', writer => 'set_legs' );
has 'colour' => (
    isa    => 'Str',
    is     => 'rw',
    reader => 'get_colour',
    writer => 'set_colour'
);

1;
