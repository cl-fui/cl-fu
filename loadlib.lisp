(in-package :cl-fu)

#+sb-unicode
(cffi:define-foreign-library libcurses
  (:darwin (:or "libncurses.dylib" "libcurses.dylib"))
  (:unix (:or "libncursesw.so.6"
              "libncursesw.so.5"))
  (:windows (:or "pdcurses" "libcurses"))
  (t (:default "libcurses")))

#-sb-unicode
(cffi:define-foreign-library libcurses
  (:darwin (:or "libncurses.dylib"
                "libcurses.dylib"))
  (:unix (:or "libncursesw.so.6"
              "libncurses.so.6"
              "libncurses.so.5"
              "libcurses"))
  (:windows (:or "pdcurses"
                 "libcurses"))
  (t (:default "libcurses")))

(cffi:use-foreign-library libcurses)


