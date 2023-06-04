select pais, count(pais) from clientes
group by pais;

select * from clientes;

select id_genero, count(id_genero) from canciones
group by id_genero;

select sum(total) from facturas;

select id_album, avg(milisegundos) from canciones
group by id_album;

select min(bytes) from canciones;

select id_cliente, sum(total) from facturas
group by id_cliente;