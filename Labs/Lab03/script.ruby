Script started on 2020-02-20 15:25:42-0500
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ cat year_codes.rb 
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College
#
# Finished by: AJ Vrieland (ajv234)
# Date: 02/20/2020 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
	if year =~ /freshman/
		return 1;
	elsif year =~ /sophomore/
		return 2;
	elsif year =~ /junior/
		return 3;
	elsif year =~ /senior/
		return 4;
	else
		return 0;
	end
end	

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ ruby year_codes.rb 
Enter the year: freshamn   man
Numeric code is: 1
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ ruby year_codes.rb 
Enter the year: sophomore
Numeric code is: 2
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ ruby year_codes.rb 
Enter the year: junior
Numeric code is: 3
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ ruby year_codes.rb 
Enter the year: senior
Numeric code is: 4
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ ruby year_codes.rb 
Enter the year: second year
Numeric code is: 0
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ruby[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ruby[00m$ exit

Script done on 2020-02-20 15:26:21-0500
