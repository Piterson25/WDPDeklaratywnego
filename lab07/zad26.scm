#lang scheme

(define m 1)
(define (p m)
   (pp 5))
(define (pp x)
   (+ x m))

(define n 1)
(define (q n)
  (define (qq x)
    (+ x n))
  (qq 5))

(p 11)
(q 11)

; zmienne globalne m i n przyjmują wartość 1
; wykonanie funkcji (p 11)
; użyte jest m=1 globalne w funkcji (pp) zamiast 11
; 1 + 5 = 6
; wykonanie funkcji (q 11)
; użyty jest argument x=11 do funkcji (qq) wewnątrz (q 11) zamiast n=1
; 11 + 5 = 6
