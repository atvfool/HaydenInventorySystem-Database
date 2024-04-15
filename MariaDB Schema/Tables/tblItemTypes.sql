CREATE TABLE `tblItemTypes` (
	`intID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`strName` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`strDescription` VARCHAR(2000) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`intParentTypeID` INT(11) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`intID`) USING BTREE,
	INDEX `FK_tblItemTypes_intParentID_intID` (`intParentTypeID`) USING BTREE,
	CONSTRAINT `FK_tblItemTypes_intParentID_intID` FOREIGN KEY (`intParentTypeID`) REFERENCES `tblItemTypes` (`intID`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;
