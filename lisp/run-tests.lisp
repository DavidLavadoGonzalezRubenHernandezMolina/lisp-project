(load "lisp-unit.lisp")
(load "paquete-unificacion.lisp")
(load "atomo.lisp")
(load "es-variable.lisp")
(load "aparece-en.lisp")
(load "aplicar.lisp")
(load "componer.lisp")
(load "unificar.lisp")
(load "tests.lisp")

(handler-case
    (progn
      (lisp-unit:run-tests)
      (ext:exit 0))  ;; Si todo va bien, código de salida 0
  (error (c)
    (format t "Error detectado: ~A~%" c)
    (ext:exit 1)))  ;; Si hay errores, código de salida 1
