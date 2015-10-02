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

class Array2D
	def initialize(rows, columns)
		# constructor class to initiate this object

		# set array size, and init the array
		@rows = rows
		@columns = columns

		# define array to keep the rows
		@arrayData = Array.new(rows)
		
		# fill each row entry with an array that represents the columns
		(0...@arrayData.getLength()).each do |currentRow|
			# define empty row
			arrayRow = Array.new(columns)
			
			# update value in array
			@arrayData.setElementValue(currentRow, arrayRow)
		end

		return
	end

	def getSize()
		# return the size of the 2d array
		return @rows, @columns
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

# define 2d array of size 3x3
array2 = Array2D.new(3,3)
puts "2D array size: #{array2.getSize()}\n"

