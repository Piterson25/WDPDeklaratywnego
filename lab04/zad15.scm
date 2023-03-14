#lang scheme

"15."

(define (comb f g)
   (lambda (x) (f (g x))))

(define (square n) (* n n))

(define (double n) (+ n n))

((comb square double) 5)

"(double 5) = 10"
"(square (double 5)) = 10 * 10 = 100"
