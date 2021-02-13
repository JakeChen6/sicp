(define tolerance 0.001)

(define init-guess 1.0)

(define (sqrt x)
    (sqrt-iter init-guess x))

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (square x)
    (* x x))

(define (good-enough? old-guess new-guess)
    (> tolerance
       (/ (abs (- new-guess old-guess))
          old-guess)))

(sqrt 0.0000000001)
