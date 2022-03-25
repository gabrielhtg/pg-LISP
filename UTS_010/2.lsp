; -----------------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; -----------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI

; Nama Fungsi                                                         isTriangle(a b c)

; isTriangle : integer --> boolean
; {isTriangle(a b c) fungsi yang menerima 3 parameter bertipe integer yang merupakan sisi-
; sisi segitiga dan mengembalikan boolean yang menyatakan apakah segitiga  dapat dibuat
; berdasarkan 3 buah sisi tersebut}
; -----------------------------------------------------------------------------------------
; REALISASI

(defun isTriangle(a b c)
    (setq sementara (list a b c))
    (setq sementara1 (sort sementara #'<))  
    (cond
        ((> (+ (car sementara1) (car (cdr sementara1))) (car (reverse sementara1))) t)
        (t nil)
    )
)
; -----------------------------------------------------------------------------------------
; APLIKASI

; --> (isTriangle 2 3 4)
;     t
; --> (isTriangle 1 3 3)
;     t
; --> (isTriangle 1 2 3)
;     nil
; --> (isTriangle 5 1 6)
;     nil
; -----------------------------------------------------------------------------------------