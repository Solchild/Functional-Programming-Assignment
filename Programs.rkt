#lang Scheme
;Reverse-General list
(define (reverse-general L)
  (cond
   ((null? L) L)
   ((list? (car L))
    (append (reverse-general (cdr L)) (list (reverse-general (car L)))))
   (else
    (append (reverse-general (cdr L)) ( list (car L))))
  )
)

;Simple sum up numbers
(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0)
    (if )
    (else (+ (car L) (sum-up-numbers-simple (cdr L))))
  )
)
