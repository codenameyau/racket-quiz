;; Ruby Quiz 9 - Banned Words
;; https://github.com/codenameyau/racket-quiz
;; 
;; Description:
;;   Typically a Bayes-Filter is used to probabilistic
;;   detect spam emails. Make a simple spam detector based 
;;   on whether a word is in a list of banned words.
;;
#lang racket

;;;;;;;;;;;;;;;;;;;;
;; Module Exports ;;
;;;;;;;;;;;;;;;;;;;;
(provide check-banned
         list-contains)

;;;;;;;;;;;;;;;;;
;; Definitions ;;
;;;;;;;;;;;;;;;;;
(define ban-list 
  '(
    "savings"
    "nigeria"
    ))

(define (list-contains data item)
  (if (empty? data) #f
      (or (if (equal? (car data) item) #t
              (list-contains (cdr data) item)))))

(define (check-banned word)
  (list-contains ban-list word))
