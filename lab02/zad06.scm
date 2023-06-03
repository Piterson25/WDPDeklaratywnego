#lang scheme

;; a)

(define (factorial n)
  (cond ((<= n 1) 1)
      (else (* n (factorial (- n 1))))))

(factorial 4)
;; (* 4 (factorial 3))
;; (* 4 (* 3 (factorial 2)))
;; (* 4 (* 3 (* 2 (factorial 1))))
;; (* 4 (* 3 (* 2 1)))
;; (* 4 (* 3 2))
;; (* 4 6)
;; 24

;; b)

(define (factorial-help n i acc)
  (cond ((< n i) acc)
      (else (factorial-help n (+ i 1) (* i acc)))))

(define (factorial-tail n)
  (factorial-help n 1 1))

(factorial-tail 4)
;; (factorial_help 4 1 1)
;; (factorial_help 4 2 2)
;; (factorial_help 4 3 6)
;; (factorial_help 4 4 24)
;; 24
