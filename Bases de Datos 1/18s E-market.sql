/*Ejercicio 1

1. Crear una vista para poder organizar los envíos de las facturas. Indicar número
de factura, fecha de la factura y fecha de envío, ambas en formato dd/mm/yyyy,
valor del transporte formateado con dos decimales, y la información del
domicilio del destino incluyendo dirección, ciudad, código postal y país, en una
columna llamada Destino. */
create view envios_facturas as
select facturas.FacturaID as Numero, date_format(facturas.FechaFactura, '%d/%m/%Y') as 'FechaFactura', date_format(facturas.FechaEnvio, '%d/%m/%Y') as 'FechaEnvio', 
format(facturas.Transporte, 2) as Transporte, concat(facturas.DireccionEnvio, ' - ', facturas.CiudadEnvio, ' - ', facturas.CodigoPostalEnvio, ' - ', facturas.PaisEnvio) as Destino from facturas;

/*2. Realizar una consulta con todos los correos y el detalle de las facturas que
usaron ese correo. Utilizar la vista creada.*/
select correos.CorreoID, correos.Compania, envios_facturas.Numero, envios_facturas.FechaFactura, envios_facturas.FechaEnvio, envios_facturas.Transporte, envios_facturas.Destino from correos
left join facturas on facturas.EnvioVia = correos.CorreoID
inner join envios_facturas on envios_facturas.Numero = facturas.FacturaID;

/*3. ¿Qué dificultad o problema encontrás en esta consigna? Proponer alguna
alternativa o solución.
/* la tabla de vistas no contiene informacion relativa a correos y hay que volver a utilizar consulta a facturas para asociar la consulta, se puede mejorar la vista agregando a la vista el campo de Correos y 
otras columnas que sean claves foraneas.*/
create view envios_facturas_mejorado as
select facturas.FacturaID as Numero, date_format(facturas.FechaFactura, '%d/%m/%Y') as 'FechaFactura', date_format(facturas.FechaEnvio, '%d/%m/%Y') as 'FechaEnvio', 
format(facturas.Transporte, 2) as Transporte, concat(facturas.DireccionEnvio, ' - ', facturas.CiudadEnvio, ' - ', facturas.CodigoPostalEnvio, ' - ', facturas.PaisEnvio) as Destino, 
facturas.ClienteID, facturas.EmpleadoID, facturas.EnvioVia, facturas.CodigoPostalEnvio from facturas;

/*Ejercicio 2

1. Crear una vista con un detalle de los productos en stock. Indicar id, nombre del
producto, nombre de la categoría y precio unitario.*/
create view detalle_productos_en_stock as
select productos.ProductoID, productos.ProductoNombre, categorias.CategoriaNombre, productos.PrecioUnitario from productos
inner join categorias on categorias.CategoriaID = productos.CategoriaID
where productos.UnidadesStock > 0;

/*2. Escribir una consulta que liste el nombre y la categoría de todos los productos
vendidos. Utilizar la vista creada.*/
select * from facturadetalle
left join detalle_productos_en_stock on detalle_productos_en_stock.ProductoID = facturadetalle.ProductoID;

/*3. ¿Qué dificultad o problema encontrás en esta consigna? Proponer alguna
alternativa o solución.*/
/*en la lista de elementos de la vista creada se encuentran SOLO los productos en stock, cuando se compara con las unidades vendidas
no está considerando productos que eventualmente fueron vendidos pero que tienen stock 0, esto lleva a que cuando realizamos la consulta
no pueda asociar el nombre y la categoria de algunos productos vendidos, arrojando null.
Para mejorarlo deberiamos de crear una vista sin restricciones de stock*/

create view detalle_productos_en_stock_mejorada as
select productos.ProductoID, productos.ProductoNombre, categorias.CategoriaNombre, productos.PrecioUnitario from productos
inner join categorias on categorias.CategoriaID = productos.CategoriaID;

select * from facturadetalle
left join detalle_productos_en_stock_mejorada on detalle_productos_en_stock_mejorada.ProductoID = facturadetalle.ProductoID;
