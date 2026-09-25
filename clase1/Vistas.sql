DROP DATABASE IF EXISTS vistas;
CREATE DATABASE vistas;
USE vistas;

-- Tabla t_empleado
CREATE TABLE t_empleado(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    departamento_id INT,
    salario DECIMAL(10,2),
    fecha_contrato DATE 
);

-- Tabla t_departamento 
CREATE TABLE t_departamento
(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    presupuesto DECIMAL(12,2)
);

INSERT INTO t_departamento (id, nombre, presupuesto) VALUES
(1, 'Recursos Humanos', 45000000.00),
(2, 'Tecnología', 125000000.00),
(3, 'Ventas', 80000000.00),
(4, 'Marketing', 65000000.00),
(5, 'Finanzas', 72000000.00),
(6, 'Operaciones', 95000000.00),
(7, 'Legal', 38000000.00),
(8, 'Investigación y Desarrollo', 110000000.00),
(9, 'Compras', 52000000.00),
(10, 'Calidad', 48000000.00),
(11, 'Logística', 67000000.00),
(12, 'Atención al Cliente', 42000000.00),
(13, 'Administración', 35000000.00),
(14, 'Seguridad', 29000000.00),
(15, 'Mantenimiento', 34000000.00);

INSERT INTO t_empleado (id, nombre, departamento_id, salario, fecha_contrato) VALUES

-- Recursos Humanos (10 empleados)
(1, 'Ana García López', 1, 3500000.00, '2020-03-15'),
(2, 'Carlos Rodríguez Martín', 1, 420000.00, '2021-07-22'),
(3, 'María Fernández Silva', 1, 38000.00, '2022-01-10'),
(4, 'José Luis Pérez', 1, 1050000.00, '2026-11-05'),
(5, 'Laura Sánchez Torres', 1, 400000.00, '2027-09-18'),
(6, 'Miguel Ángel Díaz', 1, 37000.00, '2028-05-12'),
(7, 'Carmen Morales Ruiz', 1, 1000000.00, '2029-02-28'),
(8, 'Francisco Jiménez', 1, 430000.00, '2030-04-14'),
(9, 'Isabel Castro Vega', 1, 36000.00, '2026-08-07'),
(10, 'Antonio Herrera López', 1, 4100000.00, '2027-12-03'),

-- Tecnología (15 empleados)
(11, 'Roberto Martínez', 2, 1010000.00, '2019-09-10'),
(12, 'Elena Gómez Ruiz', 2, 62000.00, '2018-06-25'),
(13, 'David Álvarez', 2, 5800000.00, '2020-01-20'),
(14, 'Cristina López Mora', 2, 650000.00, '2027-12-08'),
(15, 'Javier Núñez', 2, 52000.00, '2031-03-16'),
(16, 'Patricia Romero', 2, 1020000.00, '2029-08-12'),
(17, 'Sergio Delgado', 2, 670000.00, '2026-02-14'),
(18, 'Mónica Vázquez', 2, 1030000.00, '2027-11-30'),
(19, 'Rubén Ortega', 2, 1190000.00, '2028-05-18'),
(20, 'Natalia Guerrero', 2, 630000.00, '2029-09-07'),
(21, 'Óscar Medina', 2, 56000.00, '2030-07-25'),
(22, 'Silvia Ramos', 2, 6100000.00, '2031-01-14'),
(23, 'Álvaro Campos', 2, 680000.00, '2017-10-22'),
(24, 'Raquel Mendoza', 2, 53000.00, '2021-02-09'),
(25, 'Iván Cabrera', 2, 1050000.00, '2018-12-11'),

-- Ventas (12 empleados)
(26, 'Manuel Torres Gómez', 3, 480000.00, '2019-03-08'),
(27, 'Lucía Navarro', 3, 51000.00, '2020-06-15'),
(28, 'Diego Aguilar', 3, 4600000.00, '2032-01-28'),
(29, 'Rocío Iglesias', 3, 530000.00, '2033-08-19'),
(30, 'Adrián Molina', 3, 49000.00, '2020-04-22'),
(31, 'Beatriz Vargas', 3, 5200000.00, '2019-10-11'),
(32, 'Gonzalo Prieto', 3, 47000.00, '2021-07-03'),
(33, 'Nerea Contreras', 3, 500000.00, '2020-02-17'),
(34, 'Víctor Santos', 3, 54000.00, '2018-11-26'),
(35, 'Celia Peña', 3, 48000.00, '2020-09-14'),
(36, 'Marcos Villanueva', 3, 5100000.00, '2019-12-05'),
(37, 'Andrea Cortés', 3, 49000.00, '2021-04-18'),

