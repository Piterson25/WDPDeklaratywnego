#lang scheme

(define (memberTree? element tree)
  (cond ((null? tree) #f)
        ((eq? element (car tree)) #t)
        ((memberTree? element (cadr tree)) #t)
        ((memberTree? element (caddr tree)) #t)
        (else #f)))

(define (sumTree tree)
  (cond ((null? tree) 0)
        ((not (pair? tree)) tree)
        (else (+ (sumTree (car tree))
                 (sumTree (cadr tree))))))

(define (inorder t)
  (cond ((null? t) '())
        (else (append (inorder (cadr t))
                      (cons (car t) (inorder (caddr t)))))))

(define (mapTree f tree)
  (if (null? tree)
      '()
      (cons (f (car tree))
            (cons (mapTree f (cadr tree))
                  (mapTree f (caddr tree))))))

(define (square x)
    (* x x))

(define tree '(1 (2 (4 () ()) (5 () ())) (3 () ())))

(memberTree? 3 tree)
(sumTree tree)
(inorder tree)
(mapTree square tree)
