-- =====================================================================
-- PARTE 1: CREACIÓN DE LA BASE DE DATOS
-- =====================================================================
-- 1. Cree la base de datos autoexpress[span_1](start_span)[span_1](end_span).
CREATE DATABASE autoexpress;

-- 2. Selecciónela como base de datos activa[span_2](start_span)[span_2](end_span).
USE autoexpress;

-- =====================================================================
-- PARTE 2: CREACIÓN DE TABLAS
-- =====================================================================
-- Eliminar tablas previas por si necesitas correr el script desde cero[span_3](start_span)[span_3](end_span)
DROP TABLE IF EXISTS t_mantencion;
DROP TABLE IF EXISTS t_vehiculo;
DROP TABLE IF EXISTS t_cliente;

-- 3. Tabla t_cliente[span_4](start_span)[span_4](end_span)
CREATE TABLE t_cliente (
    Id INT PRIMARY KEY,
    Rut VARCHAR(12) NOT NULL UNIQUE,
    Nombres VARCHAR(100) NOT NULL,
    Apellidos VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Telefono CHAR(9), 
    Region TINYINT, 
    fecha_nacimiento DATE,
    cliente_frecuente BOOLEAN DEFAULT 0, 
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    Observaciones TEXT 
);

-- 4. Tabla t_vehiculo[span_5](start_span)[span_5](end_span)
CREATE TABLE t_vehiculo (
    Id INT PRIMARY KEY,
    Patente VARCHAR(10) NOT NULL UNIQUE,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Year YEAR, 
    tipo_vehiculo VARCHAR(30),
    num_puertas TINYINT, 
    Kilometraje INT DEFAULT 0,
    capacidad_estanque SMALLINT, 
    precio_dia DECIMAL(10,2) NOT NULL, 
    consumo_promedio FLOAT, 
    Disponible BOOLEAN DEFAULT 1,
    Descripcion TEXT,
    fecha_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 5. Tabla t_mantencion[span_6](start_span)[span_6](end_span)
CREATE TABLE t_mantencion (
    Id INT PRIMARY KEY,
    id_vehiculo INT,
    tipo_mantencion CHAR(3), 
    duracion_estimada TIME, 
    Costo FLOAT NOT NULL, 
    hora_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    Resumen TINYTEXT, 
    Detalle LONGTEXT, 
    calificacion_servicio TINYINT 
);

-- =====================================================================
-- PARTE 3: MODIFICACIÓN DE ESTRUCTURA (ALTER TABLE)
-- =====================================================================
-- 3. Agregue una columna email_verificado a t_cliente[span_7](start_span)[span_7](end_span).
ALTER TABLE t_cliente 
ADD email_verificado BOOLEAN DEFAULT 0;

-- 4. Agregue una columna color a t_vehiculo[span_8](start_span)[span_8](end_span).
ALTER TABLE t_vehiculo 
ADD color VARCHAR(30);

-- 5. Elimine la columna comentarios de la tabla t_cliente[span_9](start_span)[span_9](end_span).
ALTER TABLE t_cliente 
DROP COLUMN Observaciones;

-- =====================================================================
-- PARTE 4: MANIPULACIÓN DE DATOS (DML)
-- =====================================================================
-- 6. Inserte 5 registros en t_cliente[span_10](start_span)[span_10](end_span).
INSERT INTO t_cliente (Id, Rut, Nombres, Apellidos, Email, Telefono, Region, fecha_nacimiento)
VALUES 
(1, '11111111-1', 'Juan', 'Pérez', 'juan@email.com', '987654321', 9, '1990-05-15'),
(2, '22222222-2', 'María', 'González', 'maria@email.com', '987654322', 13, '1985-08-20'),
(3, '33333333-3', 'Carlos', 'López', 'carlos@email.com', '987654323', 8, '1992-11-10'),
(4, '44444444-4', 'Ana', 'Martínez', 'ana@email.com', '987654324', 5, '1988-03-25'),
(5, '55555555-5', 'Miguel', 'Soto', 'miguel@email.com', '987654325', 9, '1995-07-30');

-- 7. Inserte 6 registros en t_vehiculo[span_11](start_span)[span_11](end_span).
INSERT INTO t_vehiculo (Id, Patente, Marca, Modelo, Year, tipo_vehiculo, num_puertas, precio_dia, consumo_promedio)
VALUES 
(1, 'AB-CD-12', 'Toyota', 'Yaris', 2022, 'Sedán', 4, 35000.00, 15.5),
(2, 'EF-GH-34', 'Hyundai', 'Tucson', 2023, 'SUV', 5, 45000.00, 12.0),
(3, 'IJ-KL-56', 'Chevrolet', 'Spark', 2021, 'Hatchback', 4, 25000.00, 18.0),
(4, 'MN-OP-78', 'Ford', 'Ranger', 2022, 'Camioneta', 4, 55000.00, 10.5),
(5, 'QR-ST-90', 'Toyota', 'RAV4', 2023, 'SUV', 5, 48000.00, 13.0),
(6, 'UV-WX-12', 'Kia', 'Rio', 2020, 'Sedán', 4, 30000.00, 16.0);

-- 8. Inserte 4 registros en t_mantencion[span_12](start_span)[span_12](end_span).
INSERT INTO t_mantencion (Id, id_vehiculo, tipo_mantencion, duracion_estimada, Costo, Resumen, calificacion_servicio)
VALUES 
(1, 1, 'PRE', '02:00:00', 45000.50, 'Cambio de aceite', 5),
(2, 2, 'REV', '01:30:00', 30000.00, 'Revisión técnica', 4),
(3, 4, 'COR', '04:00:00', 120000.00, 'Cambio de frenos', 5),
(4, 5, 'PRE', '01:00:00', 25000.00, 'Alineación', 3);

-- 9. Actualice el kilometraje de un vehículo específico[span_13](start_span)[span_13](end_span).
UPDATE t_vehiculo 
SET Kilometraje = 15000 
WHERE Id = 1;

-- 10. Aumente el precio_dia en un 8% para todos los vehículos tipo 'SUV[span_14](start_span)'[span_14](end_span).
UPDATE t_vehiculo 
SET precio_dia = precio_dia * 1.08 
WHERE tipo_vehiculo = 'SUV';

-- 11. Elimine un registro de t_mantencion según su id[span_15](start_span)[span_15](end_span).
DELETE FROM t_mantencion 
WHERE Id = 4;

-- =====================================================================
-- PARTE 5: CONSULTAS SELECT
-- =====================================================================
-- 12. Liste todos los clientes registrados[span_16](start_span)[span_16](end_span).
SELECT * FROM t_cliente;

-- 13. Liste solo nombre, apellido y teléfono[span_17](start_span)[span_17](end_span).
SELECT Nombres, Apellidos, Telefono FROM t_cliente;

-- 14. Vehículos tipo 'SUV[span_18](start_span)'[span_18](end_span).
SELECT * FROM t_vehiculo WHERE tipo_vehiculo = 'SUV';

-- 15. Vehículos con precio_dia entre 30000 y 50000[span_19](start_span)[span_19](end_span).
SELECT * FROM t_vehiculo WHERE precio_dia BETWEEN 30000 AND 50000;

-- 16. Clientes cuyo nombre comience con 'M[span_20](start_span)'[span_20](end_span).
SELECT * FROM t_cliente WHERE Nombres LIKE 'M%';

-- 17. Vehículos de marcas específicas[span_21](start_span)[span_21](end_span).
SELECT * FROM t_vehiculo WHERE Marca IN ('Toyota', 'Hyundai', 'Chevrolet');

-- 18. Vehículos ordenados por precio descendente[span_22](start_span)[span_22](end_span).
SELECT * FROM t_vehiculo ORDER BY precio_dia DESC;

-- 19. Clientes ordenados por apellido y luego nombre[span_23](start_span)[span_23](end_span).
SELECT * FROM t_cliente ORDER BY Apellidos ASC, Nombres ASC;

-- 20. Regiones únicas registradas[span_24](start_span)[span_24](end_span).
SELECT DISTINCT Region FROM t_cliente;

-- 21. Tipos de mantención únicos registrados[span_25](start_span)[span_25](end_span).
SELECT DISTINCT tipo_mantencion FROM t_mantencion;
