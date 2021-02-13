(define (cont-frac n d k)
    (define (cf-iter res i)
        (if (= i 0)
            res
            (cf-iter (/ (n i) (+ (d i) res))
                     (- i 1))))
    (cf-iter (/ (n k) (d k))
             (- k 1)))

(define (tan-cf x k)
    (define (n i)
        (if (= i 1)
            x
            (- (* x x))))
    (define (d i)
        (- (* i 2) 1))
    (cont-frac n d k))

(define pi 3.141592653589793)

(tan (/ pi 3))

(tan-cf (/ pi 3) 10)
