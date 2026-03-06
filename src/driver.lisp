;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; driver.lisp --- symbol driver

(uiop:define-package :miera/src/driver
  (:nicknames :miera)
  (:use :uiop/common-lisp)
  (:use-reexport #:miera/src/common
                 #:miera/src/ext
                 #:miera/src/touchpad
                 #:miera/src/general
                 #:miera/src/apps
                 #:miera/src/unix
                 #:miera/src/mksum
                 #:miera/src/webcam
                 #:miera/src/touchring
                 #:miera/src/smallcaps
                 #:miera/src/main))

(provide "miera")
(provide "MIERA")
