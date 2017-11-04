# symbol syntax : followed by either a letter or underscore and then any combo of letters, underscores and numbers
some_symbol = :symbol
puts some_symbol

# a Ruby symbol is a sort of name, symbols are not strings
# symbols behave differently to strings- while there can be multiple strings with different values there can only be one copy of any particular symbol.

puts "string".object_id
puts "string".object_id
# prints 2 different IDs which means two different object

puts :symbol.object_id
puts :symbol.object_id
# print same id which means same object listed twice

# .object_id method gets an ID of an object

# approach when dealing with hash keys is to use symbols
# symbols make good hash keys because they are immutable only one copy of a symbol can exist at any given time so they save memory which makes them faster than strings as keys
# :symbol => value better than"string"=> value
# even though the position of the colon changed these keys are still symbols
# :key_1 => value_1 became key_1: value_1

# converting from strings to symbols is done with these methods
"string".to_sym
"string".intern # .intern mehod will internalise a string into a symbol
:symbol.to_s

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |str|
  symbols.push(str.to_sym)
end
print symbols

# .push method adds elements to end of array
