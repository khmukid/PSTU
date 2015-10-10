-- MySQL Script generated by MySQL Workbench
-- 10/06/15 16:32:31
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema pstu_updated
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pstu_updated
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pstu_updated` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `pstu_updated` ;

-- -----------------------------------------------------
-- Table `pstu_updated`.`fh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`fh` (
  `fh_id` INT(11) NOT NULL,
  `fh_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`fh_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pstu_updated`.`anamnesis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`anamnesis` (
  `anamnesis_id` INT(11) NOT NULL,
  `onset` VARCHAR(45) NULL DEFAULT NULL,
  `illness_duration` INT(11) NULL DEFAULT NULL,
  `weakness` VARCHAR(45) NULL DEFAULT NULL,
  `fh_id` INT(11) NULL DEFAULT NULL,
  `rumination` VARCHAR(45) NULL DEFAULT NULL,
  `salivation` VARCHAR(45) NULL DEFAULT NULL,
  `defecation` VARCHAR(45) NULL DEFAULT NULL,
  `urination` VARCHAR(45) NULL DEFAULT NULL,
  `fece` VARCHAR(50) NULL DEFAULT NULL,
  `deworming` VARCHAR(45) NULL DEFAULT NULL,
  `last_deworming_date` DATE NULL DEFAULT NULL,
  `vaceination` VARCHAR(45) NULL DEFAULT NULL,
  `last_vaceination_date` DATE NULL DEFAULT NULL,
  `month_most_recent_insemination` VARCHAR(45) NULL DEFAULT NULL,
  `recent_calving_date` DATE NULL DEFAULT NULL,
  `breeding_system` VARCHAR(45) NULL DEFAULT NULL,
  `roughage` VARCHAR(45) NULL DEFAULT NULL,
  `concent_rate` VARCHAR(45) NULL DEFAULT NULL,
  `housing_system` VARCHAR(50) NULL DEFAULT NULL,
  `grazing` VARCHAR(50) NULL DEFAULT NULL,
  `previous_treatment` VARCHAR(45) NULL DEFAULT NULL,
  `outbreak_of_infection` VARCHAR(45) NULL DEFAULT NULL,
  `drug_names` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`anamnesis_id`),
  INDEX `fk_anamnesis_fh1_idx` (`fh_id` ASC),
  CONSTRAINT `fk_anamnesis_fh1`
    FOREIGN KEY (`fh_id`)
    REFERENCES `pstu_updated`.`fh` (`fh_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`biochemistry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`biochemistry` (
  `biochemistry_id` INT(11) NOT NULL,
  `calcium` VARCHAR(50) NULL DEFAULT NULL,
  `magnesium` VARCHAR(50) NULL DEFAULT NULL,
  `phosphorus` VARCHAR(50) NULL DEFAULT NULL,
  `pcv` VARCHAR(50) NULL DEFAULT NULL,
  `esr` VARCHAR(50) NULL DEFAULT NULL,
  `dlc` VARCHAR(50) NULL DEFAULT NULL,
  `neutrophil` VARCHAR(50) NULL DEFAULT NULL,
  `eosinophil` VARCHAR(50) NULL DEFAULT NULL,
  `basophil` VARCHAR(50) NULL DEFAULT NULL,
  `tec` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`biochemistry_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`breeds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`breeds` (
  `breed_id` INT(11) NOT NULL,
  `breed_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`breed_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`clinical_examination`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`clinical_examination` (
  `clinical_examination_id` INT(11) NOT NULL,
  `rectal_temp` VARCHAR(45) NULL DEFAULT NULL,
  `resp_rate` VARCHAR(45) NULL DEFAULT NULL,
  `pulse_rate` VARCHAR(45) NULL DEFAULT NULL,
  `pulse_volume` VARCHAR(45) NULL DEFAULT NULL,
  `muscus_membrane` VARCHAR(50) NULL DEFAULT NULL,
  `general_attitude` VARCHAR(50) NULL DEFAULT NULL,
  `hair_coat` VARCHAR(50) NULL DEFAULT NULL,
  `skin_lesion` VARCHAR(50) NULL DEFAULT NULL,
  `dehydration` VARCHAR(50) NULL DEFAULT NULL,
  `posture` VARCHAR(45) NULL DEFAULT NULL,
  `gait` VARCHAR(45) NULL DEFAULT NULL,
  `foot_lesion` VARCHAR(45) NULL DEFAULT NULL,
  `exm_feces` VARCHAR(50) NULL DEFAULT NULL,
  `rumen_matility` VARCHAR(45) NULL DEFAULT NULL,
  `abdomen_size` VARCHAR(50) NULL DEFAULT NULL,
  `mouth_lesions` VARCHAR(45) NULL DEFAULT NULL,
  `liver` VARCHAR(45) NULL DEFAULT NULL,
  `spleen` VARCHAR(45) NULL DEFAULT NULL,
  `resp_characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `resp_sound` VARCHAR(50) NULL DEFAULT NULL,
  `urine_color` VARCHAR(50) NULL DEFAULT NULL,
  `micturation` VARCHAR(45) NULL DEFAULT NULL,
  `l_node` VARCHAR(45) NULL DEFAULT NULL,
  `milk_color` VARCHAR(11) NULL DEFAULT NULL,
  `consistency` VARCHAR(50) NULL DEFAULT NULL,
  `vaginal_discharge` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`clinical_examination_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`species`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`species` (
  `species_id` INT(11) NOT NULL,
  `species_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`species_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`colors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`colors` (
  `color_id` INT(11) NOT NULL,
  `color_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`color_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`patient_identification_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`patient_identification_data` (
  `patient_identification_id` INT(11) NOT NULL,
  `species_id` INT(11) NULL DEFAULT NULL,
  `breed_id` INT(11) NULL DEFAULT NULL,
  `physiological_status` VARCHAR(50) NULL DEFAULT NULL,
  `parity` VARCHAR(50) NULL DEFAULT NULL,
  `age` INT(11) NULL DEFAULT NULL,
  `sex` VARCHAR(45) NULL DEFAULT NULL,
  `bcs` VARCHAR(11) NULL DEFAULT NULL,
  `color_id` INT(11) NULL DEFAULT NULL,
  `body_weight` VARCHAR(11) NULL DEFAULT NULL,
  PRIMARY KEY (`patient_identification_id`),
  INDEX `fk_patient_identification_data_species1_idx` (`species_id` ASC),
  INDEX `fk_patient_identification_data_colors1_idx` (`color_id` ASC),
  INDEX `fk_patient_identification_data_breeds1_idx` (`breed_id` ASC),
  CONSTRAINT `fk_patient_identification_data_species1`
    FOREIGN KEY (`species_id`)
    REFERENCES `pstu_updated`.`species` (`species_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_identification_data_colors1`
    FOREIGN KEY (`color_id`)
    REFERENCES `pstu_updated`.`colors` (`color_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_identification_data_breeds1`
    FOREIGN KEY (`breed_id`)
    REFERENCES `pstu_updated`.`breeds` (`breed_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`system_affect`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`system_affect` (
  `system_affect_id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`system_affect_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`farm_size`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`farm_size` (
  `farm_size_id` INT(11) NOT NULL,
  `farm_size` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`farm_size_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`farm_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`farm_type` (
  `farm_type_id` INT(11) NOT NULL,
  `farm_type` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`farm_type_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`source_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`source_info` (
  `source_info_id` INT(11) NOT NULL,
  `patient_source` VARCHAR(50) NULL DEFAULT NULL,
  `farm_size_id` INT(11) NULL DEFAULT NULL,
  `farm_type_id` INT(11) NULL DEFAULT NULL,
  `similar_animals` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`source_info_id`),
  INDEX `fk_source_info_farm_size1_idx` (`farm_size_id` ASC),
  INDEX `fk_source_info_farm_type1_idx` (`farm_type_id` ASC),
  CONSTRAINT `fk_source_info_farm_size1`
    FOREIGN KEY (`farm_size_id`)
    REFERENCES `pstu_updated`.`farm_size` (`farm_size_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_source_info_farm_type1`
    FOREIGN KEY (`farm_type_id`)
    REFERENCES `pstu_updated`.`farm_type` (`farm_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`owner_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`owner_info` (
  `owner_info_id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `occupation` VARCHAR(45) NULL DEFAULT 'House Wife',
  `education` VARCHAR(45) NULL DEFAULT NULL,
  `village` VARCHAR(50) NULL DEFAULT NULL,
  `union` VARCHAR(50) NULL DEFAULT NULL,
  `upazilla` VARCHAR(50) NULL DEFAULT NULL,
  `district` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`owner_info_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`users` (
  `user_id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `desgnation` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  `password` VARCHAR(40) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(500) NULL DEFAULT NULL,
  `type` TINYINT(4) NULL DEFAULT NULL COMMENT '1 for master , 2 for modarator and 3 for operator',
  `status` TINYINT(4) NULL DEFAULT '1',
  `created_date` DATETIME NULL DEFAULT NULL,
  `updated_date` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`parasitological_test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`parasitological_test` (
  `parasitological_test_id` INT(11) NOT NULL,
  `txematale` VARCHAR(50) NULL DEFAULT NULL,
  `namattal` VARCHAR(50) NULL DEFAULT NULL,
  `cestode` VARCHAR(50) NULL DEFAULT NULL,
  `arthropoda` VARCHAR(50) NULL DEFAULT NULL,
  `protozoa` VARCHAR(50) NULL DEFAULT NULL,
  `mixed` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`parasitological_test_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pstu_updated`.`clinical_record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pstu_updated`.`clinical_record` (
  `record_id` INT(11) NOT NULL,
  `registration_no` VARCHAR(45) NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT NULL,
  `case_category` VARCHAR(50) NULL DEFAULT NULL,
  `case_nature` VARCHAR(50) NULL DEFAULT NULL,
  `registration_fee` INT(11) NULL DEFAULT NULL,
  `owner_info_id` INT(11) NULL DEFAULT NULL,
  `patient_identification_id` INT(11) NULL DEFAULT NULL,
  `source_info_id` INT(11) NULL DEFAULT NULL,
  `owner_compliment` TEXT NOT NULL,
  `total_animals` INT(11) NULL DEFAULT NULL,
  `total_affected_animals` INT(11) NULL DEFAULT NULL,
  `anamnesis_id` INT(11) NULL DEFAULT NULL,
  `clinical_examination_id` INT(11) NULL DEFAULT NULL,
  `system_affect_id` INT(11) NULL DEFAULT NULL,
  `tentative_diagnosis` VARCHAR(1000) NULL DEFAULT NULL,
  `drug_prescribe` VARCHAR(20) NULL DEFAULT 'No',
  `oxytetracycline` INT(11) NULL DEFAULT NULL,
  `amph` INT(11) NULL DEFAULT NULL,
  `parasitological_test_id` INT(11) NULL DEFAULT NULL,
  `biochemistry_id` INT(11) NULL DEFAULT NULL,
  `x-ray` VARCHAR(100) NULL DEFAULT NULL,
  `ultrasonography` VARCHAR(100) NULL DEFAULT NULL,
  `fill_up_by` INT(11) NULL DEFAULT NULL COMMENT 'user id of users',
  `status` TINYINT(4) NULL DEFAULT '1',
  `created_date` DATETIME NULL DEFAULT NULL,
  `updated_date` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  INDEX `fk_clinical_record_patient_identification_data1_idx` (`patient_identification_id` ASC),
  INDEX `fk_clinical_record_system_affect1_idx` (`system_affect_id` ASC),
  INDEX `fk_clinical_record_anamnesis1_idx` (`anamnesis_id` ASC),
  INDEX `fk_clinical_record_biochemistry1_idx` (`biochemistry_id` ASC),
  INDEX `fk_clinical_record_source_info1_idx` (`source_info_id` ASC),
  INDEX `fk_clinical_record_owner_info1_idx` (`owner_info_id` ASC),
  INDEX `fk_clinical_record_users1_idx` (`fill_up_by` ASC),
  INDEX `fk_clinical_record_clinical_examination1_idx` (`clinical_examination_id` ASC),
  INDEX `fk_clinical_record_parasitological_test1_idx` (`parasitological_test_id` ASC),
  CONSTRAINT `fk_clinical_record_patient_identification_data1`
    FOREIGN KEY (`patient_identification_id`)
    REFERENCES `pstu_updated`.`patient_identification_data` (`patient_identification_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_system_affect1`
    FOREIGN KEY (`system_affect_id`)
    REFERENCES `pstu_updated`.`system_affect` (`system_affect_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_anamnesis1`
    FOREIGN KEY (`anamnesis_id`)
    REFERENCES `pstu_updated`.`anamnesis` (`anamnesis_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_biochemistry1`
    FOREIGN KEY (`biochemistry_id`)
    REFERENCES `pstu_updated`.`biochemistry` (`biochemistry_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_source_info1`
    FOREIGN KEY (`source_info_id`)
    REFERENCES `pstu_updated`.`source_info` (`source_info_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_owner_info1`
    FOREIGN KEY (`owner_info_id`)
    REFERENCES `pstu_updated`.`owner_info` (`owner_info_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_users1`
    FOREIGN KEY (`fill_up_by`)
    REFERENCES `pstu_updated`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_clinical_examination1`
    FOREIGN KEY (`clinical_examination_id`)
    REFERENCES `pstu_updated`.`clinical_examination` (`clinical_examination_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clinical_record_parasitological_test1`
    FOREIGN KEY (`parasitological_test_id`)
    REFERENCES `pstu_updated`.`parasitological_test` (`parasitological_test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
