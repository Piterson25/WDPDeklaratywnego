#lang scheme

(define (odd? n)
  (cond ((zero? n) #f)
        (else (even? (- n 1)))))

(define (even? n)
  (cond ((zero? n) #t)
        (else (odd? (- n 1)))))

(odd? 5)
(odd? 4)
(odd? 2)
(odd? 1)

(even? 8)
(even? 4)
(even? 2)
(even? 1)
