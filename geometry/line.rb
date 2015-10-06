# -----------------------------------------------------------
# demonstrates a Line class 
#
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

class Line

	def initialize(point1, point2)
		@point1 = point1
		@point2 = point2
		return
	end

	def getPoint1()
		return @point1
	end

	def getPoint2()
		return @point2
	end
end
