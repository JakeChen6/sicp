(define (subsets s)
    (if (null? s)
        (list '())
        (let ((rest (subsets (cdr s))))
            (append rest (map (lambda (elem)
                                (cons (car s) elem))
                            rest)))))

(subsets (list 1 2 3))
