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
			# out of range, so return error
			return false
		end
	end

	def getElementValue(position)
		# get the element value at position

		# define the range of the array
		range = 0...getLength()

		# check if the position is in range
		if range.include?(position)
			# return the value of the desired element
			return @data[position]
		else
			# return false, otherwise
			return False
		end
	end
	
	def print()
		# output the elements one after the other
		puts @data.to_s
		
		return
	end

end

# main program

# define basic array of size 3
array1 = Array.new(3)
puts "array length: #{array1.getLength()}\n"
array1.print()

# set value: element 1:5
array1.setElementValue(1, 5)
array1.print()

# get value: element 1
puts "value at position 1 is #{array1.getElementValue(1)}"
