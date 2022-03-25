(defun makep(a b)
    (list a '/ b) 
)

(defun pemb(p)
    (car p)
)

(defun peny(p)
    (car (reverse p))
)

(defun addp(p1 p2)
    (list
        (+ (* (pemb p1) (peny p2)) (* (pemb p2) (peny p1)))

        '/

        (* (peny p1) (peny p2))

        '=

        (/ (+ (* (pemb p1) (peny p2)) (* (pemb p2) (peny p1))) (* (peny p1) (peny p2)))
    )
)

(defun subp(p1 p2)
    (list
        (- (* (pemb p1) (peny p2)) (* (pemb p2) (peny p1)))
        
        '/

        (* (peny p1) (peny p2))

        '=

        (/ (- (* (pemb p1) (peny p2)) (* (pemb p2) (peny p1))) (* (peny p1) (peny p2)))
    )
)

(defun mulp(p1 p2)
    (list
        (* (pemb p1) (pemb p2))

        '/

        (* (peny p1) (peny p2))

        '=

        (/ (* (pemb p1) (pemb p2)) (* (peny p1) (peny p2)))
    ) 
)

(defun divp(p1 p2)
    (list
        (* (pemb p1) (peny p2))

        '/

        (* (peny p1) (pemb p2))

        '=

        (/ (* (pemb p1) (peny p2)) (* (peny p1) (pemb p2)))
    )
)

(defun iseqp(p1 p2)
    (cond
        ((= (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2))) "Equal")
        (t "Not Equal")
    )
)

(defun isltp(p1 p2)
    (cond
        ((< (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2))) "True")
        (t "False")
    )
)
