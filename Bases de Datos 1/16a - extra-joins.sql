/*Reportes - JOINS

Consignas:
1. Obtener los artistas que han actuado en una o más películas. */
select artista.id, concat(artista.nombre, " ", artista.apellido) as 'nombre completo', count(artista_x_pelicula.pelicula_id) as 'cantidad de peliculas' from artista
inner join artista_x_pelicula on artista_x_pelicula.artista_id = artista.id
group by artista.id;
/*
2. Obtener las películas donde han participado más de un artista según nuestra
base de datos.*/
select pelicula.id, pelicula.titulo, count(artista_x_pelicula.artista_id) as 'cantidad de artistas' from pelicula
inner join artista_x_pelicula on artista_x_pelicula.pelicula_id = pelicula.id
group by pelicula.id;

/*
3. Obtener aquellos artistas que han actuado en alguna película, incluso
aquellos que aún no lo han hecho, según nuestra base de datos. */
select artista.id, concat(artista.nombre, " ", artista.apellido) as 'nombre completo', count(artista_x_pelicula.pelicula_id) as 'cantidad de peliculas' from artista
left join artista_x_pelicula on artista_x_pelicula.artista_id = artista.id
group by artista.id;

/*
4. Obtener las películas que no se le han asignado artistas en nuestra base de
datos.*/
select pelicula.id, pelicula.titulo, count(artista_x_pelicula.artista_id) as 'cantidad de artistas' from pelicula
inner join artista_x_pelicula on artista_x_pelicula.pelicula_id = pelicula.id
group by pelicula.id;

/*
5. Obtener aquellos artistas que no han actuado en alguna película, según
nuestra base de datos. */
select artista.id, concat(artista.nombre, " ", artista.apellido) as 'nombre completo', count(artista_x_pelicula.pelicula_id) as 'cantidad de peliculas' from artista
left join artista_x_pelicula on artista_x_pelicula.artista_id = artista.id
group by artista.id
having count(artista_x_pelicula.pelicula_id) = 0;

/*
6. Obtener aquellos artistas que han actuado en dos o más películas según
nuestra base de datos. */
select artista.id, concat(artista.nombre, " ", artista.apellido) as 'nombre completo', count(artista_x_pelicula.pelicula_id) as 'cantidad de peliculas' from artista
left join artista_x_pelicula on artista_x_pelicula.artista_id = artista.id
group by artista.id
having count(artista_x_pelicula.pelicula_id) >= 2;

/*
7. Obtener aquellas películas que tengan asignado uno o más artistas, incluso
aquellas que aún no le han asignado un artista en nuestra base de datos.*/
select pelicula.id, pelicula.titulo, count(artista_x_pelicula.artista_id) as 'cantidad de artistas' from pelicula
left join artista_x_pelicula on artista_x_pelicula.pelicula_id = pelicula.id
group by pelicula.id;