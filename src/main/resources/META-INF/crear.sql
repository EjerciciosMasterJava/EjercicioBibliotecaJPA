CREATE SCHEMA IF NOT EXISTS `biblioteca3` ;

USE biblioteca3;

-- Tabla categoria
CREATE TABLE IF NOT EXISTS `biblioteca3`.`categoria` (
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` VARCHAR(255) NULL,
  PRIMARY KEY (`nombre`)
);

-- Tabla libro
CREATE TABLE IF NOT EXISTS `biblioteca3`.`libro` (
  `isbn` VARCHAR(45) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `autor` VARCHAR(45) NULL DEFAULT NULL,
  `precio` INT NOT NULL,
  `nombre_categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`isbn`),
  INDEX `fkcategoria_idx` (`nombre_categoria` ASC) VISIBLE,
  CONSTRAINT `fkcategoria`
    FOREIGN KEY (`nombre_categoria`)
    REFERENCES `biblioteca3`.`categoria` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);