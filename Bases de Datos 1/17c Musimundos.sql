/*Realizar una consulta sobre la tabla canciones con la siguiente información:
Solo los 10 primeros caracteres del nombre de la canción en mayúscula.
Los años de antigüedad que tiene cada canción desde su publicación. Ej: 25 años. 
El peso en KBytes en número entero (sin decimales, 1024 Bytes = 1 KB)
El precio formateado con 3 decimales, Ej: $100.123
El primer compositor de la canción (notar que si hay más de uno, estos se separan por coma)*/

select * from canciones;

select upper(left(canciones.nombre, 10)) as 'CANCION', concat(round(datediff(now(), canciones.publicada)/365),' ','Años') as 'ANTIGUEDAD',
round(bytes/1024,0) as KBytes, concat('$ ',format(canciones.precio_unitario, 3)) as PRECIO, 
case
	when locate(',', compositor) > 0 then left(compositor, locate(',', compositor)-1)
    when compositor = '' then '<sin datos>'
    when locate(',', compositor) = 0 then compositor
end as COMPOSITOR
from canciones;