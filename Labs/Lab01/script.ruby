Script started on 2020-02-06 14:34:50-0500
]0;ajv234@gold08: ~/cs214/Lab/Lab01/Ruby[01;32majv234@gold08[00m:[01;34m~/cs214/Lab/Lab01/Ruby[00m$ cat circle_area.rb 
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: AJ Vrieland
# Date: 02/06/2020
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927
def circleArea(r)
    PI * r ** 2 
end

if __FILE__ == $0
   puts "To compute the area of a circle,"
   print " enter its radius: "
   radius = gets.chomp.to_f
   print "The circle's area is: "
   puts circleArea(radius)
end
]0;ajv234@gold08: ~/cs214/Lab/Lab01/Ruby[01;32majv234@gold08[00m:[01;34m~/cs214/Lab/Lab01/Ruby[00m$ cat circle_area.rb lojure -m circle_area[3Pat circle_area.rb [Kcat circle_area.rb lojure -m circle_areaat src/circle_area.clj[1Plojure -m circle_area[3Pat circle_area.rb [Kruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;ajv234@gold08: ~/cs214/Lab/Lab01/Ruby[01;32majv234@gold08[00m:[01;34m~/cs214/Lab/Lab01/Ruby[00m$ ruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;ajv234@gold08: ~/cs214/Lab/Lab01/Ruby[01;32majv234@gold08[00m:[01;34m~/cs214/Lab/Lab01/Ruby[00m$ ruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 2.5
The circle's area is: 19.634954375
]0;ajv234@gold08: ~/cs214/Lab/Lab01/Ruby[01;32majv234@gold08[00m:[01;34m~/cs214/Lab/Lab01/Ruby[00m$ ruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104417
]0;ajv234@gold08: ~/cs214/Lab/Lab01/Ruby[01;32majv234@gold08[00m:[01;34m~/cs214/Lab/Lab01/Ruby[00m$ exit

Script done on 2020-02-06 14:35:23-0500
