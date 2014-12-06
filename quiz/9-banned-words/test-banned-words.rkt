;; [Test] Ruby Quiz 9 - Banned Words
;; https://github.com/codenameyau/racket-quiz
#lang racket
(require rackunit
         "banned-words.rkt")

;; Test Case: base case
(check-equal? (check-banned "") #f "Empty should not be banned")

;; Test Case: basic words
(check-equal? (check-banned "savings") #t "Should be banned")
(check-equal? (check-banned "school") #f "Should not be banned")

;; Test Case: case insensitive
(check-equal? (check-banned "nigeria") #t "Caps should not matter")
(check-equal? (check-banned "Nigeria") #t "Caps should not matter")

;; Test Case: sentences
(check-equal? (check-banned "good sentence is good.") #f "Sentence without banned words")
(check-equal? (check-banned "great savings") #t "Sentence with banned words")

;; Test Case: punctuation
(check-equal? (check-banned "great-savings") #t "Punctuations should be ignored")
(check-equal? (check-banned "great savings!") #t "Punctuations should be ignored")
