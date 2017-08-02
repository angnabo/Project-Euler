# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?

def power_sums
  num = 2**1000
  num_array = num.to_s.split(//)
  num_array.map!(&:to_i)

  sum = 0

  (0..num_array.length-1).each do |i|
    sum += num_array[i]
  end
  sum
end

puts power_sums
