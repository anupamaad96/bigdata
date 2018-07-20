-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `picture` varchar(5) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  KEY `user` (`user`),
  KEY `picture` (`picture`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`userid`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`picture`) REFERENCES `pictures` (`picid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES ('1','1'),('1','2'),('2','4'),('3','4'),('3','1'),('3','2'),('7','1'),('6','7');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `picid` varchar(5) NOT NULL,
  `TAGID` varchar(5) DEFAULT NULL,
  `USERID` varchar(20) DEFAULT NULL,
  `datepost` date DEFAULT NULL,
  `picpath` varchar(20) DEFAULT NULL,
  `caption` varchar(10) DEFAULT 'no caption',
  `tagpicID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`picid`),
  KEY `TAGID` (`TAGID`),
  KEY `USERID` (`USERID`),
  CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`TAGID`) REFERENCES `tag` (`tagid`),
  CONSTRAINT `pictures_ibfk_2` FOREIGN KEY (`USERID`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES ('1','1','1','2015-01-19','/home/pictures/1p','London',NULL),('2','1','1','2015-01-19','/home/pictures/1p','no caption',NULL),('3','5','3','2018-01-19','/home/pictures/3p','computers',NULL),('4','2','2','2018-08-01','/home/pictures/3p','birthday',NULL),('5','2','4','2017-08-01','/home/pictures/4p','bdaylast',NULL),('6','3','3','2017-07-16','/home/pic/pic1','LonDoN',NULL),('7','3','3','2017-07-16','/home/pic/pic1','no caption',NULL),('8','1','1','2000-10-01','home/pic3','captioned','1');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tagid` varchar(5) NOT NULL,
  `tagname` varchar(20) DEFAULT NULL,
  `tagpicID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES ('1','art',NULL),('2','science',NULL),('3','music',NULL),('4','history',NULL),('5','engineering',NULL);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tagpicID` int(11) DEFAULT NULL,
  `tagnames` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'art'),(1,'music'),(3,'science'),(2,'history'),(2,'art'),(1,'engineering'),(1,'history');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `first` varchar(20) DEFAULT NULL,
  `second` varchar(20) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `userid` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('anupama','dinesh','anu@inapp.com','1'),('Vasudev','D.A.','vasu@gamil.com','10'),('sangeetha','s','sangeetha@inapp.com','2'),('teena','ann','teena@inapp.com','3'),('shruti','','shruti@inapp.com','4'),('KP','sony','kpsony@gmail.com','5'),('manu','da','manu@yahoo.com','7'),('k','kumar','k.jive@yahoo.com','9');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-17 15:10:04
