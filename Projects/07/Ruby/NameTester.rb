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

