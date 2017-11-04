# hash is an array structure, a collection of key-value pairs
# a hash stores data with a specifiable key as oppose to an array which can only sort data by numbers
# keys must be unique but value can repeat
hash_1 = {
  key_1 => value_1,
  key_2 => value_2,
  key_3 => value_3
}
# syntax is hash1 maps keys to values

puts hash_1[key_1]
puts hash_1[key_2]

# hashes don't have repeat identical entries

# hashes can be created with a hash literal or with hash constructor notation
hash_2 = Hash.new

puts hash_2 #which is going to be and empty hash {}

# adding a key-value pair to a hash can be done with bracket notations
hash_2[key_1] = value_1

# access
puts hash_2[key_1]

family = {
  "mother" => "lola",
  "father" => "hisham",
  "grandfather" => "ahmed"
}

family.each do |member, name|
  puts "#{member}: #{name}"
end

# iterating over hashes 2 placeholder variables are needed to rep key-value pair

# if there's a hash with a default value, and one tries to access the hash with a non existing key it will return the default value

new_hash = Hash.new("nothing here")

puts new_hash # prints {}

puts new_hash["something"] # prints nothing here

# if a hash doesn't have a default value accessing a key that doesn't exist will not return an error but special value nil
# nil and false are the two non-true values in Ruby false means not true, nil means nothing at all

# hash syntax with (=>) between key-value pairs is called a hash rocket style
# hash syntax changed in Ruby 1.9 from the hash rocket, the colon moved and the rocket was removed
movies = {
  :comedy => "2 can play that game",
  :romance => "legends of the fall",
  :action => "ragnarok"
  }

  movies_new_syntax = {
    comedy: "2 can play that game",
    romance: "legends of the fall",
    action: "ragnarok"
  }

# .select method filters a hash for values that meet certain criteria
long_title_movies = movies_new_syntax.select do |k, v|
  v.length > 11
end
puts long_title_movies

# .each_key and .each_value are methods that allow iteratating over only keys and only values respectively
movies.each_value do |v|
  puts v
end

# .delete method removes key-value pair from hash
movies.delete(:comedy)
