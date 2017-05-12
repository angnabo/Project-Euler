# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def eratosthenes(n)
  a = Array.new((n), true);
  i = 2
  p = 0

  until i >= n
      j = 0
      if (a[i] == true)
        ((i*2)..(n)).step(i+j) do |j|
          a[j] = false;
        end
        p += i
      end
      i += 1
  end
  return p
end

puts eratosthenes(2000000)
