(defun ExpertSystem()
  (princ "Bienvenido al sistema experto en lisp para escoger una carrera")
  (terpri)
 (terpri)
  (princ "Te gusta la matematica?[S]i/[N]o: ")
  (setq a (read))
  (if (equal a 'S)
    (setq a t)
    (setq a nil))
  ;preparar segunda pregunta
  (if a
   (princ "Te gusta la quimica?[S]i/[N]o: ")
   (princ "Te consideras artista?[S]i/[N]o: "))

  (setq b (read))
  (if (equal b 'S)
     (setq b t)
     (setq b nil))

  ;preparar tercera pregunta
  (cond ((and a b)
         (princ "Te gusta la biologia?[S]i/[N]o: "))
   ((and a (not b))
    (princ "Te gusta programar?[S]i/[N]o: "))
   ((and (not a) b)
    (princ "Te gusta la musica?[S]i/[N]o: "))
   ((not (and a b))
    (princ "Te gusta ensenar?[S]i/[N]o: "))
    )
    (setq c (read))
    (if (equal c 'S)
       (setq c t)
       (setq c nil))
  ;mostrar resultados
 (terpri)
  (cond
    ((and a b c)
      (princ "La carrera para ti es Biotecnologia"))
    ((and a b (not c))
      (princ "La carrera para ti es Ingenieria Quimica"))
    ((and a (not b) c)
      (princ "La carrera para ti es ingenieria en computacion"))
    ((and a (not b) (not c))
      (princ "La carrera para ti es ingenieria civil"))
    ((and (not a) b c)
      (princ "La carrera para ti es Composicion y Produccion Musical"))
    ((and (not a) b (not c))
      (princ "La carrera para ti es Diseno de Producto e Innovacion"))
    ((and (not a) (not b) c)
      (princ "La carrera para ti es Profesorado en ingles"))
    ((and (not a) (not b) (not c))
      (princ "La carrera para ti es Psicologia")))
    (terpri))


(terpri)
(ExpertSystem)
(terpri)
