-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: assignment1
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
-- Table structure for table `Employer`
--

DROP TABLE IF EXISTS `Employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employer` (
  `CompanyID` varchar(5) NOT NULL,
  `CompanyName` varchar(30) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `IndustryType` varchar(20) DEFAULT NULL,
  `FunctionalArea` varchar(20) DEFAULT NULL,
  `MembershipPlan` varchar(20) DEFAULT NULL,
  `DateofSignup` date DEFAULT NULL,
  `DateofRenewal` date DEFAULT NULL,
  `RenewalStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CompanyID`),
  UNIQUE KEY `Mobile` (`Mobile`),
  KEY `EmailID` (`EmailID`),
  CONSTRAINT `Employer_ibfk_1` FOREIGN KEY (`EmailID`) REFERENCES `Users` (`EmailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employer`
--

LOCK TABLES `Employer` WRITE;
/*!40000 ALTER TABLE `Employer` DISABLE KEYS */;
INSERT INTO `Employer` VALUES ('C100','InfosysLimited','jobs@infosys.com',789657987,'chennai','IT','Accounting','Premium Yearly','2016-07-01','2017-06-30','Active'),('C1001','Accenture','careers@accenture.com',798989987,'Bangalore','IT','Marketing','Premium Monthly','2016-07-02','2017-07-01','Active');
/*!40000 ALTER TABLE `Employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_Posted`
--

DROP TABLE IF EXISTS `Jobs_Posted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_Posted` (
  `JobpostId` varchar(6) DEFAULT NULL,
  `CompanyID` varchar(6) DEFAULT NULL,
  `Jobpostdate` date DEFAULT NULL,
  `ValidityDate` date DEFAULT NULL,
  `Joblocation` varchar(20) DEFAULT NULL,
  `SkillsSetsRequired` varchar(20) DEFAULT NULL,
  `YrsofExperience` int(3) DEFAULT NULL,
  `QualifyingTestScore` int(3) DEFAULT NULL,
  `JobpostedStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_Posted`
--

LOCK TABLES `Jobs_Posted` WRITE;
/*!40000 ALTER TABLE `Jobs_Posted` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jobs_Posted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobseekers`
--

DROP TABLE IF EXISTS `Jobseekers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobseekers` (
  `Firstname` varchar(20) DEFAULT NULL,
  `Lastname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Passportno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EmailId`),
  UNIQUE KEY `Mobile` (`Mobile`),
  UNIQUE KEY `Passportno` (`Passportno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobseekers`
--

LOCK TABLES `Jobseekers` WRITE;
/*!40000 ALTER TABLE `Jobseekers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jobseekers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobseekers_Personal_Details`
--

DROP TABLE IF EXISTS `Jobseekers_Personal_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobseekers_Personal_Details` (
  `Firstname` varchar(20) DEFAULT NULL,
  `Lastname` varchar(20) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `EmailId` varchar(20) DEFAULT NULL,
  `Mobile` int(10) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Passportno` varchar(20) DEFAULT NULL,
  UNIQUE KEY `Passportno` (`Passportno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobseekers_Personal_Details`
--

LOCK TABLES `Jobseekers_Personal_Details` WRITE;
/*!40000 ALTER TABLE `Jobseekers_Personal_Details` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jobseekers_Personal_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `EmailId` varchar(30) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Usertype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EmailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('careers@accenture.com','Acc1','Employer'),('careers@amazon.com','amazonindia','Employer'),('jobs@infosys.com','Infy1234','Employer'),('rahulitsme@gmail.com','rahulindia93','Jobseeker');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-17 15:08:50
