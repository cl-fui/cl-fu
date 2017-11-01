;;
;;
(asdf:defsystem #:cl-fu
  :description "NCURSES bindings"
  :author "StackSmith <fpgasm@apple2.x10.mx>"
  :license "BSD 3-clause license"
  :serial t
  :depends-on (:cffi)
  :components ((:file "package")
	       (:file "loadlib")
	       (:file "bindings")))

