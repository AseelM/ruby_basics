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

# .upto and .downto methods are used when range of number included is known and its a more concised for loop version

30.upto(39) {|num| puts num} # prints 30 to 39 inclusive
"f".upto("p") {|l| print l, " "} # prints f to p inclusive

39.downto(30) {|num| puts num} # prints 39 to 30 inclusive
# strings don't have downto method

# to get functionality of similar to downto in strings
("f".."p").to_a.reverse.each {|l| puts l}
