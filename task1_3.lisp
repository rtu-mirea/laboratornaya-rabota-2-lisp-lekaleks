(defun list-pos (item lst &optional (p 0) (r nil))
  (if (null lst) (if r (reverse r) 0)
      (if (equal item (car lst))
          (list-pos item (cdr lst) (+ p 1) (cons p r))
          (list-pos item (cdr lst) (+ p 1) r))))

(list-pos 29 '(29 42 2241 17665 11 0 67 23))
(list-pos 0 '(29 42 2241 17665 11 0 67 23 0 0 0))