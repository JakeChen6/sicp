;;; a
(define (left-branch mobile) (car mobile))

(define (right-branch mobile) (cadr mobile))

(define (branch-length branch) (car branch))

(define (branch-structure branch) (cadr branch))

;;; b
(define (total-weight mobile)
    (+ (branch-weight (left-branch mobile))
       (branch-weight (right-branch mobile))))

(define (branch-weight branch)
    (if (hangs-another-mobile? branch)
        (total-weight (branch-structure branch))
        (branch-structure branch)))

(define (hangs-another-mobile? branch)
    (pair? (branch-structure branch)))


(define make-mobile list)
(define make-branch list)

(define br (make-branch 3 6))
(define m (make-mobile br br))
(total-weight (make-mobile br (make-branch 2 m)))

;;; c
(define (mobile-balanced? mobile)
    (let ((left (left-branch mobile))
          (right (right-branch mobile)))
        (and (same-torque? left right)
             (branch-balanced? left)
             (branch-balanced? right))))

(define (same-torque? left right)
    (= (branch-torque left)
       (branch-torque right)))

(define (branch-torque branch)
    (* (branch-length branch)
       (branch-weight branch)))

(define (branch-balanced? branch)
    (if (hangs-another-mobile? branch)
        (mobile-balanced? (branch-structure branch))
        #t))

(define balanced-mobile (make-mobile (make-branch 10 10)
                                     (make-branch 10 10)))

(mobile-balanced? balanced-mobile)

(define unbalanced-mobile (make-mobile (make-branch 0 0)
                                       (make-branch 10 10)))

(mobile-balanced? unbalanced-mobile)

(define mobile-with-sub-mobile (make-mobile (make-branch 10 balanced-mobile)
                                            (make-branch 10 balanced-mobile)))

(mobile-balanced? mobile-with-sub-mobile)

;;; d
(define make-mobile cons)
(define make-branch cons)

(define (left-branch mobile) (car mobile))

(define (right-branch mobile) (cdr mobile))

(define (branch-length branch) (car branch))

(define (branch-structure branch) (cdr branch))

(define br (make-branch 3 6))
(define m (make-mobile br br))
(total-weight (make-mobile br (make-branch 2 m)))
