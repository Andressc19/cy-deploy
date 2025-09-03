-- ============================================================
--   Author        : andressc19
--   Created Date  : 2025-08-28
--   Version       : 1.0
-- ============================================================


-- 1. Tabla ESTADO_PRESTAMO
CREATE TABLE IF NOT EXISTS estado_prestamo (
    id_estado SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255) NOT NULL
);

-- 2. Tabla TIPO_PRESTAMO
CREATE TABLE IF NOT EXISTS tipo_prestamo (
    id_tipo_prestamo SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    monto_minimo NUMERIC(15,2) NOT NULL,
    monto_maximo NUMERIC(15,2) NOT NULL,
    tasa_interes NUMERIC(5,2) NOT NULL,
    validacion_automatica BOOLEAN DEFAULT false
);

-- 3. Tabla SOLICITUD_PRESTAMOS
CREATE TABLE IF NOT EXISTS solicitud_prestamo (
    id_solicitud SERIAL PRIMARY KEY,
    monto NUMERIC(10, 2) NOT NULL,
    plazo INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    id_estado INT NOT NULL,
    id_tipo_prestamo INT NOT NULL,
    fecha_aprobacion DATE,
    
    CONSTRAINT fk_solicitud_estados FOREIGN KEY (id_estado) REFERENCES estado_prestamo(id_estado),
    CONSTRAINT fk_solicitud_tipos_prestamos FOREIGN KEY (id_tipo_prestamo) REFERENCES tipo_prestamo(id_tipo_prestamo)
);

-- 1. Insertar estados de prestamo
INSERT INTO estado_prestamo(id_estado, nombre, descripcion) VALUES
    (1, 'PENDIENTE', 'Pendiente de revisión'),
    (2, 'APROBADO', 'Prestamo aprobado');

-- 2. Insertar tipos de préstamo
INSERT INTO tipo_prestamo (nombre, monto_minimo, monto_maximo, tasa_interes, validacion_automatica) VALUES
('Personal', 2000000, 40000000, 12.5, true),
('Hipotecario', 200000000, 2000000000, 7.0, false),
('Automotriz', 20000000, 200000000, 9.5, true),
('Estudiantil', 4000000, 80000000, 5.0, true),
('Consolidación deuda', 8000000, 200000000, 11.0, false),
('Microcrédito', 400000, 20000000, 15.0, true);