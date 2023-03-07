#lang scheme

"11"

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
          (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (suma n)
  (sum (lambda (x) x)
            1
           (lambda (x) (+ x 1))
           n))

(define (silnia n)
  (product (lambda (x) x)
            1
           (lambda (x) (+ x 1))
           n))

(suma 6)
(silnia 6)
