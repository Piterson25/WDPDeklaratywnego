#lang scheme

(define (f g)
  (g 2))

(define (square x)
  (* x x))

(f square) ; 4

(f (lambda (z) (+ z (* 3 z)))) ; 8
    
(f f) ; nieskonczona petla
