Script started on 2020-03-11 15:16:30-0400
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ruby[00m$ cat quadratic.rb 
# quadratic.rb computes the quadratic roots of three numbers
#
# Completed by: AJ Vrieland (ajv234)
# Date: 03/11/2020
#
# Input: Three numbers, a, b, c
# Precondition: a must be positive
# Output: two quadratic roots of those numbers
#############################################################

# quadratic() takes in three numbers and returns the quadratic roots
# Receive: a, b, c
# PRE: a > 0
# Return: a vector of the quadratic roots
################################################################

def quadratic(a, b, c)
  args = (b**2 - 4.0*a*c)
  if args <= 0
    return [0, 0]
  elsif a == 0
    return [0, 0]
  else
    return [(b-Math.sqrt(args)) / 2 * a, (b+Math.sqrt(args)) / 2 * a]
  end
end

if __FILE__ == $0
  print "Enter A B C: ";
  qa = gets.to_i
  qb = gets.to_i
  qc = gets.to_i
  roots = quadratic(qa, qb, qc)

  if roots[0] == 0 && roots[1] == 0
    puts "Not Valid"
  else
    printf "\n The first root is: %f. The second root is: %f. \n", roots[0], roots[1]
  end
end
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ruby[00m$ ruby quadratic.rb 
Enter A B C: 1
5
2

 The first root is: 0.438447. The second root is: 4.561553. 
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ruby[00m$ ruby quadratic.rb 
Enter A B C: 6
5
4
Not Valid
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ruby[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ruby[00m$ exit

Script done on 2020-03-11 15:16:52-0400
