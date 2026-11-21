(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro   1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((filtrados (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                                   lista))
         (textos (mapcar (lambda (d)
                           (format nil "~a - ~,2f" (dominio-nome d) (recompensa-final d)))
                         filtrados)))
    textos))

(defun main ()
  (let* ((d1 (make-dominio :nome "Jardim de Cecilia" :elemento :hydro :dificuldade 2 :mora 1000))
         (d2 (make-dominio :nome "Palacio Oculto" :elemento :pyro :dificuldade 3 :mora 1500))
         (d3 (make-dominio :nome "Corte de Areia" :elemento :electro :dificuldade 4 :mora 2000))
         (d4 (make-dominio :nome "Pico de Vindagnyr" :elemento :cryo :dificuldade 5 :mora 2500))
         (d5 (make-dominio :nome "Vale das Lembrancas" :elemento :anemo :dificuldade 1 :mora 800))
         (dominios (list d1 d2 d3 d4 d5))
         (copia (copy-dominio d1)))
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))
    (format t "~,2f~%" (reduce #'+ (mapcar #'recompensa-final dominios)))
    (setf (dominio-mora copia) 5000)
    (format t "~a~%" (dominio-mora copia))
    (format t "~a~%" (dominio-mora d1))))

(main)
