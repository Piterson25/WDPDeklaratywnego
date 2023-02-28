#lang scheme

"8 a)"

(define (exp b e)
  (if (= e 0)
      1
      (* b (exp b (- e 1)))))

(exp 2 6)

"8 b)"

(define (exp_help n e acc)
      (if (= e 0)
          acc
          (exp_help n (- e 1) (* n acc)))
      )            

(define (expRec n e)
      (exp_help n e 1))

(expRec 2 6)
