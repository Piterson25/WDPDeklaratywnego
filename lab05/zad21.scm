#lang scheme

"21."

(define (eval expression values)
  (let ((typ (car expression)))
    (cond ((eq? typ 'and)
           (and (eval (cadr expression) values)
                (eval (caddr expression) values)))
          ((eq? typ 'or)
           (or (eval (cadr expression) values)
               (eval (caddr expression) values)))
          ((eq? typ 'not)
           (not (eval (cadr expression) values)))
          ((eq? typ 'variable)
           (let ((var (cadr expression)))
             (cdr (assoc var values))))
          ((eq? typ 'constant)
           (cadr expression)))))

(define values '((x . #f) (y . #t) (z . #f)))

(eval '(and y (not x)) values)

(eval '(and y (and (not x) z)) values)

(eval '(and y #t) values)
