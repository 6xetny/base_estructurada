
DROP DATABASE IF EXISTS ferreteria;
CREATE DATABASE ferreteria CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE ferreteria;

-- ---------------------------------------------------------------------
-- Tablas
-- ---------------------------------------------------------------------
CREATE TABLE t_categoria
(
    id      TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre  VARCHAR(50) NOT NULL UNIQUE
) ENGINE = InnoDB;

CREATE TABLE t_producto
(
    id            SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    sku           CHAR(8)       NOT NULL UNIQUE,
    nombre        VARCHAR(100)  NOT NULL,
    marca         VARCHAR(40)   NOT NULL,
    pais_origen   VARCHAR(40)   NOT NULL DEFAULT 'Chile',
    categoria_id  TINYINT UNSIGNED NOT NULL,
    precio        DECIMAL(10,2) NOT NULL,
    stock         SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    unidad        ENUM('Unidad','Caja','Metro','Kilo','Litro') NOT NULL DEFAULT 'Unidad',
    activo        BOOLEAN       NOT NULL DEFAULT TRUE,
    CONSTRAINT fk_producto_categoria FOREIGN KEY (categoria_id) REFERENCES t_categoria (id)
) ENGINE = InnoDB;

CREATE TABLE t_cliente
(
    id              INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    rut             VARCHAR(12)   NOT NULL UNIQUE,
    nombre          VARCHAR(100)  NOT NULL,
    tipo            ENUM('Particular','Empresa') NOT NULL,
    comuna          VARCHAR(50)   NOT NULL,
    telefono        CHAR(12)      NULL,
    email           VARCHAR(120)  NULL UNIQUE,
    fecha_registro  DATE          NOT NULL DEFAULT (CURDATE())
) ENGINE = InnoDB;

CREATE TABLE t_vendedor
(
    id             TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(60)  NOT NULL,
    apellido       VARCHAR(60)  NOT NULL,
    comision       DECIMAL(4,2) NOT NULL DEFAULT 0.00,
    fecha_ingreso  DATE         NOT NULL,
    activo         BOOLEAN      NOT NULL DEFAULT TRUE
) ENGINE = InnoDB;

CREATE TABLE t_venta
(
    id               INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cliente_id       INT UNSIGNED      NOT NULL,
    producto_id      SMALLINT UNSIGNED NOT NULL,
    vendedor_id      TINYINT UNSIGNED  NOT NULL,
    cantidad         SMALLINT UNSIGNED NOT NULL,
    precio_unitario  DECIMAL(10,2)     NOT NULL,
    medio_pago       ENUM('Efectivo','Débito','Crédito','Transferencia') NOT NULL,
    fecha            DATE              NOT NULL,
    registrado_en    TIMESTAMP         NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_venta_cliente  FOREIGN KEY (cliente_id)  REFERENCES t_cliente  (id),
    CONSTRAINT fk_venta_producto FOREIGN KEY (producto_id) REFERENCES t_producto (id),
    CONSTRAINT fk_venta_vendedor FOREIGN KEY (vendedor_id) REFERENCES t_vendedor (id)
) ENGINE = InnoDB AUTO_INCREMENT = 70001;

-- ---------------------------------------------------------------------
-- Datos
-- ---------------------------------------------------------------------
INSERT INTO t_categoria (nombre) VALUES
('Herramientas manuales'),
('Herramientas eléctricas'),
('Fijaciones'),
('Pinturas'),
('Gasfitería'),
('Electricidad'),
('Materiales de construcción'),
('Jardín');

