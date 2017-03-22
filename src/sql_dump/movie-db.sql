-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: moviedatabase
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Current Database: `moviedatabase`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `moviedatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `moviedatabase`;

--
-- Table structure for table `acted_in`
--

DROP TABLE IF EXISTS `acted_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acted_in` (
  `aid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  KEY `aid` (`aid`),
  KEY `mid` (`mid`),
  CONSTRAINT `acted_in_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `actor` (`id`),
  CONSTRAINT `acted_in_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acted_in`
--

LOCK TABLES `acted_in` WRITE;
/*!40000 ALTER TABLE `acted_in` DISABLE KEYS */;
INSERT INTO `acted_in` VALUES (1,2,'Daniel Plainview'),(2,8,'Andy Dufresne'),(2,7,'Dave Boyle'),(3,1,'Angel Face'),(3,6,'Harry Goldfarb'),(4,1,'Marla Singer'),(5,3,'Seth Brundle'),(5,4,'Malcolm'),(6,5,'Jack Torrance'),(7,9,'Jordan Belfort'),(9,4,'Grant'),(10,10,'Butch Coolidge'),(8,8,'Ellis Boyd Red Redding');
/*!40000 ALTER TABLE `acted_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Daniel Day-Lewis','1957-04-29'),(2,'Tim Robbins','1958-10-16'),(3,'Jared Leto','1971-12-26'),(4,'Helena Bonham Carter','1966-05-26'),(5,'Jeff Goldblum','1952-10-22'),(6,'Jack Nicholson','1937-04-22'),(7,'Leonardo DiCaprio','1974-11-11'),(8,'Morgan Freeman','1937-06-01'),(9,'Sam Neill','1947-09-14'),(10,'Bruce Willis','1955-03-19');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Paul Thomas Anderson','1970-06-26'),(2,'Quentin Tarantino','1963-03-27'),(3,'Stanley Kubrick','1928-03-07'),(4,'Clint Eastwood','1930-05-31'),(5,'David Fincher','1962-08-28'),(6,'Steven Spielburg','1946-12-18'),(7,'David Cronenberg','1943-03-15'),(8,'Martin Scorsese','1942-11-17'),(9,'Darren Aronofsky','1969-02-12'),(10,'Frank Darabont','1959-01-28');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
INSERT INTO `editor` VALUES (1,'James Haygood'),(2,'Dylan Tichenor'),(3,'Ronald Sanders'),(4,'Michael Khan'),(5,'Thelma Schoonmaker'),(6,'Ray Lovejoy'),(7,'Sally Menke'),(8,'Jay Rabinowitz'),(9,'Joel Cox'),(10,'Richard Francis-Bruce');
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `release` int(255) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `duration` int(255) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `swid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `pid` (`pid`),
  KEY `swid` (`swid`),
  KEY `eid` (`eid`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`did`) REFERENCES `director` (`id`),
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `producer` (`id`),
  CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`swid`) REFERENCES `writer` (`id`),
  CONSTRAINT `movie_ibfk_4` FOREIGN KEY (`eid`) REFERENCES `editor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Fight Club','drama',1999,'English',139,'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.',5,1,1,1,'R'),(2,'There Will Be Blood','drama',2007,'English',158,'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.',1,2,2,2,'R'),(3,'The Fly','drama',1986,'English',96,'A brilliant but eccentric scientist begins to transform into a giant man/fly hybrid after one of his experiments goes horribly wrong.',7,3,3,3,'R'),(4,'Jurassic Park','adventure',1993,'English',127,'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.',6,4,4,4,'PG-13'),(5,'The Shining','horror',1980,'English',146,'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.',3,6,6,6,'R'),(6,'Requiem For A Dream','drama',2000,'English',102,'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.',9,8,8,8,'R'),(7,'Mystic River','crime',2003,'English',138,'With a childhood tragedy that overshadowed their lives, three men are reunited by circumstance when one has a family tragedy.',4,9,9,9,'R'),(8,'The Shawshank Redemption','crime',1994,'English',142,'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',10,10,10,10,'R'),(9,'The Wolf Of Wallstreet','biography',2013,'English',179,'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.',8,5,5,5,'R'),(10,'Pulp Fiction','drama',1994,'English',154,'The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',2,7,7,7,'R');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'Ross Grayson Bell'),(2,'JoAnne Sellar'),(3,'Stuart Cornfeld'),(4,'Kathleen Kennedy'),(5,'Martin Scorsese'),(6,'Stanley Kubrik'),(7,'Lawrence Bender'),(8,'Eric Watson'),(9,'Robert Lorenz'),(10,'Niki Marvin');
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `uid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `mid` (`mid`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,5),(3,2,4),(4,3,3),(6,4,4),(7,5,5),(8,6,4),(9,7,3),(1,8,4),(3,9,5),(4,10,4);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `uid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `review` varchar(256) DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `mid` (`mid`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (9,1,'This movie was so great, it blew my mind. Now I feel like I dont even exist anymore lol.'),(8,2,'Talk about the kind of movie to get in a good mood about, It makes me want to go bowling really'),(7,3,'These special effects are amazing, and its super gross. Slime all over everything, sign me up!'),(6,4,'Anything with dinosaurs is a winner in my book. And Goldblum has a hell of a laugh on him.'),(4,5,'It doesnt get much more classic than this. An abandoned hotel, some ghosts, super powers, and a giant freaking axe to set the mood.'),(3,6,'I liked the music in this movie, but I dont think the movie its self lives up to the hype.'),(1,7,'Whats so mystic about it, someone explain this thing to me...:-/'),(9,8,'NOT AN ACCURATE PORTRAYAL OF PRISON. SERIOUSLY. But I could listen to Morgan Freeman talk for days.'),(8,9,'Wallstreet is just the best, Ill tell you what. All that 80s stuff, and money, shoowee sure makes me happy.'),(7,10,'Poor Marvin. :(');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `mid` int(11) DEFAULT NULL,
  `tag` varchar(20) DEFAULT NULL,
  KEY `mid` (`mid`),
  CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Action Packed'),(1,'Trippy'),(1,'Twist Ending'),(2,'Intense'),(2,'Dark'),(2,'Suspenseful'),(3,'Gore'),(3,'Scary'),(4,'Awesome'),(4,'Dinosaurs'),(4,'Classic'),(5,'Crazed'),(5,'Bloody'),(6,'Soundtrack'),(6,'Gritty'),(6,'Drugs'),(7,'Suspenseful'),(7,'Sad'),(8,'Powerful'),(8,'Inspiring'),(9,'Fast Paced'),(9,'Drugs'),(10,'Classic'),(10,'Cerebral');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `middle` char(1) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `access` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ollie','T','Boxer','boxman420','1963-01-21','m','manager'),(2,'Rossana','M','Stratman','moviewatcher64','1964-09-28','f','standard'),(3,'Gwyneth','A','Gatz','gwyngatz','1973-07-03','f','manager'),(4,'Britt','B','Sibert','sicritic','1976-03-18','f','manager'),(5,'Marline','S','Toto','mst1979','1979-01-26','f','standard'),(6,'Graham','D','Dennett','goldengraham','1984-02-29','m','manager'),(7,'Daniele',NULL,'Marinez','filmarinez','1985-06-29','f','manager'),(8,'Camila','R','Gass','gassgirl25','1992-04-08','f','manager'),(9,'Carl','E','Siegal','siegcninoit','1995-05-16','m','manager'),(10,'Phil',NULL,'Keaton','phillykeatman','1997-03-06','m','standard');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writer`
--

DROP TABLE IF EXISTS `writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `writer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writer`
--

LOCK TABLES `writer` WRITE;
/*!40000 ALTER TABLE `writer` DISABLE KEYS */;
INSERT INTO `writer` VALUES (1,'Chuck Palahniuk','1962-02-21'),(2,'Upton Sinclair','1878-09-20'),(3,'George Langelaan','1908-01-19'),(4,'Michael Crichton','1942-10-23'),(5,'Jordan Belfort','1962-07-09'),(6,'Stephen King','1947-09-21'),(7,'Quentin Tarantino','1963-03-27'),(8,'Hubert Selby Jr.','1928-07-28'),(9,'Dennis Lehane','1965-08-04'),(10,'Frank Darabont','1959-01-28');
/*!40000 ALTER TABLE `writer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22  1:34:55
