/*1. Listar todos los clientes que tengan tres o más cuentas bancarias. Mostrar el
número de cliente, apellido y nombre separado por un espacio dentro de una
misma columna denominada "Cliente" y, la cantidad de cuentas que posee.*/
SELECT cliente.id AS "Numero de cliente", CONCAT(cliente.apellido, ' ', cliente.nombre) AS Cliente, COUNT(*) AS "Cantidad de Cuentas"
FROM cliente
LEFT JOIN cliente_x_cuenta ON cliente.id = cliente_x_cuenta.cliente_id
GROUP BY cliente.id
HAVING COUNT(*) >= 3;

/*
2. Listar todos los clientes que no tengan una cuenta bancaria. Mostrar el número
de cliente, apellido y nombre en mayúsculas dentro de una misma columna
denominada "Cliente sin cuenta bancaria". */
SELECT CONCAT(cliente.id, ' : ', UPPER(CONCAT(cliente.apellido, ' ', cliente.nombre))) AS `Cliente sin cuenta bancaria`
FROM cliente
LEFT JOIN cliente_x_cuenta ON cliente.id = cliente_x_cuenta.cliente_id
WHERE cliente_x_cuenta.cliente_id IS NULL;

/*
3. Listar todos los clientes que tengan al menos un préstamo que corresponda a la
sucursal de la ciudad de "Pilar - Buenos Aires". Se debe mostrar el número de
cliente, apellido, nombre, número de préstamo, número de sucursal, nombre de
la ciudad y país de dicha sucursal. */
select cliente.id, cliente.apellido, cliente.nombre, prestamo.id AS prestamo_numero, sucursal.numero AS sucursal_numero, ciudad.nombre AS ciudad, pais.nombre AS pais
from cliente
inner join cliente_x_prestamo on cliente_x_prestamo.cliente_id = cliente.id
inner join prestamo on prestamo.id = cliente_x_prestamo.prestamo_id
inner join sucursal on sucursal.numero = prestamo.sucursal_numero
inner join ciudad on sucursal.ciudad_id = ciudad.id
inner join pais on ciudad.pais_id = pais.id
where ciudad.nombre = 'Pilar - Buenos Aires';

/*
4. Listar los clientes que tengan una o más cajas de ahorro y que en la segunda
letra de su apellido contenga una "e". */
select cliente.id, cliente.apellido, cliente.nombre, cuenta_tipo.tipo from cliente
inner join cliente_x_cuenta on cliente.id = cliente_x_cuenta.cliente_id
inner join cuenta on cliente_x_cuenta.cuenta_numero = cuenta.numero
inner join cuenta_tipo on cuenta_tipo.id = cuenta.cuenta_tipo_id
where cuenta_tipo.tipo = 'CAJA DE AHORRO' AND cliente.apellido LIKE '_e%';

/*
5. Listar absolutamente todos los países y la cantidad de clientes que tengan.*/
select pais.nombre, count(cliente.id) as 'Cantidad de Clientes' from pais
left join ciudad on ciudad.pais_id = pais.id
left join cliente on cliente.ciudad_id = ciudad.pais_id
group by pais.id;

/*6. Calcular el importe total y la cantidad de préstamos otorgados en el mes de
agosto por cada cliente. Mostrar el número de cliente, importe total y cantidad
de préstamos.*/
select cliente.id as 'Numero de Cliente', sum(prestamo.importe) as 'Importe Total', count(prestamo.id) as 'Cantidad de Prestamos' from prestamo
inner join cliente_x_prestamo on cliente_x_prestamo.prestamo_id = prestamo.id
inner join cliente on cliente.id = cliente_x_prestamo.cliente_id
group by cliente.id;

/*
7. Calcular el importe total y la cantidad de cuotas pagadas para el préstamo
número cuarenta. */
SELECT prestamo.id, sum(prestamo.importe) as 'Importe total', count(pago.prestamo_id) AS 'Cuotas Pagadas' FROM prestamo
inner join pago on pago.prestamo_id = prestamo.id
group by prestamo.id
having prestamo.id = 40;

/*
8. Determinar el importe restante que falta por pagar para el préstamo número 45. */
select prestamo.importe-sum(pago.importe) as 'Saldo pendiente' from prestamo 
inner join pago on pago.prestamo_id = prestamo.id
group by prestamo.id
having prestamo.id = 45;


