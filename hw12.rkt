;Blake Willoughby
;CSE240 - T/TH - 12:00 p.m.
;HW12

;1. Write a function to find the factorial of a number.
;
;1.1. Follow a rcursive procedure to obtain (fact n).
;1.2. Use comments to indicate in the code the four steps of the fantastic approach.
(define fact (lambda (a);The size n problem
               (if (= a 0);Stopping condition if input is zero the answer is 1
                   1;return 1
               (if (= a 1);Stopping condition
                   1;return 1
                   (if (> a 1);The size m problem
                       (* a (fact (- a 1)));constructing the size n solution from the size m solution
                       )))))

;2. Create a recursive procedure called (findMin lst), where lst is a list of numbers.
;   The procedure should return the minimum number in the list.
;   If the given list is empty, you must print "empty list." 
(define findMin (lambda (lst);size n problem
                  (if (null? list);stopping condition if list is empty
                      (display "empty list");return "empty list"
                      (if (= (length lst) 1);stopping condition if the length of the list is one
                          (car lst);return only element in the list
                          (if (< (cadr lst) (car lst));size m problem
                                  (findMin (cdr lst));constructing the size n solution from the size m solution
                                  (findMin (append (list (car lst)) (cddr lst)));constructing the size n solution from the size m solution
                                  )))))
                  
                              
;3. Create a recursive procedure called (alternate lst1 lst2 lst3) that
;   returns a list with alternating values from the 3 given lists.

(define alternate (lambda (lst1 lst2 lst3);The size n problem
                    (if (= (length lst1) 1);Stopping condition if each list is of length 1
                        (append lst1 lst2 lst3);append the single element lists
                        (append (alternate (list (car lst1)) (list (car lst2)) (list (car lst3))) (alternate (cdr lst1) (cdr lst2) (cdr lst3)));;The size m problem and constructing the size n solution from the size m solution
                        )))

;4. Create a recursive procedure called (pairs lst1 lst2) that returns a list of pairs
;   from the two given lists.

(define pairs (lambda (lst1 lst2);The size n problem
                (if (= (length lst1) 1);Stopping condition if each list is of length 1
                    (list (cons (car lst1) (car lst2)));Return the single elements joined int a single pair and placed into a list
                    (append (pairs (list (car lst1)) (list (car lst2))) (pairs (cdr lst1) (cdr lst2)));;The size m problem and constructing the size n solution from the size m solution
                    )))
;5. Create a recursive procedure called (sumOdds lst), where lst is a list of numbers.
;   The procedure should return the sum of all odd numbers on the list.
;   When the list is empty the result should be 0.
;
;5.1. Use a named procedure called (sumOdds lst) to implement task

(define sumOdds (lambda (lst);The size n problem
                  (if (null? lst);Stopping condition if the the list is empty
                      0;return 0 because there are no odd numbers
                      (if (= (remainder (car lst) 2) 0);The size m problem
                          (sumOdds (cdr lst));constructing the size n solution from the size m solution
                          (+ (car lst) (sumOdds (cdr lst)));constructing the size n solution from the size m solution
                          ))))

;5.2. Use an unnamed procedure to implement task where the list '(1 3 4 5 6 -7) is the argument.

((lambda (lst);The size n problem
   (if (null? lst);Stopping condition if the list is empty
       0;return 0 because there are no odd numbers
       (if (= (remainder (car lst) 2) 0);The size m problem
           (sumOdds (cdr lst));constructing the size n solution from the size m solution
           (+ (car lst) (sumOdds (cdr lst)));constructing the size n solution from the size m solution
           ))) '(1 3 4 5 6 -7))