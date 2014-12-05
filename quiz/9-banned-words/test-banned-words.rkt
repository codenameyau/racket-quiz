;; [Test] Ruby Quiz 9 - Banned Words
;; https://github.com/codenameyau/racket-quiz
#lang racket
(require rackunit
         "banned-words.rkt")

(check-equal? (check-banned "savings") #t "Should be banned")
(check-equal? (check-banned "school") #f "Should not be banned")
