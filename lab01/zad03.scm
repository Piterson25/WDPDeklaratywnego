#lang scheme
(define (nwd a b) (cond ((= a b) a)
                        ((> a b) (nwd (- a b) b))
                        (else (nwd a (- b a)))
                  ))
(define (nww a b) (/ (* a b) (nwd a b)))

(nwd 15 1)
(nww 15 5)
