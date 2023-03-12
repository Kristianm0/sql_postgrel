--- pl_pgsql 📌
-- Una PL ayuda a manejar codigo en la base de datos, por ejemplo Python.


-- EJEMPLO de pl_pgsql ◀️
DO $$
 BEGIN 
 RAISE NOTICE 'Hola mundo';
END
$$

-- Abrimos DO para empezar una PL, y le ponemos el signo de pesos $$.
-- Ponemos el comando BEGIN para empezar, y END para que finalize la PL.
-- RAISE NOTICE sirve para mostrar texto en la consola de postgreSQL.

-- EJEMPLO ◀️


DO $$
DECLARE 
	rec record;
BEGIN 
  FOR rec IN SELECT * FROM pasajero LOOP
	   RAISE NOTICE 'Un pasajero se llama: ', rec.nombre;
  END LOOP;
END 
$$

-- DO para abrir el bloque de PL.
-- BEGIN para decirle donde comienza.
-- RAISE NOTICE para que escriba algo.
-- END para decirle donde termina.
-- DECLARE es sirve para declarar una variable, le ponemos el valro a la izquierda y el nombre a la derecha.
-- FOR para hacer que repita el comando.
-- SELECT para selecionar los datos, y FROM para decirle de donde los traiga.
-- RAISE NOTICE para que escriba en la consola el mensaje.
