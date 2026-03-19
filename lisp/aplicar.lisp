(in-package :paquete-unificacion)

(defun aplicar (sustituciones lista)
  (cond
    ((not (listp sustituciones)) lista)          ; sustituciones vacía, no se hace nada
    ((null lista) nil)                           ; lista vacía, devuelve  NIL

    ((es-variable lista)                         ; si es variable, busca sustitución (valor var)
     (dolist (i sustituciones lista)             ; si no se encuentra, devuelve la variable
       (when (equalp lista (second i))
         (return (first i)))))

    ((listp lista)                               ; lista dentro de lista, recursivo
     (cons (aplicar sustituciones (first lista))
           (aplicar sustituciones (rest  lista))))

    (t lista)))                                  ; caso default, devuelve lista

