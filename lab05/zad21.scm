#lang scheme

(define (eval expression values)
  (cond ((boolean? expression) expression)
        ((pair? expression)
         (let ((operator (car expression))
               (operands (cdr expression)))
           (cond ((eq? operator 'and)
                  (andmap (lambda (operand) (eval operand values)) operands))
                 ((eq? operator 'or)
                  (ormap (lambda (operand) (eval operand values)) operands))
                 ((eq? operator 'not)
                  (not (eval (car operands) values)))
                 (else (error "Unknown operator" operator)))))
        (else (find-value values expression))))

(define (find-value values var)
  (cond ((boolean? var) var)
        ((eq? (caar values) var) (cdar values))
        (else (find-value (cdr values) var))))

(define (calculate-double val1 val2 operation)
  (if (eq? operation 'and)
      (and val1 val2)
      (or val1 val2)))

(define (calculate-single val)
  (not val))

(define values '((x . #f) (y . #t) (z . #f)))

(displayln (eval '(and y (not x)) values))
(displayln (eval '(and y (and (not x) z)) values))
(displayln (eval '(and y #t) values))

