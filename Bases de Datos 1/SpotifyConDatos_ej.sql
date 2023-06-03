/*La empresa Spotify nos pidió una segunda reunión. En este hito, tenemos que mostrar la base de datos que construimos y unos primeros informes. Según lo que revelamos, generamos un punteo de todos los informes que tenemos que entregar en esa reunión.


Spotify
Realizar los siguientes informes:
Listar las canciones que poseen la letra “z” en su título.*/
select * from cancion
where titulo like '%z%';

/*Listar las canciones que poseen como segundo carácter la letra “a” y como último, la letra “s”.*/
select * from cancion
where titulo like '_a%' and titulo like '%s';

/*Mostrar la playlist que tiene más canciones, renombrando las columnas poniendo mayúsculas en la primera letra, 
los tildes correspondientes y agregar los espacios entre palabras.*/
select idPlaylist as 'Id Playlist', idusuario as 'Id Usuario', titulo as Título, cantcanciones as 'Cantidad de canciones', 
idestado as 'Id Estado', Fechacreacion as 'Fecha Creación', Fechaeliminada as 'Fecha Eliminada' from playlist
order by cantcanciones desc limit 1;

/*En otro momento se obtuvo un listado con los 5 usuarios más jóvenes, obtener un listado de los 10 siguientes.*/
select * from usuario
order by fecha_nac desc
limit 10
offset 5;

/*Listar las 5 canciones con más reproducciones, ordenadas descendentemente.*/
select * from cancion
order by cantreproduccion desc
limit 5;

/*Generar un reporte de todos los álbumes ordenados alfabéticamente.*/
select * from album
order by titulo asc;

/*Listar todos los álbumes que no tengan imagen, ordenados alfabéticamente.*/
select * from album
where imagenportada is null;
/*Insertar un usuario nuevo con los siguientes datos (tener en cuenta las relaciones):
a) nombreusuario: nuevousuariodespotify@gmail.com

b) Nombre y apellido: Elmer Gomez

c) password: S4321m

d) Fecha de nacimiento: 15/11/1991

e) Sexo: Masculino

f) Código Postal: B4129ATF

g) País: Colombia

Eliminar todas las canciones de género “pop”.
Editar todos los artistas que no tengan una imagen cargada y cargarles el texto “Imagen faltante” en la columna de imagen.*/