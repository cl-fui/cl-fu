(in-package #:cl-fu)
;;==============================================================================
;;
(defun test ()
  (&initscr)
  (&printw "hello")
  (&refresh)
  (&endwin))
