(define (same-parity x . y)
    (filter (if (even? x)
                even?
                odd?)
            (cons x y)))

(same-parity 1 2 3 4 5 6 7)
