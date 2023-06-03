#lang scheme

;; a)

(define (fibonacci n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(fibonacci 4)
;; (+ (fibonacci 3) (fibonacci 2))
;; (+ (+ (fibonacci 2) (fibonacci 1)) (+ (fibonacci 1) (fibonacci 0)))
;; (+ (+ (+ (fibonacci 1) (fibonacci 0)) 1) 1)
;; (+ (+ (+ 1 0) 1) 1)
;; (+ (+ 1 1) 1)
;; (+ 2 1)
;; 3

;; b)

(define (fibonacci-help n i acc1 acc2)
  (cond ((= n i) acc1)
      (else (fibonacci-help n (+ i 1) (+ acc1 acc2) acc1))))

(define (fibonacci-tail n)
  (fibonacci-help n 1 1 0))

(fibonacci-tail 4)
;; (fibonacci_help 4 1 1 0)
;; (fibonacci_help 4 2 1 1)
;; (fibonacci_help 4 3 2 1)
;; (fibonacci_help 4 4 3 2)
;; 3
