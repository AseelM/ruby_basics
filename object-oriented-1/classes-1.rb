# ruby is an object oriented programming language which means it manipulates programming constructs called objects.
# almost everything in ruby is an object, objects have methods and attributes

"Aseel".lenght
# therefore Aseel is a string object that has .length method and length attribute of 5
# Aseel is a string because its an instance of the String class.

# Class
# is just a way of organizing and producing objects with similar methods and attributes

class SomeClass
  def initialize(param)
    @parameter = param
  end
end
some_instance = SomeClass.new(arg)
# in this code some_instance is an instance of the class SomeClass with @parameter as an instance variable, which has been created by calling .new method on SomeClass class
# SomeClass has the power of creating new objects of class SomeClass
# naming convention is capital first letter and the rest CamelCase
# initialize is the method that bootsup its objects creation
# using @ before a variable signifies that it is an instance variable which means that the variable is attached to an instance of the class

# Scope
# another important aspect of Ruby classes is scope. The scope of a variable is the context in which it's visible to the program.

# When dealing with classes, there are variables that are available everywhere (global variables), ones that are only available inside certain methods (local variables), others that are members of a certain class (class variables), and variables that are only available to particular instances of a class (instance variables).

# The same goes for methods: some are available everywhere, some are only available to members of a certain class, and some are only available to particular instance objects.

# variable naming
@var_name = "instance variable"
@@var_name = "class variable"
$var_name = "global variable" # or we can just omit the $ but inorder to insure that a variable is global $

class NewClass
  new_var = "hello"
  $another_var = "hello"
end
puts new_var # wont execute because new_var is unreachable by the sputs method
put $another_var # will run because $another_var is global

# Warning: global variables can be changed from anywhere so its better to create local variable with limited scope

# class variables @@var_name are shared by entire classes not just instances of a class so that means theres only one copy that is shared across all instance which allows for some cool ruby tricks such as counting the number of times an instance was created of a class

class Person

  @@people_count = 0

  def initialize(name)
    @name = name
    @@people_count += 1
  end

  def self.number_of_instances
    return @@people_count
  end
end
person_1 = Person.new("Aseel")
person_2 = Person.new("Mustafa")

print "number of instances created = #{Person.number_of_instances}"
