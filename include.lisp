(in-package :cl-fu)

;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:459:9 /usr/include/ncurses.h:459:9)
(defcstruct pdat ;; pdat
  (_pad_y  :SHORT) ;; _pad_y #<VBASE :short>
  (_pad_x  :SHORT) ;; _pad_x #<VBASE :short>
  (_pad_top  :SHORT) ;; _pad_top #<VBASE :short>
  (_pad_left  :SHORT) ;; _pad_left #<VBASE :short>
  (_pad_bottom  :SHORT) ;; _pad_bottom #<VBASE :short>
  (_pad_right  :SHORT) ;; _pad_right #<VBASE :short>
)
(export 'pdat)
;;------------------------------------------------------------------------------
;; (/usr/include/ncurses.h:421:8 /usr/include/ncurses.h:372:16
;;    /usr/include/ncurses.h:372:16
(defcstruct win ;; win_st
  (_cury  :SHORT) ;; _cury #<VBASE :short>
  (_curx  :SHORT) ;; _curx #<VBASE :short>
  (_maxy  :SHORT) ;; _maxy #<VBASE :short>
  (_maxx  :SHORT) ;; _maxx #<VBASE :short>
  (_begy  :SHORT) ;; _begy #<VBASE :short>
  (_begx  :SHORT) ;; _begx #<VBASE :short>
  (_flags  :SHORT) ;; _flags #<VBASE :short>
  (_attrs  :ULONG) ;; _attrs #<typedef attr_t>
  (_bkgd  :ULONG) ;; _bkgd #<typedef chtype>
  (_notimeout  (:BOOL)) ;; _notimeout #<VBASE :_Bool>
  (_clear  (:BOOL)) ;; _clear #<VBASE :_Bool>
  (_leaveok  (:BOOL)) ;; _leaveok #<VBASE :_Bool>
  (_scroll  (:BOOL)) ;; _scroll #<VBASE :_Bool>
  (_idlok  (:BOOL)) ;; _idlok #<VBASE :_Bool>
  (_idcok  (:BOOL)) ;; _idcok #<VBASE :_Bool>
  (_immed  (:BOOL)) ;; _immed #<VBASE :_Bool>
  (_sync  (:BOOL)) ;; _sync #<VBASE :_Bool>
  (_use_keypad  (:BOOL)) ;; _use_keypad #<VBASE :_Bool>
  (_delay  :INT) ;; _delay #<VBASE :int>
  (_line  :pointer ) ;; _line #<POINTER #<struct ldat>>
  (_regtop  :SHORT) ;; _regtop #<VBASE :short>
  (_regbottom  :SHORT) ;; _regbottom #<VBASE :short>
  (_parx  :INT) ;; _parx #<VBASE :int>
  (_pary  :INT) ;; _pary #<VBASE :int>
  (_parent  (:pointer (:struct win))) ;; _parent #<POINTER #<typedef WINDOW>>
  (_pad  (:struct pdat)) ;; _pad #<struct pdat>
  (_yoffset  :SHORT) ;; _yoffset #<VBASE :short>
)
(export 'win)

;; an exported constant.
(defmacro xdefconst (name value)
  `(progn
     (defparameter ,name ,value)
     (export ',name)))


;;==============================================================================
;;http://invisible-island.net/ncurses/man/curs_attr.3x.html
(xdefconst A-NORMAL     #x00000000)
(xdefconst A-STANDOUT   #x00010000)
(xdefconst A-UNDERLINE  #x00020000)
(xdefconst A-REVERSE    #x00040000)
(xdefconst A-BLINK      #x00080000)
(xdefconst A-DIM        #x00100000)
(xdefconst A-BOLD       #x00200000)
(xdefconst A-ALTCHARSET #x00400000)
(xdefconst A-INVIS      #x00800000)
(xdefconst A-PROTECT    #x01000000)
(xdefconst A-HORIZONTAL #x02000000)
(xdefconst A-LEFT       #x04000000)
(xdefconst A-LOW        #x08000000)
(xdefconst A-RIGHT      #x10000000)
(xdefconst A-TOP        #x20000000)
(xdefconst A-VERTICAL   #x40000000)

;;==============================================================================
;;http://invisible-island.net/ncurses/man/curs_mouse.3x.html
(defcstruct mevent ;; _MEVENT
  (id  :SHORT) ;; id #<VBASE :short>
  (x  :INT) ;; x #<VBASE :int>
  (y  :INT) ;; y #<VBASE :int>
  (z  :INT) ;; z #<VBASE :int>
  (bstate  :ULONG) ;; bstate #<typedef mmask_t>
)
(export 'mevent)

(xdefconst BUTTON1_RELEASED            #x1)
(xdefconst BUTTON1_PRESSED             #x2)
(xdefconst BUTTON1_CLICKED             #x4)
(xdefconst BUTTON1_DOUBLE_CLICKED      #x8)
(xdefconst BUTTON1_TRIPLE_CLICKED     #x10)

(xdefconst BUTTON2_RELEASED           #x40)
(xdefconst BUTTON2_PRESSED            #x80)
(xdefconst BUTTON2_CLICKED           #x100)
(xdefconst BUTTON2_DOUBLE_CLICKED    #x200)
(xdefconst BUTTON2_TRIPLE_CLICKED    #x400)

(xdefconst BUTTON3_RELEASED         #x1000)
(xdefconst BUTTON3_PRESSED          #x2000)
(xdefconst BUTTON3_CLICKED          #x4000)
(xdefconst BUTTON3_DOUBLE_CLICKED   #x8000)
(xdefconst BUTTON3_TRIPLE_CLICKED  #x10000)

(xdefconst BUTTON_CTRL           #x1000000)
(xdefconst BUTTON_SHIFT          #x2000000)
(xdefconst BUTTON_ALT            #x4000000)
(xdefconst REPORT_MOUSE_POSITION #x8000000)

(xdefconst KEY_BREAK       #o401)
(xdefconst KEY_SRESET      #o530)
(xdefconst KEY_RESET       #o531)
(xdefconst KEY_DOWN        #o402)
(xdefconst KEY_UP          #o403)
(xdefconst KEY_LEFT        #o404)
(xdefconst KEY_RIGHT       #o405)
(xdefconst KEY_HOME        #o406)
(xdefconst KEY_BACKSPACE   #o407)
(xdefconst KEY_F0          #o410)

(xdefconst KEY_DL          #o510)
(xdefconst KEY_IL          #o511)
(xdefconst KEY_DC          #o512)
(xdefconst KEY_IC          #o513)
(xdefconst KEY_EIC         #o514)
(xdefconst KEY_CLEAR       #o515)
(xdefconst KEY_EOS         #o516)
(xdefconst KEY_EOL         #o517)
(xdefconst KEY_SF          #o520)
(xdefconst KEY_SR          #o521)
(xdefconst KEY_NPAGE       #o522)
(xdefconst KEY_PPAGE       #o523)
(xdefconst KEY_STAB        #o524)
(xdefconst KEY_CTAB        #o525)
(xdefconst KEY_CATAB       #o526)
(xdefconst KEY_ENTER       #o527)
(xdefconst KEY_PRINT       #o532)
(xdefconst KEY_LL          #o533)
(xdefconst KEY_A1          #o534)
(xdefconst KEY_A3          #o535)
(xdefconst KEY_B2          #o536)
(xdefconst KEY_C1          #o537)
(xdefconst KEY_C3          #o540)
(xdefconst KEY_BTAB        #o541)
(xdefconst KEY_BEG         #o542)
(xdefconst KEY_CANCEL      #o543)
(xdefconst KEY_CLOSE       #o544)
(xdefconst KEY_COMMAND     #o545)
(xdefconst KEY_COPY        #o546)
(xdefconst KEY_CREATE      #o547)
(xdefconst KEY_END         #o550)
(xdefconst KEY_EXIT        #o551)
(xdefconst KEY_FIND        #o552)
(xdefconst KEY_HELP        #o553)
(xdefconst KEY_MARK        #o554)
(xdefconst KEY_MESSAGE     #o555)
(xdefconst KEY_MOVE        #o556)
(xdefconst KEY_NEXT        #o557)
(xdefconst KEY_OPEN        #o560)
(xdefconst KEY_OPTIONS     #o561)
(xdefconst KEY_PREVIOUS    #o562)
(xdefconst KEY_REDO        #o563)
(xdefconst KEY_REFERENCE   #o564)
(xdefconst KEY_REFRESH     #o565)
(xdefconst KEY_REPLACE     #o566)
(xdefconst KEY_RESTART     #o567)
(xdefconst KEY_RESUME      #o570)
(xdefconst KEY_SAVE        #o571)
(xdefconst KEY_SBEG        #o572)
(xdefconst KEY_SCANCEL     #o573)
(xdefconst KEY_SCOMMAND    #o574)
(xdefconst KEY_SCOPY       #o575)
(xdefconst KEY_SCREATE     #o576)
(xdefconst KEY_SDC         #o577)
(xdefconst KEY_SDL         #o600)
(xdefconst KEY_SELECT      #o601)
(xdefconst KEY_SEND        #o602)
(xdefconst KEY_SEOL        #o603)
(xdefconst KEY_SEXIT       #o604)
(xdefconst KEY_SFIND       #o605)
(xdefconst KEY_SHELP       #o606)
(xdefconst KEY_SHOME       #o607)
(xdefconst KEY_SIC         #o610)
(xdefconst KEY_SLEFT       #o611)
(xdefconst KEY_SMESSAGE    #o612)
(xdefconst KEY_SMOVE       #o613)
(xdefconst KEY_SNEXT       #o614)
(xdefconst KEY_SOPTIONS    #o615)
(xdefconst KEY_SPREVIOUS   #o616)
(xdefconst KEY_SPRINT      #o617)
(xdefconst KEY_SREDO       #o620)
(xdefconst KEY_SREPLACE    #o621)
(xdefconst KEY_SRIGHT      #o622)
(xdefconst KEY_SRSUME      #o623)
(xdefconst KEY_SSAVE       #o624)
(xdefconst KEY_SSUSPEND    #o625)
(xdefconst KEY_SUNDO       #o626)
(xdefconst KEY_SUSPEND     #o627)
(xdefconst KEY_UNDO        #o630)
(xdefconst KEY_MOUSE       #o631)
(xdefconst KEY_RESIZE      #o632)
(xdefconst KEY_EVENT       #o633)