INSERT INTO t_producto (sku, nombre, marca, pais_origen, categoria_id, precio, stock, unidad, activo) VALUES
('HM-00101', 'Martillo carpintero 16 oz',        'Stanley',   'Estados Unidos', 1,  12990.00,  35, 'Unidad', TRUE),
('HM-00102', 'Juego destornilladores 6 piezas',  'Truper',    'México',         1,   8990.00,  42, 'Unidad', TRUE),
('HM-00103', 'Huincha de medir 5 m',             'Stanley',   'Estados Unidos', 1,   6490.00,   0, 'Unidad', TRUE),
('HM-00104', 'Alicate universal 8"',             'Bahco',     'Suecia',         1,  14990.00,  18, 'Unidad', TRUE),
('HE-00201', 'Taladro percutor 650 W',           'Bosch',     'Alemania',       2,  54990.00,  12, 'Unidad', TRUE),
('HE-00202', 'Esmeril angular 4 1/2"',           'Makita',    'Japón',          2,  49990.00,   7, 'Unidad', TRUE),
('HE-00203', 'Atornillador inalámbrico 12 V',    'Bosch',     'Alemania',       2,  69990.00,   0, 'Unidad', TRUE),
('HE-00204', 'Sierra circular 1400 W',           'Makita',    'Japón',          2,  99990.00,   4, 'Unidad', FALSE),
('FJ-00301', 'Tornillo volcanita 6x1" (100 u)',  'Mamut',     'Chile',          3,   2490.00, 150, 'Caja',   TRUE),
('FJ-00302', 'Clavo corriente 3" (1 kg)',        'Inchalam',  'Chile',          3,   1890.00, 220, 'Kilo',   TRUE),
('FJ-00303', 'Tarugo plástico 8 mm (50 u)',      'Fischer',   'Alemania',       3,   3290.00,  80, 'Caja',   TRUE),
('PT-00401', 'Látex interior blanco 1 gl',       'Sipa',      'Chile',          4,  15990.00,  40, 'Unidad', TRUE),
('PT-00402', 'Esmalte sintético negro 1/4 gl',   'Ceresita',  'Chile',          4,   7490.00,  25, 'Unidad', TRUE),
('PT-00403', 'Rodillo antigota 9"',              'Truper',    'México',         4,   4990.00,   0, 'Unidad', TRUE),
('GF-00501', 'Llave de paso 1/2"',               'Nibsa',     'Chile',          5,   5990.00,  30, 'Unidad', TRUE),
('GF-00502', 'Cinta teflón 12 mm',               'Truper',    'México',         5,    790.00, 300, 'Unidad', TRUE),
('GF-00503', 'Tubo PVC hidráulico 20 mm',        'Vinilit',   'Chile',          5,   3490.00,  60, 'Metro',  TRUE),
('EL-00601', 'Cable eléctrico 2,5 mm',           'Madeco',    'Chile',          6,    990.00, 500, 'Metro',  TRUE),
('EL-00602', 'Ampolleta LED 9 W',                'Philips',   'Países Bajos',   6,   1990.00, 120, 'Unidad', TRUE),
('EL-00603', 'Interruptor doble',                'Bticino',   'Italia',         6,   3990.00,  45, 'Unidad', TRUE),
('MC-00701', 'Cemento 25 kg',                    'Melón',     'Chile',          7,   5490.00,  90, 'Unidad', TRUE),
('MC-00702', 'Plancha volcanita 10 mm',          'Volcán',    'Chile',          7,   8990.00,  65, 'Unidad', TRUE),
('JD-00801', 'Manguera jardín 15 m',             'Tramontina','Brasil',         8,  12990.00,  20, 'Unidad', TRUE),
('JD-00802', 'Tijera de podar',                  'Tramontina','Brasil',         8,   9990.00,   0, 'Unidad', FALSE),
('JD-00803', 'Pala punta huevo',                 'Truper',    'México',         8,  11990.00,  15, 'Unidad', TRUE);

INSERT INTO t_cliente (rut, nombre, tipo, comuna, telefono, email, fecha_registro) VALUES
('12345678-5', 'Rodrigo Painemal',            'Particular', 'Padre Las Casas', '+56987654321', 'rpainemal@correo.cl',     '2024-03-12'),
('76543210-3', 'Constructora Los Avellanos',  'Empresa',    'Temuco',          '+56452210011', 'contacto@avellanos.cl',   '2023-11-05'),
('15678234-9', 'Camila Huenchullán',          'Particular', 'Temuco',          '+56976543210', 'chuenchullan@correo.cl',  '2025-01-20'),
('77890123-K', 'Inmobiliaria Cautín Ltda.',   'Empresa',    'Temuco',          '+56452233445', 'ventas@icautin.cl',       '2022-08-14'),
('18234567-2', 'Felipe Carrasco',             'Particular', 'Villarrica',      NULL,           'fcarrasco@correo.cl',     '2025-06-02'),
('78111222-4', 'Mantenciones Llaima SpA',     'Empresa',    'Cunco',           '+56452255667', NULL,                      '2024-09-30'),
('16345987-1', 'Valentina Quilaqueo',         'Particular', 'Lautaro',         '+56965432109', 'vquilaqueo@correo.cl',    '2023-04-18'),
('79222333-6', 'Electricidad Ñielol EIRL',    'Empresa',    'Padre Las Casas', '+56452277889', 'admin@enielol.cl',        '2025-02-11'),
('19456123-8', 'Matías Sandoval',             'Particular', 'Temuco',          '+56954321098', NULL,                      '2026-01-07'),
('76999888-7', 'Agrícola Pillanlelbún S.A.',  'Empresa',    'Lautaro',         '+56452299001', 'compras@pillanlelbun.cl', '2021-12-01'),
('17567890-3', 'Javiera Melinao',             'Particular', 'Pucón',           '+56943210987', 'jmelinao@correo.cl',      '2024-07-23'),
('77333444-9', 'Remodelaciones Toltén Ltda.', 'Empresa',    'Villarrica',      NULL,           'info@rtolten.cl',         '2025-10-15');

