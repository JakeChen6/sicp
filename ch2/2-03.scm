(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (perimeter rec)
    (* (+ (length-of-rectangle rec) (width-of-rectangle rec))
       2.0))

(define (area rec)
    (* (length-of-rectangle rec)
       (width-of-rectangle rec)))

(define (length-of-rectangle rec) (length (length-seg-rectangle rec)))

(define (width-of-rectangle rec) (length (width-seg-rectangle rec)))

; length of a line segment
(define (length seg)
    (let ((p1 (start-segment seg))
          (p2 (end-segment seg)))
        (sqrt (+ (square (- (x-point p1) (x-point p2)))
                 (square (- (y-point p1) (y-point p2)))))))

(define (square x) (* x x))

; version 1
(define (make-rectangle length-seg width-seg) (cons length-seg width-seg))

(define (length-seg-rectangle rec) (car rec))

(define (width-seg-rectangle rec) (cdr rec))

(define seg1 (make-segment (make-point 1 2) (make-point 4 2)))
(define seg2 (make-segment (make-point 1 2) (make-point 1 4)))

(define rec1 (make-rectangle seg1 seg2))
(perimeter rec1)
(area rec1)

; version 2
(define (make-rectangle length-seg start-of-width-seg) (cons length-seg start-of-width-seg))

(define (length-seg-rectangle rec) (car rec))

(define (width-seg-rectangle rec)
    (make-segment (cdr rec)
                  (start-segment (car rec))))

(define rec2 (make-rectangle seg1 (make-point 1 4)))
(perimeter rec2)
(area rec2)
