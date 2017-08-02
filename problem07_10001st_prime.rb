# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
def eratosthenes(n)
  array = Array.new((n*100), true) # Initialize array with boolean true values
  index = 2
  primes_array = Array.new

  until primes_array.length >= n
      j = 0
      if array[index]
        ((index*2)..(n*100)).step(index+j) do |j|
          array[j] = false;
        end
        primes_array << index
      end
      index += 1
  end
  primes_array[-1]
end

puts eratosthenes(10001)
