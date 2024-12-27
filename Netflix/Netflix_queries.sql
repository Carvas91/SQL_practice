SELECT episodio_id, descripcion, titulo from Episodios;

SELECT DISTINCT genero from Series;

SELECT DISTINCT anio_lanzamiento from Series ORDER by anio_lanzamiento asc;

SELECT titulo, duracion FROM Episodios ORDER by duracion desc;

SELECT * from Episodios LIMIT 10;

SELECT titulo, duracion from Episodios ORDER by duracion ASC LIMIT 10;

SELECT DISTINCT genero FROM series;

SELECT *  FROM Series WHERE genero = 'Drama';

SELECT * from Series WHERE anio_lanzamiento > 2015 ORDER by anio_lanzamiento ASC;

SELECT titulo from Episodios WHERE duracion > 30 and rating_imdb > 8;

SELECT titulo from Episodios WHERE temporada = 1 and duracion > 20 ORDER by titulo asc;

SELECT * from Series
WHERE (genero = 'Comedia' or genero = 'Drama') 
ORDER by genero asc;

SELECT *  from Series
WHERE genero not in ('Comedia', 'Drama');

SELECT *  from Series
WHERE genero like '%iencia%';

SELECT *  from Series
WHERE titulo like '%he%';

--aggregate functions
SELECT sum(duracion) as 'Suma_Duracion' from Episodios
WHERE temporada = 1;

SELECT count(episodio_id) from Episodios;

SELECT *, max(duracion) from Episodios;

SELECT round(avg(duracion),2) from Episodios;

SELECT avg(duracion) from Episodios
WHEre serie_id in (1,2);

SELECT serie_id,  avg(duracion) as promedio  from Episodios
WHERE serie_id in (1,2)
GROUP by serie_id;

SELECT serie_id,  sum(duracion) from Episodios
WHERE serie_id in (3,4)
GROUP by serie_id;

SELECT serie_id, count(episodio_id) from Episodios GROUP by serie_id;

SELECT serie_id, max(duracion) from Episodios GROUP by serie_id;

--HAVING
SELECT serie_id, count(episodio_id) as 'num_episodio' from Episodios
GROUP by serie_id
HAVING count(episodio_id) > 10;

SELECT serie_id, avg(duracion) as 'avg duration' from Episodios
GROUP by serie_id
HAVING avg(duracion) > 26;

--1st project
SELECT actor_id, count(serie_id) as 'numSeries' from actuaciones
GROUP by actor_id
ORDER by count(serie_id) desc;

SELECT serie_id, avg(rating_imdb) from Episodios
GROUP by serie_id
ORDER by avg(rating_imdb) desc;

SELECT * from Episodios
ORDER by duracion desc;

--Inner joins
SELECT * FROM Series
INNER JOIN Actuaciones
on Series.serie_id = Actuaciones.serie_id
WHERE Series.titulo = 'The Crown';


SELECT * 
FROM Actuaciones INNER JOIN Actores
on Actuaciones.actor_id = Actores.actor_id;

--Left JOIN
SELECT Series.titulo as 'titulo serie',
Episodios.titulo as 'titulo episodio'
from Series left JOIN Episodios
on Series.serie_id = Episodios.serie_id;

--UNION
SELECT *
FROM Series
WHERE genero = 'Drama'
UNION
SELECT *
FROM Series
WHERE genero = 'Comedia'
ORDER by genero asc;












