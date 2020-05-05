;;;; Owl.clj provides an Owl "class".
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Aj Vrieland (ajv234)
;;;; Date: 05/05/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "Bird")


(defrecord Owl [^Bird name])

;;; Owl constructors
;;; - default: no args
;;;   Postcondition: name == a default value.
;;; - explicit1:
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Owl
  ([]                (->Owl "Ann Onymous"))
  ([^String itsName] (->Owl itsName))
)

;;; method to retrieve a Owl's class
;;; Receive: this, a Owl object.
;;; Return: "Owl".
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod getClass Owl [ _ ]
  "Owl"
)
;;; method to retrieve a Owl's call
;;; Receive: this, a Owl object.
;;; Return: "Hoot!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defmethod getCall Owl [ _ ]
  "Hoot!"
)
