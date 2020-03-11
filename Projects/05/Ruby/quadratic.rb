


def quadratic(a, b, c)
  args = (b**2 - 4.0*a*c)
  if args <= 0
    return [0, 0]
  elsif a == 0
    return [0, 0]
  else
    return [(b-Math.sqrt(args)) / 2 * a, (b-Math.sqrt(args)) / 2 * a]
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
