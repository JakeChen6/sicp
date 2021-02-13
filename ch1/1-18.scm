(define (times a b)
    (times-iter a b 0))

(define (times-iter a b c)
    (cond ((= b 0)
            c)
          ((even? b)
            (times-iter (double a)
                        (halve b)
                        c))
          (else
            (times-iter a
                        (- b 1)
                        (+ c a)))))

(define (even? n)
    (= (remainder n 2) 0))

(define (double x)
    (+ x x))

(define (halve x)
    (/ x 2))

(times 3 7)
