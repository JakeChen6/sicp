; the concept of summation
(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (even? n) (= (remainder n 2) 0))

(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(define (integral-simpson f a b n)
    (define h (/ (- b a)
                 n))
    (define (y k)
        (f (+ a (* k h))))
    (define (factor k)
        (cond ((or (= k 0) (= k n))
                1)
              ((even? k)
                2)
              (else
                4)))
    (define (simpson-term k)
        (* (factor k)
           (y k)))
    (* (/ h 3.0)
       (sum simpson-term 0 inc n)))

(integral-simpson cube 0 1 1000)
