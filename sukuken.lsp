(defun sukuken(a n)
    (cond
        ((= 1 n) a)
        (t (+ (* 2 (sukuken a (- n 1))) 3))
    )
)
