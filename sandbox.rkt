#lang sicp
(define (double n) (* 2 n))
(double 2)
(define (triple n) (* 3 n))
(triple 3)

(define (absolute x)
  (cond ((> x 0) x)
        ((= x 0) x)
        ((< x 0) (- x))))

(absolute 1)
(absolute 5)
(absolute 0)
(absolute -4)
