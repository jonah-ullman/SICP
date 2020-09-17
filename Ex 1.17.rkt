#lang sicp
(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(double 4)
(halve 4)
(even? 1)
(even? 2)

;(define (* a b)
; (define (iter a b c)
;    (if (= b 0)
;        c
;        (iter a (- b 1) (+ c a))))
;  (iter a b 0))

(define (* a b)
  (define (iter a b c)
    (cond ((= b 0) c)
          ((even? b) (iter (double a) (halve b) c))
          (else (iter a (- b 1) (+ a c)))))
  (iter a b 0))

(* 4 4)
(* 2 9)
(* 15 2)