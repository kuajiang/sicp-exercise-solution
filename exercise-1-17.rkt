#lang racket

(define (fn a b)
  (define (even? b)
    (= (remainder b 2) 0))
  (define (fn-iter v a b)
    (cond ((= b 0) v)
          ((even? b) (fn-iter v (+ a a) (/ b 2)))
          (else (fn-iter (+ v a) a (- b 1)))))
  (fn-iter 0 a b))