#lang scheme

(define a 2)
(define (p a)
  (define (pp b)
    (set! a (+ b 1))
    (* a b))
  (pp 2))

(p 5)

; (p 5) = 6
; a przyjmuje wartość 5 w nowym środowisku
; wywołanie (pp 2)
; tworzy kolejne środowisko z a = 5
; set ustawia wartość a na 3
; potem wywoływane jest (* a b) co daje końcowy wynik 6
; ostatnia wartość a to 3
