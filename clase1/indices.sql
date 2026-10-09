CREATE DATABASE indices;
USE indices;

DROP TABLE IF EXISTS t_empleado;
CREATE TABLE t_empleado
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    departamento VARCHAR(50),
    fecha_contracion DATE
);

-- creacion de un indice no unico seria...
CREATE INDEX i_apellido ON t_empleado (apellido);

/* Observacion
SHOW INDEX: informacion sobre los indices de una tabla
*/
SHOW INDEX FROM t_empleado;

DROP TABLE IF EXISTS t_producto;
CREATE TABLE t_producto
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    categoria VARCHAR(100),
    precio INT,
    stock INT
);

INSERT INTO t_producto (nombre, categoria, precio, stock) VALUES
('Arroz Grado 1 1kg', 'Despensa', 1890, 150),
('Aceite Vegetal 900ml', 'Despensa', 2450, 80),
('Harina con Polvos 1kg', 'Despensa', 1200, 200),
('Tallarines N°5 400g', 'Despensa', 990, 300),
('Sal Fina 1kg', 'Despensa', 750, 500),
('Azúcar Granulada 1kg', 'Despensa', 1450, 120),
('Café 170g', 'Despensa', 5600, 60),
('Té Ceylán 100 bolsitas', 'Despensa', 3200, 90),
('Leche Entera 1L', 'Lácteos', 1150, 250),
('Yogurt Batido Frutilla', 'Lácteos', 350, 400),
('Queso Laminado Gauda 500g', 'Lácteos', 5800, 45),
('Mantequilla con Sal 250g', 'Lácteos', 2900, 70),
('Manjar Bolsa 400g', 'Lácteos', 1950, 110),
('Huevo Blanco Grande 30 unidades', 'Huevos y Frescos', 6500, 30),
('Pan de Molde Grande', 'Panadería', 3400, 55),
('Hallulla Corriente kg', 'Panadería', 2100, 100),
('Marraqueta kg', 'Panadería', 2100, 120),
('Bebida 2.5L', 'Bebidas', 2700, 200),
('Agua Sin Gas 1.5L', 'Bebidas', 1100, 180),
('Cerveza 6 Pack Latas', 'Licores', 4800, 85),
('Vino Cabernet 1.5L', 'Licores', 4200, 40),
('Pisco 35° 750ml', 'Licores', 8900, 25),
('Detergente Polvo 3kg', 'Limpieza', 11500, 40),
('Lavaloza Limón 750ml', 'Limpieza', 2600, 100),
('Cloro 1L', 'Limpieza', 1300, 150),
('Papel Higiénico 8 rollos', 'Limpieza', 4500, 90),
('Jabón Glicerina', 'Cuidado Personal', 1100, 130),
('Pasta de Dientes Total 12', 'Cuidado Personal', 2800, 85),
('Shampoo 1L', 'Cuidado Personal', 2200, 60),
('Desodorante', 'Cuidado Personal', 3500, 50),
('Carne Molida Vacuno 4% 500g', 'Carnicería', 5200, 35),
('Pechuga de Pollo Deshuesada kg', 'Carnicería', 6800, 25),
('Lomo Vetado Vacuno kg', 'Carnicería', 14900, 15),
('Chuleta de Cerdo kg', 'Carnicería', 5900, 20),
('Chorizo Parrillero', 'Carnicería', 4500, 40),
('Papas Granel 1kg', 'Frutas y Verduras', 1200, 300),
('Cebolla Granel 1kg', 'Frutas y Verduras', 990, 200),
('Tomate Larga Vida kg', 'Frutas y Verduras', 1800, 150),
('Manzana Roja kg', 'Frutas y Verduras', 1600, 100),
('Plátano kg', 'Frutas y Verduras', 1400, 120),
('Limón Granel kg', 'Frutas y Verduras', 1500, 180),
('Palta Hass kg', 'Frutas y Verduras', 5500, 40),
('Atún Lomitos Agua', 'Despensa', 1600, 120),
('Salsa de Tomate 200g', 'Despensa', 650, 300),
('Salchicha', 'Fiambrería', 3200, 60),
('Jamón de Pechuga 200g', 'Fiambrería', 2800, 75),
('Mermelada Durazno 400g', 'Despensa', 1500, 90),
('Mayonesa 400g', 'Despensa', 3100, 110),
('Ketchup 400g', 'Despensa', 2400, 100),
('Mostaza 250g', 'Despensa', 1200, 80),
('Avena Instantánea 600g', 'Despensa', 3200, 70),
('Cereal Original 375g', 'Despensa', 3800, 45),
('Galletas Chocolate 126g', 'Snacks', 850, 200),
('Papas Fritas Familiar', 'Snacks', 2900, 60),
('Ramitas Queso', 'Snacks', 1400, 90),
('Maní Salado', 'Snacks', 1200, 110),
('Chocolate 250g', 'Dulces', 4500, 40),
('Chocolate Pack 24 unidades', 'Dulces', 16800, 20),
('Chupete pack 10 unidades', 'Dulces', 1500, 50),
('Helado Cassata 1L', 'Congelados', 4200, 30),
('Hamburguesa Vacuno', 'Congelados', 1100, 150),
('Nuggets de Pollo 400g', 'Congelados', 3900, 65),
('Papas Duquesas 500g', 'Congelados', 2800, 55),
('Arvejas Congeladas', 'Congelados', 2400, 80),
('Pizza Congelada Familiar', 'Congelados', 5600, 25),
('Toalla Gigante 2 rollos', 'Limpieza', 2800, 120),
('Servilletas 100 unidades', 'Limpieza', 1300, 150),
('Bolsas de Basura 70x90', 'Limpieza', 2200, 100),
('Limpia Pisos 900ml', 'Limpieza', 1800, 90),
('Insecticida Aerosol', 'Hogar', 4500, 45),
('Carbón Vegetal 2.5kg', 'Hogar', 3900, 80),
('Pila AA 4 unidades', 'Electrónica', 5500, 60),
('Ampolleta LED 9W', 'Hogar', 1900, 100),
('Cuaderno Universitario', 'Librería', 1800, 200),
('Lápiz Pasta Azul', 'Librería', 400, 500),
('Corrector Liquido', 'Librería', 1500, 60),
('Pegamento en Barra', 'Librería', 1200, 85),
('Comida para Perro 3kg', 'Mascotas', 12500, 25),
('Comida para Gato 1.5kg', 'Mascotas', 8900, 30),
('Arena Sanitaria para Gato 4kg', 'Mascotas', 4500, 40),
('Vaso Vidrio', 'Bazar', 990, 150),
('Plato Hondo Cerámica', 'Bazar', 2500, 80),
('Sartén Antiadherente 24cm', 'Cocina', 8900, 20),
('Hervidor Eléctrico 1.7L', 'Electrohogar', 19900, 15),
('Tostador de Pan de Hoja', 'Cocina', 3500, 60),
('Cuchillo Carne', 'Cocina', 2800, 100),
('Toalla de Baño', 'Dormitorio', 7900, 40),
('Sábana 1.5 Plazas', 'Dormitorio', 15900, 12),
('Almohada Fibra', 'Dormitorio', 6500, 30),
('Escoba Pro', 'Limpieza', 4200, 50),
('Mopa de Limpieza con Balde', 'Limpieza', 12900, 15),
('Desinfectante Spray', 'Limpieza', 3900, 70),
('Crema Tarro', 'Cuidado Personal', 4200, 55),
('Protector Solar 50+', 'Cuidado Personal', 18900, 20),
('Pañales', 'Bebé', 14500, 35),
('Toallitas Húmedas', 'Bebé', 2100, 90),
('Colado Fruta Variada', 'Bebé', 1100, 120),
('Leche 800g', 'Bebé', 10500, 40),
('Cereal Infantil Trigo', 'Bebé', 2800, 50),
('Shampoo Manzanilla', 'Bebé', 3400, 65);

