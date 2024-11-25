(defrule prod-compra
    (orden (nombre ?name))
    =>
    (printout t ?name " fue comprado" crlf)
)

(defrule compra-iphone-con-banamex
    (cliente (customer-id ?id) (name ?name))
    (orden (categoria "smartphone") (nombre "iPhone 16") (customer-id ?id) (se-compro-con "Banamex"))
    =>
    (printout t ?name " te ofrecemos 24 meses sin intereses" crlf)
)

(defrule compra-galaxy-con-liverpool
    (cliente (customer-id ?id) (name ?name))
    (tarjetacred (grupo "Visa"))
    (orden (categoria "smartphone") (nombre "Galaxy S23") (customer-id ?id) (se-compro-con "Liverpool"))
    =>
    (printout t ?name " te ofrecemos 12 meses sin intereses" crlf)
)

(defrule compra-marca-apple
    (smartphone (marca "Apple") (modelo ?mol))
    (orden (categoria "smartphone") (nombre ?mol))
    (accesorio (nombre ?acc) (categoria "Audio"))
    =>
    (printout t "Descuentos del 10% al comprar Apple en " ?acc crlf)
)

(defrule compra-marca-asus
    (computadora (marca "Asus") (modelo ?mol))
    (orden (categoria "computadora") (nombre ?mol))
    (accesorio (nombre ?acc) (categoria "Comodidad"))
    =>
    (printout t "Llevate de descuento del 15% al comprar Asus un " ?acc crlf)
)

(defrule compra-ThinkPad-con-santander
    (cliente (customer-id ?id) (name ?name))
    (tarjetacred (grupo "MasterCard"))
    (orden (categoria "computadora") (nombre "ThinkPad X1") (customer-id ?id) (se-compro-con "Santander"))
    =>
    (printout t ?name " te ofrecemos 18 meses sin intereses" crlf)
)


(defrule compra-MacBook-iPhone-al-contado
    (cliente (customer-id ?id) (name ?name))
    (orden (nombre "MacBook Pro 14") (customer-id ?id) (se-compro-con "Al contado"))
    (orden (nombre "iPhone 16") (customer-id ?id) (se-compro-con "Al contado"))
    =>
    (printout t ?name " te ofrecemos 100 pesos en vales por cada 1000 pesos de compra" crlf)
)

(defrule compra-smartphone
    (cliente (customer-id ?id) (name ?name))
    (orden (categoria "smartphone") (customer-id ?id))
    (accesorio (nombre ?acc) (categoria "Protección"))
    =>
    (printout t ?name " te ofrecemos 15% de descuento en accesorios como " ?acc crlf)
)

(defrule compra-computadora
    (cliente (customer-id ?id) (name ?name))
    (orden (categoria "computadora") (customer-id ?id))
    (accesorio (nombre ?acc) (categoria "Entrada"))
    =>
    (printout t ?name " te ofrecemos 15% de descuento en accesorios como " ?acc crlf)
)

(defrule vales-ganados
    
    (orden (empresa ?emp) (categoria ?cat) (nombre ?mol))
    (vale (empresa ?emp) (categoria ?cat) (modelo ?mol) (monto ?monto))
    =>
    (printout t "La compra del modelo " ?mol " de " ?emp " aplico un vale por " ?monto  crlf)
)

(defrule mayorista_menudista
    (orden (nombre ?name) (qty ?qty))
    =>
    (if (>= ?qty 10) then
        (printout t "La compra de " ?name " es una compra mayorista (>= 10) cant: " ?qty  crlf)
    else
        (printout t "La compra de " ?name " es una compra menudista (< 10) cant: " ?qty  crlf)
    )
)

(defrule reducir-stock-smartphone
    ?orden <- (orden (nombre ?name) (categoria "smartphone") (qty ?qty))
    ?fact <- (smartphone (modelo ?name) (qty ?stock))
    
    =>
    (printout t "El stock del smartphone " ?name " sea reducido en: ("?qty ")" crlf)
)

(defrule reducir-stock-computadora
    ?orden <- (orden (nombre ?name) (categoria "computadora") (qty ?qty))
    ?fact <- (computadora (modelo ?name) (qty ?stock))
    =>
    (printout t "El stock de computadoras " ?name " sea reducido en: ("?qty ")" crlf)
)

(defrule reducir-stock-accesorio
    ?orden <- (orden (nombre ?name) (categoria "accesorio") (qty ?qty))
    ?fact <- (accesorio (nombre ?name) (qty ?stock))
    =>
    (printout t "El stock de accesorios " ?name " sea reducido en: ("?qty ")" crlf)
)
