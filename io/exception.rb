# -----------------------------------------------------------
# demonstrates error handling based on exceptions
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define file name to read
filename = "example.txt"

begin
	# open the file for reading
	fileDescriptor = File.open(filename, "r")

	# read the text
	fileContents = fileDescriptor.gets

	# close the file
	fileDescriptor.close

	# output success message
	puts("%s read successfully" % (filename))

rescue
	# output error message on STDOUT, instead
	puts("%s does not exist" % (filename))
end
