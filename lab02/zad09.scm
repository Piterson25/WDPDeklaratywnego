#lang scheme

(define (new-if condition consequence alternative)
   (cond (condition consequence)
         (else      alternative)))
"In this example even if condition is met, the alternative"
"is also evaluated"

(new-if (= 1 1) (display "One is equal to one") (/ 1 0))
