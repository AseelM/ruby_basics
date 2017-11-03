puts "enter your text "
text = gets.chomp

puts "enter redacted word "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    print "REDACTED "
  else
   print word + " "
  end
end
