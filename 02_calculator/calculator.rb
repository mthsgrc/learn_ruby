#   write your code here
def add(x, y)
  return x + y
end


def subtract(x, y)
  return x - y
end


def sum array
  sum = 0

  array.each do |x|
    sum += x
  end

  return sum
end


def multiply array
  sum = 1

  array.each do |x|
    sum *= x
  end

  return sum
end


def power(x, y)
  return x ** y
end


def factorial value
	sum = 1
	if value == 0 or value == 1 
		return 1
	elsif value == 2
		return 2
	end

	while value > 1
		sum *= value 
		value -= 1
	end

	sum
	
end