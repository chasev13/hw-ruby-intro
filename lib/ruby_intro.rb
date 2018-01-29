# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for i in 0..arr.length-1 do
    total += arr[i]
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
    return arr.length
  end
  if arr.length == 1
    return arr[0]
  end
  arr.sort!
  arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  if arr.length == 0
    false
  end
  if arr.length == 1
    if arr[0] == n
      true
    else
      false
    end
  end
  return arr.combination(2).any?{|a, b| a + b == n}
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    false
  else
    letter = s[0]
    'bcdfghjklmnpqrstvwxyz'.include?(letter.downcase)
  end
end 

def binary_multiple_of_4? s
  int_s = s.to_i
  if s == '0'
    true
  elsif /[a-zA-Z^$3-9*]/.match(s)
    false
  elsif /^[10]*00$/.match(s) && int_s % 2 == 0
    true
  else
    false
  end

end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % @price
  end
end
