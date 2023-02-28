#lang scheme

"7 a)"

(define (fibonacci n)
  (if (<= n 1)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(fibonacci 4)

"7 b)"

(define (fibonacci_help n i acc)
      (if (= n 0)
          acc
          (if (= n 1)
              i
      (fibonacci_help (- n 1) acc (+ i acc))))
      )            

(define (fibonacciRec n)
      (fibonacci_help n 1 1))

(fibonacciRec 4)
