# It'll do one of four things: add a new movie to a hash, update the rating for an existing movie, display the movies and ratings that are already in the hash, or delete a movie from the hash. If it doesn't receive one of those four commands, the program will output some kind of error message.

movies_new_syntax = {
  game: 4,
  fall: 4,
  ragnarok: 4
}

puts "type 'add' to add a movie"
puts "type 'update' to update the rating of an existing one"
puts "type 'display' if you want to see all movies in the library"
puts "type 'delete' if you want to delete a movie from library"

choice = gets.chomp.downcase

case choice
  
when "add"
  puts "what movie do you want to add"
  title = gets.chomp
  if movies_new_syntax[title.to_sym].nil?
    puts "what rating do you want to give it 0 to 4"
    rating = gets.chomp
    movies_new_syntax[title.to_sym] = rating.to_i
    puts "you have added #{title} with rating of #{rating}"
  else
    puts "movie already exists, what rating do you want to give it 0 to 4"
    rating = gets.chomp
    movies_new_syntax[title.to_sym] = rating.to_i
    puts "you have updated #{title}'s rating to #{rating}"
  end

when "update"
  puts "which movie do you want to update"
  title = gets.chomp
  if movies_new_syntax[title.to_sym].nil?
    puts "couldn't find title in library do you want to add it? yes or no"
    decision = gets.chomp.downcase
    if decision == "yes"
      puts "what rating do you want to give it 0 to 4"
      rating = gets.chomp
      movies_new_syntax[title.to_sym] = rating.to_i
      puts "you have added #{title} with rating of #{rating}"
    else
      puts "all good!"
    end
  else
    puts "what rating do you want to give it 0 to 4"
    rating = gets.chomp
    movies_new_syntax[title.to_sym] = rating.to_i
    puts "you have updated #{title}'s rating to #{rating}"
  end

  when "display"
    movies_new_syntax.each do |t, r|
      puts "#{t} with rating #{r}"
    end

  when "delete"
    puts "which movie do you want to delete"
    title = gets.chomp
    if movies_new_syntax[title.to_sym].nil?
      puts "#{title} isn't in the library"
    else
      movies_new_syntax.delete(title.to_sym)
      puts "#{title} has been removed from your library"
    end
  else
    puts "action wasn't clear!"
end

# .nil? method is used to test whether an object exists
# o.nil?
# o == nil Another way to test
# The four verbs your program knows—add, display, update, and delete—are universal. This acronym is better known as CRUD for create, read, update, and delete (respectively). These are the actions you take when you update an entry in a database, ask a website for information, or write a blog post. Being familiar with this setup is good, because you'll see it in everything from API calls to web frameworks like Ruby on Rails.
