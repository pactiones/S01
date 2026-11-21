(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica :nome (garota-magica-nome g)
                      :escuridao (if (>= quantidade (garota-magica-escuridao g))
                                     0
                                     (- (garota-magica-escuridao g) quantidade))
                      :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((g1 (make-garota-magica :nome "Homura" :escuridao 40 :bruxas 12))
         (g2 (make-garota-magica :nome "Mami" :escuridao 25 :bruxas 8))
         (g3 (make-garota-magica :nome "Kyoko" :escuridao 60 :bruxas 15))
         (grupo (list g1 g2 g3))
         (g4 (make-garota-magica :nome "Madoka" :escuridao 5 :bruxas 1))
         (grupo-novo (cons g4 grupo))
         (g3-purificada (purifica g3 30)))
    (format t "~a~%" (escuridao-total grupo))
    (format t "~a~%" (total-de-bruxas grupo))
    (format t "~a~%" (escuridao-total grupo))
    (format t "~a~%" (escuridao-total grupo-novo))
    (format t "~a~%" (garota-magica-escuridao g3))
    (format t "~a~%" (garota-magica-escuridao g3-purificada))))

(main)
