;; [Test] Racket Quiz - Quick sort
;; https://github.com/codenameyau/racket-quiz
#lang racket

(require rackunit
         "quicksort.rkt")

;; Test Case: basic non-repeated single digit
(define sample-list-a '(3 4 8 2 9 7 5))
(define sorted-list-a '(2 3 4 5 7 8 9))
(check-equal? (quicksort sample-list-a) sorted-list-a "Sorting basic list")

;; Test Case: duplicated integers
(define sample-list-b '(4 4 3 3 2 2))
(define sorted-list-b '(2 2 3 3 4 4))
(check-equal? (quicksort sample-list-b) sorted-list-b "Sorting duplicated integers")

;; Test Case: shuffled array
(define sample-size 200)
(check-equal? (range sample-size) (quicksort (shuffle (range sample-size))))
