#lang scheme

(define (new-if condition consequence alternative)
   (cond (condition consequence)
         (else      alternative)))

