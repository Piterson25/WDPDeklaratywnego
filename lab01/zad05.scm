#lang scheme

(define (new.< x y)
  (< x y))
(define (new.> x y)
  (< y x))
(define (new.= x y)
  (and (not(new.> x y)) (not(new.< x y))))

(define (same-values? p1 p2 x y)
  (if (equal? (p1 x y) (p2 x y))
      #t
      #f))

(same-values? = new.= 3 1)
(same-values? < > 2 3)
(same-values? + * 2 2)
