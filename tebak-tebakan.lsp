(defun tebak()
  (terpri)
  (princ "------------------------------------------------------------------------------------------------------------------------------------")
  (terpri)
  (princ "Oke kak, kakak akan diberikan kesempatan untuk menebak 3 kali nih. Silakan tebak angka apa yang ada di pikiran Gabriel sekarang XD")
  (terpri)
  (princ "------------------------------------------------------------------------------------------------------------------------------------")
  (terpri) (terpri)
    (loop for x from 1 to 3 do 
          (princ "Hayo, tebak angkanya berapa kak XD: ")
          (setq n (read))
          (if (= n 77) (progn (write-line "Selamat yakk kak, berhasil juga bah XD") (exit)))
          (if (and (/= n 77) (< x 3)) (progn (write-line "Aduhh salah, coba lagi kak XD.")))
    )
    (princ "Waduh, nyawa kakak sudah habis :(") (terpri)
    (terpri)
    (princ "----------------------------------------------------------------------------------------------------------------------------------")
    (terpri)
    (princ "                               Masih mau main lagi kak?? (Tekan 1 untuk main lagi, tekan 0 untuk exit)")
    (terpri)
    (princ "----------------------------------------------------------------------------------------------------------------------------------")
    (terpri)
    (princ "(1/0) : ")
    (setq a (read))
    (cond
        ((= a 1) (tebak))
        (t (exit))
    )
)

(tebak)
