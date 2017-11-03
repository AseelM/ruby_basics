# hash is an array structure, a collection of key-value pairs
hash1 = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}
# syntax is hash1 maps keys to values

puts hash1[key1]
puts hash1[key2]

# hashes don't have repeat identical entries


# hashes can be created with a hash literal or
hash2 = Hash.new

puts hash2 #which is going to be and empty hash {}

# adding a key-value pair to a hash can be done with bracket notations
hash2[key1] = value1

# access
puts hash2[key1]

family = {
  "mother" => "lola",
  "father" => "hisham",
  "grandfather" => "ahmed"
}

family.each do |member, name|
  puts "#{member}: #{name}"
end

# iterating over hashes 2 placeholder variables are needed to rep key-value pair

# if there's a hash with a default value, and one tries to access the hash with a non existing key it will return the default value1

new_hash = Hash.new("nothing here")

puts new_hash # prints {}

puts new_hash["something"] # prints nothing here
