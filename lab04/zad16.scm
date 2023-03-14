#lang scheme

"16."

(define (iter f n)
  (lambda (x)
    (let loop ((i 0) (acc x))
      (if (= i n)
          acc
          (loop (+ i 1) (f acc))))))

(define add+1 (lambda(x) (+ x 1)))
(define add+1_iter (iter add+1 3))

(add+1_iter 5)
  