# Sorting arrays is a very common problem in computer science, and is well studied for that reason. There are many algorithms —well-defined sequences of steps—each with its own trade-offs and advantages.

# Sorting algorithms can be a great introduction to computer science as a theoretical discipline, but for now we'll focus on how to use Ruby's built-in sorting library (which implements a few of these algorithms).

array_1 = [3, 51, 7, 19, 1, 10]
array_1.sort!
puts array_1

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books.sort!

# combined comparison operator (<=>) it returns 0 if first and second operands are equal, 1 if first operand is greater, -1 if first operand is less
# a block that is passed into the sort method must return either 1, 0 or -1
# it should return -1 if the first block param should come before the second

book_1 = "The Goldfinch"
book_2 = "The killing lessons"

print book_1 <=> book_2

# sort method accepts an optional block of code as an optional argument that allows elements to be sorted in descending order instead of sort method's default ascending order.

books.sort! do |title_1, title_2|
  title_2 <=> title_1
end
puts books
# prints ["War and Peace", "Utopia", "Charlie and the Chocolate Factory", "A Wrinkle in Time", "A Brief History of Time"]
