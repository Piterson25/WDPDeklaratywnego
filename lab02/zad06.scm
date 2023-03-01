#lang scheme

"6 a)"

(define (factorial n)
  (if (>= n 1)
      (* n (factorial (- n 1)))
      1))

(factorial 4)

"6 b)"
(define (factorial_help n i acc)
      (if (< n i)
          acc
          (factorial_help n (+ i 1) (* i acc)))
      )

(define (factorialRec n)
      (factorial_help n 1 1))

(factorialRec 4)
