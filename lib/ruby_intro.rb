# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Returns the sum of all the elements
  # Empty Array returns 0
  # Inject takes in a start sum value (0) and the operation we want to execute
  arr.inject(0, :+)
end

def max_2_sum arr
  # Returns sum of the 2 largest elements
  # Sort the array and sum the 2 largest elements
  sum(arr.sort{|a,b| b<=>a}.take(2))
end

def sum_to_n? arr, n
  # Returns true if any 2 elements add up to n
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  else
    arr.combination(2).to_a.any? {|pair| sum(pair) == n}
  end
end

# Part 2

def hello(name)
  # Returns Hello + name
  'Hello, ' + name
end

def starts_with_consonant? s
  # if first letter is a consonant then return true
  return false if s.length == 0
  if s[0] =~ /[[:alpha:]]/
    p !s.start_with?('A', 'E', 'I', 'O', 'U', 'a', 'e','i','o','u')
  else
    return false
  end
end

def binary_multiple_of_4? s
  # Reutrns true if string is a binary number thats a multiple of 4
  return false if s.length == 0
  return false if s =~ /[[:alpha:]]/
  return true if s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# isbn as a string, book price as float
attr_accessor :isbn, :price
# constructor takes in isbn and price 
# Returns Argument Error if isbn is empty or price is <= 0
def initialize (isbn, price)
  raise ArgumentError if isbn.length == 0
  raise ArgumentError if price <= 0
  @isbn = isbn
  @price = price
end 

def price_as_string 
  # Returns price of book formatted with $20.00
  '$%.2f' % @price
end
end
