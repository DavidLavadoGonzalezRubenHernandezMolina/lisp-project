(in-package :paquete-unificacion)

(defun componer (s1 s2)
  (cond
    ((eq s1 'NADA) s2)     ; si s1 es nada, se devuelve s2
    ((eq s2 'NADA) s1)     ; si s2 es nada, se devuelve s1
    (t
     (prog (acum)          ; acumula s1 con valores aplicados
       (dolist (p s1)
         (setf acum
               (append acum
                       (list (list (aplicar s2 (first p)) (first (rest p)))))))
       (return acum)))))
