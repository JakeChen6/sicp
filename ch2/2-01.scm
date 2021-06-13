(define (make-rat n d) (cons n d))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(define (make-rat n d)
    (let ((g (abs (gcd n d))))
        (if (< d 0)
            (cons (/ (- n) g) (/ (- d) g))
            (cons (/ n g) (/ d g)))))

(define x (make-rat 2 -3))
(print-rat x)
