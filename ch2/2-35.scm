;;; 1
(define (count-leaves t)
    (accumulate (lambda (x y) (+ (length x) y)) 0 (map enumerate-tree t)))

(define (enumerate-tree t)
    (cond ((null? t) '())
          ((not (pair? t)) (list t))
          (else (append (enumerate-tree (car t))
                        (enumerate-tree (cdr t))))))

(define (length sequence)
    (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(load "accumulate.scm")
(load "append.scm")

(count-leaves (list 1 (list 2 (list 3 4)) 5))

;;; 2
(define (count-leaves tree)
    (accumulate + 0 (map (lambda (sub-tree)     ; return leave count of a sub-tree
                            (if (pair? sub-tree)
                                (count-leaves sub-tree)
                                1))
                         tree)))

(count-leaves (list 1 (list 2 (list 3 4)) 5))
