# -----------------------------------------------------------
# demonstrates how to create and use an 2d array
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

class Array
	def initialize(size)
		# constructor class to initiate this object

		# set array size, and init the array
		@size = size
		@data = [nil] * size

		return
	end

	def getLength()
		# return the number of items
		return @size
	end

	def setElementValue(position, value)
		# set the element value at position

		# define the range of the array
		range = 0...getLength()

		# check if the position is in range
		if range.include?(position)
			# update position
			@data[position] = value
			return true
		else
			return false
		end
	end

end

# main program

# define basic array of size 3
array1 = Array.new(3)
puts "array length: #{array1.getLength()}\n"

# set values: element 1:5
array1.setElementValue(1, 5)

