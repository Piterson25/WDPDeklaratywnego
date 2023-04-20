#lang scheme

(define (counting-version f)
  (let ((count 0))
    (lambda (x)
      (cond ((eq? x 'how-often) count)
            ((eq? x 'reset) (begin (set! count 0) count))
            (else (begin (set! count (+ count 1)) (f x)))))))

(define (square x)
  (* x x))

(define sq (counting-version square))
(sq 5)
(sq 7)
(sq 'how-often)
(sq 'reset)
(sq 'how-often)
