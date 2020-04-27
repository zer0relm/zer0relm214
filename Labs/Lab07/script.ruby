Script started on 2020-04-03 18:44:29-0400
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Labs/Lab07/Ruby[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Labs/Lab07/Ruby[00m$ cat NameTester.rb 
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: AJ Vrieland (ajv234)
# Date: 04/03/2020
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

# Replace this line with the declaration of class Name
class Name
	def initialize(first, middle,last)
		@first, @middle, @last = first, middle, last
	end

	attr_reader :first, :middle, :last

	def fullName()
		return first + " " + middle + " " + last
	end
	
	def print() 
		puts fullName()
		return fullName()
	end
end

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Labs/Lab07/Ruby[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Labs/Lab07/Ruby[00m$ ruby NameTester.rb 
John Paul Jones
All tests passed!
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Labs/Lab07/Ruby[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Labs/Lab07/Ruby[00m$ exit

Script done on 2020-04-03 18:44:53-0400
