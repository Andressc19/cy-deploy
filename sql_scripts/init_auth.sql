-- ============================================================
--   Author        : andressc19
--   Created Date  : 2025-08-22
--   Version       : 1.0
-- ============================================================

-- 1. Tabla USUARIO_ROL
CREATE TABLE IF NOT EXISTS rol_usuario (
    id_rol SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255) NOT NULL
);

-- 2. Tabla USUARIO
CREATE TABLE IF NOT EXISTS usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    documento_identidad VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    salario_base NUMERIC(10, 2) NOT NULL,
    id_rol INT NOT NULL,

    CONSTRAINT fk_rol_usuario FOREIGN KEY (id_rol) REFERENCES rol_usuario(id_rol)
);

-- Insertar roles base
INSERT INTO rol_usuario (nombre, descripcion) VALUES
('CLIENTE', 'Usuario que realiza solicitudes o consume servicios'),
('ASESOR', 'Usuario encargado de atender solicitudes de clientes'),
('ADMINISTRADOR', 'Administrador del sistema con privilegios completos');