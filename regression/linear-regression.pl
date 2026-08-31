#!/usr/bin/perl -w

use strict;

my $sigmaX=0;
my $sigmaXsquare=0;
my $sigmaY=0;

my $sigmaXY=0;
my $N = 0;

my $first_x = 0;
my $last_x  = 0;

while(my $line = <>) {

    my $x; my $y;

    chomp $line;

    ($x, $y) = split /\s+/,$line;

    $first_x = $x if $N == 0;
    $last_x = $x;

    $N++;

    $sigmaX += $x;
    $sigmaXsquare += $x**2;
    $sigmaY += $y;

    $sigmaXY +=  $x*$y;
}


# print "sigma x = " . $sigmaX ."\n";
# print "sigma x**2 = " . $sigmaXsquare ."\n";
# print "sigma y = " . $sigmaY ."\n";
# print "sigma x*y = " . $sigmaXY ."\n";

my $intercept = ($sigmaY * $sigmaXsquare - $sigmaX * $sigmaXY)/($N * $sigmaXsquare - $sigmaX**2);

# print $intercept . "\n";

my $slope  = ( $N * $sigmaXY - $sigmaX * $sigmaY)/($N * $sigmaXsquare - $sigmaX**2);

# print $slope . "\n";

$first_x = -5;
$last_x  = 137;

print STDERR $intercept          . "\n";
print STDERR $slope             . "\n";
print STDERR $intercept + $slope * $first_x . "\n";
print STDERR $intercept + $slope * $last_x . "\n";
