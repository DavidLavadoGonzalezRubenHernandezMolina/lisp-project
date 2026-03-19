(in-package :paquete-unificacion)

(defun aparece-en (var lista)
  (cond
    ((null lista) nil)
    ((equalp var (first lista)) t)         ; var = primer elemento
    ((listp (first lista))                 ; si el primer átomo es sublista busca dentro o sigue
     (or (aparece-en var (first lista))
         (aparece-en var (rest lista))))
    (t (aparece-en var (rest lista))))     ; si el primero es átomo no es = var pasa la lista restante
)
