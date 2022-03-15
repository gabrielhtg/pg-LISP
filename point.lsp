(defun makepoint (x y)
    (list x y)
)

(defun absis(p)
    (car p)
)

(defun ordinat(p)
    (car (reverse p))
)

(defun isonsby(p)
    (cond
        ((= (absis p) 0) "Berada pada sumbu y")
        (t "Tidak berapa pada sumbu y")
    )
)

(defun isequal(p1 p2)
    (cond
        ((and (= (absis p1) (absis p2)) (= (ordinat p1) (ordinat p2))) "Equal")
        (t "Not Equal")
    )
)

(defun translasisby(p n)
    (list
        (absis p) (+ (ordinat p) n) 
    )
)

(defun jarak(p1 p2)
    (sqrt (+ (* (- (absis p1) (absis p2)) (- (absis p1) (absis p2))) (* (- (ordinat p1) (ordinat p2)) (- (ordinat p1) (ordinat p2)))))
)
