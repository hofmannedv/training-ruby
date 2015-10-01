# -----------------------------------------------------------
# demonstrates different kind of assignments
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# single assignments
colour = "blue"					# string assignment
size = 17						# integer assignment
length = 2.5					# float assignment

puts "colour: #{colour}"
puts "size  : #{size}"
puts "length: #{length}"

# multiple assignments
a = b = c = 1					# set a, b, and c to 1
d,e = 2, 3						# set d to 2, and e to 3
puts "a,b,c: #{a},#{b},#{c}"
puts "d,e: #{d},#{e}"

