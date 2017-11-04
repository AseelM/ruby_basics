# blocks are just a bit of code that can be executed block syntax is either between do and end or {} 
1.times { print "howdie"}
3.times do
  print "holla"
end

# methods can be called multiple times (invoked by name) whereas blocks will only be called once

def capitalize(word)
  puts "#{string[0].upcase}#{string[1..-1]}"
end
capitalize("aseel")
capitalize("mutafa")
# method that capitalizes first letter in a words
# prints Aseel
# prints Mustafa

["aseel", "mustafa"].each {
  |name| puts "#{name[0].upcase}#{name[1..-1]}"
}
# code block that capitalizes the first letter in each element of an array
# prints Aseel then Mustafa

# a method can take a block as a parameter: method .each takes {|i| puts i}
# passing a block to a method as param is a great way to abstract
# using a block to define what you want a method such as .each to do simplifies the task at hand
