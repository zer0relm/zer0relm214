Script started on 2020-02-10 16:39:11-0500
]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/ruby[00m$ cat rectangle_area.rb 
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
]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/ruby[00m$ ruby rectangle_area.rb 
To compute the area of a rectangle,
enter its length: 5
enter its width: 5
The rectangle's area is: 25.0
]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/ruby[00m$ ruby rectangle_area.rb 
To compute the area of a rectangle,
enter its length: 124
enter its width: 6
The rectangle's area is: 744.0
]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/ruby[00m$ exit

Script done on 2020-02-10 16:39:39-0500
