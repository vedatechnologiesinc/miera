;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; main.lisp --- main entry point

(uiop:define-package #:miera/src/main
  (:use #:cl)
  (:nicknames #:miera/main))

(in-package #:miera/src/main)

(defun main (argv)
  (declare (ignore argv))
  (success))
