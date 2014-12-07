;; [Test] Racket Quiz - Quick sort
;; https://github.com/codenameyau/racket-quiz
#lang racket

(require rackunit
         "quicksort.rkt")

;; Test Case: basic non-repeated single digit
(define sample-list-a '(3 4 8 2 9 7 5))
(define sorted-list-a '(2 3 4 5 7 8 9))
(check-equal? (quicksort sample-list-a) sorted-list-a "Basic sorting")

;; Test Case: shuffled array
(define sample-size 200)
(check-equal? (range sample-size) (quicksort (shuffle (range sample-size))))
