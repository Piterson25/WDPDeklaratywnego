#lang scheme

(define (mlist l) 
    (if (empty? l) 
        `()
        (mcons (car l) (mlist (cdr l)))
    )
)

(define (append! l m)
    (cond ((and (empty? l) (empty? m)) `())
        ((empty? l) (mcons (mcar m) (append! l (mcdr m))))
        (else (mcons (mcar l) (append! (mcdr l) m)))
    )
)

(define x '(a b)) 
(define y '(c d)) 
(append x y) 
(cdr x) 

(set! x (mlist x))
(set! y (mlist y))
(displayln (append! x y)) 
(displayln (mcdr x)) 
