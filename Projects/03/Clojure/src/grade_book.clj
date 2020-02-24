



(ns grade_book)

(defn gradeBook [grade]
  (cond
    (= grade 10) "A"
    (= grade 9) "A"
    (= grade 8) "B"
    (= grade 7) "C"
    (= grade 6) "D"
    :else "F"
    )
)


(defn -main []
  (def grade 1)
      (print "\nEnter your grade: ") (flush)
      (let
        [grade (Integer/parseInt (read-line))]
        (def score (quot grade 10))
        (println (gradeBook score))
      )
)
