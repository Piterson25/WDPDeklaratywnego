#lang scheme

(define (help-fibonacci n) 
    (let ([matrix '((1 1) (1 0))])
        (if (= n 0) matrix
            (multiply-matrix (help-fibonacci (- n 1)) matrix)
        )
    )
)

(define (fibonacci n)
    (ss (help-fibonacci n))
)

(define (multiply-matrix a b)
    (list 
        (list (+ (* (ff a) (ff b)) (* (fs a) (sf b)))
        (+ (* (ff a) (fs b)) (* (fs a) (ss b))))
        (list (+ (* (sf a) (ff b)) (* (ss a) (sf b)))
        (+ (* (sf a) (fs b)) (* (ss a) (ss b))))
    )
)

(define (first-row matrix) (car matrix))
(define (second-row matrix) (cadr matrix))
(define (first-elem row) (car row))
(define (second-elem row) (cadr row))
(define (ff m) (first-elem (first-row m)))
(define (fs m) (second-elem (first-row m)))
(define (sf m) (first-elem (second-row m)))
(define (ss m) (second-elem (second-row m)))

(fibonacci 0)
(fibonacci 4)
(fibonacci 7)
