# -----------------------------------------------------------
# demonstrates a recursive function call
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

def calc(value)
	if value > 1
		return value + calc(value - 1)
	else
		return 1
	end
end

puts "value of 5: #{calc(5)}"
