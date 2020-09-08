# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  while num=arr.pop do
    return true if arr.member?(n-num)
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s =~ /(^[01]*00|^0)$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @price = price
    @isbn = isbn
  end

  def price_as_string
    "$%.2f" % @price
  end
end
