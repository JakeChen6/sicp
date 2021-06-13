(define (for-each func items)
    (if (not (null? items))
        (begin
            (func (car items))
            (for-each func (cdr items)))))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))
