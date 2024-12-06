#lang racket

(struct item (name price))

(define items
  (list (item "Laptop" 1000)
        (item "Phone" 500)
        (item "Headphones" 150)))

(define (filter-items-by-budget)
  (let ([budget (read)]) 
    (filter (lambda (i) (<= (item-price i) budget)) items)))

(for-each (lambda (item) (displayln (item-name item))) (filter-items-by-budget))
