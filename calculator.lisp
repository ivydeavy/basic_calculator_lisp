;basic calcutor in lisp
(defun print-string(&rest args)
  (format t "~{~A~}" args))

(defvar *operator* nil)
(defvar *first-operand* nil)
(defvar *second-operand* nil)
(print "Welcome to the LISP Calculator!")
(print "Enter operator:")
(setq *operator* (read))
(print "Enter first operand:")
(setq *first-operand* (read))
(print "Enter second operand:")
(setq *second-operand* (read))

(case *operator*
  (+(print-string "The addition of " (write-to-string *first-operand*) " and " (write-to-string *second-operand*) " is " (write-to-string (+ *first-operand* *second-operand*))))
  (-(print-string "The subtraction of " (write-to-string *first-operand*) " and " (write-to-string *second-operand*) " is " (write-to-string (- *first-operand* *second-operand*))))
  (*(print-string "The multiplication of " (write-to-string *first-operand*) " and " (write-to-string *second-operand*) " is " (write-to-string (* *first-operand* *second-operand*))))
  (/(print-string "The division of " (write-to-string *first-operand*) " and " (write-to-string *second-operand*) " is " (write-to-string (/ *first-operand* *second-operand*))))
 )
