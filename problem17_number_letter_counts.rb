@count = 0
def all_counts
  (1..1000).each do |i|
    letter_counts(i)
  end
  puts @count
end

def letter_counts(n)
  num = num_in_words(n)
  num.split('')
  puts num
  (0..num.length-1).each do |i|
    if !(num[i] == " " || num[i] == "-")
      @count += 1
    end
  end
  puts @count
end

def num_in_words(num)
  n = num.to_s.split(//)
  n.map!(&:to_i)

  if n.length == 4
    return "one thousand"
  end

  if n.length == 3
    if n[1] == 0 && n[2] == 0
      return "#{hundreds(n[0])}"
    end
    if n[1] == 0
      return "#{hundreds(n[0])} and #{one_digit(n[2])}"
    end
    if n[1] == 1
      return "#{hundreds(n[0])} and #{ten_to_twenty(n[2])}"
    end
    if n[1] > 1
      return "#{hundreds(n[0])} and #{tens(n[1])}#{one_digit(n[2])}"
    end
  end

  if n.length == 2
    if n[0] == 1
      return "#{ten_to_twenty(n[1])}"
    end
    if n[0] > 1
      return "#{tens(n[0])}#{one_digit(n[1])}"
    end
  end

  if n.length == 1
    return "#{one_digit(n[0])}"
  end
end

def one_digit(num)
  case num
  when 0
    return " "
  when 1
    return "one"
  when 2
    return "two"
  when 3
    return "three"
  when 4
    return "four"
  when 5
    return "five"
  when 6
    return "six"
  when 7
    return "seven"
  when 8
    return "eight"
  when 9
    return "nine"
  end
end

def ten_to_twenty(num)
  case num
  when 0
    return "ten"
  when 1
    return "eleven"
  when 2
    return "twelve"
  when 3
    return "thirteen"
  when 4
    return "fourteen"
  when 5
    return "fifteen"
  when 6
    return "sixteen"
  when 7
    return "seventeen"
  when 8
    return "eighteen"
  when 9
    return "nineteen"
  end
end

def tens(num)
  case num
  when 2
    return "twenty-"
  when 3
    return "thirty-"
  when 4
    return "forty-"
  when 5
    return "fifty-"
  when 6
    return "sixty-"
  when 7
    return "seventy-"
  when 8
    return "eighty-"
  when 9
    return "ninety-"
  end
end

def hundreds(num)
  return "#{one_digit(num)} hundred"
end

# num_in_words(303)
# num_in_words(212)
# num_in_words(437)
# num_in_words(12)
# num_in_words(6)
# num_in_words(999)
# num_in_words(44)
# numbr = num_in_words(115)
# letter_counts(1000)
all_counts
