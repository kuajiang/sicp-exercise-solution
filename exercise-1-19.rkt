#lang racket

(define (fib n)
  (define (even? b)
    (= (remainder b 2) 0))
  (define (halve b)
    (/ b 2))
  (define (fn-t a b p q n)
    (cond ((= n 0) b)
          ((even? n)
           (fn-t 
            a
            b
            (+ (* p p) (* q q))
            (+ (* 2 p q) (* q q))
            (halve n)))
          (else (fn-t
                 (+ (* b q) (* a q) (* a p))
                 (+ (* b p) (* a q))
                 p
                 q
                 (- n 1)))))
  (fn-t 1 0 0 1 n))
    
    
    
    
    
    
    