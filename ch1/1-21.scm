(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))  

(define (even? n)
    (= (remainder n 2) 0))

(expmod 5 3 3)

(define (square n)
    (* n n))

(define (test1 a b)
    (= (remainder (* a a) b)
       (remainder (square (remainder a b)) b)))

(test1 189 12)
