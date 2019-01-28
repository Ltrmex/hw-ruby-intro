# Author: Maciej Majchrzak
# Student Number: G00332746

# Part 1 - Arrays, Hashes, and Enumerables

# Method that sums passed in array of integers
# Code Reference: http://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-inject
def sum arr
  arr.inject(0){|sum,n| sum + n }
end

# Method which determines two largest integers in an array and sums them up
# Code Reference: https://ruby-doc.com/core-2.4.2/Array.html#method-i-max
def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

# Method which check if any two integers in an array sum up to n
# Code Reference: https://ruby-doc.com/core-2.4.2/Array.html#method-i-combination
def sum_to_n? arr, n
  match = arr.combination(2).find { |x, y| x + y == n }
  if match
    return true
  else
    return false
  end
end

# Part 2 - Strings and Regular Expressions

# Method which concatenates "Hello" to passed in string
# Code Reference: https://ruby-doc.com/core-2.4.2/Array.html#method-i-concat
def hello(name)
  "Hello, ".concat(name)
end

# Method that determines if passed in string starts with a consonant
# Code Reference: https://ruby-doc.org/core-2.4.2/Regexp.html
def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

# Method which determines if passed in string represents binary number that is a multiple of 4
# Code Reference: https://ruby-doc.org/core-2.4.2/Regexp.html
def binary_multiple_of_4? s
  return true if s == "0" 
  /^[10]*00$/.match(s) != nil
  
end

# Part 3 - Object Oriented Basics

# Code Reference: https://www.tutorialspoint.com/ruby/ruby_classes.htm
class BookInStock
  @@isbn = 0
  @@price = 0.00
  
  def initialize(isbn, price)
      raise ArgumentError if isbn.empty? || price <= 0 
      @isbn = isbn
      @price = price
  end
  
  def isbn #getter method
    @isbn
  end
  def isbn=(isbn) #setter method
    @isbn = isbn
  end
  
  def price #getter method
    @price
  end
  def price=(price) #setter method
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
