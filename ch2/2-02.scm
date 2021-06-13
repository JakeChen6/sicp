(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (midpoint-segment seg)
    (let ((p1 (start-segment seg))
          (p2 (end-segment seg)))
        (make-point (average (x-point p1) (x-point p2))
                    (average (y-point p1) (y-point p2)))))

(define (average x y) (/ (+ x y) 2.0))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

(print-point (midpoint-segment (make-segment (make-point 1 3) (make-point 2 4))))
