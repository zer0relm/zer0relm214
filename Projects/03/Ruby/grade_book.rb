# grade_book.rb turns a number score into letter grade
#
# Completed by: AJ Vrieland (ajv234)
# Date 02/24/2020
#############################################################

# Input: The number score
# Precondition: The score is  number between 1-100
# Output: The corresponding letter grade
def gradeBook(score)
  case score
  when 10
    return "A"
  when 9
    return "A"
  when 8
    return "B"
  when 7
    return "C"
  when 6
    return "D"
  else
    return "F"
  end
end



if __FILE__ == $0
    score = 1
    while( score != 0)
      print "Enter your score: "
      score = gets
      score = score.to_i
      grade = score/10
      puts gradeBook(grade)
    end
end
