# inheritance
# Inheritance is the process by which one class takes on the attributes and methods of another, and it's used to express an is-a relationship. For example, a cartoon fox is a cartoon mammal, so a CartoonFox class could inherit from a CartoonMammal class.

# However, a Wizard is not an Elf, so it shouldn't inherit from the Elf class (even if they have a lot of magical attributes and methods in common). Instead, both Wizard and Elf could ultimately inherit from the same MagicalBeing class.

# inheritance syntax
class DerivedClass < BaseClass
end

####
class ParentClass
  def do_something
    print "doing something!"
  end
end
class ChildClass < ParentClass
end
action = ChildClass.new
action.do_something # prints doing something
# ChildClass has access to do_something method

# overriding
# when creating a derived class that inherits the methods an attributes of a (parent, base or superclass)  class, one or more of those can be overriden by explicitly creating a method with the same name that overrides the unwanted one inherited from the parent class.

class BaseClass
  def initialize
  end
  def announcer
    print "neeeeews"
  end
  def drum_roll
    print "shhhhhh!"
  end
end

class DerivedClass < BaseClass
  def announcer
    print "better neeeeeews!"
  end
end
news = DerivedClass.new
news.drum_roll # prints shhhhhh!
news.announcer # prints better neeeeeews!

# keyword super
# When super is called from inside a method, that tells Ruby to look in the superclass of the current class and find a method with the same name as the one from which super is called. If it finds it, Ruby will use the superclass' version of the method.

class SuperClass
  # def initialize
  # end
  def break_up
    print "its over"
  end
end

class BatClass < SuperClass
  def break_up
    print "but why "
    super
  end
end

instance_super = SuperClass.new
instance_super.break_up # prints its over
instance_bat = BatClass.new
instance_bat.break_up # prints but why its over

# Ruby disallows multiple inheritance which is a class having multiple parent classes
