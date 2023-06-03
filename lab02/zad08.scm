#lang scheme

;; a)

(define (exp b e)
  (cond ((= e 0) 1)
      (else (* b (exp b (- e 1))))))

(exp 2 6)
;; (* 2 (exp 2 5))
;; (* 2 (* 2 (exp 2 4)))
;; (* 2 (* 2 (* 2 (exp 2 3))))
;; (* 2 (* 2 (* 2 (* 2 (exp 2 2)))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (exp 2 1)))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (exp 2 0))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 1)))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 2))))))
;; (* 2 (* 2 (* 2 (* 4)))))
;; (* 2 (* 2 (* 8))))
;; (* 2 (* 16)))
;; (* 32)
;; 64

;; b)

(define (exp-help n e acc)
  (cond ((= e 0) acc)
      (exp-help n (- e 1) (* n acc))))            

(define (exp-tail n e)
      (exp-help n e 1))

(exp-tail 2 6)
;; (exp-help 2 6 1)
;; (exp-help 2 5 2)
;; (exp-help 2 4 4)
;; (exp-help 2 3 8)
;; (exp-help 2 2 16)
;; (exp-help 2 1 32)
;; (exp-help 2 0 64)
;; 64
