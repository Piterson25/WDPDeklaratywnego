#lang scheme

(define (counting-version f)
  (define times 0)
    (lambda (x) 
        (cond
            ((eq? x 'how-often) times)
            ((eq? x 'reset) (begin (set! times 0) times))
            (else (begin (set! times (+ times 1)) (f x)))
        )
    ))

(define (square x)
  (* x x))

(define sq (counting-version square))
(sq 5)
(sq 7)
(sq 'how-often)
(sq 'reset)
(sq 'how-often)
