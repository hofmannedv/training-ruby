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
	puts "invalid number of parameters: 1 required."
	puts "call: ruby reading-csv.rb database.txt"
	puts "Exiting."
else
	# read name of the datafile
	datafileName = ARGV[0]
	puts "reading database from #{datafileName} ..."

	# count the number of lines
	lines = 0

	# read the data line by line
	CSV.foreach(datafileName) do |row|
		nameEntry, addressEntry, cityEntry, zipEntry, countryEntry = row[0], row[1], row[2], row[3], row[4]
		# output all the columns as strings
		puts row.to_s

		# increase the lines counter
		lines += 1
	end

	# output number of lines read
	puts "... read #{lines} lines"
end


