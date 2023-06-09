select id as "Número de cliente", apellido, nombre from cliente where nombre like "A%";
select numero from sucursal where domicilio = "Ramón Freire Serrano 7410";
select max(importe) from prestamo;
select * from pago where id in (10, 14, 27, 45);
select sum(importe) as "Total de importe" , prestamo_id as "Número de prestamo" from pago where prestamo_id = 40;
select * from empleado where sucursal_numero not in (2) and alta_contrato_laboral > "2021-09-05" or alta_contrato_laboral ="2021-06-25" ;
select * from pago where importe between 1030.25 and 1666.66 order by importe desc;
select * from pago order by importe asc limit 1 offset 4;
select id, fecha_otorgado, importe, MAX(importe) from prestamo where importe group by id, fecha_otorgado, importe order by importe desc; /* me falta sacar la columna max*/
select numero, saldo, cuenta_tipo_id from cuenta order by saldo limit 10;
select * from prestamo where fecha_otorgado between '2021-07-10' and '2021-08-10' order by fecha_otorgado;
select * from cuenta where descubierto_otorgado >= 8999.80 order by descubierto_otorgado;
select legajo, apellido, nombre, email from empleado where apellido like '%do';
select AVG(saldo) as "Promedio de saldos" from cuenta where cuenta_tipo_id = 1;
select * from prestamo order by importe desc limit 1 offset 2;
select sucursal_numero as "Sucursal", COUNT(*) as "Cantidad de Cuentas" from cuenta where sucursal_numero = 5 group by sucursal_numero;
select nombre from ciudad join sucursal on Ciudad_id = id where nombre like '___n__'; /* no tira datos*/
update cuenta_tipo set tipo = 'CUENTA ESPECIAL' where tipo = 'CUENTA CORRIENTE';
insert into empleado (legajo, sucursal_numero , nombre, apellido, domicilio, ciudad_id, email, telefono_movil, alta_contrato_laboral)
values (default, 9, 'Raúl Alejandro', 'Quinteros Arias', 'Av. 25 de mayo 7410 ', 14 , 'quiteros2021bs@gmail.com', '+5491154000745','2023-06-05');
delete from prestamo where id = 45; /* da error*/
select SUM(importe) as "Importe total prestado" from prestamo;
select COUNT(*) as "Cantidad total de cuentas activas" from cuenta where activa = 1;
select apellido, COUNT(*) as "Cantidad de clientes" from cliente group by apellido having COUNT(*) > 1;
/* el 24 no me salio */
select sucursal_numero as "Sucursal", fecha_otorgado as "Día otorgado", COUNT(*) as "Cantidad de préstamos"
from prestamo group by sucursal_numero, fecha_otorgado having COUNT(*) > 1;

select * FROM pais;

