# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def eratosthenes(n)
  array = Array.new((n), true);
  index = 2
  primes_sum = 0

  until index >= n
      j = 0
      if array[index]
        ((index*2)..(n)).step(index+j) do |j|
          array[j] = false;
        end
        primes_sum += index
      end
      index += 1
  end
  primes_sum
end

puts eratosthenes(2000000)
