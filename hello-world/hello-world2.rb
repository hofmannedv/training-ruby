# -----------------------------------------------------------
# demonstrates a basic ruby program showing different language concepts
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# output a string
puts "Hello, world!"

# reading the current time value 
# - creating an object from Time class
now = Time.new

# - output the time value
puts "Now it is #{now}."

# reading from stdn
# - ouputting a question
puts "What is your name?"

# - read from stdin
name = gets

# - remove trailing whitespaces from the input value
name.chomp!

# - output the input value
puts "Hello, #{name}!"

