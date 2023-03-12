--- JOINS 📌

-- Ej: JOIN ◀️
SELECT *
FROM pasajero 
JOIN viaje ON (viaje.id_pasajero = pasajero.id);

-- SELECT todo con *
-- FROM de la tabla pasajero.
-- JOIN para unir los datos, ponemos la que vamos a unir , la tabla y le decimos la columna con ON dentro de las comillas ponemos la tabla y con un punto y pasamos la columna, le ponemos = para que traiga el otro datos y de la misma forma, primero tabla luego punto y colomna.


-- Ej: JOIN - Otro ejemplo similar ◀️
SELECT *
FROM tren 
JOIN  pasajero ON  (pasajero.id_pasajero = tren.id_tren)


-- Ej: Ver pasajeros que no han tomado un viaje ◀️

SELECT *
FROM pasajero 
LEFT JOIN viaje ON (viaje.id_pasajero = pasajero.id_pasajero)
WHERE viaje.id_pasajero IS NULL

-- SELECT todo con *
-- FROM en la tabla pasajero.
-- LEFT JOIN para traer los datos solo de la tabla izquierda osea de pasajero. En el le damos la tabla y le ponemos un ON para decirle que rows o columnas traer, entre los parentesis le decimos que los traiga, y le decimo de que tabla punto la columna y queda; viaje.id_pasajero: viaje como la tabla y id_pasajero como el row, le ponemos = para que tambien traiga esos datos.
-- WHERE para filtrar los datos NULL que no tiene valor, osea los pasajero que no han tomado un viaje ya que no hay registro.