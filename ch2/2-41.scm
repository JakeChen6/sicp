(load "2-40.scm")

(define (triple-sum-s n s)
    (define (sum-s? triple)
        (= s (+ (car triple) (cadr triple) (caddr triple))))
    (filter sum-s?
            (flatmap (lambda (i)
                        (flatmap (lambda (j)
                                (map (lambda (k) (list i j k))
                                    (enumerate-interval 1 (- j 1))))
                             (enumerate-interval 1 (- i 1))))
                     (enumerate-interval 1 n))))

(triple-sum-s 8 8)
 