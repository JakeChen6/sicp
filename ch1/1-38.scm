(define (cont-frac n d k)
    (define (cf-iter res i)
        (if (= i 0)
            res
            (cf-iter (/ (n i) (+ (d i) res))
                     (- i 1))))
    (cf-iter (/ (n k) (d k))
             (- k 1)))

(define (e k)
    (+ 2
       (cont-frac (lambda (i) 1.0)
                  d
                  k)))

(define (d i)
    (if (= (remainder (+ i 1) 3) 0)
        (* 2 (/ (+ i 1) 3))
        1))

(e 13)
