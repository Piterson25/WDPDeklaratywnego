#lang scheme

;; a)
(define (filter pred l)
    (cond ((null? l) '())
          ((pred (car l)) (cons (car l) (filter pred (cdr l))))
          (else (filter pred (cdr l)))))

(filter even? '(1 2 3 4))

;; b)
(define (inorder t)
    (cond ((null? t) '())
          (else (append (inorder (cadr t))
                        (cons (car t) (inorder (caddr t)))))))

(inorder '(4 (3 () ()) (2 (9 () ()) (7 () ()))))
