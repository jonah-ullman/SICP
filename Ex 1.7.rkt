#lang sicp
(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x) (if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(average 1.0 (/ 0.00001 1.0))
(average 0.500005 (/ 0.00001 0.500005))
(average 0.250012499900001 (/ 0.00001 0.250012499900001))
(average 0.1250262489500585 (/ 0.00001 0.1250262489500585))
(average 0.06255311607712873 (/ 0.00001 0.06255311607712873))
(square (sqrt 0.00001))

'break


(average 1.0 (/ 9876543219876543 1.0))
(average 4938271609938272.0 (/ 9876543219876543 4938271609938272.0))
(average 2469135804969137.0 (/ 9876543219876543 2469135804969137.0))


