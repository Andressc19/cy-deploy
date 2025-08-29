-- ============================================================
--   Author        : andressc19
--   Created Date  : 2025-08-22
--   Version       : 1.0
-- ============================================================

-- 1. Tabla USUARIO_ROL
CREATE TABLE IF NOT EXISTS usuario_rol (
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

    CONSTRAINT fk_usuario_rol FOREIGN KEY (id_rol) REFERENCES usuario_rol(id_rol)
);
