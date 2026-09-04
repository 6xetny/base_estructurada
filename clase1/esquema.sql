-- consultas a base de datos
-- para obtener una lista de todas las bases de datos en el sevidor, se puede utilizar la siguiente consulta: (SQL estandar.)
SELECT schema_name
FROM information_schema.schemata;

-- comando SHOW
-- Una consulta similar a la interior es utilizando el comando "SHOW".
SHOW DATABASES;

-- SHOW Tambien ofrece una alternativa
USE empresa;
SHOW TABLES;

-- NOTA: la sentencia show no esta disponible en todos los DBMS, es un comando especifico del dialecto MYSQL, es decir no
-- sirve para otros motores de DB.

--Consultas a Tablas
-- Para listar todas las tablas dentro de la base de datos "mi_base_de_datos".

SELECT table_name
FROM information_schema.tables
WHERE table_schema = "mi_base_de_Datos";

-- por ejemplo, para una base de datos llamada "empresas" seria asi..

SELECT table_name
FROM information_schema.tables
WHERE table_schema = "empresa";

/* Consultas columnas
para obtener informacion detallada sobre las columnas de una tabla en particular, incluyendo su tipo de dato,
si admiten valores nulos y sus valores por defecto, utilice una consulta similar a la siguiente.*/ 

SELECT column_name,
       data_type,
       is_nullable,
       column_default
FROM   information_schema.columns
WHERE  table_schema = 'mi_base_de_Datos' AND 
       table_name = 'mi_tabla'; 

-- por ejemplo: 
SELECT column_name,
       data_type,
       is_nullable,
       column_default
FROM   information_schema.columns
WHERE table_schema = 'empresa' AND
      table_name = 't_personal';

-- DESCRIBE o DESC: una vista similar a la estructura de una tabla.

DESCRIBE mi_base_de_Datos.mi_tabla; 

-- ejemplo:

DESCRIBE empresa.t_personal;

DESC empresa.t_personal;