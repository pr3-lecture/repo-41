; gibt anzahl der knoten zurück
(defun size(tree)
  (cond ((null tree) 0)
        ((atom (car tree)) (+ 1 (my-lengthr (cdr tree))))
        ((not (atom (car tree))) (+ (my-lengthr (car tree)) (my-lengthr (cdr tree))))))

; Schaut ob Baum leer ist
(defun isEmpty(tree) (null tree))

; Läuft durch baum
(defun bTreeWalkThrough(fn tree node)
  (cond ((= (car tree) node) (funcall fn (car tree) node))
        ((> (car tree) node) (funcall fn (cadr tree) node))
        ((< (car tree) node) (funcall fn (caddr tree) node))))

; Prüft auf gleichheit; nil heißt nein; T heißt ja
(defun contains(tree node)
  (cond ((or (isEmpty tree)(null node)) nil)
        ((and (atom tree)(= tree node)) T)
        ((and (atom tree)(not(= tree node))) NIL)
        ( T (bTreeWalkThrough #'contains tree node))))

; knoten in baum einfügen
(defun insert (tree node)
  (cond ((or (null node)(contains tree node)) nil)
        ((isEmpty tree) (list node)) ; falls baum leer
        (T (insertHelp tree node))))
; hilfsfunktion insert
(defun insertHelp(tree node)
        ; Fall dass position zurück kommt
  (cond ((isEmpty tree) node)
        ; Fall das eltern knoten zurück kommt
        ((and (atom tree)(> tree node)) (list tree node '()))
        ((and (atom tree)(< tree node)) (list tree '() node))
        ; läuft durch den baum
        ((> (car tree) node) (list (car tree) (insertHelp (cadr tree) node)(caddr tree)))
        ((< (car tree) node) (list (car tree)(cadr tree)(insertHelp (caddr tree) node)))))
; get max
(defun getMax(tree)
  (cond ((isEmpty tree) nil)
        ((atom tree) tree)
        ((null (caddr tree)) (car tree))
        ((not(null (caddr tree)))(getMax (caddr tree)))))
; get min
(defun getMin(tree)
  (cond ((isEmpty tree) nil)
        ((atom tree) tree)
        ((null (cadr tree)) (car tree))
        ((not(null (cadr tree)))(getMin (cadr tree)))))
