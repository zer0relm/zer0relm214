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
