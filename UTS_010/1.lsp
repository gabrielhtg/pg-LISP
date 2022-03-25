; ------------------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; ------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI

; Nama Fungsi                                                         sumOfSquares(l)

; sumOfSquares : list of integer --> integer
; {sumOfSquares(l) fungsi yang menerima sebuah list of integer dan mengembalikan sebuah
; integer yang merupakan penjumlahan dari kuadrat elemen list input}
; ------------------------------------------------------------------------------------------
; REALISASI

(defun sumOfSquares(l)
    (cond
        ((null l) 0)
        (t (+ (* (car l) (car l)) (sumOfSquares (cdr l))))
    )
)

; ------------------------------------------------------------------------------------------
; APLIKASI

; --> (sumOfSquares '(1 2 3))
;     14
; --> (sumOfSquares '(1 2 4))
;     21
; --> (sumOfSquares '(1 5 2))
;     30
; ------------------------------------------------------------------------------------------