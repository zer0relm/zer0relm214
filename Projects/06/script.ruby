Script started on 2020-03-18 14:30:54-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="188" LINES="27"]
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ruby[01;32m[zer0relm@AJ-Blade[01;37m Ruby[01;32m]$[00m cat arrays.rb 
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
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ruby[01;32m[zer0relm@AJ-Blade[01;37m Ruby[01;32m]$[00m ruby arrays.rb 
Enter Array Size: 7
Enter number 0: 1
Enter number 1: 2
Enter number 2: 3
Enter number 3: 4
Enter number 4: 5
Enter number 5: 6
Enter number 6: 7
[ 1.0 2.0 3.0 4.0 5.0 6.0 7.0 ]
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ruby[01;32m[zer0relm@AJ-Blade[01;37m Ruby[01;32m]$[00m exit

Script done on 2020-03-18 14:31:25-04:00 [COMMAND_EXIT_CODE="0"]
