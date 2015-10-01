# -----------------------------------------------------------
# calculate the minimum, and the maximum value for a list of integers
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of values
valueList = [1, 6, 3, 4, 5]

# list length
items = valueList.length

# check for empty lists, first
if items
	minimumValue = valueList.min
	maximumValue = valueList.max

	# output minimum and maximum value
	puts "The minimum value is: #{minimumValue}"
	puts "The maximum value is: #{maximumValue}"
else
	puts "The list is empty."
end
