(defun REVL (L)

 (cond

  ((null L) nil)

  ((null (cdr L)) L)

  (T (list (REVL (cdr L)) (car L)))))