-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: 115.159.157.48    Database: health
-- ------------------------------------------------------
-- Server version	5.6.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_accident`
--

DROP TABLE IF EXISTS `t_accident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accident` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_userId` int(11) DEFAULT NULL,
  `t_accidentName` varchar(30) DEFAULT NULL,
  `t_accidentTime` datetime DEFAULT NULL,
  `t_description` varchar(50) DEFAULT NULL,
  `t_remark` varchar(40) DEFAULT NULL,
  `t_isRead` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_accident`
--

LOCK TABLES `t_accident` WRITE;
/*!40000 ALTER TABLE `t_accident` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_accident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_condition1`
--

DROP TABLE IF EXISTS `t_condition1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_condition1` (
  `t_id` int(11) NOT NULL,
  `t_sphygmus` int(11) DEFAULT NULL,
  `t_sbp` int(255) DEFAULT NULL,
  `t_dbp` int(255) DEFAULT NULL,
  `t_temp` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_condition1`
--

LOCK TABLES `t_condition1` WRITE;
/*!40000 ALTER TABLE `t_condition1` DISABLE KEYS */;
INSERT INTO `t_condition1` VALUES (1,55,130,84,36),(2,58,126,81,36.1),(3,55,129,83,36),(4,57,128,84,36.1),(5,56,127,83,36),(6,58,128,85,36);
/*!40000 ALTER TABLE `t_condition1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_condition2`
--

DROP TABLE IF EXISTS `t_condition2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_condition2` (
  `t_id` int(11) NOT NULL,
  `t_sphygmus` int(11) DEFAULT NULL,
  `t_sbp` int(255) DEFAULT NULL,
  `t_dbp` int(255) DEFAULT NULL,
  `t_temp` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_condition2`
--

LOCK TABLES `t_condition2` WRITE;
/*!40000 ALTER TABLE `t_condition2` DISABLE KEYS */;
INSERT INTO `t_condition2` VALUES (1,65,130,84,36),(2,58,126,81,36.1),(3,63,129,83,36),(4,57,128,84,36.1),(5,60,127,83,36),(6,62,128,85,36);
/*!40000 ALTER TABLE `t_condition2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor`
--

DROP TABLE IF EXISTS `t_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_username` varchar(20) DEFAULT NULL,
  `t_password` varchar(20) DEFAULT NULL,
  `t_realname` varchar(10) DEFAULT NULL,
  `t_sex` char(1) DEFAULT NULL,
  `t_phonenum` varchar(14) DEFAULT NULL,
  `t_email` varchar(30) DEFAULT NULL,
  `t_birthday` date DEFAULT NULL,
  `t_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor`
--

LOCK TABLES `t_doctor` WRITE;
/*!40000 ALTER TABLE `t_doctor` DISABLE KEYS */;
INSERT INTO `t_doctor` VALUES (1,'admin','admin','管理员','0','13813003868','13813003868@163.com','1993-10-23','江苏南京');
/*!40000 ALTER TABLE `t_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_emergencycontact`
--

DROP TABLE IF EXISTS `t_emergencycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_emergencycontact` (
  `t_id` int(11) NOT NULL,
  `t_userid` int(11) DEFAULT NULL,
  `t_name` varchar(10) DEFAULT NULL,
  `t_phonenum` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_emergencycontact`
--

LOCK TABLES `t_emergencycontact` WRITE;
/*!40000 ALTER TABLE `t_emergencycontact` DISABLE KEYS */;
INSERT INTO `t_emergencycontact` VALUES (1,2,'zgd1','13813003868'),(2,2,'zgd2','17751753357'),(3,2,'zgd3','110'),(1,3,'zgd1','13813003868'),(2,3,'zgd2','17751753357'),(3,3,'zgd3','110'),(1,1,'zgd1','13813003868'),(2,1,'zgd2','17751753357'),(3,1,'zgd3','110'),(1,14,'zgd1','13813003868'),(2,14,'zgd2','17751753357'),(3,14,'zgd3','15651006850');
/*!40000 ALTER TABLE `t_emergencycontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_msg`
--

DROP TABLE IF EXISTS `t_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_msg` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_doctorId` int(11) DEFAULT NULL,
  `t_userId` int(11) DEFAULT NULL,
  `t_content` varchar(100) DEFAULT NULL,
  `t_time` datetime DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_msg`
--

LOCK TABLES `t_msg` WRITE;
/*!40000 ALTER TABLE `t_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_puser`
--

DROP TABLE IF EXISTS `t_puser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_puser` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_username` varchar(20) NOT NULL,
  `t_password` varchar(30) NOT NULL,
  `t_name` varchar(10) DEFAULT NULL,
  `t_sex` varchar(2) DEFAULT NULL,
  `t_unlockCode` varchar(10) DEFAULT NULL,
  `t_phonenum` varchar(14) DEFAULT NULL,
  `t_birthday` varchar(10) DEFAULT NULL,
  `t_address` varchar(100) DEFAULT NULL,
  `t_medicalcare` varchar(500) DEFAULT NULL,
  `t_sickHistory` varchar(500) DEFAULT NULL,
  `t_allergy` varchar(255) DEFAULT NULL,
  `t_pilluse` varchar(255) DEFAULT NULL,
  `t_bloodgroup` varchar(2) DEFAULT NULL,
  `t_height` varchar(10) DEFAULT NULL,
  `t_weight` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`t_id`,`t_username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_puser`
--

LOCK TABLES `t_puser` WRITE;
/*!40000 ALTER TABLE `t_puser` DISABLE KEYS */;
INSERT INTO `t_puser` VALUES (1,'admin','123','zhuguodong','男',NULL,'13813003868','1993-10-23','南京信息工程大学','没有','感冒','没有','阿莫西林','A','173','55'),(2,'zgd','123','zgd','男',NULL,'13813003868','2016-04-23','南京信息工程大学','健康状态','感冒一星期','青霉素过敏','阿莫西林','B','175','56'),(3,'zgd1','123','朱国栋','男',NULL,'13813003868','1993-10-23','南京','无','无','无','无','A','173','55'),(4,'zgd2','123','朱国栋','男',NULL,'13813003868','1993-10-23','南京','无','无','无','无','A','175','55'),(5,'zgd4','123','朱国栋','男',NULL,'13813003868','1993-10-23','南京','无','无','无','无','B','175','56'),(6,'zgd5','123','朱国栋','男',NULL,'13813003868','1993-10-23','南京','无','无','无','无','A','175','56'),(8,'zgd6','132','zhuguodong','男',NULL,'13813003868','2016-04-05','南京','无','无','无','无','B','175','55'),(9,'zgd7','123','zgd','男',NULL,'110','2016-04-06','南京','无','无','无','无','B','175','55'),(10,'zgd8','123','zgd','男',NULL,'110','2016-04-05','南京','无','无','无','无','A','175','55'),(12,'zgd9','123','zgd','男',NULL,'110','2016-04-13','南京','无','无','无语','无i','B','178','56'),(14,'zhuguodong','123','朱国栋','男',NULL,'13813003868','1993-1-1','南京市浦口区','无','无','无','无','A','173','60');
/*!40000 ALTER TABLE `t_puser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sensor1`
--

DROP TABLE IF EXISTS `t_sensor1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sensor1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` varchar(15) NOT NULL,
  `y` varchar(15) NOT NULL,
  `z` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sensor1`
--

LOCK TABLES `t_sensor1` WRITE;
/*!40000 ALTER TABLE `t_sensor1` DISABLE KEYS */;
INSERT INTO `t_sensor1` VALUES (1,'0','0','9'),(2,'0','0','8.8'),(3,'1','1','8.7'),(4,'0.3','0.2','8.4'),(5,'0.8','0.9','8.8');
/*!40000 ALTER TABLE `t_sensor1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sensor2`
--

DROP TABLE IF EXISTS `t_sensor2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sensor2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` varchar(15) NOT NULL,
  `y` varchar(15) NOT NULL,
  `z` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sensor2`
--

LOCK TABLES `t_sensor2` WRITE;
/*!40000 ALTER TABLE `t_sensor2` DISABLE KEYS */;
INSERT INTO `t_sensor2` VALUES (1,'0','0','9'),(2,'0','0','8.8'),(3,'1','2','10'),(4,'1','3','11'),(5,'0.8','2','12'),(6,'0.6','2','12.4'),(7,'0.5','1.2','12.2'),(8,'0','0','9');
/*!40000 ALTER TABLE `t_sensor2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_username` varchar(20) DEFAULT NULL,
  `t_password` varchar(20) DEFAULT NULL,
  `t_realname` varchar(10) DEFAULT NULL,
  `t_sex` char(1) DEFAULT NULL,
  `t_phonenum` varchar(14) DEFAULT NULL,
  `t_email` varchar(30) DEFAULT NULL,
  `t_birthday` date DEFAULT NULL,
  `t_address` varchar(100) DEFAULT NULL,
  `t_doctorId` int(11) DEFAULT NULL,
  `t_bloodgroup` char(2) DEFAULT NULL,
  `t_height` varchar(10) DEFAULT NULL,
  `t_weight` varchar(10) DEFAULT NULL,
  `t_sickHistory` varchar(500) DEFAULT NULL,
  `t_allergy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-05 10:06:08
