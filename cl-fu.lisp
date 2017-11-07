(in-package #:cl-fu)
;;==============================================================================
;; (ql:quickload :cl-fu)(in-package :fu)
;; sbcl --eval "(ql:quickload '(:swank) :silent t)" --eval "(swank:create-server :port 4006 :dont-close t :style :fd-handler )"
#||
(loop for a from 0 to 255 by 8 do
	 (loop for aa from a to (+ a 8) do
	        	 (format t "~A: ~A ~A~&" aa (code-char aa) (char-name (code-char aa)))))
||#
(defun test ()
 
  (initscr)
  (printw "hello")
  (refresh)
  (getch)
  (endwin))

(defun t1 ()
  (initscr)
  (raw)
  (cbreak )
  (keypad *stdscr* 1)
  (noecho)
  ;;(&nodelay )
  (printw "Type any character and see it in bold\\n")
  (let ((ch (getch)))
    (print ch)
    (printw "You are-%d--" :int ch)
    (refresh)
    (getch)
    (endwin)
    ch)
)

(defun in ()
  (initscr)
  (raw)
  (cbreak )
  (keypad *stdscr* 1)
  (noecho)
  (refresh)
  )

(defun out ()
  (endwin)
  )

(defun t2 ()
  (printw "Fuck You, Sir!")
  (move 0 0)
  (refresh)
)

(in) (t2)


;;-------------
(defun make-newwin (h w y x)
  (let ((n (newwin h w y x)))))

;; in an active environment, run a terminal - that is, accept keyboard input and allow output.
(defun termstep (&optional (win *stdscr*))
  (let ((ch (wgetch win)))
    (format t "char is ~X~&" ch)
    ;; echo printable characters... TODO: keybindings
    
    (if (= ch #.(key "ESC"))
	nil
	(if (and (< ch 256)
		 (graphic-char-p (code-char ch)))
	    (progn
	      (waddch win ch)
	      (print (aref *keytable* ch))
	      (wrefresh win)
	      t)
	    t))))

(defun termloop (&optional (win *stdscr*))
  (loop
     while (termstep win)
      )
  ())
