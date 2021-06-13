(define (unique-pairs n)
    (flatmap (lambda (i)
                (map (lambda (j) (list i j))
                     (enumerate-interval 1 (- i 1))))
             (enumerate-interval 1 n)))

(define (flatmap proc seq)
    (accumulate append '() (map proc seq)))

(load "accumulate.scm")
(load "append.scm")

(define (enumerate-interval low high)
    (if (> low high)
        '()
        (cons low (enumerate-interval (+ low 1) high))))

(unique-pairs 6)

(define (prime-sum-pairs n)
    (map make-pair-sum
        (filter prime-sum? (unique-pairs n))))

(define (make-pair-sum pair)
    (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum? pair)
    (prime? (+ (car pair) (cadr pair))))

(load "prime.scm")

(prime-sum-pairs 6)