/*
9. Listar los préstamos de la sucursal número cuatro. Mostrar el número de cliente,
apellido, nombre y el número de préstamo. */
select sucursal.numero as NroSucursal, cliente.id as NroCliente, cliente.apellido, cliente.nombre, prestamo.id as NroPrestamo from prestamo
inner join sucursal on prestamo.sucursal_numero = sucursal.numero
inner join cliente_x_prestamo on prestamo.id = cliente_x_prestamo.prestamo_id
inner join cliente on cliente_x_prestamo.cliente_id = cliente.id
where prestamo.sucursal_numero = 4 ;
/*
10. Reportar el número del préstamo y la cantidad de cuotas pagadas por cada uno
préstamo. Se debe formatear el dato de la cantidad de cuotas pagadas, por
ejemplo, si se ha pagado una cuota, sería "1 cuota paga"; si se han pagado dos o
más cuotas, sería en plural "2 cuotas pagas" y "Ninguna cuota paga" para los
préstamos que aún no han recibido un pago. */
select prestamo.id as 'Numero de Prestamo',  
case
 when count(pago.prestamo_id) = 0 then 'Ninguna cuota paga'
 when count(pago.prestamo_id) = 1 then '1 cuota paga'
 when count(pago.prestamo_id) > 1 then concat(count(pago.prestamo_id),' cuotas pagas')
end as 'cuotas pagadas'
from prestamo
left join pago on pago.prestamo_id = prestamo.id
group by prestamo.id;

/*
11. Listar absolutamente todos los empleados y las cuentas bancarias que tengan
asociada. Mostrar en una sola columna el apellido y la letra inicial del nombre del
empleado (Ej. Tello Aguilera C.), en otra columna, el número de cuenta y el tipo
(Ej. 10560 - CAJA DE AHORRO). Los campos nulos deben figurar con la leyenda
"-Sin asignación-".*/
SELECT CONCAT(empleado.apellido, ' ', LEFT(empleado.nombre, 1), '.') AS Empleado,
IFNULL(CONCAT(cuenta.numero, ' - ', cuenta_tipo.tipo), '-Sin asignación-') AS Cuenta
FROM empleado
LEFT JOIN cuenta ON cuenta.ejecutivo_cuenta = empleado.legajo
left join cuenta_tipo on cuenta_tipo.id = cuenta.cuenta_tipo_id;

/*
12. Reportar todos los datos de los clientes y los números de cuenta que tienen. */
SELECT cliente.id AS "Número de cliente",
       CONCAT(cliente.apellido, ' ', cliente.nombre) AS Cliente,
       cuenta.numero AS "Número de cuenta"
FROM cliente
inner join cliente_x_cuenta on cliente.id = cliente_x_cuenta.cliente_id
LEFT JOIN cuenta ON cliente_x_cuenta.cuenta_numero = cuenta.numero;

/*
13. Listar los clientes con residencia en las ciudades de "Las Heras - Mendoza", "Viña
del Mar - Valparaíso", "Córdoba - Córdoba" y "Monroe - Buenos Aires". Se debe
mostrar el apellido, nombre del cliente y todos los datos referidos a la ciudad */
SELECT cliente.apellido, cliente.nombre, ciudad.*
FROM cliente
JOIN ciudad ON cliente.ciudad_id = ciudad.id
WHERE ciudad.nombre IN ('Las Heras - Mendoza', 'Viña del Mar - Valparaíso', 'Córdoba - Córdoba', 'Monroe - Buenos Aires');

/*
14. Listar los clientes que tienen préstamos otorgados entre 15/08/21 al 5/09/21
(ordenarlos por fecha de otorgamiento). Mostrar sólo el email del cliente,
teléfono móvil y todos los datos referidos al préstamo. */
SELECT cliente.email, cliente.telefono_movil, prestamo.*
FROM cliente
JOIN cliente_x_prestamo ON cliente.id = cliente_x_prestamo.cliente_id
JOIN prestamo ON cliente_x_prestamo.prestamo_id = prestamo.id
WHERE prestamo.fecha_otorgado BETWEEN '2021-08-15' AND '2021-09-05'
ORDER BY prestamo.fecha_otorgado;

/*
15. Listar de manera ordenada, los empleados que no pertenezcan a la sucursal de
la ciudad "Monroe - Buenos Aires" y que la fecha de alta del contrato se halle
dentro del rango 2016 al 2018. Mostrar el email del empleado, número de
sucursal y el nombre de la ciudad */
select empleado.email, sucursal.numero, ciudad.nombre
from empleado
inner join sucursal on sucursal.numero = empleado.sucursal_numero
inner join ciudad on ciudad.id = sucursal.ciudad_id
WHERE (YEAR(alta_contrato_laboral) BETWEEN 2016 AND 2018) AND (NOT ciudad.nombre = 'Monroe - Buenos Aires')
order by sucursal.numero;

/*
16. Listar las cuentas bancarias que tienen dos titulares. Mostrar sólo el número de
cuenta y la cantidad de titulares */
select cuenta_numero, count(cliente_id) AS 'Cantidad titulares'
from cliente_x_cuenta
group by cuenta_numero
HAVING `Cantidad titulares` = 2;

