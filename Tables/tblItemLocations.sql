CREATE TABLE `tblItemLocations` (
	`intItemID` INT(10) UNSIGNED NOT NULL,
	`intLocationID` INT(10) UNSIGNED NOT NULL,
	`intQty` INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`intItemID`, `intLocationID`) USING BTREE,
	UNIQUE INDEX `intItemID_intLocationID` (`intItemID`, `intLocationID`) USING BTREE,
	INDEX `FK_tblItemLocations_tblLocations_intID_intLocationID` (`intLocationID`) USING BTREE,
	CONSTRAINT `FK_tblItemLocations_tblItems_intID_intItemID` FOREIGN KEY (`intItemID`) REFERENCES `tblItems` (`intID`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `FK_tblItemLocations_tblLocations_intID_intLocationID` FOREIGN KEY (`intLocationID`) REFERENCES `tblLocations` (`intID`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
