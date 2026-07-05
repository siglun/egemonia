#!/usr/bin/perl -w

use strict;
use warnings;
use Math::Random qw(random_poisson);

my $lambda = 4.5;

# Generate a single random number
my $single_val = random_poisson(1, $lambda);
print "Single value: $single_val\n";

# Generate 5 random numbers
my @multiple_vals = random_poisson(5, $lambda);
print "Multiple values: @multiple_vals\n";
