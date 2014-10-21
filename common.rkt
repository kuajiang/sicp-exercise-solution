#lang racket

(define (divides? a b) (= (remainder b a) 0))
(define (square n) (* n n))