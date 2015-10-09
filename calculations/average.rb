# -----------------------------------------------------------
# calculate the average for a list of integers
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of values
$valueList = [1, 6, 3, 4, 5]

def sum1
	total = 0.0

	# go through the list element by element
	$valueList.each { |item| 
		total+=item 
	}

	return total
end

def sum2
	total = 0.0

	sum = $valueList.inject(:+).to_f

	return sum
end

def sum3
	total = 0.0

	return $valueList.inject() { |sum, element| 
		sum + element
	}.to_f
end

def avg1
	return $valueList.inject(0.0) { |avg, element| 
		avg + (element.to_f / $valueList.size)
	}
end

def avg2
	avg = $valueList.inject(:+) / $valueList.size.to_f

	return avg
end

puts "#{sum1()}"
puts "#{sum2()}"
puts "#{sum3()}"
puts "#{avg1()}"
puts "#{avg2()}"
