#lang sicp
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

 (define (good-enough? guess x) 
   (= (improve guess x) guess)) 

(define (cubert-iter guess x) 
  (if (good-enough? guess x)
       guess
       (cubert-iter (improve guess x) x)))

(define (cubert x)
  (cubert-iter 1.1 x))

(cubert -2)
