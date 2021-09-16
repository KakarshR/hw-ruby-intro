# When done, submit this entire file to the autograder.

# Part 1

def sum nums
  # YOUR CODE HERE
  sum = 0
  for num in nums
    sum += num
  end
  return sum
end


def max_2_sum nums
  # YOUR CODE HERE
  if(nums.size() == 0)
    return 0
  end
  
  return nums.max(2).reduce(:+)
end

def sum_to_n? nums, n
  # YOUR CODE HERE
  !!nums.uniq.combination(2).detect { |num1, num2| num1 + num2 == n } #combining two elements of numsay and checking the sum if equal to n
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end


def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  end
    return true
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[01]*(00)$/.match(s) or /^(0)$/.match(s) #a binary number which is a multiple of 4 will have 2 zeros in the end. Using regex to check the binary number.
    return true
  end
    return false
end


class BookInStock

  #Setter
  def isbn=(val)
    if val == ''
      raise ArgumentError.new("Error, ISBN number is empty!")
    end
    @isbn = val
  end

  #Getter
  def isbn
    @isbn
  end
  
  #getter
  def price
    @price
  end
  
  #Setter
  def price=(val)
    val = val.to_f
    if val <= 0
      raise ArgumentError.new("Error, price cannot be negative or zero!")
    end
    @price = val
  end

  
  def initialize(isbnNumber, bookPrice)
    self.isbn = isbnNumber
    self.price = bookPrice
  end

  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end