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

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
