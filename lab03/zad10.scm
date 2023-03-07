#lang scheme

"10"

(define (product term next a b)
  (if (> a b)
      1
      (* (term a) (product term next (next a) b))))

(define (silnia n)
  (product (lambda (x) x)
           (lambda (x) (+ x 1))
           1
           n))

(define (sum-pi a b)
  (product (lambda (x) (/ 1 (* x (+ x 2))))
           (lambda (x) (+ x 4))
           a
           b))

(silnia 5)

(sum-pi 4 4)
