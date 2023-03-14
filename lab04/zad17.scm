#lang scheme

"17"

"a)"
(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(append '(5 3 4 2) '(2 1 3 7))

"b)"

(define (length e)
  (if (null? e)
      0
      (+ 1 (length (cdr e )))))
(define (last l)
  (if (= (length l) 1)
      l
      (last (cdr l))))

(last '(2 1 3 7))

"c)"
(define (reverse l)
  (if (null? l)
      '()
      (append (reverse (cdr l)) (list(car l)))))

(reverse '(1 2))

"d)"
(define (member? x e)
  (cond ((null? e) #f)
        ((eq? (car e) x) #t)
        (#t (member? x (cdr e)))))
(define (delete x l)
  (if (member? x l)
    (if (= (car l) x)
        (cdr l)
        (append (list(car l)) (delete x (cdr l))))
    '()))

(delete 7 '(2 1 3 7))

"e)"
(define (pairing l1 l2)
  (if (or (null? l1) (null? l2))
      '()
      (append (list(cons (car l1) (car l2))) (pairing (cdr l1) (cdr l2)))))

(pairing '(1 2 3) '(a b c))


