# Public vs Private
# ruby methods are public by default unless explicitly declared
# private, but just to emphasize code readers which methods are public
# public methods allow for an interface with the rest of the program
# e.g. "Hey! Ask me if you need to know something about my class
# or its instances."

# syntax
class SomeClass
  public
  def public_method
  end
end

# private methods are for the classes to do their work undisturbed
# they are private to the object where they were defined which means
# these methods can only be called from inside that object
# i.e. the method can not be called with an explicit-receiver such
# as Object.method object is the receiver of method

# syntax
 class AnotherClass
   private
   def private_method
   end
 end

 # in order to access private information public methods need to be
 # created that know how to get it, thus seperating the public
 # interface with the private implementation

 
