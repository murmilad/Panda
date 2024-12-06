package Murmilad::Panda_3;

use feature qw{state say};

sub func_our {
    our $var;
    $var++;
    say "our=$var";
}

sub func_state {
    state $var;
    $var++;
    say "state=$var";
}

sub func_my {
    my $var;
    $var++;
    say "my=$var";
}

sub func_local {
    local $var;
    $var++;
    say "local=$var";
}

func_state() for 1 .. 10;
func_our()   for 1 .. 10;
func_my()    for 1 .. 10;
func_local() for 1 .. 10;
