"(rev '(4 5 6 ()))"
"> (() 6 5 4)"

(define (rev-tail lst acc)
  (if (null? lst)
      acc
      (rev-tail (cdr lst) (cons (car lst) acc))))

(define (rev lst)
  (rev-tail lst '()))

(define my-list '(4 5 6 ()))
(rev my-list)