# lambdas are objects that are similar to procs with some syntactical differences and behavioral quirks

# lambda syntax
# lambda { |param| block}

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

letter_counter = lambda { |string| string.length}

print strings.collect(&letter_counter) # prints [8, 9, 7, 13]

# differences between lambdas and procs
# lambdas will throw an error if passed the wrong number of arguments while procs will ignore unexpected ones and assign nil to missing ones
# when a lambda returns it passes control back to the calling method, when a proc returns it does so immediately without going back to the calling method

def proc_return_demo
  some_proc = Proc.new { return "proc returns"}
  some_proc.call
  "method returns"
end
puts proc_return_demo # prints proc returns

def lambda_return_demo
  some_lamba = lambda { return "lambda returns"}
  some_lamba.call
  "method returns"
end
puts lambda_return_demo # prints method returns

# lambdas can be passed to methods expecting a block just like procs using &

original_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_verifier = lambda {|param| param.is_a? Symbol}

symbols_array = original_array.select(&symbol_verifier)

print symbols_array

# .is_a? method checks if var is of the data type specified