-- Marketing (10 empleados)
(38, 'Pablo Fuentes', 4, 44000.00, '2020-01-12'),
(39, 'Almudena Rubio', 4, 470000.00, '2019-05-30'),
(40, 'Héctor Pascual', 4, 1075000.00, '2034-02-24'),
(41, 'Verónica Serrano', 4, 4900000.00, '2035-09-17'),
(42, 'Emilio Ibáñez', 4, 45000.00, '2036-07-08'),
(43, 'Esther Montes', 4, 46000.00, '2037-11-21'),
(44, 'Tomás Gallego', 4, 430000.00, '2038-06-13'),
(45, 'Inmaculada León', 4, 48000.00, '2020-03-29'),
(46, 'Borja Domínguez', 4, 44000.00, '2039-08-06'),
(47, 'Amparo Garrido', 4, 4700000.00, '2040-12-19'),

-- Finanzas (8 empleados)
(48, 'Ricardo Márquez', 5, 1099000.00, '2018-04-16'),
(49, 'Paloma Castillo', 5, 55000.00, '2019-07-11'),
(50, 'Ignacio Carrasco', 5, 5000000.00, '2020-10-04'),
(51, 'Lorena Montero', 5, 57000.00, '2017-12-22'),
(52, 'César Caballero', 5, 530000.00, '2019-02-18'),
(53, 'Miriam Carmona', 5, 56000.00, '2018-08-13'),
(54, 'Raúl Espinosa', 5, 51000.00, '2020-05-27'),
(55, 'Noelia Blanco', 5, 54000.00, '2019-09-15'),

-- Operaciones (12 empleados)
(56, 'Fernando Gil', 6, 4600000.00, '2019-06-20'),
(57, 'Sonia Lozano', 6, 490000.00, '2020-03-07'),
(58, 'Daniel Paredes', 6, 47000.00, '2021-01-15'),
(59, 'Pilar Hidalgo', 6, 51000.00, '2018-10-28'),
(60, 'Andrés Cano', 6, 48000.00, '2026-08-12'),
(61, 'Teresa Velasco', 6, 50000.00, '2019-04-25'),
(62, 'Alejandro Reyes', 6, 46000.00, '2027-05-18'),
(63, 'Gloria Vidal', 6, 49000.00, '2020-01-30'),
(64, 'Joaquín Polo', 6, 52000.00, '2028-07-14'),
(65, 'Remedios Moral', 6, 47000.00, '2020-11-09'),
(66, 'Esteban Ortiz', 6, 48000.00, '2029-12-03'),
(67, 'Consuelo Herrera', 6, 50000.00, '2030-06-21'),

-- Legal (5 empleados)
(68, 'Guillermo Pastor', 7, 5800000.00, '2018-03-12'),
(69, 'Rosario Moya', 7, 610000.00, '2017-11-08'),
(70, 'Santiago Calvo', 7, 56000.00, '2019-09-24'),
(71, 'Encarnación Rico', 7, 63000.00, '2018-01-17'),
(72, 'Nicolás Soto', 7, 59000.00, '2020-04-10'),

-- Investigación y Desarrollo (13 empleados)
(73, 'Alfredo Vega', 8, 6000000.00, '2031-05-22'),
(74, 'Dolores Ferrer', 8, 650000.00, '2017-08-15'),
(75, 'Rodrigo Peña', 8, 58000.00, '2019-12-07'),
(76, 'Asunción Campos', 8, 67000.00, '2017-04-20'),
(77, 'Gregorio Soler', 8, 62000.00, '2032-11-13'),
(78, 'Marisol Guerrero', 8, 64000.00, '2019-03-28'),
(79, 'Agustín Cabrera', 8, 59000.00, '2020-07-16'),
(80, 'Esperanza Mendoza', 8, 66000.00, '2033-10-05'),
(81, 'Leandro Ramos', 8, 61000.00, '2019-01-19'),
(82, 'Purificación Medina', 8, 63000.00, '2018-06-30'),
(83, 'Celestino Ortega', 8, 60000.00, '2020-02-11'),
(84, 'Visitación Delgado', 8, 65000.00, '2034-12-24'),
(85, 'Modesto Romero', 8, 58000.00, '2019-08-08'),

-- Compras (7 empleados)
(86, 'Pascual Núñez', 9, 4300000.00, '2019-10-14'),
(87, 'Milagros López', 9, 46000.00, '2020-01-27'),
(88, 'Aurelio Álvarez', 9, 41000.00, '2021-04-12'),
(89, 'Concepción Gómez', 9, 480000.00, '2018-07-25'),
(90, 'Bautista Martínez', 9, 44000.00, '2035-05-18'),
(91, 'Virtudes Castro', 9, 47000.00, '2019-02-09'),
(92, 'Clemente Fernández', 9, 42000.00, '2036-08-03'),

