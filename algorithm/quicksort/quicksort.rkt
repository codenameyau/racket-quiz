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

;; (list) -> int
(define (pivot array)
  (list-ref array (random (length array))))

;; (list int int) -> list
(define (quicksort array)
  (if (empty? array) array
      (let ([p (pivot array)])
        (append
         (quicksort (filter (lambda (x) (< x p)) array))
         (list p)
         (quicksort (filter (lambda (x) (> x p)) array))
        ))))
