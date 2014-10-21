#lang racket

(define (divides? a b) (= (remainder b a) 0))
(define (square n) (* n n))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (smallest-divisor n)
  (find-divisor n 2))
(define (prime? n)
  (= n (smallest-divisor n)))

(define (runtime) (current-inexact-milliseconds))

(define (timed-prime-test n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (runtime) start-time))
      0))
(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time)
  1)

(define (search-for-primes start count)
  (if (= count 0) 1 
      (search-for-primes (+ 1 start) (- count (timed-prime-test start)))))

(search-for-primes 10000000000000 3)
(search-for-primes 100000000000000 3)