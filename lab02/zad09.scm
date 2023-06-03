#lang scheme

(define (new-if condition consequence alternative)
   (cond (condition consequence)
         (else      alternative)))

;; cond oblicza wynik, zanim sprawdzi warunek
;; if najpierw sprawdza warunek, a dopiero potem wynik
;; taki kod nie spełnia zasady condition-consequence/alternative
