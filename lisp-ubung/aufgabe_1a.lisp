(defun rotiere (liste)
	(if (or (null liste) (null (cdr liste)))
 	    (liste)
	(append (cdr liste)(list (car liste)))))
	
