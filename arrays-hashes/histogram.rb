# create a histogram
# a program that takes a user's input, then builds a hash from that input. Each key in the hash will be a word from the user; each value will be the number of times that word occurs. For example, if our program gets the string "the rain in Spain falls mainly on the plain," it will return
=begin
the 2
falls 1
on 1
mainly 1
in 1
rain 1
plain 1
Spain 1
=end
# A visual representation of data like this is called a histogram.

puts "enter text: "
text = gets.chomp!
words = text.split(" ")
frequencies = Hash.new(0) # setting default to zero so every time word occurs it increments

words.each {
  |word| frequencies[word] +=1
}

frequencies = frequencies.sort_by do
   |word, count| count
 end
 # sort_by method returns an array of arrays
 frequencies.reverse!
 # so count shows from higher to lower
 frequencies.each do
   |word, frequency| puts word + " " + frequency.to_s
 end
# to_s method to turn frequency to string allow concatenation 
