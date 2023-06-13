/*Clientes
1) ¿Cuántos clientes existen? */
select count(*) from clientes;

/*2) ¿Cuántos clientes hay por ciudad? */
select ciudad, count(ciudad) as 'cantidad de clientes' from clientes
group by ciudad
order by count(ciudad) desc;

/*Facturas
1) ¿Cuál es el total de transporte? */
select sum(transporte) from facturas;

/* 2) ¿Cuál es el total de transporte por EnvioVia (empresa de envío)? */
select EnvioVia, sum(Transporte) from facturas
group by EnvioVia;

/*3) Calcular la cantidad de facturas por cliente. Ordenar descendentemente por
cantidad de facturas. */
select clienteID, count(FacturaID) as 'Cantidad Facturas' from facturas
group by ClienteID
order by count(FacturaID) desc;

/* 4) Obtener el Top 5 de clientes de acuerdo a su cantidad de facturas. */
select clienteID, count(FacturaID) as 'Cantidad Facturas' from facturas
group by ClienteID
order by count(FacturaID) desc
limit 5;

/*5) ¿Cuál es el país de envío menos frecuente de acuerdo a la cantidad de facturas? */
select PaisEnvio, count(FacturaID) from facturas
group by PaisEnvio
order by count(FacturaID)
limit 1;

/*6) Se quiere otorgar un bono al empleado con más ventas. ¿Qué ID de empleado
realizó más operaciones de ventas? */
select EmpleadoID, count(FacturaID), empleados.Apellido from facturas
inner join empleados on empleados.EmpleadoID = facturas.EmpleadoID
group by EmpleadoID
order by count(FactuempleadosraID) desc
limit 1;

SELECT empleados.empleadoid, COUNT(facturaid) as 'Cantidad de ventas', concat(Nombre," ", Apellido) as 'Nombre Completo' FROM facturas
inner join empleados on empleados.EmpleadoID = facturas.EmpleadoID
GROUP BY empleadoid
ORDER BY COUNT(FacturaID) DESC;

/*Factura detalle
1) ¿Cuál es el producto que aparece en más líneas de la tabla Factura Detalle? */
select ProductoID, count(*) from facturadetalle
group by ProductoID
order by count(*) desc
limit 1;

/* 2) ¿Cuál es el total facturado? Considerar que el total facturado es la suma de
cantidad por precio unitario. */
select sum(Cantidad*PrecioUnitario) as 'Total Facturado' from facturadetalle;

/* 3) ¿Cuál es el total facturado para los productos ID entre 30 y 50? */
select ProductoID, sum(Cantidad*PrecioUnitario) as 'Total Facturado' from facturadetalle
where ProductoID between 30 and 50
group by ProductoID;


/*4) ¿Cuál es el precio unitario promedio de cada producto? */
select ProductoID, avg(PrecioUnitario) as 'Precio Promedio' from facturadetalle
group by ProductoID;

/* 5) ¿Cuál es el precio unitario máximo?*/
select max(PrecioUnitario) from facturadetalle;


/*JOIN
1) Generar un listado de todas las facturas del empleado 'Buchanan'. */
select * FROM facturas
inner join empleados on empleados.EmpleadoID = facturas.EmpleadoID
where Apellido = 'Buchanan';
/*
2) Generar un listado con todos los campos de las facturas del correo 'Speedy
Express'. */
select * from facturas
inner join correos on facturas.EnvioVia = correos.CorreoID
where Compania = 'Speedy Express';

/*3) Generar un listado de todas las facturas con el nombre y apellido de los
empleados.*/
select * FROM facturas
inner join empleados on empleados.EmpleadoID = facturas.EmpleadoID;

/*4) Mostrar un listado de las facturas de todos los clientes “Owner” y país de envío
“USA”. */
select * from facturas
inner join clientes on clientes.ClienteID = facturas.ClienteID
where clientes.Titulo = 'Owner' and facturas.PaisEnvio = 'USA';

/*5) Mostrar todos los campos de las facturas del empleado cuyo apellido sea
“Leverling” o que incluyan el producto id = “42”.*/
select * FROM facturas
inner join empleados on empleados.EmpleadoID = facturas.EmpleadoID
inner join facturadetalle on facturadetalle.FacturaID = facturas.FacturaID
where empleados.Apellido = 'Leverling' or facturadetalle.ProductoID= 42;

/*6) Mostrar todos los campos de las facturas del empleado cuyo apellido sea
“Leverling” y que incluya los producto id = “80” o ”42”. */
select * FROM facturas
inner join empleados on empleados.EmpleadoID = facturas.EmpleadoID
inner join facturadetalle on facturadetalle.FacturaID = facturas.FacturaID
where empleados.Apellido = 'Leverling' or facturadetalle.ProductoID= 42;

/*7) Generar un listado con los cinco mejores clientes, según sus importes de
compras total (PrecioUnitario * Cantidad).*/
select clientes.ClienteID, clientes.Compania, clientes.Contacto , sum(facturadetalle.Cantidad*facturadetalle.PrecioUnitario) as 'compras total' from clientes
inner join facturas on facturas.ClienteID = clientes.ClienteID
inner join facturadetalle on facturadetalle.FacturaID = facturas.FacturaID
group by clientes.ClienteID
order by 'compras total' desc
limit 5;

/*8) Generar un listado de facturas, con los campos id, nombre y apellido del cliente,
fecha de factura, país de envío, Total, ordenado de manera descendente por
fecha de factura y limitado a 10 filas.
*/

select * from facturas;

select facturas.FacturaID, clientes.Contacto, facturas.FechaFactura, facturas.PaisEnvio, sum(facturadetalle.Cantidad*facturadetalle.PrecioUnitario) as 'compras total' from facturas
inner join clientes on clientes.ClienteID = facturas.ClienteID
inner join facturadetalle on facturadetalle.FacturaID = facturas.FacturaID
group by facturas.FacturaID
order by facturas.FechaFactura desc
limit 10;