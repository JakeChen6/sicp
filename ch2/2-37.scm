(define (dot-product v w)
    (accumulate + 0 (map * v w)))

(load "accumulate.scm")

(define (matrix-*-vector m v)
    (map (lambda (row) (dot-product row v)) m))

(define (transpose mat)
    (accumulate-n cons '() mat))

(load "2-36.scm")

(define mat (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))

(transpose mat)

(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map (lambda (row) (matrix-*-vector cols row)) m)))

(matrix-*-matrix mat (transpose mat))
