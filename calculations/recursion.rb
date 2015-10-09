# -----------------------------------------------------------
# demonstrates a recursive function call
#
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

def calc(value)
	if value > 1
		puts "recall of calc (#{value})"
		return value + calc(value - 1)
	else
		puts "returning calc (#{value})"
		return 1
	end
end

puts "value of 5: #{calc(5)}"
