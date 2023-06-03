#lang scheme

(define x (mcons 'a (mcons 'b '())))
(define z1 (mcons x x))
(define z2 (mcons (mcons 'a (mcons 'b '()))
                    (mcons (mcons 'a (mcons 'b '())) '())))
(set-mcar! (mcar z1) 'g)
(set-mcar! (mcar z2) 'g)

(define (mlist l) 
    (if (empty? l) 
        `()
        (mcons (car l) (mlist (cdr l)))
    )
)

(display z1)
(newline)
(display z2)
(newline)

(define mlst (mlist '(1 2 3)))
(display mlst)
