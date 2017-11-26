(defun my-reverser (l)
  (cond ((null l) l)
        ((atom (car l)) (append  (my-reverser(cdr l)) (list (car l))))
        ((not (atom (car l))) (append  (my-reverser(cdr l)) (list (my-reverser (car l)))))))
