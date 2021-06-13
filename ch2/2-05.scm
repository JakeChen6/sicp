(define (cons x y)
    (* (expt 2 x)
       (expt 3 y)))

(define (car z)
    (if (= (remainder z 2) 0)
        (+ 1 (car (/ z 2)))
        0))

(define (cdr z)
    (if (= (remainder z 3) 0)
        (+ 1 (cdr (/ z 3)))
        0))

(define z (cons 7 9))
(car z)
(cdr z)
