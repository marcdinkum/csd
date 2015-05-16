;********************************************************************
;       (c) Copyright 2013, Hogeschool voor de Kunsten Utrecht
;                       Hilversum, the Netherlands
;********************************************************************
;
; File name	: rotate.rkt
; System name	: SCEME: Scheme Music Composition Environment
;
; Description   : Scheme list rotation functions
;
; Authors       : Marc Groenewegen, Daan van Hasselt
; E-mail        : marc.groenewegen@kmt.hku.nl, daan.vanhasselt@kmt.hku.nl
;
;*********************************************************************
;
; Examples:
;  at end of file
;
;*********************************************************************

#lang racket

(provide rotate-right)
(provide rotate-left)
(provide roteer-links)
(provide roteer-rechts)

(define (rotate-left lst [number 1])
  (define mod-number (modulo number (length lst)))
  (append (list-tail lst mod-number) (take lst mod-number)))

; rotate right is the same as reversed rotate left of the reversed list
(define (rotate-right lst [number 1])
  (reverse (rotate-left (reverse lst) number)))

(define roteer-links rotate-left)
(define roteer-rechts rotate-right)

; examples
;(rotate-right '(a b c d e f))
;(rotate-left '(a b c d e f))
;(rotate-right '(a b c d e f) 2)
;(rotate-left '(a b c d e f ) 2)

