#lang racket

(define (* a b)
  (define (even? b)
    (= (remainder b 2) 0))
  (define (double v)
    (+ v v))
  (define (halve b)
    (/ b 2))
  (cond ((= b 1) a)
        ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))
  