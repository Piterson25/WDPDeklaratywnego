#lang scheme

(define a 2)
(define (p a)
  (define (pp b)
    (set! a (+ b 1))
    (* a b))
  (pp 2))

(p 5) ; 6
