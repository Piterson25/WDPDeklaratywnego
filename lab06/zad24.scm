#lang scheme

"24."

"a)"
(define (plus . nums)
  (apply + nums))

(plus 5 4 3 2)

"b)"
(define (par . funcs)
  (lambda (x)
    (map (lambda (f) (f x)) funcs)))

(define (id x)
  x)

(define (double x)
  (* x 2))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

((par id square cube) 3)
((par double double) 5)

