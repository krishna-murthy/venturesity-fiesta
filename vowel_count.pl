=pod
Vowel Count
Another simple one to kick off the New Year.

Write a program that takes as input, a string, and outputs the number of vowels in the string.

Consider “y” as a vowel:

Enter string: Happy New Year
Output: 6

As this program is very simple, you will judged extensively on error handling (example, the string should not contain any numbers, but can contain spaces. The string can contain punctuation as well.) You will also be judged on code readability.
=cut

use strict;

# Get the input from the user
print("Enter String:");

my $input = <STDIN>;

# Check if entered value is a string
if($input =~ /^[0-9]/) {
    print "String should not contain any numbers, spaces and punctuations allowed.\n";
    exit;
}

# Set of vowels to use for check.
my @vowels = ('a', 'e', 'i', 'o', 'u', 'y');

# Reduce it to lower case for checking values
$input = lc($input);
my @alphabets = split('', $input);

my $count = 0;
for my $al(@alphabets) {
    map {$_ eq $al ? $count++ : ()} @vowels;
}

print "Output: $count\n";
