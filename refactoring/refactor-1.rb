# THE ZEN OF RUBY
# Ruby is a Delight
# As a language, Ruby prioritizes programmer productivity over program optimization. This means that Ruby may not always run a program in the fastest way possible, but it strives to be a language that programmers (like you!) find easy and fun to use. The more intuitive a language's syntax is, the more productive its users can be. You're in control, not the machine!

ruby_is_eloquent = true
ruby_is_ugly = false

puts "ruby is eloquent!" if ruby_is_eloquent
puts "ruby isn't ugly!" unless ruby_is_ugly

# simpler if and unless syntax
# expression if boolean
# expression unless boolean
puts "yes" if true
puts "no" unless true
# this if / unless syntax doesn't require end keyword

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |a| puts a if a % 2 == 0} # prints even numbers

# ternary condition expression
# it is a concise if else version. It is called ternary because it takes 3 arguments boolean, expression to evaluate if boolean true and expression if false
# boolean ? Do this if true: Do this if false
2 < 3 ? "2 less than 3" : "2 isn't less than 3"
puts 2 < 3 ? "2 less than 3" : "2 isn't less than 3"
# why didn't the puts go in evaluating expression?!!!

# case syntax

puts "enter a number"
number = gets.chomp.to_i

case number
when 1
  puts "one"
when 2
  puts "two"
when 3
  puts "three"
else
  puts "big number!"
end

# folded case syntax with when and then
puts "enter toy"
toy = gets.chomp!

case toy
when "sword" then puts "not safe"
when "ball" then puts "round"
when "dice" then puts "cube"
else puts "cool toy!"
end

# .respond_to? method takes a symbol and returns a boolean
# if an object can receive that method (name referenced by symbol) it returns true, if not false
[1, 2, 3, 4].respond_to?(:push) # returns true
[1, 2, 3, 4].respond_to?(:to_sym) # returns false

# .next method will return integer immediately following the integer it was called on
age = 26
age.respond_to?(:next) # shows that age is an integer!

# concatenation operator (the shovel) << is a concise version of .push method that works for both strings and arrays
[1, 2, 3].push(4)
[1, 2, 3] << (4)

 some_str = "you don't know"
 some_str += "!"
 some_str << "?"

 # string interpolation is used to concatenate non strings to strings

some_num = 2
# long way
some_text = "potato" + some_num.to_s + "chips"
# or
some_text = "potato" << some_num.to_s << "chips"
puts some_text
 # string interpolation
 another_text = "potato #{some_num} chips"
puts another_text
