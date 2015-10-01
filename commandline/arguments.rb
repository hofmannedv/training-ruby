# -----------------------------------------------------------
# demonstrates how to work with commandline arguments
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# check the list of commandline arguments
if ARGV.length == 0
	puts "called with no arguments"
else
	printf "called with the following %d arguments:\n", ARGV.length

	# initialize a basic counter variable
	counter = 1

	# go through the list of arguments one by one
	ARGV.each { |entry|

		# output a digital number,and the argument
		printf "%2d. %s\n", counter, entry

		# increase the counter
		counter += 1
	}
end
