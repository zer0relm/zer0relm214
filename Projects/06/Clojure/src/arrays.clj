;;;; arrays.clj reads an array and the prints the array
;;;;
;;;; Input: size, # of numbers according to size
;;;; Precondition: size must be positive
;;;; Output: a filled array
;;;;
;;;; Completed by: AJ Vrieland (ajv234)
;;;; Date: 03/17/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns arrays)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; fillarray() takes an array of a given size and prompts the user to fill in
;;;             each index
;;; Receive: an array, size, and counter variable
;;; Precondition: size is > 0
;;; Return: the filled in array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn fillarray [array s i]
  (if (< i s)
    (do
      (printf "\nEnter number %.1f: " i) (flush)
      (let
        [tempvar (double (read))]
        (aset array i tempvar)
      )
      (recur array s (+ i 1))
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main makes and prints an array
;;; Input: size
;;; Output: the filled array of that size
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "\nEnter the size of the array: ") (flush)
  (let
    [ size (double (read)) ]
    (def myArray (make-array Double/TYPE size))
    (def counter 0.0)
    (fillarray myArray size counter)

    (println)
    (print (seq myArray))
    (println)
    (println)

  )


)
