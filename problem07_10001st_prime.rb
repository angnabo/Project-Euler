# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
def eratosthenes(n)
  a = Array.new((n*100), true);
  i = 2
  p = Array.new

  until p.length >= n
      j = 0
      if (a[i] == true)
        ((i*2)..(n*100)).step(i+j) do |j|
          a[j] = false;
        end
        p << i
      end
      i += 1
  end
  return p[-1]
end

eratosthenes(10001)
