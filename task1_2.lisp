(defun del (n lst)
  (cond ((null lst) nil)
        ((zerop n) (cdr lst))
        (t (cons (car lst) (del (1- n) (cdr lst))))))

(del 3 '(29 42 2241 17665 11 0 67 23))