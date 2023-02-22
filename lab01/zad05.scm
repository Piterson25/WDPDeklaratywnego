#lang scheme
(define (new.< x y) (< x y))
(define (new.> x y) (< y x))
(define (new.= x y) (and (not(new.> x y)) (not(new.< x y))))
(define (new.<= x y) (or (< x y) (new.= x y)))
(define (new.>= x y) (or (> x y) (new.= x y)))
(define (new.<> x y) (not (new.= x y)))

(define (same-values? p1 p2 x y)
  (let ((result1 (p1 x y))
        (result2 (p2 x y)))
    (or (and (number? result1)
             (number? result2)
             (= result1 result2))
        (and (not (number? result1))
             (not (number? result2))
             (eqv? result1 result2)))))



(same-values? = new.= 3 1)
(same-values? < > 2 3)
(same-values? + * 2 2)
