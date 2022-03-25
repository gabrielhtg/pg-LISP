; -----------------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; -----------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI

; Nama Fungsi                                                                   sumEven(l)

; sumEven : list of real --> integer
; {sumEven(l) fungsi yang menerima list dari bilangan asli dan menjumlahkan bilangan-bilangan
; genap saja}
; -----------------------------------------------------------------------------------------
; REALISASI

(defun sumEven(l)
    (cond
        ((null l) 0)
        ((/= (mod (car l) 2) 0) (+ 0 (sumEven (cdr l))))
        (t (+ (car l) (sumEven (cdr l))))
    )
)

; -----------------------------------------------------------------------------------------
; APLIKASI

; --> (sumEven '(1 2 3))
;     2
; --> (sumEven '(1 2 3 4))
;     6
; --> (sumEven '(1 2 3 4 5 6))
;     12
; --> (sumEven '(1 2 3 4 5 6 7 8 9 10))
;     30
; -----------------------------------------------------------------------------------------