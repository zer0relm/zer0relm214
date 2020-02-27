;;;; grade_book.clj calculates the letter grade from a numbered score
;;;;
;;;; Completed by: AJ Vrieland (ajv234)
;;;; Date: 02/24/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(ns grade_book)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; grade_book() returns the letter grade from a given numbered score
;;; Receive: grade, an integer
;;; Precondition: grade is an int between 1-100
;;; Return: the letter grade
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(defn driver [grade]
  (if (not= grade 0)
  (do
    (print "\nEnter your grade: ") (flush)
    (let
      [grade (Integer/parseInt (read-line))]  ; read an int from user
      (def score (quot grade 10))             ; integer division
      (println (gradeBook score))
      (recur grade)
    )
  )
  )
)

; I couldn't get a while loop to work in clojure
(defn -main []
  (def grade 1)
  (driver [grade])
)
