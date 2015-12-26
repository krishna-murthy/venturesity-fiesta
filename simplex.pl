=pod
Simplex
This program serves as a gentle introduction to some deeper concepts involving high dimensional geometry. But you don’t need to have a knowledge of high dimensional geometry to solve this problem. However you do need to know certain formulas. We will provide you links to the necessary formulas towards the end of the problem statement. So don’t worry!
Background:

A simplex is a higher dimensional generalization of a triangle or tetrahedron. For example, in 3 dimensions, the simplex is the regular tetrahedron that we all know and love. For more about simplices and their properties, check out the wiki page. This will tell you all you need to know (and more!) about simplices.
Your task in this challenge is to explore these simplices. Well not too deep of an exploration! The task is to prompt the user for the number of dimensions. The output should be the elements as outlined in the table given in the Wikipedia page.
https://en.wikipedia.org/wiki/Simplex

Sample input:

Enter the number of dimensions (0 to 100): 4
Output: 5, 10, 10 , 5, 1
Constraints:
The number of dimensions is from 0 to 100 inclusive. Also no letters or alphabets allowed. You will be judged extensively on error handling. So make sure that the constraints are fulfilled!

Submission guidelines: The code must be submitted on the Venturesity platform. Follow the instructions on the submission panel on your dashboard.
=cut

use strict;

print("Enter the number of dimensions (0 to 100): ");
my $input=<STDIN>;

my @output = simplex($input);
splice(@output, 0 ,1);
foreach(@output) { print "$_, "; }
print "\n";

sub simplex {
    my $value = shift @_;
    if($value == 0) {
        my @result;
        push @result, 1;
        push @result, 1;
        return @result;
    }
    else {
       my @res_value = simplex($value-1);
       my @result_value;
       push @result_value, 1;
       for (my $j = 1; $j < scalar(@res_value); $j++) {
           push @result_value, ($res_value[$j] + $res_value[$j-1]);
       }
       push @result_value, 1;
       return @result_value;
    }
}
