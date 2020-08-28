#lang sicp
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f2 n)
  (define (f-iter a b c count)
    (if (> count n) c
        (f-iter b c (+ c (* 2 b) (* 3 a)) (+ count 1))))
  (if (< n 3) n
      (f-iter 0 1 2 3)))
        
(f 1)
(f2 1)
(f 4)
(f2 4)
(f 8)
(f2 8)
  
   