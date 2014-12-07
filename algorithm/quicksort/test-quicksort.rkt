;; [Test] Quick sort
;; https://github.com/codenameyau/racket-quiz
#lang racket

(require rackunit
         "quicksort.rkt")

;; Test Case: basic non-repeated single digit
(define sample-list-a '(3 4 8 2 9 7 5))
(define sorted-list-a '(2 3 4 5 7 8 9))
(check-equal? (quicksort sample-list-a) sorted-list-a "Basic sorting")

;; Test Case: shuffled array
(define sample-list-b (shuffle (range 20)))
(define sorted-list-b (quicksort sample-list-b))