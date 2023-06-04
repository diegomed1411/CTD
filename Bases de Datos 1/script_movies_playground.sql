/*Consultas
SELECT
1. Mostrar todos los registros de la tabla de movies. */
select * from movies;

/*
2. Mostrar el nombre, apellido y rating de todos los actores. */
select first_name, last_name, rating from actors;

/*3. Mostrar el título de todas las series. */
select title from series;

/*
WHERE Y ORDER BY
4. Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7,5. */
select first_name, last_name from actors
where rating >7.5;
/*
5. Mostrar el título de las películas, el rating y los premios de las películas con
un rating mayor a 7,5 y con más de dos premios. */
select title, rating, awards from movies
where rating >7.5;
/*
6. Mostrar el título de las películas y el rating ordenadas por rating en forma
ascendente.*/
select title, rating from movies
order by rating asc;

/*BETWEEN y LIKE
7. Mostrar el título y rating de todas las películas cuyo título incluya Toy Story. */
select title from movies
where title like '%Toy Story%';
/*
8. Mostrar a todos los actores cuyos nombres empiecen con Sam. */
select * from actors
where first_name like 'Sam%';

/*
9. Mostrar el título de las películas que salieron entre el ‘2004-01-01’ y
‘2008-12-31’.*/
select * from movies
where release_date between '2004-01-01' and '2008-12-31';

/*Alias, limit y offset
1. Mostrar el título de todas las series y usar alias para que el nombre del campo
este en español. */
select title as titulo from series;

/* 2. Traer el título de las películas con el rating mayor a 3, con más de 1 premio y con
fecha de lanzamiento entre el año ‘1988-01-01’ al ‘2009-12-31’. Ordenar los
resultados por rating descendentemente. */
select * from movies
where rating > 3 and awards >1 and release_date between '1988-01-01' and '2009-12-31'
order by rating desc;

/* 3. Traer el top 3 a partir del registro 10 de la consulta anterior. */
select * from movies
where rating > 3 and awards >1 and release_date between '1988-01-01' and '2009-12-31'
order by rating desc
limit 3
offset 10;

/* 4. ¿Cuáles son los 3 peores episodios teniendo en cuenta su rating? */
select * from movies
order by rating asc
limit 3;

/* 5. Obtener el listado de todos los actores. Quitar las columnas de fechas y película
favorita, además traducir los nombres de las columnas.*/

select id, first_name as 'primer nombre' , last_name as 'apellido' , rating from actors;

select genre_id from movies
group by genre_id;

/*-----------------------Ejercitación opcional III------------------------------------
Consultas

Funciones de agregación, GROUP BY y HAVING
1. ¿Cuántas películas hay? */
select count(id) from movies;
/* 2. ¿Cuántas películas tienen entre 3 y 7 premios? */
select count(id) from movies
where awards between 3 and 7;

/*3. ¿Cuántas películas tienen entre 3 y 7 premios y un rating mayor a 7? */
select count(id) from movies
where awards between 3 and 7 and rating >=7;

/* 4. Crear un listado a partir de la tabla de películas, mostrar un reporte de la
cantidad de películas por id. de género.*/
select genre_id, count(id) from movies
group by genre_id;

/* 5. De la consulta anterior, listar sólo aquellos géneros que tengan como suma
de premios un número mayor a 5.
*/

select genre_id, count(id), sum(awards) from movies
group by genre_id
having sum(awards) > 5 ;