INSERT INTO t_vendedor (nombre, apellido, comision, fecha_ingreso, activo) VALUES
('Pedro',     'Catrileo',  2.50, '2019-03-01', TRUE),
('Daniela',   'Fuentes',   3.00, '2021-07-15', TRUE),
('Sebastián', 'Antilef',   2.00, '2023-02-01', TRUE),
('Carolina',  'Fuentes',   2.50, '2020-10-05', FALSE),
('Ignacio',   'Millapán',  1.50, '2025-04-14', TRUE);

INSERT INTO t_venta (cliente_id, producto_id, vendedor_id, cantidad, precio_unitario, medio_pago, fecha) VALUES
( 1,  1, 1,  1, 12990.00, 'Débito',        '2026-03-02'),
( 2, 21, 2, 40,  5490.00, 'Transferencia', '2026-03-03'),
( 3, 12, 3,  2, 15990.00, 'Crédito',       '2026-03-05'),
( 4, 22, 2, 30,  8990.00, 'Transferencia', '2026-03-09'),
( 5,  5, 1,  1, 54990.00, 'Crédito',       '2026-03-12'),
( 6, 18, 5, 50,   990.00, 'Transferencia', '2026-03-16'),
( 7, 19, 3,  4,  1990.00, 'Efectivo',      '2026-03-20'),
( 8, 20, 2, 10,  3990.00, 'Transferencia', '2026-04-01'),
( 9, 16, 5,  3,   790.00, 'Efectivo',      '2026-04-04'),
(10, 23, 1,  5, 12990.00, 'Transferencia', '2026-04-08'),
(11,  2, 3,  1,  8990.00, 'Débito',        '2026-04-15'),
(12,  9, 2, 20,  2490.00, 'Transferencia', '2026-04-22'),
( 2, 10, 1, 15,  1890.00, 'Transferencia', '2026-05-04'),
( 3, 15, 5,  1,  5990.00, 'Débito',        '2026-05-10'),
( 4,  6, 2,  2, 49990.00, 'Crédito',       '2026-05-18'),
( 1, 13, 3,  1,  7490.00, 'Efectivo',      '2026-06-01'),
( 5, 25, 1,  1, 11990.00, 'Débito',        '2026-06-09'),
( 8, 18, 2, 80,   990.00, 'Transferencia', '2026-06-20'),
(10, 21, 1, 60,  5490.00, 'Transferencia', '2026-07-03'),
( 7, 11, 5,  2,  3290.00, 'Efectivo',      '2026-07-14'),
(11,  4, 3,  1, 14990.00, 'Crédito',       '2026-08-05'),
( 6, 17, 2, 12,  3490.00, 'Transferencia', '2026-08-19'),
( 9,  1, 5,  1, 12990.00, 'Débito',        '2026-09-02'),
(12, 12, 1,  6, 15990.00, 'Transferencia', '2026-09-15');

-- Ejercicio 1
SELECT marca, pais_origen
FROM t_producto
WHERE activo = TRUE AND stock > 0
ORDER BY marca, pais_origen;

-- Ejercicio 2 
SELECT column_name, data_type, is_nullable, column_default 
FROM information_schema.columns 
WHERE table_name = 't_producto' AND table_schema = 'ferreteria';

-- ejercicio 3
CREATE VIEW v_producto_importado AS
SELECT sku, nombre, marca, pais_origen, precio
FROM t_producto 
WHERE activo = TRUE AND pais_origen = 'Chile';
SELECT * FROM v_producto_importado;

-- ejercicio 4 
CREATE VIEW v_cliente_empresa AS
SELECT id, RUT, nombre, tipo, comuna, telefono
FROM t_cliente
WHERE tipo = 'Empresa';
SELECT * FROM v_cliente_empresa;

-- ejercicio 5 
INSERT INTO v_cliente_empresa (RUT, nombre, tipo, comuna, telefono)
VALUES ('77654321-8', 'Constructora Río Cautín SpA','Empresa','Padre Las Casas', '+56452300400');
SELECT * FROM v_cliente_empresa;

-- ejercicio 6 

CREATE TABLE t_cotizacion 
(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT UNSIGNED NOT NULL,
    monto DECIMAL (12,2) NOT NULL, 
    validez_dias TINYINT UNSIGNED NOT NULL DEFAULT 15,
    fecha DATE NOT NULL
);

-- ejercicio 7
INSERT INTO t_cotizacion (monto, fecha) VALUES 
('156900.00','2026-10-06'),
('912300.00','2026-10-07');
SELECT * FROM t_cotizacion;

-- ejercicio 8 
CREATE INDEX i_producto_marca ON t_producto (marca);
CREATE INDEX i_vendedor_apellido ON t_vendedor (apellido);

-- ejercicio 9 
CREATE INDEX i_cliente_comuna_tipo ON t_cliente (comuna, tipo);
-- Ejercicio 10 
CREATE INDEX  i_venta_medio_pago_fecha ON t_venta(medio_pago, fecha);
