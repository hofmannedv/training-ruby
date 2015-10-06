# -----------------------------------------------------------
# demonstrates the usage of Point and Point3D
#
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

require_relative("point.rb")
require_relative("point3D.rb")
require_relative("line.rb")

p1 = Point.new(1,2)
puts "x: #{p1.getX()}"
puts "y: #{p1.getY()}"

p2 = Point3D.new(3,4,5)
puts "x: #{p2.getX()}"
puts "y: #{p2.getY()}"
puts "z: #{p2.getZ()}"

l1 = Line.new(p1,p2)
p1n = Line.getPoint1()
p2n = Line.getPoint2()
