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

# Get the input from user
print("Please enter number:");

my $input = <STDIN>;

# check if the entered value is a binary number. Else throw a message and exit from the program.
if($input !~ /^[01]+$/) {
    print "Value entered should be in binary only with 0s and 1s. Example: 1001\n";
    exit;
}

# Remove trailing whitespaces
chomp($input);

# Boundary condition as specified in the problem statement.
if ($input > 11111111) {
    print "Value entered is greater than the expected input. Enter lesser value\n";
    exit;
}

=head
 Perform the operation to convert binary to decimal.
 Plain mathematical logic
 1    1   0
 |    |   |
 |    |   |
 |    |   ____ 0 * 2^0 = 0
 |    |
 |    ________ 1 * 2^1 = 2
 |
 _____________ 1 * 2^2 = 4
 110 => 0 + 2 + 4 = 6
=cut

# Traverse from the end of the input and perform exponentiation on 2 with a counter starting from 0.

my @array = split('', $input);
my $result = 0;
for ( my $idx = scalar(@array)-1, my $j = 0; $idx >= 0; $idx--, $j++ ) {
    $result += $array[$idx] * (2**$j);
}
print "Output: $result\n";
