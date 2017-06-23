# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagorian_triplet(sum)

  (1..(sum/3)).each do |a|
    (1..(sum/2)).each do |b|
       c = sum - a - b
      if a**2 + b**2 == c**2
        return a*b*c
      end
    end
  end
end

pythagorian_triplet(1000)
