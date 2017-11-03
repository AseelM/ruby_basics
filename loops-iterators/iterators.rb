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
