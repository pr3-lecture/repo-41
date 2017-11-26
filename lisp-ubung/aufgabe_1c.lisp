(defun my-length(l)
  (if (null l)
    0
  (+ 1 (my-length (cdr l)))
  )
)
