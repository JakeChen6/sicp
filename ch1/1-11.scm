;;; recursive version
(define (func1 x)
    (if (< x 3)
        x
        (+ (func1 (- x 1))
           (* 2 (func1 (- x 2)))
           (* 3 (func1 (- x 3))))))

;;; iterative version
(define (func2 x)
    (define (func-iter a b c count)
        (if (= count 0)
            c
            (func-iter b
                       c
                       (+ c (* 2 b) (* 3 a))
                       (- count 1))))
    (if (< x 3)
        x
        (func-iter 0 1 2 (- x 2))))

(func1 5)
