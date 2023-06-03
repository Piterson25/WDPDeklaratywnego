#lang scheme

(define (accumulate combiner null-value term next a b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term next (next a) b))))

(define (accumulate-sum a b) 
  (accumulate + 0 identity (lambda (a) (+ 1 a)) a b))
(accumulate-sum 2 5)

(define (accumulate-product a b) 
  (accumulate * 1 identity (lambda (a) (+ 1 a)) a b))
(accumulate-product 2 5)
