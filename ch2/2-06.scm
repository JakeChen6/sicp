(define zero (lambda (f) (lambda (x) x)))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (+ x y)
    (lambda (f) (lambda (x) (x f (y f x)))))
