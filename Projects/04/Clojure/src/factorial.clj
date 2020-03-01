

(ns factorial)


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
