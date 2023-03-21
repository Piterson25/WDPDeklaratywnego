#lang scheme

"20."

(define (deriv exp var)
  (cond ((constant? exp) 0)
        ((variable? exp)
         (if(same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum
          (deriv (addend exp) var)
          (deriv (augend exp) var)))
        ((product? sum)
         (make-sum
          (make-product...)
          (make-product...)))))