;; Ruby Quiz 37 - Inference Engine
;; https://github.com/codenameyau/racket-quiz
;;
;; Description:
;;   Create an truth maintenance system (TMS) for an 
;;   inference engine that is capable of answering 
;;   questions based on provided truths.
;;
;; Teach the engine the following truths:
;;   - All PLURAL-NOUN are PLURAL-NOUN.
;;   - No PLURAL-NOUN are PLURAL-NOUN.
;;   - Some PLURAL-NOUN are PLURAL-NOUN.
;;   - Some PLURAL-NOUN are not PLURAL-NOUN.
;;
;; Query the engine to answer questions:
;;   - Are all PLURAL-NOUN PLURAL-NOUN?
;;   - Are no PLURAL-NOUN PLURAL-NOUN?
;;   - Are any PLURAL-NOUN PLURAL-NOUN?
;;   - Are any PLURAL-NOUN not PLURAL-NOUN?
;;   - Describe PLURAL-NOUN.
;;
#lang racket

;;;;;;;;;;;;;;;;;;;;
;; Module Exports ;;
;;;;;;;;;;;;;;;;;;;;
(provide engine-knowledge)

;;;;;;;;;;;;;;;;;
;; Definitions ;;
;;;;;;;;;;;;;;;;;
(define engine-knowledge 1)