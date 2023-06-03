#lang scheme

(define (mlist l) 
    (if (empty? l) 
        `()
        (mcons (car l) (mlist (cdr l)))
    )
)

(define (append! l m)
    (cond ((and (empty? l) (empty? m)) `())
        ((empty? l) (mcons (mcar m) (append! l (mcdr m))))
        (else (mcons (mcar l) (append! (mcdr l) m)))
    )
)

(define (create-stack) (mcons '() '()))
(define (put-on-stack stack item)
    (if (empty? stack)
        (set-mcar! stack item)
        (set-mcdr! stack (append! (mcdr stack) (mcons item '())))
    )
)
(define (last-elem stack)
    (if (empty? (mcdr stack))
        (mcar stack)
        (last-elem (mcdr stack))
    )
)
(define (no-last-elem stack acc)
    (if (empty? (mcdr stack))
        acc
        (no-last-elem (mcdr stack) (mcons (mcar stack) acc))
    )
)
(define (pop stack)
    (if (empty? (mcdr stack))
        (begin
            (displayln "Cannot pop from empty stack.")
            null
        )
        (let ([popped-elem (last-elem stack)])
            (set-mcdr! stack (no-last-elem (mcdr stack) '()))
            popped-elem
        )
    )
)
(define (clear-stack stack)
    (set-mcdr! stack '())
)

(define my-stack (create-stack))
(displayln my-stack)

(put-on-stack my-stack 1)
(displayln my-stack)

(put-on-stack my-stack 2)
(displayln my-stack)

(define popped-elem (pop my-stack))
(displayln my-stack)
(displayln popped-elem)

(set! popped-elem (pop my-stack))
(displayln my-stack)
(displayln popped-elem)

(set! popped-elem (pop my-stack))
(displayln my-stack)
(displayln popped-elem)

(put-on-stack my-stack 1)
(put-on-stack my-stack 2)
(put-on-stack my-stack 3)
(displayln my-stack)

(clear-stack my-stack)
(displayln my-stack)
