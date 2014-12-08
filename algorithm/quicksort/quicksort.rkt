;; Racket Quiz - Quick sort
;; https://github.com/codenameyau/racket-quiz
;; 
;; Description:
;;   Contains implementation of quicksort for lists.
;;
#lang racket

;;;;;;;;;;;;;;;;;;;;
;; Module Exports ;;
;;;;;;;;;;;;;;;;;;;;
(provide quicksort)


;;;;;;;;;;;;;;;;;
;; Definitions ;;
;;;;;;;;;;;;;;;;;

;; (list) -> int
(define (get-pivot array)
  (list-ref array (random (length array))))


;; (list) -> list
(define (quicksort array)
  (if (null? array) array
      (let ([p (get-pivot array)])
        (append (quicksort (filter (lambda (x) (< x p)) array))
                (filter (lambda (x) (= x p)) array)
                (quicksort (filter (lambda (x) (> x p)) array))))))
