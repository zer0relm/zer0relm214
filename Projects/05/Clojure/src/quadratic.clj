

(ns quadratic)


(defn quadratic [A B C]
  (def args (- (Math/pow B 2) (* 4 (* A C))))
  (print args)
  (def r1 (/ (- B args) (* 2 A)))
  (def r2 (/ (+ B args) (* 2 A)))
  (vector r1 r2)
)

(defn -main []
  (print "Enter A, B, C: ") (flush)
  (let
    [Qa (double (read))
     Qb (double (read))
     Qc (double (read))]
     (println Qa)
     (quadratic Qa Qb Qc)
  )
)
