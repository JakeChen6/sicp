(define (get-leaves tree)
    (cond ((null? tree) '())                        ; base case
          ((not (pair? tree)) (list tree))          ; base case
          (else (append (get-leaves (car tree))     ; rule
                        (get-leaves (cdr tree))))))

(load "append.scm")

(define fringe get-leaves)

(define x (list (list 1 2) (list 3 4)))

(fringe x)

(fringe (list x x))
