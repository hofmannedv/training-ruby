# -----------------------------------------------------------
# demonstrates error handling based on exception classes
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

begin
	# calling a method that does not exist: pots instead of puts
	pots ("Hello!")
rescue NoMethodError
	# output full error message
	puts "Unknown Method: #{$!}"
rescue StandardError
	# output full error message if something else went wrong
	puts "Other error: #{$!}"
end
