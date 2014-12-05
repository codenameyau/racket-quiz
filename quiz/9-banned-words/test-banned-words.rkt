;; [Test] Ruby Quiz 9 - Banned Words
;; https://github.com/codenameyau/racket-quiz
#lang racket
(require rackunit
         "banned-words.rkt")

;; Test Case: basic words
(check-equal? (check-banned "savings") #t "Should be banned")
(check-equal? (check-banned "school") #f "Should not be banned")

;; Test Case: capitilization
(check-equal? (check-banned "Nigeria") #t "Caps should not matter")

;; Test Case: sentences
(check-equal? (check-banned "good sentence") #f "Sentence without banned words")
(check-equal? (check-banned "great savings") #t "Sentence with banned words")
