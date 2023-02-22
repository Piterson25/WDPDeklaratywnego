#lang scheme
(define (new.< x y) (< x y))
(define (new.> x y) (< y x))
(define (new.= x y) (and (not(new.> x y)) (not(new.< x y))))
(define (new.<= x y) (or (< x y) (new.= x y)))
(define (new.>= x y) (or (> x y) (new.= x y)))
(define (new.<> x y) (not (new.= x y)))

(new.< 12 30)
(new.> 30 12)
(new.= 15 15)
(new.<= 12 13)
(new.>= 15 15)
(new.<> 13 14)
