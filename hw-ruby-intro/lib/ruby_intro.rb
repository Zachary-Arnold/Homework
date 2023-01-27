# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {|a| sum = sum + a}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length() >= 2
    a = arr.at(0)
    b = arr.at(1)
  else 
    a = 0
    b = 0
  end
  arr.each {|c| 
  if c>=a then 
    b = a
    a = c
  end}
  sum = a + b
  print arr
  print sum
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

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
