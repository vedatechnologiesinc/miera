;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; miera.asd --- main asdf file

(defsystem :miera
    :name "miera"
    :description "A small collection of CLI programs"
    :version #.(uiop:read-file-form (make-pathname :directory '(:relative "src") :name "version" :type "lisp"))
    :author "VEDA Technologies, Inc. <hello@veda-tech.com>"
    :licence "BSD-2-Clause"
    :class :package-inferred-system
    :depends-on (#:cl-ppcre
                 #:local-time
                 #:ironclad
                 #:inferior-shell
                 #:marie
                 #:miera/src/common
                 #:miera/src/ext
                 #:miera/src/touchpad
                 #:miera/src/general
                 #:miera/src/webcam
                 #:miera/src/apps
                 #:miera/src/unix
                 #:miera/src/mksum
                 #:miera/src/touchring
                 #:miera/src/smallcaps
                 #:miera/src/main
                 #:miera/src/driver))
