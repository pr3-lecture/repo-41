(defun my-lengthr(l)
  (cond ((null l) 0)
        ((atom (car l)) (+ 1 (my-lengthr (cdr l))))
        ((not (atom (car l))) (+ (my-lengthr (car l)) (my-lengthr (cdr l))))))
