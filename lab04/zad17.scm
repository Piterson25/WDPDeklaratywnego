#lang scheme

;; a)

(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(append '(5 3 4 2) '(2 1 3 7))

;; b)

(define (last l)
  (if (null? (cdr l))
      (car l)
      (last (cdr l))))

(last '(2 1 3 7))

;; c)

(define (reverse l)
  (if (null? l)
      '()
      (append (reverse (cdr l)) (list(car l)))))

(reverse '(1 2))

;; d)

(define (delete x l)
  (cond ((null? l) '())
        ((eq? x (car l)) (delete x (cdr l)))
        (else (cons (car l) (delete x (cdr l)))))) 

(delete 7 '(2 1 3 7))

;; e)

(define (pairing l1 l2)
  (if (or (null? l1) (null? l2))
      '()
      (cons (list (car l1) (car l2))
            (pairing (cdr l1) (cdr l2))))) 

(pairing '(1 2 3) '(a b c))

;; f

(define (split x l)
  (cond ((null? l) '(() ()))
      ((<= (car l) x) (list (cons (car l) (car (split x (cdr l)))) (cadr (split x (cdr l)))))
      (else (list (car (split x (cdr l))) (cons (car l) (cadr (split x (cdr l))))))))

(split 1 '(1 2 3))
