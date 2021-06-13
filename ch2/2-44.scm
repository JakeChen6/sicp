(define (up-split painter n)
    (if (= n 0)
        painter
        (let ((ssmaller (up-split painter (- n 1))))
            (below painter (besides smaller smaller)))))

