#!/usr/bin/perl -w

use lib '.';

use strict;
use Individual;

use warnings;
my $person = 100;
my $time = 0;
my $ind = new Individual($person,$time);

for(my $i = -8; $i <8; $i++) {
    my $threshold = $ind->threshold($time,$i);
    my $belief    = $ind->do_believe($time,$i);
    print "$i\t$threshold\t$belief\n";
}
