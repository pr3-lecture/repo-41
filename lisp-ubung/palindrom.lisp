(defun palindrom(li)
  (if (null li) li
    (append (cons (car li) (palindrom (cdr li))) (list (car li)))))
