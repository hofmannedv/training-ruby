# -----------------------------------------------------------
# an example programm to use the maut class
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define additional modules
# - global/standard module
require 'csv'
# - local module
require_relative ("./maut")

# define an empty list with maut data
mautdaten = []

# read file with CSV data
data = CSV.read('./logdatei.csv')

# go through the lines one by one
data.each { |entry|

	# short version
	# timestamp, plate = entry

	# extended version 1
	timestamp = entry[0]
	plate = entry[1]

	#puts "#{timestamp} : #{plate.to_s}"

	# extended version 2
	# timestamp, plate = entry[0], entry[1]

	# create new toll data object
	mautEntry = Maut.new(timestamp, plate)

	# extend list of toll objects
	mautdaten += [mautEntry]
}

# define associative array with demo car data
carData = {
	"timestamp" => "15:05",
	"plate" => "H-VB157"
}

# check the toll data if the car is already there
mautdaten.each { |mautEntry|
	if mautEntry.validatePlate()
		if mautEntry.checkPlate(carData["plate"])
			puts "#{carData["timestamp"]} CAUTION: car detected with plate #{carData["plate"]}"
			puts "at time #{mautEntry.getTimestamp()}"

			# increase score
			mautEntry.increaseScore()
		end
	else
		# cars without a valid/German plate get a higher score
		mautEntry.setScore(5)
	end
}

