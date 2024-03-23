CREATE TABLE `tblLocations` (
	`intID` INT(10) UNSIGNED NOT NULL,
	`strName` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`strDescription` VARCHAR(2000) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`intParentLocationID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`intID`) USING BTREE,
	INDEX `FK_tblLocations_intParentLocationID_intID` (`intParentLocationID`) USING BTREE,
	CONSTRAINT `FK_tblLocations_intParentLocationID_intID` FOREIGN KEY (`intParentLocationID`) REFERENCES `tblLocations` (`intID`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
