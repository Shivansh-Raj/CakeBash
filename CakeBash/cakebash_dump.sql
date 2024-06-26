-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cakebash
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Customers');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,65),(2,1,66),(3,1,67),(4,1,68);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add database',1,'add_database'),(2,'Can change database',1,'change_database'),(3,'Can delete database',1,'delete_database'),(4,'Can view database',1,'view_database'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add database2',8,'add_database2'),(30,'Can change database2',8,'change_database2'),(31,'Can delete database2',8,'delete_database2'),(32,'Can view database2',8,'view_database2'),(33,'Can add orders_database',8,'add_orders_database'),(34,'Can change orders_database',8,'change_orders_database'),(35,'Can delete orders_database',8,'delete_orders_database'),(36,'Can view orders_database',8,'view_orders_database'),(37,'Can add muffins',9,'add_muffins'),(38,'Can change muffins',9,'change_muffins'),(39,'Can delete muffins',9,'delete_muffins'),(40,'Can view muffins',9,'view_muffins'),(41,'Can add pastries',10,'add_pastries'),(42,'Can change pastries',10,'change_pastries'),(43,'Can delete pastries',10,'delete_pastries'),(44,'Can view pastries',10,'view_pastries'),(45,'Can add cakes',8,'add_cakes'),(46,'Can change cakes',8,'change_cakes'),(47,'Can delete cakes',8,'delete_cakes'),(48,'Can view cakes',8,'view_cakes'),(49,'Can add segment',11,'add_segment'),(50,'Can change segment',11,'change_segment'),(51,'Can delete segment',11,'delete_segment'),(52,'Can view segment',11,'view_segment'),(53,'Can add menu',12,'add_menu'),(54,'Can change menu',12,'change_menu'),(55,'Can delete menu',12,'delete_menu'),(56,'Can view menu',12,'view_menu'),(57,'Can add category',13,'add_category'),(58,'Can change category',13,'change_category'),(59,'Can delete category',13,'delete_category'),(60,'Can view category',13,'view_category'),(61,'Can add trying',14,'add_trying'),(62,'Can change trying',14,'change_trying'),(63,'Can delete trying',14,'delete_trying'),(64,'Can view trying',14,'view_trying'),(65,'Can add orders',15,'add_orders'),(66,'Can change orders',15,'change_orders'),(67,'Can delete orders',15,'delete_orders'),(68,'Can view orders',15,'view_orders'),(69,'Can add user',16,'add_user'),(70,'Can change user',16,'change_user'),(71,'Can delete user',16,'delete_user'),(72,'Can view user',16,'view_user'),(73,'Can add user_def',16,'add_user_def'),(74,'Can change user_def',16,'change_user_def'),(75,'Can delete user_def',16,'delete_user_def'),(76,'Can view user_def',16,'view_user_def'),(77,'Can add review',17,'add_review'),(78,'Can change review',17,'change_review'),(79,'Can delete review',17,'delete_review'),(80,'Can view review',17,'view_review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$600000$5BzQjG0FYB2XWwZQCne760$pPaEl06kpuDkSeBd6Ji8YFqiidNO4X5hb4TJ8Mu7FE4=','2024-06-26 05:20:07.093635',1,'levi','','','',1,1,'2024-01-17 14:01:05.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,3,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (2,3,1),(3,3,2),(4,3,3),(5,3,4),(6,3,5),(7,3,6),(8,3,7),(9,3,8),(10,3,9),(11,3,10),(12,3,11),(13,3,12),(14,3,13),(15,3,14),(16,3,15),(17,3,16),(18,3,17),(19,3,18),(20,3,19),(21,3,20),(22,3,21),(23,3,22),(24,3,23),(25,3,24),(26,3,25),(27,3,26),(28,3,27),(29,3,28),(30,3,29),(31,3,30),(32,3,31),(33,3,32),(34,3,33),(35,3,34),(36,3,35),(37,3,36),(38,3,37),(39,3,38),(40,3,39),(41,3,40),(42,3,41),(43,3,42),(44,3,43),(45,3,44),(46,3,45),(47,3,46),(48,3,47),(49,3,48),(50,3,49),(51,3,50),(52,3,51),(53,3,52),(54,3,53),(55,3,54),(56,3,55),(57,3,56),(58,3,57),(59,3,58),(60,3,59),(61,3,60),(62,3,61),(63,3,62),(64,3,63),(65,3,64),(66,3,65),(67,3,66),(68,3,67),(69,3,68),(70,3,69),(71,3,70),(72,3,71),(73,3,72),(74,3,73),(75,3,74),(76,3,75),(77,3,76);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-01-17 14:01:48.966862','2','Cake',3,'',5,3),(2,'2024-01-17 14:01:48.971358','1','cakebash',3,'',5,3),(3,'2024-02-22 17:25:49.337897','1','Shivansh_Rajdehl',1,'[{\"added\": {}}]',16,3),(4,'2024-02-22 17:25:54.127298','2','Shivansh Rajdehl',1,'[{\"added\": {}}]',16,3),(5,'2024-02-22 17:26:01.751285','3','Anshak',1,'[{\"added\": {}}]',16,3),(6,'2024-02-22 17:40:03.100216','81','orders object (81)',1,'[{\"added\": {}}]',15,3),(7,'2024-02-22 17:50:24.303679','1','cake',1,'[{\"added\": {}}]',13,3),(12,'2024-02-24 08:16:35.091844','5','cakes',1,'[{\"added\": {}}]',13,3),(13,'2024-02-24 08:17:39.598344','6','cakes',1,'[{\"added\": {}}]',13,3),(14,'2024-02-24 08:44:09.254561','7','Pastries',1,'[{\"added\": {}}]',13,3),(15,'2024-02-24 08:44:12.484772','8','Mu',1,'[{\"added\": {}}]',13,3),(16,'2024-02-24 08:44:18.732079','8','Mu',3,'',13,3),(17,'2024-02-24 08:46:04.483982','6','cakes',3,'',13,3),(18,'2024-02-24 08:46:12.731910','7','Pastries',3,'',13,3),(19,'2024-02-24 08:46:25.456892','9','Cakes',1,'[{\"added\": {}}]',13,3),(20,'2024-02-24 08:46:36.041268','10','Pastries',1,'[{\"added\": {}}]',13,3),(21,'2024-02-24 08:46:46.988061','11','Muffins',1,'[{\"added\": {}}]',13,3),(22,'2024-03-18 14:40:46.873495','3','levi',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',5,3),(23,'2024-03-18 15:02:24.307560','1','Customers',1,'[{\"added\": {}}]',4,3),(24,'2024-03-18 15:02:37.346563','3','levi',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',5,3),(25,'2024-03-18 15:23:51.910515','3','levi',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',5,3),(26,'2024-03-18 17:29:14.609749','7','Rudeus',3,'',5,3),(27,'2024-03-18 17:29:14.613668','9','Rudeus_Grey',3,'',5,3),(28,'2024-03-18 17:29:14.617455','10','Rudy_Grey',3,'',5,3),(29,'2024-03-18 17:29:14.620479','6','wwww',3,'',5,3),(30,'2024-03-18 17:32:16.637728','3','levi',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',5,3),(31,'2024-03-18 17:34:18.350161','3','levi',2,'[]',5,3),(32,'2024-03-20 14:18:17.870813','8','Rudeus_Greyrat',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',5,3),(33,'2024-03-20 16:02:57.416906','2','customer',3,'',4,3),(34,'2024-03-20 16:05:52.221711','5','cakebash',3,'',5,3),(35,'2024-03-20 16:05:52.225397','12','Jaeger',3,'',5,3),(36,'2024-03-20 16:05:52.229264','8','Rudeus_Greyrat',3,'',5,3),(37,'2024-03-23 13:16:34.796852','14','Rudeus_Greyrat',3,'',5,3),(38,'2024-03-23 13:26:59.184419','17','noone',1,'[{\"added\": {}}]',5,3),(39,'2024-03-23 13:28:30.327649','18','soe',1,'[{\"added\": {}}]',5,3),(40,'2024-03-23 14:06:03.244282','19','helo',1,'[{\"added\": {}}]',5,3),(41,'2024-03-23 14:06:49.566041','20','dfghj',1,'[{\"added\": {}}]',5,3),(42,'2024-03-23 14:07:37.895134','21','awsf',1,'[{\"added\": {}}]',5,3),(43,'2024-03-23 14:13:37.710728','25','mnbv',1,'[{\"added\": {}}]',5,3),(44,'2024-03-23 14:15:25.210469','29','vgaseds',1,'[{\"added\": {}}]',5,3),(45,'2024-06-25 06:11:12.008488','142','orders object (142)',3,'',15,3),(46,'2024-06-25 06:11:12.014487','141','orders object (141)',3,'',15,3),(47,'2024-06-25 06:11:12.018536','140','orders object (140)',3,'',15,3),(48,'2024-06-25 06:11:12.021611','138','orders object (138)',3,'',15,3),(49,'2024-06-25 06:11:12.024612','136','orders object (136)',3,'',15,3),(50,'2024-06-25 06:11:12.026967','131','orders object (131)',3,'',15,3),(51,'2024-06-25 06:11:12.030618','130','orders object (130)',3,'',15,3),(52,'2024-06-25 06:11:12.035621','129','orders object (129)',3,'',15,3),(53,'2024-06-25 06:12:02.393957','21','User_def object (21)',3,'',16,3),(54,'2024-06-25 06:12:02.400942','17','User_def object (17)',3,'',16,3),(55,'2024-06-25 06:12:02.404949','16','User_def object (16)',3,'',16,3),(56,'2024-06-25 06:12:02.407952','15','User_def object (15)',3,'',16,3),(57,'2024-06-25 06:12:02.410866','14','User_def object (14)',3,'',16,3),(58,'2024-06-25 06:12:02.415508','13','User_def object (13)',3,'',16,3),(59,'2024-06-25 06:12:02.418510','11','User_def object (11)',3,'',16,3),(60,'2024-06-25 06:12:02.423401','10','User_def object (10)',3,'',16,3),(61,'2024-06-25 06:12:02.426696','9','User_def object (9)',3,'',16,3),(62,'2024-06-25 06:12:02.429563','8','User_def object (8)',3,'',16,3),(63,'2024-06-25 06:12:02.431737','7','User_def object (7)',3,'',16,3),(64,'2024-06-25 06:12:14.136100','131','red Velvet',3,'',12,3),(65,'2024-06-25 06:12:14.141173','130','kool pie',3,'',12,3),(66,'2024-06-25 06:12:14.146383','129','Vanilla kill',3,'',12,3),(67,'2024-06-25 06:12:14.150405','128','Vanilla kill',3,'',12,3),(68,'2024-06-25 06:12:14.153383','127','Vanilla kill',3,'',12,3),(69,'2024-06-25 06:12:14.156382','126','Vanilla kill',3,'',12,3),(70,'2024-06-25 06:12:14.159380','125','Vanilla kill',3,'',12,3),(71,'2024-06-25 06:12:14.163378','124','Vanilla kill',3,'',12,3),(72,'2024-06-25 06:12:14.166396','123','Vanilla kill',3,'',12,3),(73,'2024-06-25 06:12:14.170303','122','Vanilla kill',3,'',12,3),(74,'2024-06-25 06:12:14.173321','121','Vanilla kill',3,'',12,3),(75,'2024-06-25 06:12:14.176358','120','Vanilla kill',3,'',12,3),(76,'2024-06-25 06:12:14.179526','119','Vanilla kill',3,'',12,3),(77,'2024-06-25 06:12:14.183400','118','Vanilla kill',3,'',12,3),(78,'2024-06-25 06:12:14.186428','117','Vanilla kill',3,'',12,3),(79,'2024-06-25 06:12:14.189600','116','lava lush',3,'',12,3),(80,'2024-06-26 05:20:40.333936','24','review object (24)',3,'',17,3),(81,'2024-06-26 05:20:40.339905','23','review object (23)',3,'',17,3),(82,'2024-06-26 05:20:40.343946','22','review object (22)',3,'',17,3),(83,'2024-06-26 05:20:40.346934','21','review object (21)',3,'',17,3),(84,'2024-06-26 05:20:40.349944','20','review object (20)',3,'',17,3),(85,'2024-06-26 05:20:53.504505','6','User_def object (6)',3,'',16,3),(86,'2024-06-26 05:20:53.509421','5','User_def object (5)',3,'',16,3),(87,'2024-06-26 05:20:53.513223','4','User_def object (4)',3,'',16,3),(88,'2024-06-26 05:21:12.707630','21','awsf',3,'',5,3),(89,'2024-06-26 05:21:12.711361','20','dfghj',3,'',5,3),(90,'2024-06-26 05:21:12.713549','30','dquora',3,'',5,3),(91,'2024-06-26 05:21:12.718546','16','erwin',3,'',5,3),(92,'2024-06-26 05:21:12.722548','31','hange',3,'',5,3),(93,'2024-06-26 05:21:12.724543','19','helo',3,'',5,3),(94,'2024-06-26 05:21:12.727225','13','Jaeger',3,'',5,3),(95,'2024-06-26 05:21:12.729273','4','levy',3,'',5,3),(96,'2024-06-26 05:21:12.732095','25','mnbv',3,'',5,3),(97,'2024-06-26 05:21:12.736198','17','noone',3,'',5,3),(98,'2024-06-26 05:21:12.738170','32','rudeus',3,'',5,3),(99,'2024-06-26 05:21:12.741170','15','Rudeus_Greyrat',3,'',5,3),(100,'2024-06-26 05:21:12.743180','11','Rudy',3,'',5,3),(101,'2024-06-26 05:21:12.746180','18','soe',3,'',5,3),(102,'2024-06-26 05:21:12.749187','29','vgaseds',3,'',5,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(7,'sessions','session'),(8,'sugar','cakes'),(13,'sugar','category'),(1,'sugar','database'),(12,'sugar','menu'),(9,'sugar','muffins'),(15,'sugar','orders'),(10,'sugar','pastries'),(17,'sugar','review'),(11,'sugar','segment'),(14,'sugar','trying'),(16,'sugar','user_def');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-17 15:09:04.247099'),(2,'auth','0001_initial','2023-12-17 15:09:04.949934'),(3,'admin','0001_initial','2023-12-17 15:09:05.211826'),(4,'admin','0002_logentry_remove_auto_add','2023-12-17 15:09:05.211826'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-17 15:09:05.236368'),(6,'contenttypes','0002_remove_content_type_name','2023-12-17 15:09:05.377470'),(7,'auth','0002_alter_permission_name_max_length','2023-12-17 15:09:05.463340'),(8,'auth','0003_alter_user_email_max_length','2023-12-17 15:09:05.510887'),(9,'auth','0004_alter_user_username_opts','2023-12-17 15:09:05.520329'),(10,'auth','0005_alter_user_last_login_null','2023-12-17 15:09:05.598123'),(11,'auth','0006_require_contenttypes_0002','2023-12-17 15:09:05.598123'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-17 15:09:05.628253'),(13,'auth','0008_alter_user_username_max_length','2023-12-17 15:09:05.721555'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-17 15:09:05.804036'),(15,'auth','0010_alter_group_name_max_length','2023-12-17 15:09:05.829699'),(16,'auth','0011_update_proxy_permissions','2023-12-17 15:09:05.829699'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-17 15:09:05.936914'),(18,'sessions','0001_initial','2023-12-17 15:09:06.017664'),(19,'sugar','0001_initial','2023-12-17 15:09:06.080402'),(20,'sugar','0002_rename_modelname_database_alter_database_table','2023-12-17 15:09:06.151756'),(21,'sugar','0003_alter_database_image_alter_database_price','2023-12-17 15:09:06.326782'),(22,'sugar','0004_delete_database','2023-12-17 15:09:06.344876'),(23,'sugar','0005_initial','2023-12-17 15:09:06.369468'),(24,'sugar','0006_database2','2023-12-17 17:50:54.235960'),(25,'sugar','0007_database_email','2023-12-17 18:28:09.424110'),(26,'sugar','0008_remove_database_email','2023-12-17 18:28:55.565818'),(27,'sugar','0009_alter_database_image','2023-12-17 18:33:00.244241'),(28,'sugar','0010_rename_database2_orders_database','2023-12-18 18:14:00.218769'),(29,'sugar','0011_muffins_pastries_rename_orders_database_cakes','2023-12-19 14:47:06.874377'),(30,'sugar','0012_remove_cakes_quantity_remove_database_image_and_more','2023-12-21 14:02:15.774634'),(31,'sugar','0013_remove_muffins_quantity_remove_pastries_quantity_and_more','2023-12-21 14:03:33.502796'),(32,'sugar','0014_segment','2023-12-24 09:06:56.785923'),(33,'sugar','0015_category_menu_delete_database_delete_segment','2023-12-24 10:37:36.385068'),(34,'sugar','0016_remove_menu_category_alter_menu_is_veg','2023-12-24 14:04:57.396856'),(35,'sugar','0017_alter_cakes_image_alter_menu_is_veg','2023-12-24 14:28:16.866606'),(36,'sugar','0002_remove_menu_is_veg','2023-12-25 07:45:41.882472'),(37,'sugar','0003_menu_is_veg','2023-12-25 07:46:40.201449'),(38,'sugar','0004_delete_muffins_remove_menu_image','2023-12-25 08:48:23.861608'),(39,'sugar','0005_muffins_menu_image','2023-12-25 08:49:38.631995'),(40,'sugar','0006_menu_category','2023-12-25 14:17:12.213162'),(41,'sugar','0007_alter_menu_category','2023-12-25 14:20:58.687248'),(42,'sugar','0008_remove_menu_category_menu_category_name','2023-12-25 16:50:28.189187'),(43,'sugar','0009_remove_menu_category_name','2023-12-25 16:51:47.829279'),(44,'sugar','0010_menu_hello','2023-12-25 16:52:10.016342'),(45,'sugar','0002_menu','2023-12-25 17:02:35.276236'),(46,'sugar','0003_rename_hello_menu_category','2023-12-25 17:05:58.854445'),(47,'sugar','0004_remove_menu_category','2023-12-25 17:08:34.103484'),(48,'sugar','0005_menu_category','2023-12-25 17:08:51.237161'),(49,'sugar','0006_category_orders_delete_cakes_delete_muffins_and_more','2023-12-26 18:24:18.747005'),(50,'sugar','0007_orders_id_product','2024-01-01 19:15:02.749076'),(51,'sugar','0008_rename_id_product_orders_product_id','2024-01-01 19:43:13.277502'),(52,'sugar','0009_alter_orders_quantity','2024-01-01 19:50:42.569964'),(53,'sugar','0010_remove_orders_name','2024-01-01 19:54:09.232018'),(54,'sugar','0011_alter_category_image','2024-01-04 16:18:53.877936'),(55,'sugar','0012_alter_category_image','2024-01-04 17:28:31.179536'),(56,'sugar','0013_alter_category_image','2024-01-04 17:28:31.185708'),(57,'sugar','0014_remove_category_image_category_mage','2024-01-04 17:31:51.605787'),(58,'sugar','0015_rename_mage_category_image','2024-01-04 17:32:17.135355'),(59,'sugar','0016_alter_category_image','2024-01-04 17:33:14.937274'),(60,'sugar','0017_alter_menu_image','2024-01-04 17:34:46.599546'),(61,'sugar','0018_alter_category_image','2024-01-04 17:51:21.708471'),(62,'sugar','0019_remove_category_price','2024-01-09 16:11:12.706155'),(63,'sugar','0020_user','2024-02-22 17:14:08.336749'),(64,'sugar','0021_alter_user_phone_no','2024-02-22 17:14:08.351785'),(65,'sugar','0022_orders_user_name','2024-02-22 17:18:16.682128'),(66,'sugar','0023_alter_orders_user_name_alter_user_phone_no','2024-02-22 17:25:43.473676'),(67,'sugar','0024_remove_orders_user_name','2024-02-22 17:32:24.835276'),(68,'sugar','0025_orders_user_name','2024-02-22 17:35:10.967869'),(69,'sugar','0026_remove_orders_product_id','2024-02-22 17:37:39.271941'),(70,'sugar','0027_remove_orders_user_name','2024-02-22 17:39:11.093044'),(71,'sugar','0028_orders_product_id_orders_user_name','2024-02-22 17:39:56.385873'),(72,'sugar','0029_menu_categories','2024-02-22 17:49:56.436344'),(73,'sugar','0030_remove_user_phone_no','2024-02-22 18:25:45.538876'),(74,'sugar','0031_remove_menu_category','2024-02-23 13:24:28.559891'),(75,'sugar','0032_remove_category_name_category_username_user_email_and_more','2024-02-23 16:25:32.280318'),(76,'sugar','0033_rename_username_category_name_and_more','2024-02-23 16:32:21.239788'),(77,'sugar','0034_alter_user_email_alter_user_password','2024-02-23 16:38:51.641618'),(78,'sugar','0035_user_password2','2024-02-23 16:45:16.324107'),(79,'sugar','0036_remove_user_password2','2024-02-23 16:46:55.633053'),(80,'sugar','0037_rename_user_user_def','2024-03-17 06:40:17.699602'),(81,'sugar','0038_alter_orders_user_name','2024-03-17 07:46:07.027749'),(82,'sugar','0039_review','2024-03-20 17:31:52.100923');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4yukeas0mbty7q8p2e2wkql92mts2kvs','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1rQSfP:fiSLk4vuHewxUB3yAmItdzuD5ap2Cxs5SQqjQUKL3H4','2024-02-01 13:42:47.184593'),('8i8vz3nq0s51vvw976ophmwrioabtd2z','e30:1rlUzF:WXPopz5xLB1p96OYXaGTpPMyiUMJxUhbgpgJEkelkFI','2024-03-30 14:26:13.146250'),('brzj3o7ptrj0j2fksb2px0cwfpe12e9y','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1sML4h:vcNyY04uaOd6IarjldhCdiCyFgqGXTOniVKwQ2lMFwA','2024-07-10 05:20:07.098633'),('dpxj5p7s5mqr4mwi82s2cyu2ci37kzu4','e30:1rlUmT:D6jz34gNEzCWXAH69tyXTPE78UzNzkMbbdhiHFU8Rbw','2024-03-30 14:13:01.717961'),('dxrkdiafudf6oip0a2445n40iatlwk01','.eJxVjMsOwiAQRf-FtSFQWh4u3fsNZJhhpGogKe3K-O_apAvd3nPOfYkI21ri1vMSZxJnocXpd0uAj1x3QHeotyax1XWZk9wVedAur43y83K4fwcFevnWWRNa1GwUaaW8TcPAmFknhwYmh-AUK4-gx8l6P3prgHPg4IJlS-TE-wP0pzg-:1rFavS:j6rNkGFW5WzHLm0K_Hin23JyhW484K1Zcl2Rl5n1vyI','2024-01-02 14:18:26.413412'),('j8d7x2xsonxjsqkswjg69m3wood3hu8d','.eJxVjEsOAiEQBe_C2hCcRj4u3XsG0g2NjBpIhpmV8e5KMgvdvqp6LxFwW0vYOi9hTuIstDj8boTxwXWAdMd6azK2ui4zyaHInXZ5bYmfl939OyjYy6hZO4MGVCQFmY1iBG8nP9mMljMTRM8GE5OBk1KGwR4dZUf6q7mUxfsD_Ac4eA:1rdwUW:xkmpU82OUlSoQxt7md3K7pvDBLKeX5saoe6MN6h_t-o','2024-03-09 18:11:16.778715'),('kzi8ylpl2tedj1x79jsqgyc43tswpetx','.eJxVjEEOwiAQRe_C2hALCB2X7j0DGZgZqRpISrsy3l2bdKHb_977LxVxXUpcO89xInVWVh1-t4T5wXUDdMd6azq3usxT0puid9r1tRE_L7v7d1Cwl289ouTEnCgIDo5IBMQFnxxbIDTBGXEMFk9HMKNHFpQwoAHrvM1gQL0_LRk43Q:1rs4Hq:jhbYt9B9kdlp3vtG2Hk5PYI50UYV-wL58FIn-YWYPl0','2024-04-17 17:20:34.501905'),('l2ni6ja84wh0tg9hxgwhwfdv3pifssyt','.eJxVjMEOwiAQRP-FsyGwFCEevfsNZFkWqRpISnsy_rs06UFvk3lv5i0CbmsJW-clzElchAFx-i0j0pPrTtID671JanVd5ih3RR60y1tL_Loe7t9BwV7Gmr1350TIoIxOQBYRrcYM6C1Qzjp6jjySQzOxdyqaASatiHU2BOLzBS5gONo:1sBvoU:YtyhknLdNVozaO3fnYskiPvbqAu7TnoSJYIKI5T2d0g','2024-06-11 12:20:22.005274'),('mm16twvp2aikpt5p55r5u22v43vjnga0','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1sM7t4:tkpSIdstDZaZ0Zzl7MfLbZumqpEVm9PR664n6G_4h8M','2024-07-09 15:15:14.338958'),('nqw2eq9wrtmln9lklmeidtqi6vagk2d0','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1sLyPg:iM51KFWNmXIYehtG3axy6IwgNvzz_0cHuiwhyLQL9-4','2024-07-09 05:08:16.895799'),('qacmx41kre6msppp3t9d4h0zvdnc78qb','e30:1rllBT:Rz430QM150otV_DD6dUGOFZsPflDnttLgVMauC2B844','2024-03-31 07:43:55.856332'),('tevtkfldyfue55qq84j4f03fs2x6i0zi','.eJxVjMEOwiAQRP-FsyGwFCEevfsNZFkWqRpISnsy_rs06UFvk3lv5i0CbmsJW-clzElchAFx-i0j0pPrTtID671JanVd5ih3RR60y1tL_Loe7t9BwV7Gmr1350TIoIxOQBYRrcYM6C1Qzjp6jjySQzOxdyqaASatiHU2BOLzBS5gONo:1sBvpe:3k0eNblJ6404xqyBUQd_bB_oBVsQ560Rg7Iv9l_o_as','2024-06-11 12:21:34.414748'),('wyi40pokgwbzzj9t3agujzm9ew1xk74h','.eJxVjMsOwiAQRf-FtSHDgKW4dN9vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yguQp3F6XdkCo9UdxLvVG9NhlbXZWa5K_KgXU4tpuf1cP8OCvXyrRE1a0jG0RhdNtZBBoKBwSBaCsG6nLMeRiKnVGIDABot28iJjEUW7w_6CTfw:1rpBgD:Xwi8hInfsIzdAb1KIHNYNr7md8bjR8NC8sBPQ0s26nc','2024-04-09 18:37:49.105465'),('x09yxf7167rj8gbdjaup93k1av633855','.eJxVjMEOwiAQBf-FsyGUhQIevfcbyAKLVA0kpT0Z_92Q9KDXNzPvzTwee_FHp82viV0ZsMvvFjA-qQ6QHljvjcdW920NfCj8pJ0vLdHrdrp_BwV7GbWbzAxaopiUScqJ2RpjKWcdDBqXk5VZRUIQ2UXtKFDQQgNmDVaBjOzzBdDGN74:1rpBg1:ze3nE0TwA5rEGoKpiNj8WEaNUO2afFtcHqFfBF7BA_8','2024-04-09 18:37:37.343187'),('z64tpoix49azi5ib6uvm5y633hxi1bq8','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1rmHCG:VWotn4spHXicFyYrJkFQjKUaXWN0jNxVnTHuKY0cobo','2024-04-01 17:54:52.009540'),('znke5mrcx2v7f4d7ehx5hvnkkpi4qil3','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1sLz1e:WXQHccveD20mRMT2FtHCgdX4E9OLZdJsalelHhAA2FQ','2024-07-09 05:47:30.303775'),('ztixzsb8h1e9z8zjei3ngz5ex3ggsf52','.eJxVjEEOwiAQRe_C2hCcUjK4dO8ZyMAMUjWQlHbVeHdt0oVu_3vvbyrQupSwdpnDxOqiBnX63SKlp9Qd8IPqvenU6jJPUe-KPmjXt8byuh7u30GhXr41WeCECGxHgujBI0aXgDEP2VlESUyYYxIWJGOzG9F5I4NxCHKOqN4f-Go4Ug:1sMAsZ:tBL37UAZ4s60TiRZw9rATA3g9iMRlG3Mknkk_U4A2FM','2024-07-09 18:26:55.832344');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar_category`
--

DROP TABLE IF EXISTS `sugar_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugar_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar_category`
--

LOCK TABLES `sugar_category` WRITE;
/*!40000 ALTER TABLE `sugar_category` DISABLE KEYS */;
INSERT INTO `sugar_category` VALUES (9,'static/BDay_M0l5QRG.jpg','Cakes'),(10,'static/Cake2_vPQT8as.jpg','Pastries'),(11,'static/muffins_WfqT1C1.jpg','Muffins');
/*!40000 ALTER TABLE `sugar_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar_menu`
--

DROP TABLE IF EXISTS `sugar_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugar_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `price` int DEFAULT NULL,
  `is_veg` tinyint(1) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar_menu`
--

LOCK TABLES `sugar_menu` WRITE;
/*!40000 ALTER TABLE `sugar_menu` DISABLE KEYS */;
INSERT INTO `sugar_menu` VALUES (132,'Chocolate Fudge Cake','static/Cake1_A5ugWhN.jpg',350,1,'A decadent chocolate cake layered with rich fudge frosting.'),(133,'Black Forest Cake','static/chocolate_lust_trrTCKp.jpg',1111,1,'A classic German chocolate cake with layers of cherries and whipped cream.'),(134,'Almond Croissant','static/pastry_JVYifPH.jpg',222,1,'A buttery, flaky croissant filled with almond cream and topped with sliced almonds.'),(135,'Pain au Chocolat','static/images.jpg',120,1,'A delicious pastry with a rich chocolate center, perfect for chocolate lovers.'),(136,'Cinnamon Roll','static/item-643d25c9e2e39.jpg',200,1,'A soft pastry rolled with cinnamon sugar and topped with cream cheese icing.'),(137,'Blueberry Muffin','static/vegan-double-strawberry-muffins-1.jpg',100,1,'A fluffy muffin bursting with fresh blueberries and a hint of vanilla.'),(138,'Banana Nut Muffin','static/muffins_8wEwRiQ.jpg',250,1,'A moist muffin loaded with ripe bananas and crunchy walnuts.');
/*!40000 ALTER TABLE `sugar_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar_menu_categories`
--

DROP TABLE IF EXISTS `sugar_menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugar_menu_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sugar_menu_categories_menu_id_category_id_7091807f_uniq` (`menu_id`,`category_id`),
  KEY `sugar_menu_categories_category_id_8220d855_fk_sugar_category_id` (`category_id`),
  CONSTRAINT `sugar_menu_categories_category_id_8220d855_fk_sugar_category_id` FOREIGN KEY (`category_id`) REFERENCES `sugar_category` (`id`),
  CONSTRAINT `sugar_menu_categories_menu_id_35dd0d86_fk_sugar_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `sugar_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar_menu_categories`
--

LOCK TABLES `sugar_menu_categories` WRITE;
/*!40000 ALTER TABLE `sugar_menu_categories` DISABLE KEYS */;
INSERT INTO `sugar_menu_categories` VALUES (21,132,9),(22,133,9),(23,134,10),(24,135,10),(25,136,10),(26,137,11),(27,138,11);
/*!40000 ALTER TABLE `sugar_menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar_orders`
--

DROP TABLE IF EXISTS `sugar_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugar_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id_id` bigint DEFAULT NULL,
  `user_name_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sugar_orders_product_id_id_1a428367_fk_sugar_menu_id` (`product_id_id`),
  KEY `sugar_orders_user_name_id_9a880e04_fk_auth_user_id` (`user_name_id`),
  CONSTRAINT `sugar_orders_product_id_id_1a428367_fk_sugar_menu_id` FOREIGN KEY (`product_id_id`) REFERENCES `sugar_menu` (`id`),
  CONSTRAINT `sugar_orders_user_name_id_9a880e04_fk_auth_user_id` FOREIGN KEY (`user_name_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar_orders`
--

LOCK TABLES `sugar_orders` WRITE;
/*!40000 ALTER TABLE `sugar_orders` DISABLE KEYS */;
INSERT INTO `sugar_orders` VALUES (145,7,135,3),(146,1,132,3),(147,1,137,3);
/*!40000 ALTER TABLE `sugar_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar_review`
--

DROP TABLE IF EXISTS `sugar_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugar_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `by_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sugar_review_by_id_54c3e694_fk_auth_user_id` (`by_id`),
  CONSTRAINT `sugar_review_by_id_54c3e694_fk_auth_user_id` FOREIGN KEY (`by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar_review`
--

LOCK TABLES `sugar_review` WRITE;
/*!40000 ALTER TABLE `sugar_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugar_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugar_user_def`
--

DROP TABLE IF EXISTS `sugar_user_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugar_user_def` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugar_user_def`
--

LOCK TABLES `sugar_user_def` WRITE;
/*!40000 ALTER TABLE `sugar_user_def` DISABLE KEYS */;
INSERT INTO `sugar_user_def` VALUES (23,'levi','1234','shivanshrajdehl@gmail.com');
/*!40000 ALTER TABLE `sugar_user_def` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 10:52:36
