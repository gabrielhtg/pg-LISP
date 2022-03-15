(defun fx2(x)
    (* x x)
)

(defun fy2(y)
    (* y y)
)

(defun jml-fx4(x y)
    (+ (* (fx2 x) (fx2 x)) (* (fy2 y) (fy2 y)))
)
