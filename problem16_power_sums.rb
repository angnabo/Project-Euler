def power_sums
  num_array = Array.new
  num = 2**1000
  num_array = num.to_s.split(//)
  num_array.map!(&:to_i)

  sum = 0

  (0..num_array.length-1).each do |i|
    sum += num_array[i]
  end
  puts sum
end

power_sums
