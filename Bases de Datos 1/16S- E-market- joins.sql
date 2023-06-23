/*Reportes parte I - Repasamos INNER JOIN
Realizar una consulta de la facturación de e-market. Incluir la siguiente información:
● Id de la factura
● fecha de la factura
● nombre de la empresa de correo
● nombre del cliente
● categoría del producto vendido
● nombre del producto
● precio unitario
● cantidad
1. Listar todas las categorías junto con información de sus productos. Incluir todas
las categorías aunque no tengan productos.*/
SELECT * FROM CATEGORIAS
left JOIN productos on productos.CategoriaID = categorias.CategoriaID;

/*2. Listar la información de contacto de los clientes que no hayan comprado nunca
en emarket.*/
select clientes.ClienteID, clientes.Compania, clientes.Contacto , count(facturas.FacturaID) as 'contador facturas' from clientes
left join facturas on facturas.ClienteID = clientes.ClienteID
group by clientes.ClienteID
having count(facturas.FacturaID) = 0;

/*3. Realizar un listado de productos. Para cada uno indicar su nombre, categoría, y
la información de contacto de su proveedor. Tener en cuenta que puede haber
productos para los cuales no se indicó quién es el proveedor.*/
select productos.ProductoNombre, categorias.CategoriaNombre, proveedores.Contacto from productos
left join categorias on categorias.CategoriaID = productos.CategoriaID
left join proveedores on proveedores.ProveedorID = productos.ProveedorID;

/*4. Para cada categoría listar el promedio del precio unitario de sus productos.*/
select categorias.CategoriaID, categorias.CategoriaNombre , round(avg(facturadetalle.PrecioUnitario),2) as 'Precio Promedio' from categorias
left join productos on productos.CategoriaID = categorias.CategoriaID
right join facturadetalle on facturadetalle.ProductoID = productos.ProductoID
group by categorias.CategoriaID
order by categorias.CategoriaID asc;

/*5. Para cada cliente, indicar la última factura de compra. Incluir a los clientes que
nunca hayan comprado en e-market.*/
select clientes.ClienteID, clientes.Compania, clientes.Contacto, clientes.Titulo, max(facturas.FechaFactura) as 'Ultima compra' from clientes
left join facturas on facturas.ClienteID = clientes.ClienteID
group by clientes.ClienteID;

/* 6. Todas las facturas tienen una empresa de correo asociada (enviovia). Generar un
listado con todas las empresas de correo, y la cantidad de facturas
correspondientes. Realizar la consulta utilizando RIGHT JOIN.*/
select correos.CorreoID, count(facturas.FacturaID), correos.Compania from facturas
right join correos on correos.CorreoID = facturas.EnvioVia
group by correos.CorreoID;
