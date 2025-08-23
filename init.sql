-- ============================================================
--   Author        : andressc19
--   Created Date  : 2025-08-22
--   Version       : 1.0
-- ============================================================

CREATE DATABASE IF NOT EXISTS cydb;

USE cydb;

CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL UNIQUE,
    salario_base DECIMAL(10, 2) NOT NULL
)