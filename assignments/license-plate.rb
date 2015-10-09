# -----------------------------------------------------------
# demonstrates the usage of regular expressions
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

class LicensePlate

	def initialize(plate="", verbose="on")
		# constructor: initialize class
		@plate = plate

		# verbose value can be either on, or off
		# set default value: off
		@verbose = "off"
		if ["on", "off"].include? verbose
			@verbose = verbose
		end

		if @verbose == "on"
			puts "initialising LicensePlate object ..."
		end

		return
	end

	def setPlate(plate="")
		# set plate variable
		@plate = plate

		if @verbose == "on"
			puts "setting plate to #{plate}"
		end

		return
	end

	def getPlate()
		# get value of plate variable
		
		if @verbose == "on"
			puts "reading plate value ..."
		end

		return @plate
	end

	def to_s()
		# get value of plate variable
		if @verbose == "on"
			puts "converting plate value to string..."
		end

		return getPlate()
	end

	def validatePlate()

		if @verbose == "on" 
			puts "evaluating plate value ..."
		end

		# define license plate components (Germany)
		city = "[A-Z]{1,3}" 	# A-Z up to 3 times
		separator = "-"
		letters = "[A-Z]{1,2}"	# up zo two letters
		numbers = "[0-9]{1,4}"	# up to four characters
		oldtimer = "[H]?"		# maybe an oldtimer

		# combine components
		pattern = city + separator + letters + numbers + oldtimer

		# output message if verbosity is enabled
		if @verbose == "on"
			puts "testing #{@plate} with pattern #{pattern} ..."
		end		

		returnValue = false
		if @plate =~ /#{pattern}$/
			returnValue = true
		end
		
		return returnValue
	end
end

# main program

# read a list of license plates from a text file, and check whether the
# license plate value is valid 
# (see https://de.wikipedia.org/wiki/Mautbrücke for further details)

# create new text object (init)
plate = LicensePlate.new("A-BC1234", "on")

# define data file
dataFile = "logdatei"

# define list of license plates
licenseNumbers = []

# read data file, and count the number of entries
fileHandle = File.new(dataFile,"r")
fileContent = fileHandle.readlines()
entries = fileContent.count()

# close file
fileHandle.close()

# output stats
puts "content of data file    : #{fileContent}"
puts "entries of lines        : #{entries}"

position = 0
loop do
	# read entry line by line
	licenseId = fileContent[position].chomp()
	licenseNumbers += [licenseId]
	position += 1

	# exit loop if we have reached the last entry
	break if entries == position
end

# output number of read entries
puts "number of license plates: #{licenseNumbers}"

# check each license plate for being valid
licenseId = 0
while licenseId < licenseNumbers.length()
	number = licenseNumbers[licenseId]
	licenseId += 1

	# update plate, and check for validity
	plate.setPlate(number)
	if plate.validatePlate()
		puts "#{licenseId}. #{number} is valid"
	else
		puts "#{licenseId}. #{number} is invalid"
	end
end

