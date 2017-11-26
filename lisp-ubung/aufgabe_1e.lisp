(defun my-reverse(l)
  (if (null l) l
    (append  (my-reverse(cdr l)) (list (car l)))))
