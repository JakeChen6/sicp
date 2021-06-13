(define (split big-combiner small-combiner)
    (define (recur painter n)
        (if (= n 0)
            painter
            (let ((smaller (recur painter (- n 1))))
                (big-combiner painter (small-combiner smaller smaller)))))
    recur)
