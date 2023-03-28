#lang scheme

"23."

(define (real-part z)
  (cond ((rectangular? z)
         (real-part-rectangular (contents z)))
        ((polar? z)
         (real-part-polar (contents z)))))

(define (imag-part z)
  (cond ((rectangular? z)
         (imag-part-rectangular (contents z)))
        ((polar? z)
         (imag-part-polar (contents z)))))

(define (magnitude z)
  (cond ((rectangular? z)
         (magnitude-rectangular (contents z)))
        ((polar? z)
         (magnitude-polar (contents z)))))

(define (angle z)
  (cond ((rectangular? z)
         (angle-rectangular (contents z)))
        ((polar? z)
         (angle-polar (contents z)))))

(define (type datum) (car datum))

(define (real-part-polar z) (* (car z) (cos (cdr z))))

(define (imag-part-polar z) (* (car z) (sin (cdr z))))

(define (square x)
  (* x x))

(define (magnitude-rectangular z)
  (sqrt (+ (square (car z)) (square (cdr z)))))

(define (angle-rectangular z) (atan (cdr z) (car z)))

(define (contents datum) (cdr datum))

(define (real-part-rectangular z) (car z))

(define (imag-part-rectangular z) (cdr z))

(define (polar? z) (eq? (type z) 'polar))

(define (rectangular? z) (eq? (type z) 'rectangular))

(define (magnitude-polar z) (car z))

(define (angle-polar z) (cdr z))

(define (+c z1 z2)
  (make-rectangular (+ (real-part z1) (real-part z2))
                    (+ (imag-part z1) (imag-part z2))))

(define (make-rectangular-2 x y)
  (define (dispatch m)
    (cond ((eq? m 'real-part-2) x)
          ((eq? m 'imag-part-2) y)
          ((eq? m 'magnitude-2) (sqrt (+ (square x) (square y))))
          ((eq? m 'angle-2) (atan y x))
          (else (error "Unknown message in make-rectangular: " m ))))
  dispatch)

(define (make-polar-2 x y)
  (define (dispatch m)
    (cond ((eq? m 'real-part-2) (* x (cos y)))
          ((eq? m 'imag-part-2) (* x (sin y)))
          ((eq? m 'magnitude-2) x)
          ((eq? m 'angle-2) (atan x y))
          (else (error "Unknown message in make-polar: " m))))
  dispatch)

(define (real-part-2 obj) (obj 'real-part-2))
(define (imag-part-2 obj) (obj 'imag-part-2))
(define (magnitude-2 obj) (obj 'magnitude-2))
(define (angle-2 obj) (obj 'angle-2))

(define (+c-2 z1 z2)
  (make-rectangular-2 (+ (real-part-2 z1) (real-part-2 z2))
                    (+ (imag-part-2 z1) (imag-part-2 z2))))

(rectangular? '(1 5))
(polar? '(7 3))

(define z1 (make-rectangular-2 -1 3)) 
(define z2 (make-polar-2 2 -2))

(angle-2 (+c-2 z1 z2))
