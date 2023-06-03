#lang scheme

(define (square a) (* a a))

(define (plus . l)
(define (help-plus l)
  (if (empty? l) 
      0 
      (+ (car l) (help-plus (cdr l)))))
  (help-plus l))

(define (par . f)
    (lambda (x) 
        (reverse (help-par x f '()))
    )
)

(define (help-par x f acc)
  (if (empty? f) 
      acc 
      (help-par x (cdr f) (cons ((car f) x) acc)))
)

(define (cube a)
  (* a a a))

((par identity square cube) 3)
