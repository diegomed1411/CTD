/*Realizar los siguientes reportes:
1. Generar un reporte que indique la cantidad de usuarios por país,
mostrando el nombre del país y su cantidad. */
select pais.nombre as Pais, count(usuario.idUsuario) as 'Cantidad de Usuarios' from usuario
inner join pais on pais.idPais = usuario.Pais_idPais
group by usuario.Pais_idPais;

/*
2. Mostrar el Top 5 de avatars utilizados por los usuarios, listando el
nombre del avatar y la cantidad de veces utilizado.
avatar*/
select avatar.nombre, count(idUsuario) as 'Cantidad de Usuarios' from avatar
left join usuario on usuario.Avatar_idAvatar = avatar.idAvatar
group by avatar.idAvatar
order by `Cantidad de Usuarios` desc
limit 5;

/*
3. Emitir un listado de todas las playlists públicas, informando el nombre
del usuario que la creó, el título de cada video que posee y el nombre
y año de creación de la playlist. */
select usuario.nombre, video.titulo, playlist.nombre as 'Nombre de Playlist',year(playlist.fechaCreacion) as 'Año de Creación' from playlist
inner join usuario on usuario.idUsuario = playlist.Usuario_idUsuario
inner join playlist_video on playlist_video.Playlist_idPlaylist = playlist.idPlaylist
inner join video on video.idVideo = playlist_video.Video_idVideo
where playlist.privado = 0;

/*
4. Listar las 10 etiquetas menos usadas. */
select etiqueta.nombre, count(video_etiqueta.Etiqueta_idEtiqueta) as 'Cantidad de Etiquetas' from etiqueta
inner join video_etiqueta on video_etiqueta.Etiqueta_idEtiqueta = etiqueta.idEtiqueta
group by etiqueta.nombre
order by `Cantidad de Etiquetas` asc
limit 10;

/*
5. Generar un reporte de las últimas 10 reacciones, listando la fecha, el
nombre de la reacción, el id y nombre de usuario, y el título del video. */
select date_format(reaccion.fecha, '%d/%m/%Y') as 'fecha', tiporeaccion.nombre, usuario.idUsuario, usuario.nombre, video.titulo from reaccion
inner join tiporeaccion on tiporeaccion.idTipoReaccion = reaccion.TipoReaccion_idTipoReaccion
inner join usuario on usuario.idUsuario = reaccion.Usuario_idUsuario
inner join video on video.idVideo = reaccion.Video_idVideo
order by reaccion.fecha desc
limit 10;

/*
6. Mostrar por usuario la cantidad de playlists que posee, pero solo para
aquellos que tengan más de 1 playlist creada en el año 2021.
*/
select usuario.nombre, count(playlist.idPlaylist) as Cantidad from usuario
inner join playlist on playlist.Usuario_idUsuario = usuario.idUsuario
where year(playlist.fechaCreacion) = 2021
group by usuario.nombre
having Cantidad > 1;
