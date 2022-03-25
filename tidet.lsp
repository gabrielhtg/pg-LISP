; bulan yang memiliki tanggal sampai 31 (1 3 5 7 8 10 12)
; bulan yang meiliki tanggal sampai 30 (4 6 9 11)
; syarat kabisat
    ; - harus dapat dibagi 4 untuk yang bukan kelipatan 100
    ; - harus dapat dibagi 100 dan dibagi 400

; syarat bukan kabisat
;     - tidak dapat dibagi 4 tapi bisa dibagi 100
;     - tidak dapat dibagi 100 dan tidak dapat dibagi 400

(defun makedate(dd mm yy)
    (cond 
        ((or (< dd 1) (< mm 1) (< yy 1)) "Tidak valid!") ; ketika tanggal, bulan dan tahun kurang dari 0
        ((and (> dd 31) (= mm (find mm '(1 3 5 7 8 10 12)))) "Tidak valid!") ; ketika tanggal > 31 untuk bulan yang 31
        ((and (> dd 30) (= mm (find mm '(4 6 9 11)))) "Tidak valid")
        ((and (> dd 29) (= mm 2) (= (mod yy 100) 0) (= (mod yy 400) 0)) "Tidak valid!") ; ketika tanggal > 29 untuk kabisat
        ((and (> dd 29) (= mm 2) (= (mod yy 4) 0) (/= (mod yy 100) 0)) "Tidak valid!")  ; ketika tanggal > 29 untuk kabisat
        ;((and (> dd 28) (= mm 2) (/= (mod yy 4) 0) (= (mod yy 100) 0)) "Tidak valid!") ; ketika tanggal > 28 untuk non kabisat
        ((and (> dd 28) (= mm 2)) "Tidak valid!")
        ;((and (> dd 28) (= mm 2) (/= (mod yy 100) 0) (/= (mod yy 400) 0)) "Tidak valid!") ; ketika tanggal > 28 untuk non kabisat
        (t (list dd mm yy)) ; untuk tanggal normal
    )
)

(defun day (d)
    (car d)
)

(defun month(d)
    (car (cdr (cdr d)))
)

(defun year(d)
    (car (reverse d))
)

; (defun nextday(d)
;     (list
;         ; BAGIAN INI UNTUK TANGGAL

;         ; tanggal yang lebih dari 31
;     )
; )