-- Calidad (8 empleados)
(93, 'Casimiro Sánchez', 10, 4100000.00, '2020-03-16'),
(94, 'Remedios Pérez', 10, 440000.00, '2019-06-29'),
(95, 'Florencio Rodríguez', 10, 40000.00, '2021-01-22'),
(96, 'Sagrario García', 10, 46000.00, '2037-09-11'),
(97, 'Evaristo Díaz', 10, 42000.00, '2020-11-05'),
(98, 'Consolación Morales', 10, 45000.00, '2019-04-18'),
(99, 'Abundio Jiménez', 10, 39000.00, '2021-07-14'),
(100, 'Nieves Herrera', 10, 43000.00, '2020-08-27'),

-- Logística (10 empleados)
(101, 'Demetrio Torres', 11, 4000000.00, '2019-11-12'),
(102, 'Presentación Navarro', 11, 43000.00, '2020-02-25'),
(103, 'Telesforo Aguilar', 11, 38000.00, '2021-05-08'),
(104, 'Purificación Iglesias', 11, 45000.00, '2018-08-21'),
(105, 'Saturnino Molina', 11, 4100000.00, '2020-06-14'),
(106, 'Angustias Vargas', 11, 44000.00, '2019-01-07'),
(107, 'Hipólito Prieto', 11, 39000.00, '2021-03-23'),
(108, 'Soledad Contreras', 11, 4200000.00, '2020-10-16'),
(109, 'Eusebio Santos', 11, 46000.00, '2018-12-29'),
(110, 'Ascensión Peña', 11, 40000.00, '2038-04-11'),

-- Atención al Cliente (8 empleados)
(111, 'Policarpo Villanueva', 12, 360000.00, '2039-07-24'),
(112, 'Milagros Cortés', 12, 39000.00, '2019-10-17'),
(113, 'Anacleto Fuentes', 12, 35000.00, '2021-02-28'),
(114, 'Encarnación Rubio', 12, 4100000.00, '2040-05-13'),
(115, 'Plácido Pascual', 12, 37000.00, '2020-12-06'),
(116, 'Inmaculada Serrano', 12, 40000.00, '2019-03-21'),
(117, 'Ovidio Ibáñez', 12, 34000.00, '2021-06-15'),
(118, 'Virtudes Montes', 12, 38000.00, '2020-09-28'),

-- Administración (7 empleados)
(119, 'Crisanto Gallego', 13, 3800000.00, '2019-12-11'),
(120, 'Visitación León', 13, 41000.00, '2020-03-24'),
(121, 'Nemesio Domínguez', 13, 36000.00, '2040-08-17'),
(122, 'Consolación Garrido', 13, 4300000.00, '2039-04-30'),
(123, 'Primitivo Márquez', 13, 39000.00, '2038-07-13'),
(124, 'Remedios Castillo', 13, 42000.00, '2037-05-26'),
(125, 'Higinio Carrasco', 13, 37000.00, '2027-01-09'),

-- Seguridad (5 empleados)
(126, 'Gumersindo Montero', 14, 32000.00, '2036-09-02'),
(127, 'Encarnación Caballero', 14, 35000.00, '2035-07-15'),
(128, 'Pantaleón Carmona', 14, 310000.00, '2021-04-28'),
(129, 'Soledad Espinosa', 14, 37000.00, '2034-11-11'),
(130, 'Bonifacio Blanco', 14, 330000.00, '2026-01-24'),

-- Mantenimiento (20 empleados)
(131, 'Crescencio Gil', 15, 34000.00, '2019-08-07'),
(132, 'Remedios Lozano', 15, 3700000.00, '2020-11-20'),
(133, 'Fortunato Paredes', 15, 33000.00, '2021-03-05'),
(134, 'Asunción Hidalgo', 15, 39000.00, '2027-06-18'),
(135, 'Perfecto Cano', 15, 35000.00, '2020-08-31'),
(136, 'Concepción Velasco', 15, 3800000.00, '2019-02-14'),
(137, 'Abundio Reyes', 15, 32000.00, '2021-07-27'),
(138, 'Milagros Vidal', 15, 36000.00, '2033-05-10'),
(139, 'Eustaquio Polo', 15, 40000.00, '2032-09-23'),
(140, 'Visitación Moral', 15, 34000.00, '2028-12-16'),
(141, 'Custodio Ortiz', 15, 37000.00, '2019-04-29'),
(142, 'Purificación Herrera', 15, 35000.00, '2021-01-12'),
(143, 'Genaro Pastor', 15, 33000.00, '2020-06-25'),
(144, 'Asunción Moya', 15, 38000.00, '2029-09-08'),
(145, 'Modesto Calvo', 15, 36000.00, '2020-11-21'),
(146, 'Remedios Rico', 15, 39000.00, '2030-03-04'),
(147, 'Benigno Soto', 15, 32000.00, '2031-05-17'),
(148, 'Consolación Vega', 15, 3500000.00, '2020-02-29'),
(149, 'Victoriano Ferrer', 15, 37000.00, '2019-10-12'),
(150, 'Asunción Peña', 15, 34000.00, '2020-08-05');