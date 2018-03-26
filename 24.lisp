(defun conv-list (lst &optional res)
  (cond ((null lst) (car res))
        (t (conv-list (cdr lst) (list (append res (list (car lst))))))))
