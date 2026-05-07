-- ============================================================
-- BASE DE DATOS: jardineria
-- Módulo: Bases de Datos - DAM
-- Descripción: BD de ejemplo para prácticas de SQL
-- ============================================================

DROP DATABASE IF EXISTS jardineria;
CREATE DATABASE jardineria CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE jardineria;

-- -------------------------------------------------------------
-- TABLA: oficinas
-- -------------------------------------------------------------
CREATE TABLE oficinas (
    codigo_oficina  VARCHAR(10)  NOT NULL,
    ciudad          VARCHAR(30)  NOT NULL,
    pais            VARCHAR(50)  NOT NULL,
    region          VARCHAR(50),
    codigo_postal   VARCHAR(10)  NOT NULL,
    telefono        VARCHAR(20)  NOT NULL,
    linea_direccion1 VARCHAR(50) NOT NULL,
    linea_direccion2 VARCHAR(50),
    PRIMARY KEY (codigo_oficina)
);

-- -------------------------------------------------------------
-- TABLA: empleados
-- -------------------------------------------------------------
CREATE TABLE empleados (
    codigo_empleado   INT          NOT NULL AUTO_INCREMENT,
    nombre            VARCHAR(50)  NOT NULL,
    apellido1         VARCHAR(50)  NOT NULL,
    apellido2         VARCHAR(50),
    extension         VARCHAR(10)  NOT NULL,
    email             VARCHAR(100) NOT NULL,
    codigo_oficina    VARCHAR(10)  NOT NULL,
    codigo_jefe       INT,
    puesto            VARCHAR(50),
    PRIMARY KEY (codigo_empleado),
    FOREIGN KEY (codigo_oficina) REFERENCES oficinas(codigo_oficina),
    FOREIGN KEY (codigo_jefe)    REFERENCES empleados(codigo_empleado)
);

-- -------------------------------------------------------------
-- TABLA: clientes
-- -------------------------------------------------------------
CREATE TABLE clientes (
    codigo_cliente          INT          NOT NULL AUTO_INCREMENT,
    nombre_cliente          VARCHAR(50)  NOT NULL,
    nombre_contacto         VARCHAR(30),
    apellido_contacto       VARCHAR(30),
    telefono                VARCHAR(15)  NOT NULL,
    fax                     VARCHAR(15)  NOT NULL,
    linea_direccion1        VARCHAR(50)  NOT NULL,
    linea_direccion2        VARCHAR(50),
    ciudad                  VARCHAR(50)  NOT NULL,
    region                  VARCHAR(50),
    pais                    VARCHAR(50),
    codigo_postal           VARCHAR(10),
    codigo_empleado_rep_ventas INT,
    limite_credito          DECIMAL(15,2),
    PRIMARY KEY (codigo_cliente),
    FOREIGN KEY (codigo_empleado_rep_ventas) REFERENCES empleados(codigo_empleado)
);

-- -------------------------------------------------------------
-- TABLA: pedidos
-- -------------------------------------------------------------
CREATE TABLE pedidos (
    codigo_pedido      INT         NOT NULL AUTO_INCREMENT,
    fecha_pedido       DATE        NOT NULL,
    fecha_esperada     DATE        NOT NULL,
    fecha_entrega      DATE,
    estado             VARCHAR(15) NOT NULL,
    comentarios        TEXT,
    codigo_cliente     INT         NOT NULL,
    PRIMARY KEY (codigo_pedido),
    FOREIGN KEY (codigo_cliente) REFERENCES clientes(codigo_cliente)
);

-- -------------------------------------------------------------
-- TABLA: gama_productos
-- -------------------------------------------------------------
CREATE TABLE gama_productos (
    gama            VARCHAR(50)  NOT NULL,
    descripcion_texto TEXT,
    descripcion_html TEXT,
    imagen          VARCHAR(256),
    PRIMARY KEY (gama)
);

-- -------------------------------------------------------------
-- TABLA: productos
-- -------------------------------------------------------------
CREATE TABLE productos (
    codigo_producto     VARCHAR(15)  NOT NULL,
    nombre              VARCHAR(70)  NOT NULL,
    gama                VARCHAR(50)  NOT NULL,
    dimensiones         VARCHAR(25),
    proveedor           VARCHAR(50),
    descripcion         TEXT,
    cantidad_en_stock   SMALLINT     NOT NULL,
    precio_venta        DECIMAL(15,2) NOT NULL,
    precio_proveedor    DECIMAL(15,2),
    PRIMARY KEY (codigo_producto),
    FOREIGN KEY (gama) REFERENCES gama_productos(gama)
);

-- -------------------------------------------------------------
-- TABLA: detalle_pedidos
-- -------------------------------------------------------------
CREATE TABLE detalle_pedidos (
    codigo_pedido    INT           NOT NULL,
    codigo_producto  VARCHAR(15)   NOT NULL,
    cantidad         INT           NOT NULL,
    precio_unidad    DECIMAL(15,2) NOT NULL,
    numero_linea     SMALLINT      NOT NULL,
    PRIMARY KEY (codigo_pedido, codigo_producto),
    FOREIGN KEY (codigo_pedido)   REFERENCES pedidos(codigo_pedido),
    FOREIGN KEY (codigo_producto) REFERENCES productos(codigo_producto)
);

-- -------------------------------------------------------------
-- TABLA: pagos
-- -------------------------------------------------------------
CREATE TABLE pagos (
    codigo_cliente    INT           NOT NULL,
    forma_pago        VARCHAR(40)   NOT NULL,
    id_transaccion    VARCHAR(50)   NOT NULL,
    fecha_pago        DATE          NOT NULL,
    total             DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (codigo_cliente, id_transaccion),
    FOREIGN KEY (codigo_cliente) REFERENCES clientes(codigo_cliente)
);
