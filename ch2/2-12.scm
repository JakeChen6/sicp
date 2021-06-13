(define (make-center-percent c p)
    (let ((width (* c p)))
        (make-interval (- c width) (+ c width))))

(define (percent i)
    (/ (width i) (center i)))
