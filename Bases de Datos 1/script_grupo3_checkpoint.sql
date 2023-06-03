-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema el_descubierto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema el_descubierto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `el_descubierto` DEFAULT CHARACTER SET utf8 ;
USE `el_descubierto` ;

-- -----------------------------------------------------
-- Table `el_descubierto`.`ciudades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`ciudades` (
  `idciudades` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `codigo_postal` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idciudades`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`sucursales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`sucursales` (
  `idsucursales` INT NOT NULL AUTO_INCREMENT,
  `numero_sucursal` INT NULL,
  `ciudades_idciudades` INT NOT NULL,
  PRIMARY KEY (`idsucursales`),
  INDEX `fk_sucursales_ciudades1_idx` (`ciudades_idciudades` ASC) VISIBLE,
  CONSTRAINT `fk_sucursales_ciudades1`
    FOREIGN KEY (`ciudades_idciudades`)
    REFERENCES `el_descubierto`.`ciudades` (`idciudades`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `apellido` VARCHAR(45) NULL,
  `nombre` VARCHAR(45) NULL,
  `domicilio` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `telefono_movil` INT NULL,
  `ciudades_idciudades` INT NOT NULL,
  PRIMARY KEY (`idclientes`),
  INDEX `fk_clientes_ciudades1_idx` (`ciudades_idciudades` ASC) VISIBLE,
  CONSTRAINT `fk_clientes_ciudades1`
    FOREIGN KEY (`ciudades_idciudades`)
    REFERENCES `el_descubierto`.`ciudades` (`idciudades`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`tipos_cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`tipos_cuentas` (
  `idtipos_cuentas` INT NOT NULL AUTO_INCREMENT,
  `tipo_cuenta` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipos_cuentas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`empleados` (
  `idempleados` INT NOT NULL AUTO_INCREMENT,
  `numero_legajo` INT NULL,
  `sucursales_idsucursales` INT NOT NULL,
  `apellido` VARCHAR(45) NULL,
  `nombre` VARCHAR(45) NULL,
  `domicilio` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `telefono_movil` INT NULL,
  `fecha_alta` DATE NULL,
  `ciudades_idciudades` INT NOT NULL,
  PRIMARY KEY (`idempleados`),
  INDEX `fk_empleados_sucursales1_idx` (`sucursales_idsucursales` ASC) VISIBLE,
  INDEX `fk_empleados_ciudades1_idx` (`ciudades_idciudades` ASC) VISIBLE,
  CONSTRAINT `fk_empleados_sucursales1`
    FOREIGN KEY (`sucursales_idsucursales`)
    REFERENCES `el_descubierto`.`sucursales` (`idsucursales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_ciudades1`
    FOREIGN KEY (`ciudades_idciudades`)
    REFERENCES `el_descubierto`.`ciudades` (`idciudades`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`prestamos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`prestamos` (
  `idprestamos` INT NOT NULL AUTO_INCREMENT,
  `sucursales_idsucursales` INT NOT NULL,
  `fecha_otorgamiento` DATE NULL,
  `importe` FLOAT NULL,
  `cantidad_cuotas` INT NULL,
  `empleados_idempleados` INT NOT NULL,
  PRIMARY KEY (`idprestamos`),
  INDEX `fk_prestamos_sucursales1_idx` (`sucursales_idsucursales` ASC) VISIBLE,
  UNIQUE INDEX `importe_UNIQUE` (`importe` ASC) VISIBLE,
  INDEX `fk_prestamos_empleados1_idx` (`empleados_idempleados` ASC) VISIBLE,
  CONSTRAINT `fk_prestamos_sucursales1`
    FOREIGN KEY (`sucursales_idsucursales`)
    REFERENCES `el_descubierto`.`sucursales` (`idsucursales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamos_empleados1`
    FOREIGN KEY (`empleados_idempleados`)
    REFERENCES `el_descubierto`.`empleados` (`idempleados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`tipos_intereses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`tipos_intereses` (
  `idtipos_intereses` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipos_intereses`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`descubiertos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`descubiertos` (
  `iddescubiertos` INT NOT NULL AUTO_INCREMENT,
  `descubierto_otorgado` FLOAT NULL,
  PRIMARY KEY (`iddescubiertos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`cuentas` (
  `idcuentas` INT NOT NULL AUTO_INCREMENT,
  `numero_cuenta` INT NULL,
  `tipos_cuentas_idtipos_cuentas` INT NOT NULL,
  `sucursales_idsucursales` INT NOT NULL,
  `estado_cuenta` TINYINT(1) NULL,
  `tipos_intereses_idtipos_intereses` INT NOT NULL,
  `descubiertos_iddescubiertos` INT NOT NULL,
  `ejecutivos_cuentas_idejecutivos_cuentas` INT NOT NULL,
  `empleados_idempleados` INT NOT NULL,
  PRIMARY KEY (`idcuentas`),
  INDEX `fk_cuentas_tipos_cuentas1_idx` (`tipos_cuentas_idtipos_cuentas` ASC) VISIBLE,
  INDEX `fk_cuentas_sucursales1_idx` (`sucursales_idsucursales` ASC) VISIBLE,
  UNIQUE INDEX `numero_cuenta_UNIQUE` (`numero_cuenta` ASC) VISIBLE,
  INDEX `fk_cuentas_tipos_intereses1_idx` (`tipos_intereses_idtipos_intereses` ASC) VISIBLE,
  INDEX `fk_cuentas_descubiertos1_idx` (`descubiertos_iddescubiertos` ASC) VISIBLE,
  INDEX `fk_cuentas_empleados1_idx` (`empleados_idempleados` ASC) VISIBLE,
  CONSTRAINT `fk_cuentas_tipos_cuentas1`
    FOREIGN KEY (`tipos_cuentas_idtipos_cuentas`)
    REFERENCES `el_descubierto`.`tipos_cuentas` (`idtipos_cuentas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_sucursales1`
    FOREIGN KEY (`sucursales_idsucursales`)
    REFERENCES `el_descubierto`.`sucursales` (`idsucursales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_tipos_intereses1`
    FOREIGN KEY (`tipos_intereses_idtipos_intereses`)
    REFERENCES `el_descubierto`.`tipos_intereses` (`idtipos_intereses`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_descubiertos1`
    FOREIGN KEY (`descubiertos_iddescubiertos`)
    REFERENCES `el_descubierto`.`descubiertos` (`iddescubiertos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_empleados1`
    FOREIGN KEY (`empleados_idempleados`)
    REFERENCES `el_descubierto`.`empleados` (`idempleados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`clientes_has_cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`clientes_has_cuentas` (
  `clientes_idclientes` INT NOT NULL,
  `cuentas_idcuentas` INT NOT NULL,
  `idclientes_has_cuentas` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_clientes_has_cuentas_cuentas1_idx` (`cuentas_idcuentas` ASC) VISIBLE,
  INDEX `fk_clientes_has_cuentas_clientes1_idx` (`clientes_idclientes` ASC) VISIBLE,
  PRIMARY KEY (`idclientes_has_cuentas`),
  CONSTRAINT `fk_clientes_has_cuentas_clientes1`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `el_descubierto`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_has_cuentas_cuentas1`
    FOREIGN KEY (`cuentas_idcuentas`)
    REFERENCES `el_descubierto`.`cuentas` (`idcuentas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`accesos_cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`accesos_cuentas` (
  `idaccesos_cuentas` INT NOT NULL AUTO_INCREMENT,
  `acceso` DATETIME NULL,
  PRIMARY KEY (`idaccesos_cuentas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`saldo_cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`saldo_cuentas` (
  `idsaldo_cuentas` INT NOT NULL AUTO_INCREMENT,
  `saldo` FLOAT NULL,
  `registro_modificacion` DATETIME NULL,
  PRIMARY KEY (`idsaldo_cuentas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`saldo_cuentas_has_cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`saldo_cuentas_has_cuentas` (
  `saldo_cuentas_idsaldo_cuentas` INT NOT NULL,
  `cuentas_idcuentas` INT NOT NULL,
  `idsaldo_cuentas_has_cuentas` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_saldo_cuentas_has_cuentas_cuentas1_idx` (`cuentas_idcuentas` ASC) VISIBLE,
  INDEX `fk_saldo_cuentas_has_cuentas_saldo_cuentas1_idx` (`saldo_cuentas_idsaldo_cuentas` ASC) VISIBLE,
  PRIMARY KEY (`idsaldo_cuentas_has_cuentas`),
  CONSTRAINT `fk_saldo_cuentas_has_cuentas_saldo_cuentas1`
    FOREIGN KEY (`saldo_cuentas_idsaldo_cuentas`)
    REFERENCES `el_descubierto`.`saldo_cuentas` (`idsaldo_cuentas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_saldo_cuentas_has_cuentas_cuentas1`
    FOREIGN KEY (`cuentas_idcuentas`)
    REFERENCES `el_descubierto`.`cuentas` (`idcuentas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`accesos_cuentas_has_cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`accesos_cuentas_has_cuentas` (
  `accesos_cuentas_idaccesos_cuentas` INT NOT NULL,
  `cuentas_idcuentas` INT NOT NULL,
  `idaccesos_cuentas_has_cuentas` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_accesos_cuentas_has_cuentas_cuentas1_idx` (`cuentas_idcuentas` ASC) VISIBLE,
  INDEX `fk_accesos_cuentas_has_cuentas_accesos_cuentas1_idx` (`accesos_cuentas_idaccesos_cuentas` ASC) VISIBLE,
  PRIMARY KEY (`idaccesos_cuentas_has_cuentas`),
  CONSTRAINT `fk_accesos_cuentas_has_cuentas_accesos_cuentas1`
    FOREIGN KEY (`accesos_cuentas_idaccesos_cuentas`)
    REFERENCES `el_descubierto`.`accesos_cuentas` (`idaccesos_cuentas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_accesos_cuentas_has_cuentas_cuentas1`
    FOREIGN KEY (`cuentas_idcuentas`)
    REFERENCES `el_descubierto`.`cuentas` (`idcuentas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`clientes_has_prestamos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`clientes_has_prestamos` (
  `clientes_idclientes` INT NOT NULL,
  `prestamos_idprestamos` INT NOT NULL,
  `idclientes_has_prestamos` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_clientes_has_prestamos_prestamos1_idx` (`prestamos_idprestamos` ASC) VISIBLE,
  INDEX `fk_clientes_has_prestamos_clientes1_idx` (`clientes_idclientes` ASC) VISIBLE,
  PRIMARY KEY (`idclientes_has_prestamos`),
  CONSTRAINT `fk_clientes_has_prestamos_clientes1`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `el_descubierto`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_has_prestamos_prestamos1`
    FOREIGN KEY (`prestamos_idprestamos`)
    REFERENCES `el_descubierto`.`prestamos` (`idprestamos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `el_descubierto`.`pagos_prestamos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `el_descubierto`.`pagos_prestamos` (
  `idpagos_prestamos` INT NOT NULL AUTO_INCREMENT,
  `numero_cuota` INT NULL,
  `fecha_hora` DATETIME NULL,
  `importe` FLOAT NULL,
  `prestamos_idprestamos` INT NOT NULL,
  PRIMARY KEY (`idpagos_prestamos`),
  INDEX `fk_pagos_prestamos_prestamos1_idx` (`prestamos_idprestamos` ASC) VISIBLE,
  CONSTRAINT `fk_pagos_prestamos_prestamos1`
    FOREIGN KEY (`prestamos_idprestamos`)
    REFERENCES `el_descubierto`.`prestamos` (`idprestamos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
