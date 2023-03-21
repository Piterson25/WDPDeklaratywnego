#lang scheme

"19."

(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(define (memberTree? element tree)
  (cond ((null? tree) #f)
        ((eq? (car tree) element ) #t)
        ((list? (car tree)) (or (memberTree? element (car tree)) (memberTree? element (cdr tree))))
        (#t (memberTree? element (cdr tree)))))

(memberTree? 5 '(1 2 3 4 5))

(define (sumTree tree)
  (cond ((null? tree) 0)
        ((list? (car tree)) (+ (sumTree (car tree)) (sumTree (cdr tree))))
        (#t (+ (car tree) (sumTree (cdr tree))))))

(sumTree '(1 2 (3 4 (5)) 6))

(define (inorder tree)
  (cond ((null? tree) '())
        ((list? (car tree)) (append (inorder (car tree)) (cons (car tree) (inorder (cdr tree)))))
        (#t (cons (car tree) (inorder (cdr tree))))))


(inorder '(1 2 (3 4 (5)) 6))

(define (mapTree f tree)
  (cond ((null? tree) '())
        ((list? (car tree)) (append (mapTree f (car tree)) (mapTree f (cdr tree))))
        (else (cons (f (car tree)) (mapTree f (cdr tree))))))

(define (square x)
    (* x x))

(mapTree square '(1 2 (3 4 (5)) 6))
