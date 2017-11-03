#  loops while until for .. ... next
# assignment operator e.g. += is operating and then assigning new
# value to variable
m = 1
while m < 20
  print "potato"
  m +=1
end

m = 12
until m == 6
  print m
  m -= 1
end

for m in 1..10 do
  print m
end
# in range .. means last number in range included ... excluded

for i in 1...12 do
  next if  i % 2 == 0
  print i
end
# the keyword next is used to skip over steps in a loop
# this loop doesn't print even numbers, so it is saying
# go to next instance if i is even

# iterators loop .times & .each methods (number-of-times.times)
# object.each
m = 1
loop do
  print m
  m +=2
break if m > 18
end

m = 1
loop {
  print m
  m +=2
break if m > 18
}

30.times {
  print "tutts"
}
# curly braces {} are generally interchangeable with the keywords
# do (to open the block) and end (to close it)

some_array = [1, 3, 7, 20]

some_array.each do |item|
  item *= 3
  puts item
end

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
