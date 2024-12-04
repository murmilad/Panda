package Murmilad::Panda_3_Accessors_Fast;

use base qw(Class::Accessor::Fast);
use Data::Dumper;

Murmilad::Panda_3_Accessors_Fast->follow_best_practice;
Murmilad::Panda_3_Accessors_Fast->mk_accessors(qw(legs colour));

sub prepare_values {
    my $self = shift;
    return int( rand(10) );
}

sub check {
    my $self = shift;
    return $self->{legs} != 11;
}

sub create {
    $class = shift;
    return $class->new( { legs => 11, colour => "brown" } );
}

sub run {
    my $self = shift;
    my $legs = shift;
    $self->set_legs($legs);
}

1;
