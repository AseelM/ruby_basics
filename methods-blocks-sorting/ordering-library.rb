titles = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
def alphabetize(books, ascending_order)
  if ascending_order
    books.sort!
  else
    books.sort! {|book_1, book_2| book_2 <=> book_1}
  end
end
puts "books order from A to Z #{alphabetize(titles, true)}"
puts "books order from Z to A #{alphabetize(titles, false)}"

# we can give a param a default argument so if nothing is passed it evaluates to it
def alphabetize_1(books, ascending_order=true)
  if ascending_order
    books.sort!
  else
    books.sort! {|book_1, book_2| book_2 <=> book_1}
  end
end
puts "books order from A to Z #{alphabetize_1(titles)}"
puts "books order from Z to A #{alphabetize_1(titles, false)}"

# alphabetize_1 does exactly what alphabetize does

# another solution
def alphabetize_2(books, descending_order=false)
  if descending_order
    books.sort! {|book_1, book_2| book_2 <=> book_1}
  else
    books.sort!
  end
end
puts "books order from A to Z #{alphabetize_2(titles)}"
puts "books order from Z to A #{alphabetize_2(titles, true)}"

# gives exact outcome as alphabetize_1 and alphabetize
