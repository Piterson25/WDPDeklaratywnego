#lang scheme

(define a 2)
(define (p a)
  (define (pp b)
    (set! a (* 2 b))
    (+ a b))
  (pp 2))

(p 3) ; 6
