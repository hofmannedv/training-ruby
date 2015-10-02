# -----------------------------------------------------------
# reading data from a CSV file
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# import additional modules: csv
require 'csv'

# check the list of commandline arguments
if ARGV.length < 1
	# list contains less arguments than required
	puts "invalid number of parameters: 1 required."
	puts "call: ruby reading-csv.rb database.txt"
	puts "Exiting."

	# exit with error code
	exit(2)
else
	# read name of the datafile
	datafileName = ARGV[0]
	puts "reading database from #{datafileName} ..."

	# count the number of lines
	lines = 0

	# read the data line by line
	CSV.foreach(datafileName) do |row|
		
		# skip the first line with column titles
		if lines > 1
			# assign the columns to single variables in a single step
			nameEntry, addressEntry, cityEntry, zipEntry, countryEntry = row

			# output name and place, for example
			printf "Name and place: %s, %s\n", nameEntry, cityEntry
		end

		# increase the lines counter
		lines += 1
	end

	# output number of lines read
	puts "... read #{lines} lines"
end


