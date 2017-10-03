;;;; raw-bindings-newton.asd

(asdf:defsystem #:raw-bindings-newton
  :description "Absolute minimal bindings of NEWTON"
  :author "Chris Bagley (Baggers) <techsnuffle@gmail.com>"
  :license "BSD 2 Clause"
  :depends-on (#:cffi #:cffi-libffi)
  :serial t
  :components
  ((:file "package")
   (:file "c2ffi-transforms")
   (:file "spec/Newton.x86_64-pc-linux-gnu")))
