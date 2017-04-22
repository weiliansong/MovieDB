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
INSERT INTO `crew` VALUES (2,'Paul Thomas Anderson','Director'),(7,'Quentin Tarantino','Director'),(6,'Stanley Kubrick','Director'),(9,'Clint Eastwood','Director'),(1,'David Fincher','Director'),(4,'Steven Spielburg','Director'),(3,'David Cronenberg','Director'),(5,'Martin Scorsese','Director'),(8,'Darren Aronofsky','Director'),(10,'Frank Darabont','Director'),(1,'Ross Grayson Bell','Producer'),(2,'JoAnne Sellar','Producer'),(3,'Stuart Cornfeld','Producer'),(4,'Kathleen Kennedy','Producer'),(5,'Martin Scorsese','Producer'),(6,'Stanley Kubrik','Producer'),(7,'Lawrence Bender','Producer'),(8,'Eric Watson','Producer'),(9,'Robert Lorenz','Producer'),(10,'Niki Marvin','Producer'),(1,'James Haygood','Editor'),(2,'Dylan Tichenor','Editor'),(3,'Ronald Sanders','Editor'),(4,'Michael Khan','Editor'),(5,'Thelma Schoonmaker','Editor'),(6,'Ray Lovejoy','Editor'),(7,'Sally Menke','Editor'),(8,'Jay Rabinowitz','Editor'),(9,'Joel Cox','Editor'),(10,'Richard Francis-Bruce','Editor'),(1,'Chuck Palahniuk','Writer'),(2,'Upton Sinclair','Writer'),(3,'George Langelaan','Writer'),(4,'Michael Crichton','Writer'),(5,'Jordan Belfort','Writer'),(6,'Stephen King','Writer'),(7,'Quentin Tarantino','Writer'),(8,'Hubert Selby Jr.','Writer'),(9,'Dennis Lehane','Writer'),(10,'Frank Darabont','Writer'),(2,'Daniel Day-Lewis','Daniel Plainview'),(10,'Tim Robbins','Andy Dufresne'),(9,'Tim Robbins','Dave Boyle'),(1,'Jared Leto','Angel Face'),(8,'Jared Leto','Harry Goldfarb'),(1,'Helena Bonham Carter','Marla Singer'),(3,'Jeff Goldblum','Seth Brundle'),(4,'Jeff Goldblum','Malcolm'),(6,'Jack Nicholson','Jack Torrance'),(5,'Leonardo DiCaprio','Jordan Belfort'),(10,'Morgan Freeman','Ellis Boyd Red Redding'),(4,'Sam Neill','Grant'),(7,'Bruce Willis','Butch Coolidge'),(11,'Lana Wachowski','Director'),(11,'Lilly Wachowski','Director'),(11,'Joel Silver','Producer'),(11,'Keanu Reeves','Actor'),(12,'Jeff Bridges','Actor'),(13,'Ray Liota','Actor'),(14,'Arnold Schwarzenegger','Actor'),(15,'Leonardo DiCaprio','Actor'),(16,'Orson Welles','Actor'),(17,'Mel Gibson','Actor'),(18,'Russell Crowe','Actor');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Fight Club','drama',1999,'English',139,'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.','R'),(2,'There Will Be Blood','drama',2007,'English',158,'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.','R'),(3,'The Fly','drama',1986,'English',96,'A brilliant but eccentric scientist begins to transform into a giant man/fly hybrid after one of his experiments goes horribly wrong.','R'),(4,'Jurassic Park','adventure',1993,'English',127,'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.','PG-13'),(5,'The Wolf Of Wallstreet','biography',2013,'English',179,'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.','R'),(6,'The Shining','horror',1980,'English',146,'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.','R'),(7,'Pulp Fiction','drama',1994,'English',154,'The lives of two mob hit men, a boxer, a gangsters wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','R'),(8,'Requiem For A Dream','drama',2000,'English',102,'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.','R'),(9,'Mystic River','crime',2003,'English',138,'With a childhood tragedy that overshadowed their lives, three men are reunited by circumstance when one has a family tragedy.','R'),(10,'The Shawshank Redemption','crime',1994,'English',142,'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.','R'),(11,'The Matrix','Action',1999,'English',136,'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',NULL),(12,'The Big Lebowski','Comedy',1998,'English',117,'\"The Dude\" Lebowski, mistaken for a millionaire Lebowski, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.',NULL),(13,'Goodfellas','Biography',1990,'English',145,'Henry Hill and his friends work their way up through the mob hierarchy.',NULL),(14,'Terminator 2','Sci-fi',1991,'English',137,'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced cyborg.',NULL),(15,'Inception','Action',2010,'English',148,'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.',NULL),(16,'Citizen Kane','Drama',1941,'English',119,'Following the death of a publishing tycoon, news reporters scramble to discover the meaning of his final utterance.',NULL),(17,'Braveheart','Biography',1995,'English',179,'When his secret bride is executed for assaulting an English soldier who tried to rape her, Sir William Wallace begins a revolt against King Edward I of England.',NULL),(18,'Gladiator','Action',2000,'English',155,'When a Roman general is betrayed and his family murdered by an emperors corrupt son, he comes to Rome as a gladiator to seek revenge.',NULL),(19,'Interstellar','Sci-fi',2014,'English',169,'A team of explorers travel through a wormhole in space in an attempt to ensure humanitys survival.',NULL),(20,'Toy Story','Animation',1995,'English',81,'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boys room.',NULL),(21,'Jaws','Adventure',1975,'English',124,'A giant great white shark arrives on the shores of a New England beach resort and wreaks havoc with bloody attacks on swimmers, until a local sheriff teams up with a marine biologist and an old seafarer to hunt the monster down.',NULL),(22,'Apocalypse Now','War',1979,'English',153,'During the Vietnam War, Captain Willard is sent on a dangerous mission into Cambodia to assassinate a renegade colonel who has set himself up as a god among a local tribe.',NULL),(23,'Moon','Drama',2009,'English',97,'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planets power problems.',NULL),(24,'Pans Labyrinth','Fantasy',2006,'English',118,'In the falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.',NULL),(25,'The Green Mile','Crime',1999,'English',189,'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.',NULL),(26,'Life of Pi','Adventure',2012,'English',127,'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.',NULL),(27,'Three Kings','Action',1999,'English',114,'In the aftermath of the Persian Gulf War, 4 soldiers set out to steal gold that was stolen from Kuwait, but they discover people who desperately need their help.',NULL),(28,'Fargo','Crime',1996,'English',98,'Jerry Lundegaards inept crime falls apart due to his and his henchmens bungling and the persistent police work of the quite pregnant Marge Gunderson.',NULL),(29,'Old Boy','Mystery',2003,'Korean',120,'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.',NULL),(30,'Gran Torino','Drama',2008,'English',116,'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, a Hmong teenager who tried to steal Kowalskis prized possession: a 1972 Gran Torino.',NULL);
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
INSERT INTO `rating` VALUES (1,1,5),(3,2,4),(4,3,3),(6,4,4),(7,5,5),(8,6,4),(9,7,3),(1,8,4),(3,9,5),(4,10,4),(11,11,5),(13,12,4),(14,13,3),(16,14,4),(17,15,5),(18,16,4),(19,17,3),(11,18,4),(13,19,5),(14,20,4),(21,21,5),(23,22,4),(24,23,3),(26,24,4),(27,25,5),(28,26,4),(29,27,3),(21,28,4),(23,29,5),(24,30,4);
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
INSERT INTO `review` VALUES (9,1,'This movie was so great, it blew my mind. Now I feel like I dont even exist anymore lol.'),(8,2,'Talk about the kind of movie to get in a good mood about, It makes me want to go bowling really'),(7,3,'These special effects are amazing, and its super gross. Slime all over everything, sign me up!'),(6,4,'Anything with dinosaurs is a winner in my book. And Goldblum has a hell of a laugh on him.'),(4,6,'It doesnt get much more classic than this. An abandoned hotel, some ghosts, super powers, and a giant freaking axe to set the mood.'),(3,8,'I liked the music in this movie, but I dont think the movie its self lives up to the hype.'),(1,9,'Whats so mystic about it, someone explain this thing to me...:-/'),(9,10,'NOT AN ACCURATE PORTRAYAL OF PRISON. SERIOUSLY. But I could listen to Morgan Freeman talk for days.'),(8,5,'Wallstreet is just the best, Ill tell you what. All that 80s stuff, and money, shoowee sure makes me happy.'),(7,7,'Poor Marvin. :('),(19,11,'Maybe we do live in a program...'),(18,12,'I want to drink and bowl after this, loved it.'),(17,13,'Longing for the old country.'),(16,14,'Robots are cool.'),(14,16,'This movie is old'),(13,18,'Wow. Just Wow.'),(11,19,'I dont get it, time travel and space?'),(19,20,'NOT AN ACCURATE PORTRAYAL OF TOYS. SERIOUSLY. But I could listen to Tim Allen talk for days.'),(18,15,'If you didnt understand this movie, than I am better than you.'),(17,17,'Heck yea, where do I get some of that sweet facepaint?'),(29,21,'I like sharks.'),(28,22,'Meh, take it or leave it.'),(27,23,'Woah, pretty spacey.'),(26,24,'This movie creeped me out.'),(24,26,'The visuals in this film are incredible'),(23,28,'They sound Canadian, but they sure kill like Americans. Oh geeze.'),(21,29,'This is a nonstop thrillride. The hallway scene is epic!'),(29,30,'Clint Eastwood is the man no matter what movie hes in, this is another perfect example of that.'),(28,25,'Brilliant, Superb, Amazing. Those are things this movie  makes you think.'),(27,27,'HAHAHAHAHA');
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
INSERT INTO `tags` VALUES (1,'Action Packed'),(1,'Trippy'),(1,'Twist Ending'),(2,'Intense'),(2,'Dark'),(2,'Suspenseful'),(3,'Gore'),(3,'Scary'),(4,'Awesome'),(4,'Dinosaurs'),(4,'Classic'),(5,'Crazed'),(5,'Bloody'),(6,'Soundtrack'),(6,'Gritty'),(6,'Drugs'),(7,'Suspenseful'),(7,'Sad'),(8,'Powerful'),(8,'Inspiring'),(9,'Fast Paced'),(9,'Drugs'),(10,'Classic'),(10,'Cerebral'),(11,'Woah'),(11,'Mind-Blowing'),(11,'Kungfu'),(12,'Bowling'),(12,'White Russian'),(12,'Dude'),(13,'Brutal'),(13,'Mafia'),(13,'Made'),(14,'Boots'),(14,'Clothes'),(14,'Motorcycle'),(15,'What?'),(15,'Effects'),(15,'Trippy'),(16,'Rosebud'),(16,'Classic'),(17,'Freedom'),(17,'Bloody'),(17,'Kilts'),(18,'War'),(18,'Gore'),(18,'Rome');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ollie','T','Boxer','boxman420','1963-01-21','m','manager'),(2,'Rossana','M','Stratman','moviewatcher64','1964-09-28','f','standard'),(3,'Gwyneth','A','Gatz','gwyngatz','1973-07-03','f','manager'),(4,'Britt','B','Sibert','sicritic','1976-03-18','f','manager'),(5,'Marline','S','Toto','mst1979','1979-01-26','f','standard'),(6,'Graham','D','Dennett','goldengraham','1984-02-29','m','manager'),(7,'Daniele',NULL,'Marinez','filmarinez','1985-06-29','f','manager'),(8,'Camila','R','Gass','gassgirl25','1992-04-08','f','manager'),(9,'Carl','E','Siegal','siegcninoit','1995-05-16','m','manager'),(10,'Phil',NULL,'Keaton','phillykeatman','1997-03-06','m','standard'),(11,'Bollie','G','Toxer','Toxman420','1967-01-21','m','manager'),(12,'Jossana','H','Ratman','movielooker34','1934-09-28','f','standard'),(13,'Wyneth','J','Aatz','wynatz','1979-07-03','f','manager'),(14,'Tritt','L','Hibert','sicaritic','1986-03-18','f','manager'),(15,'Jarline','Q','Boto','jqb1979','1979-01-30','f','standard'),(16,'Braham','E','Ennett','foldenbraham','1984-02-27','m','manager'),(17,'Spaniele',NULL,'Karinez','filkarinez','1965-06-29','f','manager'),(18,'Hamila','G','Rass','rassgirl25','1982-04-08','f','manager'),(19,'Parl','E','Biegal','biegcninoit','1994-05-16','m','manager'),(20,'Philly',NULL,'Peaton','phillypeatman','1997-03-06','m','standard'),(21,'Collie','H','Uoxer','oxman420','1968-01-21','m','manager'),(22,'Hossana','I','Satman','filmlooker34','1944-09-28','f','standard'),(23,'Xyneth','K','Batz','xybatz','1969-07-03','f','manager'),(24,'Fritt','M','Iibert','ticaritic','1987-03-18','f','manager'),(25,'Karline','R','Coto','krc1979','1980-01-30','f','standard'),(26,'Craham','F','Fnnett','Holdencraham','1985-02-26','m','manager'),(27,'Epaniele',NULL,'Larinez','eillarinez','1955-06-29','f','manager'),(28,'Pamila','H','Sass','sassgirl25','1983-04-08','f','manager'),(29,'Qarl','F','Ciegal','ciegcninoit','1944-05-16','m','manager'),(30,'Hilly',NULL,'Beaton','hillybeatman','1997-03-06','m','standard');
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

-- Dump completed on 2017-04-21 23:35:03
