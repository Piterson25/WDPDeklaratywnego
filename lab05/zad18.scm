#lang scheme

;; a)

(define (square-list l)
  (if (null? l)
      '()
      (cons (* (car l) (car l))
            (square-list (cdr l)))))

(square-list '(5 3 7 8))

;; b)

(define (square x) 
  (* x x))

(define (mapf f l)
  (if (null? l)
      '()
      (cons (f (car l))
            (mapf f (cdr l)))))

(mapf square '(5 3 7 1))

;; c)

(define (is-even? x) 
  (even? x))

(define (filter pred l)
  (cond ((null? l) '())
        ((pred (car l)) (cons (car l) (filter pred (cdr l))))
        (else (filter pred (cdr l)))))

(filter is-even? '(5 3 2 4 1))
