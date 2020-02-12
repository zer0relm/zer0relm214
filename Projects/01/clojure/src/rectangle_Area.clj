;;;; calculates the area of a rectangle
;;;;
;;;; Input: lenght and width
;;;; Output: the area of the rectangle
;;;;
;;;; Usage: clojure -m rectangle_Area
;;;;
;;;; By: AJ Vrieland
;;;; Date: 02/10/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_Area)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function computes the area of a rectangle.
;;; Receive: itsLength and itsWidth, numbers
;;; Precondition: itsLength and itsWidth >= 0.0
;;; Return: the area of the given rectangle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn rectangleArea [itsLength itsWidth]
  (* itsLength itsWidth)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main
;;; Input: the length and width of a rectangle
;;; Output: the area of the given rectangle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "To compute the area of a rectangle,")
  (print "enter its Length and Width: ") (flush)
  (let 
    [length (read) width (read)]
    (print "\nThe area of the rectangle is ")
    (print (rectangleArea length width))
    (print "\n\n")
    )
  
)

