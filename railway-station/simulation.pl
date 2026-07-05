#!/usr/bin/perl -w

use lib '.';

use strict;
use Individual;

use warnings;
use Math::Random qw(random_poisson);

my $lambda = 12.0;

my @individuals;

my $person = 0;
my $persons_on_platform = 0;

my $start_time = -15;
my   $end_time = 15;

my $departure = 3;
my $get_there = 2;


for(my $time = $start_time; $time <= $end_time; $time++) {

    my $new_persons = random_poisson(1, $lambda);
    
    for(my $i=0;$i<$new_persons;$i++) {
	$person++;
	my $individual = new Individual($person,$time);
	$individual->departure($departure);
	$individual->get_there($get_there);
	push @individuals,$individual;

    }

    print "$time\t$new_persons\t$person\n";    
}

while(my $ind = shift(@individuals)) {
    if($ind->in_time()) {
#	print "individuals\t" . $ind->id() . "\t" .  $ind->arrived() . "\n";
    } else {
#	print STDERR "missed train\t" . $ind->id() . "\t" .  $ind->arrived() ."\n";
    }

}
