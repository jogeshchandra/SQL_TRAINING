-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_day1
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `Hotel_No` text,
  `Guest_No` text,
  `Date_From` text,
  `Date_To` text,
  `Room_No` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('H111','G256','10-Aug-99','15-AUG-99',412),('H111','G367','18-AUG-99','21 -AUG-99',412),('H235','G879','05-SEP-99','12-SEP-99',1267),('H498','G230','15-SEP-99','18-SEP-99',467),('H498','G256','30-NOV-99','02-DEC-99',345),('H498','G467','03-NOV-99','05-NOV-99',345),('H193','G190','15-NOV-99','19-NOV-J9',1001),('H193','G367','12-SEP-99','14-SEP-99',1001),('H193','G367','01-OCT-99','06-OCT-99',1201),('H437','G190','04-OCT-99','06-OCT-99',223),('H437','G879','14-SEP-99','17-SEP-99',223);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `DEPT_ID` text,
  `DEP_NAME` text,
  `DEP_MANAGER` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES ('D01','HEALTH','TIM ARCHER'),('D02','COMMUNICATION','ADAM JUSTIN'),('D03','PRODUCT','BRUCE WILLS'),('D04','INSURANCE','ROBERT SWIFT'),('D05','FINANCE','NATASHA STEVENS');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `E_ID` text,
  `NAME` text,
  `DEP_ID` text,
  `SALARY` int DEFAULT NULL,
  `MANAGER_ID` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('A114','MARTIN TREDEAU','D01',54497,'A120'),('A116','ROBIN WAYNE','D02',20196,'A187'),('A178','BRUCE WILLS','D03',66861,'A298 '),('A132','PAUL VINCENT','D01',94791,'A120'),('A198','TOM HANKS','D02',16879,'A187'),('A120','TIM ARCHER','D01',48834,'A298'),('A143','BRAD MICHAE L','D01',24488,'A120'),('A187','ADAM JUSTIN','D02',80543,'A298'),('A121','STUART WILLIAM','D02',78629,'A187'),('A 187','ROBERT SWIFT','D04',27700,'A298'),('A176','EDWARD CANE','D01',89176,'A120'),('A142','TARA  CUMMINGS','D04',99475,'A187'),('A130','VANESSA PARY','D04',28565,'A187'),('A128','ADAM WAYNE','D05',94324,'A165'),('A129','JOSEPH ANGELIN','D05',44280,'A165'),('A165','NATASHA STEVENS','D05',31377,'A298'),('A111','JOHN HELLEN','D01',15380,'A120'),('A194','HAROLLD STEVENS','D02',32166,'A187'),('A133','STEVE MICHELOS','D02',61215,'A187'),('A156','NICK MARTIN','D03',50174,'A178');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `Guest_No` text,
  `Name` text,
  `City` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES ('G256','Adam Wayne','Pittsburgh'),('G367','Tara Cummings','Baltimore'),('G879','Vanessa Parry','Pittsburgh'),('G230','Tom Hancock','Philadelphia'),('G467','Robert Swift','Atlanta'),('G190','Edward Cane','Baltimore');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `Hotel_No` text,
  `Name` text,
  `City` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('H111','Empire Hotel','New York'),('H235','Park Place','New York'),('H432','Brownstone Hotel','Toronto'),('H498','James Plaza','Toronto'),('H193','Devon Hotel','Boston'),('H437','Clairmont Hotel','Boston');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `Room_no` int DEFAULT NULL,
  `Hotel_No` text,
  `Type` text,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (313,'H111','S',145),(412,'H111','N',145),(1267,'H235','N',175),(1289,'H235','N',195),(876,'H432','S',124.001),(898,'H432','S',124),(345,'H498','N',160),(467,'H498','N',180),(1001,'H193','S',150),(1201,'H193','N',175),(257,'H437','N',140),(223,'H437','N',155);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 19:43:00
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_day3
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gardener`
--

DROP TABLE IF EXISTS `gardener`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gardener` (
  `gardenerid` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `exper` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gardenerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gardener`
--

LOCK TABLES `gardener` WRITE;
/*!40000 ALTER TABLE `gardener` DISABLE KEYS */;
INSERT INTO `gardener` VALUES (0,'Mother',36,NULL),(1,'Father',38,NULL),(2,'Tim',15,NULL),(3,'Erin',12,NULL);
/*!40000 ALTER TABLE `gardener` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `locationid` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sunlight` float DEFAULT NULL,
  `water` float DEFAULT NULL,
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (0,'East',0.28,0.8),(1,'North',0.17,0.84),(2,'West',0.38,0.48),(3,'South',0.45,0.66);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picked`
--

DROP TABLE IF EXISTS `picked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picked` (
  `plantfk` int DEFAULT NULL,
  `gardenerfk` int DEFAULT NULL,
  `locationfk` int DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  KEY `plantfk` (`plantfk`),
  KEY `gardenerfk` (`gardenerfk`),
  KEY `locationfk` (`locationfk`),
  CONSTRAINT `picked_ibfk_1` FOREIGN KEY (`plantfk`) REFERENCES `plant` (`plantid`),
  CONSTRAINT `picked_ibfk_2` FOREIGN KEY (`gardenerfk`) REFERENCES `gardener` (`gardenerid`),
  CONSTRAINT `picked_ibfk_3` FOREIGN KEY (`locationfk`) REFERENCES `location` (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picked`
--

LOCK TABLES `picked` WRITE;
/*!40000 ALTER TABLE `picked` DISABLE KEYS */;
INSERT INTO `picked` VALUES (0,2,0,'2012-08-18',28,2.32),(0,3,1,'2012-08-16',12,1.02),(2,1,3,'2012-08-22',52,12.96),(2,2,2,'2012-08-28',18,4.58),(3,3,1,'2012-08-22',15,3.84),(4,2,0,'2012-07-16',23,0.52);
/*!40000 ALTER TABLE `picked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant` (
  `plantid` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sunlight` float DEFAULT NULL,
  `water` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES (0,'Carrot',0.26,0.82,0.08),(1,'Beet',0.44,0.8,0.04),(2,'Corn',0.44,76,0.26),(3,'Tomato',0.42,0.8,0.16),(4,'Radish',0.28,0.84,0.02),(5,'Lettuce',0.29,0.85,0.03);
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planted`
--

DROP TABLE IF EXISTS `planted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planted` (
  `plantfk` int DEFAULT NULL,
  `gardenerfk` int DEFAULT NULL,
  `locationfk` int DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `seeds` int DEFAULT NULL,
  KEY `plantfk` (`plantfk`),
  KEY `gardenerfk` (`gardenerfk`),
  KEY `locationfk` (`locationfk`),
  CONSTRAINT `planted_ibfk_1` FOREIGN KEY (`plantfk`) REFERENCES `plant` (`plantid`),
  CONSTRAINT `planted_ibfk_2` FOREIGN KEY (`gardenerfk`) REFERENCES `gardener` (`gardenerid`),
  CONSTRAINT `planted_ibfk_3` FOREIGN KEY (`locationfk`) REFERENCES `location` (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planted`
--

LOCK TABLES `planted` WRITE;
/*!40000 ALTER TABLE `planted` DISABLE KEYS */;
INSERT INTO `planted` VALUES (0,0,0,'2012-04-18',28),(0,1,1,'2012-04-14',14),(1,0,2,'2012-04-18',36),(2,1,3,'2012-04-14',20),(2,2,2,'2012-04-19',12),(3,3,3,'2012-04-25',38),(4,2,0,'2012-04-30',30),(5,2,0,'2012-04-15',30);
/*!40000 ALTER TABLE `planted` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 19:43:01
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_training
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend` (
  `ID1` int DEFAULT NULL,
  `ID2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (1510,1381),(1510,1689),(1689,1709),(1381,1247),(1709,1247),(1689,1782),(1782,1468),(1782,1316),(1782,1304),(1468,1101),(1468,1641),(1101,1641),(1247,1911),(1247,1501),(1911,1501),(1501,1934),(1316,1934),(1934,1304),(1304,1661),(1661,1025),(1381,1510),(1689,1501),(1709,1689),(1247,1381),(1247,1709),(1782,1689),(1468,1782),(1316,1782),(1304,1782),(1101,1468),(1641,1101),(1911,1247),(1501,1247),(1501,1911),(1934,1501),(1934,1316),(1304,1934),(1661,1304),(1025,1661);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `highschooler`
--

DROP TABLE IF EXISTS `highschooler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `highschooler` (
  `ID` int DEFAULT NULL,
  `name` text,
  `grade` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highschooler`
--

LOCK TABLES `highschooler` WRITE;
/*!40000 ALTER TABLE `highschooler` DISABLE KEYS */;
INSERT INTO `highschooler` VALUES (1510,'Jordan',9),(1689,'Gabriel',9),(1381,'Tiffany',9),(1790,'Cassandra',9),(1101,'Haley',10),(1780,'Andrew',10),(1468,'Kris',10),(1641,'Brittany',10),(1247,'Alexis',11),(1316,'Austin',11),(1911,'Gabriel',11),(1501,'Jessica',11),(1304,'Jordan',12),(1025,'John',12),(1934,'Kyle',12),(1661,'Logan',12);
/*!40000 ALTER TABLE `highschooler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `ID1` int DEFAULT NULL,
  `ID2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1689,1709),(1709,1689),(1782,1709),(1911,1247),(1247,1468),(1641,1468),(1316,1304),(1501,1934),(1934,1501),(1025,1101);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `mID` int NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (101,'Gone with the Wind',1993,'Victor Fleming'),(102,'Star Wars',1977,'George Lucas'),(103,'The Sound of Music',1965,'Robert Wise'),(104,'E.T.',1982,'Steven Spielberg'),(105,'Titanic',1997,'James Cameron'),(106,'Snow White',1937,NULL),(107,'Avatar',2009,'James Cameron'),(108,'Raiders of the Lost Ark',1981,'Steven Spielberg');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rID` int DEFAULT NULL,
  `mID` int DEFAULT NULL,
  `stars` int DEFAULT NULL,
  `ratingDate` date DEFAULT NULL,
  KEY `rID` (`rID`),
  KEY `mID` (`mID`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`rID`) REFERENCES `reviewer` (`rID`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`mID`) REFERENCES `movie` (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (201,101,2,'2011-01-22'),(201,101,4,'2011-01-27'),(202,106,4,NULL),(203,103,2,'2011-01-20'),(203,108,4,'2011-01-12'),(203,108,2,'2011-01-30'),(204,101,3,'2011-01-09'),(205,103,3,'2011-01-27'),(205,104,2,'2011-01-22'),(205,108,4,NULL),(206,107,3,'2011-01-15'),(206,106,5,'2011-01-19'),(207,107,5,'2011-01-20'),(208,104,3,'2011-01-02');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewer` (
  `rID` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES (201,'Sarah Martinez'),(202,'Daniel Lewis'),(203,'Brittany Harris'),(204,'Mike Anderson'),(205,'Chris Jackson'),(206,'Elizabeth Thomas'),(207,'James Cameron'),(208,'Ashley White');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 19:43:01
