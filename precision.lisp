(cl:in-package #:raw-bindings-newton)

;;----------------------------------------------------------------------
;; Precision

(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  ;; figure out if this library is single or double precision...
  (cl:when (cl:eq (cl:search "NEWTON_double_precision" (cffi:foreign-funcall "dGetConfiguration" :string))
                  :double)
    (cl:error "The raw-bindings-newton bindings currently only support the
single precision floating point version of the NEWTON library.

Sorry for the inconvenience")))
