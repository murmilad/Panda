package Murmilad::Panda_2;
use Moose;

extends 'Murmilad::Test';

sub prepare_values {
    my $self = shift;
    return int( rand(10) );
}

sub check {
    my $self   = shift;
    my $result = shift;

    return $result != 11;
}

sub run {
    my $self  = shift;
    my $legs  = shift;
    my $class = shift;

    my $animal = $class->new( { legs => 11, colour => "brown" } );

    for ( 1 .. 10000 ) {
        $animal->set_legs( int( rand(100) ) );
        $animal->get_legs();
    }
    $animal->set_legs($legs);
    return $animal->get_legs();
}

1;
