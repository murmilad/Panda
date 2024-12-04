package Murmilad::Panda_1_1;

use strict;
use Moose;
use String::Random qw(random_regex random_string);
use Data::Dumper;
has 'countries' => ( isa => 'HashRef', is => 'rw' );

sub create {
    my $class = shift;
    return $class->new();
}

sub clean_hash_equal_values {
    my $self = shift;
    my $hash = shift;

    my %result = reverse %$hash;
    return { reverse %result };
}

sub init {
    my $class = shift;
    return $class->new();
}

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

    $self->countries( $self->clean_hash_equal_values($countries) );
}

sub check {
    my $self = shift;

    my $counts = {};
    for ( values %{ $self->countries() } ) {
        $counts->{$_}++;
    }

    return scalar( keys %$counts ) && !grep { $counts->{$_} > 1 } keys %$counts;
}

1;
