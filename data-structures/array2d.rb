# -----------------------------------------------------------
# demonstrates how to create and use an 2d array
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

class Array

	def initialize(size)
		"constructor class to initiate this object"

		# set array size, and init the array
		@size = size
		@data = [nil] * size
	end
end

# main program

# define basic array of size 3
array1 = Array.new(3)
#print ("array length:", array1.getLength())


