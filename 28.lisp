(defun atom-counter (lst)
  (length (remove-if-not #'atom lst)))