# -----------------------------------------------------------
# an example toll class to evaluate data from toll bridges
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

class Maut

	def initialize(timestamp, licensePlate)
		@timestamp = timestamp
		@licensePlate = licensePlate
		@attentionScore = 0

		return
	end

	def getTimestamp()
		return @timestamp
	end

	def getLicensePlate()
		return @licensePlate
	end

	def checkPlate(plate)
		if plate == getLicensePlate()
			return true
		end
		return false
	end

	def checkTimestamp(time)
		if plate == getTimestamp()
			return true
		end
		return false
	end

	def checkScoring()
		return @attentionScore
	end

	def increaseScore()
		@attentionScore += 1
		return
	end

	def setScore(newValue)
		@attentionScore = newValue
		return
	end

	def clearScore()
		setScore(0)
		return
	end

	def validatePlate()

		# define plate components
		city = "[A-Z]{1,3}" # A-Z up to 3 times

		trennzeichen = "-"

		buchstaben = "[A-Z]{1,2}"
		ziffern = "[0-9]{1,4}"
		oldtimer = "[H]{0,1}"

		# combine components
		pattern = city + trennzeichen + buchstaben + ziffern + oldtimer

		# puts "testing #{@text} with pattern #{pattern} ..."
		returnValue = false
		if @licensePlate =~ /#{pattern}$/
			returnValue = true
		end
		
		return returnValue
	end
end
