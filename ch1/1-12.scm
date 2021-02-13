(define (pascal-tri row col)
    (if (or (= col 1) (= row col))
        1
        (+ (pascal-tri (- row 1) (- col 1))
           (pascal-tri (- row 1) col))))

(pascal-tri 5 3)
