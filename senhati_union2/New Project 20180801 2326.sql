-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema senhati_union2
--

CREATE DATABASE IF NOT EXISTS senhati_union2;
USE senhati_union2;

--
-- Definition of table `allot_category`
--

DROP TABLE IF EXISTS `allot_category`;
CREATE TABLE `allot_category` (
  `allot_id` int(10) unsigned NOT NULL auto_increment,
  `allot_name` varchar(45) NOT NULL,
  `allot_category` varchar(45) NOT NULL,
  `allot_unit` varchar(45) NOT NULL,
  `allot_amount` double NOT NULL,
  `allot_qty` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`allot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allot_category`
--

/*!40000 ALTER TABLE `allot_category` DISABLE KEYS */;
INSERT INTO `allot_category` (`allot_id`,`allot_name`,`allot_category`,`allot_unit`,`allot_amount`,`allot_qty`) VALUES 
 (1,'Rice','VGA','kilogram',1000,0),
 (2,'Rice','VGA','Kilogram',1000,0),
 (3,'Rice','VGA','Kilogram',2000,0);
/*!40000 ALTER TABLE `allot_category` ENABLE KEYS */;


--
-- Definition of table `citizen_master`
--

DROP TABLE IF EXISTS `citizen_master`;
CREATE TABLE `citizen_master` (
  `citi_id` int(10) unsigned NOT NULL auto_increment,
  `citi_name` varchar(45) NOT NULL,
  `citi_father` varchar(45) NOT NULL,
  `citi_mother` varchar(45) NOT NULL,
  `citi_nid` int(10) unsigned NOT NULL,
  `citi_village` varchar(45) NOT NULL,
  `citi_postoff` varchar(45) NOT NULL,
  `citi_ward` int(10) unsigned NOT NULL,
  `citi_gender` varchar(45) NOT NULL,
  `citi_m_status` varchar(45) NOT NULL,
  `citi_fami_status` varchar(45) NOT NULL,
  `citi_fami_number` int(10) unsigned NOT NULL,
  `citi_occupation` varchar(45) NOT NULL,
  `citi_fami_income` double NOT NULL,
  `citi_birth_date` varchar(45) NOT NULL,
  `citi_age` varchar(45) NOT NULL,
  `citi_designation` varchar(45) NOT NULL,
  PRIMARY KEY  (`citi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citizen_master`
--

/*!40000 ALTER TABLE `citizen_master` DISABLE KEYS */;
INSERT INTO `citizen_master` (`citi_id`,`citi_name`,`citi_father`,`citi_mother`,`citi_nid`,`citi_village`,`citi_postoff`,`citi_ward`,`citi_gender`,`citi_m_status`,`citi_fami_status`,`citi_fami_number`,`citi_occupation`,`citi_fami_income`,`citi_birth_date`,`citi_age`,`citi_designation`) VALUES 
 (1,'Kabir','Hekmat','Sokhina',1975,'Chandanimahal','Chandanimahal',4,'Male','Unmarried','Subject',5,'Business',15000,'01/01/1975','43','None'),
 (2,'Kabir1','Hekmat','Sokhina',1975,'Chandanimahal','Chandanimahal',4,'Male','Unmarried','Subject',5,'Business',15000,'01/01/1975','43','None'),
 (3,'Kabir2','Hekmat','Sokhina',1975,'Chandanimahal','Chandanimahal',4,'Male','Unmarried','Subject',5,'Business',15000,'01/01/1975','43','None'),
 (4,'Kabir3','Hekmat','Sokhina',1975,'Chandanimahal','Chandanimahal',4,'Male','Unmarried','Subject',5,'Business',15000,'01/01/1975','43','None'),
 (5,'Kabir4','Hekmat','Sokhina',1975,'Chandanimahal','Chandanimahal',4,'Male','Unmarried','Subject',5,'Business',15000,'01/01/1975','43','None'),
 (6,'Raju','Harun al Rashid','k',11,'kk','kk',4,'kk','kk','kk',55,'dd',20000,'1/11/1995','26',''),
 (7,'Zakir','Hekmat','Sokhina',1988,'Chandanimahal','Chandanimahal',4,'Male','Unmarried','Subject',5,'Business',5000,'01/01/1988','30','None');
/*!40000 ALTER TABLE `citizen_master` ENABLE KEYS */;


--
-- Definition of table `govt_allotment`
--

DROP TABLE IF EXISTS `govt_allotment`;
CREATE TABLE `govt_allotment` (
  `govt_allot_id` int(10) unsigned NOT NULL auto_increment,
  `allot_id` int(10) unsigned NOT NULL,
  `allot_name` varchar(45) NOT NULL,
  `allot_category` varchar(45) NOT NULL,
  `allot_unit` varchar(45) NOT NULL,
  `allot_amount` double NOT NULL,
  `allot_qty` varchar(45) NOT NULL,
  `allot_voucher` varchar(45) NOT NULL,
  `allot_date` date NOT NULL,
  PRIMARY KEY  (`govt_allot_id`),
  KEY `FK_govt_allotment_allot_cat` (`allot_id`),
  CONSTRAINT `FK_govt_allotment_allot_cat` FOREIGN KEY (`allot_id`) REFERENCES `allot_category` (`allot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `govt_allotment`
--

/*!40000 ALTER TABLE `govt_allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `govt_allotment` ENABLE KEYS */;


--
-- Definition of table `union_cabinet`
--

DROP TABLE IF EXISTS `union_cabinet`;
CREATE TABLE `union_cabinet` (
  `cabi_id` int(10) unsigned NOT NULL auto_increment,
  `citi_id` int(10) unsigned NOT NULL,
  `citi_name` varchar(45) NOT NULL,
  `citi_father` varchar(45) NOT NULL,
  `citi_mother` varchar(45) NOT NULL,
  `citi_nid` varchar(45) NOT NULL,
  `citi_gender` varchar(45) NOT NULL,
  `citi_birth_date` date NOT NULL,
  `citi_m_status` varchar(45) NOT NULL,
  `citi_age` varchar(45) NOT NULL,
  `citi_designation` varchar(45) NOT NULL,
  PRIMARY KEY  (`cabi_id`),
  KEY `FK_union_cabinet_citizen_mas` (`citi_id`),
  CONSTRAINT `FK_union_cabinet_citizen_mas` FOREIGN KEY (`citi_id`) REFERENCES `citizen_master` (`citi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `union_cabinet`
--

/*!40000 ALTER TABLE `union_cabinet` DISABLE KEYS */;
/*!40000 ALTER TABLE `union_cabinet` ENABLE KEYS */;


--
-- Definition of table `union_salary`
--

DROP TABLE IF EXISTS `union_salary`;
CREATE TABLE `union_salary` (
  `sal_id` int(10) unsigned NOT NULL auto_increment,
  `citi_id` int(10) unsigned NOT NULL,
  `citi_name` varchar(45) NOT NULL,
  `citi_nid` int(10) unsigned NOT NULL,
  `citi_designation` varchar(45) NOT NULL,
  `sal_amount` double NOT NULL,
  PRIMARY KEY  (`sal_id`),
  KEY `FK_union_salary_citi_id` (`citi_id`),
  CONSTRAINT `FK_union_salary_citi_id` FOREIGN KEY (`citi_id`) REFERENCES `citizen_master` (`citi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `union_salary`
--

/*!40000 ALTER TABLE `union_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `union_salary` ENABLE KEYS */;


--
-- Definition of table `union_stuff`
--

DROP TABLE IF EXISTS `union_stuff`;
CREATE TABLE `union_stuff` (
  `stuff_id` int(10) unsigned NOT NULL auto_increment,
  `citi_id` int(10) unsigned NOT NULL,
  `citi_name` varchar(45) NOT NULL,
  `citi_father` varchar(45) NOT NULL,
  `citi_mother` varchar(45) NOT NULL,
  `citi_nid` varchar(45) NOT NULL,
  `citi_gender` varchar(45) NOT NULL,
  `citi_birth_date` date NOT NULL,
  `citi_m_status` varchar(45) NOT NULL,
  `citi_age` varchar(45) NOT NULL,
  `citi_designation` varchar(45) NOT NULL,
  PRIMARY KEY  (`stuff_id`),
  KEY `FK_union_stuff_citizen_mas` (`citi_id`),
  CONSTRAINT `FK_union_stuff_citizen_mas` FOREIGN KEY (`citi_id`) REFERENCES `citizen_master` (`citi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `union_stuff`
--

/*!40000 ALTER TABLE `union_stuff` DISABLE KEYS */;
/*!40000 ALTER TABLE `union_stuff` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
