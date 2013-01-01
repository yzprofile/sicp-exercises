(defun A (x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        ((A (- x 1) (A x (- y 1))))))

(A 1 8) ; 256

(A 2 4) ; 65536

(A 3 3) ; 65536

(defun f (n) (A 0 n)) ; f = 2n

(defun g (n) (A 1 n)) ; g = 2^n

(defun h (n) (A 2 n)) ; h = 2^(2^(n-1))
