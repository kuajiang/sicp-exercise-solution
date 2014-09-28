#lang racket


(define (fn-rec n)
  (cond ((< n 3) n)
        (else (+ (fn-rec (- n 1)) (* 2 (fn-rec (- n 2))) (* 3 (fn-rec (- n 3)))))))


(define (fn-iter n)
  (define (do-iter v v_1 v_2 counter max-count)
    (cond ((= counter max-count) v)
          (else (do-iter (+ v (* 2 v_1) (* 3 v_2)) v v_1 (+ counter 1) max-count))))
  (cond ((< n 3) n)
        (else (do-iter 2 1 0 2 n))))

