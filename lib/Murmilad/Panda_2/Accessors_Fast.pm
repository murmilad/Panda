package Murmilad::Panda_2::Accessors_Fast;

use Moose;

extends 'Murmilad::Panda_2';

sub run {
    my $self = shift;
    my $legs = shift;
    return $self->SUPER::run( $legs, 'Murmilad::Accessors_Fast' );
}

1;

package Murmilad::Accessors_Fast;

use base qw(Class::Accessor::Fast);

Murmilad::Accessors_Fast->follow_best_practice;
Murmilad::Accessors_Fast->mk_accessors(qw(legs colour));
1;
