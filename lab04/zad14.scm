#lang scheme

(define (average x y)
  (/ (+ x y) 2))

(define (root f a b)
  (let ((fa (f a b))
        (fb (f b a)))
    (cond ((< (abs (- a b)) 0.0001) (average a b))
          ((= fa 0) a)
          ((= fb 0) b)
          ((< (* fa (f (average a b) b)) 0)
           (root f a (average a b)))
          (else (root f (average a b) b)))))

(root average 2 4) ; wynik: 3
