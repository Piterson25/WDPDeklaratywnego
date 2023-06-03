#lang scheme

(define (filter-accumulate combiner pred null-value term next a b)
  (cond ((> a b) null-value)
    ((pred a) (combiner (term a) (filter-accumulate combiner pred null-value term next (next a) b)))
    (else (filter-accumulate combiner pred null-value term next (next a) b))))

(define (prime? a (i 2))
  (cond ((> (* i 2) a) #t)
    ((= (modulo a i) 0) #f)
    (else (prime? a (+ 1 i)))))

(filter-accumulate + prime? 0 (lambda (a) (* a a)) (lambda (a) (+ 1 a)) 3 7)

(define (nwd a b)
  (cond ((= a b) a)
    ((> a b) (nwd (- a b) b))
    (else (nwd a (- b a)))))

(define (smaller? i n) 
  (< i n))
(define (pred-zad-12 i) 
  (and (smaller? i 6) (= (nwd i 6) 1)))

(filter-accumulate * pred-zad-12 1 identity (lambda (a) (+ 1 a)) 1 9)
