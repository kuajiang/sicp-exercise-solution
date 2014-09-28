#lang racket

(define (pascal row col)
  (cond ((= row 0) (cond ((= col 0) 1) 
                         (else 0)))
        (else (+ 
               (pascal (- row 1) (- col 1))
               (pascal (- row 1) col)))))