# cl-fu

CL-FU is a Common Lisp CFFI library for NCURSES.

Package :fu exports ncurses bindings with the usual C-to-Lisp mapping (underscores turn to dashes, etc).

The goal of the project is to provide a reasonably complete interface to NCURSES.

## Status

06-Nov-2017 - Implementation complete - testing.

## Notes

- printw functions use a c-style format string, but require cffi types for parameters.
```(printf "Hello number %d" :int 3)```
- \n and other escapes do not seem to work (priority med)

## Not Implemented 

While the goal is a reasonably complete implementation, a decision was made to not bother with:

- Input functions without a count - such as getstr.  Use getnstr, etc.
- Scan functions - not particularly useful...(priority low)
- va_list versions of functions (priority low)

## Quick start

NCURSES is a console library and requires a real terminal.  If you develop with Slime, start a separate Swank session in a terminal, from the command line, with something like:
SBCL:`sbcl --eval "(ql:quickload '(:swank) :silent t)" --eval "(swank:create-server :port 4006 :dont-close t :style :fd-handler)"`
Roswell: `ros run -e "(ql:quickload '(:swank) :silent t)" -e "(swank:create-server :port 4006 :dont-close t)"`
Connect to it from emacs with `slime-connect`, entering the same port (4006 in this case).

Test with something like:
```
(initscr)
(printw "hello")
(refresh)
(getch)
(endwin)
```


## Project goals:
- access to entire library
- clean low level

## Related projects:
- cl-ncurses  (old, no cffi)
- cl-charms   (incomplete, unhappy with some choices made)


