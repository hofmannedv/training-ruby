# -----------------------------------------------------------
# demonstrates functions
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

def add (parameter1, parameter2)
	# adds two values
	return parameter1 + parameter2
end

v1, v2 = 1, 2
result = add(v1,v2)
puts "the sum of #{v1} and #{v2} is #{result}"
