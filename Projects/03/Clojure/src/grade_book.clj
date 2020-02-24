



(ns grade_book)

(defn gradeBook [grade]
  (cond
    (= grade 10) "A"
    (= grade 9) "A"
    (= grade 8) "B"
    )
)

(defn -main []
  (def grade 1)
  (while (not= grade 0)
    (do
      (print "\nEnter your Grade: ") (flush)
      (let
        [grade_str (read-line)]
        ;(set grade (Integer.grade_str))
        (set grade (read-string grade_str))
        (Integer. grade)
        (set grade (/ grade 10))
        (println (gradeBook grade))
      )
    )
  )

)
