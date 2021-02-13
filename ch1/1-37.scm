; a
(define (cont-frac n d k)
    (define (cf i)
        (if (= i k)
            (/ (n k) (d k))
            (/ (n i)
               (+ (d i)
                  (cf (+ i 1))))))
    (cf 1))

(define (golden-ratio k)
    (+ 1
       (cont-frac (lambda (i) 1.0)
                  (lambda (i) 1.0)
                  k)))

(golden-ratio 12)

; b
(define (cont-frac n d k)
    (define (cf-iter res i)
        (if (= i 0)
            res
            (cf-iter (/ (n i) (+ (d i) res))
                     (- i 1))))
    (cf-iter (/ (n k) (d k))
             (- k 1)))

(golden-ratio 12)
