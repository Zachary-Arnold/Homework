# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0 #declare sum = 0
  for element in arr
    sum = sum + element #sum togther the previous sum + the new element as you iterate through array.
  end
  return sum
end

def max_2_sum arr
  large_number1 = 0 #Define two numbers to equal 0
  large_number2 = 0
  #First check if length is zero or one.
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    #Iterate through array and for each element check if it is bigger than the first number, if it is push the first number down and replace.
    for element in arr
      if (large_number1 < element or large_number1 == 0)
        large_number2 = large_number1
        large_number1 = element
      elsif (large_number2 < element or large_number2 == 0)
        large_number2 = element
      end
    end
  end
  return large_number1 + large_number2
end

def sum_to_n? arr, n
  #Check if length is 0 or 1.
  if (arr.length == 0 or arr.length == 1)
    return false
  else
    #declare boolean as false
    match_found = false
    #iterate through the array and add each element with each other and check against n.
    for element1 in arr
      for element2 in arr
        if element2 != element1
          sum = element1 + element2
          if (n == sum)
            #set to true when condition is found.
            match_found = true
          end
        end
      end
    end
  end
  return match_found
end

# Part 2

def hello(name)
  #concatenate hello with name and return.
  return "Hello, " + name
end

def starts_with_consonant? s
  #check if length is 0
  if s.length == 0
    return false
  #case statement
  else
    #first downcase letter then check if it is consonant
    case s[0].downcase
    when "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  #iterate through string and verify only 1's and 0's.
  for index in 0..s.length-1
    if (s[index] != "1" and s[index] != "0")
      return false
    end
  end
  #check if first and second least significant bits are 0.
  if (s[s.length-1] == "0" and s[s.length-2] == "0")
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  Characters isbn
  Number price
end
