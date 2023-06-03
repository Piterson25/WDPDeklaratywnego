#lang scheme

(define (make-konto balance)
  (define (konto operation-type)
    (cond
      ((eq? operation-type 'withdraw)
        (define (withdraw amount)
          (set! balance (- balance amount))
        )
        withdraw
      )
      ((eq? operation-type 'deposit)
        (define (deposit amount)
          (set! balance (+ balance amount))
        )
        deposit
      )
      ((eq? operation-type 'balance)
        balance
      )
    )
  )
  konto
)

(define k1 (make-konto 100))
((k1 'withdraw) 40)
(k1 'balance)
((k1 'deposit) 10)
(k1 'balance)

(define (make-konto-2 balance set-password)
  (define (konto password operation-type)
    (cond
      ((eq? operation-type 'withdraw)
        (define (withdraw amount)
          (if (eq? set-password password)
            (begin (set! balance (- balance amount)) balance)
            "incorrect password"
          )
        )
        withdraw
      )
      ((eq? operation-type 'deposit)
        (define (deposit amount)
          (if (eq? set-password password)
            (begin (set! balance (+ balance amount)) balance)
            "incorrect password"
          )
        )
        deposit
      )
      ((eq? operation-type 'balance)
        (if (eq? set-password password)
            balance
            "incorrect password"
        )
      )
    )
  )
  konto
)

(define k2 (make-konto-2 100 'password))
(k2 'password 'balance)
((k2 'password 'withdraw) 40)
((k2 'wrong-password 'withdraw) 20)
