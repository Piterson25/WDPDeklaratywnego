#lang scheme

"22."
(define (fold op init l)
  (if (null? l)
      init
      (op (car l) (fold op init (cdr l)))))

(define (prod l)
  (fold * 1 l))

(define (length l)
  (fold (lambda (x y) (+ y 1)) 0 l))

(define (delete x l)
  (fold (lambda (y z) (if (eq? x y) z (cons y z))) '() l))

(define (reverse l)
  (fold (lambda (x y) (append y (list x))) '() l))

(define (map f l)
  (fold (lambda (x y) (cons (f x) y)) '() l))

(define (filter pred l)
  (fold (lambda (x y) (if (pred x) (cons x y) y)) '() l))

(define (forall pred l)
  (fold (lambda (x y) (and y (pred x))) #t l))

(prod '(1 2 3 4))

(length '(1 2 3 4))

(delete 3 '(1 2 3 4))

(reverse '(1 2 3 4))

(map (lambda (x) (* x x)) '(1 2 3 4))

(filter even? '(1 2 3 4))

(forall even? '(1 2 3 4))

(forall even? '(2 4 6 8))