/*
17. Se desea conocer el segundo pago con mayor importe efectuado en las
sucursales de Chile. Mostrar el número y hora de pago, importe pagado y el
nombre del país. */
select pago.id, pago.importe, sucursal.numero, pais.nombre, date_format(pago.fecha, '%H:%i') as "Hora de pago.", pago.importe from pago
inner join prestamo on pago.prestamo_id = prestamo.id
inner join sucursal on prestamo.sucursal_numero = sucursal.numero
inner join ciudad on sucursal.Ciudad_id = ciudad.id
inner join pais on ciudad.pais_id = pais.id
where pais.nombre = 'Chile'
order by pago.importe desc
limit 1
offset 1;

/*
18. Listar los clientes que no tienen préstamos. Mostrar el apellido, nombre y email
del cliente. */
select cliente.apellido, cliente.nombre, cliente.email from cliente
left join cliente_x_prestamo on cliente.id = cliente_x_prestamo.cliente_id
left join prestamo on cliente_x_prestamo.prestamo_id = prestamo.id
where prestamo.id is null;
/*
19. Se desea conocer el mes y año en que se terminaría de pagar el préstamo
número treinta a partir de la fecha de otorgamiento. Se debe mostrar el email
del cliente, número de préstamo, fecha de otorgamiento, importe prestado, mes
y año que correspondería a la última cuota (Ej. "agosto de 2021"). */
select cliente.email AS email_cliente, prestamo.id AS numero_prestamo, fecha_otorgado, importe, DATE_FORMAT(DATE_ADD(fecha_otorgado, INTERVAL prestamo.cantidad_cuota MONTH), '%M de %Y') AS Ultima_cuota
from prestamo
inner join cliente_x_prestamo on cliente_x_prestamo.prestamo_id = prestamo.id
inner join cliente on cliente_x_prestamo.cliente_id = cliente.id
where prestamo.id = 30;
/*
20. Listar las ciudades (sin repetir) que tengan entre dos a cuatro cuentas bancarias.
Se debe mostrar el país, ciudad y la cantidad de cuentas. Además, se debe
ordenar por país y ciudad. */
select ciudad.nombre AS Ciudad, pais.nombre AS Pais, count(cuenta.numero) cantidad_cuentas
from ciudad
inner join pais on ciudad.pais_id = pais.id
inner join sucursal on sucursal.ciudad_id = ciudad.id
inner join cuenta on cuenta.sucursal_numero = sucursal.numero
group by ciudad.nombre, pais.nombre
HAVING cantidad_cuentas BETWEEN 2 AND 4
ORDER BY Pais, Ciudad;

/*
21. Mostrar el nombre, apellido, número de cuenta de todos los clientes que poseen
una cuenta tipo "CAJA DE AHORRO", cuyo saldo es mayor que $ 15000 */
select nombre, apellido, cuenta.numero
from cliente
inner join cliente_x_cuenta on cliente.id = cliente_x_cuenta.cliente_id
inner join cuenta on cliente_x_cuenta.cuenta_numero = cuenta.numero
inner join cuenta_tipo on cuenta_tipo.id = cuenta.cuenta_tipo_id
where cuenta_tipo.tipo = 'CAJA DE AHORRO' AND cuenta.saldo > 15000;

/*
22. Por cada sucursal, contar la cantidad de clientes y el saldo promedio de sus
cuentas. */
select sucursal.numero AS numero_sucursal, count(cliente.id) as cantidad_clientes, avg(saldo) as promedio_saldo
from sucursal
inner join cuenta on cuenta.sucursal_numero = sucursal.numero
inner join cliente_x_cuenta on cliente_x_cuenta.cuenta_numero = cuenta.numero
inner join cliente on cliente.id = cliente_x_cuenta.cliente_id
group by sucursal.numero;

/*
23. Listar todos aquellos clientes que teniendo un saldo negativo en la cuenta,
tengan un descubierto otorgado mayor a cero. Mostrar el apellido, nombre,
saldo y descubierto otorgado. */
select cliente.apellido, cliente.nombre, cuenta.saldo, cuenta.descubierto_otorgado from cliente
inner join cliente_x_cuenta on cliente.id = cliente_x_cuenta.cliente_id
inner join cuenta on cliente_x_cuenta.cuenta_numero = cuenta.numero
where (cuenta.saldo < 0) and (cuenta.descubierto_otorgado > 0);

/*
24. Se desea conocer el último acceso de cada cliente al sistema. Mostrar el nombre,
apellido y última fecha de acceso. */
SELECT nombre, apellido, MAX(acceso)
FROM cliente
inner join historial_acceso on historial_acceso.cliente_id = cliente.id
group by nombre, apellido;

/*
25. Listar el apellido y nombre de todos los empleados del banco. Si poseen cuentas
a cargo, mostrar cuántas. Ordenar por apellido y nombre.*/
SELECT empleado.apellido, empleado.nombre, COUNT(cuenta.ejecutivo_cuenta) AS "cantidad de cuentas"
FROM empleado
LEFT JOIN cuenta ON empleado.legajo = cuenta.ejecutivo_cuenta
GROUP BY empleado.legajo
ORDER BY empleado.apellido, empleado.nombre;
