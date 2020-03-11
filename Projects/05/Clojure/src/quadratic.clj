;;;; quadtratic.clj computes the quadtratic formula
;;;;
;;;; Input: three numbers
;;;; Precondition: a > 0
;;;; Output: the roots of the quadratic equation
;;;;
;;;; Completed by: AJ Vrieland (ajv234)
;;;; Date: 03/11/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns quadratic)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; quadratic() computes the roots for a quadratic equation
;;; Receive: A, B, C numbers
;;; PRE: a > 0
;;; Return: a vector of the roots
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn quadratic [A B C]
  (def args (- (Math/pow B 2) (* 4 (* A C))))
  (def r1 (/ (- B args) (* 2 A)))
  (def r2 (/ (+ B args) (* 2 A)))
  (cond
    (< args 0) (vector 0 0)
    :else (vector r1 r2)
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main
;;; Input: A, B, C from a quadratic equation
;;; Output: the roots of the formula
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (print "Enter A, B, C: ") (flush)
  (let
    [Qa (double (read))
     Qb (double (read))
     Qc (double (read))
     roots (quadratic Qa Qb Qc)
     root1 (get roots 0)
     root2 (get roots 1)]
     (printf (str "Root 1: \"%s\"; Root 2: \"%s\"\n") root1 root2)
     (println)

  )
)
