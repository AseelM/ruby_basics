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
