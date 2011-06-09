#!/usr/bin/newlisp

(load-unittest)

(define (counter key number , count-fizzOrBuzz)
  (define (count-fizzOrBuzz number fizzorbuzz)
    (/ number fizzorbuzz) 
    )
  (if (= key 'fizz)
      (count-fizzOrBuzz number 3)
      (count-fizzOrBuzz number 5)    
      )
  )

(define-test (test_count-fizz)
  (assert= 0 (counter 'fizz 1))
  (assert= 1 (counter 'fizz 3))
  (assert= 2 (counter 'fizz 6))
  (assert= 3 (counter 'fizz 9))
  (assert= 5 (counter 'fizz 15))
  )

(define-test (test_count-buzz)
  (assert= 0 (counter 'buzz 1))
  (assert= 1 (counter 'buzz 5))
  (assert= 3 (counter 'buzz 15))
  )

(UnitTest:run-all 'MAIN)

(exit)