# -----------------------------------------------------------
# demonstrates error handling, and output via STDERR
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define file name to read
filename = "example.txt"

# does the file exist?
if File.exists?(filename)
	# output confirmation (on STDOUT, implicitly)
	puts("%s exists" % (filename))
else
	# output error message on STDERR
	STDERR.puts("%s does not exist" % (filename))
end
