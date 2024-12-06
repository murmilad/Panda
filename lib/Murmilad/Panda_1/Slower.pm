package Murmilad::Panda_1::Slower;

use strict;
use Moose;
use String::Random qw(random_regex random_string);
use Data::Dumper;

extends 'Murmilad::Panda_1';

sub clean_hash_equal_values {
    my $self = shift;
    my $hash = shift;

    my $result = {};
    my $values = {};

    foreach ( keys %$hash ) {
        unless ( $values->{ $hash->{$_} } ) {
            $result->{$_} = $hash->{$_};
            $values->{ $hash->{$_} } = 1;
        }
    }

    return $result;
}

1;
