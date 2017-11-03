# cl-fu

CL-FU is a Common Lisp CFFI library for NCURSES.

It provides low-level bindings (function names prefixed with &) as well as a lispier interface.

## Status

Not ready for prime time!  Although not too bad.

Generated bindings, using sbcl "hello world" works

Manually fixed bindings - mouse and input need to be implemented.

## Quick start

NCURSES is a console library and requires a real terminal.  If you develop with Slime, start a separate Swank session in a terminal, from the command line, with something like:
`sbcl --eval "(ql:quickload '(:swank) :silent t)" --eval "(swank:create-server :port 4006 :dont-close t :style :fd-handler)"`

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


