#lang scheme

"17"

"a)"
(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(append (list 5 3 4 2) (list 2 1 3 7))

"b)"

(define (length e)
  (if (null? e)
      0
      (+ 1 (length (cdr e )))))
(define (last l)
  (if (= (length l) 1)
      l
      (last (cdr l))))

(last (list 2 1 3 7))

"c)"
(define (reverse l)
  (if (null? l)
      '()
      (append (reverse (cdr l)) (list (car l)))))

(reverse (list 1 2))

"d)"
(define (member? x e)
  (cond ((null? e) #f)
        ((eq? (car e) x) #t)
        (#t (member? x (cdr e)))))
(define (delete x l)
  (if (member? x l)
    (if (= (car l) x)
        (cdr l)
        (append (list (car l)) (delete x (cdr l))))
    '()))

(delete 7 (list 2 1 3 7))
