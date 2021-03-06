;;;; nameTester.clj creates and tests a clojure Name type.
;;;;
;;;; Output: results of testing Name functions.
;;;;
;;;; Usage: clojure -m nameTester
;;;;
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: AJ Vrieland (ajv234)
;;;; Date: 04/08/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)   ; program name

;;; define a Clojure record named Name
;;; (which compiles to a Java class).
(defrecord Name [myFirst myMiddle myLast])

; Replace this line with the definition of record-type Name


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs a Name from three strings.
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: the Name (firstN middleN lastN).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of function make-Name
(defn make-Name [First Middle Last]
  (->Name First Middle Last)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with the definition of getFirst()
(defn getFirst [^Name theName]
  (:myFirst theName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name of a name object.
;;; Receive: aName, a Name.
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with the definition of getMiddle()
(defn getMiddle [^Name theName]
  (:myMiddle theName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name of a name object.
;;; Receive: aName, a Name.
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with the definition of getLast()
(defn getLast [^Name theName]
  (:myLast theName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in F-M-L order.
;;; Receive: aName, a Name.
;;; Return: firstName, middleName, lastName,
;;;           separated by spaces.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of toString()
(defn toString [^Name theName]
  (str (:myFirst theName) " " (:myMiddle theName) " " (:myLast theName))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName, a Name.
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of printName()
(defn printName [^Name theName]
  (print (toString theName))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst/Middle/Last() sets the corresponding name
;;; Receive: aName, a Name, and the new name
;;; Output: a new Name with the updated name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn setFirst [theName newFirst]
  (->Name newFirst (:myMiddle theName) (:myLast theName))
)
(defn setMiddle [theName newMiddle]
  (->Name (:myFirst theName) newMiddle (:myLast theName))
)
(defn setLast [theName newLast]
  (->Name (:myFirst theName) (:myMiddle theName) newLast)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() returns the initials in last - first - middle order
;;; Receive: aName, a Name
;;; Output: a string of initials
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn lfmi [^Name theName]
  (str (subs (:myLast theName) 0 1) (subs (:myFirst theName) 0 1) (subs (:myMiddle theName) 0 1))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName() lets user input the first middle and last name
;;; Output: a Name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn readName []
  (println "Enter Name: ")
  (let
    [
      first (read)
      middle (read)
      last (read)
    ]
    (->Name first middle last)
  )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver to test our Name functions.
;;; Output: the result of testing our Name functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                          ; 3 ways to construct an object:
      name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
      name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly
                                               ; -mapping field-names to values
      name3 (map->Name {:myLast "Jones" :myFirst "Jinx" :myMiddle "Joy"})

      name4 (setFirst name1 "Andrew")
      name5 (setMiddle name4 "James")
      name6 (setLast name5 "Vrieland")

      name7 (readName)
    ]
    ;; ----- SECTION 1 -----
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
    ;; ----- SECTION 2 -----
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;; ----- SECTION 3 -----
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)
    ;; ----- SECTION 4 -----
    (println)
    (print name6)(println)
    (assert (= (getFirst name4) "Andrew") "setFirst() failed")
    (assert (= (getMiddle name5) "James") "setMiddle() failed")
    (assert (= (getLast name6) "Vrieland") "setLast() failed")
    (printName name6) (println)

    (println (lfmi name1))
    (assert (= (lfmi name1) "JJP") "lfmi(1) failed")
    (assert (= (lfmi name6) "VAJ") "lfmi(2) failed")

    (printName name7)

    (println "\nAll tests passed!\n")
  )
)
