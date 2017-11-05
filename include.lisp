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
(xdefconst A-ITALIC     #x80000000)

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

(xdefconst BUTTON1-RELEASED            #x1)
(xdefconst BUTTON1-PRESSED             #x2)
(xdefconst BUTTON1-CLICKED             #x4)
(xdefconst BUTTON1-DOUBLE-CLICKED      #x8)
(xdefconst BUTTON1-TRIPLE-CLICKED     #x10)

(xdefconst BUTTON2-RELEASED           #x40)
(xdefconst BUTTON2-PRESSED            #x80)
(xdefconst BUTTON2-CLICKED           #x100)
(xdefconst BUTTON2-DOUBLE-CLICKED    #x200)
(xdefconst BUTTON2-TRIPLE-CLICKED    #x400)

(xdefconst BUTTON3-RELEASED         #x1000)
(xdefconst BUTTON3-PRESSED          #x2000)
(xdefconst BUTTON3-CLICKED          #x4000)
(xdefconst BUTTON3-DOUBLE-CLICKED   #x8000)
(xdefconst BUTTON3-TRIPLE-CLICKED  #x10000)

(xdefconst BUTTON-CTRL           #x1000000)
(xdefconst BUTTON-SHIFT          #x2000000)
(xdefconst BUTTON-ALT            #x4000000)
(xdefconst REPORT-MOUSE-POSITION #x8000000)



(xdefconst KEY-BREAK       #o401)
(xdefconst KEY-DOWN        #o402)
(xdefconst KEY-UP          #o403)
(xdefconst KEY-LEFT        #o404)
(xdefconst KEY-RIGHT       #o405)
(xdefconst KEY-HOME        #o406)
(xdefconst KEY-BACKSPACE   #o407)
(xdefconst KEY-F0          #o410)


(xdefconst KEY-DL          #o510)
(xdefconst KEY-IL          #o511)
(xdefconst KEY-DC          #o512)
(xdefconst KEY-IC          #o513)
(xdefconst KEY-EIC         #o514)
(xdefconst KEY-CLEAR       #o515)
(xdefconst KEY-EOS         #o516)
(xdefconst KEY-EOL         #o517)
(xdefconst KEY-SF          #o520)
(xdefconst KEY-SR          #o521)
(xdefconst KEY-NPAGE       #o522)
(xdefconst KEY-PPAGE       #o523)
(xdefconst KEY-STAB        #o524)
(xdefconst KEY-CTAB        #o525)
(xdefconst KEY-CATAB       #o526)
(xdefconst KEY-ENTER       #o527)
(xdefconst KEY-SRESET      #o530)
(xdefconst KEY-RESET       #o531)
(xdefconst KEY-PRINT       #o532)
(xdefconst KEY-LL          #o533)
(xdefconst KEY-A1          #o534)
(xdefconst KEY-A3          #o535)
(xdefconst KEY-B2          #o536)
(xdefconst KEY-C1          #o537)
(xdefconst KEY-C3          #o540)
(xdefconst KEY-BTAB        #o541)
(xdefconst KEY-BEG         #o542)
(xdefconst KEY-CANCEL      #o543)
(xdefconst KEY-CLOSE       #o544)
(xdefconst KEY-COMMAND     #o545)
(xdefconst KEY-COPY        #o546)
(xdefconst KEY-CREATE      #o547)
(xdefconst KEY-END         #o550)
(xdefconst KEY-EXIT        #o551)
(xdefconst KEY-FIND        #o552)
(xdefconst KEY-HELP        #o553)
(xdefconst KEY-MARK        #o554)
(xdefconst KEY-MESSAGE     #o555)
(xdefconst KEY-MOVE        #o556)
(xdefconst KEY-NEXT        #o557)
(xdefconst KEY-OPEN        #o560)
(xdefconst KEY-OPTIONS     #o561)
(xdefconst KEY-PREVIOUS    #o562)
(xdefconst KEY-REDO        #o563)
(xdefconst KEY-REFERENCE   #o564)
(xdefconst KEY-REFRESH     #o565)
(xdefconst KEY-REPLACE     #o566)
(xdefconst KEY-RESTART     #o567)
(xdefconst KEY-RESUME      #o570)
(xdefconst KEY-SAVE        #o571)
(xdefconst KEY-SBEG        #o572)
(xdefconst KEY-SCANCEL     #o573)
(xdefconst KEY-SCOMMAND    #o574)
(xdefconst KEY-SCOPY       #o575)
(xdefconst KEY-SCREATE     #o576)
(xdefconst KEY-SDC         #o577)
(xdefconst KEY-SDL         #o600)
(xdefconst KEY-SELECT      #o601)
(xdefconst KEY-SEND        #o602)
(xdefconst KEY-SEOL        #o603)
(xdefconst KEY-SEXIT       #o604)
(xdefconst KEY-SFIND       #o605)
(xdefconst KEY-SHELP       #o606)
(xdefconst KEY-SHOME       #o607)
(xdefconst KEY-SIC         #o610)
(xdefconst KEY-SLEFT       #o611)
(xdefconst KEY-SMESSAGE    #o612)
(xdefconst KEY-SMOVE       #o613)
(xdefconst KEY-SNEXT       #o614)
(xdefconst KEY-SOPTIONS    #o615)
(xdefconst KEY-SPREVIOUS   #o616)
(xdefconst KEY-SPRINT      #o617)
(xdefconst KEY-SREDO       #o620)
(xdefconst KEY-SREPLACE    #o621)
(xdefconst KEY-SRIGHT      #o622)
(xdefconst KEY-SRSUME      #o623)
(xdefconst KEY-SSAVE       #o624)
(xdefconst KEY-SSUSPEND    #o625)
(xdefconst KEY-SUNDO       #o626)
(xdefconst KEY-SUSPEND     #o627)
(xdefconst KEY-UNDO        #o630)
(xdefconst KEY-MOUSE       #o631)
(xdefconst KEY-RESIZE      #o632)
(xdefconst KEY-EVENT       #o633)

;; Predefined colors
(xdefconst COLOR-BLACK   0)
(xdefconst COLOR-RED     1)
(xdefconst COLOR-GREEN   2)
(xdefconst COLOR-YELLOW  3)
(xdefconst COLOR-BLUE    4)
(xdefconst COLOR-MAGENTA 5)
(xdefconst COLOR-CYAN    6)
(xdefconst COLOR-WHITE   7)


(xdefconst ACS-ULCORNER #x6C) ; upper left corner
(xdefconst ACS-LLCORNER #x6D) ; lower left corner
(xdefconst ACS-URCORNER #x6B) ; upper right corner
(xdefconst ACS-LRCORNER #x6A) ; lower right corner
(xdefconst ACS-LTEE     #x74) ; tee pointing right
(xdefconst ACS-RTEE     #x75) ; tee pointing left
(xdefconst ACS-BTEE     #x76) ; tee pointing up
(xdefconst ACS-TTEE     #x77) ; tee pointing down
(xdefconst ACS-HLINE    #x71) ; horizontal line
(xdefconst ACS-VLINE    #x78) ; vertical line
(xdefconst ACS-PLUS     #x6E) ; large plus or crossover
(xdefconst ACS-S1       #x6F) ; scan line 1
(xdefconst ACS-S9       #x73) ; scan line 9
(xdefconst ACS-DIAMOND  #x60) ; diamond
(xdefconst ACS-CKBOARD  #x61) ; checker board (stipple)
(xdefconst ACS-DEGREE   #x66) ; degree symbol
(xdefconst ACS-PLMINUS  #x67) ; plus/minus
(xdefconst ACS-BULLET   #x7E) ; bullet

(xdefconst ACS-LARROW   #x2C)
(xdefconst ACS-RARROW   #x2B)
(xdefconst ACS-DARROW   #x2E)
(xdefconst ACS-UARROW   #x2D)
(xdefconst ACS-BOARD    #x68)
(xdefconst ACS-LANTERN  #x69)
(xdefconst ACS-BLOCK    #x30)
;; may work...
(xdefconst ACS-S3       #x70)
(xdefconst ACS-S7       #x72)
(xdefconst ACS-LEQUAL   #x79)
(xdefconst ACS-GEQUAL   #x7A)
(xdefconst ACS-PI       #x7B)
(xdefconst ACS-NEQUAL   #x7C)
(xdefconst ACS-STERLING #x7D)
;;(xdefconst ACS- )





