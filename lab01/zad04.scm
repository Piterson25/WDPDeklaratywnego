#lang scheme
(define (odd? n)
 (if (= n 0)
      #f
 (if (= n 1)
      #t
     (odd? (- n 2)))))

(define (even? n)
 (if (= n 0)
      #t
 (if (= n 1)
      #f
     (even? (- n 2)))))

(odd? 5)
(odd? 4)
(odd? 2)
(odd? 1)

(even? 4142414)
(even? 4)
(even? 2)
(even? 1)
