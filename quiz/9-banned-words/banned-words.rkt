;; Ruby Quiz 9 - Banned Words
;; https://github.com/codenameyau/racket-quiz
;; 
;; Description:
;;   Typically a probabilistic Bayes-Filter is used to detect
;;   spam emails. Make a simple spam detector based on whether 
;;   a word is in a list of banned words.
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


;; (list string) -> boolean
(define (list-contains data item)
  (if (empty? data) #f
      (or (if (equal? (car data) item) #t
              (list-contains (cdr data) item)))))


;; (string) -> boolean
(define (banned-word? word)
  (list-contains ban-list (string-downcase word)))


;; (list) -> boolean
(define (banned-words? words)
  (if (empty? words) #f
      (or (banned-word? (car words))
          (banned-words? (cdr words)))))


;; (string) -> boolean
(define (check-banned sentence) 
  (banned-words? (regexp-match* #px"\\w+" sentence)))


