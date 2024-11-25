; Regla para buscar por sintoma
(defrule buscar-por-sintoma
    (buscar-sintoma ?s)
    (enfermedad (nombre ?n) (tipo ?t) (sintomas $? ?s $?))
    =>
    (printout t "La enfermedad " ?n " (" ?t ") tiene el síntoma " ?s "." crlf))

; Regla para buscar por tipo
(defrule buscar-por-tipo
    (buscar-tipo ?t)
    (enfermedad (nombre ?n) (tipo ?t))
    =>
    (printout t "La enfermedad " ?n " es de tipo " ?t "." crlf))

; Regla para listar todos los sintomas 
(defrule listar-sintomas
    (listar-sintomas ?n)
    (enfermedad (nombre ?n) (sintomas $?s))
    =>
    (printout t "Los síntomas de " ?n " son: " (implode$ ?s) crlf))