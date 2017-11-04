# procs
# BLOCKS AREN'T OBJECTS! therefore can't be saved to variables
# saved blocks are called procs, a block can be saved and turned into a proc
# procs are objects so they have all the powers and abilities unlike blocks and they are great for keeping code DRY because they can be called multiple times

# proc syntax
cube = Proc.new { |n| n ** 3} # call Proc.new and pass the block to save
some_array = [1, 7, 3, 90]
puts some_array.collect!(&cube)
# then pass the proc to a method that expects a block, the & converts the proc to a block, because the .collect method expects a block

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {|float| float.floor}

ints = floats.collect!(&round_down)
puts ints

######

def greeter
  yield
end
phrase = Proc.new { puts "Hello y'all!" }
greeter(&phrase)

# a proc can be called by passing it to a method that expects a block or can be called directly with .call method
happy = Proc.new {puts "hoooooray"}
happy.call

halves = Proc.new {|num| num / 2}
halves.call(4)

# method names that are passed around as a symbol can be converted to a proc with &
some_array.map(&:to_s) # returns ["1", "7", "3", "90"]

#
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
integer_verifier = Proc.new { |param| param.is_a? Integer}
odds_n_ends.select(&integer_verifier)