-- Supuesto: Frecuentemente buscamos producto por categoria 
SELECT * FROM t_producto WHERE categoria ='Congelados';

-- Para optimizarla, creamos un indice no unico en la columna categoria..
CREATE INDEX i_categoria ON t_producto (categoria);

SHOW INDEX from t_producto;

/* 
Cuando se ejecute el SELECT, SQL usara (automaticamnte) i_categoria para encontrar rapidamente 
todos los productos de la categoria 'Congelados'.
*/

CREATE TABLE t_cliente
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    fecha_registro DATE
);

INSERT INTO t_cliente (nombre, ciudad, fecha_registro) VALUES
('Mateo González', 'Santiago', '2023-01-15'),
('Sofía Rojas', 'Concepción', '2023-01-20'),
('Agustín Muñoz', 'Valparaíso', '2023-02-05'),
('Isabella Díaz', 'La Serena', '2023-02-12'),
('Santiago Pérez', 'Antofagasta', '2023-02-28'),
('Emma Soto', 'Temuco', '2023-03-03'),
('Lucas Contreras', 'Rancagua', '2023-03-15'),
('Emilia Silva', 'Talca', '2023-03-22'),
('Benjamín Martínez', 'Arica', '2023-04-01'),
('Julieta Sepúlveda', 'Chillán', '2023-04-10'),
('Gaspar Morales', 'Puerto Montt', '2023-04-18'),
('Mía Rodríguez', 'Iquique', '2023-05-02'),
('Tomás López', 'Calama', '2023-05-14'),
('Isidora Fuentes', 'Osorno', '2023-05-25'),
('Maximiliano Valenzuela', 'Copiapó', '2023-06-01'),
('Florencia Araya', 'Temuco', '2023-06-08'),
('Vicente Castro', 'Punta Arenas', '2023-06-15'),
('Josefa Espinoza', 'Curicó', '2023-06-22'),
('Matías Cortés', 'San Antonio', '2023-07-05'),
('Martina Herrera', 'Los Ángeles', '2023-07-11'),
('Joaquín Carrasco', 'Santiago', '2023-07-19'),
('Maite Vergara', 'Concepción', '2023-07-28'),
('Martín Jara', 'Viña del Mar', '2023-08-04'),
('Antonella Lagos', 'Valdivia', '2023-08-12'),
('Emiliano Rivera', 'Coyhaique', '2023-08-20'),
('Amanda Figueroa', 'Temuco', '2023-08-30'),
('Liam Bravo', 'Temuco', '2023-09-05'),
('Valentina Reyes', 'Temuco', '2023-09-14'),
('Facundo Vera', 'Temuco', '2023-09-22'),
('Antonia Pizarro', 'Santiago', '2023-09-29'),
('Máximo Miranda', 'Temuco', '2023-10-05'),
('Catalina Saavedra', 'Maipú', '2023-10-12'),
('Alonso Donoso', 'La Florida', '2023-10-20'),
('Amelia Hidalgo', 'Pudahuel', '2023-10-28'),
('Luciano Gallardo', 'Vallenar', '2023-11-05'),
('Renata Guerrero', 'Talcahuano', '2023-11-12'),
('Bruno Garrido', 'Viña del Mar', '2023-11-19'),
('Dominga Salinas', 'Temuco', '2023-11-26'),
('Julián Bustamante', 'Valparaíso', '2023-12-03'),
('Luciana Ortiz', 'Antofagasta', '2023-12-10'),
('José Heim', 'Puerto Varas', '2023-12-17'),
('Victoria Alvarado', 'Villarrica', '2023-12-24'),
('Cristóbal Briones', 'Pucón', '2024-01-02'),
('Amparo Moreno', 'Angol', '2024-01-09'),
('Gabriel Gatica', 'Rengo', '2024-01-16'),
('Samantha Vidal', 'San Fernando', '2024-01-23'),
('Santino Cabello', 'San Felipe', '2024-02-01'),
('Ignacia Maldonado', 'Los Andes', '2024-02-08'),
('Dante Aguirre', 'Santiago', '2024-02-15'),
('Leonor Del Pino', 'Temuco', '2024-02-22'),
('Diego Werner', 'Llanquihue', '2024-03-01'),
('Lía Winkler', 'Frutillar', '2024-03-08'),
('Nicolás Vyhmeister', 'Ancud', '2024-03-15'),
('Amalia Venegas', 'Castro', '2024-03-22'),
('Sebastián Junge', 'Osorno', '2024-04-01'),
('Aurora Aguayo', 'Valdivia', '2024-04-08'),
('León Raddatz', 'Puerto Montt', '2024-04-15'),
('Fernanda Godoy', 'Coquimbo', '2024-04-22'),
('Gael Parra', 'La Serena', '2024-05-01'),
('Laura Sánchez', 'Temuco', '2024-05-08'),
('Simón Salas', 'Illapel', '2024-05-15'),
('Rafaela Correa', 'Temuco', '2024-05-22'),
('Ian Miranda', 'Copiapó', '2024-06-01'),
('Colomba Pizarro', 'Santiago', '2024-06-08'),
('Amaro Saavedra', 'Santiago', '2024-06-15'),
('Elena Donoso', 'Viña del Mar', '2024-06-22'),
('Thiago Hidalgo', 'Iquique', '2024-07-01'),
('Javiera Palma', 'Santiago', '2024-07-08'),
('Felipe Bustos', 'Arica', '2024-07-15'),
('Pascal Merino', 'Santiago', '2024-07-22'),
('Ignacio Escobar', 'Viña del Mar', '2024-08-01'),
('Celeste Briones', 'Arica', '2024-08-08'),
('Noah Moreno', 'Iquique', '2024-08-15'),
('Lucía Gatica', 'Antofagasta', '2024-08-22'),
('Clemente Vidal', 'Calama', '2024-09-01'),
('Josefina Cabello', 'Copiapó', '2024-09-08'),
('Pedro Del Pino', 'Vallenar', '2024-09-15'),
('Matilda Maldonado', 'La Serena', '2024-09-22'),
('Valentín Aguirre', 'Ovalle', '2024-10-01'),
('Olivia Werner', 'Valparaíso', '2024-10-08'),
('Rafael Winkler', 'Viña del Mar', '2024-10-15'),
('Ámbar Vyhmeister', 'Viña del Mar', '2024-10-22'),
('Samuel Venegas', 'San Antonio', '2024-11-01'),
('Alice Junge', 'Santiago', '2024-11-08'),
('Thomas Aguayo', 'Rancagua', '2024-11-15'),
('Francisca Raddatz', 'Viña del Mar', '2024-11-22'),
('Ángel Godoy', 'Talca', '2024-12-01'),
('Violeta Sánchez', 'Viña del Mar', '2024-12-08'),
('Bastián Salas', 'Curicó', '2024-12-15'),
('Magdalena Correa', 'Santiago', '2024-12-22'),
('Renato Parra', 'Chillán', '2025-01-05'),
('Camila Miranda', 'Concepción', '2025-01-12'),
('Daniel Pizarro', 'Talcahuano', '2025-01-19'),
('Monserrat Saavedra', 'Los Ángeles', '2025-01-26'),
('Dylan Donoso', 'Temuco', '2025-02-01'),
('Matilde Hidalgo', 'Villarrica', '2025-02-08'),
('Luis Palma', 'Valdivia', '2025-02-15'),
('Zoe Bustos', 'Osorno', '2025-02-22'),
('Valentino Escobar', 'Puerto Montt', '2025-03-01'),
('Sophia Moreno', 'Punta Arenas', '2025-03-08');

SHOW INDEX FROM t_cliente;

CREATE INDEX i_ciudad ON t_cliente (ciudad);

SHOW INDEX FROM t_cliente;

/* Eliminacion de un indice 
DROP INDEX nombre_indice ON nombre_tabla;
*/

-- EJEMPLO
DROP INDEX i_ciudad ON t_cliente; 