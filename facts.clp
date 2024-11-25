(deffacts smartphones
   (smartphone (marca "Apple") (modelo "iPhone 16") (precio 45000) (color "Negro") (storage "256GB") (qty 200))
   (smartphone (marca "Samsung") (modelo "Galaxy S23") (precio 6000) (color "Blanco") (storage "128GB") (qty 200))
   (smartphone (marca "Google") (modelo "Pixel 8 Pro") (precio 7000) (color "Verde") (storage "512GB") (qty 200))
   (smartphone (marca "Xiaomi") (modelo "Redmi Note 13") (precio 4000) (color "Azul") (storage "128GB") (qty 200))
   (smartphone (marca "OnePlus") (modelo "11 Pro") (precio 3000) (color "Gris") (storage "256GB") (qty 200))
)

(deffacts computadoras
   (computadora (marca "Apple") (modelo "MacBook Pro 14") (precio 55000) (color "Plata") (storage "1TB") (qty 200))
   (computadora (marca "Dell") (modelo "XPS 15") (precio 11000) (color "Negro") (storage "512GB") (qty 200))
   (computadora (marca "HP") (modelo "Spectre x360") (precio 14000) (color "Dorado") (storage "1TB") (qty 200))
   (computadora (marca "Asus") (modelo "ROG Zephyrus G14") (precio 24000) (color "Blanco") (storage "1TB") (qty 200))
   (computadora (marca "Lenovo") (modelo "ThinkPad X1") (precio 9000) (color "Negro") (storage "512GB") (qty 200))
)

(deffacts accesorios
   (accesorio (nombre "Funda para teléfono") (categoria "Protección") (precio 200) (qty 200))
   (accesorio (nombre "Cargador inalámbrico") (categoria "Energía") (precio 150) (qty 200))
   (accesorio (nombre "Auriculares Bluetooth") (categoria "Audio") (precio 300) (qty 200))
   (accesorio (nombre "Teclado mecánico") (categoria "Entrada") (precio 950) (qty 200))
   (accesorio (nombre "Mouse gaming") (categoria "Entrada") (precio 600) (qty 200))
   (accesorio (nombre "Mouse Pad") (categoria "Comodidad") (precio 200) (qty 200))
)

(deffacts tarjetascred
   (tarjetacred (banco "BBVA") (grupo "Visa") (exp-date "12-27"))
   (tarjetacred (banco "Santander") (grupo "MasterCard") (exp-date "05-26"))
   (tarjetacred (banco "Banamex") (grupo "American Express") (exp-date "11-28"))
   (tarjetacred (banco "Liverpool") (grupo "Visa") (exp-date "04-27"))
)

(deffacts vales
    (vale (empresa "Sams" ) (categoria "smartphone") (modelo "iPhone 16") (monto 1000) (exp-date "2025-08-24"))
    (vale (empresa "BestBuy") (categoria "computadora") (modelo "MacBook Pro 14") (monto 2000) (exp-date "2025-05-15"))
    (vale (empresa "Amazon") (categoria "accesorio") (modelo "Auriculares Bluetooth") (monto 150) (exp-date "2024-12-31"))
    (vale (empresa "Walmart") (categoria "smartphone") (modelo "Galaxy S23") (monto 1200) (exp-date "2024-10-20"))
    (vale (empresa "Coppel") (categoria "computadora") (modelo "XPS 15") (monto 1800) (exp-date "2024-09-15"))
    (vale (empresa "Liverpool") (categoria "accesorio") (modelo "Cargador inalámbrico") (monto 50) (exp-date "2024-11-01"))
)

(deffacts clientes
    (cliente  (customer-id 1) (name Fred)  (address  "calle azul 1987") (phone "5434534623"))
   	(cliente  (customer-id 2) (name Susan) (address "calle verde 367") (phone "6433444510"))
   	(cliente  (customer-id 3) (name Andy)  (address "calle morada 1645") (phone "3465454176"))
	(cliente  (customer-id 4) (name Alice) (address "calle blanca 2019") (phone "5465464345"))
)
