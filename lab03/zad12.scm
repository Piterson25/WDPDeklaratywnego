#lang scheme

"12"

(define (filter-accumulate combiner null-value term a next b pred)
  (if (> a b)
      null-value
      (let ((next-a (next a)))
        (if (pred a)
            (combiner (term a)
                      (filter-accumulate combiner null-value term (next a) next b pred))
            (filter-accumulate combiner null-value term (next a) next b pred)))))

(define (prime? n)
  (define (iter i)
    (cond ((< i 2) #f)
          ((= i 2) #t)
          ((even? i) #f)
          (else (let ((sqrt-n (floor (sqrt n))))
                  (if (> i sqrt-n)
                      #t
                      (if (= 0 (modulo n i))
                          #f
                          (iter (+ i 2))))))))
  (iter n))

(define (sum-of-prime-squares a b)
  (filter-accumulate + 0 (lambda (x) (* x x)) a (lambda (x) (+ x 1)) b prime?))


(define (nwd a b)
  (if (= b 0)
      a
      (nwd b (modulo a b))))

(define (coprime? a b)
  (= (nwd a b) 1))

(define (product-of-coprime n)
  (filter-accumulate * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) n (lambda (i) (coprime? i n))))

(sum-of-prime-squares 5 9)
(product-of-coprime 7)
