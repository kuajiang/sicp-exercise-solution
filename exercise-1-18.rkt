#lang racket

(define (* a b)
  (define (even? b)
    (= (remainder b 2) 0))
  (define (double v)
    (+ v v))
  (define (halve b)
    (/ b 2))
  (define (*-iter v a b)
    (cond ((= b 0) v)
          ((even? b) (*-iter v (double a) (halve b)))
          (else (*-iter (+ v a) a (- b 1)))))
  (*-iter 0 a b))