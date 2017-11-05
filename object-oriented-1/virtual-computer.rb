class Computer
  @@users = {} # Let's go ahead and toss in a class variable. We'll use the variable @@users to keep track of all the users on our computer.
  def initialize(username, password)
    @username = username
    @password = password
    @files = {} # In your initialize method, you'll also want to create a @files instance variable and set this to an empty hash. This is so we can keep track of our files later!
    @@users[username] = password # In your initialize method, set @@users[username] = password so that your @@users hash keeps usernames as keys with each username's password as the associated value.
Stuck? Get a hint

  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "file is created"
  end
# Perfect! Now that we think of it, though, we could have a whole bunch of users creating files every which where, and we don't have a way of getting to our @@users class variable! We'll need to create a method to reach it.

#  Because @@users is a class variable, we'll use a class method to grab it. Most of the methods you've seen so far are instance methods—they work on a particular instance/object, such as "matz" or "blixy". A class method belongs to the class itself, and for that reason, it's prefixed with the class name.

  # class Machine
  #   def Machine.hello
  #     puts "Hello from the machine!"
  #   end
  # end
  # There's a shortcut for this, which we'll learn in a later lesson.
  def Computer.get_users
    return @@users
  end
end
# my_computer = Computer.new("me", "mypassword")

# Great work! You've got your very own Computer class that generates virtual computer instances.

# Feel free to play around with your class. What if you add a method that updates files? Or deletes them? What if you want to add additional parameters to initialize or create?
