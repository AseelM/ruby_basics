# methods
def greeting_method
  puts "hello world"
end
greeting_method

# method has three parts
# header which consists of keyword def (define) name of method and any arguments the method takes (method parameters)
# the body which is the block of code which describes the procedures the method carries out
# method ends with keyword end

def cubed_number(n)
  puts  n ** 3
end
cubed_number(4)

# arguments are passed to method that expects arguments when called

# splat arguments are used when a method is expecting one or more arguments

def name_printer(*name)
  puts "hi " + name
end
name_printer("tutts", "mutts", "butts", "lutts")

# a return is used in order for the method to have a value when it finishes executing

def add(x, y)
  return x + y
end

some_var = add(1, 2)
some_var *= 4
puts some_var
