#lang scheme

;; a)
(define (delete x l)
    (cond((null? l) '())
         ((eq? x (car l)) (cdr l))   
         (else (cons (car l) (delete x (cdr l))))))

(delete 5 '(1 2 3 4 5))

;; b)
(define (count x l)
    (cond((null? l) 0)
         ((eq? x (car l)) (+ 1 (count x (cdr l))))
         (else (count x (cdr l)))))

(count 2 '(3 2 1 7 2))
