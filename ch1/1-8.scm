(define tolerance 0.001)

(define init-guess 1.0)

(define (cube-root x)
    (cube-root-iter init-guess x))

(define (cube-root-iter guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (cube-root-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))

(define (square x)
    (* x x))

(define (cube x)
    (* x x x))

(define (good-enough? old-guess new-guess)
    (> tolerance
       (/ (abs (- new-guess old-guess))
          old-guess)))

(cube-root (cube 17))
