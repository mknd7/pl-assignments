"(rev '(1 2 3 ()))"
"> (() 3 2 1)"

(define (rev lst)
  (if (null? lst)
      '()
      (append (rev (cdr lst)) (list (car lst)))))

(define my-list '(1 2 3 ()))
(rev my-list)