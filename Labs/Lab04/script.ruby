Script started on 2020-02-27 19:32:28-0500
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Ruby[00m$ cat logTable.rb 
#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: AJ Vrieland (ajv234)
# Date: 02/27/2020
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value,
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
   start = gets.chomp.to_f
   print "Enter the stop value: "
   stop = gets.chomp.to_f
   print "Enter the increment value: "
   increment = gets.chomp.to_f

   while( start <= stop)
     printf "\nThe logarithm of %f is %f", start, Math.log10(start)
     start = start + increment
   end
end
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Ruby[00m$ ruby logTable.rb 
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: 0.5

The logarithm of 1.000000 is 0.000000
The logarithm of 1.500000 is 0.176091
The logarithm of 2.000000 is 0.301030
The logarithm of 2.500000 is 0.397940
The logarithm of 3.000000 is 0.477121
The logarithm of 3.500000 is 0.544068
The logarithm of 4.000000 is 0.602060
The logarithm of 4.500000 is 0.653213
The logarithm of 5.000000 is 0.698970
The logarithm of 5.500000 is 0.740363
The logarithm of 6.000000 is 0.778151
The logarithm of 6.500000 is 0.812913
The logarithm of 7.000000 is 0.845098
The logarithm of 7.500000 is 0.875061
The logarithm of 8.000000 is 0.903090
The logarithm of 8.500000 is 0.929419
The logarithm of 9.000000 is 0.954243
The logarithm of 9.500000 is 0.977724
The logarithm of 10.000000 is 1.000000]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Ruby[00m$ exit

Script done on 2020-02-27 19:32:54-0500
