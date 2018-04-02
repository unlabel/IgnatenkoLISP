(defun list_to_set(L)
((lambda (x y)
  (cond
   ((null L) nil)
   ((member x y) (list_to_set y))
   (T (cons x (list_to_set y))))) (car L) (cdr L)))
                  
                  