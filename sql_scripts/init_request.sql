-- ============================================================
--   Author        : andressc19
--   Created Date  : 2025-08-28
--   Version       : 1.0
-- ============================================================

-- 1. Tabla ESTADOS
CREATE TABLE IF NOT EXISTS estados (
    id_estado SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255) NOT NULL
);

-- 2. Tabla TIPOS_PRESTAMOS
CREATE TABLE IF NOT EXISTS tipos_prestamos (
    id_tipo_prestamo SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    monto_minimo NUMERIC(10,2) NOT NULL,
    monto_maximo NUMERIC(10,2) NOT NULL,
    tasa_interes NUMERIC(5,2) NOT NULL,
    validacion_automatica BOOLEAN DEFAULT false
);

-- 3. Tabla SOLICITUDES
CREATE TABLE IF NOT EXISTS solicitudes (
    id_solicitud SERIAL PRIMARY KEY,
    monto NUMERIC(10, 2) NOT NULL,
    plazo DATE NOT NULL,
    email VARCHAR(50) NOT NULL,
    id_estado INT NOT NULL,
    id_tipo_prestamo INT NOT NULL,
    
    CONSTRAINT fk_solicitud_estados FOREIGN KEY (id_estado) REFERENCES estados(id_estado),
    CONSTRAINT fk_solicitud_tipos_prestamos FOREIGN KEY (id_tipo_prestamo) REFERENCES tipos_prestamos(id_tipo_prestamo)
);
