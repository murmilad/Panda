package Murmilad::Panda_2::Native;

use Moose;

extends 'Murmilad::Panda_2';

sub run {
    my $self = shift;
    my $legs = shift;
    return $self->SUPER::run( $legs, 'Murmilad::Native' );
}

1;

package Murmilad::Native;

sub new {
    my $class = shift;

    my $self = bless { "legs" => 11, "colour" => "brown" }, $class;

    return $self;
}

sub set_colour {
    my $self = shift;

    $self->{colour} = shift;
}

sub set_legs {
    my $self = shift;

    $self->{legs} = shift;
}

sub get_legs {
    my $self = shift;

    return $self->{legs};
}

1;
