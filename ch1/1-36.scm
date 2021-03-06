(define tolerance 0.00001)

(define (display-info guess step)
    (display "Step: ")
    (display step)
    (display " ")

    (display "Guess: ")
    (display guess)
    (newline))

(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess step)
        (display-info guess step)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                (begin
                    (display-info next (+ 1 step))
                    next)
                (try next (+ 1 step)))))
    (try first-guess 1))

(fixed-point (lambda (x) (/ (log 1000) (log x)))
             1.1)

(define (average x y)
    (/ (+ x y) 2))

(fixed-point (lambda (x) (average x (/ (log 1000) (log x))))
             1.1)
