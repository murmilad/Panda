package Murmilad::Panda_2_Accessors;

use Data::Dumper;

sub prepare_values {
    my $self = shift;
    return int( rand(10) );
}

sub check {
    my $self = shift;
    return $self->legs() != 11;
}

sub new {
    my $class = shift;

    my $self = bless { "legs" => 11, "colour" => "brown" }, $class;

    return $self;
}

sub set_colour {
    my $self = shift;

    $self->{colour} = shift;
}

sub init {
    $class = shift;
    return $class->new( { legs => 4, colour => "brown" } );
}

sub run {
    my $self = shift;
    my $legs = shift;
    $self->setLegs($legs);
}
1;
