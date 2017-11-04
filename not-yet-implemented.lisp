

;;==============================================================================
;; RESEARCH THIS:
;;https://linux.die.net/man/3/use_window
;; Coarse-granularity mutexes???
;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:917:28)
;;
(declaim (inline &use-window))
(defcfun ("use_window" &use-window) :INT
  ;; see: (/usr/include/ncurses.h:917:28)
  (arg1  (:pointer (:struct win))) ;;  #<POINTER #<typedef WINDOW>>
  (arg2  :POINTER) ;;  #<typedef NCURSES_WINDOW_CB>
  (arg3  (:pointer :VOID)) ;;  #<POINTER #<VBASE :void>>
)
(export '&use-window)



;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:916:28)
;;
(declaim (inline &use-screen))
(defcfun ("use_screen" &use-screen) :INT
  ;; see: (/usr/include/ncurses.h:916:28)
  (arg1  :pointer) ;;  #<POINTER #<typedef SCREEN>>
  (arg2  :POINTER) ;;  #<typedef NCURSES_SCREEN_CB>
  (arg3  (:pointer :VOID)) ;;  #<POINTER #<VBASE :void>>
)
(export '&use-screen)


;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:912:28)
;;
(declaim (inline &set-tabsize))
(defcfun ("set_tabsize" &set-tabsize) :INT
  ;; see: (/usr/include/ncurses.h:912:28)
  (arg1  :INT) ;;  #<VBASE :int>
)
(export '&set-tabsize)


;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:911:28)
;;
(declaim (inline &set-escdelay))
(defcfun ("set_escdelay" &set-escdelay) :INT
  ;; see: (/usr/include/ncurses.h:911:28)
  (arg1  :INT) ;;  #<VBASE :int>
)
(export '&set-escdelay)


;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:906:28)
;;
(declaim (inline &get-escdelay))
(defcfun ("get_escdelay" &get-escdelay) :INT
  ;; see: (/usr/include/ncurses.h:906:28)
)
(export '&get-escdelay)

