;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; ext.lisp --- extras

(uiop:define-package #:miera/src/ext
  (:use #:cl
        #:inferior-shell
        #:cl-scripting
        #:cl-launch/dispatch
        #:marie)
  (:nicknames #:miera/ext))

(in-package #:miera/src/ext)

(def create-symlinks (src)
  (with* ((directory (or (uiop:getenv "DEST") "~/bin"))
          (destination (uiop:truenamize directory)))
      (uiop:with-current-directory (destination)
        (dolist (i (all-entry-names))
          (run `(ln -sf ,src ,i))))
    (success)))

(def help ()
  (format t "~a commands: ~{~a~^ ~}~%" (get-name) (all-entry-names)))

(register-commands :miera/src/ext)
