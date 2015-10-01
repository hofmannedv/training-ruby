# -----------------------------------------------------------
# calculate the average for a list of integers
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
	# assume a total of 0
	total = 0

	# go through the list element by element
	valueList.each { |item| total+=item }

	# calculate the average with explicit float conversion
	average = total.to_f / items.to_f

	# output minimum and maximum value
	puts "The average value is: #{average}"
else
	puts "The list is empty."
end
