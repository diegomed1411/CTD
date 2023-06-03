/*Categorías y productos*/

/*1. Queremos tener un listado de todas las categorías.*/
select * FROM CATEGORIAS;

/*2. Cómo las categorías no tienen imágenes, solamente interesa obtener un
listado de CategoriaNombre y Descripcion. */
select CategoriaNombre, Descripcion from CATEGORIAS;

/*3. Obtener un listado de los productos.*/
select * FROM PRODUCTOS;

/*4. ¿Existen productos discontinuados? (Discontinuado = 1).*/
select * FROM PRODUCTOS
where DISCONTINUADO = 1;

/*5. Para el viernes hay que reunirse con el Proveedor 8. ¿Qué productos son
los que nos provee?*/
select * FROM PRODUCTOS
where ProveedorID = 8;
/*6. Queremos conocer todos los productos cuyo precio unitario se encuentre
entre 10 y 22.*/
select * FROM PRODUCTOS
where PrecioUnitario between 10 AND 22;

/*7. Se define que un producto hay que solicitarlo al proveedor si sus unidades
en stock son menores al Nivel de Reorden. ¿Hay productos por solicitar?*/
select * FROM PRODUCTOS
where UnidadesStock < NivelReorden;

/*8. Se quiere conocer todos los productos del listado anterior, pero que
unidades pedidas sea igual a cero.*/
select * FROM PRODUCTOS
where UnidadesPedidas = 0;

/*Clientes*/
/*1. Obtener un listado de todos los clientes con Contacto, Compania, Título,
País. Ordenar el listado por País.*/
select Contacto, Compania, Titulo, Pais from clientes
order by Pais; 

/*2. Queremos conocer a todos los clientes que tengan un título “Owner”.*/
select * from clientes
where Titulo = 'Owner';

/*3. El operador telefónico que atendió a un cliente no recuerda su nombre.
Solo sabe que comienza con “C”. ¿Lo ayudamos a obtener un listado con
todos los contactos que inician con la letra “C”?*/
select * from clientes
where Contacto like'C%';

/*FACTURAS */
/*1. Obtener un listado de todas las facturas, ordenado por fecha de factura
ascendente.*/
select * from facturas
order by FechaFactura asc;

/*2. Ahora se requiere un listado de las facturas con el país de envío “USA” y
que su correo (EnvioVia) sea distinto de 3.*/
select * from facturas
where PaisEnvio = "USA" and EnvioVia !=3;

/*3. ¿El cliente 'GOURL' realizó algún pedido?*/
select * from facturas
where ClienteID = 'GOURL';

/*4. Se quiere visualizar todas las facturas de los empleados 2, 3, 5, 8 y 9.*/
select * from facturas
where EmpleadoID = 2 or EmpleadoID = 3 or EmpleadoID = 5 or EmpleadoID = 8 or EmpleadoID = 9;

/*Consultas queries ML - Parte II
En esta segunda parte vamos a intensificar la práctica de consultas
SELECT, añadiendo ALIAS, LIMIT y OFFSET.

Productos*/

/*1) Obtener el listado de todos los productos ordenados descendentemente
por Precio Unitario.*/
select * from productos
order by PrecioUnitario desc;

/*2) Obtener el listado de TOP 5 de Productos cuyo Precio Unitario es el más
“Caro”.*/
select * from productos
order by PrecioUnitario desc
limit 5;

/*3) Obtener un top 10 de los productos con más unidades en Stock.*/
select * from productos
order by UnidadesStock desc
limit 10;

/*FacturaDetalle

1) Obtener un listado de FacturaID, Producto, Cantidad.*/
select FacturaID, ProductoID, Cantidad from facturadetalle;

/*2) Ordenar el listado anterior por Cantidad descendentemente.*/
select FacturaID, ProductoID, Cantidad from facturadetalle
order by Cantidad desc;

/*3) Filtrar el listado solo para aquellos productos donde la cantidad se
encuentre entre 50 y 100.*/
select * from facturadetalle
where Cantidad between 50 and 100;

/*4) En otro listado nuevo, obtener un listado con los siguientes nombres de
columnas: NroFactura (FacturaID), Producto (ProductoID), Total
(PrecioUnitario*Cantidad)*/

select FacturaID as NroFactura, ProductoID as Producto, PrecioUnitario, Cantidad, ROUND((PrecioUnitario*Cantidad),2) as Total 
from facturadetalle;

