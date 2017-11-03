=begin
string = "something awesome is about to happen"
age = 31

if age < string.length
  print string.length
elsif string.length < age
  print age
else
  print "they are equal"
end

condition = false
print "condition is false" unless condition

# a short hand if statement. It will do whatever you ask unless the condition is true.

=end
print "Pleathe enter a thtring: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "There are no 's's in your string."
end

puts "Your new thtring is #{user_input}."

# include? method checks if variable includes a certain string.
# gsub method global substitution substitutes parts of string with something else.
