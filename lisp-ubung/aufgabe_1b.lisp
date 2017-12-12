(defun neues-vorletztes (ele liste)
	(if (or (null liste) (null (cdr liste)))
		liste
	(reverse (cons (car (reverse liste)) (cons ele (cdr (reverse liste)))))))
