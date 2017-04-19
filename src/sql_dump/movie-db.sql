-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: movieDB
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
-- Current Database: `movieDB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `movieDB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `movieDB`;

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crew` (
  `mid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (2,'Paul Thomas Anderson','Director'),(7,'Quentin Tarantino','Director'),(6,'Stanley Kubrick','Director'),(9,'Clint Eastwood','Director'),(1,'David Fincher','Director'),(4,'Steven Spielburg','Director'),(3,'David Cronenberg','Director'),(5,'Martin Scorsese','Director'),(8,'Darren Aronofsky','Director'),(10,'Frank Darabont','Director'),(1,'Ross Grayson Bell','Producer'),(2,'JoAnne Sellar','Producer'),(3,'Stuart Cornfeld','Producer'),(4,'Kathleen Kennedy','Producer'),(5,'Martin Scorsese','Producer'),(6,'Stanley Kubrik','Producer'),(7,'Lawrence Bender','Producer'),(8,'Eric Watson','Producer'),(9,'Robert Lorenz','Producer'),(10,'Niki Marvin','Producer'),(1,'James Haygood','Editor'),(2,'Dylan Tichenor','Editor'),(3,'Ronald Sanders','Editor'),(4,'Michael Khan','Editor'),(5,'Thelma Schoonmaker','Editor'),(6,'Ray Lovejoy','Editor'),(7,'Sally Menke','Editor'),(8,'Jay Rabinowitz','Editor'),(9,'Joel Cox','Editor'),(10,'Richard Francis-Bruce','Editor'),(1,'Chuck Palahniuk','Writer'),(2,'Upton Sinclair','Writer'),(3,'George Langelaan','Writer'),(4,'Michael Crichton','Writer'),(5,'Jordan Belfort','Writer'),(6,'Stephen King','Writer'),(7,'Quentin Tarantino','Writer'),(8,'Hubert Selby Jr.','Writer'),(9,'Dennis Lehane','Writer'),(10,'Frank Darabont','Writer'),(2,'Daniel Day-Lewis','Daniel Plainview'),(10,'Tim Robbins','Andy Dufresne'),(9,'Tim Robbins','Dave Boyle'),(1,'Jared Leto','Angel Face'),(8,'Jared Leto','Harry Goldfarb'),(1,'Helena Bonham Carter','Marla Singer'),(3,'Jeff Goldblum','Seth Brundle'),(4,'Jeff Goldblum','Malcolm'),(6,'Jack Nicholson','Jack Torrance'),(5,'Leonardo DiCaprio','Jordan Belfort'),(10,'Morgan Freeman','Ellis Boyd Red Redding'),(4,'Sam Neill','Grant'),(7,'Bruce Willis','Butch Coolidge');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
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
  `year` int(255) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `duration` int(255) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Fight Club','drama',1999,'English',139,'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.','R'),(2,'There Will Be Blood','drama',2007,'English',158,'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.','R'),(3,'The Fly','drama',1986,'English',96,'A brilliant but eccentric scientist begins to transform into a giant man/fly hybrid after one of his experiments goes horribly wrong.','R'),(4,'Jurassic Park','adventure',1993,'English',127,'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.','PG-13'),(5,'The Wolf Of Wallstreet','biography',2013,'English',179,'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.','R'),(6,'The Shining','horror',1980,'English',146,'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.','R'),(7,'Pulp Fiction','drama',1994,'English',154,'The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','R'),(8,'Requiem For A Dream','drama',2000,'English',102,'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.','R'),(9,'Mystic River','crime',2003,'English',138,'With a childhood tragedy that overshadowed their lives, three men are reunited by circumstance when one has a family tragedy.','R'),(10,'The Shawshank Redemption','crime',1994,'English',142,'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.','R');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
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
INSERT INTO `review` VALUES (9,1,'This movie was so great, it blew my mind. Now I feel like I dont even exist anymore lol.'),(8,2,'Talk about the kind of movie to get in a good mood about, It makes me want to go bowling really'),(7,3,'These special effects are amazing, and its super gross. Slime all over everything, sign me up!'),(6,4,'Anything with dinosaurs is a winner in my book. And Goldblum has a hell of a laugh on him.'),(4,6,'It doesnt get much more classic than this. An abandoned hotel, some ghosts, super powers, and a giant freaking axe to set the mood.'),(3,8,'I liked the music in this movie, but I dont think the movie its self lives up to the hype.'),(1,9,'Whats so mystic about it, someone explain this thing to me...:-/'),(9,10,'NOT AN ACCURATE PORTRAYAL OF PRISON. SERIOUSLY. But I could listen to Morgan Freeman talk for days.'),(8,5,'Wallstreet is just the best, Ill tell you what. All that 80s stuff, and money, shoowee sure makes me happy.'),(7,7,'Poor Marvin. :(');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18 23:17:47
