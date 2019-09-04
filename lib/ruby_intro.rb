# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {
  	|num|
  	sum += num
  }
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
  	return 0
  elsif arr.length == 1
  	return arr[0]
  else
  	sort_arr = arr.sort
  	return sort_arr.sort[sort_arr.length-1] + sort_arr.sort[sort_arr.length-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 1
  	return false
  end
  arr.each {
  	|num|
  	arr.each{
  		|num_2|
  		next if num == num_2
  		if num + num_2 == n 
  			puts num+num_2
  			return true
  		end
  	}
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A[qwrtypsdfghjklzxcvbnm]{1}/i
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
  	return false 
  end
  if (s.length == 1 && s == "0")
  	return true 
  end
  return (s =~ /\A[0|1]{3,}\z/ && s =~ /00\z/)
end

# Part 3

class BookInStock 
# YOUR CODE HERE
	attr_accessor :isbn
  	attr_accessor :price
	def initialize (isbn,price)
		if isbn.empty? || price <= 0
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end
	def price_as_string
    	return "$%.2f" % price
  	end



end
