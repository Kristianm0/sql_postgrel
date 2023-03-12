--- Funciones especiales 📌

-- ON CONFLICT DO ◀️
ONFLICT DO 
Ayuda a insertar datos si es que la tabla presenta alguna falla.

-- RETURNING ◀️
Nos devuelve todo los datos o las acciones que hayamos hecho previamente.

-- LIKE / ILIKE ◀️
Buscar valores que tengan un valor o que empiezen con una letra o caracter.  % uno o cualquier valor, _ un valor

-- IS/IS NOT ◀️
Comparar dos tipos de datos; NULL, TEXT NUMERIC etc.

-- EJEMPLOS 📌

-- ON CONFLICT DO ◀️
INSERT INTO public.estacion(
	id_estacion, nombre, direccion_residencia)
	VALUES (4, 'Nombre', 'Otoa')
	ON CONFLICT (id_estacion) DO UPDATE SET nombre = 'Nombre', direccion_residencia = 'Otoa'

-- INSERT INTO tabla. columna, entre parentesis columnas VALUES entre parentesis valores,
-- ON CONFLICT entre parentesis la columna con problemas, luego DO de hacer UPDATE para que se actualize.
-- UPDATE SET para que actualize la columna nombre con el valor que le damos con = y parentesis.

-- RETURNING ◀️
INSERT INTO public.estacion(
	nombre, direccion_residencia)
	VALUES ('Nombre', 'Otoa')
	
RETURNING *

-- INSERT INTO public.estacion selecionamos la base de datos luego del punto la tabla, ponemos las columnas, luego values con con los valores.
-- RETURNING para que nos devuelva el valor que falta, en este caso es la columna id_estacion y nos devolvera el que sigue de esa columna, pero igual se puso todo.

--- LIKE / ILIKE ◀️

SELECT nombre
	FROM public.pasajero
	WHERE nombre LIKE 'o%';
	
-- SELECT la columna
-- FROM de la base de datos public y tabla pasajero.
-- WHERE que la columna nombre Like trae el valor exacto del caracter que comienze con o en miniscula.


SELECT nombre
	FROM public.pasajero
	WHERE nombre ILIKE 'o%';

-- Lo mismo pero el ILIKE hace que traiga el valor de o, sea mayuscula o minuscula.


-- IS / IS NOT ◀️
SELECT *
	FROM public.tren
	WHERE modelo IS NULL ;
	
-- SELECT todo.
-- FROM de la base de datos public y de la tabla tren.
-- WHERE la columna nombre IS NULL (Esto porque es un tipo de datos inrregular).

SELECT *
	FROM public.tren
	WHERE modelo IS NOT NULL ;
-- Pero si queremos saber los que no estan null solo usamos IS NOT NULL

--- FUNCIONES AVANZADAS 📌

COALESCE 
-- Comparar dos valores y ver cual de los dos no es NULLy lo devuelve.

NULLIF 
-- Compara dos valores haber cual de los dos es NULL y lo devuelve.

GREATEST 
-- Compara dos valores y retorna el mayor.

LEAST 
-- Compara dos valores y retorna el menor.

BLOQUES ANONIMOS 
-- Poner condicionales dentro de una consulta de bases de datos.

-- COALESCE ◀️
COALESCE 
SELECT id_pasajero, COALESCE(nombre, 'No aplica') direccion_residencia, fecha, nombre
	FROM public.pasajero
	WHERE id_pasajero = 1

-- SELECT las columnas y depues el valor el cual queremos que nos devuelva si es NULL, y si no lo es poner que no aoplica. 
-- FROM base de datos punto tabla.
-- WHERE que la columna tenga 1.

-- NULLIF ◀️
NULLIF
SELECT NULLIF (0,0)

-- Para saber cual de los dos valores es NULL.


-- CREATEST ◀️
GREATEST
SELECT GREATEST (2,2,3,3,2,2,392,39,2)
-- Ver que datos es mayor.

-- LEAST ◀️
LEAST
SELECT LEAST (2,2,3,3,2,2,392,39,2)
-- Ver cual es el menor.


-- Bloques anonimos ◀️
SELECT id_pasajero, direccion_residencia, fecha, nombre,
CASE 
WHEN fecha > '2015-01-01' THEN
'Niño'
ELSE
'Mayor'
END		
	FROM public.pasajero;

-- SELECT NORMAL.
-- USAMOS CASE, para empezar el bloque y le ponemos END para terminarlo.
-- WHEN para decirle donde la columna fecha mayor '20-01-01' le decimos entonces es con THEN NIÑO
-- ELSE que es si no, es mayor o la frase que queramos.
-- FROM bases de dato y la tabla. 