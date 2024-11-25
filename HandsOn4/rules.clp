(defrule iphone15-banamex
  (orden (productos ?productos&:(member$ iPhone15 ?productos)) (metodo-pago tarjeta))
  (tarjeta-credito (banco banamex))
  =>
  (printout t "Oferta: Compra el iPhone15 con Banamex y obtén 24 meses sin intereses." crlf)
)

(defrule samsung-liverpool
  (orden (productos ?productos&:(member$ "Samsung Note21" ?productos)) (metodo-pago tarjeta))
  (tarjeta-credito (banco liverpool) (grupo visa))
  =>
  (printout t "Oferta: Compra el Samsung Note21 con Liverpool VISA y obtén 12 meses sin intereses." crlf)
)

(defrule vales-macbookair-iphone16
  (orden (productos ?productos&:(and (member$ macbookpro ?productos) (member$ iPhone16 ?productos))) (total ?total&:(> ?total 0)) (metodo-pago contado))
  =>
  (bind ?vales (/ ?total 1000))
  (printout t "Oferta: Has recibido " ?vales " vales por tu compra." crlf)
)

(defrule descuento-accesorios
  (orden (productos ?productos&:(member$ ?smartphone ?productos)) (metodo-pago ?metodo))
  (smartphone (modelo ?smartphone))
  =>
  (printout t "Oferta: Obtén 15% de descuento en accesorios al comprar un " ?smartphone crlf)
)

(defrule clasificacion-clientes
  (orden (productos ?productos) (cliente-id ?cliente-id))
  (length$ ?productos ?qty)
  =>
  (if (<= ?qty 10)
      then (printout t "Cliente ID " ?cliente-id " es MENUDISTA (compró " ?qty " productos)." crlf)
      else (printout t "Cliente ID " ?cliente-id " es MAYORISTA (compró " ?qty " productos)." crlf))
)

(defrule macbook-hsbc
  (orden (productos ?productos&:(member$ macbook ?productos)) (metodo-pago tarjeta))
  (tarjeta-credito (banco hsbc))
  =>
  (printout t "Oferta: Compra cualquier MacBook con HSBC y obtén 18 meses sin intereses." crlf)
)

(defrule airpods-santander
  (orden (productos ?productos&:(member$ airpods ?productos)) (metodo-pago tarjeta))
  (tarjeta-credito (banco santander) (grupo mastercard))
  =>
  (printout t "Oferta: Compra AirPods con Santander Mastercard y llévate un estuche gratis." crlf)
)

(defrule descuento-computadoras
  (orden (productos ?productos&:(member$ ?computadora ?productos)) (total ?total&:(> ?total 15000)))
  (computadora (modelo ?computadora))
  =>
  (printout t "Oferta: Obtén 10% de descuento en tu compra de " ?computadora crlf)
)

(defrule regalo-tablet
  (orden (productos ?productos) (total ?total&:(> ?total 30000)))
  =>
  (printout t "¡Felicidades! Por tu compra mayor a $30,000, te llevas una tablet gratis." crlf)
)

(defrule descuento-acumulativo
  (orden (productos $?productos) (cliente-id ?id))
  (cliente (id ?id) (tipo mayorista))
  =>
  (bind ?descuento (* (length$ ?productos) 2))
  (printout t "Cliente mayorista: Obtienes un " ?descuento "% de descuento adicional." crlf)
)

(defrule garantia-extendida
  (orden (productos ?productos&:(member$ ?producto ?productos)) (metodo-pago contado))
  (or (smartphone (modelo ?producto)) (computadora (modelo ?producto)))
  =>
  (printout t "¡Enhorabuena! Tu " ?producto " tiene 1 año adicional de garantía por pago en efectivo." crlf)
)

(defrule combo-smartphone-accesorio
  (orden (productos ?productos&:(member$ ?smartphone ?productos)))
  (smartphone (modelo ?smartphone))
  =>
  (printout t "Oferta combo: Llévate una funda y un protector de pantalla al 50% por la compra de tu " ?smartphone crlf)
)

(defrule puntos-dobles
  (orden (productos $?productos) (metodo-pago tarjeta))
  (tarjeta-credito (grupo ?grupo))
  =>
  (printout t "¡Puntos dobles en tu tarjeta " ?grupo " por tu compra de " (length$ ?productos) " productos!" crlf)
)

(defrule descuento-cumpleanos
  (orden (cliente-id ?id))
  (cliente (id ?id) (fecha-nacimiento ?fecha))
  (test (= (nth$ 2 (str-explode ?fecha "/")) (nth$ 2 (str-explode (str-cat (time)) "/"))))
  =>
  (printout t "¡Feliz cumpleaños! Disfruta de un 20% de descuento en tu compra." crlf)
)

(defrule envio-gratis
  (orden (total ?total&:(> ?total 5000)))
  =>
  (printout t "¡Envío gratis en tu compra por ser mayor a $5,000!" crlf)
)

(defrule descuento-estudiante
  (orden (cliente-id ?id))
  (cliente (id ?id) (tipo estudiante))
  =>
  (printout t "Descuento especial del 10% para estudiantes en toda la tienda." crlf)
)

(defrule reembolso-precio-mas-bajo
  (orden (productos ?productos&:(member$ ?producto ?productos)) (fecha ?fecha-compra))
  (producto (nombre ?producto) (precio-actual ?precio-actual&:(< ?precio-actual ?precio-compra)))
  (test (< (- (time) ?fecha-compra) 30)) ; Menos de 30 días
  =>
  (bind ?diferencia (- ?precio-compra ?precio-actual))
  (printout t "Oferta de reembolso: Te devolvemos $" ?diferencia " por la bajada de precio en " ?producto crlf)
)

(defrule regalo-por-recomendacion
  (orden (cliente-id ?id) (total ?total&:(> ?total 10000)))
  (cliente (id ?id) (recomendado-por ?recomendador))
  =>
  (printout t "¡Regalo sorpresa para ti y para " ?recomendador " por la recomendación!" crlf)
)

(defrule descuento-segunda-compra
  (orden (cliente-id ?id) (fecha ?fecha))
  (orden (cliente-id ?id) (fecha ?fecha2&:(< ?fecha2 ?fecha)))
  (test (< (- ?fecha ?fecha2) 30)) ; Segunda compra en menos de 30 días
  =>
  (printout t "¡15% de descuento en tu segunda compra del mes!" crlf)
)

(defrule sorteo-viaje
  (orden (total ?total&:(> ?total 20000)))
  =>
  (printout t "¡Tu compra te da un boleto para el sorteo de un viaje a Silicon Valley!" crlf)
)
