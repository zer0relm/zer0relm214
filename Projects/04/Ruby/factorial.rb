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
