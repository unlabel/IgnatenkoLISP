(defun list_to_set(L)
  (cond
   ((null L) nil)
   ((member (car L)(cdr L)) (list_to_set(cdr L)))
   (T (cons (car L)(list_to_set (cdr L))))))

                  
                  