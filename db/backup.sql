/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: dogcatalog
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `breeds`
--

DROP TABLE IF EXISTS `breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breeds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight_imperial` varchar(50) DEFAULT NULL,
  `weight_metric` varchar(50) DEFAULT NULL,
  `height_imperial` varchar(50) DEFAULT NULL,
  `height_metric` varchar(50) DEFAULT NULL,
  `bred_for` text DEFAULT NULL,
  `breed_group` varchar(255) DEFAULT NULL,
  `life_span` varchar(50) DEFAULT NULL,
  `temperament` text DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `reference_image_id` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breeds`
--

LOCK TABLES `breeds` WRITE;
/*!40000 ALTER TABLE `breeds` DISABLE KEYS */;
INSERT INTO `breeds` VALUES
(1,'Affenpinscher','6 - 13','3 - 6','9 - 11.5','23 - 29','Small rodent hunting, lapdog','Toy','10 - 12 years','Stubborn, Curious, Playful, Adventurous, Active, Fun-loving','Germany, France','BJa4kxc4X','https://cdn2.thedogapi.com/images/BJa4kxc4X_1280.jpg'),
(2,'Afghan Hound','50 - 60','23 - 27','25 - 27','64 - 69','Coursing and hunting','Hound','10 - 13 years','Aloof, Clownish, Dignified, Independent, Happy','Afghanistan, Iran, Pakistan','hMyT4CDXR','https://cdn2.thedogapi.com/images/hMyT4CDXR.jpg'),
(3,'African Hunting Dog','44 - 66','20 - 30','30','76','A wild pack animal',NULL,'11 years','Wild, Hardworking, Dutiful','','rkiByec47','https://cdn2.thedogapi.com/images/rkiByec47_1280.jpg'),
(4,'Airedale Terrier','40 - 65','18 - 29','21 - 23','53 - 58','Badger, otter hunting','Terrier','10 - 13 years','Outgoing, Friendly, Alert, Confident, Intelligent, Courageous','United Kingdom, England','1-7cgoZSh','https://cdn2.thedogapi.com/images/1-7cgoZSh.jpg'),
(5,'Akbash Dog','90 - 120','41 - 54','28 - 34','71 - 86','Sheep guarding','Working','10 - 12 years','Loyal, Independent, Intelligent, Brave','','26pHT3Qk7','https://cdn2.thedogapi.com/images/26pHT3Qk7.jpg'),
(6,'Akita','65 - 115','29 - 52','24 - 28','61 - 71','Hunting bears','Working','10 - 14 years','Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous',NULL,'BFRYBufpm','https://cdn2.thedogapi.com/images/BFRYBufpm.jpg'),
(7,'Alapaha Blue Blood Bulldog','55 - 90','25 - 41','18 - 24','46 - 61','Guarding','Mixed','12 - 13 years','Loving, Protective, Trainable, Dutiful, Responsible',NULL,'33mJ-V3RX','https://cdn2.thedogapi.com/images/33mJ-V3RX.jpg'),
(8,'Alaskan Husky','38 - 50','17 - 23','23 - 26','58 - 66','Sled pulling','Mixed','10 - 13 years','Friendly, Energetic, Loyal, Gentle, Confident',NULL,'-HgpNnGXl','https://cdn2.thedogapi.com/images/-HgpNnGXl.jpg'),
(9,'Alaskan Malamute','65 - 100','29 - 45','23 - 25','58 - 64','Hauling heavy freight, Sled pulling','Working','12 - 15 years','Friendly, Affectionate, Devoted, Loyal, Dignified, Playful',NULL,'dW5UucTIW','https://cdn2.thedogapi.com/images/dW5UucTIW.jpg'),
(10,'American Bulldog','60 - 120','27 - 54','22 - 27','56 - 69',NULL,'Working','10 - 12 years','Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant',NULL,'pk1AAdloG','https://cdn2.thedogapi.com/images/pk1AAdloG.jpg'),
(11,'American Bully','30 - 150','14 - 68','14 - 17','36 - 43','Family companion dog','','8 – 15 years','Strong Willed, Stubborn, Friendly, Clownish, Affectionate, Loyal, Obedient, Intelligent, Courageous',NULL,'sqQJDtbpY','https://cdn2.thedogapi.com/images/sqQJDtbpY.jpg'),
(12,'American Eskimo Dog','20 - 40','9 - 18','15 - 19','38 - 48','Circus performer','Non-Sporting','12 - 15 years','Friendly, Alert, Reserved, Intelligent, Protective',NULL,'Bymjyec4m','https://cdn2.thedogapi.com/images/Bymjyec4m_1280.jpg'),
(13,'American Eskimo Dog (Miniature)','7 - 10','3 - 5','9 - 12','23 - 30','Companionship',NULL,'13 – 15 years','Friendly, Alert, Reserved, Intelligent, Protective',NULL,'_gn8GLrE6','https://cdn2.thedogapi.com/images/_gn8GLrE6.jpg'),
(14,'American Foxhound','65 - 75','29 - 34','21 - 28','53 - 71','Fox hunting, scent hound','Hound','8 - 15 years','Kind, Sweet-Tempered, Loyal, Independent, Intelligent, Loving',NULL,'S14n1x9NQ','https://cdn2.thedogapi.com/images/S14n1x9NQ_1280.jpg'),
(15,'American Pit Bull Terrier','30 - 60','14 - 27','17 - 21','43 - 53','Fighting','Terrier','10 - 15 years','Strong Willed, Stubborn, Friendly, Clownish, Affectionate, Loyal, Obedient, Intelligent, Courageous',NULL,'HkC31gcNm','https://cdn2.thedogapi.com/images/HkC31gcNm_1280.png'),
(16,'American Staffordshire Terrier','50 - 60','23 - 27','17 - 19','43 - 48','','Terrier','12 - 15 years','Tenacious, Friendly, Devoted, Loyal, Attentive, Courageous',NULL,'rJIakgc4m','https://cdn2.thedogapi.com/images/rJIakgc4m_1280.jpg'),
(17,'American Water Spaniel','25 - 45','11 - 20','15 - 18','38 - 46','Bird flushing and retrieving','Sporting','10 - 12 years','Friendly, Energetic, Obedient, Intelligent, Protective, Trainable',NULL,'SkmRJl9VQ','https://cdn2.thedogapi.com/images/SkmRJl9VQ_1280.jpg'),
(18,'Anatolian Shepherd Dog','80 - 150','36 - 68','27 - 29','69 - 74','Livestock herding','Working','11 - 13 years','Steady, Bold, Independent, Confident, Intelligent, Proud',NULL,'BJT0Jx5Nm','https://cdn2.thedogapi.com/images/BJT0Jx5Nm_1280.jpg'),
(19,'Appenzeller Sennenhund','48 - 55','22 - 25','20 - 22','51 - 56','Herding livestock, pulling carts, and guarding the farm',NULL,'12 – 14 years','Reliable, Fearless, Energetic, Lively, Self-assured',NULL,'HkNkxlqEX','https://cdn2.thedogapi.com/images/HkNkxlqEX_1280.jpg'),
(21,'Australian Cattle Dog','44 - 62','20 - 28','17 - 20','43 - 51','Cattle herding, herding trials','Herding','12 - 14 years','Cautious, Energetic, Loyal, Obedient, Protective, Brave',NULL,'IBkYVm4v1','https://cdn2.thedogapi.com/images/IBkYVm4v1.jpg'),
(22,'Australian Kelpie','31 - 46','14 - 21','17 - 20','43 - 51','Farm dog, Cattle herding','Herding','10 - 13 years','Friendly, Energetic, Alert, Loyal, Intelligent, Eager',NULL,'Hyq1ge9VQ','https://cdn2.thedogapi.com/images/Hyq1ge9VQ_1280.jpg'),
(23,'Australian Shepherd','35 - 65','16 - 29','18 - 23','46 - 58','Sheep herding','Herding','12 - 16 years','Good-natured, Affectionate, Intelligent, Active, Protective',NULL,'B1-llgq4m','https://cdn2.thedogapi.com/images/B1-llgq4m_1280.jpg'),
(24,'Australian Terrier','14 - 16','6 - 7','10 - 11','25 - 28','Cattle herdering, hunting snakes and rodents','Terrier','15 years','Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous',NULL,'r1Ylge5Vm','https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg'),
(25,'Azawakh','33 - 55','15 - 25','23 - 29','58 - 74','Livestock guardian, hunting','Hound','10 - 13 years','Aloof, Affectionate, Attentive, Rugged, Fierce, Refined',NULL,'SkvZgx94m','https://cdn2.thedogapi.com/images/SkvZgx94m_1280.jpg'),
(26,'Barbet','40 - 65','18 - 29','20 - 26','51 - 66','Hunting water game',NULL,'13 – 15 years','Obedient, Companionable, Intelligent, Joyful',NULL,'HyWGexcVQ','https://cdn2.thedogapi.com/images/HyWGexcVQ_1280.jpg'),
(28,'Basenji','22 - 24','10 - 11','16 - 17','41 - 43','Hunting','Hound','10 - 12 years','Affectionate, Energetic, Alert, Curious, Playful, Intelligent',NULL,'H1dGlxqNQ','https://cdn2.thedogapi.com/images/H1dGlxqNQ_1280.jpg'),
(29,'Basset Bleu de Gascogne','35 - 40','16 - 18','13 - 15','33 - 38','Hunting on foot.','Hound','10 - 14 years','Affectionate, Lively, Agile, Curious, Happy, Active',NULL,'BkMQll94X','https://cdn2.thedogapi.com/images/BkMQll94X_1280.jpg'),
(30,'Basset Hound','50 - 65','23 - 29','14','36','Hunting by scent','Hound','12 - 15 years','Tenacious, Friendly, Affectionate, Devoted, Sweet-Tempered, Gentle',NULL,'Sy57xx9EX','https://cdn2.thedogapi.com/images/Sy57xx9EX_1280.jpg'),
(31,'Beagle','20 - 35','9 - 16','13 - 15','33 - 38','Rabbit, hare hunting','Hound','13 - 16 years','Amiable, Even Tempered, Excitable, Determined, Gentle, Intelligent',NULL,'Syd4xxqEm','https://cdn2.thedogapi.com/images/Syd4xxqEm_1280.jpg'),
(32,'Bearded Collie','45 - 55','20 - 25','20 - 22','51 - 56','Sheep herding','Herding','12 - 14 years','Self-confidence, Hardy, Lively, Alert, Intelligent, Active',NULL,'A09F4c1qP','https://cdn2.thedogapi.com/images/A09F4c1qP.jpg'),
(33,'Beauceron','80 - 110','36 - 50','24 - 27.5','61 - 70','Boar herding, hunting, guarding','Herding','10 - 12 years','Fearless, Friendly, Intelligent, Protective, Calm',NULL,'HJQ8ge5V7','https://cdn2.thedogapi.com/images/HJQ8ge5V7_1280.jpg'),
(34,'Bedlington Terrier','17 - 23','8 - 10','15 - 16','38 - 41','Killing rat, badger, other vermin','Terrier','14 - 16 years','Affectionate, Spirited, Intelligent, Good-tempered',NULL,'ByK8gx947','https://cdn2.thedogapi.com/images/ByK8gx947_1280.jpg'),
(36,'Belgian Malinois','40 - 80','18 - 36','22 - 26','56 - 66','Stock herding','Herding','12 - 14 years','Watchful, Alert, Stubborn, Friendly, Confident, Hard-working, Active, Protective',NULL,'r1f_ll5VX','https://cdn2.thedogapi.com/images/r1f_ll5VX_1280.jpg'),
(38,'Belgian Tervuren','40 - 65','18 - 29','22 - 26','56 - 66','Guarding, Drafting, Police work.','Herding','10 - 12 years','Energetic, Alert, Loyal, Intelligent, Attentive, Protective',NULL,'B1KdxlcNX','https://cdn2.thedogapi.com/images/B1KdxlcNX_1280.jpg'),
(41,'Bernese Mountain Dog','65 - 120','29 - 54','23 - 27.5','58 - 70','Draft work','Working','7 - 10 years','Affectionate, Loyal, Intelligent, Faithful',NULL,'S1fFlx5Em','https://cdn2.thedogapi.com/images/S1fFlx5Em_1280.jpg'),
(42,'Bichon Frise','10 - 18','5 - 8','9.5 - 11.5','24 - 29','Companion','Non-Sporting','15 years','Feisty, Affectionate, Cheerful, Playful, Gentle, Sensitive',NULL,'HkuYlxqEQ','https://cdn2.thedogapi.com/images/HkuYlxqEQ_1280.jpg'),
(43,'Black and Tan Coonhound','65 - 100','29 - 45','23 - 27','58 - 69','Hunting raccoons, night hunting','Hound','10 - 12 years','Easygoing, Gentle, Adaptable, Trusting, Even Tempered, Lovable',NULL,'HJAFgxcNQ','https://cdn2.thedogapi.com/images/HJAFgxcNQ_1280.jpg'),
(45,'Bloodhound','80 - 110','36 - 50','23 - 27','58 - 69','Trailing','Hound','8 - 10 years','Stubborn, Affectionate, Gentle, Even Tempered',NULL,'Skdcgx9VX','https://cdn2.thedogapi.com/images/Skdcgx9VX_1280.jpg'),
(47,'Bluetick Coonhound','45 - 80','20 - 36','21 - 27','53 - 69','Hunting with a superior sense of smell.','Hound','12 - 14 years','Friendly, Intelligent, Active',NULL,'rJxieg9VQ','https://cdn2.thedogapi.com/images/rJxieg9VQ_1280.jpg'),
(48,'Boerboel','110 - 200','50 - 91','22 - 27','56 - 69','Guarding the homestead, farm work.','Working','10 - 12 years','Obedient, Confident, Intelligent, Dominant, Territorial',NULL,'HyOjge5Vm','https://cdn2.thedogapi.com/images/HyOjge5Vm_1280.jpg'),
(50,'Border Collie','30 - 45','14 - 20','18 - 22','46 - 56','Sheep herder','Herding','12 - 16 years','Tenacious, Keen, Energetic, Responsive, Alert, Intelligent',NULL,'sGQvQUpsp','https://cdn2.thedogapi.com/images/sGQvQUpsp.jpg'),
(51,'Border Terrier','11.5 - 15.5','5 - 7','11 - 16','28 - 41','Fox bolting, ratting','Terrier','12 - 14 years','Fearless, Affectionate, Alert, Obedient, Intelligent, Even Tempered',NULL,'HJOpge9Em','https://cdn2.thedogapi.com/images/HJOpge9Em_1280.jpg'),
(53,'Boston Terrier','10 - 25','5 - 11','16 - 17','41 - 43','Ratting, Companionship','Non-Sporting','11 - 13 years','Friendly, Lively, Intelligent',NULL,'rkZRggqVX','https://cdn2.thedogapi.com/images/rkZRggqVX_1280.jpg'),
(54,'Bouvier des Flandres','70 - 110','32 - 50','23.5 - 27.5','60 - 70','Cattle herding','Herding','10 - 15 years','Protective, Loyal, Gentle, Intelligent, Familial, Rational',NULL,'Byd0xl5VX','https://cdn2.thedogapi.com/images/Byd0xl5VX_1280.jpg'),
(55,'Boxer','50 - 70','23 - 32','21.5 - 25','55 - 64','Bull-baiting, guardian','Working','8 - 10 years','Devoted, Fearless, Friendly, Cheerful, Energetic, Loyal, Playful, Confident, Intelligent, Bright, Brave, Calm',NULL,'ry1kWe5VQ','https://cdn2.thedogapi.com/images/ry1kWe5VQ_1280.jpg'),
(56,'Boykin Spaniel','25 - 40','11 - 18','14 - 18','36 - 46','Turkey retrieving','Sporting','10 - 14 years','Friendly, Energetic, Companionable, Intelligent, Eager, Trainable',NULL,'ryHJZlcNX','https://cdn2.thedogapi.com/images/ryHJZlcNX_1280.jpg'),
(57,'Bracco Italiano','55 - 88','25 - 40','21.5 - 26.5','55 - 67','Versatile gun dog','Sporting','10 - 12 years','Stubborn, Affectionate, Loyal, Playful, Companionable, Trainable',NULL,'S13yZg5VQ','https://cdn2.thedogapi.com/images/S13yZg5VQ_1280.jpg'),
(58,'Briard','70 - 90','32 - 41','22 - 27','56 - 69','Herding, guarding sheep','Herding','10 - 12 years','Fearless, Loyal, Obedient, Intelligent, Faithful, Protective',NULL,'rkVlblcEQ','https://cdn2.thedogapi.com/images/rkVlblcEQ_1280.jpg'),
(59,'Brittany','30 - 45','14 - 20','17.5 - 20.5','44 - 52','Pointing, retrieving','Sporting','12 - 14 years','Agile, Adaptable, Quick, Intelligent, Attentive, Happy',NULL,'HJWZZxc4X','https://cdn2.thedogapi.com/images/HJWZZxc4X_1280.jpg'),
(61,'Bull Terrier','50 - 70','23 - 32','21 - 22','53 - 56','Bull baiting, Fighting','Terrier','10 - 12 years','Trainable, Protective, Sweet-Tempered, Keen, Active',NULL,'VSraIEQGd','https://cdn2.thedogapi.com/images/VSraIEQGd.jpg'),
(62,'Bull Terrier (Miniature)','25 - 33','11 - 15','10 - 14','25 - 36','An elegant man\'s fashion statement',NULL,'11 – 14 years','Trainable, Protective, Sweet-Tempered, Keen, Active, Territorial',NULL,'BkKZWlcVX','https://cdn2.thedogapi.com/images/BkKZWlcVX_1280.jpg'),
(64,'Bullmastiff','100 - 130','45 - 59','24 - 27','61 - 69','Estate guardian','Working','8 - 12 years','Docile, Reliable, Devoted, Alert, Loyal, Reserved, Loving, Protective, Powerful, Calm, Courageous',NULL,'r1ifZl5E7','https://cdn2.thedogapi.com/images/r1ifZl5E7_1280.jpg'),
(65,'Cairn Terrier','13 - 14','6 - 6','9 - 10','23 - 25','Bolting of otter, foxes, other vermin','Terrier','14 - 15 years','Hardy, Fearless, Assertive, Gay, Intelligent, Active',NULL,'Sk7Qbg9E7','https://cdn2.thedogapi.com/images/Sk7Qbg9E7_1280.jpg'),
(67,'Cane Corso','88 - 120','40 - 54','23.5 - 27.5','60 - 70','Companion, guard dog, and hunter','Working','10 - 11 years','Trainable, Reserved, Stable, Quiet, Even Tempered, Calm',NULL,'r15m-lc4m','https://cdn2.thedogapi.com/images/r15m-lc4m_1280.jpg'),
(68,'Cardigan Welsh Corgi','25 - 38','11 - 17','10.5 - 12.5','27 - 32','Cattle droving','Herding','12 - 14 years','Affectionate, Devoted, Alert, Companionable, Intelligent, Active',NULL,'SyXN-e9NX','https://cdn2.thedogapi.com/images/SyXN-e9NX_1280.jpg'),
(69,'Catahoula Leopard Dog','50 - 95','23 - 43','20 - 26','51 - 66','Driving livestock','Herding','10 - 12 years','Energetic, Inquisitive, Independent, Gentle, Intelligent, Loving',NULL,'BJcNbec4X','https://cdn2.thedogapi.com/images/BJcNbec4X_1280.jpg'),
(70,'Caucasian Shepherd (Ovcharka)','80 - 100','36 - 45','24 - 33.5','61 - 85','Guard dogs, defending sheep from predators, mainly wolves, jackals and bears','Working','10 - 12 years','Alert, Quick, Dominant, Powerful, Calm, Strong',NULL,'r1rrWe5Em','https://cdn2.thedogapi.com/images/r1rrWe5Em_1280.jpg'),
(71,'Cavalier King Charles Spaniel','13 - 18','6 - 8','12 - 13','30 - 33','Flushing small birds, companion','Toy','10 - 14 years','Fearless, Affectionate, Sociable, Patient, Playful, Adaptable',NULL,'HJRBbe94Q','https://cdn2.thedogapi.com/images/HJRBbe94Q_1280.jpg'),
(76,'Chesapeake Bay Retriever','55 - 80','25 - 36','21 - 26','53 - 66','Water Retriever','Sporting','10 - 13 years','Affectionate, Intelligent, Quiet, Dominant, Happy, Protective',NULL,'9BXwUeCc2','https://cdn2.thedogapi.com/images/9BXwUeCc2.jpg'),
(78,'Chinese Crested','10 - 13','5 - 6','11 - 13','28 - 33','Ratting, lapdog, curio','Toy','10 - 14 years','Affectionate, Sweet-Tempered, Lively, Alert, Playful, Happy',NULL,'B1pDZx9Nm','https://cdn2.thedogapi.com/images/B1pDZx9Nm_1280.jpg'),
(79,'Chinese Shar-Pei','45 - 60','20 - 27','18 - 20','46 - 51','Fighting','Non-Sporting','10 years','Suspicious, Affectionate, Devoted, Reserved, Independent, Loving',NULL,'B1ruWl94Q','https://cdn2.thedogapi.com/images/B1ruWl94Q_1280.jpg'),
(80,'Chinook','50 - 90','23 - 41','22 - 26','56 - 66','Sled pulling','Working','12 - 15 years','Friendly, Alert, Dignified, Intelligent, Calm',NULL,'Sypubg54Q','https://cdn2.thedogapi.com/images/Sypubg54Q_1280.jpg'),
(81,'Chow Chow','40 - 70','18 - 32','17 - 20','43 - 51','Guardian, cart pulling, hunting','Non-Sporting','12 - 15 years','Aloof, Loyal, Independent, Quiet',NULL,'ry8KWgqEQ','https://cdn2.thedogapi.com/images/ry8KWgqEQ_1280.jpg'),
(84,'Clumber Spaniel','55 - 85','25 - 39','17 - 20','43 - 51','Bird flushing, retrieving','Sporting','10 - 12 years','Affectionate, Loyal, Dignified, Gentle, Calm, Great-hearted',NULL,'rkeqWgq4Q','https://cdn2.thedogapi.com/images/rkeqWgq4Q_1280.jpg'),
(86,'Cocker Spaniel','20 - 30','9 - 14','14 - 15','36 - 38','Bird flushing, retrieving','Sporting','12 - 15 years','Trainable, Friendly, Affectionate, Playful, Quiet, Faithful',NULL,'1lFmrzECl','https://cdn2.thedogapi.com/images/1lFmrzECl.jpg'),
(87,'Cocker Spaniel (American)','20 - 30','9 - 14','14 - 15','36 - 38','Hunting the American woodcock','Sporting','12 - 15 years','Outgoing, Sociable, Trusting, Joyful, Even Tempered, Merry',NULL,'HkRcZe547','https://cdn2.thedogapi.com/images/HkRcZe547_1280.jpg'),
(89,'Coton de Tulear','9 - 15','4 - 7','9 - 11','23 - 28','Accompanying ladies on long sea voyages, ratters onboard ship.','Non-Sporting','13 - 16 years','Affectionate, Lively, Playful, Intelligent, Trainable, Vocal',NULL,'SyviZlqNm','https://cdn2.thedogapi.com/images/SyviZlqNm_1280.jpg'),
(92,'Dalmatian','50 - 55','23 - 25','19 - 23','48 - 58','Carriage dog - trot alongside carriages to protect the occupants from banditry or other interference','Non-Sporting','10 - 13 years','Outgoing, Friendly, Energetic, Playful, Sensitive, Intelligent, Active',NULL,'SkJ3blcN7','https://cdn2.thedogapi.com/images/SkJ3blcN7_1280.jpg'),
(94,'Doberman Pinscher','66 - 88','30 - 40','24 - 28','61 - 71','Guardian','Working','10 years','Fearless, Energetic, Alert, Loyal, Obedient, Confident, Intelligent',NULL,'HyL3bl94Q','https://cdn2.thedogapi.com/images/HyL3bl94Q_1280.jpg'),
(95,'Dogo Argentino','80 - 100','36 - 45','23.5 - 27','60 - 69','Big-game hunting','Working','10 - 12 years','Friendly, Affectionate, Cheerful, Loyal, Tolerant, Protective',NULL,'S1nhWx94Q','https://cdn2.thedogapi.com/images/S1nhWx94Q_1280.jpg'),
(98,'Dutch Shepherd','50 - 70','23 - 32','22 - 24.5','56 - 62','Farms, watchdog, guard duty',NULL,'15 years','Reliable, Affectionate, Alert, Loyal, Obedient, Trainable',NULL,'BkE6Wg5E7','https://cdn2.thedogapi.com/images/BkE6Wg5E7_1280.jpg'),
(101,'English Setter','45 - 80','20 - 36','24 - 25','61 - 64','Bird setting, retrieving','Sporting','12 years','Strong Willed, Mischievous, Affectionate, Energetic, Playful, Companionable, Gentle, Hard-working, Intelligent, Eager, People-Oriented',NULL,'By4A-eqVX','https://cdn2.thedogapi.com/images/By4A-eqVX_1280.jpg'),
(102,'English Shepherd','44 - 66','20 - 30','18 - 23','46 - 58','Herding & guarding livestock, farm watch dog','Working','10 - 13 years','Kind, Energetic, Independent, Adaptable, Intelligent, Bossy',NULL,'H1QyMe5EQ','https://cdn2.thedogapi.com/images/H1QyMe5EQ_1280.jpg'),
(103,'English Springer Spaniel','35 - 50','16 - 23','19 - 20','48 - 51','Bird flushing, retrieving','Sporting','12 - 14 years','Affectionate, Cheerful, Alert, Intelligent, Attentive, Active',NULL,'Hk0Jfe5VQ','https://cdn2.thedogapi.com/images/Hk0Jfe5VQ_1280.jpg'),
(104,'English Toy Spaniel','8 - 14','4 - 6','10','25','Companion of kings','Toy','10 - 12 years','Affectionate, Reserved, Playful, Gentle, Happy, Loving',NULL,'SkIgzxqNQ','https://cdn2.thedogapi.com/images/SkIgzxqNQ_1280.jpg'),
(105,'English Toy Terrier','6 - 8','3 - 4','10 - 12','25 - 30','Rat-baiting',NULL,'12 - 13 years','Stubborn, Alert, Companionable, Intelligent, Cunning, Trainable',NULL,'SJ6eMxqEQ','https://cdn2.thedogapi.com/images/SJ6eMxqEQ_1280.jpg'),
(107,'Eurasier','40 - 70','18 - 32','20.5 - 23.5','52 - 60','Companionship','Non-Sporting','12 - 14 years','Alert, Reserved, Intelligent, Even Tempered, Watchful, Calm',NULL,'S1VWGx9Nm','https://cdn2.thedogapi.com/images/S1VWGx9Nm_1280.jpg'),
(108,'Field Spaniel','35 - 50','16 - 23','17 - 18','43 - 46','Bird flushing, retrieving','Sporting','11 - 15 years','Docile, Cautious, Sociable, Sensitive, Adaptable, Familial',NULL,'SkJfGecE7','https://cdn2.thedogapi.com/images/SkJfGecE7_1280.jpg'),
(110,'Finnish Lapphund','33 - 53','15 - 24','16 - 21','41 - 53','Herding reindeer','Herding','12 - 15 years','Friendly, Keen, Faithful, Calm, Courageous',NULL,'S1KMGg5Vm','https://cdn2.thedogapi.com/images/S1KMGg5Vm_1280.jpg'),
(111,'Finnish Spitz','23 - 28','10 - 13','15.5 - 20','39 - 51','Hunting birds, small mammals','Non-Sporting','12 - 15 years','Playful, Loyal, Independent, Intelligent, Happy, Vocal',NULL,'3PjHlQbkV','https://cdn2.thedogapi.com/images/3PjHlQbkV.jpg'),
(113,'French Bulldog','28','13','11 - 12','28 - 30','Lapdog','Non-Sporting','9 - 11 years','Playful, Affectionate, Keen, Sociable, Lively, Alert, Easygoing, Patient, Athletic, Bright',NULL,'HyWNfxc47','https://cdn2.thedogapi.com/images/HyWNfxc47_1280.jpg'),
(114,'German Pinscher','25 - 45','11 - 20','17 - 20','43 - 51','Watchdog, Hunting vermin on the farm.','Working','12 - 14 years','Spirited, Lively, Intelligent, Loving, Even Tempered, Familial',NULL,'B1u4zgqE7','https://cdn2.thedogapi.com/images/B1u4zgqE7_1280.jpg'),
(115,'German Shepherd Dog','50 - 90','23 - 41','22 - 26','56 - 66','Herding, Guard dog','Herding','10 - 13 years','Alert, Loyal, Obedient, Curious, Confident, Intelligent, Watchful, Courageous',NULL,'SJyBfg5NX','https://cdn2.thedogapi.com/images/SJyBfg5NX_1280.jpg'),
(116,'German Shorthaired Pointer','45 - 70','20 - 32','21 - 25','53 - 64','General hunting','Sporting','12 - 14 years','Boisterous, Bold, Affectionate, Intelligent, Cooperative, Trainable',NULL,'SJqBMg5Nm','https://cdn2.thedogapi.com/images/SJqBMg5Nm_1280.jpg'),
(119,'Giant Schnauzer','65 - 90','29 - 41','23.5 - 27.5','60 - 70','Herding, guarding','Working','10 - 12 years','Strong Willed, Kind, Loyal, Intelligent, Dominant, Powerful',NULL,'H1NIzlcV7','https://cdn2.thedogapi.com/images/H1NIzlcV7_1280.jpg'),
(120,'Glen of Imaal Terrier','32 - 40','15 - 18','12.5 - 14','32 - 36','Rid the home and farm of vermin, and hunt badger and fox','Terrier','12 - 15 years','Spirited, Agile, Loyal, Gentle, Active, Courageous',NULL,'H1oLMe94m','https://cdn2.thedogapi.com/images/H1oLMe94m_1280.jpg'),
(121,'Golden Retriever','55 - 75','25 - 34','21.5 - 24','55 - 61','Retrieving','Sporting','10 - 12 years','Intelligent, Kind, Reliable, Friendly, Trustworthy, Confident',NULL,'HJ7Pzg5EQ','https://cdn2.thedogapi.com/images/HJ7Pzg5EQ_1280.jpg'),
(123,'Gordon Setter','45 - 80','20 - 36','23 - 27','58 - 69','Find and point gamebirds','Sporting','10 - 12 years','Fearless, Alert, Loyal, Confident, Gay, Eager',NULL,'SJ5vzx5NX','https://cdn2.thedogapi.com/images/SJ5vzx5NX_1280.jpg'),
(124,'Great Dane','110 - 190','50 - 86','28 - 32','71 - 81','Hunting & holding boars, Guardian','Working','7 - 10 years','Friendly, Devoted, Reserved, Gentle, Confident, Loving',NULL,'B1Edfl9NX','https://cdn2.thedogapi.com/images/B1Edfl9NX_1280.jpg'),
(125,'Great Pyrenees','85 - 115','39 - 52','25 - 32','64 - 81','Sheep guardian','Working','10 - 12 years','Strong Willed, Fearless, Affectionate, Patient, Gentle, Confident',NULL,'B12uzg9V7','https://cdn2.thedogapi.com/images/B12uzg9V7_1280.png'),
(127,'Greyhound','50 - 70','23 - 32','27 - 30','69 - 76','Coursing hares','Hound','10 - 13 years','Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered',NULL,'ryNYMx94X','https://cdn2.thedogapi.com/images/ryNYMx94X_1280.jpg'),
(128,'Griffon Bruxellois','12','5','9 - 11','23 - 28','Hunt and kill vermin in stables',NULL,'10 – 15 years','Self-important, Inquisitive, Alert, Companionable, Sensitive, Watchful',NULL,'ryoYGec4Q','https://cdn2.thedogapi.com/images/ryoYGec4Q_1280.jpg'),
(129,'Harrier','40 - 60','18 - 27','18 - 22','46 - 56','Hunting hares by trailing them','Hound','12 - 15 years','Outgoing, Friendly, Cheerful, Sweet-Tempered, Tolerant, Active',NULL,'B1IcfgqE7','https://cdn2.thedogapi.com/images/B1IcfgqE7_1280.jpg'),
(130,'Havanese','7 - 13','3 - 6','8.5 - 11.5','22 - 29','Companionship','Toy','14 - 15 years','Affectionate, Responsive, Playful, Companionable, Gentle, Intelligent',NULL,'rkXiGl9V7','https://cdn2.thedogapi.com/images/rkXiGl9V7_1280.jpg'),
(134,'Irish Setter','35 - 70','16 - 32','24 - 27','61 - 69','Bird setting, retrieving','Sporting','10 - 11 years','Affectionate, Energetic, Lively, Independent, Playful, Companionable',NULL,'S1osGeqVm','https://cdn2.thedogapi.com/images/S1osGeqVm_1280.jpg'),
(135,'Irish Terrier','25 - 27','11 - 12','18','46',NULL,'Terrier','12 - 16 years','Respectful, Lively, Intelligent, Dominant, Protective, Trainable',NULL,'By-hGecVX','https://cdn2.thedogapi.com/images/By-hGecVX_1280.jpg'),
(137,'Irish Wolfhound','105 - 180','48 - 82','30 - 35','76 - 89','Coursing wolves, elk','Hound','6 - 8 years','Sweet-Tempered, Loyal, Dignified, Patient, Thoughtful, Generous',NULL,'Hyd2zgcEX','https://cdn2.thedogapi.com/images/Hyd2zgcEX_1280.jpg'),
(138,'Italian Greyhound','7 - 15','3 - 7','13 - 15','33 - 38','Lapdog','Toy','12 - 15 years','Mischievous, Affectionate, Agile, Athletic, Companionable, Intelligent',NULL,'SJAnzg9NX','https://cdn2.thedogapi.com/images/SJAnzg9NX_1280.jpg'),
(140,'Japanese Chin','4 - 9','2 - 4','8 - 11','20 - 28','Lapdog','Toy','12 - 14 years','Alert, Loyal, Independent, Intelligent, Loving, Cat-like',NULL,'r1H6feqEm','https://cdn2.thedogapi.com/images/r1H6feqEm_1280.jpg'),
(141,'Japanese Spitz','15 - 19','7 - 9','12 - 15','30 - 38','Companion',NULL,'10 – 16 years','Affectionate, Obedient, Playful, Companionable, Intelligent, Proud',NULL,'HksaMxqNX','https://cdn2.thedogapi.com/images/HksaMxqNX_1280.jpg'),
(142,'Keeshond','35 - 45','16 - 20','17 - 18','43 - 46','Barge watchdog','Non-Sporting','12 - 15 years','Agile, Obedient, Playful, Quick, Sturdy, Bright',NULL,'S1GAGg9Vm','https://cdn2.thedogapi.com/images/S1GAGg9Vm_1280.jpg'),
(144,'Komondor','80 - 100','36 - 45','25.5 - 27.5','65 - 70','Sheep guardian','Working','10 - 12 years','Steady, Fearless, Affectionate, Independent, Gentle, Calm',NULL,'Bko0fl547','https://cdn2.thedogapi.com/images/Bko0fl547_1280.jpg'),
(145,'Kooikerhondje','20 - 30','9 - 14','14 - 16','36 - 41','Luring ducks into traps - \"tolling\"','Sporting','12 - 15 years','Benevolent, Agile, Alert, Intelligent, Active, Territorial',NULL,'kOMy84GQE','https://cdn2.thedogapi.com/images/kOMy84GQE.jpg'),
(147,'Kuvasz','70 - 115','32 - 52','26 - 30','66 - 76','Guardian, hunting large game','Working','8 - 10 years','Clownish, Loyal, Patient, Independent, Intelligent, Protective',NULL,'BykZ7ecVX','https://cdn2.thedogapi.com/images/BykZ7ecVX_1280.jpg'),
(149,'Labrador Retriever','55 - 80','25 - 36','21.5 - 24.5','55 - 62','Water retrieving','Sporting','10 - 13 years','Kind, Outgoing, Agile, Gentle, Intelligent, Trusting, Even Tempered',NULL,'B1uW7l5VX','https://cdn2.thedogapi.com/images/B1uW7l5VX_1280.jpg'),
(151,'Lagotto Romagnolo','24 - 35','11 - 16','16 - 19','41 - 48','Water retrieval dog in the marshes of Romagna','Sporting','14 - 16 years','Keen, Loyal, Companionable, Loving, Active, Trainable',NULL,'ryzzmgqE7','https://cdn2.thedogapi.com/images/ryzzmgqE7_1280.jpg'),
(153,'Lancashire Heeler','6 - 13','3 - 6','10 - 12','25 - 30','Cattle herding, Ratting, Driving cattle to market.',NULL,'12 – 15 years','Clever, Friendly, Alert, Intelligent',NULL,'S1RGml5Em','https://cdn2.thedogapi.com/images/S1RGml5Em_1280.jpg'),
(155,'Leonberger','120 - 170','54 - 77','25.5 - 31.5','65 - 80','Guardian, appearance.','Working','6 - 8 years','Obedient, Fearless, Loyal, Companionable, Adaptable, Loving',NULL,'ByrmQlqVm','https://cdn2.thedogapi.com/images/ByrmQlqVm_1280.jpg'),
(156,'Lhasa Apso','12 - 18','5 - 8','10 - 11','25 - 28','Guarding inside the home, companion','Non-Sporting','12 - 15 years','Steady, Fearless, Friendly, Devoted, Assertive, Spirited, Energetic, Lively, Alert, Obedient, Playful, Intelligent',NULL,'SJp7Qe5EX','https://cdn2.thedogapi.com/images/SJp7Qe5EX_1280.jpg'),
(161,'Maltese','4 - 7','2 - 3','8 - 10','20 - 25','Lapdog','Toy','15 - 18 years','Playful, Docile, Fearless, Affectionate, Sweet-Tempered, Lively, Responsive, Easygoing, Gentle, Intelligent, Active',NULL,'B1SV7gqN7','https://cdn2.thedogapi.com/images/B1SV7gqN7_1280.jpg'),
(165,'Miniature American Shepherd','20 - 40','9 - 18','13 - 18','33 - 46',NULL,'Herding','12 - 15 years','Energetic, Loyal, Intelligent, Trainable',NULL,'BkHHQgcN7','https://cdn2.thedogapi.com/images/BkHHQgcN7_1280.jpg'),
(167,'Miniature Pinscher','8 - 11','4 - 5','10 - 12.5','25 - 32','Small vermin hunting','Toy','15 years','Clever, Outgoing, Friendly, Energetic, Responsive, Playful',NULL,'Hy3H7g94X','https://cdn2.thedogapi.com/images/Hy3H7g94X_1280.jpg'),
(168,'Miniature Schnauzer','11 - 20','5 - 9','12 - 14','30 - 36','Ratting','Terrier','12 - 14 years','Fearless, Friendly, Spirited, Alert, Obedient, Intelligent',NULL,'SJIUQl9NX','https://cdn2.thedogapi.com/images/SJIUQl9NX_1280.jpg'),
(171,'Newfoundland','100 - 150','45 - 68','26 - 28','66 - 71','All purpose water dog, fishing aid','Working','8 - 10 years','Sweet-Tempered, Gentle, Trainable',NULL,'Sk4DXl54m','https://cdn2.thedogapi.com/images/Sk4DXl54m_1280.jpg'),
(172,'Norfolk Terrier','11 - 12','5 - 5','9 - 10','23 - 25','Ratting, fox bolting','Terrier','12 - 15 years','Self-confidence, Fearless, Spirited, Companionable, Happy, Lovable',NULL,'B1ADQg94X','https://cdn2.thedogapi.com/images/B1ADQg94X_1280.jpg'),
(176,'Norwich Terrier','11 - 12','5 - 5','10','25','Ratting, fox bolting','Terrier','12 - 15 years','Hardy, Affectionate, Energetic, Sensitive, Intelligent',NULL,'BkgKXlqE7','https://cdn2.thedogapi.com/images/BkgKXlqE7_1280.jpg'),
(177,'Nova Scotia Duck Tolling Retriever','35 - 50','16 - 23','17 - 21','43 - 53',NULL,'Sporting','12 - 14 years','Outgoing, Alert, Patient, Intelligent, Loving',NULL,'SyYtQe5V7','https://cdn2.thedogapi.com/images/SyYtQe5V7_1280.jpg'),
(178,'Old English Sheepdog','60 - 100','27 - 45','21','53','Driving sheep, cattle','Herding','10 - 12 years','Sociable, Bubbly, Playful, Adaptable, Intelligent, Loving',NULL,'HkZ57lq4m','https://cdn2.thedogapi.com/images/HkZ57lq4m_1280.jpg'),
(179,'Olde English Bulldogge','65 – 85','NaN','15 - 19','38 - 48',NULL,NULL,'9 – 14 years','Friendly, Alert, Confident, Loving, Courageous, Strong',NULL,'B1d5me547','https://cdn2.thedogapi.com/images/B1d5me547_1280.jpg'),
(181,'Papillon','3 - 12','1 - 5','8 - 11','20 - 28','Lapdog','Toy','13 - 17 years','Hardy, Friendly, Energetic, Alert, Intelligent, Happy',NULL,'SkJj7e547','https://cdn2.thedogapi.com/images/SkJj7e547_1280.jpg'),
(183,'Pekingese','14','6','6 - 9','15 - 23','Lapdog','Toy','14 - 18 years','Opinionated, Good-natured, Stubborn, Affectionate, Aggressive, Intelligent',NULL,'ByIiml9Nm','https://cdn2.thedogapi.com/images/ByIiml9Nm_1280.jpg'),
(184,'Pembroke Welsh Corgi','25 - 30','11 - 14','10 - 12','25 - 30','Driving stock to market in northern Wales','Herding','12 - 14 years','Tenacious, Outgoing, Friendly, Bold, Playful, Protective',NULL,'rJ6iQeqEm','https://cdn2.thedogapi.com/images/rJ6iQeqEm_1280.jpg'),
(185,'Perro de Presa Canario','88 - 110','40 - 50','22 - 25.5','56 - 65',NULL,'Working','10 - 12 years','Strong Willed, Suspicious, Gentle, Dominant, Calm',NULL,'S1V3Qeq4X','https://cdn2.thedogapi.com/images/S1V3Qeq4X_1280.jpg'),
(188,'Pharaoh Hound','40 - 60','18 - 27','21 - 25','53 - 64','Hunting rabbits','Hound','12 - 14 years','Affectionate, Sociable, Playful, Intelligent, Active, Trainable',NULL,'Byz6mgqEQ','https://cdn2.thedogapi.com/images/Byz6mgqEQ_1280.jpg'),
(189,'Plott','40 - 60','18 - 27','20 - 25','51 - 64','Hunting big-game like Boar.','Hound','12 - 14 years','Bold, Alert, Loyal, Intelligent',NULL,'B1i67l5VQ','https://cdn2.thedogapi.com/images/B1i67l5VQ_1280.jpg'),
(193,'Pomeranian','3 - 7','1 - 3','8 - 12','20 - 30','Companion','Toy','15 years','Extroverted, Friendly, Sociable, Playful, Intelligent, Active',NULL,'HJd0XecNX','https://cdn2.thedogapi.com/images/HJd0XecNX_1280.jpg'),
(196,'Poodle (Miniature)','15 - 17','7 - 8','11 - 15','28 - 38',NULL,NULL,'12 – 15 years',NULL,NULL,'Hkxk4ecVX','https://cdn2.thedogapi.com/images/Hkxk4ecVX_1280.jpg'),
(197,'Poodle (Toy)','6 - 9','3 - 4','9 - 11','23 - 28',NULL,NULL,'18 years',NULL,NULL,'rJFJVxc4m','https://cdn2.thedogapi.com/images/rJFJVxc4m_1280.jpg'),
(201,'Pug','14 - 18','6 - 8','10 - 12','25 - 30','Lapdog','Toy','12 - 14 years','Docile, Clever, Charming, Stubborn, Sociable, Playful, Quiet, Attentive',NULL,'HyJvcl9N7','https://cdn2.thedogapi.com/images/HyJvcl9N7_1280.jpg'),
(204,'Puli','25 - 35','11 - 16','16 - 17','41 - 43','Herding','Herding','12 - 16 Years years','Energetic, Agile, Loyal, Obedient, Intelligent, Faithful',NULL,'ryPgVl5N7','https://cdn2.thedogapi.com/images/ryPgVl5N7_1280.jpg'),
(205,'Pumi','18 - 33','8 - 15','15 - 18.5','38 - 47',NULL,'Herding','13 - 15 years','Lively, Reserved, Intelligent, Active, Protective, Vocal',NULL,'SyRe4xcN7','https://cdn2.thedogapi.com/images/SyRe4xcN7_1280.jpg'),
(207,'Rat Terrier','8 - 25','4 - 11','10 - 13','25 - 33',NULL,'Terrier','12 - 18 years','Affectionate, Lively, Inquisitive, Alert, Intelligent, Loving',NULL,'HkXWNl9E7','https://cdn2.thedogapi.com/images/HkXWNl9E7_1280.jpg'),
(208,'Redbone Coonhound','45 - 80','20 - 36','21 - 27','53 - 69','Hunting raccoon, deer, bear, and cougar.','Hound','10 - 12 years','Affectionate, Energetic, Independent, Companionable, Familial, Unflappable',NULL,'HJMzEl5N7','https://cdn2.thedogapi.com/images/HJMzEl5N7_1280.jpg'),
(209,'Rhodesian Ridgeback','75 - 80','34 - 36','24 - 27','61 - 69','Big game hunting, guarding','Hound','10 - 12 years','Strong Willed, Mischievous, Loyal, Dignified, Sensitive, Intelligent',NULL,'By9zNgqE7','https://cdn2.thedogapi.com/images/By9zNgqE7_1280.jpg'),
(210,'Rottweiler','75 - 110','34 - 50','22 - 27','56 - 69','Cattle drover, guardian, draft','Working','8 - 10 years','Steady, Good-natured, Fearless, Devoted, Alert, Obedient, Confident, Self-assured, Calm, Courageous',NULL,'r1xXEgcNX','https://cdn2.thedogapi.com/images/r1xXEgcNX_1280.jpg'),
(211,'Russian Toy','3 - 6','1 - 3','7.5 - 10.5','19 - 27',NULL,'Toy','10 - 12 years',NULL,NULL,'HkP7Vxc4Q','https://cdn2.thedogapi.com/images/HkP7Vxc4Q_1280.jpg'),
(212,'Saint Bernard','130 - 180','59 - 82','25.5 - 27.5','65 - 70','Draft, search, rescue','Working','7 - 10 years','Friendly, Lively, Gentle, Watchful, Calm',NULL,'_Qf9nfRzL','https://cdn2.thedogapi.com/images/_Qf9nfRzL.png'),
(213,'Saluki','35 - 65','16 - 29','23 - 28','58 - 71','Coursing gazelle and hare','Hound','12 - 14 years','Aloof, Reserved, Intelligent, Quiet',NULL,'fjFIuehNo','https://cdn2.thedogapi.com/images/fjFIuehNo.jpg'),
(214,'Samoyed','50 - 60','23 - 27','19 - 23.5','48 - 60','Herding reindeer, guardian, draft','Working','12 - 14 years','Stubborn, Friendly, Sociable, Lively, Alert, Playful',NULL,'S1T8Ee9Nm','https://cdn2.thedogapi.com/images/S1T8Ee9Nm_1280.jpg'),
(216,'Schipperke','10 - 16','5 - 7','10 - 13','25 - 33','Barge watchdog','Non-Sporting','13 - 15 years','Fearless, Agile, Curious, Independent, Confident, Faithful',NULL,'SyBvVgc47','https://cdn2.thedogapi.com/images/SyBvVgc47_1280.jpg'),
(218,'Scottish Deerhound','70 - 130','32 - 59','28 - 32','71 - 81','Coursing deer','Hound','8 - 10 years','Docile, Friendly, Dignified, Gentle',NULL,'SkNjqx9NQ','https://cdn2.thedogapi.com/images/SkNjqx9NQ_1280.jpg'),
(219,'Scottish Terrier','18 - 22','8 - 10','10','25','Vermin hunting','Terrier','11 - 13 years','Feisty, Alert, Independent, Playful, Quick, Self-assured',NULL,'Bklnce5NX','https://cdn2.thedogapi.com/images/Bklnce5NX_1280.jpg'),
(221,'Shetland Sheepdog','30','14','13 - 16','33 - 41','Sheep herding','Herding','12 - 14 years','Affectionate, Lively, Responsive, Alert, Loyal, Reserved, Playful, Gentle, Intelligent, Active, Trainable, Strong',NULL,'rJa29l9E7','https://cdn2.thedogapi.com/images/rJa29l9E7_1280.jpg'),
(222,'Shiba Inu','17 - 23','8 - 10','13.5 - 16.5','34 - 42','Hunting in the mountains of Japan, Alert Watchdog','Non-Sporting','12 - 16 years','Charming, Fearless, Keen, Alert, Confident, Faithful',NULL,'Zn3IjPX3f','https://cdn2.thedogapi.com/images/Zn3IjPX3f.jpg'),
(223,'Shih Tzu','9 - 16','4 - 7','8 - 11','20 - 28','Lapdog','Toy','10 - 18 years','Clever, Spunky, Outgoing, Friendly, Affectionate, Lively, Alert, Loyal, Independent, Playful, Gentle, Intelligent, Happy, Active, Courageous',NULL,'BkrJjgcV7','https://cdn2.thedogapi.com/images/BkrJjgcV7_1280.jpg'),
(225,'Shiloh Shepherd','120 - 140','54 - 64','26 - 30','66 - 76','Swimming, Carrying backpacks, Pulling carts or sleds',NULL,'9 – 14 years','Outgoing, Loyal, Companionable, Gentle, Loving, Trainable',NULL,'SJJxjecEX','https://cdn2.thedogapi.com/images/SJJxjecEX_1280.jpg'),
(226,'Siberian Husky','35 - 60','16 - 27','20 - 23.5','51 - 60','Sled pulling','Working','12 years','Outgoing, Friendly, Alert, Gentle, Intelligent',NULL,'S17ZilqNm','https://cdn2.thedogapi.com/images/S17ZilqNm_1280.jpg'),
(228,'Silky Terrier','8 - 10','4 - 5','9 - 10','23 - 25','Small vermin hunting, companionship','Toy','12 - 15 years','Friendly, Responsive, Inquisitive, Alert, Quick, Joyful',NULL,'ByzGsl5Nm','https://cdn2.thedogapi.com/images/ByzGsl5Nm_1280.jpg'),
(232,'Smooth Fox Terrier','up - 18','NaN - 8','15.5','39','Fox bolting','Terrier','12 - 14 years','Fearless, Affectionate, Alert, Playful, Intelligent, Active',NULL,'Syszjx9Em','https://cdn2.thedogapi.com/images/Syszjx9Em_1280.jpg'),
(233,'Soft Coated Wheaten Terrier','30 - 40','14 - 18','16 - 18','41 - 46','Vermin hunting, guarding, all-around farm helper','Terrier','12 - 15 years','Affectionate, Spirited, Energetic, Playful, Intelligent, Faithful',NULL,'HJHmix5NQ','https://cdn2.thedogapi.com/images/HJHmix5NQ_1280.jpg'),
(235,'Spanish Water Dog','30 - 50','14 - 23','16 - 20','41 - 51','Herding flocks of sheep and goats from one pasture to another','Sporting','12 - 15 years','Trainable, Diligent, Affectionate, Loyal, Athletic, Intelligent',NULL,'HJf4jl9VX','https://cdn2.thedogapi.com/images/HJf4jl9VX_1280.jpg'),
(236,'Spinone Italiano','61 - 85','28 - 39','22.5 - 27.5','57 - 70',NULL,'Sporting','10 - 12 years','Docile, Friendly, Affectionate, Loyal, Patient, Gentle',NULL,'rk5Eoe5Nm','https://cdn2.thedogapi.com/images/rk5Eoe5Nm_1280.jpg'),
(238,'Staffordshire Bull Terrier','24 - 38','11 - 17','14 - 16','36 - 41','','Terrier','12 - 14 years','Reliable, Fearless, Bold, Affectionate, Loyal, Intelligent, Courageous',NULL,'H1zSie9V7','https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg'),
(239,'Standard Schnauzer','30 - 50','14 - 23','17.5 - 19.5','44 - 50','Ratting, guarding','Working','13 - 15 years','Trainable, Good-natured, Devoted, Lively, Playful, Intelligent',NULL,'tmzeu6ID_','https://cdn2.thedogapi.com/images/tmzeu6ID_.jpg'),
(242,'Swedish Vallhund','20 - 30','9 - 14','11.5 - 13.5','29 - 34',NULL,'Herding','12 - 14 years','Fearless, Friendly, Energetic, Alert, Intelligent, Watchful',NULL,'HJ-Dix94Q','https://cdn2.thedogapi.com/images/HJ-Dix94Q_1280.jpg'),
(243,'Thai Ridgeback','35 - 55','16 - 25','20 - 24','51 - 61',NULL,'Hound','10 - 12 years','Protective, Loyal, Independent, Intelligent, Loving, Familial',NULL,'zv89hR-O8','https://cdn2.thedogapi.com/images/zv89hR-O8.jpg'),
(244,'Tibetan Mastiff','85 - 140','39 - 64','24 - 26','61 - 66',NULL,'Working','10 - 14 years','Strong Willed, Tenacious, Aloof, Stubborn, Intelligent, Protective',NULL,'SkM9sec47','https://cdn2.thedogapi.com/images/SkM9sec47_1280.jpg'),
(245,'Tibetan Spaniel','9 - 15','4 - 7','10','25',NULL,'Non-Sporting','12 - 15 years','Willful, Aloof, Assertive, Independent, Playful, Intelligent, Happy',NULL,'Hyjcol947','https://cdn2.thedogapi.com/images/Hyjcol947_1280.jpg'),
(246,'Tibetan Terrier','20 - 24','9 - 11','14 - 17','36 - 43','Good luck charms, mascots, watchdogs, herding dogs, and companions','Non-Sporting','12 - 15 years','Affectionate, Energetic, Amiable, Reserved, Gentle, Sensitive',NULL,'6f5n_42mB','https://cdn2.thedogapi.com/images/6f5n_42mB.jpg'),
(248,'Toy Fox Terrier','4 - 9','2 - 4','8 - 11','20 - 28',NULL,'Toy','12 - 15 years','Friendly, Spirited, Alert, Loyal, Playful, Intelligent',NULL,'B17ase9V7','https://cdn2.thedogapi.com/images/B17ase9V7_1280.jpg'),
(250,'Treeing Walker Coonhound','45 - 80','20 - 36','20 - 27','51 - 69',NULL,'Hound','10 - 13 years','Clever, Affectionate, Confident, Intelligent, Loving, Trainable',NULL,'SkRpsgc47','https://cdn2.thedogapi.com/images/SkRpsgc47_1280.jpg'),
(251,'Vizsla','50 - 65','23 - 29','21 - 24','53 - 61','Pointing and trailing','Sporting','10 - 14 years','Affectionate, Energetic, Loyal, Gentle, Quiet',NULL,'r1o0jx9Em','https://cdn2.thedogapi.com/images/r1o0jx9Em_1280.jpg'),
(253,'Weimaraner','55 - 90','25 - 41','23 - 27','58 - 69','Large game trailing and versatile gundog','Sporting','12 - 15 years','Steady, Aloof, Stubborn, Energetic, Alert, Intelligent, Powerful, Fast',NULL,'SyU12l9V7','https://cdn2.thedogapi.com/images/SyU12l9V7_1280.jpg'),
(254,'Welsh Springer Spaniel','35 - 55','16 - 25','17 - 19','43 - 48','Flushing and retrieving birds','Sporting','12 - 15 years','Stubborn, Friendly, Affectionate, Loyal, Playful, Active',NULL,'BJ1gnx5Vm','https://cdn2.thedogapi.com/images/BJ1gnx5Vm_1280.jpg'),
(256,'West Highland White Terrier','15 - 22','7 - 10','10 - 11','25 - 28','Fox, badger, vermin hunting','Terrier','15 - 20 years','Hardy, Friendly, Alert, Independent, Gay, Active, Courageous',NULL,'Bkdx2g5Em','https://cdn2.thedogapi.com/images/Bkdx2g5Em_1280.jpg'),
(257,'Whippet','25 - 35','11 - 16','18 - 22','46 - 56','Coursing, racing','Hound','12 - 15 years','Friendly, Affectionate, Lively, Gentle, Intelligent, Quiet',NULL,'Hyv-ne94m','https://cdn2.thedogapi.com/images/Hyv-ne94m_1280.jpg'),
(258,'White Shepherd','60 - 85','27 - 39','22 - 25','56 - 64',NULL,NULL,'12 – 14 years','Self-confidence, Aloof, Fearless, Alert, Companionable, Eager',NULL,'r14M3e9E7','https://cdn2.thedogapi.com/images/r14M3e9E7_1280.jpg'),
(259,'Wire Fox Terrier','15 - 19','7 - 9','13 - 16','33 - 41','Vermin hunting, fox bolting',NULL,'13 – 14 years','Fearless, Friendly, Bold, Keen, Alert, Quick',NULL,'SJ6f2g9EQ','https://cdn2.thedogapi.com/images/SJ6f2g9EQ_1280.jpg'),
(260,'Wirehaired Pointing Griffon','45 - 70','20 - 32','20 - 24','51 - 61','Gundog, \"swamp-tromping\", Flushing, pointing, and retrieving water fowl & game birds','Sporting','12 - 14 years','Loyal, Gentle, Vigilant, Trainable, Proud',NULL,'Bkam2l9Vm','https://cdn2.thedogapi.com/images/Bkam2l9Vm_1280.jpg'),
(261,'Wirehaired Vizsla','45 - 65','20 - 29','21.5 - 25','55 - 64',NULL,'Sporting','12 - 14 years',NULL,NULL,'r1I4hl5Em','https://cdn2.thedogapi.com/images/r1I4hl5Em_1280.jpg'),
(262,'Xoloitzcuintli','9 - 31','4 - 14','10 - 23','25 - 58',NULL,'Non-Sporting','12 - 14 years','Cheerful, Alert, Companionable, Intelligent, Protective, Calm',NULL,'HkNS3gqEm','https://cdn2.thedogapi.com/images/HkNS3gqEm_1280.jpg'),
(264,'Yorkshire Terrier','4 - 7','2 - 3','8 - 9','20 - 23','Small vermin hunting','Toy','12 - 16 years','Bold, Independent, Confident, Intelligent, Courageous',NULL,'B12BnxcVQ','https://cdn2.thedogapi.com/images/B12BnxcVQ_1280.jpg');
/*!40000 ALTER TABLE `breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popularity`
--

DROP TABLE IF EXISTS `popularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popularity` (
  `country_code` varchar(2) NOT NULL,
  `flag_url` varchar(255) DEFAULT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `dog_breeds` text DEFAULT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popularity`
