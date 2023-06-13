/*Consultas SELECT y GROUP BY

Realizar los siguientes informes:

1. Listar las canciones cuya duración sea mayor a 2 minutos. */
select * from canciones
where milisegundos > 120000;

/*2. Listar las canciones cuyo nombre comience con una vocal. */
select * from canciones
where nombre like 'A%' or nombre like 'E%' or nombre like 'I%' or nombre like 'O%' or nombre like 'U%'; 

/* 3. Listar las canciones ordenadas por compositor en forma descendente.
Luego, por nombre en forma ascendente. Incluir únicamente aquellas
canciones que tengan compositor. */
select * from canciones
where compositor is not null
order by compositor desc, nombre asc;

/*4. a) Listar la cantidad de canciones de cada compositor. */
select compositor, count(id) from canciones
where compositor !=''
group by compositor;

/*b) Modificar la consulta para incluir únicamente los compositores que
tengan más de 10 canciones. */
select compositor, count(id) from canciones
where compositor !=''
group by compositor
having count(id)>10;

/* 5. a) Listar el total facturado agrupado por ciudad. */
select ciudad_de_facturacion, sum(total) from facturas
group by ciudad_de_facturacion;

/* b) Modificar el listado del punto (a) mostrando únicamente las ciudades
de Canadá. */
select ciudad_de_facturacion, sum(total) from facturas
where pais_de_facturacion = 'Canada'
group by ciudad_de_facturacion;
/* c) Modificar el listado del punto (a) mostrando únicamente las ciudades
con una facturación mayor a 38. */
select ciudad_de_facturacion, sum(total) from facturas
group by ciudad_de_facturacion
having sum(total) > 38;

/* d) Modificar el listado del punto (a) agrupando la facturación por país, y
luego por ciudad. */
select pais_de_facturacion, ciudad_de_facturacion, sum(total) from facturas
group by pais_de_facturacion, ciudad_de_facturacion
order by pais_de_facturacion;

/* 6. a) Listar la duración mínima, máxima y promedio de las canciones. */
select min(milisegundos), max(milisegundos), avg(milisegundos) from canciones;

/*b) Modificar el punto (a) mostrando la información agrupada por género.*/
select generos.nombre, min(milisegundos), max(milisegundos), avg(milisegundos) from canciones
inner join generos on generos.id = canciones.id_genero
group by generos.nombre;
