package Murmilad::Panda_2::Accessors_Faster;

use Moose;

extends 'Murmilad::Panda_2';

sub run {
    my $self = shift;
    my $legs = shift;
    return $self->SUPER::run( $legs, 'Murmilad::Accessors_Fast' );
}

1;

package Murmilad::Accessors_Faster;

use base qw(Class::Accessor::Faster);

Murmilad::Accessors_Faster->follow_best_practice;
Murmilad::Accessors_Faster->mk_accessors(qw(legs colour));
1;
