def collatz(start_num)
  chain = Array.new


  (start_num).downto(1) do |i|
    num_array = Array.new
    n = i
    num_array << n
    while n > 1 do
      if n % 2 == 0
        n = n/2
        num_array << n
      else
        n = 3*n+1
        num_array << n
      end
    end
    if num_array.size > chain.size
      chain = num_array
    end
  end
  puts chain
end

collatz(1000000)
