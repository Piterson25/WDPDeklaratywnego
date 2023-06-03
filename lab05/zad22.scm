#lang scheme

(define (fold op init l)
  (if (null? l)
      init
      (op (car l) (fold op init (cdr l)))))

(define (prod l)
  (fold * 1 l))

(define (length l)
  (fold (lambda (x acc) (+ acc 1)) 0 l))

(define (delete x l)
  (fold (lambda (e acc) (if (equal? e x) acc (cons e acc))) '() l))

(define (reverse l)
  (fold (lambda (e acc) (append acc (cons e '()))) '() l))

(define (map f l)
  (fold (lambda (e acc) (cons (f e) acc)) '() l))

(define (filter pred l)
  (fold (lambda (e acc) (if (pred e) (cons e acc) acc)) '() l))

(define (forall pred l)
  (fold (lambda (e acc) (and (pred e) acc)) #t l))

(prod '(2 3 4 5))
(length '(1 2 3 4 5))
(delete 2 '(1 2 3 2 4 2))
(reverse '(1 2 3 4 5))
(map (lambda (x) (* x x)) '(1 2 3 4 5))
(filter even? '(1 2 3 4 5))
(forall number? '(1 2 3 4 5))
