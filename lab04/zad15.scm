#lang scheme

(define (comb f g)
   (lambda (x) (f (g x))))

(define (square n)
   (* n n))

(define (double n)
   (+ n n))

((comb square double) 5)
;; (square(double 5))
;; (square(10))
;; 100
