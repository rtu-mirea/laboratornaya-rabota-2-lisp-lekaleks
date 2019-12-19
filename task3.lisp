;Сжатие
(defun comparelist (val acc)
    (if (> acc 1) (list acc val) val))

(defun accumulator (val acc lst)
    (cond ((null lst) (cons (comparelist val acc) nil))
        ((eq val (car lst)) (accumulator val (1+ acc) (cdr lst)))
        (t (cons (comparelist val acc) (accumulator (car lst) 1 (cdr lst))))))

(defun compress (lst)
    (cond ((null (cdr lst)) '())
    (t (accumulator (car lst) 1 (cdr lst)))))

(compress(list 1 1 1 1 0 1 0 0 0 0 0 0 1 1))


;Разжатие
(defun deepdecompress (lst)
    (if (zerop (car lst)) nil
        (cons (second lst) (deepdecompress (list (1- (car lst)) (second lst))))))

(defun decompress (lst)
    (cond ((null lst) nil)
        ((atom (car lst)) (cons (car lst) (decompress (cdr lst))))
        ((consp (car lst)) (append (deepdecompress (car lst)) (decompress (cdr lst))))))

(decompress (list (list 4 1) 0 1 (list 6 0) (list 2 1)))