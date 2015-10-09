# -----------------------------------------------------------
# demonstrates a Line class 
#
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

require_relative("line.rb")
require_relative("point.rb")

class Rectangle < Line

	def initialize(point1, point2)
		@p1 = point1
		@p2 = Point.new(point2.getX(), point1.getY())
		@p3 = point2
		@p4 = Point.new(point1.getX(), point2.getY())
	return
	end

	def getRectanglePoints
		return [@p1,@p2,@p3,@p4]
	end

	def getArea
		return ((@p1.getX() - @p2.getX()) * (@p1.getY() - @p4.getY())).abs
	end

	def isPointInRectangle? (point1)
		# define default value
		inRectangle = false

		point1x,point1y = point1.getX(), point1.getY()
		minRectangleX = [@p1.getX(), @p3.getX()].min
		maxRectangleX = [@p1.getX(), @p3.getX()].max
		minRectangleY = [@p1.getY(), @p3.getY()].min
		maxRectangleY = [@p1.getY(), @p3.getY()].max

		if (minRectangleX <= point1x && point1x <= maxRectangleX) && (minRectangleY <= point1y && point1y <= maxRectangleY)
			inRectangle = true
		end

		return inRectangle
	end

end
