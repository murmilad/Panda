package Murmilad::Test;

use Moose;

sub create {
    my $class = shift;
    return $class->new();
}

1;
