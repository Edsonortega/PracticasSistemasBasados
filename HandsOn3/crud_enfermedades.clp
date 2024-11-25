; Funcion para agregar una nueva enfermedad
(deffunction agregar-enfermedad (?nombre ?tipo $?sintomas)
    (assert (enfermedad (nombre ?nombre) (tipo ?tipo) (sintomas $?sintomas)))
    (printout t "Enfermedad " ?nombre " agregada con éxito." crlf))

; Function para actualizar una enfermedad
(deffunction actualizar-enfermedad (?nombre ?tipo $?sintomas)
    (do-for-fact ((?e enfermedad)) (eq ?e:nombre ?nombre)
        (modify ?e (tipo ?tipo) (sintomas $?sintomas))
        (printout t "Enfermedad " ?nombre " actualizada con éxito." crlf)
        (return TRUE)
    )
    (printout t "Enfermedad " ?nombre " no encontrada." crlf)
    (return FALSE))

; Funcion para borrar una enfermedad
(deffunction borrar-enfermedad (?nombre)
    (do-for-fact ((?e enfermedad)) (eq ?e:nombre ?nombre)
        (retract ?e)
        (printout t "Enfermedad " ?nombre " borrada con éxito." crlf)
        (return TRUE)
    )
    (printout t "Enfermedad " ?nombre " no encontrada." crlf)
    (return FALSE))