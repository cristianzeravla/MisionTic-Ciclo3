CREATE DATABASE ciencia;
USE ciencia;

CREATE TABLE administrador (
	id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
	nombre	VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	username VARCHAR(30) NOT NULL,
	correo VARCHAR(100) NOT NULL UNIQUE,
	clave	VARCHAR(30) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE publicaciones (
	id_publicacion	INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
	titulo	VARCHAR(100) NOT NULL,
	resumen	VARCHAR(250) NOT NULL,
	descripcion	TEXT NOT NULL,
	categoria 	VARCHAR(50) NOT NULL,
	estado	BOOLEAN NOT NULL,
	imagen	LONGBLOB,
	FOREIGN KEY(id_publicacion) REFERENCES administrador(id),
	PRIMARY KEY(id_publicacion)
);

CREATE TABLE comentarios (
	id_comentario	INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
	nombre	VARCHAR(30) NOT NULL,
	apellido	VARCHAR(30) NOT NULL,
	correo	VARCHAR(100) NOT NULL,
	comentario	VARCHAR(250) NOT NULL,
	estado	VARCHAR(30) NOT NULL,
	FOREIGN KEY(id_comentario) REFERENCES publicaciones(id_publicacion),
	PRIMARY KEY(id_comentario)
);