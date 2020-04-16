#write your code here

def echo str

  return str.to_s  
end


def shout str
  return str.upcase
end


def repeat(str, value = 2)
  count = value
  complete = str

  while count > 1

    complete += " " + str 
    count -= 1
  end

  return complete
end

