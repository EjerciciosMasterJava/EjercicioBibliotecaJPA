<?xml version="1.0" encoding="UTF-8"?>
<persistence version="2.2"
        xmlns="http://xmlns.jcp.org/xml/ns/persistence"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/persistence http://xmlns.jcp.org/xml/ns/persistence/persistence_2_2.xsd">
<persistence-unit name="bibliotec3"
                transaction-type="RESOURCE_LOCAL">
<class>com.curso.dominio.Libro</class>
<class>com.curso.dominio.Categoria</class>
<properties>
<property name="hibernate.show_sql" value="true" />
<property name="javax.persistence.jdbc.url" value="jdbc:mysql://localhost:3306/bibliotec3" />
<property name="javax.persistence.jdbc.user" value="root" />
<property name="javax.persistence.jdbc.password" value="root" />
<property name="javax.persistence.jdbc.driver"  value="com.mysql.cj.jdbc.Driver" />
<property name="javax.persistence.schema-generation.database.action" value="drop-and-create" />
<property name="javax.persistence.schema-generation.create-source"         value="script" />
<property name="javax.persistence.schema-generation.drop-source"         value="script" />
<property name="javax.persistence.schema-generation.create-script-source" value="META-INF/crear.sql" />
<property name="javax.persistence.schema-generation.drop-script-source"   value="META-INF/borrar.sql" />
<property name="javax.persistence.sql-load-script-source"         value="META-INF/insertar.sql" />
 
                </properties>
</persistence-unit>
</persistence>
 
===insertar.sql====
 
INSERT INTO `Categorias` (`nombre`, `descripcion`) VALUES ('programacion','libros de programacion');
INSERT INTO `Categorias` (`nombre`, `descripcion`) VALUES ('web','libros web');
INSERT INTO `Libros` (`isbn`, `titulo`, `autor`,  `precio`,`categorias_nombre`) VALUES ('1AB', 'Java', 'pepito', '3','programacion');
INSERT INTO `Libros` (`isbn`, `titulo`, `autor`,  `precio`,`categorias_nombre`) VALUES ('2AC', 'Java Web', 'pepito', '3','programacion');
INSERT INTO `Libros` (`isbn`, `titulo`, `autor`,  `precio`,`categorias_nombre`) VALUES ('3BC', 'html', 'gema',  '2','web');
INSERT INTO `Libros` (`isbn`, `titulo`, `autor`,  `precio`,`categorias_nombre`) VALUES ('4BD', 'html5', 'andres', '2','web');
INSERT INTO `Libros` (`isbn`, `titulo`, `autor`,  `precio`,`categorias_nombre`) VALUES ('5BD', 'C', 'maria', '5','programacion');
INSERT INTO `Libros` (`isbn`, `titulo`, `autor`,  `precio`,`categorias_nombre`) VALUES ('6FG', 'PHP', null, '4','programacion');
 
 
===crear.sql====
 
CREATE TABLE `Libros` (`isbn` VARCHAR(255) NOT NULL,`titulo` VARCHAR(255) NOT NULL,`autor` VARCHAR(255) ,`precio` INT NOT NULL,`categorias_nombre` VARCHAR(255) ,PRIMARY KEY (`isbn`));
CREATE TABLE `Categorias` (        `nombre` VARCHAR(255) NOT NULL,`descripcion` VARCHAR(255) NOT NULL,PRIMARY KEY (`nombre`));
ALTER TABLE `Libros` ADD CONSTRAINT `Libros_fk0` FOREIGN KEY (`categorias_nombre`) REFERENCES `Categorias`(`nombre`);
 
 
==borrar.sql====
DROP TABLE   if exists Libros;
DROP TABLE   if exists Categorias;
 
 
====Generar.java====
 
package com.curso.principal;
 
import jakarta.persistence.Persistence;
 
public class Generar {
 
        public static void main(String[] args) {
                Persistence.generateSchema("bibliotec3", null);
 
        }
 
}