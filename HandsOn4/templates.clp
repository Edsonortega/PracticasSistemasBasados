(deftemplate smartphone
  (slot marca)
  (slot modelo)
  (slot color)
  (slot precio)
)

(deftemplate computadora
  (slot marca)
  (slot modelo)
  (slot color)
  (slot precio)
)

(deftemplate accesorio
  (slot tipo) ;; Ejemplo: funda, mica, cargador
  (slot precio)
)

(deftemplate cliente
  (slot id)
  (slot nombre)
  (slot tipo) ;; Ejemplo: menudista, mayorista
)

(deftemplate tarjeta-credito
  (slot banco)
  (slot grupo)
  (slot fecha-expiracion)
  (slot activa)
)

(deftemplate vale
  (slot monto)
  (slot cliente-id)
)

(deftemplate orden
  (slot id)
  (slot cliente-id)
  (multislot productos)
  (slot total)
  (slot metodo-pago)
)