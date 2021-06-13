(define (square-tree tree)
    (tree-map square tree))

(define (square x) (* x x))

;;; a tree is a sequence of sequences

;;; 1
(define (tree-map func tree)
    (cond ((null? tree)
            '())
          ((not (pair? tree))
            (func tree))
          (else
            (cons (tree-map func (car tree))
                  (tree-map func (cdr tree))))))

;;; 2
(define (tree-map func tree)
    (map (lambda (sub-tree)
            (if (pair? sub-tree)
                (tree-map func sub-tree)
                (func sub-tree)))
        tree))

(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
