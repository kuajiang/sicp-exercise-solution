#lang racket

(define (fn b n)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (fn-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (fn-iter a (* b b) (/ n 2)))
          (else (fn-iter (* a b) b (- n 1)))))
  (fn-iter 1 b n))
  