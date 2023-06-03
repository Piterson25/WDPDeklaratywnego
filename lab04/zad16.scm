#lang scheme

(define (iter f n)
  (lambda (x)
    (if (= n 0)
        x
        ((iter f (- n 1)) (f x)))))

(define (square x)
  (* x x))

((iter square 3) 2)
