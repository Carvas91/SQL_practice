SELECT episodio_id, descripcion, titulo from Episodios;

SELECT DISTINCT genero from Series;

SELECT DISTINCT anio_lanzamiento from Series ORDER by anio_lanzamiento asc;

SELECT titulo, duracion FROM Episodios ORDER by duracion desc;

SELECT * from Episodios LIMIT 10;

SELECT titulo, duracion from Episodios ORDER by duracion ASC LIMIT 10;

SELECT DISTINCT genero FROM series;

SELECT *  FROM Series WHERE genero = 'Drama';

SELECT * from Series WHERE anio_lanzamiento > 2015 ORDER by anio_lanzamiento ASC;
