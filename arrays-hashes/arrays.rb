# arrays can be used to store a list values in a single object
# an array can house a list of any collection of ruby objects
# arrays can be accessed by index array[i]
# an array of arrays is called a multi-dimensional array

some_array = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
# this is a 2-dimensional array

some_array.each {
  |array| puts array + "/n"
}

friends = ["kemi", "funmi", "libby"]

friends.each {
  |friend| puts friend
}

# iterating over a multi-dimensional array

food = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

food.each do |combination|
  combination.each do |item|
    puts item
  end
end

# .collect method takes a block an applies that block to every element in an array but it doesn't mutate the original (creates a copy) unless .collect!
#.collect method does exactly what .map does

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect {|fib| fib * 2}
puts doubled_fibs
#or
fibs.collect! {|fib| fib * 2}
puts fibs

# .floor method rounds a float down to the nearest integer
n = 3.79
n.floor
