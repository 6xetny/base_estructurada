
DROP DATABASE IF EXISTS optica_vision_cautin;
CREATE DATABASE optica_vision_cautin
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_spanish_ci;
USE optica_vision_cautin;

-- ---------------------------------------------------------------------
-- Clientes de la óptica (datos ingresados a mano: espacios sobrantes
-- y mezcla de mayúsculas y minúsculas)
-- ---------------------------------------------------------------------
CREATE TABLE t_cliente (
    id                INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    nombre            VARCHAR(30)   NOT NULL,
    apellido          VARCHAR(30)   NOT NULL,
    email             VARCHAR(60)   NOT NULL,
    ciudad            VARCHAR(30)   NOT NULL,
    fecha_nacimiento  DATE          NOT NULL,
    fecha_registro    DATE          NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO t_cliente (nombre, apellido, email, ciudad, fecha_nacimiento, fecha_registro) VALUES
('  carolina',  'Fuentes  ',       'CFuentes@Gmail.com ',          'Temuco',          '1985-03-14', '2023-05-10'),
('PEDRO',       ' sandoval',       '  psandoval@yahoo.cl',         'padre las casas', '1978-11-02', '2024-01-22'),
('   javiera ',    'MUÑOZ',           'JAVI.MUNOZ@HOTMAIL.COM',       'Temuco',          '2001-07-25', '2025-09-03'),
(' rodrigo',    '  Huenchullán ',  'rhuenchullan@gmail.com',       'VILCÚN',          '1969-11-18', '2023-02-14'),
('Fernanda ',    '  tapia',           'fer.tapia@outlook.com ',       'Lautaro',         '1995-01-09', '2026-03-30'),
('  ANDRÉS  ',    'Paillalef   ',       'andres.paillalef@gmail.com',   'temuco',          '1988-11-27', '2024-08-12'),
('valentina',   '  ROJAS',         'VROJAS@GMAIL.COM',             'Pucón',           '2003-05-06', '2026-10-05'),
('Mauricio ',   ' Cárcamo',         '  mcarcamo@ufro.cl',             'Temuco',          '1972-09-30', '2025-11-20'),
('  isidora   ',   'vergara  ',       'Isidora.Vergara@Gmail.com   ',    'Angol',           '1999-11-11', '2026-06-17'),
('CRISTIÁN',    'neira',           'cneira@yahoo.cl',              'Villarrica',      '1964-02-21', '2023-12-01');

-- ---------------------------------------------------------------------
-- Catálogo de productos (sistema nuevo, tipos de datos correctos)
-- ---------------------------------------------------------------------
CREATE TABLE t_producto (
    id                  SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre              VARCHAR(50)       NOT NULL,
    categoria           ENUM('Armazón', 'Lente de sol', 'Cristal', 'Accesorio') NOT NULL,
    marca               VARCHAR(30)       NOT NULL,
    precio              INT UNSIGNED      NOT NULL,
    costo               DECIMAL(10,2)     NOT NULL,
    stock               TINYINT UNSIGNED  NOT NULL,
    graduacion          DECIMAL(4,2)      NOT NULL DEFAULT 0.00,
    anio_coleccion      YEAR              NOT NULL,
    fecha_hora_ingreso  DATETIME          NOT NULL,
    garantia_meses      TINYINT UNSIGNED  NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO t_producto (nombre, categoria, marca, precio, costo, stock, graduacion, anio_coleccion, fecha_hora_ingreso, garantia_meses) VALUES
('Armazón Metal Clásico',         'Armazón',      'Ray-Ban',       89990,  41250.50, 14,  0.00, 2025, '2025-11-03 09:15:00', 12),
('Armazón Acetato Carey',         'Armazón',      'Oakley',       119990,  58300.75,  7,  0.00, 2026, '2026-04-18 16:40:00', 12),
('Lente de Sol Aviador',          'Lente de sol', 'Ray-Ban',      149990,  72480.20,  9,  0.00, 2025, '2025-12-10 11:05:00', 24),
('Lente de Sol Polarizado Sport', 'Lente de sol', 'Oakley',       134990,  66010.00, 15,  0.00, 2026, '2026-08-22 10:30:00', 24),
('Cristal Monofocal Miopía',      'Cristal',      'Essilor',       45990,  18200.40, 40, -2.75, 2026, '2026-02-05 08:20:00',  6),
('Cristal Progresivo',            'Cristal',      'Zeiss',        189990,  97540.60, 12,  1.50, 2025, '2025-10-14 15:10:00', 12),
('Cristal Blue Light',            'Cristal',      'Hoya',          59990,  24990.90, 26, -1.25, 2026, '2026-09-01 12:45:00',  6),
('Estuche Rígido',                'Accesorio',    'Visión Cautín',  6990,   2150.30, 55,  0.00, 2024, '2025-06-20 17:30:00',  3),
('Kit de Limpieza',               'Accesorio',    'Zeiss',          8990,   3400.00, 33,  0.00, 2026, '2026-07-08 09:50:00',  3),
('Cordón Sujetador',              'Accesorio',    'Visión Cautín',  3990,    950.85, 18,  0.00, 2025, '2025-09-12 14:00:00',  3);

-- ---------------------------------------------------------------------
-- Ventas exportadas desde el sistema antiguo (todo guardado como texto)
-- ---------------------------------------------------------------------
CREATE TABLE t_venta_antigua (
    id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nro_boleta      VARCHAR(8)   NOT NULL,
    producto        VARCHAR(50)  NOT NULL,
    precio_txt      VARCHAR(12)  NOT NULL,
    cantidad_txt    VARCHAR(4)   NOT NULL,
    descuento_txt   VARCHAR(5)   NOT NULL,
    fecha_hora_txt  VARCHAR(19)  NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO t_venta_antigua (nro_boleta, producto, precio_txt, cantidad_txt, descuento_txt, fecha_hora_txt) VALUES
('0004501', 'Armazón Metal Clásico',         '89990',  '1',  '0.00', '2026-10-02 10:15:30'),
('0004502', 'Cristal Monofocal Miopía',      '45990',  '2',  '0.10', '2026-10-02 12:40:05'),
('0004503', 'Estuche Rígido',                '6990',   '3',  '0.00', '2026-10-09 17:05:44'),
('0004504', 'Lente de Sol Aviador',          '149990', '1',  '0.20', '2026-10-15 15:30:00'),
('0004505', 'Kit de Limpieza',               '8990',   '12', '0.05', '2026-10-21 09:20:10'),
('0004506', 'Cristal Progresivo',            '189990', '2',  '0.20', '2026-10-30 18:45:20'),
('0004507', 'Cordón Sujetador',              '3990',   '10', '0.00', '2026-11-04 11:10:00'),
('0004508', 'Lente de Sol Polarizado Sport', '134990', '1',  '0.00', '2026-11-06 16:25:35'),
('0004509', 'Cristal Blue Light',            '59990',  '2',  '0.10', '2026-11-13 10:55:00'),
('0004510', 'Armazón Acetato Carey',         '119990', '1',  '0.10', '2026-11-18 19:05:15'),
('0004511', 'Estuche Rígido',                '6990',   '4',  '0.00', '2026-11-20 13:30:00'),
('0004512', 'Kit de Limpieza',               '8990',   '5',  '0.10', '2026-11-25 15:50:40');

-- Ejercicio 1:
SELECT id, CONCAT(UPPER(apellido), ', ', LOWER(nombre)) AS cliente, email, ciudad
FROM t_cliente
ORDER BY apellido, nombre;

-- Ejercicio 2:  
SELECT 'VC' AS codigo, id, LEFT(UPPER(ciudad), 3) AS ciudad
FROM t_cliente
WHERE LENGTH(email) > 20;
-- Ejercicio 3:
SELECT nombre, precio, (precio - costo) / costo * 0.93 AS ganancia, ROUND(precio / 3, 2) AS cuota_3, ROUND(precio * 0.93, 2) AS precio_convenido
FROM t_producto
WHERE categoria IN ('Armazón', 'Lente de sol');

-- Ejercicio 4:
SELECT categoria, nombre, precio, ROUND (precio, 2) / 1.19 AS valor_neto, ROUND(precio - (precio / 1.19), 2) AS iva
FROM t_producto
WHERE categoria = 'Accesorio'
ORDER BY (precio) DESC;

-- Ejercicio 5 : 
SELECT CONCAT(TRIM(nombre), ' ' , TRIM(apellido)) AS cliente, DAY(fecha_nacimiento) AS dia, YEAR(fecha_nacimiento) AS anio_nacimiento
FROM t_cliente
WHERE MONTH(fecha_nacimiento) = 11
ORDER BY DAY(fecha_nacimiento);

-- Ejercicio 6 :
SELECT nombre, fecha_hora_ingreso, DATEDIFF('2026-11-13', fecha_hora_ingreso) AS dias_bodega
FROM t_producto
WHERE DATEDIFF('2026-11-13', fecha_hora_ingreso) > 365
ORDER BY dias_bodega DESC;

-- Ejercico 7 : 
SELECT CAST(nro_boleta AS UNSIGNED) AS boleta, producto, CAST(precio_txt AS UNSIGNED) * CAST(cantidad_txt AS UNSIGNED) AS total
FROM t_venta_antigua
WHERE (CAST(precio_txt AS UNSIGNED) * CAST(cantidad_txt AS UNSIGNED)) > 100000
ORDER BY total DESC;


-- Ejercicio 8 : 
SELECT nro_boleta, producto, DATE(fecha_hora_txt) AS fecha, TIME(fecha_hora_txt) AS hora
FROM t_venta_antigua
WHERE MONTH(STR_TO_DATE(fecha_hora_txt, '%Y-%m-%d %H:%i:%s')) = 11 AND TIME (STR_TO_DATE(fecha_hora_txt, '%Y-%m-%d' '%H:%i:%s')) >= '12:00:00'
ORDER BY fecha;

-- Ejercicio 9 : 
SELECT CAST(nro_boleta AS UNSIGNED) AS boleta, DATE_FORMAT(STR_TO_DATE(fecha_hora_txt, '%Y-%m-%d %H:%i:%s'), '%d/%m/%Y') AS fecha, CAST(precio_txt AS UNSIGNED) * CAST(cantidad_txt AS UNSIGNED) AS total_bruto
FROM t_venta_antigua
WHERE CAST(descuento_txt AS DECIMAL(5,2)) > 0
ORDER BY boleta;

-- Ejercico 10 :
SELECT CONCAT(UPPER(TRIM(nombre)), ' ', UPPER(TRIM(apellido))) AS cliente, LOWER(TRIM(email)) AS email, DATE_FORMAT(fecha_nacimiento, '%d/%m/%Y') AS nacimiento, YEAR('2026-11-13') - YEAR(fecha_nacimiento) AS edad
FROM t_cliente
WHERE UPPER(TRIM(ciudad)) = 'TEMUCO'
ORDER BY apellido, nombre;
