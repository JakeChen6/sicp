(define (reverse l)
    (define (iter remaining res)
        (if (null? remaining)
            res
            (iter (cdr remaining) (cons (car remaining) res))))
    (iter l '()))

(reverse (list 1 4 9 16 25))
