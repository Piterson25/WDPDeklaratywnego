#lang scheme

(define (product term next a b)
  (if (> a b)
      1
      (* (term a) (product term next (next a) b))))

(define (silnia n)
  (product identity (lambda (x) (+ x 1)) 1 n))

(silnia 5)

(define (sum-pi n)
  (* 4.0 (product (lambda (x) (/ (* (- x 1) (+ x 1)) (* x x))) (lambda (a) (+ a 2)) 3 n)))

(sum-pi 4)
