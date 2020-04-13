Script started on 2020-04-13 16:03:53-0400
cat N	]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ruby[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ruby[00m$ cat NameTester.rb                   cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: AJ Vrieland (ajv234)
# Date: 04/08/2020
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
	def setFirst(newFirst)
		@first = newFirst
	end
	def setLast(newLast)
		@last = newLast
	end
	def setMiddle(newMiddle)
		@middle = newMiddle
	end

	def lfmi()
		return last[0] + first[0] + middle[0]
	end

	def readName()
		puts "Enter first name: "
		temp = gets.chomp
		@first = temp
		puts "Enter middle name: "
		temp = gets.chomp
		@middle = temp
		puts "Enter last name: "
		temp = gets.chomp
		@last = temp
	end
end

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   name.setFirst("Andrew")
   name.setMiddle("James")
   name.setLast("Vrieland")
   assert name.first == "Andrew", "setFirst failed"
   assert name.middle == "James", "setMiddle failed"
   assert name.last == "Vrieland", "setLast failed"

   assert name.lfmi == "VAJ", "lfmi failed"

   name.readName()
   name.print()

   print "All tests passed!\n"
end

testName

]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ruby[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ruby[00m$ ruby NameTester.rb 
John Paul Jones
Enter first name: 
Nathan
Enter middle name: 
Lue ke
Enter last name: 
Vrieland
Nathan Luke Vrieland
All tests passed!
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ruby[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ruby[00m$ exit

Script done on 2020-04-13 16:04:18-0400
