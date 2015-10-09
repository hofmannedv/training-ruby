# -----------------------------------------------------------
# demonstrates a Rectangle class 
#
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

require_relative("line.rb")
require_relative("point.rb")

class Rectangle < Line

	def initialize(point1, point2)
		# constructor class -- initiate object

		# explicitly define the four corners of an rectangle
		@p1 = point1
		@p2 = Point.new(point2.getX(), point1.getY())
		@p3 = point2
		@p4 = Point.new(point1.getX(), point2.getY())

		return
	end

	def getRectanglePoints
		# return the four rectangle points as list

		return [@p1,@p2,@p3,@p4]
	end

	def getArea
		# calculate the area of the rectangle

		return ((@p1.getX() - @p2.getX()) * (@p1.getY() - @p4.getY())).abs
	end

	def isPointInRectangle? (point1)
		# find out if the given point is in the rectangle

		# define default value: outside the rectangle
		inRectangle = false

		# calculate the ranges
		point1x,point1y = point1.getX(), point1.getY()
		minRectangleX = [@p1.getX(), @p3.getX()].min
		maxRectangleX = [@p1.getX(), @p3.getX()].max
		minRectangleY = [@p1.getY(), @p3.getY()].min
		maxRectangleY = [@p1.getY(), @p3.getY()].max

		# check whether the point is inside the ranges
		if (minRectangleX <= point1x && point1x <= maxRectangleX) && (minRectangleY <= point1y && point1y <= maxRectangleY)
			inRectangle = true
		end

		return inRectangle
	end

end
