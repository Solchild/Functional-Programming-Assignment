#lang Scheme
; 1. Reverse-General list
(define (reverse-general L)
  (cond
   ((null? L) L)
   ((list? (car L))
    (append (reverse-general (cdr L)) (list (reverse-general (car L)))))
   (else
    (append (reverse-general (cdr L)) ( list (car L))))
  )
)

; 2. Simple sum up numbers
(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0)
    ((number? (car L))
      (+ (car L) (sum-up-numbers-simple (cdr L))))
    (else (+ 0 (sum-up-numbers-simple (cdr L))))
  )
)

; 3. General numbers sum
(define (sum-up-numbers-general L)
  (cond
    ((null? L) 0)
    ((not (pair? L))
      (if (number? L) L 0))
    (else (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
  )
)
