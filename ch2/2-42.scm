(define (queens board-size)
    (define (queen-cols k)
        (if (= k 0)
            (list empty-board)
            (filter
                (lambda (positions) (safe? k positions))
                (flatmap
                    (lambda (rest-of-queens)
                        (map (lambda (new-row)
                                (adjoin-position new-row k rest-of-queens))
                             (enumerate-interval 1 board-size)))
                    (queen-cols (- k 1))))))
    (queen-cols board-size))

(load  "2-40.scm")

(define (adjoin-position new-row k rest-of-queens)
    (cons new-row rest-of-queens))

(define empty-board '())

; the adjoin-position function and empty-board above imply that
; queens are placed from right to left (cons new-row to rest-of-queens
; naturally associates with placing a queen to the left of the placed ones)

(define (safe? k positions)
    (define (iter new-row rest i)
        (if (null? rest)
            #t          ; base case
            (if (and (not (= new-row (car rest)))           ; not in the same row
                     (not (= (- new-row i) (car rest)))     ; not in the same diagonal (upper right)
                     (not (= (+ new-row i) (car rest))))    ; not in the same diagonal (lower right)
                (iter new-row (cdr rest) (+ i 1))
                #f)))
    (iter (car positions) (cdr positions) 1))

(queens 8)
