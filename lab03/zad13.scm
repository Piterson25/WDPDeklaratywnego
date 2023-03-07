#lang scheme

(define (f g)
  (g 2))

"13 a)"

(define (square x)
  (* x x))

(f square)

"13 b)"

(define function
  (lambda (z)
    (+ z (* 3 z))))
    
(f function)

"13 c)"

;(f f) <- Infinite loop
