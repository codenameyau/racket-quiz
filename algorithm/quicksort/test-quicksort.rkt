;; [Test] Racket Quiz - Quick sort
;; https://github.com/codenameyau/racket-quiz
#lang racket

(require rackunit
         "quicksort.rkt")

;; Test Case: base case
(check-equal? (quicksort '()) '() "Base case: empty")
(check-equal? (quicksort '(1)) '(1) "Base case: length 1")

;; Test Case: basic non-repeated single digit
(define sample-list-a '(3 4 8 2 9 7 5))
(define sorted-list-a '(2 3 4 5 7 8 9))
(check-equal? (quicksort sample-list-a) sorted-list-a "Sorting basic list")

;; Test Case: duplicated integers
(define sample-list-b '(4 4 3 3 2 2))
(define sorted-list-b '(2 2 3 3 4 4))
(check-equal? (quicksort sample-list-b) sorted-list-b "Sorting duplicated integers")

;; Test Case: negative numbers
(define sample-list-c '(3 -1 -8 0 9))
(define sorted-list-c '(-8 -1 0 3 9))
(check-equal? (quicksort sample-list-c) sorted-list-c "Sorting negative integers")

;; Test Case: floating point numbers
(define sample-list-d '(1.5 -1.5 0))
(define sorted-list-d '(-1.5 0 1.5))
(check-equal? (quicksort sample-list-d) sorted-list-d "Sorting real numbers")

;; Test Case: shuffled array of variable size
(define sample-size 20000)
(check-equal? (range sample-size) (quicksort (shuffle (range sample-size))))
