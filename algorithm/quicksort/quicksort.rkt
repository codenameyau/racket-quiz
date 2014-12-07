;; Racket Quiz - Quick sort
;; https://github.com/codenameyau/racket-quiz
;; 
;; Description:
;;   Implement quicksort for lists
;;
#lang racket

;;;;;;;;;;;;;;;;;;;;
;; Module Exports ;;
;;;;;;;;;;;;;;;;;;;;
(provide quicksort)


;;;;;;;;;;;;;;;;;
;; Definitions ;;
;;;;;;;;;;;;;;;;;

;; (list int int) -> list
(define (quicksort array i k)
  (if (< i k)
      (let (p (paritition array i k))
        (quicksort array i (- p 1))
        (quicksort array (+ p 1) k))))

(define (partition array i k)
  )