(define (times a b)
    (cond ((= b 0) 0)
          ((even? b)
            (double (times a (halve b))))
          (else
            (+ a (times a (- b 1))))))

(define (even? n)
    (= (remainder n 2) 0))

(define (double x)
    (+ x x))

(define (halve x)
    (/ x 2))

(times 5 7)
