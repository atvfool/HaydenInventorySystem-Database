CREATE TABLE `tblLocations` (
	`intID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`strName` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`strDescription` VARCHAR(2000) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`intParentLocationID` INT(10) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`intID`) USING BTREE,
	INDEX `FK_tblLocations_intParentLocationID_intID` (`intParentLocationID`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7
;
