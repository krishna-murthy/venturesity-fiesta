=pod
Binary Madness
Write a program that accepts, as input from the user, a binary number. The output should be in decimal.

Example:

Please enter number: 110
Output: 6

Miscellaneous:

Leading zeroes must be trimmed off e.g. 00110 should be treated exactly the same as 110. Also, don’t worry about negative numbers etc. i.e. treat all inputs as positive. Also, the largest binary number that can be input is 11111111 which is 255 in decimal.

As the program is very simple, you will be judged extensively on validation of user input. In other words, if they input letters instead of numbers etc., proper error messages must be displayed. You must also document your code well with suitable comments where needed. Good, clean code is a must!

=cut

use strict;

print("Please enter number:");

my $input = <STDIN>;
chomp($input);

if($input !~ /^[01]+$/) {
    print "Value entered should be in binary only with 0s and 1s. Example: 1001\n";
    exit;
}

if ($input > 11111111) {
    print "Value entered is greater than the expected input. Enter lesser value\n";
    exit;
}

my @array = split('', $input);
my $result = 0;
for ( my $idx = scalar(@array)-1, my $j = 0; $idx >= 0; $idx--, $j++ ) {
    $result += $array[$idx] * (2**$j);
}
print "Output: $result\n";
