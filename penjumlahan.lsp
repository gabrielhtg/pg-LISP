(defun penjumlahan ()
    (princ "Masukkan angka pertama: ")
    (setq a (read))
    (princ "Masukkan angka kedua: ")
    (setq b (read))
    (princ "Hasilnya adalah: ")
    (princ (+ a b))
    (terpri) (terpri)
    (penjumlahan)
  )

(penjumlahan)
