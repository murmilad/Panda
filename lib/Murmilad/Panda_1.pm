package Murmilad::Panda_1;

use strict;
use Moose;
use String::Random qw(random_regex random_string);

extends 'Murmilad::Test';

sub prepare_values {
    my $self = shift;

    my $values = [];
    for ( 1 .. 5 ) {
        push( @{$values}, random_string("...") );
    }
    my $countries = {};
    for ( 1 .. 10 ) {
        $countries->{ random_string("...") } = $values->[ int( rand(5) ) - 1 ];
    }
    return $countries;
}

sub run {
    my $self      = shift;
    my $countries = shift;

    return $self->clean_hash_equal_values($countries);
}

sub check {
    my $self      = shift;
    my $countries = shift;

    my $counts = {};
    for ( values %{$countries} ) {
        $counts->{$_}++;
    }

    return scalar( keys %$counts ) && !grep { $counts->{$_} > 1 }
      keys %$counts;
}

1;
