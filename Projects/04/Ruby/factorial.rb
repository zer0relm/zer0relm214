




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
