

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


;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:844:28)
;;
(declaim (inline &wscanw))
(defcfun ("wscanw" &wscanw) :INT
  ;; see: (/usr/include/ncurses.h:844:28)
  (arg1  (:pointer (:struct win))) ;;  #<POINTER #<typedef WINDOW>>
  (arg2  (:pointer :CHAR)) ;;  #<POINTER #<VBASE :char>>
)
(export '&wscanw)

;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:798:28)
;;
(declaim (inline &vw-scanw))
(defcfun ("vw_scanw" &vw-scanw) :INT
  ;; see: (/usr/include/ncurses.h:798:28)
  (arg1  (:pointer (:struct win))) ;;  #<POINTER #<typedef WINDOW>>
  (arg2  (:pointer :CHAR)) ;;  #<POINTER #<VBASE :char>>
  (arg3  :POINTER) ;;  #<typedef va_list>
)
(export '&vw-scanw)

;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:797:28)
;;
(declaim (inline &vwscanw))
(defcfun ("vwscanw" &vwscanw) :INT
  ;; see: (/usr/include/ncurses.h:797:28)
  (arg1  (:pointer (:struct win))) ;;  #<POINTER #<typedef WINDOW>>
  (arg2  (:pointer :CHAR)) ;;  #<POINTER #<VBASE :char>>
  (arg3  :POINTER) ;;  #<typedef va_list>
)
(export '&vwscanw)
;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:690:28)
;;
(declaim (inline &mvscanw))
(defcfun ("mvscanw" &mvscanw) :INT
  ;; see: (/usr/include/ncurses.h:690:28)
  (arg1  :INT) ;;  #<VBASE :int>
  (arg2  :INT) ;;  #<VBASE :int>
  (arg3  (:pointer :CHAR)) ;;  #<POINTER #<VBASE :char>>
)
(export '&mvscanw)




;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:749:28)
;;
(declaim (inline &scanw))
(defcfun ("scanw" &scanw) :INT
  ;; see: (/usr/include/ncurses.h:749:28)
  (arg1  (:pointer :CHAR)) ;;  #<POINTER #<VBASE :char>>
)
(export '&scanw)

;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:715:28)
;;
(declaim (inline &mvwscanw))
(defcfun ("mvwscanw" &mvwscanw) :INT
  ;; see: (/usr/include/ncurses.h:715:28)
  (arg1  (:pointer (:struct win))) ;;  #<POINTER #<typedef WINDOW>>
  (arg2  :INT) ;;  #<VBASE :int>
  (arg3  :INT) ;;  #<VBASE :int>
  (arg4  (:pointer :CHAR)) ;;  #<POINTER #<VBASE :char>>
)
(export '&mvwscanw)


(xdefcfun ("ripoffline" ripoffline) :INT (line  :INT)
	  (init  :POINTER) ;;  #<VBASE :function-pointer>;; TODO: fix callback
  )


