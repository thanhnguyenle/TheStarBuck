SET FOREIGN_KEY_CHECKS = 0;
--  -- 
--  Schema WebTraSua
--  -- 
DROP SCHEMA
IF
	EXISTS `WebTraSua`;
CREATE SCHEMA
IF
	NOT EXISTS `WebTraSua`;

	
	USE `WebTraSua`;
--  -- 
--  Table WebTraSua.Account
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Account` (
		`id_ac` int AUTO_INCREMENT,
		`ac_username` VARCHAR ( 255 ) NOT NULL,
		`ac_fullname` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`ac_active` BOOL NOT NULL DEFAULT 0,
		`ac_mobile` VARCHAR ( 10 ) NOT NULL,
		`ac_email` VARCHAR ( 100 ) NULL,
		`ac_emailVerifiedAt` DATETIME ( 6 ),
		`ac_password` VARCHAR ( 100 ) NOT NULL,
		`ac_avatar` VARCHAR ( 255 ) NULL,
		`ac_addressId` int,
		`ac_about` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`ac_rememberToken` VARCHAR ( 100 ) CHARACTER 
		SET 'utf8mb4' ,
		`ac_lastLogin` DATETIME ( 6 ),
		`ac_groupId` VARCHAR ( 10 ) NOT NULL DEFAULT 'MEMBER',
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY(`id_ac`)
	) ;
--  -- 
--  Table WebTraSua.Address
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Address` ( 
		`id_ad` int AUTO_INCREMENT, 
		`ad_userId` int , 
		`ad_provinceCode` VARCHAR(5) NOT NULL,
		`ad_districtCode` VARCHAR(5) NOT NULL,
		`ad_wardCode` VARCHAR(5) NOT NULL,
		`ad_addressDetail` VARCHAR ( 255 ) CHARACTER SET 'utf8mb4' NOT NULL,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY (`id_ad`),
		FOREIGN KEY ( `ad_userId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION
		) ;
--  -- 
--  Table WebTraSua.Article
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Article` (
		`id_ar` int AUTO_INCREMENT,
		`ar_name` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`ar_description` VARCHAR(500) CHARACTER 
		SET 'utf8mb4' NULL,
		`ar_content` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`ar_active` BOOL NOT NULL DEFAULT 1,
		`ar_prId` int NULL,
		`ar_acId` int NULL,
		`ar_descriptionSeo` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`ar_titleSeo` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`ar_avatar` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`ar_view` INT NULL,
		`ar_hot` BOOL NOT NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY ( `id_ar` ),
		CONSTRAINT `FK__Article__modified__0BBD6DF4` FOREIGN KEY ( `ar_acId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION,
		FOREIGN KEY ( `ar_prId` ) REFERENCES `WebTraSua`.`Product` ( `id_pr` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.Orders
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Orders` (
		`id_od` int AUTO_INCREMENT,
		`od_acId` int,
		`od_sessionId` VARCHAR ( 100 ) NOT NULL,
		`od_token` VARCHAR ( 100 ) NOT NULL,
		`od_status` VARCHAR ( 10 ) CHARACTER 
		SET 'utf8mb4' NOT NULL ,
		`od_address` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`od_subTotal` DOUBLE NOT NULL DEFAULT 0,
		`od_itemDiscount` DOUBLE NOT NULL DEFAULT 0,
		`od_tax` DOUBLE NOT NULL DEFAULT 0,
		`od_shipping` DOUBLE NOT NULL DEFAULT 0,
		`od_grandTotal` DOUBLE NOT NULL DEFAULT 0,
		`od_promo` VARCHAR ( 50 ) NULL DEFAULT NULL,
		`od_note` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY ( `id_od` ),
		CONSTRAINT `FK_orders_modified_1A0B8D4B` FOREIGN KEY ( `od_acId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.OrderItem
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`OrderItem` (
		`oi_prId` int ,
		`oi_orId` int ,
		`oi_quantify` SMALLINT NOT NULL DEFAULT 0,
		`oi_note` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		PRIMARY KEY ( `oi_prId`,`oi_orId` ),
		CONSTRAINT `FK__OrderItem__modif__20B88ADA` FOREIGN KEY ( `oi_prId` ) REFERENCES `WebTraSua`.`Product` ( `id_pr` ) ON DELETE NO ACTION ON UPDATE NO ACTION,
		CONSTRAINT `FK__OrderItem__oi_or__21ACAF13` FOREIGN KEY ( `oi_orId` ) REFERENCES `WebTraSua`.`Orders` ( `id_od` ) ON DELETE NO ACTION ON UPDATE NO ACTION
	);
--  -- 
--  Table WebTraSua.Shipper
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Shipper` (
		`id_sh` int AUTO_INCREMENT,
		`sh_name` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`sh_mobile` VARCHAR ( 10 ) NOT NULL,
		`sh_adress` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
	PRIMARY KEY ( `id_sh` )
	);
--  -- 
--  Table WebTraSua.Transactions
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Transactions` (
		`id_tr` int AUTO_INCREMENT,
		`tr_acId` int ,
		`tr_orId` int ,
		`tr_code` VARCHAR ( 100 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`tr_type` VARCHAR ( 6 ) CHARACTER 
		SET 'utf8mb4' NOT NULL DEFAULT 0,
		`tr_mode` VARCHAR ( 6 ) CHARACTER 
		SET 'utf8mb4' NOT NULL DEFAULT 0,
		`tr_status` VARCHAR ( 10 ) CHARACTER 
		SET 'utf8mb4' NOT NULL DEFAULT 0,
		`tr_note` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY ( `id_tr` ),
		CONSTRAINT `FK__Transacti__modif__2E1285F8` FOREIGN KEY ( `tr_acId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.Feedback
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Feedback` (
		`id_fe` int AUTO_INCREMENT,
		`fe_acId` int,
		`fe_prId` int,
		`fe_content` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`fe_rate` INT NOT NULL DEFAULT 1,
		`fe_status` VARCHAR ( 10 ) CHARACTER 
		SET 'utf8mb4' NOT NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		PRIMARY KEY ( `id_fe` ),
		CONSTRAINT `FK__Feedback__modifi__30EEF2A3` FOREIGN KEY ( `fe_acId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.Slide
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Slide` (
		`id_sl` int AUTO_INCREMENT,
		`sl_image` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`sl_note` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`sl_greeting_h2` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
			`sl_greeting1_span` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
			`sl_greeting2_p` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`sl_active` BOOL NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
	PRIMARY KEY ( `id_sl` )
	);

--  -- 
--  Table WebTraSua.Bill
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Bill` (
		`id_bi` int AUTO_INCREMENT,
		`bi_orId` int,
		`bi_detail` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`bi_active` BOOL NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		PRIMARY KEY ( `id_bi` ),
		CONSTRAINT `FK__Bill__bi_orId__430DA2DE` FOREIGN KEY ( `bi_orId` ) REFERENCES `WebTraSua`.`Orders` ( `id_od` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);

--  -- 
--  Table WebTraSua.Images
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Images` (
		`id_im` int AUTO_INCREMENT,
		`im_prId` int,
		`im_link` VARCHAR ( 255 ) NULL DEFAULT NULL,
		`im_active` BOOL NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
	PRIMARY KEY ( `id_im` ),
	FOREIGN KEY ( `im_prId` ) REFERENCES `WebTraSua`.`Product` ( `id_pr` ) ON DELETE NO ACTION ON UPDATE NO ACTION
	);
--  -- 
--  Table WebTraSua.Contact
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Contact` (
		`id_co` int AUTO_INCREMENT,
		`co_acId` int,
		`co_locate` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`co_email` VARCHAR ( 100 ) NULL,
		`co_mobile` VARCHAR ( 10 ) NULL,
		`co_message` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`co_active` BOOL NOT NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
	PRIMARY KEY ( `id_co` ),
	FOREIGN KEY ( `co_acId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.Category
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Category` (
		`id_cs` int AUTO_INCREMENT,
		`cs_name` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`cs_icon` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`cs_avatar` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`cs_active` BOOL NOT NULL DEFAULT 1,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY ( `id_cs` )
	);
	
--  -- 
--  Table WebTraSua.Product
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Product` (
		`id_pr` int AUTO_INCREMENT,
		`pr_name` VARCHAR ( 255 ) NOT NULL,
		`pr_csId` int,
		`pr_ingredients` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`pr_price` FLOAT ( 24, 0 ) NOT NULL DEFAULT 0.0,
		`pr_discount` FLOAT ( 24, 0 ) NOT NULL DEFAULT 0.0,
		`pr_quantity` INT NOT NULL DEFAULT 0,
		`pr_active` BOOL NOT NULL DEFAULT 1,
		`pr_hot` BOOL NOT NULL DEFAULT 0,
		`pr_view` INT NULL DEFAULT 0,
		`pr_description` VARCHAR ( 500 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`pr_image` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`pr_descriptionSeo` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`pr_keywordSeo` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`pr_titleSeo` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`pr_note` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
	PRIMARY KEY ( `id_pr` )
	);

--  -- 
--  Table WebTraSua.Product_category
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Product_category` (
		`pc_prId` int,
		`pc_csId` int,
		PRIMARY KEY ( `pc_prId`, `pc_csId` ),
		CONSTRAINT `FK__Product_c__pc_cs__72F1C02A` FOREIGN KEY ( `pc_prId` ) REFERENCES `WebTraSua`.`Product` ( `id_pr` ) ON DELETE NO ACTION ON UPDATE NO ACTION,
		CONSTRAINT `FK__Product_c__pc_cs__73E5E463` FOREIGN KEY ( `pc_csId` ) REFERENCES `WebTraSua`.`Category` ( `id_cs` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.Cart
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`Cart` (
		`id_ct` int AUTO_INCREMENT,
		`ct_acId` int,
		`ct_sessionId` VARCHAR ( 100 ) NOT NULL,
		`ct_token` VARCHAR ( 100 ) NOT NULL,
		`ct_status` VARCHAR ( 10 ) CHARACTER 
		SET 'utf8mb4' NOT NULL DEFAULT 0,
		`ct_note` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		`ct_active` BOOL NOT NULL DEFAULT 1,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY ( `id_ct` ),
		CONSTRAINT `FK__Cart__modifiedBy__7B87062B` FOREIGN KEY ( `ct_acId` ) REFERENCES `WebTraSua`.`Account` ( `id_ac` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
--  -- 
--  Table WebTraSua.CartItem
--  -- 
CREATE TABLE
IF
	NOT EXISTS `WebTraSua`.`CartItem` (
		`ci_prId` int,
		`ci_ctId` int,
		`ci_quantity` INT NOT NULL DEFAULT 0,
		`ci_active` BOOL NOT NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL,
		PRIMARY KEY ( `ci_prId`,`ci_ctId` ),
		CONSTRAINT `FK__CartItem__modifi__041C4C2C` FOREIGN KEY ( `ci_prId` ) REFERENCES `WebTraSua`.`Product` ( `id_pr` ) ON DELETE NO ACTION ON UPDATE NO ACTION,
		CONSTRAINT `FK__CartItem__ci_ctI__05107065` FOREIGN KEY ( `ci_ctId` ) REFERENCES `WebTraSua`.`Cart` ( `id_ct` ) ON DELETE NO ACTION ON UPDATE NO ACTION 
	);
	
-- Process
CREATE TABLE IF NOT EXISTS `WebTraSua`.`Process`(
		`ps_userGroup` VARCHAR(6),
		`ps_roleID` VARCHAR(50),
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL
);

-- Role user
CREATE TABLE `WebTraSua`.`RoleUser`(
		`ru_id` VARCHAR(20) PRIMARY KEY,
		`ru_name` VARCHAR(50)
);
DROP TABLE IF EXISTS `Topping`;
CREATE TABLE `Topping`(
		`id_tp` int AUTO_INCREMENT PRIMARY KEY NOT NULL,
		`tp_name` VARCHAR(255) NULL,
		`tp_quantity` INT NOT NULL DEFAULT 0,
		`tp_price` FLOAT NOT NULL DEFAULT 0,
		`createdDate` DATETIME ( 6 ) NOT NULL,
		`modifiedDate` DATETIME ( 6 ) NULL DEFAULT NULL,
		`createdBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NOT NULL,
		`modifiedBy` VARCHAR ( 255 ) CHARACTER 
		SET 'utf8mb4' NULL DEFAULT NULL
);

DROP TABLE IF EXISTS `ToppingOrder`;
CREATE TABLE `ToppingOrder`(
	`to_tpId` int NOT NULL,
	`to_orId` int NOT NULL,
	PRIMARY KEY ( `to_tpId`,`to_orId` ),
	FOREIGN KEY (`to_tpId`) REFERENCES `WebTraSua`.`Topping`(`id_tp`)ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY (`to_orId`) REFERENCES `WebTraSua`.`Order`(`id_or`) ON DELETE NO ACTION ON UPDATE NO ACTION 
);
DROP TABLE IF EXISTS `Account_product_like`;
CREATE TABLE `Account_product_like`(
	`ap_acId` int,
	`ap_prId` int,    
	CONSTRAINT `PK_Account_product_like` PRIMARY KEY (`ap_acId`,`ap_prId`),
	FOREIGN KEY (`ap_acId`) REFERENCES `WebTraSua`.`Account`(`id_ac`),
	FOREIGN KEY (`ap_prId`) REFERENCES `WebTraSua`.`Product`(`id_pr`)
);

DROP TABLE IF EXISTS `Navigation`;
CREATE TABLE `Navigation`(
	`logo` VARCHAR(100) NOT NULL,
	`home` VARCHAR(100) NOT NULL,
	`menu` VARCHAR(100) NOT NULL,
	`blog` VARCHAR(100) NOT NULL,
	`aboutUs` VARCHAR(100) NOT NULL,
	`contact` VARCHAR(100) NOT NULL,
	`cart` VARCHAR(100) NOT NULL,
	`login` VARCHAR(100) NOT NULL
)
