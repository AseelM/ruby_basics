# conditional assignment
# only assigning a value to a var if it hasn't been assigned one
# operator | |= consists of or logical operator and equal normal assignment operator

some_var = nil
some_var ||= 7
puts some_var # prints 7
some_var ||= 8
puts some_var # prints 7
some_var = 8
puts some_var # prints 8

# implicit return
# in Ruby if a method wasn't told explicitly what to return it will return the last evaluated expression unlike JavasSript which returns undefined and Python which returns None
# this means the following two methods will behave exactly the same
# both methods will return 3 when called but add_implicit_return is simpler!

def add_explicit_return(x, y)
  return x + y
end
add_explicit_return(1, 2)

def add_implicit_return(x, y)
  x + y
end
add_implicit_return(1, 2)

# another implicit return example using the ternary condition expression
def divisive_by_7(x)
  x % 7 == 0 ? "yup!" : "nope!"
end
divisive_by_7(12) # will return nope!
divisive_by_7(49) # will return yup!

# caveat when called individually, first call will return nope! if called together return will be yup! because the last call returns yup!


# short circuit evaluation
# Ruby doesn't look at both expressions unless it has to
false && true
# Ruby will stop looking after the logic operator && because it knows false && anything will be false!

def a
  puts "a was evaluated!"
  return false
end

def b
  puts "b was evaluated!"
  return false
end

puts a || b # prints both strings and false (result of boolean)
puts "********"
puts a && b # prints only first string and false (result of boolean)
# this case didn't need to run b to evaluate it because a already returned false and false && anything is false!
