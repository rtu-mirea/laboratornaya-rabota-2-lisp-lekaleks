(defun insert (val target n) 
    (cond ((= n 0) (push val target)) 
        ((> n (length target)) nil) 
            (t 
                (let ((start (subseq target 0 n)) 
                    (end (subseq target n (position (last target) target)))) 
    (append start (list val) end))))) 
 
(insert 910 (list 29 42 2241 17665 11 0 67 23) 5)