#lang scheme
"11"

(define (filter-accumulate combiner null-value term a next b pred)
  (if (> a b)
      null-value
      (let ((next-a (next a)))
        (if (pred a)
            (combiner (term a)
                      (filter-accumulate combiner null-value term next-a next b pred))
            (filter-accumulate combiner null-value term next-a next b pred)))))

(define (nwd a b) (cond ((= a b) a)
                        ((> a b) (nwd (- a b) b))
                        (else (nwd a (- b a)))
                  ))

(define (square x y)
  (* x y))

