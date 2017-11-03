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
