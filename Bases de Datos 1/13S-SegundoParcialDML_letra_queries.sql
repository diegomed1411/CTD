/*Enunciado
La institución bancaria EL DESCUBIERTO, nos pidió una segunda
reunión. Para este hito, se nos solicita presentar una serie de reportes
sobre los datos almacenados en la base de datos que hemos
construido. En base a lo solicitado, vamos a trabajar en la producción de
los siguientes reportes.
Consigna - CheckPoint II
1. Listar todos los clientes cuyo nombre comience con la letra "A". Se debe mostrar
id como "Número de cliente", apellido y nombre. */
select id as 'Numero de cliente', apellido, nombre from cliente
where nombre like 'A%';

/*2. Mostrar el número de la sucursal con domicilio "Ramón Freire Serrano 7410". */
select numero from sucursal
where domicilio = 'Ramón Freire Serrano 7410';

/* 3. Se requiere saber cuál es el mayor importe prestado */
select max(importe) from prestamo;

/* 4. Listar los pagos realizados con números 10, 14, 27, 45. */
select * from pago
where id in (10, 14, 27, 45);

/* 5. Calcular el total de los pagos realizados para el préstamo número cuarenta. El
reporte debe tener dos columnas denominadas "Número de préstamo" y el
"Total pagado". */
select prestamo_id as 'Número de préstamo', sum(importe) as 'Total pagado' from pago
where prestamo_id = 40;

/*6. Listar los empleados que no pertenezcan a la sucursal dos y que la fecha de alta
del contrato sea mayor que 5/09/21 o igual a 25/06/21. Ordenar por alta de
contrato. */
select * from empleado
where sucursal_numero != 2 and alta_contrato_laboral > '2021-09-05' or alta_contrato_laboral = '2021-06-25';
/*
Base de datos I - CheckPoint II - Pág. 1

7. Listar los pagos realizados con importe entre $1030,25 a $1666,66 (ordenarlos
por el importe pagado de mayor a menor).*/
select * from pago
where importe between 1030.25 and 1666.66
order by importe desc;

/* 8. Mostrar el quinto pago realizado con menor importe. */
select * from pago
order by importe asc
limit 1
offset 4;
/*9. Mostrar el préstamo con mayor importe. Este reporte debe contener el número
del préstamo, la fecha de otorgamiento y el importe. */
select id, fecha_otorgado, importe from prestamo
order by importe desc
limit 1;

/* 10. Mostrar las diez cuentas bancarias con menor saldo. Este reporte debe contener
el número de cuenta, saldo y el código del tipo de cuenta. */
select numero, saldo, cuenta_tipo_id from cuenta
order by saldo asc
limit 10;

/* 11. Listar los préstamos otorgados entre 10/07/21 al 10/08/21 (ordenarlos por fecha
de otorgamiento)*/
select * from prestamo
where fecha_otorgado between '2021-07-10' and '2021-08-10'
order by fecha_otorgado;

/* 12. Listar en forma ordenada las cuentas bancarias que tengan un descubierto
otorgado superior o igual a $8999,80. */
select * from cuenta
where descubierto_otorgado > 8999.80
order by descubierto_otorgado;

/* 13. Listar todos los empleados cuyo apellido termine con los caracteres "do". Se
debe mostrar el legajo, apellido, nombre y email. */
select legajo, apellido, nombre, email from empleado
where apellido like '%do';

/* 14. Se desea conocer cuál es el promedio de los saldos de las cajas de ahorro */
select * from cuenta_tipo;
/*caja de ahorro contiene id 1 en la tabla cuenta_tipo */
select avg(saldo) from cuenta
where cuenta_tipo_id = 1;

/* 15. Mostrar el tercer préstamo con mayor importe. */
select * from prestamo
order by importe desc
limit 1
offset 2;

/* 16. Calcular la cantidad de cuentas que tiene la sucursal número cinco. El reporte
debe tener dos columnas denominadas "Sucursal" y el "Cantidad de Cuentas".*/
select sucursal_numero as 'Sucursal', count(sucursal_numero) as 'Cantidad de Cuentas' from cuenta
where sucursal_numero = 5;

/*17. Mostrar todas las ciudades que contengan una palabra de cinco caracteres, pero
el tercer carácter debe ser igual a "n".*/
select * from ciudad
where nombre like '__n__';

/*18. Modificar el tipo de cuenta bancaria "Cuenta Corriente" a "Cuenta Especial" */
update cuenta_tipo set tipo = 'CUENTA ESPECIAL' 
where tipo = 'CUENTA CORRIENTE';

/*19. En la fecha de hoy, agregar en la sucursal número nueve al empleado Quinteros
Arias Raúl Alejandro con domicilio en Av. 25 de mayo 7410 - Pilar - Buenos Aires,
mail: quiteros2021bs@gmail.com, teléfono móvil: '+5491154000745'. */
insert into empleado (legajo, sucursal_numero , nombre, apellido, domicilio, ciudad_id, email, telefono_movil, alta_contrato_laboral)
values (default, 9, 'Raúl Alejandro', 'Quinteros Arias', 'Av. 25 de mayo 7410 ', 14 , 'quiteros2021bs@gmail.com', '+5491154000745','2023-06-05');

/*20. Eliminar el registro del préstamo número cuarenta y cinco. */
select * from prestamo;
delete from prestamo where id = 5;

/*21. Mostrar el importe total prestado por el banco a sus clientes. */
select sum(importe) from prestamo;

/*22. Mostrar la cantidad total de cuentas activas que están registradas en el banco. */
select count(numero) as 'Cuentas Activas' from cuenta
where activa = 1;

/*23. Mostrar el apellido y la cantidad de clientes que poseen el mismo apellido. */
select apellido, count(id) from cliente
group by apellido
having count(id)>1;

/*24. Mostrar el id del país y la cantidad de ciudades que posee cada uno de ellos.*/ 
select pais_id, count(id) from ciudad
group by pais_id;
/*
25. Necesitamos saber la cantidad de préstamos por sucursal y día otorgado. ¿Hay
sucursales que hayan realizado más de un préstamo el mismo día?prestamo */
select sucursal_numero, count(fecha_otorgado), fecha_otorgado from prestamo
group by fecha_otorgado, sucursal_numero
order by fecha_otorgado;

select sucursal_numero as "Sucursal", fecha_otorgado as "Día otorgado", COUNT(*) as "Cantidad de préstamos"
from prestamo group by sucursal_numero, fecha_otorgado having COUNT(*) > 1;

/*
Se solicita

● Generar una consulta SQL por cada uno de los puntos de la consigna.
● Armar un solo documento (.sql) que contenga todos los puntos de la consigna y
las correspondientes consultas SQL. El mismo deberá:
○ Tener como nombre de archivo: CheckPointII_Numero_Grupo

Base de datos I - CheckPoint II - Pág. 2

○ En el inicio de la primera hoja del documento deberá incluir el código de
la camada, número de grupo y los nombres de todos los integrantes.
○ Debajo de cada consulta SQL, se debe escribir de forma comentada el
número de la cantidad de registros que devuelve.
Aclaración: Este checkpoint no es evaluable.*/