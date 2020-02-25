Script started on 2020-02-24 19:25:21-0500
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ruby[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ruby[00m$ cat grade_book.rb 
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
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ruby[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ruby[00m$ git [K[K[K[Kruby grade_book.rb 
Enter your score: 100
A
Enter your score: 95
A
Enter your score: 82
B
Enter your score: 76
C
Enter your score: 66
D
Enter your score: 54
F
Enter your score: 21
F
Enter your score: 1
F
Enter your score: 0
F
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ruby[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ruby[00m$ exit

Script done on 2020-02-24 19:26:01-0500
