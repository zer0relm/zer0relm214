#! /usr/bin/ruby
#computes the area of a rectangle
#
#Input: the length and width of the rectangle
#Precondition: length and width are both postive
#Output: the area
#
#By: AJ Vrieland
#Date: 02/10/2020
#####################################################



# Function rectangleArea takes in two numbers l and w and computes the area of the rectangle
# Parameters: l, w, positive numbers
# Precondition; l, w > 0
# Returns: the area of the rectangle
def rectangleArea(l, w)
	l * w
end

if __FILE__ == $0
	puts "To compute the area of a rectangle,"
	print "enter its length: "
	length = gets.chomp.to_f
	print "enter its width: "
	width = gets.chomp.to_f
	print "The rectangle's area is: "
	puts rectangleArea(length, width)
end
