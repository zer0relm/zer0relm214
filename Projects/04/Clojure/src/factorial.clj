;;;; factorial.clj computes factorials
;;;;
;;;; Input: a number
;;;; Precondition: the number must be positive
;;;; Output: the factorial of the number
;;;;
;;;; Completed by: AJ Vrieland (ajv234)
;;;; Date: 03/01/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main computes the factorial with a given number
;;; Input: a number
;;; Output: the factorial of that number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (print "Enter Factorial: ") (flush)
  (let
    [ number (double (read)) ]
    (def answer 1)
    (loop [i 2]
      (when (<= i number)
        (def answer (* answer i))
        (recur (+ i 1))
      )
    )
    (println answer)
  )
)
