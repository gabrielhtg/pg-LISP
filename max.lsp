(defun max2(v x)
    (cond
        ((> v x) v)
        (t x)
    )
)

(defun max3(v x y)
    (cond
        ((> (max2 v x) y) (max2 v x))
        (t y)
    )
)

(defun max4(v x y z)
    (cond
        ((> (max3 v x y) z) (max3 v x y))
        (t z)
    )
)
