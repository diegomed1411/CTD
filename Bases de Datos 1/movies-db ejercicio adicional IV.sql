/*Ejercitación adicional - Bases de datos IV
Consultas
Join
1. Utilizando la base de datos de movies, queremos conocer, por un lado, los
títulos y el nombre del género de todas las series de la base de datos. */
select series.title, genres.name from series
inner join genres on genres.id = series.genre_id;

/* 2. Por otro, necesitamos listar los títulos de los episodios junto con el nombre y
apellido de los actores que trabajan en cada uno de ellos. */
select episodes.title, concat(actors.first_name, ' ', actors.last_name) as nombre_actor  from episodes
inner join actor_episode on actor_episode.episode_id = episodes.id
inner join actors on actors.id = actor_episode.actor_id;

/* 3. Para nuestro próximo desafío, necesitamos obtener a todos los actores o
actrices (mostrar nombre y apellido) que han trabajado en cualquier película
de la saga de La Guerra de las galaxias. */
select concat(actors.first_name, ' ', actors.last_name) as nombre_completo, movies.title from actors
inner join actor_movie on actor_movie.actor_id = actors.id
inner join movies on movies.id = actor_movie.movie_id
where movies.title like '%Guerra de las galaxias%';

/*4. Crear un listado a partir de la tabla de películas, mostrar un reporte de la
cantidad de películas por nombre de género.*/

select genres.name as 'nombre de genero', count(genre_id) as 'cantidad de peliculas' from movies
inner join genres on genres.id = movies.genre_id
group by genre_id;