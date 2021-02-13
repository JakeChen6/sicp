(define (fast-expt b n)
    (expt-iter b n 1))

; technique to design an iterative algorithm:
; define an invariant quantity that remains unchanged
; from state to state
(define (expt-iter b n a)
    (cond ((= n 0)
            a)
          ((even? n)
            (expt-iter (square b)
                       (/ n 2)
                       a))
          (else
            (expt-iter b
                       (- n 1)
                       (* a b)))))

(define (even? n)
    (= (remainder n 2) 0))

(define (square x)
    (* x x))

(fast-expt 2 10)
