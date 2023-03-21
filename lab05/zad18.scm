#lang scheme

"18."

(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(define (square x)
    (* x x))

"a)"
(define (square-list l)
  (if (null? l)
      '()
      (append (list(square(car l))) (square-list (cdr l)))))

(square-list '(5 3 7 8))

"b)"
(define (mapf f l)
  (if (null? l)
      '()
      (append (list(f (car l))) (mapf f (cdr l)))))

(mapf square '(5 3 7 1))

"c)"
(define (filter pred l)
  (cond ((null? l) '())
        ((pred (car l)) (cons (car l) (filter pred (cdr l))))
        (else (filter pred (cdr l)))))

(define (lower-than-five x)
  (< x 5))

(filter lower-than-five '(5 3 7 1))
