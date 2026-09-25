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