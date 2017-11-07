(in-package :cl-fu)

;; keytable maps ncurses key numbers to keysyms
;; use function (key "ESC") to get key number from keynamestring.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *keytable*
    (make-array  411  :initial-contents
		 '(;; 0
		   "^@" "^A" "^B" "^C" "^D" "^E" "^F" "^G" 
		   "^H" "^I" "^J" "^K" "^L" "^M" "^N" "^O"
		   "^P" "^Q" "^R" "^S" "^T" "^U" "^V" "^W" 
		   "^X" "^Y" "^Z" "ESC" "^\\" "^]" "^^" "^_"
		   " " "!" "\"" "#" "$" "%" "&" "'"
		   "(" ")" "*"  "+" "," "-" "." "/" 
		   "0" "1" "2" "3" "4" "5" "6" "7" 
		   "8" "9" ":" ";" "<" "=" ">" "?"
		   ;; 40
		   "@" "A" "B" "C" "D" "E" "F" "G" 
		   "H" "I" "J" "K" "L" "M" "N" "O" 
		   "P" "Q" "R" "S" "T" "U" "V" "W" 
		   "X" "Y" "Z" "[" "\\" "]" "^" "_"
		   "`" "a" "b" "c" "d" "e" "f" "g" 
		   "h" "i" "j" "k" "l" "m" "n" "o" 
		   "p" "q" "r" "s" "t" "u" "v" "w" 
		   "x" "y" "z" "{" "|" "}" "~" "^?"
		   ;; 80
		   "C80" "C81" "C82" "C83" "C84" "C85" "C86" "C87"
		   "C88" "C89" "C8A" "C8B" "C8C" "C8D" "C8E" "C8F"
		   "C80" "C81" "C82" "C83" "C84" "C85" "C86" "C87"
		   "C88" "C89" "C8A" "C8B" "C8C" "C8D" "C8E" "C8F"
		   "NOBRSPACE" "¡" "¢" "£" "¤" "¥" "¦" "§" 
		   "¨" "©" "ª" "«" "¬" "SOFT-HYPHEN" "®" "¯" 
		   "°" "±" "²" "³" "´" "µ" "¶" "·" 
		   "¸" "¹" "º" "»" "¼" "½" "¾" "¿"
		   ;; C0
		   "À" "Á" "Â" "Ã" "Ä" "Å" "Æ" "Ç" 
		   "È" "É" "Ê" "Ë" "Ì" "Í" "Î" "Ï" 
		   "Ð" "Ñ" "Ò" "Ó" "Ô" "Õ" "Ö" "×" 
		   "Ø" "Ù" "Ú" "Û" "Ü" "Ý" "Þ" "ß" 
		   "à" "á" "â" "ã" "ä" "å" "æ" "ç" 
		   "è" "é" "ê" "ë" "ì" "í" "î" "ï" 
		   "ð" "ñ" "ò" "ó" "ô" "õ" "ö" "÷" 
		   "ø" "ù" "ú" "û" "ü" "ý" "þ" "ÿ" 
		   ;; 100
		   "NONE" "BREAK" "DOWN" "UP" "LEFT" "RIGHT" "HOME" "BACKSPACE" 
		   "F0" "F1" "F2" "F3" "F4" "F5" "F6" "F7"
		   ;; 110
		   "F8" "F9" "F10" "F11" "F12" "F13" "F14" "F15"
		   "F16" "F17" "F18" "F19" "F20" "F21" "F22" "F23"
		   ;; 120
		   "F24" "F25" "F26" "F27" "F28" "F29" "F30" "F31"
		   "F32" "F33" "F34" "F35" "F36" "F37" "F38" "F39"
		   ;; 130
		   "F40" "F41" "F42" "F43" "F44" "F45" "F46" "F47"
		   "F48" "F49" "F50" "F51" "F52" "F53" "F54" "F55"
		   ;; 140
		   "F56" "F57" "F58" "F59" "F60" "F61" "F62" "F63"
		   "DL" "IL" "DC" "IC" "EIC" "CLEAR" "EOS" "EOL" 
		   ;; 150
		   "SF" "SRNPAGE" "PPAGE" "STAB" "CTAB" "CATAB" "ENTER" 
		   "SRESET" "RESET" "PRINT" "LL" "A1" "A3" "B2" "C1" 
		   ;; 160
		   "C3" "BTAB" "BEG" "CANCEL" "CLOSE" "COMMAND" "COPY" "CREATE"
		   "END" "EXIT" "FIND" "HELP" "MARK" "MESSAGE" "MOVE" "NEXT" 
		   ;; 170
		   "OPEN" "OPTIONS" "PREVIOUS" "REDO" "REFERENCE" "REFRESH" "REPLACE" "RESTART" 
		   "RESUME" "SAVE" "SBEG" "SCANCEL" "SCOMMAND" "SCOPY" "SCREATE" "SDC" 
		   ;; 180
		   "SDL" "SELECT" "SEND" "SEOL" "SEXIT" "SFIND" "SHELP" "SHOME" 
		   "SIC" "SLEFT" "SMESSAGE" "SMOVE" "SNEXT" "SOPTIONS" "SPREVIOUS" "SPRINT" 
		   ;; 190
		   "SREDO" "SREPLACE" "SRIGHT" "SRSUME" "SSAVE" "SSUSPEND" "SUNDO" "SUSPEND" 
		   "UNDO" "MOUSE" "RESIZE" "EVENT" 
		   )))
  (defparameter *keynames* (make-hash-table :test 'equal))
  ;; The first 256 keysyms have keynum as symbol-value. Rest have nil.
  (loop for keyname across *keytable* 
     for i from 0 do
       (setf (gethash keyname *keynames*) i))
  
  (export '(*keynames* *keytable*)))

;; Get a key number from key-name
(defun key (name)
  (or
   (gethash name *keynames*)
   (error "Key '~A' is not valid" name)))
(export 'key)

(defun parse (keystr)
  (mapcar #'key (split-seq keystr)))
(export 'parse)
;;
(defun split-seq (seq &key (separators " ") (test #'char=) (default-value '("")))
  "split a sequence into sub sequences given the list of seperators."
  (labels ((sep (char) (cl:find char separators :test test)))
    (or (loop for i = (position-if (complement #'sep) seq)
	   then (position-if (complement #'sep) seq :start j)
	   as j = (position-if #'sep seq :start (or i 0))
	   while i
	   collect (subseq seq i j)
	   while j)
	default-value)))



(defun intern-key (keymap key &optional val)
   (or (assoc key (cdr keymap));; find, or create an empty acons.
      (cadr (rplacd keymap (acons key val (cdr keymap))))))

;; Recursively bind a keyseq (a list of numbers!) to a value in keymap.
(defun bind1 (keyseq keymap value)
   (when keyseq
    (bind1 (cdr keyseq)    ;;last time around cdr keyseq is 0
	  (intern-key keymap (car keyseq) ;; and we can bind
		      (unless (cdr keyseq) ;;value !
			value))
	  value)));;I know, weird...

;; bind a keystring with one or more keys to a value in keymap.
(defun bind (keystr keymap value)
  (bind1 (parse keystr) keymap value))
(export 'bind)
;;==============================================================================
;;
;; LOOKUP
;;
;; To interact with a keymap, call lookup with a key and keymap.  It returns
;; a binding and a 'map' flag (when T, binding is a map, F = final result).
;; When T, continue lookup for next key.
(defun lookup (keymap key)
  (labels ((terminal-p (val)
	   (values val (consp (cdr val)))))
    (terminal-p (assoc key (cdr keymap)))))
(export 'lookup)
