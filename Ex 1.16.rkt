#lang sicp
(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))
  

;(define (fast-expt-iter base power product)
;  (cond ((= power 0) product)
;        ((even? power) (fast-expt-iter base (/ power 2) (* product (fast-expt base (/ power 2)))))
;        (else (fast-expt-iter base (- power 1) (* product base)))))

(define (fast-expt-iter base power product)
  (cond ((= power 0) product)
        ((even? power) (fast-expt-iter base (/ power 2) (* product (fast-expt base (/ power 2)))))
        (else (fast-expt-iter base (- power 1) (* product base)))))
  
  
(define (fast-expt base power)
  (fast-expt-iter base power 1))

(fast-expt 3 0)
(fast-expt 3 1)
(fast-expt 3 2)
(fast-expt 3 3)
(fast-expt 3 4)
(fast-expt 3 5)
(fast-expt 3 6)
(fast-expt 3 7)
(fast-expt 3 8)
(fast-expt 3 9)