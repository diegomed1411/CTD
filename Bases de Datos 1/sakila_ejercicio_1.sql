/*Volver al futuro: Sakila
Reportes 
Reportes parte 1: 
1. Obtener el nombre y apellido de los primeros 5 actores disponibles. Utilizar 
alias para mostrar los nombres de las columnas en español. */
select first_name as nombre, last_name as apellido from actor
limit 5;

/*2. Obtener un listado que incluya nombre, apellido y correo electrónico de los 
clientes (customers) inactivos. Utilizar alias para mostrar los nombres de las 
columnas en español. */
select first_name as Nombre, last_name as Apellido, email as 'Correo Electrónico' from customer
where active = 0;

/*3. Obtener un listado de films incluyendo título, año y descripción de los films 
que tienen un rental_duration mayor a cinco. Ordenar por rental_duration de 
mayor a menor. Utilizar alias para mostrar los nombres de las columnas en 
español. */
select title as Titulo, release_year as Anio, description as Descripcion, rental_duration as 'Tiempo rentado' from film
where rental_duration > 5
order by rental_duration desc;

/*4. Obtener un listado de alquileres (rentals) que se hicieron durante el mes de 
mayo de 2005, incluir en el resultado todas las columnas disponibles. 
*/
select * from rental
where rental_date between '2005-05-01' and '2005-05-31'
order by rental_date;


/*Reportes parte 2: Sumemos complejidad 
Si llegamos hasta acá, tenemos en claro la estructura básica de un SELECT. En los siguientes reportes vamos a sumar complejidad. 
¿Probamos? 
1. Obtener la cantidad TOTAL de alquileres (rentals). Utilizar un alias para mostrarlo en una columna llamada “cantidad”. */
select count(rental.rental_id) as Cantidad from rental;

/*
2. Obtener la suma TOTAL de todos los pagos (payments). Utilizar un alias para mostrarlo en una columna llamada “total”, 
junto a una columna con la cantidad de alquileres con el alias “Cantidad” y una columna que indique el “Importe promedio” por alquiler.*/
select 
(select sum(payment.amount) from payment)as Total,
(select  count(rental.rental_id) from rental)as Cantidad,
(select avg(payment.amount) from payment) as 'Importe promedio';

/* 
3. Generar un reporte que responda la pregunta: ¿cuáles son los diez clientes que más dinero gastan y en cuántos alquileres lo hacen? */
select payment.customer_id as 'id cliente', concat(customer.first_name," ", customer.last_name) as 'nombre completo', count(payment_id) as Cantidad, sum(payment.amount) as 'Total gastado' from payment
inner join customer on customer.customer_id = payment.customer_id
group by payment.customer_id
order by sum(payment.amount) desc
limit 10;

/*
4. Generar un reporte que indique: ID de cliente, cantidad de alquileres y monto total para todos los clientes que hayan gastado más de 150 dólares en alquileres.*/
select payment.customer_id as 'id cliente', concat(customer.first_name," ", customer.last_name) as 'nombre completo', count(payment_id) as Cantidad, sum(payment.amount) as 'Total gastado' from payment
inner join customer on customer.customer_id = payment.customer_id
group by payment.customer_id
having sum(payment.amount)>150
order by sum(payment.amount) desc;

/* 
5. Generar un reporte que muestre por mes de alquiler (rental_date de tabla rental), la cantidad de alquileres y la suma total pagada (amount de tabla payment) 
para el año de alquiler 2005 (rental_date de tabla rental). */
select monthname(rental.rental_date) as mes, year(rental.rental_date) as 'Año', count(rental.rental_id) as Cantidad, sum(payment.amount) as Total from rental
inner join payment on payment.rental_id = rental.rental_id
where rental.rental_date like '2005%'
group by year(rental.rental_date), monthname(rental.rental_date);

/*
6. Generar un reporte que responda a la pregunta: ¿cuáles son los 5 inventarios más alquilados? (columna inventory_id en la tabla rental). 
Para cada una de ellas indicar la cantidad de alquileres. 
*/
select inventory.inventory_id, film.title as Titulo, count(rental.rental_id) as Cantidad from inventory
inner join rental on rental.inventory_id = inventory.inventory_id
inner join film on film.film_id = inventory.inventory_id
group by inventory.inventory_id
order by count(rental.rental_id) desc
limit 5;