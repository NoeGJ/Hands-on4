(deftemplate smartphone
	(slot marca)
	(slot modelo)
	(slot precio)
	(slot color)
	(slot storage)
	(slot qty)	
)

(deftemplate computadora
	(slot marca)
	(slot modelo)
	(slot precio)
	(slot color)
	(slot storage)
	(slot qty)	
)

(deftemplate accesorio
	(slot nombre)
	(slot categoria)
	(slot precio)
	(slot qty)
)

(deftemplate tarjetacred
	(slot banco)
	(slot grupo)
	(slot exp-date)
)

(deftemplate vale
	(slot empresa)
	(slot categoria)
	(slot modelo)
	(slot monto)
	(slot exp-date)
)

(deftemplate cliente
  	(slot customer-id)
	(multislot name)
  	(multislot address)
  	(slot phone)
)

(deftemplate orden
	(slot categoria)
	(slot nombre)
	(slot empresa)
	(slot qty)
	(slot customer-id)
	(slot se-compro-con)
)