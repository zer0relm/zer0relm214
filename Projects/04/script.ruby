Script started on 2020-03-01 12:21:45-0500
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ruby[00m$ cat factorial.rb 
# factorial.rb computes the factorial of a number
#
# Completed by: AJ Vrieland (ajv234)
# Date: 03/01/2020
#
# Input: Factorial number
# Precondition: the number must be positive
# Output: The factorial of that number


if __FILE__ == $0
  print "Enter factorial: "
  num = gets.chop.to_f
  answer = 1.0
  increment = 2.0

  while (increment <= num)
    answer *= increment
    increment += 1
  end

  print answer
  print "\n"

end
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ruby[00m$ ruby factorial.rb 
Enter factorial: 5
120.0
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ruby[00m$ ruby factorial.rb 
Enter factorial: 10
3628800.0
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ruby[00m$ ruby factorial.rb 
Enter factorial: 50
3.0414093201713376e+64
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ruby[00m$ exit

Script done on 2020-03-01 12:22:07-0500
