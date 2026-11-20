(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - ~a - ~am - ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper" :bioma "Safe Shallows" :profundidade 20 :perigo :inofensiva)
   (make-criatura :nome "Stalker" :bioma "Kelp Forest" :profundidade 80 :perigo :agressiva)
   (make-criatura :nome "Reaper" :bioma "Crash Zone" :profundidade 250 :perigo :Desconhecido)
   (make-criatura :nome "Ghost Leviathan" :bioma "Lost River" :profundidade 800 :perigo :leviata)))

(defun main ()
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))
  (let ((profundas (abaixo-de 100 *catalogo*)))
    (dolist (texto (mapcar #'descreve-criatura profundas))
      (format t "~a~%" texto))
    (format t "~a~%" (length profundas))))

(main)
