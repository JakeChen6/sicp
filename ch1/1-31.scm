; a
; the concept of product
(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))

(define (identity x) x)

(define (inc x) (+ x 1))

(define (factorial n)
    (product identity 1 inc n))

(factorial 10)

(define (inc-by-2 x) (+ x 2))

(define (prd x) (* x (+ x 2)))

(* 4.0 (/ (product prd 2 inc-by-2 10002)
          (product square 3 inc-by-2 10003)))

; b
(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))
