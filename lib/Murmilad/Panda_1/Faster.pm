package Murmilad::Panda_1::Faster;

use strict;
use Moose;
use String::Random qw(random_regex random_string);

extends 'Murmilad::Panda_1';

sub clean_hash_equal_values {
    my $self = shift;
    my $hash = shift;

    my %result = reverse %$hash;
    return { reverse %result };
}

1;
