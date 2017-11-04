#  block is just a bit of code between do..end or {}. It's not an object on its own, but it can be passed to methods like .each or .select.

# yielding
# some methods accept a block and some don't, the ones that can have the ability to transfer control from the calling method to the block and back again
# that can be built in methods defined by using the yield key word
def method_block
  puts "control is in method"
  puts "yielding control to the block"
  yield
  puts "control back to method"
end
method_block { puts " >>> control in block"}

# parameters can be passed to yield as well
def yield_age(x)
  puts "in method"
  yield(20)
  puts "in between yields"
  yield(x)
  puts "block done back to method"
end
yield_age(30) { |age| puts "#{age} years old, that is ollllld!"}

# prints
# in method
# 20 years old, that is ollllld!
# in between yields
# 30 years old, that is ollllld!
# block done back to method
def triple(x)
  puts yield(x)
end
triple(30) do |num| num * 3 end
