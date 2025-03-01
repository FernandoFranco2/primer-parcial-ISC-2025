-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema primer_parcial_isc_2025
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema primer_parcial_isc_2025
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `primer_parcial_isc_2025` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `primer_parcial_isc_2025` ;

-- -----------------------------------------------------
-- Table `primer_parcial_isc_2025`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `primer_parcial_isc_2025`.`productos` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `cantidad` VARCHAR(100) NOT NULL,
  `precio_unitario` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE INDEX `precio_unitario` (`precio_unitario` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `primer_parcial_isc_2025`.`facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `primer_parcial_isc_2025`.`facturas` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `NIT` VARCHAR(100) NOT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_factura`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `primer_parcial_isc_2025`.`factura_detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `primer_parcial_isc_2025`.`factura_detalle` (
  `id_producto` INT NOT NULL,
  `id_factura` INT NOT NULL,
  `fecha_factura` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_producto`, `id_factura`),
  INDEX `id_factura` (`id_factura` ASC) VISIBLE,
  CONSTRAINT `factura_detalle_ibfk_1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `primer_parcial_isc_2025`.`productos` (`id_producto`)
    ON DELETE CASCADE,
  CONSTRAINT `factura_detalle_ibfk_2`
    FOREIGN KEY (`id_factura`)
    REFERENCES `primer_parcial_isc_2025`.`facturas` (`id_factura`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
