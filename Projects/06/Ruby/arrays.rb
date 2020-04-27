# arrays.rb takes in and prints an array that the user gives
#
# Completed by: AJ Vrieland (ajv234)
# Date: 03/18/2020
############################################

##############################################################
# arrayfill() fills in the array with nubers given by the user
# Recieve: array, and size
# Return: filled out array
#############################################################

def arrayfill(array, s)
  i = 0;
  while (i < s)
    printf "Enter number %.0f: ", i
    tempVar = gets.to_f
    array[i] = tempVar
    i += 1
  end
  return array
end



def main
  print "Enter Array Size: ";
  arraySize = gets.to_i
  myArray = Array.new(arraySize)
  myArray = arrayfill(myArray, arraySize);
  print "[ "
  myArray.each do |num|
    print num
    print " "
  end
  print "]\n"
end
main
