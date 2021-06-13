(define lst1 (list 1 3 (list 5 7) 9))

(car (cdaddr lst1))

(define lst2 (list (list 7)))

(caar lst2)

(define lst3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(cadadr (cadadr (cadadr lst3)))
