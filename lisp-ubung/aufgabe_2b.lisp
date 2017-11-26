(defun is-tree(tree)
  (cond
    ((null tree) NIl)
    ( t )
  )
)

(defun left-subtree(tree)
  (cond
    ((null tree) NIl)
    ((not (listp tree)) NIl)
    ( t  (cadr tree))
    )
)

(defun right-subtree(tree)
  (cond
    ((null tree) NIl)
    ((not (listp tree)) NIL)
    ( t  (caddr tree))
    )
)

(defun pre-order(tree)
    (if
        (not (is-tree tree)) NIL
           (cons (if (not (listp tree))
                   tree
                  (car tree)
                 )
               (append (pre-order (left-subtree tree))
                     (pre-order (right-subtree tree))
               )
           )
    )
)

(defun in-order(tree)
    (if
        (not (is-tree tree)) NIL
            (append
                 (in-order (left-subtree tree))
                 (if (not (listp tree))
                   (list tree)
                  (list (car tree))
                 )
                 (in-order (right-subtree tree))
            )
    )
)

(defun post-order(tree)
    (if
        (not (is-tree tree)) NIL
            (append
                 (post-order (left-subtree tree))
                 (post-order (right-subtree tree))
                 (if (not (listp tree))
                   (list tree)
                  (list (car tree))
                 )
            )
    )
)
