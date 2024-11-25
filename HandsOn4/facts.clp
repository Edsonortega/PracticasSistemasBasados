(deffacts productos
  (smartphone (marca apple) (modelo iPhone15) (color rojo) (precio 17500))
  (smartphone (marca apple) (modelo iPhone16) (color negro) (precio 20000))
  (computadora (marca apple) (modelo macbookpro) (color gris) (precio 47000))
  (audifonos (marca apple) (modelo airpods) (color blanco) (precio 4500))
  (accesorio (tipo funda) (precio 500))
  (accesorio (tipo mica) (precio 300))
)

(deffacts clientes
  (cliente (id 1) (nombre "Edson") (tipo menudista))
  (cliente (id 2) (nombre "Miriam") (tipo mayorista))
)

(deffacts ordenes
  (orden (id 1001) (cliente-id 1) (productos (iPhone15 funda mica)) (total 18300) (metodo-pago tarjeta))
  (orden (id 1002) (cliente-id 2) (productos (macbookpro)) (total 47000) (metodo-pago tarjeta))
  (orden (id 1003) (cliente-id 1) (productos (iPhone16)) (total 20000) (metodo-pago contado))
  (orden (id 1004) (cliente-id 2) (productos (iPhone15)) (total 17500) (metodo-pago contado))
  (orden (id 1005) (cliente-id 2) (productos (iPhone15 macbook iPhone16)) (total 84500) (metodo-pago tarjeta))
  (orden (id 1006) (cliente-id 1) (productos (airpods)) (total 4500) (metodo-pago tarjeta))
)

(deffacts tarjetas
  (tarjeta-credito (banco banamex) (grupo visa) (fecha-expiracion "2024-12-31"))
  (tarjeta-credito (banco liverpool) (grupo visa) (fecha-expiracion "2025-05-15"))
  (tarjeta-credito (banco hsbc) (grupo visa) (fecha-expiracion "2029-09-20"))
  (tarjeta-credito (banco santander) (grupo mastercard) (fecha-expiracion "2030-11-15"))
)

(deffacts vales
  (vale (monto 0) (cliente-id 1))
)
