(define (deep-reverse l)
    (define (iter remaining res)
        (if (null? remaining)
            res
            (let ((front (car remaining)))
                (iter (cdr remaining) (cons (if (not (pair? front))
                                                front
                                                (deep-reverse front))
                                            res)))))
    (iter l '()))


(define x (list (list 1 2) (list 3 4)))

(deep-reverse x)
