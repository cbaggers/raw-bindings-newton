;;;; raw-bindings-newton.asd

(asdf:defsystem #:raw-bindings-newton
  :description "Absolute minimal bindings of NEWTON"
  :author "Chris Bagley (Baggers) <techsnuffle@gmail.com>"
  :license "BSD 2 Clause"
  :defsystem-depends-on (:cffi/c2ffi)
  :depends-on (#:cffi #:cffi/c2ffi #:cffi-libffi)
  :serial t
  :components
  ((:file "package")
   (:file "c2ffi-transforms")
   (:module "spec"
            :components
            ((:cffi/c2ffi-file
              "Newton.h"
              :package #:raw-bindings-newton
              :foreign-library-name "raw-bindings-newton::libnewton"
              :include-sources ("Newton.h")
              :exclude-sources :all
              :ffi-name-transformer "raw-bindings-newton.ffi::ffi-name-transformer"
              :ffi-export-predicate "raw-bindings-newton.ffi::ffi-export-predicate"
              :foreign-library-spec ((:unix ;;(:or "libnewton.so" "libnewton.so.1" "libnewton.dylib")
                                      "/home/baggers/Code/c/newton-dynamics/lib/libNewton.so")
                                     (:windows "libNewton.dll")
                                     (t (:default "libNewton.so"))))))))
