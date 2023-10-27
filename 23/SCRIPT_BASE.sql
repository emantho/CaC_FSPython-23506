-- CREAR NUESTRA PRIMERA BASE DE DATOS

DROP DATABASE IF EXISTS libreria_23506;
CREATE DATABASE libreria_23506;

-- SELECCIONADO DE BD
USE libreria_23506;

-- crear nuestras primeras tablas 
DROP TABLE IF EXISTS AUTOR ;

CREATE TABLE AUTOR (
	CODIGO_AUTOR INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOMBRE VARCHAR(50)
);

-- SHOW CREATE table AUTOR;


CREATE TABLE LIBRO(
	CODIGO_LIBRO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ISBN VARCHAR(12) NOT NULL,
	TITULO VARCHAR(100) DEFAULT 'TITULO DESCONOCIDO',
	EDITORIAL VARCHAR(100) DEFAULT 'EDITORIAL DESCONOCIDO',
	PAGINAS INT DEFAULT 100
);
 

CREATE TABLE EJEMPLAR(
	CODIGO_EJEMPLAR INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CODIGO_LIBRO INT NOT NULL,
	ALMACEN VARCHAR(100) DEFAULT 'ALMACEN DESCONOCIDO',
    FOREIGN KEY (CODIGO_LIBRO) REFERENCES LIBRO(CODIGO_LIBRO)
);
 
 
 CREATE TABLE USUARIO(
	ID_USUARIO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOMBRE VARCHAR(50) NOT NULL,
	TELEFONO VARCHAR(20),
	DIRECCION VARCHAR(100)
);
 

 CREATE TABLE LINK_AUTOR_LIBRO (
	CODIGO_AUTOR INT NOT NULL,
	CODIGO_LIBRO INT NOT NULL ,
	LUGAR_ESCRITURA VARCHAR(50),
	FOREIGN KEY (CODIGO_AUTOR) REFERENCES AUTOR(CODIGO_AUTOR),
	FOREIGN KEY (CODIGO_LIBRO) REFERENCES LIBRO(CODIGO_LIBRO),
    PRIMARY KEY(CODIGO_AUTOR,CODIGO_LIBRO)
 );
 
 CREATE TABLE VENTA(
	ID_VENTA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CODIGO_EJEMPLAR INT NOT NULL,
	ID_USUARIO INT NOT NULL,
	PUNTO_VENTA VARCHAR(100) DEFAULT 'PUNTO DE VENTA DESCONOCIDO',
	PRECIO_VENTA DECIMAL(10,2),
    FECHA_VENTA DATE,
	FOREIGN KEY (CODIGO_EJEMPLAR) REFERENCES EJEMPLAR(CODIGO_EJEMPLAR),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO)
);
 
 
 
 
 
-- INSERTION DATA

INSERT INTO AUTOR 
(NOMBRE)
VALUES 
( 'JESICA') ,
('LISANDRO'),
('EDER')
 ;

-- SELECT

SELECT 
	CODIGO_AUTOR
,	NOMBRE
FROM libreria_23506.AUTOR
LIMIT 2;

 
 