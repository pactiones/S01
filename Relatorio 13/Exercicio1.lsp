(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (e)
  (cond ((>= (erva-toxicidade e) 7) "veneno")
        ((>= (erva-toxicidade e) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (e gramas)
  (* (erva-preco-por-grama e) gramas))

(defun descreve-erva (e)
  (format nil "~a - R$~,2f - ~a"
          (erva-nome e)
          (erva-preco-por-grama e)
          (classifica-erva e)))

(defun aviso (e)
  (if (>= (erva-toxicidade e) 7)
      "Maomao vai testar a erva em si mesma antes"
      "Liberada para o paciente"))

(defun main ()
  (let* ((e1 (make-erva :nome "Flor de Cicuta" :preco-por-grama 50.0 :toxicidade 9))
         (e2 (make-erva :nome "Raiz de Mandragora" :preco-por-grama 25.5 :toxicidade 5))
         (e3 (make-erva :nome "Camomila Imperial" :preco-por-grama 10.0 :toxicidade 1))
         (ervas (list e1 e2 e3)))
    (dolist (e ervas)
      (format t "~a | ~a~%" (descreve-erva e) (aviso e)))
    (format t "~,2f~%" (preco-da-dose e2 3))))

(main)
