#lang scheme

(define (root f a b)
  (cond ((and (< (f (/ (+ a b) 2)) 0.00001) (> (f (/ (+ a b) 2)) -0.00001)) (/ (+ a b) 2.0))
        ((< (f (/ (+ a b) 2)) 0) (root f (/ (+ a b) 2) b))
        (else (root f a (/ (+ a b) 2)))))

(root (lambda (x) (+ (* 2 x) 4)) -10 10)
