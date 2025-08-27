-- ============================================================
--   Author        : andressc19
--   Created Date  : 2025-08-22
--   Version       : 1.0
-- ============================================================

CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    salario_base NUMERIC(10, 2) NOT NULL
);
