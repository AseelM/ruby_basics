
puts "Enter your text "
text = gets.chomp
words = text.split(" ")


words.each_with_index do |word, index|
  word.gsub!(/s/, "th") if word.include?"s"
  print index == 0 ? word.capitalize : word
  print index != words.size - 1 ?  " " : "." + "\n"
end