--

LOCK TABLES `popularity` WRITE;
/*!40000 ALTER TABLE `popularity` DISABLE KEYS */;
INSERT INTO `popularity` VALUES
('AU','https://restcountries.com/v3/flags/au.png','Australia','11,26,37,48,58,69,80,95,130,145'),
('BR','https://restcountries.com/v3/flags/br.png','Brazil','223,193,31,264,113,149,196'),
('CA','https://restcountries.com/v3/flags/ca.png','Canada','5,20,30,43,60,77,92,115,140,155'),
('DE','https://restcountries.com/v3/flags/de.png','Germany','7,22,37,41,59,62,79,88,110,150'),
('ES','https://restcountries.com/v3/flags/es.png','Spain','12,25,33,47,56,68,79,84,90,105'),
('FR','https://restcountries.com/v3/flags/fr.png','France','1,39,184,13,283,194,12,56,78,99'),
('GB','https://restcountries.com/v3/flags/gb.png','United Kingdom','3,16,27,35,48,59,70,81,92,105'),
('IT','https://restcountries.com/v3/flags/it.png','Italy','8,18,29,46,63,74,85,94,120,135'),
('JP','https://restcountries.com/v3/flags/jp.png','Japan','14,28,39,51,64,73,89,101,118,130'),
('US','https://restcountries.com/v3/flags/us.png','United States','101,15,39,54,78,120,142,189,200,230');
/*!40000 ALTER TABLE `popularity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dogcatalog'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBreedsByCountry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBreedsByCountry`(IN countryCode VARCHAR(2))
BEGIN

DECLARE breedList TEXT;
    DECLARE breed VARCHAR(255);
    DECLARE i INT DEFAULT 1;
    DECLARE breedCount INT;


CREATE TEMPORARY TABLE IF NOT EXISTS temp_breeds (
        name VARCHAR(255)
    );


SELECT dog_breeds INTO breedList
    FROM popularity
    WHERE country_code = countryCode;


IF breedList IS NOT NULL THEN

SET i = 1;


WHILE CHAR_LENGTH(breedList) > 0 DO
            SET breed = SUBSTRING_INDEX(breedList, ',', 1);
            INSERT INTO temp_breeds (name) VALUES (TRIM(breed));
            SET breedList = SUBSTRING(breedList, CHAR_LENGTH(breed) + 2);
            SET i = i + 1;
        END WHILE;


SELECT name FROM temp_breeds;


DROP TEMPORARY TABLE temp_breeds;
    ELSE
        SELECT 'No breeds found for the given country code' AS message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBreedsByPopularity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBreedsByPopularity`(IN countryCode VARCHAR(2))
BEGIN
    SELECT * FROM breeds where find_in_set(id,(select dog_breeds from popularity where country_code = countryCode));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertBreed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBreed`(
    IN breedId INT,
    IN breedName VARCHAR(255),
    IN weightImperial VARCHAR(255),
    IN weightMetric VARCHAR(255),
    IN heightImperial VARCHAR(255),
    IN heightMetric VARCHAR(255),
    IN bredFor VARCHAR(255),
    IN breedGroup VARCHAR(255),
    IN lifeSpan VARCHAR(255),
    IN temperament VARCHAR(255),
    IN origin VARCHAR(255),
    IN referenceImageId VARCHAR(255),
    IN imageUrl VARCHAR(255)
)
BEGIN

IF NOT EXISTS (SELECT 1 FROM breeds WHERE name = breedName) THEN

INSERT INTO breeds (
            id, name, weight_imperial, weight_metric, height_imperial, height_metric,
            bred_for, breed_group, life_span, temperament, origin,
            reference_image_id, image_url
        ) VALUES (
            breedId, breedName, weightImperial, weightMetric, heightImperial, heightMetric,
            bredFor, breedGroup, lifeSpan, temperament, origin,
            referenceImageId, imageUrl
        );
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-09-02 20:25:08
