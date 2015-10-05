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

		# set array size, and init the array with 0
		@size = size
		@data = [0] * size

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
			return false
		end
	end
	
	def print()
		# output the elements one after the other
		puts @data.to_s

		# output as array
		#printf "#{@data}\n"
		
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
		(0...columns).each do |currentRow|
			# define empty row
			arrayRow = Array.new(columns)
			
			# update value in array
			@arrayData.setElementValue(currentRow, arrayRow)
		end

		return
	end

	def getDeterminante3x3()
		# return the determinante for 3x3

		determinante3x3 = getElementValue(0,0) * getElementValue(1,1) * getElementValue(2,2) + getElementValue(0,1) * getElementValue(1,2) * getElementValue(2,0) + getElementValue(1,0) * getElementValue(2,1) * getElementValue(0,2) - getElementValue(0,2) * getElementValue(1,1) * getElementValue(2,0) - getElementValue(1,0) * getElementValue(0,1) * getElementValue(2,2) - getElementValue(0,0) * getElementValue(1,2) * getElementValue(2,1)

		return determinante3x3
	end

	def getSize()
		# return the size of the 2d array
		return @rows, @columns
	end

	def print()
		# output the elements one after the other

		# print one row after the other ...
		(0...@rows).each do |currentRow|
			# retrieve current row
			arrayRow = @arrayData.getElementValue(currentRow)

			# output array row
			arrayRow.print()
		end
		
		return
	end

	def getElementValue(row, column)
		# get the element value at array position x,y

		# define the range of the array
		rangeRow = 0...@rows

		# check if the position is in row range
		if rangeRow.include?(row)
			# retrieve row
			arrayRow = @arrayData.getElementValue(row)

			# check for column
			rangeColumn = 0...@columns

			# check if the position is in column range
			if rangeColumn.include?(column)
				# retrieve value
				return arrayRow.getElementValue(column)
			else
				# return false, otherwise
				return false
			end

		else
			# return false, otherwise
			return False
		end

		return
	end

	def setElementValue(row, column, value)
		# set the element value at array position x,y

		# define the range of the array
		rangeRow = 0...@rows

		# check if the position is in row range
		if rangeRow.include?(row)
			# retrieve row
			arrayRow = @arrayData.getElementValue(row)

			# check for column
			rangeColumn = 0...@columns

			# check if the position is in column range
			if rangeColumn.include?(column)
				# update value
				arrayRow.setElementValue(column, value)

				return true
			else
				# return false, otherwise
				return false
			end

		else
			# return false, otherwise
			return false
		end

		return
	end

end

class Array2Dn
	def initialize(data)
		# constructor class to initiate this object

		# define array to keep the rows
		@arrayData = data
		
		return
	end

	def getDeterminante3x3()
		# return the determinante for 3x3

		determinante3x3 = getElementValue(0,0) * getElementValue(1,1) * getElementValue(2,2) + getElementValue(0,1) * getElementValue(1,2) * getElementValue(2,0) + getElementValue(1,0) * getElementValue(2,1) * getElementValue(0,2) - getElementValue(0,2) * getElementValue(1,1) * getElementValue(2,0) - getElementValue(1,0) * getElementValue(0,1) * getElementValue(2,2) - getElementValue(0,0) * getElementValue(1,2) * getElementValue(2,1)

		return determinante3x3
	end

	def getElementValue(row, column)
		# get the element value at array position x,y
		return @arrayData[row][column]
	end

	def setElementValue(row, column, value)
		# set the element value at array position x,y

		@arrayData[row][column] = value

		return
	end

	def print()
		@arrayData.each{ |row| printf "#{row}\n" }
		return
	end
end

# main program

# define basic array of size 3
array1 = Array.new(3)
puts "array length: #{array1.getLength()}\n"
puts "array content:"
array1.print()

# set value: element 1:5
array1.setElementValue(1, 5)
array1.print()

# get value: element 1
puts "value at position 1 is #{array1.getElementValue(1)}"

# define 2d array of size 3x3
array2 = Array2D.new(3,3)
puts "2D array size: #{array2.getSize()}\n"
array2.print()
puts "updating array ..."
array2.setElementValue(1,1,5)
array2.print()
puts "value at position 1,1 is #{array2.getElementValue(1,1).to_s}"

# define 3x3 matrix
matrix = Array2D.new(3,3)
matrix.setElementValue(0,0,2)
matrix.setElementValue(0,1,3)
matrix.setElementValue(0,2,1)
matrix.setElementValue(1,0,5)
matrix.setElementValue(1,1,-3)
matrix.setElementValue(1,2,4)
matrix.setElementValue(2,0,2)
matrix.setElementValue(2,1,1)
matrix.setElementValue(2,2,-4)
matrix.print()
puts "Determinante: #{matrix.getDeterminante3x3()}"

# define matrix data per row
dMatrix = [[1,2,3], [4,5,6], [67,10,19]]
dMatrixRows = dMatrix.length
dMatrixColumns = dMatrix[0].length
matrix3x3 = Array2D.new(dMatrixRows, dMatrixColumns)
rowCounter = 0
dMatrix.each { |currentRow|
	puts "row #{rowCounter}: #{currentRow}"
	columnCounter = 0
	currentRow.each { |columnValue|
		puts "column #{columnCounter}: #{columnValue}"

		matrix3x3.setElementValue(rowCounter, columnCounter, columnValue)
		columnCounter += 1
	}
	rowCounter += 1
}
printf "#{dMatrix}\n"
matrix3x3.print()
puts "Determinante: #{matrix3x3.getDeterminante3x3()}"

matrixN = Array2Dn.new(dMatrix)
matrixN.print()
puts "Determinante: #{matrixN.getDeterminante3x3()}"
#[1 2 3]
#[4 5 6]
#[7 8 9]
