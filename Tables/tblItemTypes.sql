CREATE TABLE `tblItemTypes` (
	`intID` INT(10) UNSIGNED NOT NULL,
	`strName` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`strDescription` VARCHAR(2000) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`intParentTypeID` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`intID`) USING BTREE,
	INDEX `FK_tblItemTypes_intParentID_intID` (`intParentTypeID`) USING BTREE,
	CONSTRAINT `FK_tblItemTypes_intParentID_intID` FOREIGN KEY (`intParentTypeID`) REFERENCES `tblItemTypes` (`intID`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
