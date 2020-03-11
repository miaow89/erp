-- MySQL Script generated by MySQL Workbench
-- Thu Sep 26 20:04:47 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`employee` ;

CREATE TABLE IF NOT EXISTS `mydb`.`employee` (
  `name` VARCHAR(45) NOT NULL,
  `sex` VARCHAR(45) NOT NULL,
  `moble` VARCHAR(45) NOT NULL,
  `tel` VARCHAR(45) NULL,
  `loginId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`loginId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sys_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`sys_user` ;

CREATE TABLE IF NOT EXISTS `mydb`.`sys_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `loginId` VARCHAR(45) NOT NULL,
  `passwd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `sys_user_loginId_idx` (`loginId` ASC) VISIBLE,
  CONSTRAINT `sys_user_loginId`
    FOREIGN KEY (`loginId`)
    REFERENCES `mydb`.`employee` (`loginId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sys_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`sys_role` ;

CREATE TABLE IF NOT EXISTS `mydb`.`sys_role` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sys_user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`sys_user_role` ;

CREATE TABLE IF NOT EXISTS `mydb`.`sys_user_role` (
  `sys_user_id` INT NOT NULL,
  `sys_role_id` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  INDEX `sys_role_id_idx` (`sys_user_id` ASC, `sys_role_id` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  CONSTRAINT `sys_role_id`
    FOREIGN KEY (`sys_user_id` , `sys_role_id`)
    REFERENCES `mydb`.`sys_role` (`id` , `id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sys_user_id`
    FOREIGN KEY (`sys_user_id` , `sys_role_id`)
    REFERENCES `mydb`.`sys_user` (`id` , `id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
