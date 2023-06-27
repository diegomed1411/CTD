/*EndPoints

Parte 1:
¡Estos reportes ya los conoces! Pero te pedimos que en este caso no utilices los
identificadores, sino que los reemplaces por su correspondiente descripción. Para
esto, vas a tener que realizar JOINS.
Por ejemplo, si quiero mostrar un reporte de películas más alquiladas, en lugar de
mostrar el ID de película, debemos mostrar el título.
Manos a la obra:
1. Generar un reporte que responda la pregunta: ¿cuáles son los diez clientes
que más dinero gastan y en cuantos alquileres lo hacen? */
select customer.customer_id as nro_cliente, concat(customer.first_name, ' ', customer.last_name) as nombre_completo, 
sum(payment.amount) as importe_gastado, count(payment.rental_id) as cantidad_alquileres 
from customer
inner join payment on payment.customer_id = customer.customer_id
group by customer.customer_id
order by importe_gastado desc
limit 10;

/*2. Generar un reporte que indique: el id del cliente, la cantidad de alquileres y
el monto total para todos los clientes que hayan gastado más de 150 dólares
en alquileres. */
select customer.customer_id as nro_cliente, concat(customer.first_name, ' ', customer.last_name) as nombre_completo, 
sum(payment.amount) as importe_gastado, count(payment.rental_id) as cantidad_alquileres 
from customer
inner join payment on payment.customer_id = customer.customer_id
group by customer.customer_id
having importe_gastado > 150
order by importe_gastado desc;

/*3. Generar un reporte que responda a la pregunta: ¿cómo se distribuyen la
cantidad y el monto total de alquileres en los meses pertenecientes al año
2005? (tabla payment).*/
select count(rental.rental_id) as cantidad, sum(payment.amount) as monto_total, month(rental.rental_date) as mes from payment
inner join rental on rental.rental_id = payment.payment_id
where year(rental.rental_date) = 2005
group by month(rental.rental_date);

/*4. Generar un reporte que responda a la pregunta: ¿cuáles son los 5 inventarios
más alquilados? (columna inventory_id en la tabla rental) Para cada una de
ellas, indicar la cantidad de alquileres. */
select rental.inventory_id, count(rental.rental_id) as cantidad_alquileres from rental
group by rental.inventory_id
order by cantidad_alquileres desc
limit 5;

/*Parte 2:
1. Generar un reporte que responda a la pregunta: Para cada tienda
(store), ¿cuál es la cantidad de alquileres y el monto total del dinero
recaudado por mes? */
select store.store_id, count(payment.rental_id) as cantidad_alquileres, format(sum(payment.amount), 2) as importe_total from store
left join staff on staff.store_id = store.store_id
left join payment on payment.staff_id = staff.staff_id
group by store.store_id;

/*2. Generar un reporte que responda a la pregunta: ¿cuáles son las 10 películas
que generan más ingresos? ¿ Y cuáles son las que generan menos ingresos?
Para cada una de ellas indicar la cantidad de alquileres. */
select film.title, sum(payment.amount) as ingresos, count(rental.rental_id) as cantidad_alquileres from film
left join inventory on inventory.film_id = film.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
inner join payment on payment.rental_id = rental.rental_id
group by film.film_id
order by ingresos desc
limit 10;

select film.title, sum(payment.amount) as ingresos, count(rental.rental_id) as cantidad_alquileres from film
left join inventory on inventory.film_id = film.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
inner join payment on payment.rental_id = rental.rental_id
group by film.film_id
order by ingresos asc
limit 10;

/*3. ¿Existen clientes que no hayan alquilado películas? */
select customer.customer_id as numero_cliente, concat(customer.first_name,' ', customer.last_name) as nombre_cliente,
count(payment.rental_id) as cantidad_alquileres from customer
left join payment on payment.customer_id = customer.customer_id
group by customer.customer_id
order by cantidad_alquileres asc;

/*4. Nivel avanzado: El jefe de stock quiere discontinuar las películas (film) con
menos alquileres (rental). ¿Qué películas serían candidatas a discontinuar?
Recordemos que pueden haber películas con 0 (Cero) alquileres. */
select film.film_id, film.title, count(rental_id) as cantidad_alquileres from film
left join inventory on inventory.film_id = film.film_id
left join rental on rental.inventory_id = inventory.inventory_id
group by film.film_id
order by cantidad_alquileres asc;


SELECT film.title, film_category.category_id, category.name FROM actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id INNER JOIN film ON film.film_id = film_actor.film_id 
INNER JOIN film_category ON film.film_id = film_category.film_id WHERE category.name = "children";

SELECT actor.first_name, film.title, film_category.category_id, category.name FROM actor 
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id 
LEFT JOIN film ON film.film_id = film_actor.film_id 
LEFT JOIN film_category ON film.film_id = film_category.film_id 
LEFT JOIN category ON film_category.category_id = category.category_id 
WHERE category.name = "children";

SELECT actor.first_name, film.title, film_category.category_id, category.name FROM actor 
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id 
INNER JOIN film ON film.film_id = film_actor.film_id 
INNER JOIN film_category ON film.film_id = film_category.film_id 
INNER JOIN category ON film_category.category_id = category.category_id 
WHERE category.name = "children";



