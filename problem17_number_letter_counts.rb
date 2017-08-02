# If the numbers 1 to 5 are written out in words:
# one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens.
# For example, 342 (three hundred and forty-two) contains 23 letters,
# 115 (one hundred and fifteen) contains 20 letters.
# The use of "and" when writing out numbers is in compliance with British usage.

@count = 0
def all_counts
  (1..1000).each do |i|
    letter_counts(i)
  end
  @count
end

def letter_counts(n)
  num = num_in_words(n)
  num.split('')
  (0..num.length-1).each do |i|
    unless num[i] == ' ' || num[i] == '-'
      @count += 1
    end
  end
  @count
end

def num_in_words(num)
  n = num.to_s.split(//)
  n.map!(&:to_i)

  if n.length == 4
    return 'one thousand'
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
    "#{one_digit(n[0])}"
  end
end

def one_digit(num)
  case num
  when 0
    return ' '
  when 1
    return 'one'
  when 2
    return 'two'
  when 3
    return 'three'
  when 4
    return 'four'
  when 5
    return 'five'
  when 6
    return 'six'
  when 7
    return 'seven'
  when 8
    return 'eight'
  when 9
    return 'nine'
    else
      return 'unknown'
  end
end

def ten_to_twenty(num)
  case num
  when 0
    return 'ten'
  when 1
    return 'eleven'
  when 2
    return 'twelve'
  when 3
    return 'thirteen'
  when 4
    return 'fourteen'
  when 5
    return 'fifteen'
  when 6
    return 'sixteen'
  when 7
    return 'seventeen'
  when 8
    return 'eighteen'
  when 9
    return 'nineteen'
    else
      return 'unknown'
  end
end

def tens(num)
  case num
  when 2
    return 'twenty-'
  when 3
    return 'thirty-'
  when 4
    return 'forty-'
  when 5
    return 'fifty-'
  when 6
    return 'sixty-'
  when 7
    return 'seventy-'
  when 8
    return 'eighty-'
  when 9
    return 'ninety-'
    else
      return 'unknown'
  end
end

def hundreds(num)
  "#{one_digit(num)} hundred"
end

<<<<<<< HEAD
puts all_counts
=======
all_counts
>>>>>>> 63abe4b8c1c6afe4178f28559e89b8fac2ef0caa
