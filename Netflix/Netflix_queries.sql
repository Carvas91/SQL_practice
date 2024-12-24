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



