(define (square x)
    (* x x))

(define (sum-of-square x y)
    (+ (square x) (square y)))

(define (sos-of-the-two-larger x y z)
    (cond ((and (< x y) (< x z)) (sum-of-square y z))
          ((and (< y x) (< y z)) (sum-of-square x z))
          (else (sum-of-square x y))))

(sos-of-the-two-larger 3 1 2)
