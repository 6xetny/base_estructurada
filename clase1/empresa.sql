-- Para crear una base de datos SQL, se utiliza la declaracion CREATE DATABASE.
CREATE DATABASE empresa;

-- El comando USE se utiliza para seleccionar la base de datos
USE empresa;

/*
El comando DROP DATABASE sirve para eliminar una base de datos. 
DROP DATABASE empresa; 
*/

-- para Crear una tabla de "personal" o cualquier tabla CREATE TABLE;
CREATE TABLE t_personal
(
    id INT PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL,
    apellido VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL,
    ciudad VARCHAR (100),
    salario INT,
    departamento VARCHAR (50),
    fecharegistro DATE
);

-- Creacion tabla "productos" con valor por defecto.
CREATE TABLE t_producto
(
    id INT PRIMARY KEY,
    nombre VARCHAR (255) NOT NULL,
    precio DECIMAL (10,2) NOT NULL,
    stock INT DEFAULT 0,
    fechacreacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Añadir la columna "telefono" a la tabla "t_personal"
ALTER TABLE t_personal 
    ADD telefono VARCHAR (20);

-- eliminar la columna "fecharegistro" de la tabla "t_personal"
ALTER TABLE t_personal
    DROP COLUMN fecharegistro;


-- personal
INSERT INTO t_personal
(id, nombre, apellido, email, ciudad, salario, departamento, fecharegistro)
VALUES
(1, 'Javiera', 'Muñoz', 'j.munoz@empresa.cl', 'Santiago', 1200000, 'Ventas', '2023-01-15'),
(2, 'Matías', 'Rojas', 'm.rojas@pyme.cl', 'Concepción', 950000, 'TI', '2023-02-10'),
(3, 'Valentina', 'Soto', 'v.soto@correo.cl', 'Valparaíso', 1100000, 'RRHH', '2023-03-05'),
(4, 'Sebastián', 'Silva', 's.silva@negocios.cl', 'La Serena', 850000, 'Logística', '2023-01-20'),
(5, 'Camila', 'Sepúlveda', 'c.sepulveda@servicios.cl', 'Antofagasta', 1400000, 'Finanzas', '2023-04-12'),
(6, 'Nicolás', 'Castro', 'n.castro@proyectos.cl', 'Temuco', 920000, 'Marketing', '2023-05-22'),
(7, 'Francisca', 'Morales', 'f.morales@consultora.cl', 'Rancagua', 1050000, 'Ventas', '2023-06-01'),
(8, 'Diego', 'Fuentes', 'd.fuentes@industria.cl', 'Puerto Montt', 1300000, 'Operaciones', '2023-02-28'),
(9, 'Constanza', 'Pérez', 'c.perez@agencia.cl', 'Iquique', 980000, 'TI', '2023-07-14'),
(10, 'Felipe', 'Henríquez', 'f.henriquez@retail.cl', 'Talca', 890000, 'Atención al Cliente', '2023-08-05'),
(11, 'Ignacia', 'Gutiérrez', 'i.gutierrez@pyme.cl', 'Arica', 1150000, 'Finanzas', '2023-09-10'),
(12, 'Gonzalo', 'Vásquez', 'g.vasquez@empresa.cl', 'Copiapó', 1250000, 'Ventas', '2023-01-30'),
(13, 'Catalina', 'Cárcamo', 'c.carcamo@correo.cl', 'Punta Arenas', 1500000, 'Minería', '2023-04-18'),
(14, 'Rodrigo', 'Espinoza', 'r.espinoza@servicios.cl', 'Chillán', 870000, 'Logística', '2023-05-02'),
(15, 'Fernanda', 'Valenzuela', 'f.valenzuela@agencia.cl', 'Quillota', 1020000, 'RRHH', '2023-06-15'),
(16, 'Andrés', 'Tapia', 'a.tapia@negocios.cl', 'Curicó', 940000, 'Marketing', '2023-07-20'),
(17, 'Bárbara', 'Lara', 'b.lara@proyectos.cl', 'Osorno', 1180000, 'TI', '2023-08-11'),
(18, 'Cristian', 'Salazar', 'c.salazar@industria.cl', 'Calama', 1600000, 'Operaciones', '2023-03-25'),
(19, 'Antonia', 'Torres', 'a.torres@retail.cl', 'Valdivia', 960000, 'Ventas', '2023-09-05'),
(20, 'Gabriel', 'Miranda', 'g.miranda@consultora.cl', 'Los Ángeles', 1080000, 'Finanzas', '2023-10-12'),
(21, 'Isidora', 'Contreras', 'i.contreras@pyme.cl', 'Santiago', 1220000, 'TI', '2023-01-11'),
(22, 'Joaquín', 'Gallardo', 'j.gallardo@empresa.cl', 'Concepción', 970000, 'Logística', '2023-02-22'),
(23, 'Martina', 'Figueroa', 'm.figueroa@correo.cl', 'Viña del Mar', 1350000, 'Marketing', '2023-03-14'),
(24, 'Benjamín', 'Mendoza', 'b.mendoza@servicios.cl', 'Antofagasta', 1450000, 'Minería', '2023-04-05'),
(25, 'Sofía', 'Aguayo', 's.aguayo@agencia.cl', 'Coquimbo', 890000, 'RRHH', '2023-05-28'),
(26, 'Lucas', 'Garrido', 'l.garrido@negocios.cl', 'Rancagua', 1030000, 'Ventas', '2023-06-18'),
(27, 'Florencia', 'Moya', 'f.moya@proyectos.cl', 'Talca', 910000, 'Atención al Cliente', '2023-07-22'),
(28, 'Vicente', 'Bravo', 'v.bravo@industria.cl', 'Temuco', 1120000, 'TI', '2023-08-30'),
(29, 'Emilia', 'Vera', 'e.vera@retail.cl', 'Puerto Montt', 1280000, 'Finanzas', '2023-09-14'),
(30, 'Maximiliano', 'Pino', 'm.pino@consultora.cl', 'Iquique', 1010000, 'Operaciones', '2023-10-01'),
(31, 'Josefa', 'Orellana', 'j.orellana@pyme.cl', 'Chillán', 860000, 'Ventas', '2023-02-05'),
(32, 'Tomás', 'Cisternas', 't.cisternas@empresa.cl', 'Punta Arenas', 1550000, 'Logística', '2023-03-19'),
(33, 'Maite', 'Reyes', 'm.reyes@correo.cl', 'Santiago', 1190000, 'RRHH', '2023-04-22'),
(34, 'Agustín', 'Pavez', 'a.pavez@servicios.cl', 'Valparaíso', 940000, 'Marketing', '2023-05-10'),
(35, 'Pascale', 'Araya', 'p.araya@agencia.cl', 'Concepción', 1070000, 'TI', '2023-06-25'),
(36, 'Martín', 'Díaz', 'm.diaz@negocios.cl', 'La Serena', 1100000, 'Finanzas', '2023-07-08'),
(37, 'Monserrat', 'Parra', 'm.parra@proyectos.cl', 'Antofagasta', 1420000, 'Operaciones', '2023-08-15'),
(38, 'Daniel', 'Cabrera', 'd.cabrera@industria.cl', 'Calama', 1650000, 'Minería', '2023-09-20'),
(39, 'Renata', 'Sanhueza', 'r.sanhueza@retail.cl', 'Osorno', 980000, 'Ventas', '2023-10-25'),
(40, 'Alonso', 'López', 'a.lopez@consultora.cl', 'Valdivia', 1130000, 'RRHH', '2023-11-05'),
(41, 'Isabel', 'Donoso', 'i.donoso@pyme.cl', 'Santiago', 1250000, 'TI', '2023-01-22'),
(42, 'Emilio', 'Guzmán', 'e.guzman@empresa.cl', 'Viña del Mar', 1300000, 'Ventas', '2023-02-14'),
(43, 'Trinidad', 'Venegas', 't.venegas@correo.cl', 'Temuco', 920000, 'Logística', '2023-03-29'),
(44, 'Julián', 'Pinto', 'j.pinto@servicios.cl', 'Rancagua', 1040000, 'Marketing', '2023-04-10'),
(45, 'Elena', 'Arriagada', 'e.arriagada@agencia.cl', 'Talca', 880000, 'Atención al Cliente', '2023-05-18'),
(46, 'Cristóbal', 'Medina', 'c.medina@negocios.cl', 'Curicó', 1100000, 'Finanzas', '2023-06-02'),
(47, 'Amaya', 'Olivares', 'a.olivares@proyectos.cl', 'Iquique', 1020000, 'TI', '2023-07-12'),
(48, 'Rafael', 'Navarro', 'r.navarro@industria.cl', 'Puerto Montt', 1210000, 'Operaciones', '2023-08-04'),
(49, 'Delfina', 'Godoy', 'd.godoy@retail.cl', 'Arica', 1150000, 'Ventas', '2023-09-21'),
(50, 'Eduardo', 'Maldonado', 'e.maldonado@consultora.cl', 'Copiapó', 1320000, 'Logística', '2023-10-15'),
(51, 'Laura', 'Villarroel', 'l.villarroel@pyme.cl', 'Santiago', 1300000, 'RRHH', '2023-01-05'),
(52, 'Manuel', 'Toledo', 'm.toledo@empresa.cl', 'Concepción', 990000, 'Marketing', '2023-02-18'),
(53, 'Pía', 'Duran', 'p.duran@correo.cl', 'Valparaíso', 1150000, 'TI', '2023-03-12'),
(54, 'Hugo', 'Urrutia', 'h.urrutia@servicios.cl', 'La Serena', 870000, 'Atención al Cliente', '2023-04-20'),
(55, 'Beatriz', 'Lagos', 'b.lagos@agencia.cl', 'Antofagasta', 1480000, 'Minería', '2023-05-05'),
(56, 'Oscar', 'Cifuentes', 'o.cifuentes@negocios.cl', 'Temuco', 950000, 'Ventas', '2023-06-11'),
(57, 'Raquel', 'Salas', 'r.salas@proyectos.cl', 'Rancagua', 1060000, 'Finanzas', '2023-07-19'),
(58, 'Patricio', 'Peña', 'p.pena@industria.cl', 'Puerto Montt', 1350000, 'Operaciones', '2023-08-25'),
(59, 'Mireya', 'Zúñiga', 'm.zuniga@retail.cl', 'Iquique', 990000, 'Logística', '2023-09-08'),
(60, 'Álvaro', 'Jara', 'a.jara@consultora.cl', 'Talca', 920000, 'Marketing', '2023-10-30'),
(61, 'Teresa', 'Beltrán', 't.beltran@pyme.cl', 'Arica', 1180000, 'TI', '2023-11-12'),
(62, 'Ricardo', 'Cortés', 'r.cortes@empresa.cl', 'Copiapó', 1270000, 'Minería', '2023-01-25'),
(63, 'Carmen', 'Poblete', 'c.poblete@correo.cl', 'Punta Arenas', 1580000, 'Operaciones', '2023-02-12'),
(64, 'Luis', 'Soto', 'l.soto@servicios.cl', 'Chillán', 890000, 'Ventas', '2023-03-08'),
(65, 'Alicia', 'Vergara', 'a.vergara@agencia.cl', 'Quillota', 1040000, 'RRHH', '2023-04-14'),
(66, 'Jaime', 'Guajardo', 'j.guajardo@negocios.cl', 'Curicó', 960000, 'Logística', '2023-05-20'),
(67, 'Rosa', 'Heredia', 'r.heredia@proyectos.cl', 'Osorno', 1200000, 'TI', '2023-06-05'),
(68, 'Jorge', 'Palacios', 'j.palacios@industria.cl', 'Calama', 1680000, 'Minería', '2023-07-15'),
(69, 'Marta', 'Farías', 'm.farias@retail.cl', 'Valdivia', 970000, 'Marketing', '2023-08-22'),
(70, 'Héctor', 'Cordero', 'h.cordero@consultora.cl', 'Los Ángeles', 1100000, 'Finanzas', '2023-09-12'),
(71, 'Graciela', 'Aguirre', 'g.aguirre@pyme.cl', 'Santiago', 1240000, 'Ventas', '2023-10-05'),
(72, 'Mario', 'Saavedra', 'm.saavedra@empresa.cl', 'Concepción', 980000, 'Atención al Cliente', '2023-11-18'),
(73, 'Elena', 'Toro', 'e.toro@correo.cl', 'Viña del Mar', 1370000, 'TI', '2023-12-01'),
(74, 'Pedro', 'Ibáñez', 'p.ibanez@servicios.cl', 'Antofagasta', 1470000, 'Minería', '2023-01-08'),
(75, 'Silvia', 'Guerra', 's.guerra@agencia.cl', 'Coquimbo', 910000, 'RRHH', '2023-02-25'),
(76, 'Ramón', 'Ortiz', 'r.ortiz@negocios.cl', 'Rancagua', 1050000, 'Logística', '2023-03-14'),
(77, 'Julia', 'Garrido', 'j.garrido2@proyectos.cl', 'Talca', 930000, 'Marketing', '2023-04-22'),
(78, 'Raúl', 'Blanco', 'r.blanco@industria.cl', 'Temuco', 1140000, 'Finanzas', '2023-05-30'),
(79, 'Adela', 'Vargas', 'a.vargas@retail.cl', 'Puerto Montt', 1310000, 'Operaciones', '2023-06-12'),
(80, 'Fabián', 'Escobar', 'f.escobar@consultora.cl', 'Iquique', 1030000, 'TI', '2023-07-05'),
(81, 'Gloria', 'Leiva', 'g.leiva@pyme.cl', 'Chillán', 880000, 'Ventas', '2023-08-18'),
(82, 'Bernardo', 'Rivas', 'b.rivas@empresa.cl', 'Punta Arenas', 1570000, 'Minería', '2023-09-02'),
(83, 'Esther', 'Suárez', 'e.suarez@correo.cl', 'Santiago', 1210000, 'RRHH', '2023-10-14'),
(84, 'Víctor', 'Carvajal', 'v.carvajal@servicios.cl', 'Valparaíso', 960000, 'Logística', '2023-11-20'),
(85, 'Mónica', 'Astorga', 'm.astorga@agencia.cl', 'Concepción', 1090000, 'Marketing', '2023-12-05'),
(86, 'Sergio', 'Paredes', 's.paredes@negocios.cl', 'La Serena', 1120000, 'TI', '2023-01-14'),
(87, 'Lucía', 'Méndez', 'l.mendez@proyectos.cl', 'Antofagasta', 1440000, 'Operaciones', '2023-02-28'),
(88, 'Fernando', 'Salgado', 'f.salgado@industria.cl', 'Calama', 1670000, 'Minería', '2023-03-10'),
(89, 'Sonia', 'Barrera', 's.barrera@retail.cl', 'Osorno', 1000000, 'Ventas', '2023-04-15'),
(90, 'Guillermo', 'Espina', 'g.espina@consultora.cl', 'Valdivia', 1150000, 'Finanzas', '2023-05-22'),
(91, 'Inés', 'Duque', 'i.duque@pyme.cl', 'Santiago', 1270000, 'TI', '2023-06-30'),
(92, 'Enrique', 'Bustamante', 'e.bustamante@empresa.cl', 'Viña del Mar', 1320000, 'Ventas', '2023-07-14'),
(93, 'Sara', 'Cifuentes', 's.cifuentes2@correo.cl', 'Temuco', 940000, 'RRHH', '2023-08-05'),
(94, 'Arturo', 'Lobos', 'a.lobos@servicios.cl', 'Rancagua', 1060000, 'Logística', '2023-09-18'),
(95, 'Beatriz', 'Sandoval', 'b.sandoval@agencia.cl', 'Talca', 900000, 'Marketing', '2023-10-25'),
(96, 'Claudio', 'Gallardo', 'c.gallardo2@negocios.cl', 'Curicó', 1130000, 'Finanzas', '2023-11-12'),
(97, 'Angélica', 'Ahumada', 'a.ahumada@proyectos.cl', 'Iquique', 1050000, 'TI', '2023-12-20'),
(98, 'Roberto', 'Cáceres', 'r.caceres@industria.cl', 'Puerto Montt', 1230000, 'Operaciones', '2024-01-05'),
(99, 'Paola', 'Acevedo', 'p.acevedo@retail.cl', 'Arica', 1170000, 'Ventas', '2024-01-10'),
(100, 'Iván', 'Villegas', 'i.villegas@consultora.cl', 'Copiapó', 1340000, 'Minería', '2024-01-15');

-- para obtener lista de personal ordenada alfabeticamente por nombre.

SELECT * FROM t_personal ORDER BY nombre ASC;

-- Para obetener regristros ordenados de la "Z" a la "A".

SELECT * FROM t_personal ORDER BY regristros 

-- Para obtener una lista de las ciudades unicas en las que residen los usuarios, sin repeticiones.

SELECT DISTINCT ciudad FROM t_personal; 