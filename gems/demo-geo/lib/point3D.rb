# -----------------------------------------------------------
# demonstrates a Point3D class derived from Point class
#
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

require_relative("point.rb")

class Point3D < Point

	def initialize (x,y,z)
		@x = x
		@y = y
		@z = z
		return
	end

	def getZ()
		return @z
	end

end

