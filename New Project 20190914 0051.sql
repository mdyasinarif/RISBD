-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.44-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema resi
--

CREATE DATABASE IF NOT EXISTS resi;
USE resi;

--
-- Definition of table `building`
--

DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thana_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo7ef7b0cu39uyj7e8gtxjmbvb` (`thana_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` (`id`,`address`,`name`,`thana_id`) VALUES 
 (1,'58 K B Road','kamrul vila',24),
 (2,'90/A S K Dash Road ','Somir Nibas',24),
 (3,'58 k B Road','Munsi Vila',41),
 (4,'54 SotosSorkar Road','Uddin Vila',41),
 (5,'16 No K R Road','Sakib vila',41),
 (6,'56 no R B Road','Sisie vila',27),
 (7,'69 R B Road','Shaltack',24);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;


--
-- Definition of table `building_owner`
--

DROP TABLE IF EXISTS `building_owner`;
CREATE TABLE `building_owner` (
  `building_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`building_id`,`owner_id`),
  KEY `FKj3c3a6q5fwe6pwd81folahod6` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building_owner`
--

/*!40000 ALTER TABLE `building_owner` DISABLE KEYS */;
INSERT INTO `building_owner` (`building_id`,`owner_id`) VALUES 
 (1,1),
 (2,2),
 (3,4),
 (4,5),
 (5,3),
 (6,3),
 (7,1);
/*!40000 ALTER TABLE `building_owner` ENABLE KEYS */;


--
-- Definition of table `city_corporation`
--

DROP TABLE IF EXISTS `city_corporation`;
CREATE TABLE `city_corporation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrrhdydqlsxmre3e9a19fwvwk0` (`district_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_corporation`
--

/*!40000 ALTER TABLE `city_corporation` DISABLE KEYS */;
INSERT INTO `city_corporation` (`id`,`name`,`notes`,`district_id`) VALUES 
 (1,'Dhaka North City Corporation',NULL,1),
 (2,'Dhaka South City Corporation',NULL,1),
 (3,'Narayanganj City Corporation',NULL,11),
 (4,'Gazipur City Corporation',NULL,3),
 (5,'Chattogram City Corporation',NULL,43),
 (6,'Cumilla City Corporation',NULL,44),
 (7,'Cox\'s bazar City Corporation',NULL,45),
 (8,'Bogura City Corporation',NULL,18),
 (9,'Faridpur City Corporation',NULL,2),
 (10,'Tangail City Corporation',NULL,17),
 (11,'Barishal City Corporation',NULL,35),
 (12,'Khulna City Corporation',NULL,59),
 (13,'Jashore City Corporation',NULL,57),
 (14,'Rangpur City Corporation',NULL,32),
 (15,'Dinajpur City Corporation',NULL,26),
 (16,'Sylhet City Corporation',NULL,54),
 (17,'Mymensingh City Corporation',NULL,10),
 (18,'Rajshahi City Corporation',NULL,24);
/*!40000 ALTER TABLE `city_corporation` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bn_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`,`bn_name`,`name`) VALUES 
 (1,NULL,'Bangladesh');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bn_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `division_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK78g8m793eebrogjuuey668ihu` (`division_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` (`id`,`bn_name`,`name`,`division_id`) VALUES 
 (1,'????','Dhaka',3),
 (2,'???????','Faridpur',3),
 (3,'???????','Gazipur',3),
 (4,'?????????','Gopalganj',3),
 (5,'????????','Jamalpur',8),
 (6,'?????????','Kishoreganj',3),
 (7,'?????????','Madaripur',3),
 (8,'?????????','Manikganj',3),
 (9,'??????????','Munshiganj',3),
 (10,'????????','Mymensingh',8),
 (11,'???????????','Narayanganj',3),
 (12,'???????','Narsingdi',3),
 (13,'?????????','Netrokona',8),
 (14,'???????','Rajbari',3),
 (15,'????????','Shariatpur',3),
 (16,'??????','Sherpur',8),
 (17,'????????','Tangail',3),
 (18,'?????','Bogura',5),
 (19,'????????','Joypurhat',5),
 (20,'?????','Naogaon',5),
 (21,'?????','Natore',5),
 (22,'??????????????','Chapainawabganj',5),
 (23,'?????','Pabna',5),
 (24,'???????','Rajshahi',5),
 (25,'?????????','Sirajgonj',5),
 (26,'????????','Dinajpur',6),
 (27,'?????????','Gaibandha',6),
 (28,'?????????','Kurigram',6),
 (29,'??????????','Lalmonirhat',6),
 (30,'?????????','Nilphamari',6),
 (31,'??????','Panchagarh',6),
 (32,'?????','Rangpur',6),
 (33,'?????????','Thakurgaon',6),
 (34,'??????','Barguna',1),
 (35,'??????','Barishal',1),
 (36,'????','Bhola',1),
 (37,'???????','Jhalokati',1),
 (38,'?????????','Patuakhali',1),
 (39,'????????','Pirojpur',1),
 (40,'?????????','Bandarban',2),
 (41,'??????????????','Brahmanbaria',2),
 (42,'???????','Chandpur',2),
 (43,'?????????','Chattogram',2),
 (44,'????????','Cumilla',2),
 (45,'???? ?????','Cox\'s Bazar',2),
 (46,'????','Feni',2),
 (47,'????????','Khagrachhari',2),
 (48,'??????????','Lakshmipur',2),
 (49,'????????','Noakhali',2),
 (50,'??????????','Rangamati',2),
 (51,'???????','Habiganj',7),
 (52,'??????????','Moulvibazar',7),
 (53,'?????????','Sunamganj',7),
 (54,'?????','Sylhet',7),
 (55,'????????','Bagerhat',4),
 (56,'??????????','Chuadanga',4),
 (57,'????','Jashore',4),
 (58,'???????','Jhenaidah',4),
 (59,'?????','Khulna',4),
 (60,'????????','Kushtia',4),
 (61,'??????','Magura',4),
 (62,'????????','Meherpur',4),
 (63,'?????','Narail',4),
 (64,'?????????','Satkhira',4);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;


--
-- Definition of table `division`
--

DROP TABLE IF EXISTS `division`;
CREATE TABLE `division` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bn_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrjici6pk7j0mjom8a1xga0jsg` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` (`id`,`bn_name`,`name`,`country_id`) VALUES 
 (1,'??????','Barishal',1),
 (2,'?????????','Chattogram',1),
 (3,'????','Dhaka',1),
 (4,'?????','Khulna',1),
 (5,'???????','Rajshahi',1),
 (6,'?????','Rangpur',1),
 (7,'?????','Sylhet',1),
 (8,'????????','Mymensingh',1);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contract_no` varchar(255) DEFAULT NULL,
  `denigration` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nid_no` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK15af427j279hfm3chpb8cqi8e` (`owner_id`),
  KEY `FKhvmrplj0c8g0dyhfbhai1gp14` (`tenant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`id`,`contract_no`,`denigration`,`education`,`gender`,`name`,`nid_no`,`salary`,`owner_id`,`tenant_id`) VALUES 
 (1,'01678945646','Driver','HSC','Male','Md Kabir','8956237',15000,1,NULL),
 (2,'01678945646','Cleaner','PSC','Female','Salaha Begum','74512',5000,1,NULL),
 (3,'01678945632','Cleaner','PSC','Female','Rahima','568923',1200,NULL,1),
 (4,'016789456123','Cleaner & Coock','PSC','Female','Rahima Begum','895623',1500,NULL,3),
 (5,'01678945612','Cleaner & Coock','Post Graduate','Female','Karinon Biby','89562356',1500,NULL,4),
 (6,'016764525896','cleaner','UnEducated','Female','Raba Banu','568923',1500,2,NULL),
 (7,'016756489641','cleaner','HSC','Female','juma Begum','562389',2000,4,NULL),
 (8,'016789546125','driver','HSC','Male','karim uddin','4587963',10000,4,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `family_mamber`
--

DROP TABLE IF EXISTS `family_mamber`;
CREATE TABLE `family_mamber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `contract_no` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nid_no` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp93mfiefm3epfk83x1gla9awm` (`owner_id`),
  KEY `FKqfcl0gwgq31qunbcb1wolpcix` (`tenant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_mamber`
--

/*!40000 ALTER TABLE `family_mamber` DISABLE KEYS */;
INSERT INTO `family_mamber` (`id`,`age`,`contract_no`,`education`,`gender`,`name`,`nid_no`,`owner_id`,`tenant_id`) VALUES 
 (1,25,'01678945644','Graduate','Female','Salima Rahaman','895623',1,NULL),
 (2,18,'01678945645','Graduate','Male','Joy Rohaman','895623',1,NULL),
 (3,40,'016789456123','SSC','Female','Parvin Begum','89562389',NULL,1),
 (4,28,'0167894561236','Post Graduate','Female','Nusrat','8952389',NULL,1),
 (5,45,'016789456125','PSC','Female','Karimun Nasa','89562389',NULL,2),
 (6,30,'0167845613','HSC','Male','Gulger Hosasn','895623',NULL,2),
 (7,65,'0167657896','UnEducated','Female','Akter Banu','895623',2,NULL),
 (8,50,'01675586321','SSC','Female','Yasmin Begum','89523',2,NULL),
 (9,65,'01678965412','PSC','Female','Kamural Nesa','895623',4,NULL),
 (10,20,'016789456125','HSC','Female','Santa munsi','89523',4,NULL),
 (11,45,'0167896446','SSC','Female','Asifa jalal','89565689',5,NULL),
 (12,28,'016789564','Post Graduate','Female','Sisir','568956',3,NULL),
 (13,27,'0167894566','Post Graduate','Female','Eva Rahaman','56856',NULL,7),
 (14,27,'016785469','SSC','Female','Israt','568956',NULL,8);
/*!40000 ALTER TABLE `family_mamber` ENABLE KEYS */;


--
-- Definition of table `flat`
--

DROP TABLE IF EXISTS `flat`;
CREATE TABLE `flat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `rent_amount` double DEFAULT NULL,
  `rent_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `building_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcuvibqssnlnlcvkphbl35qud1` (`building_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flat`
--

/*!40000 ALTER TABLE `flat` DISABLE KEYS */;
INSERT INTO `flat` (`id`,`name`,`note`,`photo`,`rent_amount`,`rent_date`,`status`,`building_id`) VALUES 
 (1,'101',NULL,'/images/new-flat2.jpg',15000,'2019-10-01',0x00,1),
 (2,'102',NULL,'/images/new-flat3.jpg',15000,'2019-10-01',0x00,1),
 (3,'201',NULL,'/images/new-flat4a.jpg',15000,'2019-10-01',0x00,1),
 (4,'202',NULL,'/images/new-flat4b.jpg',15000,'2019-10-01',0x00,1),
 (5,'S101',NULL,'/images/new-flats1.jpg',5000,'2019-10-01',0x00,2),
 (6,'s102',NULL,'/images/new-flats2.jpg',5000,'2019-10-01',0x01,2),
 (7,'s201',NULL,'/images/new-flats3.jpg',5000,'2019-10-01',0x01,2),
 (8,'s202',NULL,'/images/new-flats4.jpg',5000,'2019-10-01',0x01,2),
 (9,'s301',NULL,'/images/new-flats5.jpg',5000,'2019-10-01',0x01,2),
 (10,'M101',NULL,'/images/new-sfm1.png',6000,'2019-09-01',0x00,3),
 (11,'M201',NULL,'/images/new-sfm2.png',5000,'2019-10-01',0x00,3),
 (12,'M303',NULL,'/images/new-sfm3.png',6000,'2019-09-01',0x01,3),
 (13,'M404',NULL,'/images/new-sfm4.png',4000,'2019-09-01',0x01,3),
 (14,'J101',NULL,'/images/new-jf1.png',20000,'2019-09-01',0x01,4),
 (15,'J102',NULL,'/images/new-jf2.png',25000,'2019-09-01',0x01,4),
 (16,'Sf101',NULL,'/images/new-sfs2.png',60000,'2019-09-01',0x00,6),
 (17,'w101',NULL,'/images/new-sfs1.png',50000,'2019-09-01',0x01,5),
 (18,'w201',NULL,'/images/new-sfs3.png',70000,'2019-09-01',0x01,5),
 (19,'w301',NULL,'/images/new-sfs4.png',50000,'2019-09-01',0x01,5),
 (20,'sf202',NULL,'/images/new-sfs5.png',25000,'2019-09-01',0x01,6),
 (21,'G101',NULL,'/images/new-o1f1.png',25000,'2019-09-01',0x01,7),
 (23,'G201',NULL,'/images/new-o1f3.png',25000,'2019-09-01',0x01,7);
/*!40000 ALTER TABLE `flat` ENABLE KEYS */;


--
-- Definition of table `flat_owner`
--

DROP TABLE IF EXISTS `flat_owner`;
CREATE TABLE `flat_owner` (
  `flat_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`flat_id`,`owner_id`),
  KEY `FK3eo5ghmksha2mwnb4i5cjlgfq` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flat_owner`
--

/*!40000 ALTER TABLE `flat_owner` DISABLE KEYS */;
INSERT INTO `flat_owner` (`flat_id`,`owner_id`) VALUES 
 (1,1),
 (2,1),
 (3,1),
 (4,1),
 (5,2),
 (6,2),
 (7,2),
 (8,2),
 (9,2),
 (10,4),
 (11,4),
 (12,4),
 (13,4),
 (14,5),
 (15,5),
 (16,3),
 (17,3),
 (18,3),
 (19,3),
 (20,3),
 (21,1),
 (23,1);
/*!40000 ALTER TABLE `flat_owner` ENABLE KEYS */;


--
-- Definition of table `house_owner`
--

DROP TABLE IF EXISTS `house_owner`;
CREATE TABLE `house_owner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contract_no` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `income` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nid_no` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `tin_no` varchar(255) DEFAULT NULL,
  `thana_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd2m8fahm7hrykrfjb628x7973` (`thana_id`),
  KEY `FKhpbnjn4ipu3a94qaxrdlogbnn` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house_owner`
--

/*!40000 ALTER TABLE `house_owner` DISABLE KEYS */;
INSERT INTO `house_owner` (`id`,`contract_no`,`date_of_birth`,`education`,`gender`,`income`,`name`,`nid_no`,`photo`,`tin_no`,`thana_id`,`user_id`) VALUES 
 (1,'0167894564','1986-09-14','Post Graduate','Male',70000,'S M Kamrul','7845129','/images/new-owner1.jfif','562389',24,4),
 (2,'0167894565','1955-09-14','HSC','Male',70000,'Samir Uddin','562389','/images/new-owner2.jfif','562389',24,5),
 (3,'0167894566','1988-09-14','Graduate','Male',100000,'Sakib AL Hasan','89226','/images/new-owner3.jfif','45896',41,6),
 (4,'0167894567','1965-09-15','Post Graduate','Male',75000,'Dawan Munsi','8562356','/images/new-so1.png','8956256',41,16),
 (5,'0167894568','1988-09-15','Graduate','Male',50000,'Jalal Uddin','4578151','/images/new-so3.png','45781',41,17);
/*!40000 ALTER TABLE `house_owner` ENABLE KEYS */;


--
-- Definition of table `house_rent`
--

DROP TABLE IF EXISTS `house_rent`;
CREATE TABLE `house_rent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advance_amount` double DEFAULT NULL,
  `currentdate` date DEFAULT NULL,
  `rent_amount` double DEFAULT NULL,
  `rent_type` varchar(255) NOT NULL,
  `rentcondition` varchar(255) DEFAULT NULL,
  `rentdate` date DEFAULT NULL,
  `building_id` bigint(20) DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `house_owner_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  `thana_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpvaemi1ubc1bo3lgobo6qjuvj` (`building_id`),
  KEY `FKm90k3awepp2lsjiojdy8pwww3` (`flat_id`),
  KEY `FKr9x4j07pr54filbiqtvvt41v3` (`house_owner_id`),
  KEY `FKi5y6byoll6ufhw7pntfllfsrp` (`tenant_id`),
  KEY `FKb9mnhpng077uimij2u3m24t32` (`thana_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house_rent`
--

/*!40000 ALTER TABLE `house_rent` DISABLE KEYS */;
INSERT INTO `house_rent` (`id`,`advance_amount`,`currentdate`,`rent_amount`,`rent_type`,`rentcondition`,`rentdate`,`building_id`,`flat_id`,`house_owner_id`,`tenant_id`,`thana_id`) VALUES 
 (2,50000,'2019-09-14',15000,'Family',NULL,'2019-10-01',1,4,1,2,24),
 (3,20000,'2019-09-14',5000,'Match',NULL,'2019-10-01',1,1,1,3,24),
 (4,20000,'2019-09-14',5000,'Match',NULL,'2019-10-01',1,2,1,4,24),
 (5,20000,'2019-09-14',5000,'Family',NULL,'2019-09-01',2,5,2,5,24),
 (6,10000,'2019-09-15',5000,'Match',NULL,'2019-07-01',3,10,4,5,41),
 (7,10000,'2019-09-15',6000,'Match',NULL,'2019-06-01',3,11,4,6,41),
 (8,2500000,'2019-09-15',60000,'Family',NULL,'2019-09-01',5,16,3,7,41);
/*!40000 ALTER TABLE `house_rent` ENABLE KEYS */;


--
-- Definition of table `police`
--

DROP TABLE IF EXISTS `police`;
CREATE TABLE `police` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `batch_id` varchar(255) DEFAULT NULL,
  `contract_no` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `thana_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa3j1fkcke7ltpdmyvvggoxc6h` (`thana_id`),
  KEY `FKlusag0hf1u7u267xo76u3b9ii` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

/*!40000 ALTER TABLE `police` DISABLE KEYS */;
INSERT INTO `police` (`id`,`batch_id`,`contract_no`,`date_of_birth`,`gender`,`name`,`nid`,`photo`,`post`,`thana_id`,`user_id`) VALUES 
 (1,'456','0167894561','1985-09-14','Male','S M Kamrul Zaman','7845126','/images/new-police1.jfif','ASP',24,1),
 (2,'7845','0167894562','1978-09-14','Male','K M JasimUddin','124578','/images/new-police4.jfif','Inspector',24,2),
 (3,'895623','0167894563','1980-09-14','Female','Salima Rahaman','5238956','/images/new-police3.jfif','SI',24,3),
 (4,'895623',' 01678945611','1975-09-15','Male','Sajahan Kabir','89523','/images/new-sp1.png','ASP',41,13),
 (5,'451278',' 01678945612','1965-09-15','Male','Banogir Kabir','56238','/images/new-sp2.png','Inspector',41,14),
 (6,'214578',' 01678945613','1955-09-15','Male','R K Rabbani','8956237','/images/new-sp3.png','SI',41,15);
/*!40000 ALTER TABLE `police` ENABLE KEYS */;


--
-- Definition of table `rent_collection`
--

DROP TABLE IF EXISTS `rent_collection`;
CREATE TABLE `rent_collection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rantmonth` varchar(255) DEFAULT NULL,
  `rent_amount` double DEFAULT NULL,
  `rentdate` date DEFAULT NULL,
  `building_id` bigint(20) DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `house_owner_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKv3p7bpfy4ix1sl4asexrf4k5` (`building_id`),
  KEY `FKc0hjqytat18rr0uadgmcr0cpq` (`flat_id`),
  KEY `FKqm5mihfn9ql6ty92fhpym6f6v` (`house_owner_id`),
  KEY `FKsbrcxkemln56p43r0cagrushg` (`tenant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_collection`
--

/*!40000 ALTER TABLE `rent_collection` DISABLE KEYS */;
INSERT INTO `rent_collection` (`id`,`rantmonth`,`rent_amount`,`rentdate`,`building_id`,`flat_id`,`house_owner_id`,`tenant_id`) VALUES 
 (1,'August',15000,'2019-10-01',1,3,1,1),
 (2,'November',15000,'2019-10-01',1,4,1,2),
 (3,'October',5000,'2019-10-01',1,1,1,3),
 (4,'October',5000,'2019-10-01',1,2,1,4),
 (5,'September',60000,'2019-09-01',5,16,3,7),
 (6,'September',60000,'2019-09-01',5,16,3,7);
/*!40000 ALTER TABLE `rent_collection` ENABLE KEYS */;


--
-- Definition of table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iubw515ff0ugtm28p8g3myt0h` (`role_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`,`role_name`) VALUES 
 (1,'POLICE'),
 (2,'HOUSEOWNER'),
 (3,'TENANT');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


--
-- Definition of table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contract_no` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `income` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nid_no` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `tin_no` varchar(255) DEFAULT NULL,
  `thana_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpfkiq1sn2e0rrx7ruwpcwy0uf` (`thana_id`),
  KEY `FKmoj8m61gtmcdo59nh0574w7q1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` (`id`,`contract_no`,`date_of_birth`,`education`,`gender`,`income`,`name`,`nid_no`,`photo`,`tin_no`,`thana_id`,`user_id`) VALUES 
 (1,'01678945612','1970-09-14','HSC','Male',20000,'Masbha uddin','7845129','/images/new-tenant3.jfif','895623',35,7),
 (2,'01678945613','1955-09-14','SSC','Male',25000,'Rabbani','89562389','/images/new-tenant4.jfif','89562389',24,8),
 (3,'01612345682','1980-09-14','Graduate','Male',20000,'yasin Islam','89562389','/images/new-tenant1.jfif','56238926',1,9),
 (4,'01612345684','1986-09-14','Post Graduate','Male',25000,'Sany Islam','89562389','/images/new-tenant2.jfif','8562389',8,10),
 (5,'01612345685','1992-09-14','Post Graduate','Male',30000,'Sovon Uddin','856256','/images/new-st1.png','895623',19,11),
 (6,'01612345686','1995-09-14','Graduate','Male',25000,'Md Arif Mollha','895623','/images/new-st2.png','568923',12,12),
 (7,'016789456114','1992-09-15','Post Graduate','Male',150000,'Md Yasin','5785456','/images/new-myphoto.jpg','56895656',5,18),
 (8,'016789456156','1992-09-15','Post Graduate','Male',150000,'Md Arif Sohan','8955656','/images/new-sf24.jfif','58956',7,19),
 (9,'016789456155','2019-09-15','','',0,'','','','',NULL,20),
 (10,'01678549566','2019-09-15','','',0,'','','','',NULL,21);
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;


--
-- Definition of table `thana`
--

DROP TABLE IF EXISTS `thana`;
CREATE TABLE `thana` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `citycorporation_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjkcq11nmvwhctlg0m10bu73p1` (`citycorporation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thana`
--

/*!40000 ALTER TABLE `thana` DISABLE KEYS */;
INSERT INTO `thana` (`id`,`name`,`note`,`citycorporation_id`) VALUES 
 (1,'Adabor',NULL,1),
 (2,'Uttar Khan',NULL,1),
 (3,'Uttara',NULL,1),
 (4,'Kafrul',NULL,1),
 (5,'Cantonment',NULL,1),
 (6,'Khilkhet',NULL,1),
 (7,'Gulshan',NULL,1),
 (8,'Turag',NULL,1),
 (9,'Tejgaon',NULL,1),
 (10,'Dakshinkhan',NULL,1),
 (11,'Darus Salam',NULL,1),
 (12,'Pallabi',NULL,1),
 (13,'Badda',NULL,1),
 (14,'Rampura',NULL,1),
 (15,'Shah Ali',NULL,1),
 (16,'Sher-e-Bangla Nagar',NULL,1),
 (17,'Darus Salam',NULL,1),
 (18,'Darus Salam',NULL,1),
 (19,'Kadamtali',NULL,2),
 (20,'Kalabagan',NULL,2),
 (21,'Kamrangirc',NULL,2),
 (22,'Kotwali',NULL,2),
 (23,'Khilgaon',NULL,2),
 (24,'Gendaria',NULL,2),
 (25,'Chawkbazar',NULL,2),
 (26,'Demra',NULL,2),
 (27,'Dhanmondi',NULL,2),
 (28,'New Market',NULL,2),
 (29,'Paltan',NULL,2),
 (30,'Bangshal',NULL,2),
 (31,'Bimanbanda',NULL,1),
 (32,'Motijheel',NULL,2),
 (33,'Mirpur Mod',NULL,1),
 (34,'Mohammadpu',NULL,1),
 (35,'Jatrabari',NULL,2),
 (36,'Ramna',NULL,2),
 (37,'Lalbagh',NULL,2),
 (38,'Shahbagh',NULL,2),
 (39,'Shyampur',NULL,2),
 (40,'Sabujbagh',NULL,2),
 (41,'Sutrapur',NULL,2),
 (42,'Hazaribagh',NULL,2);
/*!40000 ALTER TABLE `thana` ENABLE KEYS */;


--
-- Definition of table `u_nion`
--

DROP TABLE IF EXISTS `u_nion`;
CREATE TABLE `u_nion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `thana_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK97rchktyhfdxnsu5qudfu6w73` (`thana_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_nion`
--

/*!40000 ALTER TABLE `u_nion` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_nion` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_589idila9li6a4arw1t8ht1gx` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`password`,`phone`,`user_name`) VALUES 
 (1,'$2a$10$d3DX7SByL09uCsZS2YMbWeh306A8uhtNfrd6yYSMthQb/xsope3vK','0167894561','police1'),
 (2,'$2a$10$IfLYRF2DN3NxyCXuEfMI7.B5sNvbzdCzO.yLOxE7kXxAwEafnk9im','0167894562','police2'),
 (3,'$2a$10$7dhNBKb56oDVUobknz2VVOjx8w.XCOZUNXpup.rJjmXDM0AC0Gy4.','0167894563','police3'),
 (4,'$2a$10$pUWeO4ZrsKL3N.qQvNbJ7.5TDDOhyRL0OFVUQxMVsWpnprbTr.xl2','0167894564','owner1'),
 (5,'$2a$10$8vnNtxCun9FB4nxIplZ33e3/f9tz/H4DxWD8kP1unHwPluJ3OT0DO','0167894565','owner2'),
 (6,'$2a$10$XN2/YTPvIMFsS6ALwYKuse0NUSFekn.RZRe6zdSTPn/cBatxNlEYa','0167894566','owner3'),
 (7,'$2a$10$EwAIfBIjxDG8ZGgyc.qT5eGQY3v6IgR39FyRWQC3uTj25/m7Ladg2','01678945612','tenant1'),
 (8,'$2a$10$k7V5S3P501LSX5lcP0QD4u/K.RxLCY3toN2KUliK1Oqr1tBYhd2da','01678945613','tenant2'),
 (9,'$2a$10$THiNT3/xdB1vtqc2V/LqzO4Fcw0jFjne7Ws/QdFDsgG/J4fRb1rxC','01612345682','tenant3'),
 (10,'$2a$10$/cIbj0uJrMFzwj4LooR35.uJvnFgPFxPh7duVSCCVwPiDdKkAeXn2','01612345684','tenant4'),
 (11,'$2a$10$kkR09nu1jUWZ4ImGdNqnRO.9cWGJdWkXR9MHUSF3dNIjemeKs4Vu.','01612345685','tenant5'),
 (12,'$2a$10$edXIyMqsWyjMNPB3nJWK.eRY8KUH2wpzX/R.kIiRubUjoWuqtbFyy','01612345686','tenant6'),
 (13,'$2a$10$e.2VZQVYqWKYSGpTI2.zyO35mzC/OThmSLPq9D/Mg5HPpkyzn7OUm',' 01678945611','police4'),
 (14,'$2a$10$6QDlMU/Fof0eLm8JoGISYeyN0Hc/PhjPaSN5MDvXbYhXHxTsG3oaG',' 01678945612','police5'),
 (15,'$2a$10$QXKXJjIGRpuYrN9lSaM31.q..01j3yrBNNdiQJlhnMo.YWLSK1MKC',' 01678945613','police6'),
 (16,'$2a$10$abWlXO9.iTLEJvK/8/Ti2.wpB65/3.BuGB2dFzvdtY.mRXMnYTd2e','0167894567','owner4'),
 (17,'$2a$10$p4jvW./XRybIQ7GN4FXhd.nXLWyD3XI5BsLY8yMejLi/KuBsRMoQS','0167894568','owner5'),
 (18,'$2a$10$SP5AR63LtMcb7jjxca7TCegW1FrWEQFl6JbBNYNgDlM/vVOBeZL1S','016789456114','tenants'),
 (19,'$2a$10$zyvuzRuZ7RyIXsMoFuE8Z.BKDwD/SQ/Kk9WK.CZGTCHKqX8tAUaf.','016789456156','tenants1'),
 (20,'$2a$10$7yIXUmd8F4zJX9SHmvwDe.HBwWkF8eJelY9C9bmarWh/bOyocH2DK','016789456155','tenants2'),
 (21,'$2a$10$1xfHSOZVvnI/ciMtIUXSieV9vlh4Yw3YvHuNJFI4AcVX.OD7Dswb2','01678549566','tenants3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`user_id`,`role_id`) VALUES 
 (1,1),
 (2,1),
 (3,1),
 (4,2),
 (5,2),
 (6,2),
 (7,3),
 (8,3),
 (9,3),
 (10,3),
 (11,3),
 (12,3),
 (13,1),
 (14,1),
 (15,1),
 (16,2),
 (17,2),
 (18,3),
 (19,3),
 (20,3),
 (21,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
