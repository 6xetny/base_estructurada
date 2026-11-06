/* Conversion de texto a numero
-- Convertir string a entero (resultado: 123)
-- Nota : Entre "CAST" y el "(" no puede hbaer ningun espacio */
SELECT CAST('123' AS SIGNED) AS numero;

-- Convertir string a decimal (resultado : 45.67)
SELECT CAST('45.67' AS DECIMAL(10,2)) AS precio;

-- Conversion de numero a texto 

-- Numero a string (resultado : '12345')
SELECT CAST(12345 AS CHAR) AS codigo;

-- Con longitud especifica (Resultado : '789')
SELECT CAST(789 AS CHAR(10)) AS codigo_fijo;

-- String a fecha 
SELECT CAST('2025-10-13' AS DATE) AS fecha;

-- Fecha a string
SELECT CAST(NOW() AS CHAR) AS fecha_texto;

-- Extraer solo la fecha de un datetime (resultado : 2027-09-03)
SELECT CAST('2027-09-03 15:30:00' AS DATE) AS solo_fecha;

-- Crear tabla

DROP DATABASE IF EXISTS funciones_de_conversion;

CREATE DATABASE funciones_de_conversion;

USE funciones_de_conversion;

CREATE TABLE t_venta
    (
    id INT PRIMARY KEY,
    producto VARCHAR(100),
    precio VARCHAR(20),    -- Almacenado como texto
    cantidad VARCHAR(10),    -- Almacenado como texto
    fecha_venta VARCHAR(50)    -- Almacenado como texto
    );

INSERT INTO t_venta VALUES
    (1, 'Notebook', '550900.50', '4', '2025-10-01'),
    (2, 'Mouse', '9999.99', '7', '2024-09-07'),
    (3, 'Teclado', '17500.00', '6', '2025-08-13'),
    (4, 'Monitor', '150000.75', '5', '2025-03-20'),
    (5, 'Impresora', '75000.75', '8', '2024-10-20');

-- Ejercicio 1: Calcular el total de ventas por producto
SELECT producto, 
       CAST(precio AS DECIMAL(10,2)) * CAST(cantidad AS UNSIGNED) AS total_venta
FROM t_venta;

-- Ejercicio 2: Mostrar todos los productos vendidos el segundo semestre del 2025 (filtrar por rango de fechas)
SELECT * FROM t_venta
WHERE CAST(fecha_venta AS DATE) BETWEEN '2025-07-01' AND '2025-12-31';

-- Ejercicio 3: Genere un listado de prdoductos, en donde se despliegue el producto y su precio, ordenado numeericamente de menor a mayor por precio
SELECT producto, CAST(precio AS DECIMAL(10,2)) AS precio_numerico
FROM t_venta
ORDER BY CAST(precio AS DECIMAL(10,2)) ASC;

-- Ejercicio 4: Genere una salida de la tabla ventas con el producto, el precio con el simbolo "$", la cantidad y la fecha en formato dd/mm/aaaa
SELECT producto, 
       CONCAT('$', CAST(precio AS DECIMAL(10,2))) AS precio_formato,
       CAST(cantidad AS UNSIGNED) AS cantidad_numerica,
       DATE_FORMAT(CAST(fecha_venta AS DATE), '%d/%m/%Y') AS fecha_formato
FROM t_venta;
