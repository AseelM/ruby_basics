print "whats your first name? "
first_name = gets.chomp.capitalise!

print "what is your last name? "
last_name = gets.chomp.capitalise!

print "what city are you from? "
city_name = gets.chomp.capitalise!

print "what state are you from? "
state_name = gets.chomp.capitalise!

puts "hi #{first_name} #{last_name} from #{city_name}, #{state_name}"

# (gets) takes input and chomp method just removes the extra added line
# #{variable_name} is called interpolation
# (puts) prints with an added line at the end
# when using string methods modified value can be assigned to a new var or the initial var can be reassigned the modified value with syntax variable_name.method!
