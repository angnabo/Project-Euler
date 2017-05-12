# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_diff
  sum_square = 0;
  square_sum = 0;
  for i in 1..100
    sum_square += i ** 2;
    square_sum += i;
  end
  return (square_sum ** 2) - sum_square;
end

puts "difference: #{sum_square_diff}";
