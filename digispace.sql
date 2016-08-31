-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: newdigispace.cdaktz8aqmgo.us-west-2.rds.amazonaws.com    Database: digispace_prod_db
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add state',7,'add_state'),(20,'Can change state',7,'change_state'),(21,'Can delete state',7,'delete_state'),(22,'Can add city',8,'add_city'),(23,'Can change city',8,'change_city'),(24,'Can delete city',8,'delete_city'),(25,'Can add pincode',9,'add_pincode'),(26,'Can change pincode',9,'change_pincode'),(27,'Can delete pincode',9,'delete_pincode'),(28,'Can add user role',10,'add_userrole'),(29,'Can change user role',10,'change_userrole'),(30,'Can delete user role',10,'delete_userrole'),(31,'Can add user',11,'add_userprofile'),(32,'Can change user',11,'change_userprofile'),(33,'Can delete user',11,'delete_userprofile'),(34,'Can add category',12,'add_category'),(35,'Can change category',12,'change_category'),(36,'Can delete category',12,'delete_category'),(37,'Can add phone category',13,'add_phonecategory'),(38,'Can change phone category',13,'change_phonecategory'),(39,'Can delete phone category',13,'delete_phonecategory'),(40,'Can add currency',14,'add_currency'),(41,'Can change currency',14,'change_currency'),(42,'Can delete currency',14,'delete_currency'),(43,'Can add user',15,'add_supplier'),(44,'Can change user',15,'change_supplier'),(45,'Can delete user',15,'delete_supplier'),(46,'Can add advert',16,'add_advert'),(47,'Can change advert',16,'change_advert'),(48,'Can delete advert',16,'delete_advert'),(49,'Can add phone no',17,'add_phoneno'),(50,'Can change phone no',17,'change_phoneno'),(51,'Can delete phone no',17,'delete_phoneno'),(52,'Can add advert image',18,'add_advertimage'),(53,'Can change advert image',18,'change_advertimage'),(54,'Can delete advert image',18,'delete_advertimage'),(55,'Can add working hours',19,'add_workinghours'),(56,'Can change working hours',19,'change_workinghours'),(57,'Can delete working hours',19,'delete_workinghours'),(61,'Can add amenities',21,'add_amenities'),(62,'Can change amenities',21,'change_amenities'),(63,'Can delete amenities',21,'delete_amenities'),(64,'Can add near by attraction',22,'add_nearbyattraction'),(65,'Can change near by attraction',22,'change_nearbyattraction'),(66,'Can delete near by attraction',22,'delete_nearbyattraction'),(67,'Can add nearest shopping',23,'add_nearestshopping'),(68,'Can change nearest shopping',23,'change_nearestshopping'),(69,'Can delete nearest shopping',23,'delete_nearestshopping'),(70,'Can add nearest school',24,'add_nearestschool'),(71,'Can change nearest school',24,'change_nearestschool'),(72,'Can delete nearest school',24,'delete_nearestschool'),(73,'Can add nearest hospital',25,'add_nearesthospital'),(74,'Can change nearest hospital',25,'change_nearesthospital'),(75,'Can delete nearest hospital',25,'delete_nearesthospital'),(79,'Can add business',27,'add_business'),(80,'Can change business',27,'change_business'),(81,'Can delete business',27,'delete_business'),(82,'Can add premium service',28,'add_premiumservice'),(83,'Can change premium service',28,'change_premiumservice'),(84,'Can delete premium service',28,'delete_premiumservice'),(85,'Can add service rate card',29,'add_serviceratecard'),(86,'Can change service rate card',29,'change_serviceratecard'),(87,'Can delete service rate card',29,'delete_serviceratecard'),(88,'Can add advert rate card',30,'add_advertratecard'),(89,'Can change advert rate card',30,'change_advertratecard'),(90,'Can delete advert rate card',30,'delete_advertratecard'),(94,'Can add payment detail',32,'add_paymentdetail'),(95,'Can change payment detail',32,'change_paymentdetail'),(96,'Can delete payment detail',32,'delete_paymentdetail'),(97,'Can add additional amenities',33,'add_additionalamenities'),(98,'Can change additional amenities',33,'change_additionalamenities'),(99,'Can delete additional amenities',33,'delete_additionalamenities'),(100,'Can add tax',34,'add_tax'),(101,'Can change tax',34,'change_tax'),(102,'Can delete tax',34,'delete_tax'),(103,'Can add places',35,'add_places'),(104,'Can change places',35,'change_places'),(105,'Can delete places',35,'delete_places'),(106,'Can add captcha store',36,'add_captchastore'),(107,'Can change captcha store',36,'change_captchastore'),(108,'Can delete captcha store',36,'delete_captchastore'),(109,'Can add category city map',37,'add_categorycitymap'),(110,'Can change category city map',37,'change_categorycitymap'),(111,'Can delete category city map',37,'delete_categorycitymap'),(112,'Can add user',38,'add_consumerprofile'),(113,'Can change user',38,'change_consumerprofile'),(114,'Can delete user',38,'delete_consumerprofile'),(115,'Can add city_ place',39,'add_city_place'),(116,'Can change city_ place',39,'change_city_place'),(117,'Can delete city_ place',39,'delete_city_place'),(118,'Can add consumer_ feedback',40,'add_consumer_feedback'),(119,'Can change consumer_ feedback',40,'change_consumer_feedback'),(120,'Can delete consumer_ feedback',40,'delete_consumer_feedback'),(121,'Can add advert like',41,'add_advertlike'),(122,'Can change advert like',41,'change_advertlike'),(123,'Can delete advert like',41,'delete_advertlike'),(124,'Can add advert_ video',42,'add_advert_video'),(125,'Can change advert_ video',42,'change_advert_video'),(126,'Can delete advert_ video',42,'delete_advert_video'),(127,'Can add advert_ category_ map',43,'add_advert_category_map'),(128,'Can change advert_ category_ map',43,'change_advert_category_map'),(129,'Can delete advert_ category_ map',43,'delete_advert_category_map'),(130,'Can add advert subscription map',44,'add_advertsubscriptionmap'),(131,'Can change advert subscription map',44,'change_advertsubscriptionmap'),(132,'Can delete advert subscription map',44,'delete_advertsubscriptionmap'),(133,'Can add coupon code',45,'add_couponcode'),(134,'Can change coupon code',45,'change_couponcode'),(135,'Can delete coupon code',45,'delete_couponcode'),(136,'Can add advert favourite',46,'add_advertfavourite'),(137,'Can change advert favourite',46,'change_advertfavourite'),(138,'Can delete advert favourite',46,'delete_advertfavourite'),(139,'Can add product',47,'add_product'),(140,'Can change product',47,'change_product'),(141,'Can delete product',47,'delete_product'),(142,'Can add category level1',48,'add_categorylevel1'),(143,'Can change category level1',48,'change_categorylevel1'),(144,'Can delete category level1',48,'delete_categorylevel1'),(145,'Can add category level2',49,'add_categorylevel2'),(146,'Can change category level2',49,'change_categorylevel2'),(147,'Can delete category level2',49,'delete_categorylevel2'),(148,'Can add category level3',50,'add_categorylevel3'),(149,'Can change category level3',50,'change_categorylevel3'),(150,'Can delete category level3',50,'delete_categorylevel3'),(151,'Can add category level4',51,'add_categorylevel4'),(152,'Can change category level4',51,'change_categorylevel4'),(153,'Can delete category level4',51,'delete_categorylevel4'),(154,'Can add category level5',52,'add_categorylevel5'),(155,'Can change category level5',52,'change_categorylevel5'),(156,'Can delete category level5',52,'delete_categorylevel5'),(157,'Can add privileges',53,'add_privileges'),(158,'Can change privileges',53,'change_privileges'),(159,'Can delete privileges',53,'delete_privileges');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$5DwyXfuccUHL$pJRHyOcTlpY2RLtFR1vthJa4KHaPvcovY2DgHg3d94s=','2016-08-02 12:31:19.048421',1,'admin','','','',1,1,'2016-06-09 13:41:24.912120'),(171,'pbkdf2_sha256$24000$97GUsNrnOd5n$jMovoDAqUjRiiJYgZ4mRNe5aO2hbWzJWXNIlBAaIUHY=','2016-08-02 13:13:45.253765',1,'sagar@bynry.com','Sagar','Suryawanshi','sagar@bynry.com',0,1,'2016-07-01 10:53:54.000000'),(261,'pbkdf2_sha256$24000$HkbtL0p1xL6Z$JL2i8CQ9LSRZTUprL4bYFdzl02/E86JdTgm60jGYTR0=',NULL,0,'bharat@bynry.com','','','',0,1,'2016-07-02 11:34:21.571542'),(264,'',NULL,0,'vikas.d.padhy@gmail.com','','','',0,1,'2016-07-02 12:00:14.294367'),(266,'pbkdf2_sha256$24000$0SnX8tfnvqhs$V0u2YC1CvEyyHo1kHd2B7/EEQNdThs/gtN3epinandM=',NULL,0,'maldhureakshay@gmail.com','','','',0,1,'2016-07-02 12:08:13.222427'),(296,'pbkdf2_sha256$24000$zGAGt0KDyh95$pkk7rdjAKmK/7yqJftlyu0vj7pHmh8JcYjx2Bwe3mrE=',NULL,0,'ankitalahoti756@123.com','','','',0,1,'2016-07-04 09:15:09.251242'),(356,'',NULL,0,'kiran@resto.com','','','',0,1,'2016-07-09 16:15:32.824650'),(358,'',NULL,0,'ranjan@xct.com','','','',0,1,'2016-07-09 18:12:58.705460'),(359,'pbkdf2_sha256$24000$R5QIiTNncbWi$cWYMg67EIbLbZC5nUKfNC7dXcAYK6ODi+2nTv2OtFnc=',NULL,0,'kumar@bynry.com','','','',0,1,'2016-07-11 12:48:39.216479'),(366,'pbkdf2_sha256$24000$jryMZ8gVObv0$xcDZ7cpbXsmFAZqCjkCQsn1ZSAZwgvewqlOJHupPng4=',NULL,0,'shravan@bynry.com','','','',0,1,'2016-07-14 16:05:04.511614'),(367,'pbkdf2_sha256$24000$mnczQeZVQHnn$u3QFmJzgCwY89MHdy72X0Wxp2fVueTmrCxuck6te4MA=',NULL,0,'vikas@gmail.com','','','',0,1,'2016-07-15 02:52:42.023056'),(368,'pbkdf2_sha256$24000$OJ3hJui8k4XH$IJQ/z3BG9PAF0PyawWsrsq78dd2zhhXIa5MzuoFBL3w=',NULL,0,'pranali@gmail.com','','','',0,1,'2016-07-15 06:55:30.881933'),(373,'',NULL,0,'ankitlahotia@gmail.com','','','',0,1,'2016-07-15 07:13:49.702342'),(378,'',NULL,0,'vikas@food.co','','','',0,1,'2016-07-15 11:10:16.085166'),(379,'',NULL,0,'bynrymitest@gmail.com','','','',0,1,'2016-07-15 11:20:58.361650'),(381,'',NULL,0,'dialaroom6@gmail.com','','','',0,1,'2016-07-15 12:07:37.309029'),(385,'pbkdf2_sha256$24000$JB4a5JXIUbpQ$I4d8t+Mu52iYjOicGhdwVumAVm882lQSkDakzt8g5Jc=',NULL,0,'vikashardil@gmail.com','','','',0,1,'2016-07-16 08:25:38.990130'),(386,'pbkdf2_sha256$24000$VFtPlcAAFsW9$B0TLfI01YQwOMxQR3pq7KAFLtLZwg/+dc850Onc/QnM=',NULL,0,'vkspadhy@gmail.com','','','',0,1,'2016-07-16 08:33:55.100085'),(388,'pbkdf2_sha256$24000$XYxfcrLNv5qE$XpBemrLYGR672G5/U+8ap6FlhtbJC0jrdUXFYJaW/PE=',NULL,0,'vikas3@bynry.com','','','',0,1,'2016-07-16 09:15:45.293903'),(390,'',NULL,0,'vineet@metalics.com','','','',0,1,'2016-07-16 10:30:33.514497'),(392,'',NULL,0,'vkumawat030@gmail.com','','','',0,1,'2016-07-17 04:45:59.832550'),(393,'',NULL,0,'hina@mkf.com','','','',0,1,'2016-07-17 05:17:24.743827'),(396,'',NULL,0,'nimisha@fine.com','','','',0,1,'2016-07-20 10:43:49.299800'),(397,'',NULL,0,'sahil@fitness.com','','','',0,1,'2016-07-20 10:54:18.679512'),(398,'',NULL,0,'tanya@dine.com','','','',0,1,'2016-07-20 10:58:38.363649'),(401,'',NULL,0,'akshay1@bynry.com','','','',0,1,'2016-07-20 11:37:58.766710'),(402,'',NULL,0,'lakshmi@jumbo.com','','','',0,1,'2016-07-20 13:45:19.231723'),(403,'',NULL,0,'kunal@killer.com','','','',0,1,'2016-07-20 13:59:49.972588'),(404,'',NULL,0,'hiten@fashion.com','','','',0,1,'2016-07-20 14:04:19.238594'),(405,'',NULL,0,'gita@kaptin.com','','','',0,1,'2016-07-20 14:08:02.699767'),(406,'',NULL,0,'mithun@sentoza.com','','','',0,1,'2016-07-21 06:09:33.619779'),(409,'',NULL,0,'lina@nino.com','','','',0,1,'2016-07-21 06:40:27.438813'),(414,'',NULL,0,'shahin@diner.com','','','',0,1,'2016-07-21 09:45:10.374437'),(427,'pbkdf2_sha256$24000$JFkzfiGumDNW$+T+j01N3tUH1lkOqDluY3nEUJmvDFppMOXtJJtAzxDE=',NULL,0,'riteshjaiswal@yahoo.com','','','',0,1,'2016-07-27 18:31:31.365729'),(439,'',NULL,0,'ramesh@hyundai.com','','','',0,1,'2016-07-28 14:47:55.482169'),(440,'pbkdf2_sha256$24000$61SLrbduIdJZ$qypJdsvLiLMumqB4LEv/b1nfTxFVXBonXyjhQAXl260=',NULL,0,'kumar','','','',0,1,'2016-07-28 15:33:36.654768'),(441,'pbkdf2_sha256$24000$dXuziterngUz$lDWwbYUPh2kwuh0KOTeGZUjM+zwxF+eyL1snv3mK4HI=','2016-07-28 16:30:15.931528',0,'harry','','','',0,1,'2016-07-28 16:05:51.381551'),(446,'pbkdf2_sha256$24000$CIB8LkhKlYbU$/hTyQnMaBavHl/0a1VDeYlc0ZvZxBzZFc+i6e5AKzNI=','2016-07-29 06:16:11.417791',0,'vikaspadhy','','','',0,1,'2016-07-29 06:08:35.517014'),(452,'pbkdf2_sha256$24000$r4145U5uEPhG$zhopVPL9mAOZ/xm5LwwtMHWL6quv+VQp6bIeHKvoB8I=',NULL,0,'Userasd','','','',0,1,'2016-07-29 10:01:19.367813'),(453,'pbkdf2_sha256$24000$fpnG4SU9645q$nGyBx9GfXASKUPmdaR9eTnchiD81A78WNbKxZ9VQTxc=',NULL,0,'new12345','','','',0,1,'2016-07-29 10:07:16.209493'),(454,'pbkdf2_sha256$24000$xpHmqfSBIiNr$Uk0xYvmHwDeGUE9YlvdKLF8zMUQtCj+eVAmmarlqlXY=',NULL,0,'rajshri@bynry.com','','','',0,1,'2016-07-29 11:30:21.496428'),(455,'pbkdf2_sha256$24000$OwEblWU2QvKn$i0j3vmR1dpYU/oOv/jPngQd0R+Us5b/6EQZEYySpi24=',NULL,0,'piyush@bynry.com','','','',0,1,'2016-07-30 08:21:09.984214'),(456,'',NULL,0,'yogesh@bynry.com','','','',0,1,'2016-07-30 08:43:49.129612'),(461,'',NULL,0,'yogesh@b.com','','','',0,1,'2016-07-31 07:14:30.826351'),(462,'',NULL,0,'yo@yo.com','','','',0,1,'2016-07-31 07:39:07.930138'),(464,'',NULL,0,'pranali@bynry.com','','','',0,1,'2016-08-01 11:54:24.944271'),(466,'',NULL,0,'chandan@hchc.com','','','',0,1,'2016-08-01 13:10:57.830194');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,171,1),(2,171,2),(3,171,3),(4,171,4),(5,171,5),(6,171,6),(7,171,7),(8,171,8),(9,171,9),(10,171,10),(11,171,11),(12,171,12),(13,171,13),(14,171,14),(15,171,15),(16,171,16),(17,171,17),(18,171,18),(19,171,19),(20,171,20),(21,171,21),(22,171,22),(23,171,23),(24,171,24),(25,171,25),(26,171,26),(27,171,27),(28,171,28),(29,171,29),(30,171,30),(31,171,31),(32,171,32),(33,171,33),(34,171,34),(35,171,35),(36,171,36),(37,171,37),(38,171,38),(39,171,39),(40,171,40),(41,171,41),(42,171,42),(43,171,43),(44,171,44),(45,171,45),(46,171,46),(47,171,47),(48,171,48),(49,171,49),(50,171,50),(51,171,51),(52,171,52),(53,171,53),(54,171,54),(55,171,55),(56,171,56),(57,171,57),(58,171,61),(59,171,62),(60,171,63),(61,171,64),(62,171,65),(63,171,66),(64,171,67),(65,171,68),(66,171,69),(67,171,70),(68,171,71),(69,171,72),(70,171,73),(71,171,74),(72,171,75),(73,171,79),(74,171,80),(75,171,81),(76,171,82),(77,171,83),(78,171,84),(79,171,85),(80,171,86),(81,171,87),(82,171,88),(83,171,89),(84,171,90),(85,171,94),(86,171,95),(87,171,96),(88,171,97),(89,171,98),(90,171,99),(91,171,100),(92,171,101),(93,171,102),(94,171,103),(95,171,104),(96,171,105),(97,171,106),(98,171,107),(99,171,108),(100,171,109),(101,171,110),(102,171,111),(103,171,112),(104,171,113),(105,171,114),(106,171,115),(107,171,116),(108,171,117),(109,171,118),(110,171,119),(111,171,120),(112,171,121),(113,171,122),(114,171,123),(115,171,124),(116,171,125),(117,171,126),(118,171,127),(119,171,128),(120,171,129),(121,171,130),(122,171,131),(123,171,132),(124,171,133),(125,171,134),(126,171,135),(127,171,136),(128,171,137),(129,171,138),(130,171,139),(131,171,140),(132,171,141),(133,171,142),(134,171,143),(135,171,144),(136,171,145),(137,171,146),(138,171,147),(139,171,148),(140,171,149),(141,171,150),(142,171,151),(143,171,152),(144,171,153),(145,171,154),(146,171,155),(147,171,156),(148,171,157),(149,171,158),(150,171,159);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=789 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (788,'0BA8F','0ba8f','3c72f89357735201aed966a137bbeed6fb6ce085','2016-08-02 13:18:31');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_additionalamenities`
--

DROP TABLE IF EXISTS `digispaceapp_additionalamenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_additionalamenities` (
  `extra_amenity_id` int(11) NOT NULL AUTO_INCREMENT,
  `extra_amenity` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`extra_amenity_id`),
  KEY `digispace_advert_id_id_72aec8f7_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_72aec8f7_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_additionalamenities`
--

LOCK TABLES `digispaceapp_additionalamenities` WRITE;
/*!40000 ALTER TABLE `digispaceapp_additionalamenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `digispaceapp_additionalamenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advert`
--

DROP TABLE IF EXISTS `digispaceapp_advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advert` (
  `advert_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(150) DEFAULT NULL,
  `advert_name` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `short_description` varchar(5000) DEFAULT NULL,
  `product_description` varchar(5000) DEFAULT NULL,
  `discount_description` varchar(5000) DEFAULT NULL,
  `display_image` varchar(500) DEFAULT NULL,
  `address_line_1` varchar(50) DEFAULT NULL,
  `address_line_2` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `email_primary` varchar(50) DEFAULT NULL,
  `email_secondary` varchar(50) DEFAULT NULL,
  `property_market_rate` varchar(50) DEFAULT NULL,
  `possesion_status` varchar(50) DEFAULT NULL,
  `date_of_delivery` varchar(50) DEFAULT NULL,
  `any_other_details` varchar(5000) DEFAULT NULL,
  `distance_frm_railway_station` varchar(50) DEFAULT NULL,
  `distance_frm_railway_airport` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `category_id_id` int(11),
  `currency_id_id` int(11),
  `pincode_id_id` int(11),
  `state_id_id` int(11),
  `supplier_id_id` int(11),
  `latitude` varchar(50),
  `longitude` varchar(50),
  `city_place_id_id` int(11),
  `speciality` varchar(5000),
  `advert_views` varchar(10),
  `affilated_to` varchar(5000),
  `course_duration` varchar(5000),
  `facility` varchar(5000),
  `happy_hour_offer` varchar(5000),
  `image_video_space_used` varchar(200),
  `category_level_1_id` int(11),
  `category_level_2_id` int(11),
  `category_level_3_id` int(11),
  `category_level_4_id` int(11),
  `category_level_5_id` int(11),
  PRIMARY KEY (`advert_id`),
  KEY `digispaceapp_advert_2d5f8f90` (`category_id_id`),
  KEY `digispaceapp_advert_3e424d8c` (`currency_id_id`),
  KEY `digispaceapp_advert_4175d963` (`pincode_id_id`),
  KEY `digispaceapp_advert_bcae966c` (`state_id_id`),
  KEY `digispaceapp_advert_1084f1e0` (`supplier_id_id`),
  KEY `digispaceapp_advert_89087a68` (`city_place_id_id`),
  KEY `digispaceapp_advert_6ea09a35` (`category_level_1_id`),
  KEY `digispaceapp_advert_db90dd0d` (`category_level_2_id`),
  KEY `digispaceapp_advert_4719d997` (`category_level_3_id`),
  KEY `digispaceapp_advert_69856318` (`category_level_4_id`),
  KEY `digispaceapp_advert_61aca8af` (`category_level_5_id`),
  CONSTRAINT `D0fca6547f9224e5c978fc8ad1559f74` FOREIGN KEY (`category_level_2_id`) REFERENCES `digispaceapp_categorylevel2` (`category_id`),
  CONSTRAINT `D30efebf89f8c0d646d025f97e5d60e7` FOREIGN KEY (`city_place_id_id`) REFERENCES `digispaceapp_city_place` (`city_place_id`),
  CONSTRAINT `D6f8f6f55af5275dd57c8846fcbdf330` FOREIGN KEY (`category_level_5_id`) REFERENCES `digispaceapp_categorylevel5` (`category_id`),
  CONSTRAINT `D7f7e44947c0478addc642f603dd46c8` FOREIGN KEY (`category_level_3_id`) REFERENCES `digispaceapp_categorylevel3` (`category_id`),
  CONSTRAINT `dig_category_id_id_653ac8c8_fk_digispaceapp_category_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `digispaceapp_category` (`category_id`),
  CONSTRAINT `dig_currency_id_id_1b70b02c_fk_digispaceapp_currency_currency_id` FOREIGN KEY (`currency_id_id`) REFERENCES `digispaceapp_currency` (`currency_id`),
  CONSTRAINT `dig_supplier_id_id_c23a6ebe_fk_digispaceapp_supplier_supplier_id` FOREIGN KEY (`supplier_id_id`) REFERENCES `digispaceapp_supplier` (`supplier_id`),
  CONSTRAINT `digisp_pincode_id_id_cc78cf99_fk_digispaceapp_pincode_pincode_id` FOREIGN KEY (`pincode_id_id`) REFERENCES `digispaceapp_pincode` (`pincode_id`),
  CONSTRAINT `digispaceapp_state_id_id_e4a5db12_fk_digispaceapp_state_state_id` FOREIGN KEY (`state_id_id`) REFERENCES `digispaceapp_state` (`state_id`),
  CONSTRAINT `f0eff82189e6aadb12fe4a7fe59af1cb` FOREIGN KEY (`category_level_1_id`) REFERENCES `digispaceapp_categorylevel1` (`category_id`),
  CONSTRAINT `f2fd5a1382745d8d0cd1b86f27df1b12` FOREIGN KEY (`category_level_4_id`) REFERENCES `digispaceapp_categorylevel4` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advert`
--

LOCK TABLES `digispaceapp_advert` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advert` DISABLE KEYS */;
INSERT INTO `digispaceapp_advert` VALUES (124,'1','Chetan Foods','www.food.com','Indian Food','Thali, buffet, snacks','15 % Discount on total bill to City Hoopla customers','images/user_images/Builder1_MP7cUhr.jpg','Koregaon Park, Pune, Maharashtra, India','','Koregaon Park','Near Airport','me@food.com','','','','','No other Details.','','',NULL,NULL,NULL,NULL,339,2,755,20,101,'18.5362084','73.89397480000002',13,'Thai Food','41','','','Baby Changing\r\nWifi','4pm to 6pm Buy 1 Get 1 Free on Beer','251759',14,12,2,NULL,NULL),(125,'1','Punjabi Rasoi','','Dinner buffet','','20% for on Dinner Buffet','images/user_images/haveli-restaurant-jalandhar-punjab_Ni6JM6S.jpg','Fergusson College Rd','','Shivajinagar','','manager@punjabirasoi.com','','','','','','','',NULL,NULL,NULL,NULL,339,NULL,1585,20,85,'18.5235694','73.84112789999995',13,'Punjabi dishes, Indian cuisines. ','33','','','','		                                             \r\n		                                             ','387066',14,12,2,NULL,NULL),(126,'1','Tyres Advert','','We specialize in all types of tyres for every season','','20% Discount on Race Tyres','images/user_images/280809mic-_KFtaynf.jpg','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','infor@tyresadv.com','','','','','We need specific details for your car to help you with the best set of tyres','','',NULL,'','',NULL,347,2,100,20,82,'18.5073985','73.80765040000006',13,'','1','','','','','1911870',47,35,NULL,NULL,NULL),(127,'1','Resident Advert','','We deliver luxurious flats at affordable prices ','','No Processing fee','images/user_images/d37d54c3a97d60e9707c8d7e2eb6d5ba.jpg','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','info@resiadv.com','','1500','Ready & Available','','we help in moving in too','10','25',NULL,NULL,NULL,NULL,344,2,445,20,85,'18.5073985','73.80765040000006',13,'','8','','','','','36124',23,22,NULL,NULL,NULL),(130,'1','Hospital Advert','','We have all facilities','','50 % off for Poor patients','images/user_images/hospital_yVOva1G.jpg','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','info@hospitaladv.com','','','','','','','',NULL,NULL,NULL,NULL,345,2,186,20,76,'18.5073985','73.80765040000006',13,'Special attendant for old patients','1','','','','		                                             ','407643',24,NULL,NULL,NULL,NULL),(131,'1','Footwear Advert','','We deal in all types of footwear','','','images/user_images/foot1.jpg','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','info@footwear1.com','','','','','','','',NULL,NULL,NULL,NULL,346,NULL,101,20,82,'18.5073985','73.80765040000006',13,'Ladies footwear',NULL,'','','','','202993',31,NULL,NULL,NULL,NULL),(132,'1','Italian Advert','','We specialize in all kinds of Italian foods','','15% off on Pasta','','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','info@italianfoods.com','','','','','','','',NULL,NULL,NULL,NULL,339,NULL,445,20,101,'18.5073985','73.80765040000006',13,'Pasta','3','','','','','0',22,NULL,NULL,NULL,NULL),(134,'1','Europe Trip','','All packages are given here','','15% Off','images/user_images/Tour-Travels-10_FCU450f.jpg','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','info@euradv.com','','','','','','','',NULL,NULL,NULL,NULL,351,2,19,20,80,'18.5073985','73.80765040000006',13,'','1','','','','','44452',59,NULL,NULL,NULL,NULL),(135,'1','Car Loan','','We provide car loans','','8% interest on loans','images/user_images/images_3_8qs8LYI.jpg','Kothrud, Pune, Maharashtra 411038, India','','Kothrud','','info@carloan.com','','','','','','','',NULL,NULL,NULL,NULL,349,NULL,773,20,80,'18.5073985','73.80765040000006',13,'',NULL,'','','','','0',50,41,NULL,NULL,NULL),(136,'1','Placement letter with admission','','100% job placement for candidates','','','images/user_images/col.jpg','Bhusari Colony','','Kothrud','','college@info.com','','','','','','','',NULL,NULL,NULL,NULL,350,NULL,361,20,78,'18.5082124','73.79043960000001',13,'','1','','','','','181425',57,NULL,NULL,NULL,NULL),(137,'1','hotel','','this is trial','','','images/user_images/stock-photo-portrait-of-smiling-middle-age-woman-wearing-casual-clothing-while-standing-against-isolated-324702065.jpg','pune','','kothrud','','yogesh@bynry.com','','','','','','','',NULL,NULL,NULL,NULL,351,NULL,559,20,102,'20.593684','78.96288000000004',13,'',NULL,'','','','		                                             ','0',59,NULL,NULL,NULL,NULL),(140,'1','ygi','','sxAX','','','images/user_images/1_7BAbhhu.PNG','asascsacas','','pune','','yogesh@b.com','','','','','','','',NULL,NULL,NULL,NULL,350,NULL,559,20,103,'26.2006043','92.93757389999996',13,'',NULL,'','','','','1607946',55,NULL,NULL,NULL,NULL),(141,'1','efefewf','','fefewfewf','','','images/user_images/3_wa7JPy4.png','wdqdqwdwwfef','','pune','','yogesh@by.com','','','','','','','',NULL,NULL,NULL,NULL,350,NULL,559,20,103,'20.593684','78.96288000000004',13,'',NULL,'','','','','0',56,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `digispaceapp_advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advert_category_map`
--

DROP TABLE IF EXISTS `digispaceapp_advert_category_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advert_category_map` (
  `adv_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_level` varchar(30) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  `category_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`adv_cat_id`),
  KEY `digispace_advert_id_id_4e838b88_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  KEY `dig_category_id_id_6412455f_fk_digispaceapp_category_category_id` (`category_id_id`),
  CONSTRAINT `dig_category_id_id_6412455f_fk_digispaceapp_category_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `digispaceapp_category` (`category_id`),
  CONSTRAINT `digispace_advert_id_id_4e838b88_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advert_category_map`
--

LOCK TABLES `digispaceapp_advert_category_map` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advert_category_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `digispaceapp_advert_category_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advert_video`
--

DROP TABLE IF EXISTS `digispaceapp_advert_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advert_video` (
  `advert_video_id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_video_name` varchar(500) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`advert_video_id`),
  KEY `digispace_advert_id_id_ed724244_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_ed724244_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advert_video`
--

LOCK TABLES `digispaceapp_advert_video` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advert_video` DISABLE KEYS */;
INSERT INTO `digispaceapp_advert_video` VALUES (1,'images/user_images/Richard_Melanson_Sing_a_Song_YkZgQmc_YYSX3Kc.jpg',NULL,NULL,NULL,NULL,NULL),(2,'images/user_images/big_buck_bunny_720p_1mb.mp4',NULL,NULL,NULL,NULL,NULL),(3,'images/user_images/Justine_Ng_Eiffel_Paris._ZkVmSA.jpg',NULL,NULL,NULL,NULL,NULL),(5,'images/user_images/Flavio_Speed_ZkVlQw_u5dDVOc.jpg',NULL,NULL,NULL,NULL,NULL),(6,'images/user_images/WhatsApp-Video-20160709_1.mp4',NULL,NULL,NULL,NULL,NULL),(12,'images/user_images/280526_main.jpg',NULL,NULL,NULL,NULL,NULL),(16,'images/user_images/WhatsApp-Video-20160709_Po08DHV.mp4',NULL,NULL,NULL,NULL,NULL),(17,'images/user_images/WhatsApp-Video-20160709_1_iuXMIi4.mp4',NULL,NULL,NULL,NULL,NULL),(18,'images/user_images/WhatsApp-Video-20160709_1_qtDveHm.mp4',NULL,NULL,NULL,NULL,NULL),(19,'images/user_images/WAPWON.COM_Whats_App_New_Funny_Videos_-_Free_Download_-_Whats_app_Calling_-_New_Videos_2015.3gp',NULL,NULL,NULL,NULL,NULL),(20,'images/user_images/WAPWON.COM_Whats_App_New_Funny_Videos_-_Free_Download_-_Whats_app_Calling_-_New_Videos_2015_1.3gp',NULL,NULL,NULL,NULL,NULL),(21,'images/user_images/WhatsApp-Video-20160709_1_z2ZtwkE.mp4',NULL,NULL,NULL,NULL,NULL),(22,'images/user_images/WhatsApp-Video-20160709_1_dyeXp0E.mp4',NULL,NULL,NULL,NULL,NULL),(23,'images/user_images/WhatsApp-Video-20160709_1_luNc8Y1.mp4',NULL,NULL,NULL,NULL,NULL),(24,'images/user_images/WhatsApp-Video-20160709_1_fdQbnev.mp4',NULL,NULL,NULL,NULL,NULL),(25,'images/user_images/WhatsApp-Video-20160709_1_2WKtqjL.mp4',NULL,NULL,NULL,NULL,NULL),(26,'images/user_images/WhatsApp-Video-20160709_1_7HDDb4l.mp4',NULL,NULL,NULL,NULL,NULL),(27,'images/user_images/WhatsApp-Video-20160709_1_fWuNUdz.mp4',NULL,NULL,NULL,NULL,NULL),(28,'images/user_images/WAPWON.COM_Whats_App_New_Funny_Videos_-_Free_Download_-_Whats_app_Calling_-_New_Videos_2015_1_CtMiF4B.3gp',NULL,NULL,NULL,NULL,NULL),(32,'images/user_images/WhatsApp-Video-20160709_1_6EW2glW.mp4',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `digispaceapp_advert_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advertfavourite`
--

DROP TABLE IF EXISTS `digispaceapp_advertfavourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advertfavourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11),
  `user_id_id` int(11),
  PRIMARY KEY (`id`),
  KEY `digispaceapp_advertfavourite_bd664c0d` (`advert_id_id`),
  KEY `digispaceapp_advertfavourite_18624dd3` (`user_id_id`),
  CONSTRAINT `digispace_advert_id_id_079045c0_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`),
  CONSTRAINT `user_id_id_93dc077b_fk_digispaceapp_consumerprofile_consumer_id` FOREIGN KEY (`user_id_id`) REFERENCES `digispaceapp_consumerprofile` (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advertfavourite`
--

LOCK TABLES `digispaceapp_advertfavourite` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advertfavourite` DISABLE KEYS */;
INSERT INTO `digispaceapp_advertfavourite` VALUES (212,'2016-07-29 10:59:27.877243',124,117),(216,'2016-07-29 16:55:51.366387',132,120),(223,'2016-07-30 10:02:01.571665',125,124),(225,'2016-08-01 04:33:13.845553',124,124);
/*!40000 ALTER TABLE `digispaceapp_advertfavourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advertimage`
--

DROP TABLE IF EXISTS `digispaceapp_advertimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advertimage` (
  `advert_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_image` varchar(500) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`advert_image_id`),
  KEY `digispace_advert_id_id_f1ee5af8_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_f1ee5af8_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advertimage`
--

LOCK TABLES `digispaceapp_advertimage` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advertimage` DISABLE KEYS */;
INSERT INTO `digispaceapp_advertimage` VALUES (13,'images/user_images/Flavio_Speed_ZkVlQw_tiHSmlz.jpg',NULL,NULL,NULL,NULL,NULL),(14,'images/user_images/Screenshot_from_2016-07-10_00-19-39.png',NULL,NULL,NULL,NULL,NULL),(42,'images/user_images/WhatsApp-Video-20160709_1_zKDvCSo.mp4',NULL,NULL,NULL,NULL,NULL),(43,'images/user_images/add_user_93BsiEp.png',NULL,NULL,NULL,NULL,NULL),(45,'images/user_images/Hearing_aids_coupan....zip',NULL,NULL,NULL,NULL,NULL),(46,'images/user_images/Screenshot_from_2016-03-29_16-36-14_1.png',NULL,NULL,NULL,NULL,NULL),(47,'images/user_images/Software_Design1.png',NULL,NULL,NULL,NULL,NULL),(49,'images/user_images/am.png',NULL,NULL,NULL,NULL,NULL),(50,'images/user_images/WhatsApp-Video-20160709_1_rssRiYp.mp4',NULL,NULL,NULL,NULL,NULL),(51,'images/user_images/add_user_93BsiEp_rc3Rs2h.png',NULL,NULL,NULL,NULL,NULL),(52,'images/user_images/WhatsApp-Video-20160709_1_l5le9o1.mp4',NULL,NULL,NULL,NULL,NULL),(53,'images/user_images/WhatsApp-Video-20160709_1_R9jlesJ.mp4',NULL,NULL,NULL,NULL,NULL),(65,'images/user_images/Al_King_Broadway_ZkBrRw_VKMz70B.jpg',NULL,NULL,NULL,NULL,NULL),(66,'images/user_images/american_old_cars_retro_muscle_cars_classic_2500x1667_wallpaper_Wallpaper_2560x1600_www.wall321.com.jpg',NULL,NULL,NULL,NULL,NULL),(67,'images/user_images/Andreas_Wienemann_Sunny_Day_YkdjSWI_14w97AV.jpg',NULL,NULL,NULL,NULL,NULL),(68,'images/user_images/add_bulk_trade_2tzu0cw.png',NULL,NULL,NULL,NULL,NULL),(69,'images/user_images/advert_view.png',NULL,NULL,NULL,NULL,NULL),(88,'images/user_images/gulmohar-builders-3021_VA4Kvfq.jpg',NULL,NULL,NULL,NULL,124),(89,'images/user_images/Builder1_UE1KdcR.jpg',NULL,NULL,NULL,NULL,124),(90,'images/user_images/Builder2_E1v6CCj.jpg',NULL,NULL,NULL,NULL,124),(91,'images/user_images/Hyundai.png',NULL,NULL,NULL,NULL,124),(92,'images/user_images/280809mic-.jpg',NULL,NULL,NULL,NULL,126),(93,'images/user_images/280809mic-_DBlsYQ0.jpg',NULL,NULL,NULL,NULL,126),(94,'images/user_images/280809mic-_S7cSKkD.jpg',NULL,NULL,NULL,NULL,126),(95,'images/user_images/Featured-image-10-punjabi-dishes-to-try-before-dying_NBwfJ6S.jpg',NULL,NULL,NULL,NULL,125),(96,'images/user_images/930006_74ytkVD.jpg',NULL,NULL,NULL,NULL,125),(97,'images/user_images/280809mic-_krzgGx6.jpg',NULL,NULL,NULL,NULL,126),(98,'images/user_images/_60fcc64c-c25e-11e5-bf87-369b775511f2_oTOUJgA.jpg',NULL,NULL,NULL,NULL,125),(99,'images/user_images/280809mic-_lJIeYQg.jpg',NULL,NULL,NULL,NULL,126),(100,'images/user_images/280809mic-_7vF67CF.jpg',NULL,NULL,NULL,NULL,126),(101,'images/user_images/can-stock-photo_csp2118018.jpg',NULL,NULL,NULL,NULL,127),(105,'images/user_images/Wind-Power-For-Hospitals.jpg',NULL,NULL,NULL,NULL,130),(106,'images/user_images/hospital.jpg',NULL,NULL,NULL,NULL,130),(107,'images/user_images/foot2.jpg',NULL,NULL,NULL,NULL,131),(108,'images/user_images/foot3.jpeg',NULL,NULL,NULL,NULL,131),(112,'images/user_images/turkey_tour_packages.jpg',NULL,NULL,NULL,NULL,134),(113,'images/user_images/col1.jpg',NULL,NULL,NULL,NULL,136),(114,'images/user_images/col2.jpg',NULL,NULL,NULL,NULL,136),(115,'images/user_images/col3.jpg',NULL,NULL,NULL,NULL,136),(117,'images/user_images/1_aTo8aXA.PNG',NULL,NULL,NULL,NULL,140);
/*!40000 ALTER TABLE `digispaceapp_advertimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advertlike`
--

DROP TABLE IF EXISTS `digispaceapp_advertlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advertlike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `digispace_advert_id_id_49ea1459_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  KEY `user_id_id_bfb86dbd_fk_digispaceapp_consumerprofile_consumer_id` (`user_id_id`),
  CONSTRAINT `digispace_advert_id_id_49ea1459_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`),
  CONSTRAINT `user_id_id_bfb86dbd_fk_digispaceapp_consumerprofile_consumer_id` FOREIGN KEY (`user_id_id`) REFERENCES `digispaceapp_consumerprofile` (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advertlike`
--

LOCK TABLES `digispaceapp_advertlike` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advertlike` DISABLE KEYS */;
INSERT INTO `digispaceapp_advertlike` VALUES (155,NULL,NULL,NULL),(158,'2016-07-29 11:31:21.350883',125,120),(161,'2016-07-29 16:55:54.049143',132,120),(188,'2016-07-30 10:42:09.433735',132,124),(195,'2016-07-30 11:14:25.009849',125,124),(197,'2016-08-02 04:48:20.070378',124,124);
/*!40000 ALTER TABLE `digispaceapp_advertlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advertratecard`
--

DROP TABLE IF EXISTS `digispaceapp_advertratecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advertratecard` (
  `advert_rate_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_service_name` varchar(30) NOT NULL,
  `duration` varchar(30) DEFAULT NULL,
  `cost` varchar(30) DEFAULT NULL,
  `advert_rate_card_status` varchar(15) DEFAULT NULL,
  `advert_rate_card_created_date` datetime(6) DEFAULT NULL,
  `advert_rate_card_created_by` varchar(30) DEFAULT NULL,
  `advert_rate_card_updated_by` varchar(30) DEFAULT NULL,
  `advert_rate_card_updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`advert_rate_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advertratecard`
--

LOCK TABLES `digispaceapp_advertratecard` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advertratecard` DISABLE KEYS */;
INSERT INTO `digispaceapp_advertratecard` VALUES (51,'No.1 Listing','3','450','1','2016-07-09 11:57:04.859790','Admin','Admin','2016-07-09 11:57:04.859797'),(52,'No.1 Listing','7','900','1','2016-07-09 15:06:16.889575','Admin','Admin','2016-07-09 15:06:16.889581'),(53,'No.1 Listing','30','3000','1','2016-07-09 15:06:38.154941','Admin','Admin','2016-07-09 15:06:38.154947'),(54,'No.1 Listing','90','7500','1','2016-07-09 15:06:59.676205','Admin','Admin','2016-07-09 15:06:59.676211'),(55,'No.1 Listing','180','14000','1','2016-07-09 15:07:53.282841','Admin','Admin','2016-07-09 15:07:53.282847'),(56,'No.2 Listing','3','300','1','2016-07-09 15:08:55.576625','Admin','Admin','2016-07-09 15:08:55.576631'),(57,'No.2 Listing','7','600','1','2016-07-09 15:09:18.508363','Admin','Admin','2016-07-09 15:09:18.508369'),(58,'No.2 Listing','30','2000','1','2016-07-09 15:10:20.863472','Admin','Admin','2016-07-09 15:10:20.863478'),(59,'No.2 Listing','90','4500','1','2016-07-09 15:10:50.893916','Admin','Admin','2016-07-09 15:10:50.893922'),(60,'No.2 Listing','180','8000','1','2016-07-09 15:11:17.462548','Admin','Admin','2016-07-09 15:11:17.462553'),(61,'No.3 Listing','3','200','1','2016-07-09 15:13:27.321654','Admin','Admin','2016-07-09 15:13:27.321662'),(62,'No.3 Listing','7','400','1','2016-07-09 15:14:56.893122','Admin','Admin','2016-07-09 15:14:56.893128'),(63,'No.3 Listing','30','1200','1','2016-07-09 15:15:36.839312','Admin','Admin','2016-07-09 15:15:36.839318'),(64,'No.3 Listing','90','3000','1','2016-07-09 15:16:14.525748','Admin','Admin','2016-07-09 15:16:14.525753'),(65,'No.3 Listing','180','4500','1','2016-07-09 15:16:38.324135','Admin','Admin','2016-07-09 15:41:35.390703'),(66,'Advert Slider','3','500','1','2016-07-09 15:25:53.947471','Admin','Admin','2016-07-09 15:25:53.947477'),(67,'Advert Slider','7','1000','1','2016-07-09 15:26:08.715007','Admin','Admin','2016-07-09 15:26:08.715013'),(68,'Advert Slider','30','2500','1','2016-07-09 15:26:26.535563','Admin','Admin','2016-07-09 15:26:26.535569'),(69,'Advert Slider','90','6000','1','2016-07-09 15:27:06.243421','Admin','Admin','2016-07-09 15:27:06.243428'),(70,'Advert Slider','180','10000','1','2016-07-09 15:27:19.061015','Admin','Admin','2016-07-09 15:27:19.061034'),(71,'Top Advert','3','2500','1','2016-07-09 15:28:04.893821','Admin','Admin','2016-07-09 15:28:04.893827'),(72,'Top Advert','7','5000','1','2016-07-09 15:34:31.906685','Admin','Admin','2016-07-09 15:34:31.906691'),(73,'Top Advert','30','18000','1','2016-07-09 15:39:09.894541','Admin','Admin','2016-07-09 15:39:09.894547');
/*!40000 ALTER TABLE `digispaceapp_advertratecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_advertsubscriptionmap`
--

DROP TABLE IF EXISTS `digispaceapp_advertsubscriptionmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_advertsubscriptionmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id_id` int(11) DEFAULT NULL,
  `business_id_id` int(11),
  PRIMARY KEY (`id`),
  KEY `digispace_advert_id_id_274d50bb_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  KEY `digispaceapp_advertsubscriptionmap_40a6a1de` (`business_id_id`),
  CONSTRAINT `dig_business_id_id_dba94c85_fk_digispaceapp_business_business_id` FOREIGN KEY (`business_id_id`) REFERENCES `digispaceapp_business` (`business_id`),
  CONSTRAINT `digispace_advert_id_id_274d50bb_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_advertsubscriptionmap`
--

LOCK TABLES `digispaceapp_advertsubscriptionmap` WRITE;
/*!40000 ALTER TABLE `digispaceapp_advertsubscriptionmap` DISABLE KEYS */;
INSERT INTO `digispaceapp_advertsubscriptionmap` VALUES (50,124,145),(51,125,147),(52,126,149),(53,127,150),(56,130,152),(57,131,153),(58,132,154),(60,134,146),(61,135,156),(62,136,157),(63,137,159),(66,140,161),(67,141,162);
/*!40000 ALTER TABLE `digispaceapp_advertsubscriptionmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_amenities`
--

DROP TABLE IF EXISTS `digispaceapp_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_amenities` (
  `amenity_id` int(11) NOT NULL AUTO_INCREMENT,
  `amenity` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`amenity_id`),
  KEY `digispace_advert_id_id_5921a973_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_5921a973_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_amenities`
--

LOCK TABLES `digispaceapp_amenities` WRITE;
/*!40000 ALTER TABLE `digispaceapp_amenities` DISABLE KEYS */;
INSERT INTO `digispaceapp_amenities` VALUES (236,'Garden',NULL,NULL,NULL,NULL,124),(238,'Garden',NULL,NULL,NULL,NULL,126),(239,'Car Parking',NULL,NULL,NULL,NULL,127),(240,'Club House',NULL,NULL,NULL,NULL,127),(241,'Swimming Pool',NULL,NULL,NULL,NULL,127),(242,'24 Hours Power Backup',NULL,NULL,NULL,NULL,127),(243,'Kids Play Area',NULL,NULL,NULL,NULL,127),(244,'Rain Water Harvesting',NULL,NULL,NULL,NULL,127),(251,'Garden',NULL,NULL,NULL,NULL,131),(252,'Garden',NULL,NULL,NULL,NULL,132),(254,'Garden',NULL,NULL,NULL,NULL,125),(256,'Garden',NULL,NULL,NULL,NULL,134),(258,'Garden',NULL,NULL,NULL,NULL,135),(259,'Garden',NULL,NULL,NULL,NULL,136),(261,'Garden',NULL,NULL,NULL,NULL,137),(264,'Garden',NULL,NULL,NULL,NULL,140),(265,'Garden',NULL,NULL,NULL,NULL,141),(266,'Garden',NULL,NULL,NULL,NULL,130);
/*!40000 ALTER TABLE `digispaceapp_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_business`
--

DROP TABLE IF EXISTS `digispaceapp_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_business` (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` varchar(30) NOT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `business_created_date` datetime(6) DEFAULT NULL,
  `business_created_by` varchar(30) DEFAULT NULL,
  `business_updated_by` varchar(30) DEFAULT NULL,
  `business_updated_date` datetime(6) DEFAULT NULL,
  `category_id` int(11),
  `supplier_id` int(11),
  `transaction_code` varchar(30),
  `service_rate_card_id_id` int(11),
  `is_active` varchar(2),
  PRIMARY KEY (`business_id`),
  KEY `digispaceapp_business_b583a629` (`category_id`),
  KEY `digispaceapp_business_c5bcd634` (`supplier_id`),
  KEY `digispaceapp_business_c2d9f434` (`service_rate_card_id_id`),
  CONSTRAINT `D4c103cdfb888fef5607a204b70a4524` FOREIGN KEY (`service_rate_card_id_id`) REFERENCES `digispaceapp_serviceratecard` (`service_rate_card_id`),
  CONSTRAINT `digisp_category_id_115e6c1f_fk_digispaceapp_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `digispaceapp_category` (`category_id`),
  CONSTRAINT `digisp_supplier_id_181c3501_fk_digispaceapp_supplier_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `digispaceapp_supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_business`
--

LOCK TABLES `digispaceapp_business` WRITE;
/*!40000 ALTER TABLE `digispaceapp_business` DISABLE KEYS */;
INSERT INTO `digispaceapp_business` VALUES (145,'90','07/30/2016','10/27/2016',NULL,NULL,NULL,NULL,339,101,'TID95048913',79,'1'),(146,'30','07/29/2016','08/27/2016',NULL,NULL,NULL,NULL,351,80,'TID02352705',78,'1'),(147,'30','07/29/2016','08/27/2016',NULL,NULL,NULL,NULL,339,85,'TID77582071',78,'1'),(149,'30','07/29/2016','08/27/2016',NULL,NULL,NULL,NULL,346,82,'TID03222748',78,'1'),(150,'30','07/29/2016','08/27/2016',NULL,NULL,NULL,NULL,344,85,'TID16307541',78,'1'),(152,'30','07/29/2016','08/27/2016',NULL,NULL,NULL,NULL,345,76,'TID03322855',78,'1'),(153,'90','07/29/2016','10/26/2016',NULL,NULL,NULL,NULL,346,82,'TID35836991',79,'1'),(154,'7','07/29/2016','08/04/2016',NULL,NULL,NULL,NULL,339,101,'TID00337469',77,'1'),(155,'30','07/30/2016','08/28/2016',NULL,NULL,NULL,NULL,350,78,'TID29450388',78,'1'),(156,'30','07/29/2016','08/27/2016',NULL,NULL,NULL,NULL,349,80,'TID03200132',78,'1'),(157,'90','07/30/2016','10/27/2016',NULL,NULL,NULL,NULL,350,78,'TID84902848',79,'1'),(158,'3','07/31/2016','08/02/2016',NULL,NULL,NULL,NULL,351,102,'TID44139763',76,'1'),(159,'3','07/31/2016','08/02/2016',NULL,NULL,NULL,NULL,351,102,'TID17492891',76,'1'),(160,'30','07/31/2016','08/29/2016',NULL,NULL,NULL,NULL,350,102,'TID51080843',78,'1'),(161,'7','07/31/2016','08/06/2016',NULL,NULL,NULL,NULL,339,103,'TID60547492',77,'1'),(162,'3','07/31/2016','08/02/2016',NULL,NULL,NULL,NULL,350,103,'TID35606786',76,'1'),(163,'30','07/31/2016','08/29/2016',NULL,NULL,NULL,NULL,346,104,'TID75897927',78,'0'),(166,'3','08/01/2016','08/03/2016',NULL,NULL,NULL,NULL,351,108,'TID50160600',76,'0');
/*!40000 ALTER TABLE `digispaceapp_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_category`
--

DROP TABLE IF EXISTS `digispaceapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_status` varchar(15) DEFAULT NULL,
  `category_created_date` datetime(6) DEFAULT NULL,
  `category_created_by` varchar(30) DEFAULT NULL,
  `category_updated_by` varchar(30) DEFAULT NULL,
  `category_updated_date` datetime(6) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `category_color` varchar(30),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_category`
--

LOCK TABLES `digispaceapp_category` WRITE;
/*!40000 ALTER TABLE `digispaceapp_category` DISABLE KEYS */;
INSERT INTO `digispaceapp_category` VALUES (339,'Restaurants','1','2016-07-28 13:39:43.000000','','','2016-07-29 07:00:57.181695','images/user_images/metbkk_bkg_nahm_restaurant_4ur7VCA.jpg','#fa0909'),(344,'Real Estate','1','2016-07-29 05:07:21.665567',NULL,NULL,'2016-07-29 05:07:21.665573','images/user_images/Adrian-D._Evening_In_Tiny_Town_YkVkQGA_C0sCy4s.jpg','#c32e2e'),(345,'Health','1','2016-07-29 05:16:22.643414',NULL,NULL,'2016-07-29 05:16:22.643419','images/user_images/doctor.jpg','#2abce7'),(346,'Lifestyle','1','2016-07-29 05:20:26.589926',NULL,'sagar@bynry.com','2016-08-02 11:26:16.273705','images/user_images/Fashion_and_Lifestyle.png','#e51988'),(347,'Automobiles','1','2016-07-29 05:47:41.114160',NULL,NULL,'2016-07-29 05:47:41.114165','images/user_images/automobiles.jpg','#3f70fc'),(348,'Industrial Supplier','1','2016-07-29 12:12:17.709588',NULL,'sagar@bynry.com','2016-08-02 13:06:18.317559','images/user_images/Screenshot_from_2016-07-10_00-04-02.png','#adb2cc'),(349,'Finances','1','2016-07-29 13:58:31.653890',NULL,NULL,'2016-07-29 13:58:31.653895','images/user_images/images_3.jpg','#10f33b'),(350,'Academics','1','2016-07-29 14:02:25.088090',NULL,NULL,'2016-07-29 14:02:25.088094','images/user_images/academics.jpg','#3c30ef'),(351,'Tours And Travel','1','2016-07-29 14:08:08.612702',NULL,NULL,'2016-07-29 14:08:08.612706','images/user_images/Tour-Travels-10.jpg','#e0de15');
/*!40000 ALTER TABLE `digispaceapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_categorycitymap`
--

DROP TABLE IF EXISTS `digispaceapp_categorycitymap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_categorycitymap` (
  `map_id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` varchar(500) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `category_id_id` int(11),
  `city_place_id_id` int(11),
  PRIMARY KEY (`map_id`),
  KEY `digispaceapp_categorycitymap_2d5f8f90` (`category_id_id`),
  KEY `digispaceapp_categorycitymap_89087a68` (`city_place_id_id`),
  CONSTRAINT `D7dfe0ba5cc9296e21eff65a0e9b316c` FOREIGN KEY (`city_place_id_id`) REFERENCES `digispaceapp_city_place` (`city_place_id`),
  CONSTRAINT `dig_category_id_id_9ca21b53_fk_digispaceapp_category_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `digispaceapp_category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_categorycitymap`
--

LOCK TABLES `digispaceapp_categorycitymap` WRITE;
/*!40000 ALTER TABLE `digispaceapp_categorycitymap` DISABLE KEYS */;
INSERT INTO `digispaceapp_categorycitymap` VALUES (126,'2','2016-07-29 05:07:21.698564',NULL,NULL,'2016-07-29 05:07:21.698568',344,13),(134,'1','2016-07-29 07:00:57.204498',NULL,NULL,'2016-07-29 07:00:57.204504',339,13),(135,'1','2016-07-29 07:00:57.215305',NULL,NULL,'2016-07-29 07:00:57.215309',339,42),(138,'3','2016-08-02 11:26:16.298307',NULL,NULL,'2016-08-02 11:26:16.298311',346,42),(140,'3','2016-08-02 13:06:18.341072',NULL,NULL,'2016-08-02 13:06:18.341075',348,13);
/*!40000 ALTER TABLE `digispaceapp_categorycitymap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_categorylevel1`
--

DROP TABLE IF EXISTS `digispaceapp_categorylevel1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_categorylevel1` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_status` varchar(15) DEFAULT NULL,
  `category_created_date` datetime(6) DEFAULT NULL,
  `category_created_by` varchar(30) DEFAULT NULL,
  `category_updated_by` varchar(30) DEFAULT NULL,
  `category_updated_date` datetime(6) DEFAULT NULL,
  `parent_category_id_id` int(11),
  PRIMARY KEY (`category_id`),
  KEY `digispaceapp_categorylevel1_22c47950` (`parent_category_id_id`),
  CONSTRAINT `D3bdc12f42a3f6cc9ee387366baeca82` FOREIGN KEY (`parent_category_id_id`) REFERENCES `digispaceapp_category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_categorylevel1`
--

LOCK TABLES `digispaceapp_categorylevel1` WRITE;
/*!40000 ALTER TABLE `digispaceapp_categorylevel1` DISABLE KEYS */;
INSERT INTO `digispaceapp_categorylevel1` VALUES (14,'Indian','1','2016-07-28 13:39:43.918066',NULL,NULL,'2016-07-28 13:39:43.918069',339),(15,'Chinese','1','2016-07-28 13:39:43.966288',NULL,NULL,'2016-07-28 13:39:43.966292',339),(16,'Thai','1','2016-07-28 13:39:44.003217',NULL,NULL,'2016-07-28 13:39:44.003221',339),(22,'Italian','1','2016-07-29 05:03:34.362357',NULL,NULL,'2016-07-29 05:03:34.362363',339),(23,'New Properties','1','2016-07-29 05:07:21.710563',NULL,NULL,'2016-07-29 05:07:21.710566',344),(24,'Hospitals','1','2016-07-29 05:16:22.673805',NULL,NULL,'2016-07-29 05:16:22.673808',345),(25,'Dental Clinics','1','2016-07-29 05:16:22.684161',NULL,NULL,'2016-07-29 05:16:22.684164',345),(26,'Doctors','1','2016-07-29 05:16:22.695679',NULL,NULL,'2016-07-29 05:16:22.695683',345),(27,'Shopping Malls','1','2016-07-29 05:20:26.632660',NULL,NULL,'2016-07-29 05:20:26.632664',346),(28,'Toys And Sports','1','2016-07-29 05:20:26.644982',NULL,NULL,'2016-07-29 05:20:26.644986',346),(29,'Superstores','1','2016-07-29 05:20:26.655075',NULL,NULL,'2016-07-29 05:20:26.655078',346),(30,'Clothing','1','2016-07-29 05:20:26.665609',NULL,NULL,'2016-07-29 05:20:26.665613',346),(31,'Footwears','1','2016-07-29 05:20:26.676366',NULL,NULL,'2016-07-29 05:20:26.676370',346),(32,'Jewellery','1','2016-07-29 05:20:26.686462',NULL,NULL,'2016-07-29 05:20:26.686466',346),(33,'Watches','1','2016-07-29 05:20:26.696679',NULL,NULL,'2016-07-29 05:20:26.696683',346),(34,'Bags & Accessories','1','2016-07-29 05:20:26.706935',NULL,NULL,'2016-07-29 05:20:26.706939',346),(35,'Perfumes & Cosmetics','1','2016-07-29 05:20:26.717936',NULL,NULL,'2016-07-29 05:20:26.717939',346),(36,'Home Décor','1','2016-07-29 05:20:26.728490',NULL,NULL,'2016-07-29 05:20:26.728493',346),(44,'Car Dealers','1','2016-07-29 05:47:41.148352',NULL,NULL,'2016-07-29 05:47:41.148356',347),(45,'Two Wheeler Dealers','1','2016-07-29 05:47:41.159229',NULL,NULL,'2016-07-29 05:47:41.159233',347),(46,'Accessories','1','2016-07-29 05:47:41.170967',NULL,NULL,'2016-07-29 05:47:41.170971',347),(47,'Auto Care','1','2016-07-29 05:47:41.182007',NULL,NULL,'2016-07-29 05:47:41.182011',347),(48,'Cables','1','2016-07-29 12:12:17.750325',NULL,NULL,'2016-07-29 12:12:17.750329',348),(50,'Loans','1','2016-07-29 13:58:31.684656',NULL,NULL,'2016-07-29 13:58:31.684661',349),(51,'Credit Cards ','1','2016-07-29 13:58:31.733767',NULL,NULL,'2016-07-29 13:58:31.733770',349),(52,'Insurances','1','2016-07-29 13:58:31.746044',NULL,NULL,'2016-07-29 13:58:31.746048',349),(53,'Investments','1','2016-07-29 13:58:31.757045',NULL,NULL,'2016-07-29 13:58:31.757048',349),(55,'Tutors','1','2016-07-29 14:02:25.128477',NULL,NULL,'2016-07-29 14:02:25.128481',350),(56,'Training Institutes','1','2016-07-29 14:02:25.140069',NULL,NULL,'2016-07-29 14:02:25.140073',350),(57,'Colleges','1','2016-07-29 14:02:25.152081',NULL,NULL,'2016-07-29 14:02:25.152085',350),(59,'Package Tourism','1','2016-07-29 14:08:08.644255',NULL,NULL,'2016-07-29 14:08:08.644259',351),(60,'Taxis & Rentals','1','2016-07-29 14:08:08.655871',NULL,NULL,'2016-07-29 14:08:08.655875',351),(61,'Ticketing Agencies','1','2016-07-29 14:08:08.667140',NULL,NULL,'2016-07-29 14:08:08.667143',351);
/*!40000 ALTER TABLE `digispaceapp_categorylevel1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_categorylevel2`
--

DROP TABLE IF EXISTS `digispaceapp_categorylevel2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_categorylevel2` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_status` varchar(15) DEFAULT NULL,
  `category_created_date` datetime(6) DEFAULT NULL,
  `category_created_by` varchar(30) DEFAULT NULL,
  `category_updated_by` varchar(30) DEFAULT NULL,
  `category_updated_date` datetime(6) DEFAULT NULL,
  `parent_category_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `D66bbd9ed1e2e99787bcd2fac7a56353` (`parent_category_id_id`),
  CONSTRAINT `D66bbd9ed1e2e99787bcd2fac7a56353` FOREIGN KEY (`parent_category_id_id`) REFERENCES `digispaceapp_categorylevel1` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_categorylevel2`
--

LOCK TABLES `digispaceapp_categorylevel2` WRITE;
/*!40000 ALTER TABLE `digispaceapp_categorylevel2` DISABLE KEYS */;
INSERT INTO `digispaceapp_categorylevel2` VALUES (12,'Punjabi','1','2016-07-28 13:39:43.929028',NULL,NULL,'2016-07-28 13:39:43.929035',14),(13,'South Indian','1','2016-07-28 13:39:43.942162',NULL,NULL,'2016-07-28 13:39:43.942166',14),(15,'Noodles','1','2016-07-28 13:39:43.977752',NULL,NULL,'2016-07-28 13:39:43.977758',15),(16,'Soups','1','2016-07-28 13:39:43.991539',NULL,NULL,'2016-07-28 13:39:43.991542',15),(22,'Residential','1','2016-07-29 05:07:21.721781',NULL,NULL,'2016-07-29 05:07:21.721785',23),(23,'Commercial','1','2016-07-29 05:07:21.734883',NULL,NULL,'2016-07-29 05:07:21.734887',23),(24,'Genral Physicians','1','2016-07-29 05:16:22.706266',NULL,NULL,'2016-07-29 05:16:22.706269',26),(25,'Paediatricians','1','2016-07-29 05:16:22.719471',NULL,NULL,'2016-07-29 05:16:22.719475',26),(26,'Gynaecologists','1','2016-07-29 05:16:22.731866',NULL,NULL,'2016-07-29 05:16:22.731870',26),(27,'Ayurvedic','1','2016-07-29 05:16:22.744876',NULL,NULL,'2016-07-29 05:16:22.744880',26),(28,'Kitchen','1','2016-07-29 05:20:26.739098',NULL,NULL,'2016-07-29 05:20:26.739101',36),(29,'Furnitures','1','2016-07-29 05:20:26.752792',NULL,NULL,'2016-07-29 05:20:26.752796',36),(34,'Batteries','1','2016-07-29 05:47:41.194793',NULL,NULL,'2016-07-29 05:47:41.194798',47),(35,'Tyres','1','2016-07-29 05:47:41.208817',NULL,NULL,'2016-07-29 05:47:41.208821',47),(36,'Repair Work','1','2016-07-29 05:47:41.221818',NULL,NULL,'2016-07-29 05:47:41.221823',47),(37,'Wash','1','2016-07-29 05:47:41.236675',NULL,NULL,'2016-07-29 05:47:41.236680',47),(38,'Wires','1','2016-07-29 12:12:17.762595',NULL,NULL,'2016-07-29 12:12:17.762598',48),(40,'Personal Loans','1','2016-07-29 13:58:31.695250',NULL,NULL,'2016-07-29 13:58:31.695253',50),(41,'Car Loans','1','2016-07-29 13:58:31.708410',NULL,NULL,'2016-07-29 13:58:31.708414',50),(42,'Home Loans','1','2016-07-29 13:58:31.721556',NULL,NULL,'2016-07-29 13:58:31.721559',50),(43,'Term Insurances','1','2016-07-29 13:58:31.767155',NULL,NULL,'2016-07-29 13:58:31.767159',53),(44,'Vehicle Insurances','1','2016-07-29 13:58:31.780598',NULL,NULL,'2016-07-29 13:58:31.780602',53),(45,'Health Insurances','1','2016-07-29 13:58:31.794023',NULL,NULL,'2016-07-29 13:58:31.794026',53),(46,'Travel Insurance','1','2016-07-29 13:58:31.806878',NULL,NULL,'2016-07-29 13:58:31.806882',53);
/*!40000 ALTER TABLE `digispaceapp_categorylevel2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_categorylevel3`
--

DROP TABLE IF EXISTS `digispaceapp_categorylevel3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_categorylevel3` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_status` varchar(15) DEFAULT NULL,
  `category_created_date` datetime(6) DEFAULT NULL,
  `category_created_by` varchar(30) DEFAULT NULL,
  `category_updated_by` varchar(30) DEFAULT NULL,
  `category_updated_date` datetime(6) DEFAULT NULL,
  `parent_category_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `D536bc4158fe1ef75a12a5786ed01668` (`parent_category_id_id`),
  CONSTRAINT `D536bc4158fe1ef75a12a5786ed01668` FOREIGN KEY (`parent_category_id_id`) REFERENCES `digispaceapp_categorylevel2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_categorylevel3`
--

LOCK TABLES `digispaceapp_categorylevel3` WRITE;
/*!40000 ALTER TABLE `digispaceapp_categorylevel3` DISABLE KEYS */;
INSERT INTO `digispaceapp_categorylevel3` VALUES (2,'Dinner','1','2016-07-28 13:57:19.411483',NULL,NULL,'2016-07-28 13:57:19.411487',12),(3,'Buffet','1','2016-07-28 13:57:19.442895',NULL,NULL,'2016-07-28 13:57:19.442899',12);
/*!40000 ALTER TABLE `digispaceapp_categorylevel3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_categorylevel4`
--

DROP TABLE IF EXISTS `digispaceapp_categorylevel4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_categorylevel4` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_status` varchar(15) DEFAULT NULL,
  `category_created_date` datetime(6) DEFAULT NULL,
  `category_created_by` varchar(30) DEFAULT NULL,
  `category_updated_by` varchar(30) DEFAULT NULL,
  `category_updated_date` datetime(6) DEFAULT NULL,
  `parent_category_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `D66f09d283a7ecd423765332721826c4` (`parent_category_id_id`),
  CONSTRAINT `D66f09d283a7ecd423765332721826c4` FOREIGN KEY (`parent_category_id_id`) REFERENCES `digispaceapp_categorylevel3` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_categorylevel4`
--

LOCK TABLES `digispaceapp_categorylevel4` WRITE;
/*!40000 ALTER TABLE `digispaceapp_categorylevel4` DISABLE KEYS */;
/*!40000 ALTER TABLE `digispaceapp_categorylevel4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_categorylevel5`
--

DROP TABLE IF EXISTS `digispaceapp_categorylevel5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_categorylevel5` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `category_status` varchar(15) DEFAULT NULL,
  `category_created_date` datetime(6) DEFAULT NULL,
  `category_created_by` varchar(30) DEFAULT NULL,
  `category_updated_by` varchar(30) DEFAULT NULL,
  `category_updated_date` datetime(6) DEFAULT NULL,
  `parent_category_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `D103bb571879c1acf35def67dbaec18a` (`parent_category_id_id`),
  CONSTRAINT `D103bb571879c1acf35def67dbaec18a` FOREIGN KEY (`parent_category_id_id`) REFERENCES `digispaceapp_categorylevel4` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_categorylevel5`
--

LOCK TABLES `digispaceapp_categorylevel5` WRITE;
/*!40000 ALTER TABLE `digispaceapp_categorylevel5` DISABLE KEYS */;
/*!40000 ALTER TABLE `digispaceapp_categorylevel5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_city`
--

DROP TABLE IF EXISTS `digispaceapp_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `city_status` varchar(10) DEFAULT NULL,
  `state_id_id` int(11) NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `digispaceapp_city_bcae966c` (`state_id_id`),
  CONSTRAINT `digispaceapp_state_id_id_09c9ce8b_fk_digispaceapp_state_state_id` FOREIGN KEY (`state_id_id`) REFERENCES `digispaceapp_state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_city`
--

LOCK TABLES `digispaceapp_city` WRITE;
/*!40000 ALTER TABLE `digispaceapp_city` DISABLE KEYS */;
INSERT INTO `digispaceapp_city` VALUES (16,'Pune',NULL,'','',NULL,'1',20),(17,'Mumbai',NULL,'','',NULL,'1',20),(18,'Chennai',NULL,'','',NULL,'1',29),(19,'Bengaluru',NULL,'','',NULL,'1',17),(20,'Kolkata',NULL,'','',NULL,'1',34);
/*!40000 ALTER TABLE `digispaceapp_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_city_place`
--

DROP TABLE IF EXISTS `digispaceapp_city_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_city_place` (
  `city_place_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_city` varchar(1000) DEFAULT NULL,
  `city_image` varchar(500) DEFAULT NULL,
  `climate` varchar(500) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `population` varchar(100) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `city_status` varchar(10) DEFAULT NULL,
  `state_id_id` int(11) NOT NULL,
  `city_id_id` int(11) NOT NULL,
  PRIMARY KEY (`city_place_id`),
  KEY `digispaceapp_state_id_id_2273673c_fk_digispaceapp_state_state_id` (`state_id_id`),
  KEY `digispaceapp_city_place_f4721383` (`city_id_id`),
  CONSTRAINT `digispaceapp_state_id_id_2273673c_fk_digispaceapp_state_state_id` FOREIGN KEY (`state_id_id`) REFERENCES `digispaceapp_state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_city_place`
--

LOCK TABLES `digispaceapp_city_place` WRITE;
/*!40000 ALTER TABLE `digispaceapp_city_place` DISABLE KEYS */;
INSERT INTO `digispaceapp_city_place` VALUES (13,'','images/user_images/spero-marker.jpg','','','undefined','undefined',NULL,'','',NULL,'1',20,16),(42,NULL,'',NULL,NULL,'100000000','undefined',NULL,NULL,NULL,NULL,'1',20,17),(43,NULL,'images/user_images/YOONIQ_Images_Happy_Steps_YkFjRmc.jpg',NULL,NULL,'9500000','undefined',NULL,NULL,NULL,NULL,'1',17,19),(44,'City of Historic Importance & Modern Outlook','images/user_images/Andreas_Wienemann_Sunny_Day_YkdjSWI.jpg',NULL,'Tamil, Tulu, English, Hindi','65810000','undefined',NULL,NULL,NULL,NULL,'1',29,18),(54,NULL,'images/user_images/Screenshot_from_2016-07-10_00-23-27.png',NULL,NULL,'undefined','undefined',NULL,NULL,NULL,NULL,'1',34,20);
/*!40000 ALTER TABLE `digispaceapp_city_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_consumer_feedback`
--

DROP TABLE IF EXISTS `digispaceapp_consumer_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_consumer_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `consumer_feedback` varchar(1000) DEFAULT NULL,
  `consumer_id_id` int(11),
  PRIMARY KEY (`feedback_id`),
  KEY `digispaceapp_consumer_feedback_9022b2d5` (`consumer_id_id`),
  CONSTRAINT `D313be1ceb03b4b01290103ea234d180` FOREIGN KEY (`consumer_id_id`) REFERENCES `digispaceapp_consumerprofile` (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_consumer_feedback`
--

LOCK TABLES `digispaceapp_consumer_feedback` WRITE;
/*!40000 ALTER TABLE `digispaceapp_consumer_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `digispaceapp_consumer_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_consumerprofile`
--

DROP TABLE IF EXISTS `digispaceapp_consumerprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_consumerprofile` (
  `user_ptr_id` int(11) NOT NULL,
  `consumer_id` int(11) NOT NULL AUTO_INCREMENT,
  `consumer_full_name` varchar(100) DEFAULT NULL,
  `consumer_contact_no` varchar(200) DEFAULT NULL,
  `consumer_email_id` varchar(100) DEFAULT NULL,
  `consumer_status` varchar(100) DEFAULT NULL,
  `consumer_created_date` datetime(6) DEFAULT NULL,
  `consumer_created_by` varchar(100) DEFAULT NULL,
  `consumer_updated_by` varchar(100) DEFAULT NULL,
  `consumer_updated_date` datetime(6) DEFAULT NULL,
  `sign_up_source` varchar(20) DEFAULT NULL,
  `consumer_profile_pic` varchar(500) NOT NULL,
  `device_token` varchar(20) DEFAULT NULL,
  `last_time_login` datetime(6),
  `online` varchar(100),
  `consumer_area` varchar(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`consumer_id`),
  UNIQUE KEY `user_ptr_id` (`user_ptr_id`),
  CONSTRAINT `digispaceapp_consumerprofil_user_ptr_id_b60e91b3_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_consumerprofile`
--

LOCK TABLES `digispaceapp_consumerprofile` WRITE;
/*!40000 ALTER TABLE `digispaceapp_consumerprofile` DISABLE KEYS */;
INSERT INTO `digispaceapp_consumerprofile` VALUES (261,105,'Bharat','9552039568','bharat@bynry.com','1','2016-07-02 11:34:21.571440','Bharat','Bharat','2016-07-02 11:34:21.571447','','','ewiufciNWrU:APA91bH_','2016-07-02 11:34:21.571602','1',NULL,NULL,NULL),(264,107,'Vikas Padhy','','vikas.d.padhy@gmail.com','1','2016-07-02 12:00:14.294229','Vikas Padhy','Vikas Padhy','2016-07-02 12:00:14.294233','GOOGLE_ANDROID','images/user_images/IMG_vikas.d.padhygmail.com_2016-07-02_120014_344408.jpg','cW4LtV2kHsI:APA91bFu','2016-07-02 12:00:14.294418','0',NULL,NULL,NULL),(266,108,'Akshay','9588456874','maldhureakshay@gmail.com','1','2016-07-02 12:08:13.222323','Akshay','Akshay','2016-07-02 12:08:13.222330','','','fjqesV8RGDk:APA91bF8','2016-07-02 12:08:13.222486','1',NULL,NULL,NULL),(296,110,'ankita','9087656789','ankitalahoti756@123.com','1','2016-07-04 09:15:09.251137','ankita','ankita','2016-07-04 09:15:09.251143','FACEBOOK','images/user_images/IMG_ankitalahoti756123.com_2016-07-04_091509_356778.png','123456','2016-07-04 09:15:09.251303','1',NULL,NULL,NULL),(359,112,'Kumar Roy','9595903117','kumar@bynry.com','1','2016-07-11 12:48:39.216347','Kumar Roy','Kumar Roy','2016-07-11 12:48:39.216354','','','','2016-07-11 12:48:39.216538','1',NULL,NULL,NULL),(366,113,'Shravan','9595903117','shravan@bynry.com','1','2016-07-14 16:05:04.511509','Shravan','Shravan','2016-07-14 16:05:04.511516','','','dbHecgzsNfc:APA91bFA','2016-07-14 16:05:04.511673','1',NULL,NULL,NULL),(367,114,'Vikas Padhy','7000000000','vikas@gmail.com','1','2016-07-15 02:52:42.022922','Vikas Padhy','Vikas Padhy','2016-07-15 02:52:42.022928','','','cOQkD9Xe-GM:APA91bH3','2016-07-15 02:52:42.023116','1',NULL,NULL,NULL),(368,115,'Pranali','9595903117','pranali@gmail.com','1','2016-07-15 06:55:30.881830','Pranali','Pranali','2016-07-15 06:55:30.881837','','','dbHecgzsNfc:APA91bFA','2016-07-15 06:55:30.881989','1',NULL,NULL,NULL),(379,116,'Bynry Bynry','','bynrymitest@gmail.com','1','2016-07-15 11:20:58.361519','Bynry Bynry','Bynry Bynry','2016-07-15 11:20:58.361525','FACEBOOK_ANDROID','images/user_images/IMG_bynrymitestgmail.com_2016-07-15_112058_407669.jpg','drBqBYr-rmc:APA91bFp','2016-07-15 11:20:58.361700','1',NULL,NULL,NULL),(381,117,'Dial A Room','','dialaroom6@gmail.com','1','2016-07-15 12:07:37.308898','Dial A Room','Dial A Room','2016-07-15 12:07:37.308903','FACEBOOK_ANDROID','images/user_images/IMG_dialaroom6gmail.com_2016-07-15_120737_358960.jpg','fFa0oD6i7pU:APA91bFw','2016-07-15 12:07:37.309079','1',NULL,NULL,NULL),(385,118,'Vikas Shardil','9634538522','vikashardil@gmail.com','1','2016-07-16 08:25:38.990029','Vikas Shardil','Vikas Shardil','2016-07-16 08:25:38.990035','','','cdB2gf8zFGA:APA91bEp','2016-07-16 08:25:38.990186','1',NULL,NULL,NULL),(386,119,'Vikas','9595903117','vkspadhy@gmail.com','1','2016-07-16 08:33:55.099980','Vikas','Vikas','2016-07-16 08:33:55.099987','','','fbfn9jZCPPM:APA91bEv','2016-07-16 08:33:55.100144','1',NULL,NULL,NULL),(388,120,'Vikas Kumawat','8956044567','vikas3@bynry.com','1','2016-07-16 09:15:45.293790','Vikas Kumawat','Vikas Kumawat','2016-07-16 09:15:45.293797','','','cmcyT6ydToI:APA91bEG','2016-07-16 09:15:45.293959','1',NULL,NULL,NULL),(392,121,'Vikas Kumawat','','vkumawat030@gmail.com','1','2016-07-17 04:45:59.832415','Vikas Kumawat','Vikas Kumawat','2016-07-17 04:45:59.832420','FACEBOOK_ANDROID','images/user_images/IMG_vkumawat030gmail.com_2016-07-17_044559_930907.jpg','eVwdreWqmvs:APA91bFR','2016-07-17 04:45:59.832601','1',NULL,NULL,NULL),(427,123,'Ritesh','7755920405','riteshjaiswal@yahoo.com','1','2016-07-27 18:31:31.365586','Ritesh','Ritesh','2016-07-27 18:31:31.365592','','','','2016-07-27 18:31:31.365784','1',NULL,NULL,NULL),(454,124,'Raj','8855222334','rajshri@bynry.com','1','2016-07-29 11:30:21.496323','Raj','Raj','2016-07-29 11:30:21.496330','','','d0e9Fzazx-k:APA91bF-','2016-07-29 11:30:21.496486','1',NULL,NULL,NULL),(455,125,'Piyush','9049975825','piyush@bynry.com','1','2016-07-30 08:21:09.984109','Piyush','Piyush','2016-07-30 08:21:09.984116','','','fjqesV8RGDk:APA91bF8','2016-07-30 08:21:09.984275','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `digispaceapp_consumerprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_couponcode`
--

DROP TABLE IF EXISTS `digispaceapp_couponcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_couponcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(20) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `digispace_advert_id_id_8ab6495c_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  KEY `user_id_id_5b7afb18_fk_digispaceapp_consumerprofile_consumer_id` (`user_id_id`),
  CONSTRAINT `digispace_advert_id_id_8ab6495c_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`),
  CONSTRAINT `user_id_id_5b7afb18_fk_digispaceapp_consumerprofile_consumer_id` FOREIGN KEY (`user_id_id`) REFERENCES `digispaceapp_consumerprofile` (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_couponcode`
--

LOCK TABLES `digispaceapp_couponcode` WRITE;
/*!40000 ALTER TABLE `digispaceapp_couponcode` DISABLE KEYS */;
INSERT INTO `digispaceapp_couponcode` VALUES (52,'CHPUNRE3652','2016-07-29 10:13:05.888952',125,120),(53,'CHPUNRE0945','2016-07-29 10:21:15.574516',124,117),(54,'CHPUNRE6980','2016-07-29 12:59:59.760766',125,124),(55,'CHPUNRE7303','2016-07-29 13:32:44.430630',124,124),(56,'CHPUNRE3624','2016-08-23 09:21:13.000000',124,120),(57,'CHPUNRE6777','2016-08-08 09:20:28.000000',127,124);
/*!40000 ALTER TABLE `digispaceapp_couponcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_currency`
--

DROP TABLE IF EXISTS `digispaceapp_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(150) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `Currency_created_by` varchar(150) DEFAULT NULL,
  `Currency_created_date` datetime(6) DEFAULT NULL,
  `Currency_updated_by` varchar(150) DEFAULT NULL,
  `Currency_updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_currency`
--

LOCK TABLES `digispaceapp_currency` WRITE;
/*!40000 ALTER TABLE `digispaceapp_currency` DISABLE KEYS */;
INSERT INTO `digispaceapp_currency` VALUES (2,'INR','1','admin','2016-06-24 11:22:33.000000','admin','2016-06-20 11:22:33.000000');
/*!40000 ALTER TABLE `digispaceapp_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_nearbyattraction`
--

DROP TABLE IF EXISTS `digispaceapp_nearbyattraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_nearbyattraction` (
  `attraction_id` int(11) NOT NULL AUTO_INCREMENT,
  `attraction` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`attraction_id`),
  KEY `digispace_advert_id_id_81c99a36_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_81c99a36_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_nearbyattraction`
--

LOCK TABLES `digispaceapp_nearbyattraction` WRITE;
/*!40000 ALTER TABLE `digispaceapp_nearbyattraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `digispaceapp_nearbyattraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_nearesthospital`
--

DROP TABLE IF EXISTS `digispaceapp_nearesthospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_nearesthospital` (
  `hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(50) DEFAULT NULL,
  `distance_frm_property` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`),
  KEY `digispace_advert_id_id_9c69566e_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_9c69566e_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_nearesthospital`
--

LOCK TABLES `digispaceapp_nearesthospital` WRITE;
/*!40000 ALTER TABLE `digispaceapp_nearesthospital` DISABLE KEYS */;
INSERT INTO `digispaceapp_nearesthospital` VALUES (36,'POL Hospital','1',NULL,NULL,NULL,NULL,127);
/*!40000 ALTER TABLE `digispaceapp_nearesthospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_nearestschool`
--

DROP TABLE IF EXISTS `digispaceapp_nearestschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_nearestschool` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(50) DEFAULT NULL,
  `distance_frm_property` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`school_id`),
  KEY `digispace_advert_id_id_17cb3781_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_17cb3781_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_nearestschool`
--

LOCK TABLES `digispaceapp_nearestschool` WRITE;
/*!40000 ALTER TABLE `digispaceapp_nearestschool` DISABLE KEYS */;
INSERT INTO `digispaceapp_nearestschool` VALUES (76,'KJH School','5',NULL,NULL,NULL,NULL,127);
/*!40000 ALTER TABLE `digispaceapp_nearestschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_nearestshopping`
--

DROP TABLE IF EXISTS `digispaceapp_nearestshopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_nearestshopping` (
  `shopping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(50) DEFAULT NULL,
  `distance_frm_property` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shopping_id`),
  KEY `digispace_advert_id_id_08a30cf2_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_08a30cf2_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_nearestshopping`
--

LOCK TABLES `digispaceapp_nearestshopping` WRITE;
/*!40000 ALTER TABLE `digispaceapp_nearestshopping` DISABLE KEYS */;
INSERT INTO `digispaceapp_nearestshopping` VALUES (43,'ASD Mall','2',NULL,NULL,NULL,NULL,127);
/*!40000 ALTER TABLE `digispaceapp_nearestshopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_paymentdetail`
--

DROP TABLE IF EXISTS `digispaceapp_paymentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_paymentdetail` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(30) NOT NULL,
  `payment_mode` varchar(30) NOT NULL,
  `payment_created_date` datetime(6) DEFAULT NULL,
  `payment_created_by` varchar(30) DEFAULT NULL,
  `payment_updated_by` varchar(30) DEFAULT NULL,
  `payment_updated_date` datetime(6) DEFAULT NULL,
  `note` varchar(30) DEFAULT NULL,
  `paid_amount` varchar(30),
  `payable_amount` varchar(30),
  `total_amount` varchar(30),
  `tax_type_id` int(11),
  `business_id_id` int(11),
  PRIMARY KEY (`payment_id`),
  KEY `digispaceapp_paymentdetail_bb6c67b5` (`tax_type_id`),
  KEY `digispaceapp_paymentdetail_40a6a1de` (`business_id_id`),
  CONSTRAINT `dig_business_id_id_dd38560e_fk_digispaceapp_business_business_id` FOREIGN KEY (`business_id_id`) REFERENCES `digispaceapp_business` (`business_id`),
  CONSTRAINT `digispaceapp_pay_tax_type_id_fefcde2b_fk_digispaceapp_tax_tax_id` FOREIGN KEY (`tax_type_id`) REFERENCES `digispaceapp_tax` (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_paymentdetail`
--

LOCK TABLES `digispaceapp_paymentdetail` WRITE;
/*!40000 ALTER TABLE `digispaceapp_paymentdetail` DISABLE KEYS */;
INSERT INTO `digispaceapp_paymentdetail` VALUES (28,'PMID32684330','cash',NULL,NULL,NULL,NULL,'Fully Paid','','18400','16000',3,NULL),(29,'PMID89363770','bank_transfer',NULL,NULL,NULL,NULL,'AZ','','2817.5','2450',3,NULL),(30,'PMID63689910','cash',NULL,NULL,NULL,NULL,'QA','','1840','1050',3,NULL),(31,'PMID37220718','cheque',NULL,NULL,NULL,NULL,'es','','11550','11000',4,NULL),(32,'PMID68512634','cash',NULL,NULL,NULL,NULL,'thk','345','345','300',3,NULL),(33,'PMID37415620','cheque',NULL,NULL,NULL,NULL,'bvbnn','','345','300',3,NULL),(93,'PMID36933643','cheque',NULL,NULL,NULL,NULL,'Cheque No 1234','8400','8400','8000',4,145),(94,'PMID48059116','bank_transfer',NULL,NULL,NULL,NULL,'QA','2500','2760','2200',3,146),(95,'PMID33782483','cash',NULL,NULL,NULL,NULL,'QA','2500','2530','2200',3,147),(96,'PMID02858180','cash',NULL,NULL,NULL,NULL,'QA','','2817.5','2450',3,149),(97,'PMID09856460','cash',NULL,NULL,NULL,NULL,'qa','','5175','4500',3,150),(98,'PMID12065606','cash',NULL,NULL,NULL,NULL,'QA','','5175','4500',3,152),(99,'PMID38679829','cash',NULL,NULL,NULL,NULL,'QA','','12650','11000',3,153),(100,'PMID92657022','cash',NULL,NULL,NULL,NULL,'QA','','1380','1200',3,154),(101,'PMID91428551','cheque',NULL,NULL,NULL,NULL,'QA','2200','2300','2000',3,155),(102,'PMID08047524','cash',NULL,NULL,NULL,NULL,'qa','','5175','4500',3,156),(103,'PMID57431492','cash',NULL,NULL,NULL,NULL,'QA','5200','5250','5000',4,157),(104,'PMID17956914','cash',NULL,NULL,NULL,NULL,'recieved payment','920','920','800',3,158),(105,'PMID16585004','cash',NULL,NULL,NULL,NULL,'rr','','920','800',3,159),(106,'PMID87029451','cash',NULL,NULL,NULL,NULL,'cash','2300','2300','2000',3,160),(107,'PMID55825688','bank_transfer',NULL,NULL,NULL,NULL,'FEWEDWWDWQE','1500','1575','1500',4,161),(108,'PMID32343531','cash',NULL,NULL,NULL,NULL,'sdvds','920','920','800',3,162),(109,'PMID74886389','cash',NULL,NULL,NULL,NULL,'dfvdvdv','2300','2300','2000',3,163),(110,'PMID79107234','cash',NULL,NULL,NULL,NULL,'QA','','1437.5','1250',3,166);
/*!40000 ALTER TABLE `digispaceapp_paymentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_phonecategory`
--

DROP TABLE IF EXISTS `digispaceapp_phonecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_phonecategory` (
  `phone_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_category_name` varchar(15) NOT NULL,
  `phone_category_status` varchar(15) DEFAULT NULL,
  `phone_category_created_date` datetime(6) DEFAULT NULL,
  `phone_category_created_by` varchar(30) DEFAULT NULL,
  `phone_category_updated_by` varchar(30) DEFAULT NULL,
  `phone_category_updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`phone_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_phonecategory`
--

LOCK TABLES `digispaceapp_phonecategory` WRITE;
/*!40000 ALTER TABLE `digispaceapp_phonecategory` DISABLE KEYS */;
INSERT INTO `digispaceapp_phonecategory` VALUES (3,'Mobile','1',NULL,'','',NULL),(4,'Landline','1',NULL,'','',NULL);
/*!40000 ALTER TABLE `digispaceapp_phonecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_phoneno`
--

DROP TABLE IF EXISTS `digispaceapp_phoneno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_phoneno` (
  `phone_no_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_no` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  `phone_category_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`phone_no_id`),
  KEY `digispace_advert_id_id_df5a8f9f_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  KEY `D12182cb9bb5c09912cd88da394a0371` (`phone_category_id_id`),
  CONSTRAINT `D12182cb9bb5c09912cd88da394a0371` FOREIGN KEY (`phone_category_id_id`) REFERENCES `digispaceapp_phonecategory` (`phone_category_id`),
  CONSTRAINT `digispace_advert_id_id_df5a8f9f_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_phoneno`
--

LOCK TABLES `digispaceapp_phoneno` WRITE;
/*!40000 ALTER TABLE `digispaceapp_phoneno` DISABLE KEYS */;
INSERT INTO `digispaceapp_phoneno` VALUES (170,'7766554433',NULL,NULL,NULL,NULL,124,3),(172,'9865986598',NULL,NULL,NULL,NULL,126,3),(173,'9865326598',NULL,NULL,NULL,NULL,127,3),(180,'9865986598',NULL,NULL,NULL,NULL,131,3),(181,'8585858585',NULL,NULL,NULL,NULL,132,3),(183,'9855062301',NULL,NULL,NULL,NULL,125,3),(185,'9865986595',NULL,NULL,NULL,NULL,134,3),(187,'9632587410',NULL,NULL,NULL,NULL,135,3),(188,'9898989898',NULL,NULL,NULL,NULL,136,3),(190,'9986526535',NULL,NULL,NULL,NULL,137,3),(193,'8989898989',NULL,NULL,NULL,NULL,140,3),(194,'9856231236',NULL,NULL,NULL,NULL,141,3),(195,'02055225522',NULL,NULL,NULL,NULL,130,4);
/*!40000 ALTER TABLE `digispaceapp_phoneno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_pincode`
--

DROP TABLE IF EXISTS `digispaceapp_pincode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_pincode` (
  `pincode_id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(250) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `updated_by` varchar(30) DEFAULT NULL,
  `pincode_status` varchar(10) DEFAULT NULL,
  `city_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pincode_id`),
  KEY `digispaceapp_pi_city_id_id_332ce809_fk_digispaceapp_city_city_id` (`city_id_id`),
  CONSTRAINT `digispaceapp_pi_city_id_id_332ce809_fk_digispaceapp_city_city_id` FOREIGN KEY (`city_id_id`) REFERENCES `digispaceapp_city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1586 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_pincode`
--

LOCK TABLES `digispaceapp_pincode` WRITE;
/*!40000 ALTER TABLE `digispaceapp_pincode` DISABLE KEYS */;
INSERT INTO `digispaceapp_pincode` VALUES (19,'411035','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(40,'411051','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(100,'411026','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(101,'411039','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(143,'411012','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(159,'410508','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(162,'411043','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(180,'411004','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(186,'411007','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(189,'412405','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(214,'411013','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(226,'411025','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(253,'410403','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(292,'411034','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(299,'411046','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(310,'411024','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(323,'410301','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(361,'411038','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(374,'410402','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(380,'411003','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(386,'411047','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(389,'410401','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(393,'412201','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(408,'413115','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(425,'412307','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(434,'413802','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(445,'411036','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(446,'412304','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(449,'411048','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(450,'411008','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(452,'411045','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(455,'412410','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(468,'411052','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(477,'411031','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(479,'412220','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(487,'412102','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(499,'412403','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(503,'413132','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(511,'412203','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(514,'412406','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(517,'412311','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(520,'411009','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(542,'411018','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(545,'411017','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(559,'410302','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(570,'411020','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(578,'411011','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(587,'412219','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(597,'412109','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(600,'410515','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(602,'412408','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(604,'412101','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(608,'411027','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(615,'411028','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(618,'413133','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(622,'411030','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(624,'412108','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(625,'413130','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(632,'410516','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(633,'413801','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(634,'413110','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(640,'410511','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(643,'412210','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(644,'411016','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(645,'411005','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(646,'410406','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(651,'413116','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(653,'411002','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(654,'412105','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(660,'411022','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(661,'412204','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(662,'413103','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(663,'411021','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(666,'411037','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(670,'412218','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(676,'412114','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(682,'412107','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(687,'411019','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(688,'412110','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(689,'410512','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(690,'410509','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(692,'410513','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(695,'412409','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(696,'413104','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(700,'413102','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(703,'410506','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(705,'412202','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(708,'411023','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(709,'412402','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(711,'413106','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(714,'412106','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(715,'412411','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(716,'411041','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(719,'412412','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(720,'410503','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(721,'412103','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(722,'410510','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(723,'412211','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(724,'412401','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(725,'411014','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(726,'412216','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(727,'412308','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(730,'412305','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(731,'412301','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(734,'411042','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(738,'412209','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(739,'412215','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(742,'412312','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(743,'410405','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(744,'412212','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(745,'412205','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(747,'412206','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(749,'411032','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(750,'410507','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(751,'411015','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(752,'412208','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(753,'413120','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(754,'412104','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(755,'411057','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(756,'412306','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(757,'410501','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(758,'413114','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(759,'412207','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(760,'412303','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(762,'411040','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(763,'411058','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(764,'412404','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(765,'413105','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(766,'412213','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(767,'411044','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(769,'412214','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(770,'410504','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(771,'410502','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(772,'410505','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(773,'411006','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(774,'411001','2016-06-24 11:01:38.000000','admin','2016-06-24 11:01:38.000000','admin','1',16),(783,'400037','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(785,'400053','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(789,'400050','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(791,'400090','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(797,'400091','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(799,'400092','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(803,'400093','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(821,'400013','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(823,'400017','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(831,'400062','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(833,'400026','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(835,'400058','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(847,'400011','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(850,'400049','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(854,'400101','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(855,'400067','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(857,'400068','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(860,'400095','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(861,'400051','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(874,'400006','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(878,'400103','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(881,'400020','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(883,'400059','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(885,'400019','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(889,'400016','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(890,'400104','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(891,'400008','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(894,'400069','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(895,'400065','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(896,'400014','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(899,'400021','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(902,'400004','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(903,'400064','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(904,'400102','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(906,'400012','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(907,'400003','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(908,'400025','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(909,'400009','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(910,'400035','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(914,'400097','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(916,'400060','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(920,'400066','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(922,'400099','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(924,'400029','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(926,'400054','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(927,'400032','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(928,'400096','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(929,'400015','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(930,'400063','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(931,'400028','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(935,'400033','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(936,'400007','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(937,'400002','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(938,'400001','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(939,'400034','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(940,'400027','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(941,'400010','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(942,'400052','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(943,'400005','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(944,'400055','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(945,'400061','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(946,'400098','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(948,'400057','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(949,'400056','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(951,'400031','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(954,'400018','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(956,'400030','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',17),(960,'600029','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(961,'600040','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(962,'600102','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(963,'600101','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(967,'600023','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(968,'600090','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(969,'600108','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(979,'600112','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(980,'600094','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(981,'600106','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(990,'600025','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(992,'600008','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(995,'600009','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(999,'600086','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1003,'600032','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1005,'600104','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1007,'600038','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1008,'600036','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1010,'600083','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1013,'600078','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1023,'600085','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1042,'600035','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1043,'600107','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1044,'600010','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1047,'600034','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1058,'600002','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1060,'600084','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1062,'600082','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1063,'600022','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1064,'600028','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1065,'600024','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1067,'600003','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1070,'600013','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1071,'600118','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1074,'600015','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1075,'600093','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1077,'600011','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1078,'600001','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1081,'600030','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1082,'600079','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1086,'600018','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1087,'600006','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1088,'600020','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1091,'600017','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1093,'600005','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1095,'600041','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1098,'600081','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1099,'600014','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1100,'600113','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1101,'600026','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1102,'600042','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1103,'600012','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1104,'600007','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1105,'600092','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1106,'600004','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1108,'600039','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1110,'600021','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1111,'600033','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1112,'600031','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',18),(1113,'560063','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1117,'560007','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1148,'560083','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1155,'560103','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1156,'560046','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1167,'560093','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1174,'560053','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1191,'560071','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1195,'560100','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1197,'560065','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1204,'560026','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1210,'560051','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1211,'560102','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1212,'560104','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1215,'560024','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1222,'560030','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1231,'560038','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1238,'560014','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1239,'560013','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1244,'560069','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1246,'560005','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1257,'560043','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1258,'560015','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1259,'560079','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1261,'562149','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1263,'560085','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1268,'560062','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1271,'560095','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1272,'560077','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1273,'560036','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1277,'560074','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1283,'560011','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1284,'560068','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1285,'560023','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1286,'560048','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1287,'560086','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1296,'560033','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1303,'560055','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1304,'560076','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1305,'560054','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1308,'560099','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1312,'560072','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1313,'560073','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1315,'560096','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1316,'560019','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1319,'560039','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1322,'560075','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1331,'560058','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1332,'560032','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1333,'560094','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1336,'560010','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1338,'560098','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1343,'560016','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1345,'560025','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1346,'560059','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1347,'560080','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1348,'560092','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1350,'560067','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1352,'562125','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1353,'560012','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1354,'560020','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1359,'560042','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1360,'560008','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1361,'560002','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1362,'560021','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1363,'560034','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1364,'560084','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1365,'560050','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1366,'560009','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1367,'560061','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1370,'562130','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1371,'560029','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1374,'560041','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1375,'560006','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1376,'560028','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1377,'560056','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1378,'562106','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1379,'560087','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1380,'560052','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1382,'560045','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1383,'560001','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1384,'562157','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1385,'560097','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1387,'560040','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1389,'560017','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1390,'560049','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1391,'560004','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1392,'560091','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1393,'560018','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1394,'560047','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1395,'560003','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1397,'560066','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1398,'560027','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1399,'562107','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1400,'560070','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1401,'560078','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1403,'560064','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1404,'560037','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1406,'560022','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',19),(1415,'700086','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1422,'700008','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1429,'700066','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1447,'700107','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1450,'700021','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1457,'700046','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1459,'700095','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1460,'700019','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1464,'700022','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1467,'700069','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1470,'700078','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1475,'700068','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1478,'700085','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1480,'700082','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1481,'700031','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1487,'700089','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1489,'700042','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1497,'700020','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1498,'700045','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1507,'700141','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1510,'700013','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1511,'700099','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1514,'700011','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1515,'700027','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1517,'700053','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1518,'700087','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1524,'700016','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1525,'700060','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1529,'700032','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1534,'700018','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1536,'700047','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1538,'700009','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1539,'700044','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1540,'700054','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1541,'700025','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1543,'700092','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1546,'700040','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1547,'700071','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1548,'700094','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1550,'700038','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1555,'700029','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1556,'700061','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1559,'700034','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1560,'700017','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1561,'700041','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1563,'700072','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1564,'700043','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1565,'700026','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1566,'700007','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1567,'700010','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1569,'700024','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1570,'700014','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1571,'700015','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1573,'700088','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1575,'700063','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1576,'700073','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1577,'700033','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1579,'700075','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1581,'700062','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1582,'700023','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1583,'700001','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1584,'700012','2024-06-16 11:01:00.000000','admin','2024-06-16 11:01:00.000000','admin','1',20),(1585,'411033','2016-07-15 15:55:30.000000','','2016-07-15 15:55:30.000000','','1',16);
/*!40000 ALTER TABLE `digispaceapp_pincode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_places`
--

DROP TABLE IF EXISTS `digispaceapp_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_places` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(250) DEFAULT NULL,
  `place_image` varchar(500) DEFAULT NULL,
  `place_type` varchar(30) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `updated_by` varchar(30) DEFAULT NULL,
  `city_place_id_id` int(11),
  PRIMARY KEY (`place_id`),
  KEY `digispaceapp_places_89087a68` (`city_place_id_id`),
  CONSTRAINT `D519174f575b05643e010270d5ceccb2` FOREIGN KEY (`city_place_id_id`) REFERENCES `digispaceapp_city_place` (`city_place_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_places`
--

LOCK TABLES `digispaceapp_places` WRITE;
/*!40000 ALTER TABLE `digispaceapp_places` DISABLE KEYS */;
INSERT INTO `digispaceapp_places` VALUES (8,'Shanivarvada','images/user_images/nhs.png','point_of_interest','2016-06-25 16:55:59.970775','Admin','2016-07-30 07:58:10.201829','(\'Admin\',)',13),(89,'CityCenter','images/user_images/turkey_tour_packages_bfigrkX.jpg','where_to_shop','2016-07-30 07:58:10.212608','Admin','2016-07-30 07:58:10.212614','Admin',13);
/*!40000 ALTER TABLE `digispaceapp_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_premiumservice`
--

DROP TABLE IF EXISTS `digispaceapp_premiumservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_premiumservice` (
  `premium_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `premium_service_name` varchar(30) NOT NULL,
  `no_of_days` varchar(30) NOT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `premium_service_status` varchar(15) DEFAULT NULL,
  `premium_service_created_date` datetime(6) DEFAULT NULL,
  `premium_service_created_by` varchar(30) DEFAULT NULL,
  `premium_service_updated_by` varchar(30) DEFAULT NULL,
  `premium_service_updated_date` datetime(6) DEFAULT NULL,
  `business_id_id` int(11),
  PRIMARY KEY (`premium_service_id`),
  KEY `digispaceapp_premiumservice_40a6a1de` (`business_id_id`),
  CONSTRAINT `dig_business_id_id_fb6ce20f_fk_digispaceapp_business_business_id` FOREIGN KEY (`business_id_id`) REFERENCES `digispaceapp_business` (`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_premiumservice`
--

LOCK TABLES `digispaceapp_premiumservice` WRITE;
/*!40000 ALTER TABLE `digispaceapp_premiumservice` DISABLE KEYS */;
INSERT INTO `digispaceapp_premiumservice` VALUES (276,'No.1 Listing','30','07/31/2016','08/29/2016','1','2016-07-28 15:06:29.000000','Admin','Admin','2016-07-28 15:06:29.000000',145),(284,'Advert Slider','30','07/29/2016','08/27/2016','1','2016-07-29 07:05:58.000000','Admin','Admin','2016-07-29 07:05:58.000000',150),(287,'No.1 Listing','3','07/29/2016','08/27/2016','1','2016-07-29 09:56:48.421537','Admin','Admin','2016-07-29 09:56:48.421542',149),(289,'Advert Slider','90','07/29/2016','10/26/2016','1','2016-07-29 11:06:01.000000','Admin','Admin','2016-07-29 11:06:01.000000',153),(291,'No.3 Listing','3','07/29/2016','07/31/2016','1','2016-07-29 13:18:54.042366','Admin','Admin','2016-07-29 13:18:54.042373',147),(293,'No.3 Listing','3','07/29/2016','08/04/2016','1','2016-07-29 14:11:32.547711','Admin','Admin','2016-07-29 14:11:32.547717',146),(294,'Advert Slider','7','07/29/2016','08/04/2016','1','2016-07-29 14:22:25.000000','Admin','Admin','2016-07-29 14:22:25.000000',156),(296,'No.2 Listing','None','07/31/2016','08/02/2016','1','2016-07-31 07:15:37.405596','Admin','Admin','2016-07-31 07:15:37.405602',161),(300,'No.1 Listing','3','08/01/2016','08/03/2016','1','2016-08-01 13:12:13.630319','Admin','Admin','2016-08-01 13:12:13.630323',166),(302,'Advert Slider','3','07/29/2016','08/27/2016','1','2016-08-02 11:00:23.300649','Admin','Admin','2016-08-02 11:00:23.300658',152);
/*!40000 ALTER TABLE `digispaceapp_premiumservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_privileges`
--

DROP TABLE IF EXISTS `digispaceapp_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_privileges` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilage` varchar(100) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `updated_by` varchar(30) DEFAULT NULL,
  `role_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`),
  KEY `digispaceap_role_id_id_0d1e77eb_fk_digispaceapp_userrole_role_id` (`role_id_id`),
  CONSTRAINT `digispaceap_role_id_id_0d1e77eb_fk_digispaceapp_userrole_role_id` FOREIGN KEY (`role_id_id`) REFERENCES `digispaceapp_userrole` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_privileges`
--

LOCK TABLES `digispaceapp_privileges` WRITE;
/*!40000 ALTER TABLE `digispaceapp_privileges` DISABLE KEYS */;
INSERT INTO `digispaceapp_privileges` VALUES (1,'Subscription Management','2016-07-27 16:35:28.597663',NULL,'2016-07-27 16:35:28.597672',NULL,15),(2,'Admin Management','2016-07-27 16:35:28.606083',NULL,'2016-07-27 16:35:28.606091',NULL,15),(3,'Consumer Management','2016-07-27 16:35:28.614984',NULL,'2016-07-27 16:35:28.614993',NULL,15),(4,'Push Notification','2016-07-27 16:35:28.623724',NULL,'2016-07-27 16:35:28.623733',NULL,15),(5,'Rate Card Management','2016-07-27 16:35:28.631910',NULL,'2016-07-27 16:35:28.631918',NULL,15),(6,'Ref Data Management','2016-07-27 16:35:28.640398',NULL,'2016-07-27 16:35:28.640407',NULL,15),(7,'Record Payment Module','2016-07-27 16:35:28.648604',NULL,'2016-07-27 16:35:28.648613',NULL,15),(8,'View Dashboard Details','2016-07-27 16:35:28.658454',NULL,'2016-07-27 16:35:28.658466',NULL,15),(9,'View Financial Details','2016-07-27 16:35:28.666738',NULL,'2016-07-27 16:35:28.666748',NULL,15),(10,'View List of TID with Details','2016-07-27 16:35:28.674929',NULL,'2016-07-27 16:35:28.674939',NULL,15),(11,'Assign Roles','2016-07-27 16:35:28.683229',NULL,'2016-07-27 16:35:28.683237',NULL,15),(12,'View Selected Subscriber Details','2016-07-27 16:35:28.691333',NULL,'2016-07-27 16:35:28.691341',NULL,15),(13,'View Advert Performance','2016-07-27 16:35:28.699700',NULL,'2016-07-27 16:35:28.699719',NULL,15),(54,'View Dashboard Details','2016-07-28 18:11:43.657325',NULL,'2016-07-28 18:11:43.657335',NULL,18),(55,'Consumer Management','2016-07-28 18:12:26.836322',NULL,'2016-07-28 18:12:26.836342',NULL,19),(100,'Rate Card Management','2016-07-29 07:09:36.042311',NULL,'2016-07-29 07:09:36.042324',NULL,17),(101,'Ref Data Management','2016-07-29 07:09:36.051328',NULL,'2016-07-29 07:09:36.051337',NULL,17),(102,'Record Payment Module','2016-07-29 07:09:36.074803',NULL,'2016-07-29 07:09:36.074818',NULL,17),(103,'View Dashboard Details','2016-07-29 07:09:36.083798',NULL,'2016-07-29 07:09:36.083809',NULL,17),(104,'View Financial Details','2016-07-29 07:09:36.092867',NULL,'2016-07-29 07:09:36.092880',NULL,17),(105,'View List of TID with Details','2016-07-29 07:09:36.106915',NULL,'2016-07-29 07:09:36.106926',NULL,17),(106,'Assign Roles','2016-07-29 07:09:36.117024',NULL,'2016-07-29 07:09:36.117037',NULL,17),(107,'View Selected Subscriber Details','2016-07-29 07:09:36.125475',NULL,'2016-07-29 07:09:36.125485',NULL,17),(108,'Rate Card Management','2016-07-29 09:21:40.184555',NULL,'2016-07-29 09:21:40.184565',NULL,16),(109,'Ref Data Management','2016-07-29 09:21:40.195157',NULL,'2016-07-29 09:21:40.195175',NULL,16),(110,'Record Payment Module','2016-07-29 09:21:40.204725',NULL,'2016-07-29 09:21:40.204734',NULL,16),(111,'View Dashboard Details','2016-07-29 09:21:40.214150',NULL,'2016-07-29 09:21:40.214159',NULL,16),(112,'View Financial Details','2016-07-29 09:21:40.224450',NULL,'2016-07-29 09:21:40.224469',NULL,16),(113,'View List of TID with Details','2016-07-29 09:21:40.233179',NULL,'2016-07-29 09:21:40.233188',NULL,16),(114,'View Selected Subscriber Details','2016-07-29 09:21:40.241938',NULL,'2016-07-29 09:21:40.241948',NULL,16),(115,'View Advert Performance','2016-07-29 09:21:40.250603',NULL,'2016-07-29 09:21:40.250612',NULL,16),(121,'All','2016-08-02 06:44:58.430553',NULL,'2016-08-02 06:44:58.430564',NULL,20),(122,'All','2016-08-02 07:08:13.571532',NULL,'2016-08-02 07:08:13.571542',NULL,21),(124,'All','2016-08-02 07:25:43.004099',NULL,'2016-08-02 07:25:43.004110',NULL,22),(125,'None','2016-08-02 07:25:43.012793',NULL,'2016-08-02 07:25:43.012801',NULL,22);
/*!40000 ALTER TABLE `digispaceapp_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_product`
--

DROP TABLE IF EXISTS `digispaceapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11),
  PRIMARY KEY (`product_id`),
  KEY `digispaceapp_product_bd664c0d` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_c646fe97_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_product`
--

LOCK TABLES `digispaceapp_product` WRITE;
/*!40000 ALTER TABLE `digispaceapp_product` DISABLE KEYS */;
INSERT INTO `digispaceapp_product` VALUES (34,'Thaali','85',NULL,NULL,NULL,NULL,124),(35,'Lunch Buffet','205',NULL,NULL,NULL,NULL,124),(36,'1 set of 18 Inch wheels','15000',NULL,NULL,NULL,NULL,126),(37,'1 set of 20 Inch wheels','20000',NULL,NULL,NULL,NULL,126),(38,'1 BHK','4500000',NULL,NULL,NULL,NULL,127),(39,'2 BHK','6200000',NULL,NULL,NULL,NULL,127),(40,'3 BHK','7500000',NULL,NULL,NULL,NULL,127),(50,'Pasta','1500',NULL,NULL,NULL,NULL,132),(53,'Dinner','1200',NULL,NULL,NULL,NULL,125),(54,'Buffet','2000',NULL,NULL,NULL,NULL,125),(55,'Special Ward','1500',NULL,NULL,NULL,NULL,130),(56,'ICU','5000',NULL,NULL,NULL,NULL,130);
/*!40000 ALTER TABLE `digispaceapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_serviceratecard`
--

DROP TABLE IF EXISTS `digispaceapp_serviceratecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_serviceratecard` (
  `service_rate_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(30) NOT NULL,
  `duration` varchar(30) DEFAULT NULL,
  `cost` varchar(30) DEFAULT NULL,
  `service_rate_card_status` varchar(15) DEFAULT NULL,
  `service_rate_card_created_date` datetime(6) DEFAULT NULL,
  `service_rate_card_created_by` varchar(30) DEFAULT NULL,
  `service_rate_card_updated_by` varchar(30) DEFAULT NULL,
  `service_rate_card_updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`service_rate_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_serviceratecard`
--

LOCK TABLES `digispaceapp_serviceratecard` WRITE;
/*!40000 ALTER TABLE `digispaceapp_serviceratecard` DISABLE KEYS */;
INSERT INTO `digispaceapp_serviceratecard` VALUES (76,'Basic Subscription Plan','3','800','1',NULL,'','',NULL),(77,'Basic Subscription Plan','7','1200','1',NULL,'','',NULL),(78,'Basic Subscription Plan','30','2000','1',NULL,'','',NULL),(79,'Basic Subscription Plan','90','5000','1',NULL,'','',NULL),(80,'Basic Subscription Plan','180','9000','1',NULL,'','',NULL),(81,'basic','180','10000','1','2016-07-31 07:47:54.448017','Admin','Admin','2016-07-31 07:47:54.448023');
/*!40000 ALTER TABLE `digispaceapp_serviceratecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_state`
--

DROP TABLE IF EXISTS `digispaceapp_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(500) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `state_status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_state`
--

LOCK TABLES `digispaceapp_state` WRITE;
/*!40000 ALTER TABLE `digispaceapp_state` DISABLE KEYS */;
INSERT INTO `digispaceapp_state` VALUES (6,'Andhra Pradesh',NULL,'','',NULL,'1'),(7,'Arunachal Pradesh',NULL,'','',NULL,'1'),(8,'Assam',NULL,'','',NULL,'1'),(9,'Bihar',NULL,'','',NULL,'1'),(10,'Chhattisgarh',NULL,'','',NULL,'1'),(11,'Goa',NULL,'','',NULL,'1'),(12,'Gujarat',NULL,'','',NULL,'1'),(13,'Haryana',NULL,'','',NULL,'1'),(14,'Himachal Pradesh',NULL,'','',NULL,'1'),(15,'Jammu & Kashmir',NULL,'','',NULL,'1'),(16,'Jharkhand',NULL,'','',NULL,'1'),(17,'Karnataka',NULL,'','',NULL,'1'),(18,'Kerala',NULL,'','',NULL,'1'),(19,'Madhya Pradesh',NULL,'','',NULL,'1'),(20,'Maharashtra',NULL,'','',NULL,'1'),(21,'Manipur',NULL,'','',NULL,'1'),(22,'Meghalaya',NULL,'','',NULL,'1'),(23,'Mizoram',NULL,'','',NULL,'1'),(24,'Nagaland',NULL,'','',NULL,'1'),(25,'Odisha (Orissa)',NULL,'','',NULL,'1'),(26,'Punjab',NULL,'','',NULL,'1'),(27,'Rajasthan',NULL,'','',NULL,'1'),(28,'Sikkim',NULL,'','',NULL,'1'),(29,'Tamil Nadu',NULL,'','',NULL,'1'),(30,'Telangana',NULL,'','',NULL,'1'),(31,'Tripura',NULL,'','',NULL,'1'),(32,'Uttar Pradesh',NULL,'','',NULL,'1'),(33,'Uttarakhand',NULL,'','',NULL,'1'),(34,'West Bengal','2016-07-06 12:12:12.000000','','',NULL,'1'),(35,'Andaman and Nicobar Islands','2016-07-06 12:12:12.000000','','',NULL,'1'),(36,'Chandigarh','2016-07-06 12:12:12.000000','','',NULL,'1'),(37,'Dadar and Nagar Haveli','2016-07-06 12:12:12.000000','','',NULL,'1'),(38,'Daman and Diu',NULL,'','',NULL,'1'),(39,'Delhi',NULL,'','',NULL,'1'),(40,'Lakshadweep',NULL,'','',NULL,'1'),(41,'Puducherry',NULL,'','',NULL,'1');
/*!40000 ALTER TABLE `digispaceapp_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_supplier`
--

DROP TABLE IF EXISTS `digispaceapp_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_supplier` (
  `user_ptr_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(100) DEFAULT NULL,
  `phone_no` varchar(200) DEFAULT NULL,
  `secondary_phone_no` varchar(100) DEFAULT NULL,
  `supplier_email` varchar(100) DEFAULT NULL,
  `secondary_email` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `business_details` varchar(10000) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `supplier_status` varchar(100) DEFAULT NULL,
  `supplier_created_date` datetime(6) DEFAULT NULL,
  `supplier_created_by` varchar(100) DEFAULT NULL,
  `supplier_updated_by` varchar(100) DEFAULT NULL,
  `supplier_updated_date` datetime(6) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `user_ptr_id` (`user_ptr_id`),
  KEY `digispaceapp_suppl_city_id_439301ee_fk_digispaceapp_city_city_id` (`city_id`),
  KEY `digispace_pincode_id_d25df78b_fk_digispaceapp_pincode_pincode_id` (`pincode_id`),
  KEY `digispaceapp_su_state_id_5dd78361_fk_digispaceapp_state_state_id` (`state_id`),
  CONSTRAINT `digispace_pincode_id_d25df78b_fk_digispaceapp_pincode_pincode_id` FOREIGN KEY (`pincode_id`) REFERENCES `digispaceapp_pincode` (`pincode_id`),
  CONSTRAINT `digispaceapp_su_state_id_5dd78361_fk_digispaceapp_state_state_id` FOREIGN KEY (`state_id`) REFERENCES `digispaceapp_state` (`state_id`),
  CONSTRAINT `digispaceapp_suppl_city_id_439301ee_fk_digispaceapp_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `digispaceapp_city` (`city_id`),
  CONSTRAINT `digispaceapp_supplier_user_ptr_id_f5bc47dc_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_supplier`
--

LOCK TABLES `digispaceapp_supplier` WRITE;
/*!40000 ALTER TABLE `digispaceapp_supplier` DISABLE KEYS */;
INSERT INTO `digispaceapp_supplier` VALUES (356,76,'Resto-n-Cuisine ','9865986598','','info@resto.com','','images/user_images/YOONIQ_Images_Happy_Steps_YkFjRmc_4NvAxMU.jpg','C23, RDF Tower, 4','','Good Quality Product','Kiran Behl','9887655432','kiran@resto.com','1',NULL,NULL,NULL,NULL,16,380,20),(358,78,'XC Tech','8978546532','','info@xct.com','','','Plot 2, Pertonas Heights','','WE are probably the best','Ranjan Swami','7898659865','ranjan@xct.com','1',NULL,NULL,NULL,NULL,16,542,20),(373,80,'Shopping Mall','8745120123','','ankita@123.com','','','pimpari','','Shopping mall to shop daily usage','Ankita','7888888888','ankitlahotia@gmail.com','1',NULL,NULL,NULL,NULL,16,253,20),(378,81,'Food @ Indigo23','9876546321','','info@food.co','','','C2, Saudamini','','We have a large range of Products','Vikas Sharma','9444486598','vikas@food.co','1',NULL,NULL,NULL,NULL,16,380,20),(390,82,'Metaphor Metalics','9823121654','9666666666','info@metalics.com','contact@metalics.com','images/user_images/idea-recharge_mIxEZfF.png','C2, Saudamini Commercial Complex','Right Bhusari Colony','Dealers in all types of metallurgical operations','Vineet Ghosh','9865865656','vineet@metalics.com','1',NULL,NULL,NULL,NULL,16,578,20),(393,84,'MK Furnitures','8985898588','7841025893','info@mkf.com','reach@mkf.com','','C2, 401, Saudamini Commercial Complex','Right Bhusari Colony, Kohrud Depo','Dealers in All types of customized furnitures ','Hina Akhtar','9865098650','hina@mkf.com','1',NULL,NULL,NULL,NULL,16,445,20),(396,85,'Fine Diner','8956895689','9865987845','contact@fine.com','','images/user_images/chicken-drumsticks-from-grill2_ssZMqIr.jpg','C2, Saudamini','','Good Dining','Nimisha Daman','9632587410','nimisha@fine.com','1',NULL,NULL,NULL,NULL,16,361,20),(397,86,'Fitness Forum','8528528522','','info@fitness.com','','','C2, Saudamini','','Awesome Fitness','Sahil Rana','7896541233','sahil@fitness.com','1',NULL,NULL,NULL,NULL,16,1585,20),(398,87,'Diner Mania','7894566312','','contact@dine.com','','','C2, Saudamini','','Good Food','Tanya Sanyal','7412589630','tanya@dine.com','1',NULL,NULL,NULL,NULL,16,774,20),(401,88,'Tungsten','7507542642','7507542642','akshay@bynry.com','','','Saudamini Complex, Kothrud','','dfhfdhdfhdfh','Kasturi Panse','9595903117','akshay1@bynry.com','1',NULL,NULL,NULL,NULL,17,938,20),(402,89,'Jumbo Mall','7582578258','','info@jumbo.com','','','C2, Saudamini','','dssd','Lakshmi Porwal','9632556565','lakshmi@jumbo.com','1',NULL,NULL,NULL,NULL,16,773,20),(403,90,'Killer Estate','7896541230','','info@killer.com','','','C2, Saudamini','','wsdsds','Kunal Ray','8585852225','kunal@killer.com','1',NULL,NULL,NULL,NULL,16,608,20),(404,91,'Lukewarm Fashion','8965896589','','info@lukewarm.com','','','C2, Saudamini','','Fashion','Hiten Ghosh','7896543210','hiten@fashion.com','1',NULL,NULL,NULL,NULL,16,361,20),(405,92,'Kaptin Sports','7854878787','','contact@kaptan.com','','','C2, Saudamini','','sdfdsf','Gita Parab','9633693396','gita@kaptin.com','1',NULL,NULL,NULL,NULL,16,445,20),(406,93,'Sentoza Industries','8569856985','','info@sentoza.com','','','C2, Saudamini','','All types of industrial supplies','Mithun Farooq','9865986598','mithun@sentoza.com','1',NULL,NULL,NULL,NULL,16,1585,20),(409,96,'Nino Spa','9876543211','','info@nino.com','','','C2, Saudamini','','Blissful Spa experiewnce','Lina Shah','9865986598','lina@nino.com','1',NULL,NULL,NULL,NULL,16,226,20),(414,100,'KillBill Diner','8585225852','','info@diner.com','','','C2, Saudamini Commercial Complex','','Awesome Food Awesome People','Shahin Khan','9632587411','shahin@diner.com','1',NULL,NULL,NULL,NULL,16,226,20),(439,101,'Garve Hyundai, Wakad','9954555770','',' crmsales@garvemotors.co.in','','','136/1A/6, Mumbai - Banglore Bypass Highway','Wakad, Pune','Hyundai Motor India Limited (HMIL), country\'s largest passenger car exporter and the second largest car manufacturer has launched a first of its kind integrated mobile application for service offering to its customers. ‘Hyundai Care\' mobile app ensures to assist its customers with all forms of service support, service network, car service calculator and service appointment with just a few clicks. With the click of a single button the enhanced selection process takes over. ','Ramesh Kumar','7755662309','ramesh@hyundai.com','1',NULL,NULL,NULL,NULL,16,755,20),(456,102,'Yogi','9850963696','','yogesh@bynry.com','','','bynry pune','','this is trial ','Yogi','9849636369','yogesh@bynry.com','1',NULL,NULL,NULL,NULL,16,389,20),(461,103,'yogesh hotels','9856231256','','yogesh@b.com','','','13333ddd','','yogesh ka hotel','yogesh','9856565656','yogesh@b.com','1',NULL,NULL,NULL,NULL,16,374,20),(462,104,'yogya','8956235689','','yo@yo.com','','','asdsad','','scsaac','yoyo','8956238956','yo@yo.com','1',NULL,NULL,NULL,NULL,16,374,20),(464,106,'Electronics','9874563210','','sagar@bynry.com','','images/user_images/1.png','Pune','','dhfngfh','Sonu','9874563210','pranali@bynry.com','1',NULL,NULL,NULL,NULL,16,323,20),(466,108,'Hyderabadi Cuisines','9865985986','','info@hchc.com','','images/user_images/chicken-drumsticks-from-grill2_9GWGLZF.jpg','Saudamini','','All types of delicious cuisines prepared in hyderabadi style','Chandan','9865985989','chandan@hchc.com','1',NULL,NULL,NULL,NULL,16,226,20);
/*!40000 ALTER TABLE `digispaceapp_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_tax`
--

DROP TABLE IF EXISTS `digispaceapp_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_tax` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_tax`
--

LOCK TABLES `digispaceapp_tax` WRITE;
/*!40000 ALTER TABLE `digispaceapp_tax` DISABLE KEYS */;
INSERT INTO `digispaceapp_tax` VALUES (3,'Service Tax 15%',15),(4,'VAT 4%',5);
/*!40000 ALTER TABLE `digispaceapp_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_userprofile`
--

DROP TABLE IF EXISTS `digispaceapp_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_userprofile` (
  `user_ptr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_contact_no` varchar(200) DEFAULT NULL,
  `usre_email_id` varchar(100) DEFAULT NULL,
  `user_status` varchar(100) DEFAULT NULL,
  `user_created_date` datetime(6) DEFAULT NULL,
  `user_created_by` varchar(100) DEFAULT NULL,
  `user_updated_by` varchar(100) DEFAULT NULL,
  `user_updated_date` datetime(6) DEFAULT NULL,
  `user_role_id` int(11),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_ptr_id` (`user_ptr_id`),
  KEY `digispaceapp_userprofile_1728abaf` (`user_role_id`),
  CONSTRAINT `digispace_user_role_id_bf89c233_fk_digispaceapp_userrole_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `digispaceapp_userrole` (`role_id`),
  CONSTRAINT `digispaceapp_userprofile_user_ptr_id_1b6dbd00_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_userprofile`
--

LOCK TABLES `digispaceapp_userprofile` WRITE;
/*!40000 ALTER TABLE `digispaceapp_userprofile` DISABLE KEYS */;
INSERT INTO `digispaceapp_userprofile` VALUES (171,2,'sagar@bynry.com','9403884595','sagar@bynry.com','1','2016-06-24 04:37:27.000000','admin','admin','2016-03-15 13:03:14.000000',NULL),(440,5,'kumar','3445634634','asdf@bynry.com','1','2016-07-28 15:33:36.652475','sagar@bynry.com',NULL,NULL,16),(441,6,'harry','9874563210','harry@bynry.com','1','2016-07-28 16:05:51.379147','sagar@bynry.com',NULL,NULL,15),(446,8,'vikaspadhy','9865965454','vikas212@bynry.com','1','2016-07-29 06:08:35.514852','sagar@bynry.com',NULL,NULL,15),(452,9,'Userasd','9898989898','vikas@qwqw.com','1','2016-07-29 10:01:19.365479','sagar@bynry.com',NULL,NULL,15),(453,10,'new12345','9768456735','new@asdf.com','1','2016-07-29 10:07:16.207023','sagar@bynry.com',NULL,NULL,15);
/*!40000 ALTER TABLE `digispaceapp_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_userrole`
--

DROP TABLE IF EXISTS `digispaceapp_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_userrole` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) NOT NULL,
  `role_status` varchar(15) DEFAULT NULL,
  `role_created_date` datetime(6) DEFAULT NULL,
  `role_created_by` varchar(30) DEFAULT NULL,
  `role_updated_by` varchar(30) DEFAULT NULL,
  `role_updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_userrole`
--

LOCK TABLES `digispaceapp_userrole` WRITE;
/*!40000 ALTER TABLE `digispaceapp_userrole` DISABLE KEYS */;
INSERT INTO `digispaceapp_userrole` VALUES (15,'Admin','1','2016-07-27 16:35:28.585732','sagar@bynry.com','sagar@bynry.com','2016-07-27 16:35:28.587904'),(16,'Subscriber','1','2016-07-27 16:45:15.882195','sagar@bynry.com','sagar@bynry.com','2016-07-29 09:21:40.162864'),(17,'Super User','1','2016-07-29 06:36:36.551699','sagar@bynry.com','sagar@bynry.com','2016-07-29 07:09:36.007664'),(18,'Marketing','1','2016-07-28 18:11:43.642791','sagar@bynry.com','sagar@bynry.com','2016-07-28 18:11:43.644910'),(19,'Consumer','1','2016-07-28 18:12:26.824579','sagar@bynry.com','sagar@bynry.com','2016-07-28 18:12:26.826698'),(20,'Digital Marketing','1','2016-08-02 06:44:19.249911','sagar@bynry.com','sagar@bynry.com','2016-08-02 06:44:58.410472'),(21,'Sales Manager','1','2016-08-02 07:08:13.559970','sagar@bynry.com','sagar@bynry.com','2016-08-02 07:08:13.562316'),(22,'Demo User','1','2016-08-02 07:24:40.041037','sagar@bynry.com','sagar@bynry.com','2016-08-02 07:25:42.986145');
/*!40000 ALTER TABLE `digispaceapp_userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digispaceapp_workinghours`
--

DROP TABLE IF EXISTS `digispaceapp_workinghours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digispaceapp_workinghours` (
  `working_hr_id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(500) DEFAULT NULL,
  `updated_by` varchar(500) DEFAULT NULL,
  `updation_date` datetime(6) DEFAULT NULL,
  `advert_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`working_hr_id`),
  KEY `digispace_advert_id_id_5d41c116_fk_digispaceapp_advert_advert_id` (`advert_id_id`),
  CONSTRAINT `digispace_advert_id_id_5d41c116_fk_digispaceapp_advert_advert_id` FOREIGN KEY (`advert_id_id`) REFERENCES `digispaceapp_advert` (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digispaceapp_workinghours`
--

LOCK TABLES `digispaceapp_workinghours` WRITE;
/*!40000 ALTER TABLE `digispaceapp_workinghours` DISABLE KEYS */;
INSERT INTO `digispaceapp_workinghours` VALUES (109,'All','9:00 AM','6:00 PM',NULL,NULL,NULL,NULL,124),(110,'Sunday','8.00 AM','8.30 AM',NULL,NULL,NULL,NULL,124),(112,'All','10:00 AM','8:30 PM',NULL,NULL,NULL,NULL,126),(113,'All','11:00 AM','9:30 PM',NULL,NULL,NULL,NULL,127),(117,'All','8:00 AM','8:00 PM',NULL,NULL,NULL,NULL,125);
/*!40000 ALTER TABLE `digispaceapp_workinghours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-06-09 13:42:11.974081','1','Maharashtra',1,'Added.',7,1),(2,'2016-06-09 13:42:32.679291','1','Pune',1,'Added.',8,1),(3,'2016-06-09 13:42:51.047620','1','444603',1,'Added.',9,1),(4,'2016-06-09 13:51:10.853980','1','1',1,'Added.',30,1),(5,'2016-06-09 13:56:59.332935','2','2',1,'Added.',30,1),(6,'2016-06-09 14:01:24.849881','3','3',1,'Added.',30,1),(7,'2016-06-09 14:01:47.319085','4','4',1,'Added.',30,1),(8,'2016-06-09 14:02:00.750149','5','5',1,'Added.',30,1),(9,'2016-06-09 14:04:06.146805','6','6',1,'Added.',30,1),(10,'2016-06-09 14:04:18.259479','7','7',1,'Added.',30,1),(11,'2016-06-09 14:04:32.038894','8','8',1,'Added.',30,1),(12,'2016-06-09 14:05:11.391024','4','4',2,'Changed duration.',30,1),(13,'2016-06-09 14:05:19.940956','8','8',2,'No fields changed.',30,1),(14,'2016-06-09 14:05:37.957018','9','9',1,'Added.',30,1),(15,'2016-06-09 14:05:49.990958','10','10',1,'Added.',30,1),(16,'2016-06-09 14:06:19.281323','11','11',1,'Added.',30,1),(17,'2016-06-09 14:06:39.924222','12','12',1,'Added.',30,1),(18,'2016-06-09 14:06:54.741976','13','13',1,'Added.',30,1),(19,'2016-06-09 14:07:36.343766','14','14',1,'Added.',30,1),(20,'2016-06-09 14:07:57.763177','15','15',1,'Added.',30,1),(21,'2016-06-09 14:08:20.177221','16','16',1,'Added.',30,1),(22,'2016-06-09 14:08:38.693557','17','17',1,'Added.',30,1),(23,'2016-06-09 14:08:50.156681','18','18',1,'Added.',30,1),(24,'2016-06-09 14:09:08.016696','19','19',1,'Added.',30,1),(25,'2016-06-09 14:09:23.352067','20','20',1,'Added.',30,1),(26,'2016-06-10 05:11:36.478925','1','1',1,'Added.',29,1),(27,'2016-06-10 05:16:07.568808','2','2',1,'Added.',29,1),(28,'2016-06-10 05:16:24.306933','3','3',1,'Added.',29,1),(29,'2016-06-10 05:16:38.142946','4','4',1,'Added.',29,1),(30,'2016-06-10 05:16:47.630867','5','5',1,'Added.',29,1),(31,'2016-06-10 05:18:22.279307','6','6',1,'Added.',29,1),(32,'2016-06-10 05:18:34.384498','7','7',1,'Added.',29,1),(33,'2016-06-10 05:18:46.410677','8','8',1,'Added.',29,1),(34,'2016-06-10 05:20:29.931737','9','9',1,'Added.',29,1),(35,'2016-06-10 05:20:42.119826','10','10',1,'Added.',29,1),(36,'2016-06-10 05:20:54.979810','11','11',1,'Added.',29,1),(37,'2016-06-10 05:21:07.287595','12','12',1,'Added.',29,1),(38,'2016-06-10 05:21:45.384414','13','13',1,'Added.',29,1),(39,'2016-06-10 05:22:00.644396','14','14',1,'Added.',29,1),(40,'2016-06-10 05:22:30.260051','15','15',1,'Added.',29,1),(41,'2016-06-10 05:23:04.106724','16','16',1,'Added.',29,1),(42,'2016-06-10 05:25:06.115846','17','17',1,'Added.',29,1),(43,'2016-06-10 05:25:19.849562','18','18',1,'Added.',29,1),(44,'2016-06-10 05:25:37.547549','19','19',1,'Added.',29,1),(45,'2016-06-10 05:26:43.131254','20','20',1,'Added.',29,1),(46,'2016-06-10 05:27:26.241202','21','21',1,'Added.',29,1),(47,'2016-06-10 05:27:48.697500','22','22',1,'Added.',29,1),(48,'2016-06-10 05:28:02.123095','23','23',1,'Added.',29,1),(49,'2016-06-10 05:28:12.531633','24','24',1,'Added.',29,1),(50,'2016-06-10 05:28:27.530051','25','25',1,'Added.',29,1),(51,'2016-06-10 08:56:37.043519','1','Maharashtra',2,'No fields changed.',7,1),(52,'2016-06-10 08:56:46.689068','2','Karnataka',1,'Added.',7,1),(53,'2016-06-10 08:56:55.863334','3','Gujarat',1,'Added.',7,1),(54,'2016-06-10 08:57:05.348596','4','Telangana',1,'Added.',7,1),(55,'2016-06-10 08:57:14.457688','5','Tamil Nadu',1,'Added.',7,1),(56,'2016-06-10 08:57:41.119340','1','Pune',2,'No fields changed.',8,1),(57,'2016-06-10 08:58:21.047942','1','Pune',2,'No fields changed.',8,1),(58,'2016-06-10 08:58:39.906714','2','Mumbai',1,'Added.',8,1),(59,'2016-06-10 09:20:13.650936','3','Hyderabad',1,'Added.',8,1),(60,'2016-06-10 09:20:27.636250','4','Ahmedabad',1,'Added.',8,1),(61,'2016-06-10 09:20:50.265681','5','Bengaluru',1,'Added.',8,1),(62,'2016-06-10 09:21:00.435805','6','Chennai',1,'Added.',8,1),(63,'2016-06-10 09:21:37.759337','1','411038',2,'Changed pincode.',9,1),(64,'2016-06-10 09:21:49.835037','2','400001',1,'Added.',9,1),(65,'2016-06-10 09:22:04.778893','3','680001',1,'Added.',9,1),(66,'2016-06-10 09:22:18.196826','4','380001',1,'Added.',9,1),(67,'2016-06-10 09:22:43.330517','5','780001',1,'Added.',9,1),(68,'2016-06-10 09:23:05.376471','6','876001',1,'Added.',9,1),(69,'2016-06-10 12:43:15.942809','1','Property',1,'Added.',12,1),(70,'2016-06-10 12:43:26.576284','2','Fashion',1,'Added.',12,1),(71,'2016-06-10 12:44:04.892895','3','Automobiles',1,'Added.',12,1),(72,'2016-06-10 13:24:38.474752','1','Landline',1,'Added.',13,1),(73,'2016-06-10 13:24:57.483630','2','Mobile',1,'Added.',13,1),(74,'2016-06-11 09:12:40.448104','2','Fashion & Lifestyle',2,'Changed category_name.',12,1),(75,'2016-06-11 09:15:32.718518','4','Restaurant',1,'Added.',12,1),(76,'2016-06-11 09:23:53.794158','5','Health',1,'Added.',12,1),(77,'2016-06-11 09:24:04.103774','6','Finance',1,'Added.',12,1),(78,'2016-06-11 09:25:10.284926','7','Finance',1,'Added.',12,1),(79,'2016-06-11 09:25:21.193522','8','Academics',1,'Added.',12,1),(80,'2016-06-11 09:26:09.727033','9','Travel',1,'Added.',12,1),(81,'2016-06-11 09:31:38.752366','1','Bronze',1,'Added.',NULL,1),(82,'2016-06-11 09:31:46.290199','2','Silver',1,'Added.',NULL,1),(83,'2016-06-11 09:31:53.376077','3','Gold',1,'Added.',NULL,1),(84,'2016-06-11 09:32:03.602335','4','Platinum',1,'Added.',NULL,1),(85,'2016-06-14 09:50:01.702020','5','wsxcv bgfg;l!@#',2,'Changed role_created_date.',10,1),(86,'2016-06-16 07:36:36.931157','1','1',1,'Added.',34,1),(87,'2016-06-16 07:36:56.901629','2','2',1,'Added.',34,1),(88,'2016-06-16 10:35:43.235710','13','13',2,'Changed duration.',29,1),(89,'2016-06-20 05:00:49.064645','23','Screw Driver',3,'',16,1),(90,'2016-06-20 05:00:49.073488','22','Screw Driver',3,'',16,1),(91,'2016-06-20 05:00:49.081975','21','Pani Puri',3,'',16,1),(92,'2016-06-20 05:00:49.090472','20','Rockstar',3,'',16,1),(93,'2016-06-20 05:00:49.099051','19','Advert Demo',3,'',16,1),(94,'2016-06-20 05:00:49.107308','18','Property Advert',3,'',16,1),(95,'2016-06-20 05:00:49.115961','17','qweasd',3,'',16,1),(96,'2016-06-20 05:00:49.124549','16','AZSDA',3,'',16,1),(97,'2016-06-20 05:00:49.133115','15','CH Heights',3,'',16,1),(98,'2016-06-20 05:00:49.142450','14','Rockstar',3,'',16,1),(99,'2016-06-20 05:00:49.150909','13','DSK',3,'',16,1),(100,'2016-06-20 05:00:49.159337','12','DSK',3,'',16,1),(101,'2016-06-20 05:00:49.171046','11','DSK',3,'',16,1),(102,'2016-06-20 05:00:49.181158','10','DSK',3,'',16,1),(103,'2016-06-20 05:00:49.189905','9','DSK',3,'',16,1),(104,'2016-06-20 05:00:49.199325','8','DSK',3,'',16,1),(105,'2016-06-20 05:00:49.207967','7','DSK',3,'',16,1),(106,'2016-06-20 05:00:49.216298','6','DSK',3,'',16,1),(107,'2016-06-20 05:00:49.224814','5','DSK',3,'',16,1),(108,'2016-06-20 05:00:49.233094','4','CH Heights',3,'',16,1),(109,'2016-06-20 05:00:49.241661','3','CH Heights',3,'',16,1),(110,'2016-06-20 05:00:49.250682','2','CH Heights',3,'',16,1),(111,'2016-06-20 05:00:49.264490','1','CH Heights',3,'',16,1),(112,'2016-06-20 05:01:12.738997','9','9',3,'',27,1),(113,'2016-06-20 05:01:12.747732','8','8',3,'',27,1),(114,'2016-06-20 05:01:12.755804','7','7',3,'',27,1),(115,'2016-06-20 05:01:12.764008','6','6',3,'',27,1),(116,'2016-06-20 05:01:12.774048','5','5',3,'',27,1),(117,'2016-06-20 05:01:12.783015','4','4',3,'',27,1),(118,'2016-06-20 05:01:12.790884','3','3',3,'',27,1),(119,'2016-06-20 05:01:12.816152','2','2',3,'',27,1),(120,'2016-06-20 05:01:12.824749','1','1',3,'',27,1),(121,'2016-06-20 05:01:35.043947','5','5',3,'',32,1),(122,'2016-06-20 05:01:35.052767','4','4',3,'',32,1),(123,'2016-06-20 05:01:35.061201','3','3',3,'',32,1),(124,'2016-06-20 05:01:35.069516','2','2',3,'',32,1),(125,'2016-06-20 05:01:35.078680','1','1',3,'',32,1),(126,'2016-06-20 05:04:27.580861','19','abs@shk.com',3,'',15,1),(127,'2016-06-20 05:04:27.594841','18','ankita897@bynry.com',3,'',15,1),(128,'2016-06-20 05:04:27.602899','17','ankita@bynry.com',3,'',15,1),(129,'2016-06-20 05:04:27.610866','16','rwerew@ss.qaz',3,'',15,1),(130,'2016-06-20 05:04:27.618774','15','ankita123@bynry.com',3,'',15,1),(131,'2016-06-20 05:04:27.626776','14','qwq@qq.qaz',3,'',15,1),(132,'2016-06-20 05:04:27.635161','13','qwq@qq.xxx',3,'',15,1),(133,'2016-06-20 05:04:27.644595','12','rwerew@ss.cxx',3,'',15,1),(134,'2016-06-20 05:04:27.652746','11','rwerew@ss.zzz',3,'',15,1),(135,'2016-06-20 05:04:27.661216','10','rwerew@ss.cb',3,'',15,1),(136,'2016-06-20 05:04:27.669826','9','ank909@123.com',3,'',15,1),(137,'2016-06-20 05:04:27.677945','8','an8980k@123.com',3,'',15,1),(138,'2016-06-20 05:04:27.685842','7','anki@123.com',3,'',15,1),(139,'2016-06-20 05:04:27.693913','6','ankita@123.com',3,'',15,1),(140,'2016-06-20 05:04:27.701977','5','ank@123.com',3,'',15,1),(141,'2016-06-20 05:04:27.712063','4','vikas3@chp.com',3,'',15,1),(142,'2016-06-20 05:04:27.720000','3','vikas2@chp.com',3,'',15,1),(143,'2016-06-20 05:04:27.727915','2','vikas@chp.com',3,'',15,1),(144,'2016-06-20 05:04:27.736499','1','aqqjjqnki@123.com',3,'',15,1),(145,'2016-06-20 05:53:25.421407','8','wwed',3,'',8,1),(146,'2016-06-20 05:53:25.429859','7','Panaji',3,'',8,1),(147,'2016-06-20 05:54:31.111288','1','INR',1,'Added.',14,1),(148,'2016-06-20 09:25:21.000000','2','Fashion and Lifestyle',2,'Changed category_name.',12,1),(149,'2016-06-20 09:26:19.000000','2','Fashion & Lifestyle',2,'Changed category_name.',12,1),(150,'2016-06-20 09:27:52.000000','2','Fashion and Lifestyle',2,'Changed category_name.',12,1),(151,'2016-06-20 11:04:31.898145','15','15',2,'Changed duration.',30,1),(152,'2016-06-22 05:42:35.785047','1','1',2,'Changed level.',12,1),(153,'2016-06-22 05:45:10.992040','26','26',3,'',12,1),(154,'2016-06-22 05:45:11.001055','25','25',3,'',12,1),(155,'2016-06-22 05:45:11.012001','24','24',3,'',12,1),(156,'2016-06-22 05:45:11.020340','23','23',3,'',12,1),(157,'2016-06-22 05:45:11.028417','22','22',3,'',12,1),(158,'2016-06-22 05:45:11.036823','21','21',3,'',12,1),(159,'2016-06-22 05:45:11.045513','20','20',3,'',12,1),(160,'2016-06-22 05:45:11.053856','19','19',3,'',12,1),(161,'2016-06-22 05:45:11.062737','18','18',3,'',12,1),(162,'2016-06-22 05:45:11.072069','17','17',3,'',12,1),(163,'2016-06-22 05:45:11.081404','16','16',3,'',12,1),(164,'2016-06-22 05:45:11.090623','15','15',3,'',12,1),(165,'2016-06-22 05:45:11.098923','14','14',3,'',12,1),(166,'2016-06-22 05:45:11.107088','13','13',3,'',12,1),(167,'2016-06-22 05:45:11.114922','12','12',3,'',12,1),(168,'2016-06-22 05:45:11.123985','11','11',3,'',12,1),(169,'2016-06-22 05:45:11.133473','10','10',3,'',12,1),(170,'2016-06-22 05:45:11.143046','9','9',3,'',12,1),(171,'2016-06-22 05:45:11.151798','8','8',3,'',12,1),(172,'2016-06-22 05:45:11.162567','7','7',3,'',12,1),(173,'2016-06-22 05:45:11.171315','6','6',3,'',12,1),(174,'2016-06-22 05:45:11.181008','5','5',3,'',12,1),(175,'2016-06-22 05:45:11.189007','4','4',3,'',12,1),(176,'2016-06-22 05:45:11.197087','3','3',3,'',12,1),(177,'2016-06-22 05:45:11.205420','2','2',3,'',12,1),(178,'2016-06-22 05:45:11.213755','1','1',3,'',12,1),(179,'2016-06-22 06:05:53.560956','27','27',3,'',12,1),(180,'2016-06-22 08:30:18.590513','46','46',3,'',12,1),(181,'2016-06-22 08:30:18.599406','45','45',3,'',12,1),(182,'2016-06-22 08:30:18.607301','44','44',3,'',12,1),(183,'2016-06-22 08:30:18.615439','43','43',3,'',12,1),(184,'2016-06-22 08:30:18.623497','42','42',3,'',12,1),(185,'2016-06-22 08:30:18.631453','41','41',3,'',12,1),(186,'2016-06-22 08:30:18.639750','40','40',3,'',12,1),(187,'2016-06-22 08:30:18.647706','39','39',3,'',12,1),(188,'2016-06-22 08:30:18.656666','38','38',3,'',12,1),(189,'2016-06-22 08:30:18.664421','37','37',3,'',12,1),(190,'2016-06-22 08:30:18.672119','36','36',3,'',12,1),(191,'2016-06-22 08:30:18.679823','35','35',3,'',12,1),(192,'2016-06-22 08:30:18.689066','34','34',3,'',12,1),(193,'2016-06-22 08:30:18.698488','33','33',3,'',12,1),(194,'2016-06-22 08:30:18.706304','32','32',3,'',12,1),(195,'2016-06-22 08:30:18.714331','31','31',3,'',12,1),(196,'2016-06-22 08:30:18.722477','30','30',3,'',12,1),(197,'2016-06-22 08:30:18.730589','29','29',3,'',12,1),(198,'2016-06-22 08:30:18.738898','28','28',3,'',12,1),(199,'2016-06-22 08:30:36.402106','47','47',1,'Added.',12,1),(200,'2016-06-22 09:04:15.738515','47','47',2,'Changed level.',12,1),(201,'2016-06-24 04:39:10.013659','17','17',3,'',27,1),(202,'2016-06-24 04:39:10.022588','16','16',3,'',27,1),(203,'2016-06-24 04:39:10.031669','15','15',3,'',27,1),(204,'2016-06-24 04:39:10.040467','14','14',3,'',27,1),(205,'2016-06-24 04:39:27.016974','1','1',3,'',18,1),(206,'2016-06-24 04:40:03.738117','24','sdfgh',3,'',16,1),(207,'2016-06-24 04:42:47.898386','91','91',3,'',12,1),(208,'2016-06-24 04:42:47.907442','90','90',3,'',12,1),(209,'2016-06-24 04:42:47.915849','89','89',3,'',12,1),(210,'2016-06-24 04:42:47.924640','88','88',3,'',12,1),(211,'2016-06-24 04:42:47.933167','87','87',3,'',12,1),(212,'2016-06-24 04:42:47.941597','86','86',3,'',12,1),(213,'2016-06-24 04:42:47.950604','85','85',3,'',12,1),(214,'2016-06-24 04:42:47.958941','79','79',3,'',12,1),(215,'2016-06-24 04:42:47.967851','78','78',3,'',12,1),(216,'2016-06-24 04:42:47.978713','77','77',3,'',12,1),(217,'2016-06-24 04:42:47.987700','76','76',3,'',12,1),(218,'2016-06-24 04:42:47.996645','75','75',3,'',12,1),(219,'2016-06-24 04:42:48.006219','74','74',3,'',12,1),(220,'2016-06-24 04:42:48.014181','73','73',3,'',12,1),(221,'2016-06-24 04:42:48.022724','72','72',3,'',12,1),(222,'2016-06-24 04:42:48.031165','71','71',3,'',12,1),(223,'2016-06-24 04:42:48.039441','66','66',3,'',12,1),(224,'2016-06-24 04:42:48.047308','65','65',3,'',12,1),(225,'2016-06-24 04:42:48.058455','64','64',3,'',12,1),(226,'2016-06-24 04:42:48.066294','63','63',3,'',12,1),(227,'2016-06-24 04:42:48.074944','62','62',3,'',12,1),(228,'2016-06-24 04:42:48.083086','61','61',3,'',12,1),(229,'2016-06-24 04:42:48.092425','60','60',3,'',12,1),(230,'2016-06-24 04:42:48.101163','59','59',3,'',12,1),(231,'2016-06-24 04:42:48.109464','58','58',3,'',12,1),(232,'2016-06-24 04:42:48.117552','57','57',3,'',12,1),(233,'2016-06-24 04:42:48.126043','56','56',3,'',12,1),(234,'2016-06-24 04:42:48.134705','55','55',3,'',12,1),(235,'2016-06-24 04:42:48.142976','54','54',3,'',12,1),(236,'2016-06-24 04:42:48.151007','53','53',3,'',12,1),(237,'2016-06-24 04:42:48.159020','52','52',3,'',12,1),(238,'2016-06-24 04:42:48.166887','51','51',3,'',12,1),(239,'2016-06-24 04:42:48.175602','50','50',3,'',12,1),(240,'2016-06-24 04:42:48.184227','49','49',3,'',12,1),(241,'2016-06-24 04:42:48.194353','48','48',3,'',12,1),(242,'2016-06-24 04:42:48.203296','47','47',3,'',12,1),(243,'2016-06-24 04:46:58.326799','11','XZS',3,'',8,1),(244,'2016-06-24 04:46:58.335982','10','fsdgg',3,'',8,1),(245,'2016-06-24 04:46:58.344649','9','ank',3,'',8,1),(246,'2016-06-24 04:49:08.722715','33','jhgjhg@jhgjhg.com',3,'',15,1),(247,'2016-06-24 04:49:08.731924','31','jghgjh@kjh.com',3,'',15,1),(248,'2016-06-24 04:49:08.740710','30','qaza@gmail.com',3,'',15,1),(249,'2016-06-24 04:49:08.749979','29','sdsd@gmail.com',3,'',15,1),(250,'2016-06-24 04:49:08.759327','28','ankita123456@bynry.com',3,'',15,1),(251,'2016-06-24 04:49:08.768821','25','ankita8980@bynry.com',3,'',15,1),(252,'2016-06-24 04:49:08.778216','24','ankita678@bynry.com',3,'',15,1),(253,'2016-06-24 04:49:08.787615','23','ankita123@bynry.com',3,'',15,1),(254,'2016-06-24 04:49:39.525559','22','sya@gm.com',3,'',15,1),(255,'2016-06-24 04:49:39.535117','21','binny@gm.com',3,'',15,1),(256,'2016-06-24 04:49:39.543904','20','vks@gm.com',3,'',15,1),(257,'2016-06-24 04:50:05.510380','9','9',3,'',32,1),(258,'2016-06-24 05:21:16.940577','2','Mumbai',3,'',8,1),(259,'2016-06-24 05:21:16.949112','1','Pune',3,'',8,1),(260,'2016-06-24 05:23:42.531792','12','Pune',1,'Added.',8,1),(261,'2016-06-24 05:25:19.969026','13','Mumbai',1,'Added.',8,1),(262,'2016-06-24 05:26:10.875595','7','411038',1,'Added.',9,1),(263,'2016-06-24 05:26:25.705591','8','400001',1,'Added.',9,1),(264,'2016-06-24 09:09:18.774878','5','Tamil Nadu',3,'',7,1),(265,'2016-06-24 09:09:18.784035','4','Telangana',3,'',7,1),(266,'2016-06-24 09:09:18.793487','3','Gujarat',3,'',7,1),(267,'2016-06-24 09:09:18.802761','2','Karnataka',3,'',7,1),(268,'2016-06-24 09:09:18.811439','1','Maharashtra',3,'',7,1),(269,'2016-06-24 09:09:58.669421','2','2',3,'',34,1),(270,'2016-06-24 09:09:58.677976','1','1',3,'',34,1),(271,'2016-06-24 09:10:19.947029','1','INR',3,'',14,1),(272,'2016-06-24 09:23:50.331804','6','Andhra Pradesh',1,'Added.',7,1),(273,'2016-06-24 09:24:10.239554','7','Arunachal Pradesh',1,'Added.',7,1),(274,'2016-06-24 09:24:19.786195','8','Assam',1,'Added.',7,1),(275,'2016-06-24 09:24:35.428689','9','Bihar',1,'Added.',7,1),(276,'2016-06-24 09:24:51.954608','10','Chhattisgarh',1,'Added.',7,1),(277,'2016-06-24 09:25:08.335489','11','Goa',1,'Added.',7,1),(278,'2016-06-24 09:26:55.145774','12','Gujarat',1,'Added.',7,1),(279,'2016-06-24 09:27:09.499820','13','Haryana',1,'Added.',7,1),(280,'2016-06-24 09:27:21.519031','14','Himachal Pradesh',1,'Added.',7,1),(281,'2016-06-24 09:27:41.947278','15','Jammu & Kashmir',1,'Added.',7,1),(282,'2016-06-24 09:27:52.227804','16','Jharkhand',1,'Added.',7,1),(283,'2016-06-24 09:28:01.742134','17','Karnataka',1,'Added.',7,1),(284,'2016-06-24 09:28:10.421131','18','Kerala',1,'Added.',7,1),(285,'2016-06-24 09:28:22.996303','19','Madhya Pradesh',1,'Added.',7,1),(286,'2016-06-24 09:28:42.487536','20','Maharashtra',1,'Added.',7,1),(287,'2016-06-24 09:28:51.183098','21','Manipur',1,'Added.',7,1),(288,'2016-06-24 09:29:47.816093','22','Meghalaya',1,'Added.',7,1),(289,'2016-06-24 09:29:56.145538','23','Mizoram',1,'Added.',7,1),(290,'2016-06-24 09:30:30.466548','24','Nagaland',1,'Added.',7,1),(291,'2016-06-24 09:30:39.975271','25','Odisha (Orissa)',1,'Added.',7,1),(292,'2016-06-24 09:31:30.446971','26','Punjab',1,'Added.',7,1),(293,'2016-06-24 09:31:48.338626','27','Rajasthan',1,'Added.',7,1),(294,'2016-06-24 09:32:04.689724','28','Sikkim',1,'Added.',7,1),(295,'2016-06-24 09:32:09.506554','29','Tamil Nadu',1,'Added.',7,1),(296,'2016-06-24 09:32:24.527241','30','Telangana',1,'Added.',7,1),(297,'2016-06-24 09:33:03.871742','31','Tripura',1,'Added.',7,1),(298,'2016-06-24 09:33:21.710328','32','Uttar Pradesh',1,'Added.',7,1),(299,'2016-06-24 09:33:40.214609','33','Uttarakhand',1,'Added.',7,1),(300,'2016-06-24 09:34:01.463108','34','West Bengal',1,'Added.',7,1),(301,'2016-06-24 09:50:15.960444','2','INR',1,'Added.',14,1),(302,'2016-06-24 09:50:43.668106','2','Mobile',3,'',13,1),(303,'2016-06-24 09:50:43.676813','1','Landline',3,'',13,1),(304,'2016-06-24 09:51:03.045494','3','Mobile',1,'Added.',13,1),(305,'2016-06-24 09:51:12.896816','4','Landline',1,'Added.',13,1),(306,'2016-06-24 10:02:25.807585','20','20',3,'',30,1),(307,'2016-06-24 10:02:25.816094','19','19',3,'',30,1),(308,'2016-06-24 10:02:25.824717','18','18',3,'',30,1),(309,'2016-06-24 10:02:25.832616','17','17',3,'',30,1),(310,'2016-06-24 10:02:25.841059','16','16',3,'',30,1),(311,'2016-06-24 10:02:25.849357','15','15',3,'',30,1),(312,'2016-06-24 10:02:25.858689','14','14',3,'',30,1),(313,'2016-06-24 10:02:25.867372','13','13',3,'',30,1),(314,'2016-06-24 10:02:25.876976','12','12',3,'',30,1),(315,'2016-06-24 10:02:25.886067','11','11',3,'',30,1),(316,'2016-06-24 10:02:25.894621','10','10',3,'',30,1),(317,'2016-06-24 10:02:25.902773','9','9',3,'',30,1),(318,'2016-06-24 10:02:25.911042','8','8',3,'',30,1),(319,'2016-06-24 10:02:25.920004','7','7',3,'',30,1),(320,'2016-06-24 10:02:25.928216','6','6',3,'',30,1),(321,'2016-06-24 10:02:25.936404','5','5',3,'',30,1),(322,'2016-06-24 10:02:25.944694','4','4',3,'',30,1),(323,'2016-06-24 10:02:25.953093','3','3',3,'',30,1),(324,'2016-06-24 10:02:25.962611','2','2',3,'',30,1),(325,'2016-06-24 10:02:25.971011','1','1',3,'',30,1),(326,'2016-06-24 10:05:35.204226','21','21',1,'Added.',30,1),(327,'2016-06-24 10:05:56.941357','21','21',2,'Changed duration.',30,1),(328,'2016-06-24 10:06:15.144343','22','22',1,'Added.',30,1),(329,'2016-06-24 10:06:50.534805','23','23',1,'Added.',30,1),(330,'2016-06-24 10:07:09.331411','24','24',1,'Added.',30,1),(331,'2016-06-24 10:07:32.180121','25','25',1,'Added.',30,1),(332,'2016-06-24 10:08:15.728298','26','26',1,'Added.',30,1),(333,'2016-06-24 10:08:52.005255','27','27',1,'Added.',30,1),(334,'2016-06-24 10:09:21.786634','28','28',1,'Added.',30,1),(335,'2016-06-24 10:09:42.762888','29','29',1,'Added.',30,1),(336,'2016-06-24 10:10:36.628526','30','30',1,'Added.',30,1),(337,'2016-06-24 10:11:22.635751','31','31',1,'Added.',30,1),(338,'2016-06-24 10:11:52.453683','32','32',1,'Added.',30,1),(339,'2016-06-24 10:12:16.257656','33','33',1,'Added.',30,1),(340,'2016-06-24 10:13:43.790387','34','34',1,'Added.',30,1),(341,'2016-06-24 10:14:11.719973','35','35',1,'Added.',30,1),(342,'2016-06-24 10:15:17.538296','36','36',1,'Added.',30,1),(343,'2016-06-24 10:16:26.760514','37','37',1,'Added.',30,1),(344,'2016-06-24 10:16:53.088988','38','38',1,'Added.',30,1),(345,'2016-06-24 10:17:25.622916','39','39',1,'Added.',30,1),(346,'2016-06-24 10:17:48.107623','40','40',1,'Added.',30,1),(347,'2016-06-24 10:21:02.501564','25','25',3,'',29,1),(348,'2016-06-24 10:21:02.510160','24','24',3,'',29,1),(349,'2016-06-24 10:21:02.518283','23','23',3,'',29,1),(350,'2016-06-24 10:21:02.526393','22','22',3,'',29,1),(351,'2016-06-24 10:21:02.534181','21','21',3,'',29,1),(352,'2016-06-24 10:21:02.542615','20','20',3,'',29,1),(353,'2016-06-24 10:21:02.550801','19','19',3,'',29,1),(354,'2016-06-24 10:21:02.559373','18','18',3,'',29,1),(355,'2016-06-24 10:21:02.568250','17','17',3,'',29,1),(356,'2016-06-24 10:21:02.577107','16','16',3,'',29,1),(357,'2016-06-24 10:21:02.585016','15','15',3,'',29,1),(358,'2016-06-24 10:21:02.592933','14','14',3,'',29,1),(359,'2016-06-24 10:21:02.601176','13','13',3,'',29,1),(360,'2016-06-24 10:21:02.609101','12','12',3,'',29,1),(361,'2016-06-24 10:21:02.617412','11','11',3,'',29,1),(362,'2016-06-24 10:21:02.625821','10','10',3,'',29,1),(363,'2016-06-24 10:21:02.634533','9','9',3,'',29,1),(364,'2016-06-24 10:21:02.643135','8','8',3,'',29,1),(365,'2016-06-24 10:21:02.651775','7','7',3,'',29,1),(366,'2016-06-24 10:21:02.660673','6','6',3,'',29,1),(367,'2016-06-24 10:21:02.669085','5','5',3,'',29,1),(368,'2016-06-24 10:21:02.677222','4','4',3,'',29,1),(369,'2016-06-24 10:21:02.685392','3','3',3,'',29,1),(370,'2016-06-24 10:21:02.693052','2','2',3,'',29,1),(371,'2016-06-24 10:21:02.701065','1','1',3,'',29,1),(372,'2016-06-24 10:22:12.782917','26','26',1,'Added.',29,1),(373,'2016-06-24 10:22:32.520627','26','26',2,'Changed premium_service_name.',29,1),(374,'2016-06-24 10:22:47.488398','27','27',1,'Added.',29,1),(375,'2016-06-24 10:23:56.693843','28','28',1,'Added.',29,1),(376,'2016-06-24 10:24:11.014547','29','29',1,'Added.',29,1),(377,'2016-06-24 10:24:26.728520','30','30',1,'Added.',29,1),(378,'2016-06-24 10:25:10.009817','31','31',1,'Added.',29,1),(379,'2016-06-24 10:25:22.195060','32','32',1,'Added.',29,1),(380,'2016-06-24 10:25:34.588916','33','33',1,'Added.',29,1),(381,'2016-06-24 10:25:48.759976','34','34',1,'Added.',29,1),(382,'2016-06-24 10:26:02.012388','35','35',1,'Added.',29,1),(383,'2016-06-24 10:26:23.970305','36','36',1,'Added.',29,1),(384,'2016-06-24 10:26:48.825929','37','37',1,'Added.',29,1),(385,'2016-06-24 10:27:32.030547','38','38',1,'Added.',29,1),(386,'2016-06-24 10:27:53.821255','39','39',1,'Added.',29,1),(387,'2016-06-24 10:28:09.090809','39','39',2,'No fields changed.',29,1),(388,'2016-06-24 10:28:59.337800','40','40',1,'Added.',29,1),(389,'2016-06-24 10:29:31.988281','41','41',1,'Added.',29,1),(390,'2016-06-24 10:29:54.787256','42','42',1,'Added.',29,1),(391,'2016-06-24 10:30:17.907720','43','43',1,'Added.',29,1),(392,'2016-06-24 10:30:39.515169','44','44',1,'Added.',29,1),(393,'2016-06-24 10:31:00.111295','45','45',1,'Added.',29,1),(394,'2016-06-24 10:31:30.952852','46','46',1,'Added.',29,1),(395,'2016-06-24 10:31:50.360096','47','47',1,'Added.',29,1),(396,'2016-06-24 10:32:21.014336','48','48',1,'Added.',29,1),(397,'2016-06-24 10:33:02.607569','9','jkukkkkkkkkkkkkkkkkkkkkkk',3,'',10,1),(398,'2016-06-24 10:33:02.616435','8','Customer',3,'',10,1),(399,'2016-06-24 10:33:02.624324','7','Supplier',3,'',10,1),(400,'2016-06-24 10:33:02.632450','6','Admin',3,'',10,1),(401,'2016-06-24 10:33:02.640439','5','wsxcv bgfg;l!@#',3,'',10,1),(402,'2016-06-24 10:33:02.648887','4','wsxcv bgfg;l!@#',3,'',10,1),(403,'2016-06-24 10:33:02.657266','3','wewqewq',3,'',10,1),(404,'2016-06-24 10:33:02.665655','2','yukukjhkljllooo',3,'',10,1),(405,'2016-06-24 10:33:02.673952','1','yukukjhkljll',3,'',10,1),(406,'2016-06-24 10:33:53.199797','3','3',1,'Added.',34,1),(407,'2016-06-24 10:34:06.073682','4','4',1,'Added.',34,1),(408,'2016-06-24 10:41:04.367231','109','109',3,'',12,1),(409,'2016-06-24 10:41:04.375730','108','108',3,'',12,1),(410,'2016-06-24 10:41:04.384183','107','107',3,'',12,1),(411,'2016-06-24 10:41:04.392630','106','106',3,'',12,1),(412,'2016-06-24 10:41:04.401207','105','105',3,'',12,1),(413,'2016-06-24 10:41:04.409211','104','104',3,'',12,1),(414,'2016-06-24 10:41:04.417385','103','103',3,'',12,1),(415,'2016-06-24 10:41:04.425962','102','102',3,'',12,1),(416,'2016-06-24 10:41:04.434890','101','101',3,'',12,1),(417,'2016-06-24 10:41:04.442807','100','100',3,'',12,1),(418,'2016-06-24 10:41:04.450614','99','99',3,'',12,1),(419,'2016-06-24 10:41:04.458654','98','98',3,'',12,1),(420,'2016-06-24 10:41:04.466996','97','97',3,'',12,1),(421,'2016-06-24 10:41:04.475272','96','96',3,'',12,1),(422,'2016-06-24 10:41:04.484927','95','95',3,'',12,1),(423,'2016-06-24 10:41:04.493433','94','94',3,'',12,1),(424,'2016-06-24 10:41:04.501761','93','93',3,'',12,1),(425,'2016-06-24 10:41:04.510569','92','92',3,'',12,1),(426,'2016-06-24 11:00:52.268110','15','15',3,'',8,1),(427,'2016-06-24 11:01:12.514663','16','16',1,'Added.',8,1),(428,'2016-06-24 11:01:52.750636','9','411038',1,'Added.',9,1),(429,'2016-06-24 11:03:11.861118','17','17',1,'Added.',8,1),(430,'2016-06-24 11:03:33.552414','10','400001',1,'Added.',9,1),(431,'2016-06-24 11:31:34.428878','18','18',1,'Added.',8,1),(432,'2016-06-24 11:31:49.967025','19','19',1,'Added.',8,1),(433,'2016-06-24 11:32:41.347603','11','680001',1,'Added.',9,1),(434,'2016-06-24 11:33:09.541932','12','876001',1,'Added.',9,1),(435,'2016-06-24 12:07:28.695852','20','20',1,'Added.',8,1),(436,'2016-06-24 12:18:49.892007','12','876001',3,'',9,1),(437,'2016-06-24 12:18:49.901109','11','680001',3,'',9,1),(438,'2016-06-24 12:18:49.909276','10','400001',3,'',9,1),(439,'2016-06-24 12:18:49.918284','9','411038',3,'',9,1),(440,'2016-06-24 12:51:25.380798','18','18',2,'Changed city_name and state_id.',8,1),(441,'2016-06-24 13:55:30.483588','39','ankita4444@bynry.com',3,'',15,1),(442,'2016-06-24 14:33:55.139847','4','4',2,'Changed tax_type.',34,1),(443,'2016-06-24 14:34:12.205611','3','3',2,'Changed tax_type.',34,1),(444,'2016-06-25 09:15:58.375740','36','36',2,'Changed advert_service_name.',30,1),(445,'2016-06-25 12:11:28.771689','40','40',2,'Changed advert_service_name.',30,1),(446,'2016-06-25 12:11:43.436848','39','39',2,'Changed advert_service_name.',30,1),(447,'2016-06-25 12:11:50.973065','38','38',2,'Changed advert_service_name.',30,1),(448,'2016-06-25 12:12:07.906056','37','37',2,'Changed advert_service_name.',30,1),(449,'2016-06-25 12:12:54.563404','37','37',2,'No fields changed.',30,1),(450,'2016-06-25 12:29:00.072275','61','vikas@cp.com',2,'Changed password.',4,1),(451,'2016-06-25 12:31:27.235796','55','vks@gm.com',2,'Changed password.',4,1),(452,'2016-06-25 15:04:04.182922','183','183',2,'Changed category_status.',12,1),(453,'2016-06-25 16:05:30.019011','41','wwewdeee',2,'Changed status.',16,1),(454,'2016-06-25 16:40:11.971076','41','wwewdeee123',3,'',16,1),(455,'2016-06-25 16:40:11.979733','38','dfhbcfghghjgj',3,'',16,1),(456,'2016-06-25 16:40:11.988308','37',' vbbnjhkhjkl',3,'',16,1),(457,'2016-06-25 16:40:11.996868','36',' vbbnjhkhjkl',3,'',16,1),(458,'2016-06-25 16:40:12.005490','35','gfxfhgj',3,'',16,1),(459,'2016-06-25 16:40:12.014198','34','tyjyujgyuuyg',3,'',16,1),(460,'2016-06-25 16:40:12.022545','33','fgtjhfghjjh',3,'',16,1),(461,'2016-06-25 16:40:12.030811','32','DSK',3,'',16,1),(462,'2016-06-25 16:40:12.039354','31','DSK',3,'',16,1),(463,'2016-06-25 16:40:12.047892','30','Suyash',3,'',16,1),(464,'2016-06-25 16:40:12.055739','29','royal ',3,'',16,1),(465,'2016-06-25 16:40:12.065233','28','royal ',3,'',16,1),(466,'2016-06-25 16:40:12.074295','27','royal ',3,'',16,1),(467,'2016-06-25 16:40:12.082471','26','Vikas Advert',3,'',16,1),(468,'2016-06-25 16:40:34.076740','42','23213wewqe',3,'',16,1),(469,'2016-06-25 16:45:01.951654','47','ankithhha@bynry.com',3,'',15,1),(470,'2016-06-25 16:45:01.976149','46','ankita1234@bynry.com',3,'',15,1),(471,'2016-06-25 16:45:01.989024','44','ankiiofffta.lahoti@123.com',3,'',15,1),(472,'2016-06-25 16:45:02.004960','43','ankit[PPP[[a@bynry.com',3,'',15,1),(473,'2016-06-25 16:45:02.020261','42','ankitajjj@bynry.com',3,'',15,1),(474,'2016-06-25 16:45:02.051539','41','ankitauuu@bynry.com',3,'',15,1),(475,'2016-06-25 16:46:17.075949','163','163',3,'',12,1),(476,'2016-06-25 16:47:22.594005','171','171',3,'',12,1),(477,'2016-06-25 16:47:22.603444','170','170',3,'',12,1),(478,'2016-06-25 16:47:22.611859','169','169',3,'',12,1),(479,'2016-06-25 16:47:22.619799','168','168',3,'',12,1),(480,'2016-06-25 16:47:22.628047','167','167',3,'',12,1),(481,'2016-06-25 16:47:22.636551','166','166',3,'',12,1),(482,'2016-06-25 16:47:22.644361','165','165',3,'',12,1),(483,'2016-06-25 16:47:22.652249','164','164',3,'',12,1),(484,'2016-06-25 16:48:40.728932','179','179',3,'',12,1),(485,'2016-06-25 16:48:40.737454','178','178',3,'',12,1),(486,'2016-06-25 16:49:19.416533','183','183',3,'',12,1),(487,'2016-06-25 16:49:19.424765','140','140',3,'',12,1),(488,'2016-06-25 16:50:00.164861','12','12',3,'',39,1),(489,'2016-06-25 16:50:00.190465','11','11',3,'',39,1),(490,'2016-06-25 16:50:00.200685','10','10',3,'',39,1),(491,'2016-06-25 16:50:00.209541','9','9',3,'',39,1),(492,'2016-06-25 16:50:00.219183','8','8',3,'',39,1),(493,'2016-06-25 16:50:00.228920','7','7',3,'',39,1),(494,'2016-06-25 16:50:00.237499','6','6',3,'',39,1),(495,'2016-06-25 16:50:00.246080','5','5',3,'',39,1),(496,'2016-06-25 16:50:00.254375','4','4',3,'',39,1),(497,'2016-06-25 16:50:00.263297','3','3',3,'',39,1),(498,'2016-06-25 16:50:00.272631','2','2',3,'',39,1),(499,'2016-06-25 16:50:00.281783','1','1',3,'',39,1),(500,'2016-06-25 17:30:36.718095','15','15',2,'Changed city_status.',39,1),(501,'2016-06-28 06:36:22.407637','3','3',3,'',38,1),(502,'2016-06-29 07:28:54.017870','82','sagar@bynry.com',2,'Changed password.',4,1),(503,'2016-06-29 07:31:22.288783','6','6',1,'Added.',38,1),(504,'2016-06-29 07:31:51.651186','85','sagar1@bynry.com',2,'Changed password.',4,1),(505,'2016-06-29 07:36:28.686971','38','ank@123.com',2,'Changed password.',4,1),(506,'2016-06-29 07:38:28.328145','7','7',1,'Added.',38,1),(507,'2016-06-29 07:38:53.715175','86','bhau@bynry.com',2,'Changed password.',4,1),(508,'2016-06-29 07:52:39.186369','7','7',2,'Changed username, email and consumer_email_id.',38,1),(509,'2016-06-29 10:34:13.524408','8','8',3,'',38,1),(510,'2016-06-29 10:34:13.533193','7','7',3,'',38,1),(511,'2016-06-29 10:34:13.541406','6','6',3,'',38,1),(512,'2016-06-29 10:34:13.549609','5','5',3,'',38,1),(513,'2016-06-29 10:34:13.557703','4','4',3,'',38,1),(514,'2016-06-29 10:34:13.565719','2','2',3,'',38,1),(515,'2016-06-29 10:34:13.573681','1','1',3,'',38,1),(516,'2016-06-29 10:35:13.259372','73','abc@xy.com',3,'',4,1),(517,'2016-06-29 10:35:13.267926','84','ac@xy.com',3,'',4,1),(518,'2016-06-29 10:35:13.275695','71','akshay1@gmail.com',3,'',4,1),(519,'2016-06-29 10:35:13.283532','66','akshay@gmail.com',3,'',4,1),(520,'2016-06-29 10:35:13.291243','82','sagar@bynry.com',3,'',4,1),(521,'2016-06-29 10:35:13.299175','65','sya@gm.com',3,'',4,1),(522,'2016-06-29 10:35:13.306893','61','vikas@cp.com',3,'',4,1),(523,'2016-06-29 10:35:13.315111','55','vks@gm.com',3,'',4,1),(524,'2016-06-29 10:52:17.153404','91','bharat1@bynry.com',3,'',4,1),(525,'2016-06-29 10:52:17.162247','88','bharat@bynry.com',3,'',4,1),(526,'2016-06-29 11:04:25.499852','98','ankital1@123.com',3,'',4,1),(527,'2016-06-29 11:04:25.509072','96','ankital@123.com',3,'',4,1),(528,'2016-06-29 11:04:25.517875','103','ankitala1@123.com',3,'',4,1),(529,'2016-06-29 11:04:25.526323','99','ankitalahoti123@123.com',3,'',4,1),(530,'2016-06-29 11:04:25.534449','100','ankitalahoti456@123.com',3,'',4,1),(531,'2016-06-29 11:04:25.542652','101','ankitalahoti756@123.com',3,'',4,1),(532,'2016-06-29 11:04:25.550463','95','bharat12@bynry.com',3,'',4,1),(533,'2016-06-29 11:04:25.558461','94','bharat1@bynry.com',3,'',4,1),(534,'2016-06-29 11:04:25.567181','93','bharat@bynry.com',3,'',4,1),(535,'2016-06-30 09:39:51.001216','20','20',3,'',38,1),(536,'2016-06-30 13:10:37.475719','27','27',3,'',38,1),(537,'2016-06-30 13:10:37.484255','26','26',3,'',38,1),(538,'2016-06-30 13:10:37.492173','25','25',3,'',38,1),(539,'2016-06-30 13:10:37.500251','24','24',3,'',38,1),(540,'2016-06-30 13:10:37.511470','23','23',3,'',38,1),(541,'2016-06-30 13:10:37.519473','22','22',3,'',38,1),(542,'2016-06-30 13:10:37.527467','21','21',3,'',38,1),(543,'2016-07-01 05:00:10.376999','28','28',3,'',38,1),(544,'2016-07-01 06:10:03.785838','29','29',3,'',38,1),(545,'2016-07-01 06:10:19.427446','30','30',3,'',38,1),(546,'2016-07-01 06:12:21.503090','35','35',3,'',38,1),(547,'2016-07-01 06:14:57.737452','36','36',3,'',38,1),(548,'2016-07-01 06:27:20.463826','37','37',3,'',38,1),(549,'2016-07-01 06:33:09.611570','38','38',3,'',38,1),(550,'2016-07-01 06:43:29.783873','40','40',3,'',38,1),(551,'2016-07-01 06:52:29.414003','41','41',3,'',38,1),(552,'2016-07-01 07:06:46.881974','42','42',3,'',38,1),(553,'2016-07-01 07:11:15.225884','43','43',3,'',38,1),(554,'2016-07-01 07:14:32.846469','44','44',3,'',38,1),(555,'2016-07-01 07:18:32.021504','45','45',3,'',38,1),(556,'2016-07-01 07:19:46.514118','46','46',3,'',38,1),(557,'2016-07-01 07:24:02.379872','47','47',3,'',38,1),(558,'2016-07-01 07:30:41.126095','48','48',3,'',38,1),(559,'2016-07-01 07:35:53.254402','49','49',3,'',38,1),(560,'2016-07-01 07:38:04.405230','50','50',3,'',38,1),(561,'2016-07-01 07:41:33.273765','51','51',3,'',38,1),(562,'2016-07-01 07:44:46.646212','52','52',3,'',38,1),(563,'2016-07-01 07:46:49.263334','53','53',3,'',38,1),(564,'2016-07-01 09:12:13.349461','54','54',3,'',38,1),(565,'2016-07-01 09:17:48.193714','55','55',3,'',38,1),(566,'2016-07-01 09:37:42.594064','56','56',3,'',38,1),(567,'2016-07-01 09:43:20.402146','39','39',3,'',38,1),(568,'2016-07-01 09:43:28.579749','57','57',3,'',38,1),(569,'2016-07-01 10:23:22.022294','59','59',3,'',38,1),(570,'2016-07-01 10:23:22.031051','58','58',3,'',38,1),(571,'2016-07-01 10:43:42.439937','61','61',3,'',38,1),(572,'2016-07-01 10:43:42.448384','60','60',3,'',38,1),(573,'2016-07-01 10:52:46.418572','62','62',3,'',38,1),(574,'2016-07-01 10:53:02.182110','1','',1,'Added.',11,1),(575,'2016-07-01 10:53:43.713116','170','sagar@bynry.com',3,'',4,1),(576,'2016-07-01 10:54:45.706465','2','sagar@bynry.com',1,'Added.',11,1),(577,'2016-07-01 10:55:07.235614','171','sagar@bynry.com',2,'Changed password.',4,1),(578,'2016-07-01 11:06:38.880007','63','63',3,'',38,1),(579,'2016-07-01 11:16:48.715941','64','64',3,'',38,1),(580,'2016-07-01 11:27:27.922696','65','65',3,'',38,1),(581,'2016-07-01 11:46:52.081889','66','66',3,'',38,1),(582,'2016-07-01 12:03:46.402352','67','67',3,'',38,1),(583,'2016-07-01 12:53:18.801119','68','68',3,'',38,1),(584,'2016-07-01 12:56:29.030888','69','69',3,'',38,1),(585,'2016-07-01 13:06:13.336981','70','70',3,'',38,1),(586,'2016-07-01 13:12:41.939938','71','71',3,'',38,1),(587,'2016-07-01 13:32:17.435181','72','72',3,'',38,1),(588,'2016-07-01 13:35:21.205183','73','73',3,'',38,1),(589,'2016-07-01 13:44:41.542981','74','74',3,'',38,1),(590,'2016-07-01 13:50:54.438144','75','75',3,'',38,1),(591,'2016-07-01 14:29:49.899708','76','76',3,'',38,1),(592,'2016-07-01 14:37:02.248841','77','77',3,'',38,1),(593,'2016-07-01 14:40:11.751164','78','78',3,'',38,1),(594,'2016-07-01 14:47:45.992722','34','34',3,'',38,1),(595,'2016-07-01 14:47:46.003918','33','33',3,'',38,1),(596,'2016-07-01 14:47:46.014218','32','32',3,'',38,1),(597,'2016-07-01 14:47:46.030717','31','31',3,'',38,1),(598,'2016-07-02 04:55:42.198705','80','80',3,'',38,1),(599,'2016-07-02 04:55:42.206898','79','79',3,'',38,1),(600,'2016-07-02 04:59:02.840072','81','81',3,'',38,1),(601,'2016-07-02 05:55:40.372694','82','82',3,'',38,1),(602,'2016-07-02 06:40:16.348761','85','85',3,'',38,1),(603,'2016-07-02 06:40:16.357577','84','84',3,'',38,1),(604,'2016-07-02 06:40:16.365673','83','83',3,'',38,1),(605,'2016-07-02 07:22:14.158781','87','87',3,'',38,1),(606,'2016-07-02 07:28:32.483533','89','89',3,'',38,1),(607,'2016-07-02 07:28:32.491903','88','88',3,'',38,1),(608,'2016-07-02 07:28:32.500827','86','86',3,'',38,1),(609,'2016-07-02 07:39:16.445533','90','90',3,'',38,1),(610,'2016-07-02 08:03:37.222719','91','91',3,'',38,1),(611,'2016-07-02 10:12:30.129791','97','97',3,'',38,1),(612,'2016-07-02 10:12:30.138219','96','96',3,'',38,1),(613,'2016-07-02 10:12:30.146029','95','95',3,'',38,1),(614,'2016-07-02 10:12:30.154167','94','94',3,'',38,1),(615,'2016-07-02 10:12:30.162071','93','93',3,'',38,1),(616,'2016-07-02 10:12:30.169994','92','92',3,'',38,1),(617,'2016-07-02 11:34:01.944989','104','104',3,'',38,1),(618,'2016-07-02 11:53:10.404445','99','99',3,'',38,1),(619,'2016-07-02 11:53:10.412943','98','98',3,'',38,1),(620,'2016-07-02 12:13:13.415808','101','101',3,'',38,1),(621,'2016-07-02 13:17:55.522004','54','abc@xxy.com',3,'',15,1),(622,'2016-07-02 13:18:04.859563','62','vikas122@bynry.com',3,'',15,1),(623,'2016-07-02 13:18:14.781804','61','vikas22@bynry.com',3,'',15,1),(624,'2016-07-05 04:28:34.964916','46','46',3,'',30,1),(625,'2016-07-05 04:28:34.973623','45','45',3,'',30,1),(626,'2016-07-05 04:28:34.983459','44','44',3,'',30,1),(627,'2016-07-05 04:28:34.991799','43','43',3,'',30,1),(628,'2016-07-05 04:28:34.999882','42','42',3,'',30,1),(629,'2016-07-05 04:28:35.007885','41','41',3,'',30,1),(630,'2016-07-05 04:28:35.016583','40','40',3,'',30,1),(631,'2016-07-05 04:28:35.024652','39','39',3,'',30,1),(632,'2016-07-05 04:28:35.033272','38','38',3,'',30,1),(633,'2016-07-05 04:28:35.041320','37','37',3,'',30,1),(634,'2016-07-05 04:28:35.049520','36','36',3,'',30,1),(635,'2016-07-05 04:28:35.057768','35','35',3,'',30,1),(636,'2016-07-05 04:28:35.065744','34','34',3,'',30,1),(637,'2016-07-05 04:28:35.073703','33','33',3,'',30,1),(638,'2016-07-05 04:28:35.081968','32','32',3,'',30,1),(639,'2016-07-05 04:28:35.089802','31','31',3,'',30,1),(640,'2016-07-05 04:28:35.098266','30','30',3,'',30,1),(641,'2016-07-05 04:28:35.107396','29','29',3,'',30,1),(642,'2016-07-05 04:28:35.115327','28','28',3,'',30,1),(643,'2016-07-05 04:28:35.123717','27','27',3,'',30,1),(644,'2016-07-05 04:28:35.131514','26','26',3,'',30,1),(645,'2016-07-05 04:28:35.139354','25','25',3,'',30,1),(646,'2016-07-05 04:28:35.147410','24','24',3,'',30,1),(647,'2016-07-05 04:28:35.155571','23','23',3,'',30,1),(648,'2016-07-05 04:28:35.163356','22','22',3,'',30,1),(649,'2016-07-05 04:28:35.171272','21','21',3,'',30,1),(650,'2016-07-05 04:29:40.156740','51','51',3,'',29,1),(651,'2016-07-05 04:29:40.165401','50','50',3,'',29,1),(652,'2016-07-05 04:29:40.173944','49','49',3,'',29,1),(653,'2016-07-05 04:29:40.182766','48','48',3,'',29,1),(654,'2016-07-05 04:29:40.190756','47','47',3,'',29,1),(655,'2016-07-05 04:29:40.201196','46','46',3,'',29,1),(656,'2016-07-05 04:29:40.209713','45','45',3,'',29,1),(657,'2016-07-05 04:29:40.218118','44','44',3,'',29,1),(658,'2016-07-05 04:29:40.226689','43','43',3,'',29,1),(659,'2016-07-05 04:29:40.234927','42','42',3,'',29,1),(660,'2016-07-05 04:29:40.245975','41','41',3,'',29,1),(661,'2016-07-05 04:29:40.253860','40','40',3,'',29,1),(662,'2016-07-05 04:29:40.262288','39','39',3,'',29,1),(663,'2016-07-05 04:29:40.271167','38','38',3,'',29,1),(664,'2016-07-05 04:29:40.280667','37','37',3,'',29,1),(665,'2016-07-05 04:29:40.289309','36','36',3,'',29,1),(666,'2016-07-05 04:29:40.298811','35','35',3,'',29,1),(667,'2016-07-05 04:29:40.307380','34','34',3,'',29,1),(668,'2016-07-05 04:29:40.315433','33','33',3,'',29,1),(669,'2016-07-05 04:29:40.323452','32','32',3,'',29,1),(670,'2016-07-05 04:29:40.332069','31','31',3,'',29,1),(671,'2016-07-05 04:29:40.340127','30','30',3,'',29,1),(672,'2016-07-05 04:29:40.348513','29','29',3,'',29,1),(673,'2016-07-05 04:29:40.357499','28','28',3,'',29,1),(674,'2016-07-05 04:29:40.365911','27','27',3,'',29,1),(675,'2016-07-05 04:29:40.375221','26','26',3,'',29,1),(676,'2016-07-06 05:43:47.933423','34','West Bengal',2,'Changed creation_date.',7,1),(677,'2016-07-06 05:45:42.709135','35','Andaman and Nicobar Islands',1,'Added.',7,1),(678,'2016-07-06 09:13:01.536325','36','Chandigarh',1,'Added.',7,1),(679,'2016-07-06 09:22:11.610726','36','Chandigarh',2,'No fields changed.',7,1),(680,'2016-07-06 09:22:31.217579','37','Dadar and Nagar Haveli',1,'Added.',7,1),(681,'2016-07-06 09:23:09.122137','38','Daman and Diu',1,'Added.',7,1),(682,'2016-07-06 09:26:37.438605','39','Delhi',1,'Added.',7,1),(683,'2016-07-06 09:27:21.400343','40','Lakshadweep',1,'Added.',7,1),(684,'2016-07-06 09:27:39.752818','41','Puducherry',1,'Added.',7,1),(685,'2016-07-06 09:45:05.527812','269','vikas2@bynry.com',2,'Changed password.',4,1),(686,'2016-07-06 09:55:56.718648','269','vikas2@bynry.com',2,'No fields changed.',4,1),(687,'2016-07-06 12:29:37.363162','269','vikas2@bynry.com',2,'No fields changed.',4,1),(688,'2016-07-07 06:30:30.927124','269','vikas2@bynry.com',2,'Changed password.',4,1),(689,'2016-07-09 07:16:48.488615','251','akshay@bynry.com',2,'Changed password.',4,1),(690,'2016-07-09 08:33:16.996567','251','akshay@bynry.com',2,'Changed password.',4,1),(691,'2016-07-09 10:14:52.057604','50','50',3,'',30,1),(692,'2016-07-09 10:14:52.065981','49','49',3,'',30,1),(693,'2016-07-09 10:14:52.073944','48','48',3,'',30,1),(694,'2016-07-09 10:14:52.082175','47','47',3,'',30,1),(695,'2016-07-09 10:15:48.943302','55','55',3,'',29,1),(696,'2016-07-09 10:15:48.952276','54','54',3,'',29,1),(697,'2016-07-09 10:15:48.960867','53','53',3,'',29,1),(698,'2016-07-09 10:15:48.969255','52','52',3,'',29,1),(699,'2016-07-09 16:06:10.572867','74','q2@vv.cco',3,'',15,1),(700,'2016-07-09 16:06:10.582944','73','vikas232@bynry.com',3,'',15,1),(701,'2016-07-09 16:06:10.591342','72','vikas1341@fn.com',3,'',15,1),(702,'2016-07-09 16:06:10.600725','71','vikas1111@fn.com',3,'',15,1),(703,'2016-07-09 16:06:10.609022','70','vikas222@bynry.com',3,'',15,1),(704,'2016-07-09 16:06:10.617393','69','vikas23@qazxsw.cc',3,'',15,1),(705,'2016-07-09 16:06:10.626693','68','anki@123.com',3,'',15,1),(706,'2016-07-09 16:06:10.635362','67','aniki[ghi7itu3@123.com',3,'',15,1),(707,'2016-07-09 16:06:10.643693','66','ank@bynry.com',3,'',15,1),(708,'2016-07-09 16:06:10.651893','65','ankita@bynry.com',3,'',15,1),(709,'2016-07-09 16:06:10.662695','64','abc@abc.com',3,'',15,1),(710,'2016-07-09 16:06:10.670896','63','ram@marvel.com',3,'',15,1),(711,'2016-07-09 16:06:10.680314','60','ankita123@123.com',3,'',15,1),(712,'2016-07-09 16:06:10.688724','59','qaz@qas.ccc',3,'',15,1),(713,'2016-07-09 16:06:10.697041','58','qqq@d111dd.ccc',3,'',15,1),(714,'2016-07-09 16:06:10.705948','57','qqq@dd2d.ccc',3,'',15,1),(715,'2016-07-09 16:06:10.713829','56','qqq@ddd.ccc',3,'',15,1),(716,'2016-07-09 16:06:10.722129','55','abc@axy.com',3,'',15,1),(717,'2016-07-09 16:42:40.917629','202','202',3,'',12,1),(718,'2016-07-09 16:42:40.926718','201','201',3,'',12,1),(719,'2016-07-09 16:42:40.937108','200','200',3,'',12,1),(720,'2016-07-09 16:42:40.945595','199','199',3,'',12,1),(721,'2016-07-09 16:42:40.953711','198','198',3,'',12,1),(722,'2016-07-09 16:42:40.962001','197','197',3,'',12,1),(723,'2016-07-09 16:42:40.970436','196','196',3,'',12,1),(724,'2016-07-09 16:42:40.979779','194','194',3,'',12,1),(725,'2016-07-09 16:42:40.988745','177','177',3,'',12,1),(726,'2016-07-09 16:42:40.996818','176','176',3,'',12,1),(727,'2016-07-09 16:42:41.004762','175','175',3,'',12,1),(728,'2016-07-09 16:42:41.013029','174','174',3,'',12,1),(729,'2016-07-09 16:42:41.021049','173','173',3,'',12,1),(730,'2016-07-09 16:42:41.028981','172','172',3,'',12,1),(731,'2016-07-09 16:42:41.037842','110','110',3,'',12,1),(732,'2016-07-09 16:48:23.163666','40','40',3,'',39,1),(733,'2016-07-09 16:48:23.172327','39','39',3,'',39,1),(734,'2016-07-09 16:48:23.180429','38','38',3,'',39,1),(735,'2016-07-09 16:48:23.189240','37','37',3,'',39,1),(736,'2016-07-09 16:48:23.197351','36','36',3,'',39,1),(737,'2016-07-09 16:48:23.206042','35','35',3,'',39,1),(738,'2016-07-09 16:48:23.214240','34','34',3,'',39,1),(739,'2016-07-09 16:48:23.222424','32','32',3,'',39,1),(740,'2016-07-09 16:48:23.231586','31','31',3,'',39,1),(741,'2016-07-09 16:48:23.239896','30','30',3,'',39,1),(742,'2016-07-09 16:48:23.248085','29','29',3,'',39,1),(743,'2016-07-09 16:48:23.259330','28','28',3,'',39,1),(744,'2016-07-09 16:48:23.267717','15','15',3,'',39,1),(745,'2016-07-09 16:48:35.688108','33','33',2,'Changed city_name.',39,1),(746,'2016-07-09 18:30:59.744759','13','Consumer*',3,'',10,1),(747,'2016-07-09 18:30:59.753033','11','dsdsds',3,'',10,1),(748,'2016-07-09 18:48:16.227342','61','61',3,'',16,1),(749,'2016-07-09 18:48:16.237301','60','60',3,'',16,1),(750,'2016-07-09 18:48:16.246285','59','59',3,'',16,1),(751,'2016-07-09 18:48:16.254539','58','58',3,'',16,1),(752,'2016-07-09 18:48:16.262671','57','57',3,'',16,1),(753,'2016-07-09 18:48:16.270526','56','56',3,'',16,1),(754,'2016-07-09 18:48:16.279856','55','55',3,'',16,1),(755,'2016-07-09 18:48:16.288226','54','54',3,'',16,1),(756,'2016-07-09 18:48:16.296316','53','53',3,'',16,1),(757,'2016-07-09 18:48:16.304277','52','52',3,'',16,1),(758,'2016-07-11 06:18:29.825070','63','63',2,'Changed product_price.',16,1),(759,'2016-07-12 11:11:57.093504','3','vikas@bynry.com',1,'Added.',11,1),(760,'2016-07-12 11:12:26.577380','360','vikas@bynry.com',2,'Changed password.',4,1),(761,'2016-07-14 05:57:30.526997','233','233',3,'',12,1),(762,'2016-07-14 05:57:30.535863','232','232',3,'',12,1),(763,'2016-07-14 05:57:30.544945','231','231',3,'',12,1),(764,'2016-07-14 05:57:30.553769','230','230',3,'',12,1),(765,'2016-07-14 05:57:30.564129','229','229',3,'',12,1),(766,'2016-07-14 05:57:30.572429','228','228',3,'',12,1),(767,'2016-07-14 05:57:30.581447','227','227',3,'',12,1),(768,'2016-07-14 05:57:30.589374','226','226',3,'',12,1),(769,'2016-07-14 05:57:30.597992','225','225',3,'',12,1),(770,'2016-07-14 05:57:30.606304','224','224',3,'',12,1),(771,'2016-07-14 05:57:30.614833','223','223',3,'',12,1),(772,'2016-07-14 05:57:30.623703','222','222',3,'',12,1),(773,'2016-07-14 05:57:30.632319','221','221',3,'',12,1),(774,'2016-07-14 05:57:30.641779','220','220',3,'',12,1),(775,'2016-07-14 05:57:30.650504','213','213',3,'',12,1),(776,'2016-07-14 05:57:30.659334','212','212',3,'',12,1),(777,'2016-07-14 05:57:30.668279','211','211',3,'',12,1),(778,'2016-07-14 05:57:30.676666','210','210',3,'',12,1),(779,'2016-07-14 05:57:30.684591','209','209',3,'',12,1),(780,'2016-07-14 05:57:30.693009','203','203',3,'',12,1),(781,'2016-07-14 05:57:30.701776','195','195',3,'',12,1),(782,'2016-07-14 05:57:30.710392','193','193',3,'',12,1),(783,'2016-07-14 05:57:30.718747','192','192',3,'',12,1),(784,'2016-07-14 05:57:30.726670','191','191',3,'',12,1),(785,'2016-07-14 05:57:30.734870','190','190',3,'',12,1),(786,'2016-07-14 05:57:30.745100','189','189',3,'',12,1),(787,'2016-07-14 05:57:30.753114','188','188',3,'',12,1),(788,'2016-07-14 05:57:30.761031','187','187',3,'',12,1),(789,'2016-07-14 05:57:30.769259','186','186',3,'',12,1),(790,'2016-07-14 05:57:30.778202','185','185',3,'',12,1),(791,'2016-07-14 05:57:30.786906','184','184',3,'',12,1),(792,'2016-07-14 05:57:30.794774','182','182',3,'',12,1),(793,'2016-07-14 05:57:30.803610','181','181',3,'',12,1),(794,'2016-07-14 05:57:30.812015','180','180',3,'',12,1),(795,'2016-07-14 05:57:30.820350','128','128',3,'',12,1),(796,'2016-07-14 05:57:30.828695','121','121',3,'',12,1),(797,'2016-07-14 05:57:30.836948','120','120',3,'',12,1),(798,'2016-07-14 05:57:30.845783','119','119',3,'',12,1),(799,'2016-07-14 05:57:30.854711','118','118',3,'',12,1),(800,'2016-07-14 05:57:30.865377','117','117',3,'',12,1),(801,'2016-07-14 06:45:48.969043','77','77',3,'',16,1),(802,'2016-07-14 06:45:48.977219','76','76',3,'',16,1),(803,'2016-07-14 09:07:17.823070','68','68',1,'Added.',19,1),(804,'2016-07-14 09:07:31.877470','69','69',1,'Added.',19,1),(805,'2016-07-14 11:37:28.063406','3','3',3,'',45,1),(806,'2016-07-14 11:37:28.072235','2','2',3,'',45,1),(807,'2016-07-14 11:37:28.080060','1','1',3,'',45,1),(808,'2016-07-14 11:37:59.453745','4','4',3,'',45,1),(809,'2016-07-14 12:30:09.724687','5','5',3,'',45,1),(810,'2016-07-14 12:37:00.516034','10','10',3,'',45,1),(811,'2016-07-14 12:37:00.525945','9','9',3,'',45,1),(812,'2016-07-14 12:37:00.534335','8','8',3,'',45,1),(813,'2016-07-14 12:37:00.542810','7','7',3,'',45,1),(814,'2016-07-14 12:37:00.552815','6','6',3,'',45,1),(815,'2016-07-14 12:59:52.774209','244','244',3,'',12,1),(816,'2016-07-14 13:12:54.833295','247','247',3,'',12,1),(817,'2016-07-14 14:10:56.248136','83','83',3,'',16,1),(818,'2016-07-14 14:10:56.257046','82','82',3,'',16,1),(819,'2016-07-14 14:10:56.266363','81','81',3,'',16,1),(820,'2016-07-14 14:10:56.274765','80','80',3,'',16,1),(821,'2016-07-14 14:10:56.283407','79','79',3,'',16,1),(822,'2016-07-14 14:10:56.291342','78','78',3,'',16,1),(823,'2016-07-14 14:10:56.299008','75','75',3,'',16,1),(824,'2016-07-15 07:02:54.891868','25','25',3,'',45,1),(825,'2016-07-15 07:02:54.902428','24','24',3,'',45,1),(826,'2016-07-15 07:02:54.910733','23','23',3,'',45,1),(827,'2016-07-15 07:02:54.919638','22','22',3,'',45,1),(828,'2016-07-15 07:02:54.927635','21','21',3,'',45,1),(829,'2016-07-15 07:02:54.937120','20','20',3,'',45,1),(830,'2016-07-15 07:02:54.945754','19','19',3,'',45,1),(831,'2016-07-15 07:02:54.953916','18','18',3,'',45,1),(832,'2016-07-15 10:06:28.649540','13','13',2,'Changed city_id.',39,1),(833,'2016-07-15 12:28:27.261112','41','41',3,'',39,1),(834,'2016-07-15 12:28:27.269935','33','33',3,'',39,1),(835,'2016-07-15 12:28:27.278141','27','27',3,'',39,1),(836,'2016-07-15 12:28:27.286288','26','26',3,'',39,1),(837,'2016-07-15 12:28:27.294107','25','25',3,'',39,1),(838,'2016-07-15 12:28:27.302366','24','24',3,'',39,1),(839,'2016-07-15 12:28:27.310906','23','23',3,'',39,1),(840,'2016-07-15 12:28:27.319459','22','22',3,'',39,1),(841,'2016-07-15 12:28:27.327630','21','21',3,'',39,1),(842,'2016-07-15 12:28:27.335656','20','20',3,'',39,1),(843,'2016-07-15 12:28:27.343617','19','19',3,'',39,1),(844,'2016-07-15 12:28:27.351338','18','18',3,'',39,1),(845,'2016-07-15 12:28:27.359472','17','17',3,'',39,1),(846,'2016-07-15 12:28:27.367499','16','16',3,'',39,1),(847,'2016-07-15 12:28:27.375353','14','14',3,'',39,1),(848,'2016-07-15 13:18:39.005154','84','84',2,'No fields changed.',16,1),(849,'2016-07-15 13:44:00.995339','234','234',3,'',12,1),(850,'2016-07-15 13:44:50.635137','236','236',3,'',12,1),(851,'2016-07-15 13:45:58.854094','235','235',3,'',12,1),(852,'2016-07-15 13:47:00.186302','79','79',3,'',15,1),(853,'2016-07-15 15:53:48.082100','84','84',2,'Changed city_place_id.',16,1),(854,'2016-07-15 15:54:02.739903','85','85',2,'Changed city_place_id.',16,1),(855,'2016-07-15 15:54:10.964078','86','86',2,'Changed city_place_id.',16,1),(856,'2016-07-15 15:54:38.867772','87','87',2,'Changed state_id, city_place_id and pincode_id.',16,1),(857,'2016-07-15 15:55:01.167815','89','89',2,'Changed state_id, city_place_id and pincode_id.',16,1),(858,'2016-07-15 15:55:16.073803','90','90',2,'Changed state_id, city_place_id and pincode_id.',16,1),(859,'2016-07-15 15:55:46.048247','1585','411033',1,'Added.',9,1),(860,'2016-07-16 07:13:14.426762','29','29',3,'',45,1),(861,'2016-07-16 07:13:14.435807','28','28',3,'',45,1),(862,'2016-07-16 07:13:14.444559','27','27',3,'',45,1),(863,'2016-07-16 07:13:14.452885','26','26',3,'',45,1),(864,'2016-07-16 08:33:51.404040','106','106',3,'',38,1),(865,'2016-07-16 09:00:17.269747','243','243',3,'',12,1),(866,'2016-07-16 09:00:17.278534','242','242',3,'',12,1),(867,'2016-07-16 09:00:17.287622','241','241',3,'',12,1),(868,'2016-07-16 09:00:17.295886','240','240',3,'',12,1),(869,'2016-07-16 09:00:17.304428','239','239',3,'',12,1),(870,'2016-07-16 09:00:17.313797','238','238',3,'',12,1),(871,'2016-07-16 09:00:17.322053','237','237',3,'',12,1),(872,'2016-07-19 13:00:52.532792','6','6',3,'',41,1),(873,'2016-07-19 13:00:52.541542','5','5',3,'',41,1),(874,'2016-07-19 13:00:52.549664','4','4',3,'',41,1),(875,'2016-07-20 06:12:54.941000','8','8',3,'',41,1),(876,'2016-07-20 11:04:49.030333','81','81',3,'',27,1),(877,'2016-07-20 11:04:49.038737','80','80',3,'',27,1),(878,'2016-07-20 11:04:49.046763','79','79',3,'',27,1),(879,'2016-07-20 11:04:49.055087','78','78',3,'',27,1),(880,'2016-07-20 11:04:49.063072','77','77',3,'',27,1),(881,'2016-07-20 11:04:49.071337','76','76',3,'',27,1),(882,'2016-07-20 11:04:49.079798','75','75',3,'',27,1),(883,'2016-07-20 11:04:49.088306','74','74',3,'',27,1),(884,'2016-07-20 11:04:49.096323','73','73',3,'',27,1),(885,'2016-07-20 11:04:49.104146','72','72',3,'',27,1),(886,'2016-07-20 11:04:49.112084','71','71',3,'',27,1),(887,'2016-07-20 11:04:49.119956','70','70',3,'',27,1),(888,'2016-07-20 11:04:49.128092','69','69',3,'',27,1),(889,'2016-07-20 11:04:49.136606','68','68',3,'',27,1),(890,'2016-07-20 11:04:49.145422','67','67',3,'',27,1),(891,'2016-07-20 11:04:49.153618','66','66',3,'',27,1),(892,'2016-07-20 11:04:49.161813','65','65',3,'',27,1),(893,'2016-07-20 11:04:49.170194','64','64',3,'',27,1),(894,'2016-07-20 11:04:49.178221','63','63',3,'',27,1),(895,'2016-07-20 11:04:49.186270','61','61',3,'',27,1),(896,'2016-07-20 11:04:49.195253','60','60',3,'',27,1),(897,'2016-07-20 11:04:49.203046','59','59',3,'',27,1),(898,'2016-07-20 11:10:34.431338','7','7',3,'',46,1),(899,'2016-07-20 11:10:34.440323','6','6',3,'',46,1),(900,'2016-07-20 11:10:34.449503','5','5',3,'',46,1),(901,'2016-07-20 11:10:34.458318','4','4',3,'',46,1),(902,'2016-07-20 11:10:34.467266','3','3',3,'',46,1),(903,'2016-07-20 11:10:34.475694','2','2',3,'',46,1),(904,'2016-07-20 11:12:20.210762','12','12',3,'',41,1),(905,'2016-07-20 11:12:20.219518','11','11',3,'',41,1),(906,'2016-07-20 11:12:20.227694','10','10',3,'',41,1),(907,'2016-07-20 11:12:20.236046','9','9',3,'',41,1),(908,'2016-07-20 11:15:14.119605','43','43',3,'',45,1),(909,'2016-07-20 11:15:14.128051','42','42',3,'',45,1),(910,'2016-07-20 11:15:14.136202','41','41',3,'',45,1),(911,'2016-07-20 11:15:14.144209','40','40',3,'',45,1),(912,'2016-07-20 11:15:14.152479','39','39',3,'',45,1),(913,'2016-07-20 11:15:14.160615','38','38',3,'',45,1),(914,'2016-07-20 11:15:14.171417','37','37',3,'',45,1),(915,'2016-07-20 11:15:14.179671','36','36',3,'',45,1),(916,'2016-07-20 11:15:14.187932','35','35',3,'',45,1),(917,'2016-07-20 11:15:14.196200','34','34',3,'',45,1),(918,'2016-07-20 11:15:14.204112','33','33',3,'',45,1),(919,'2016-07-20 11:15:14.212013','32','32',3,'',45,1),(920,'2016-07-20 11:15:14.219972','30','30',3,'',45,1),(921,'2016-07-20 12:40:16.909877','101','101',3,'',16,1),(922,'2016-07-20 12:40:16.918587','100','100',3,'',16,1),(923,'2016-07-20 12:40:16.926465','99','99',3,'',16,1),(924,'2016-07-20 12:40:16.934731','98','98',3,'',16,1),(925,'2016-07-20 12:40:16.942910','97','97',3,'',16,1),(926,'2016-07-20 12:40:16.950904','96','96',3,'',16,1),(927,'2016-07-20 12:40:16.958939','95','95',3,'',16,1),(928,'2016-07-20 12:40:16.967189','94','94',3,'',16,1),(929,'2016-07-20 12:40:16.975573','93','93',3,'',16,1),(930,'2016-07-20 12:40:16.985352','92','92',3,'',16,1),(931,'2016-07-20 12:40:16.993510','91','91',3,'',16,1),(932,'2016-07-20 12:40:17.001563','90','90',3,'',16,1),(933,'2016-07-20 12:40:17.011299','89','89',3,'',16,1),(934,'2016-07-20 12:40:17.019195','87','87',3,'',16,1),(935,'2016-07-20 12:40:17.027302','86','86',3,'',16,1),(936,'2016-07-20 12:40:17.036079','85','85',3,'',16,1),(937,'2016-07-20 12:41:25.619311','325','325',3,'',12,1),(938,'2016-07-20 12:41:25.628525','324','324',3,'',12,1),(939,'2016-07-20 12:41:25.636494','323','323',3,'',12,1),(940,'2016-07-20 13:07:22.035502','15','15',3,'',41,1),(941,'2016-07-20 13:07:22.044070','14','14',3,'',41,1),(942,'2016-07-20 13:07:22.052188','13','13',3,'',41,1),(943,'2016-07-20 13:14:56.061562','18','18',3,'',41,1),(944,'2016-07-20 13:14:56.069833','17','17',3,'',41,1),(945,'2016-07-20 13:14:56.078165','16','16',3,'',41,1),(946,'2016-07-20 13:15:21.343275','10','10',3,'',46,1),(947,'2016-07-20 13:15:21.351892','9','9',3,'',46,1),(948,'2016-07-20 13:15:21.360199','8','8',3,'',46,1),(949,'2016-07-20 13:22:13.764808','12','12',3,'',46,1),(950,'2016-07-20 13:22:13.773226','11','11',3,'',46,1),(951,'2016-07-20 13:22:30.775983','20','20',3,'',41,1),(952,'2016-07-20 13:22:30.785623','19','19',3,'',41,1),(953,'2016-07-20 14:33:55.225979','23','23',3,'',41,1),(954,'2016-07-20 14:33:55.234646','22','22',3,'',41,1),(955,'2016-07-20 14:33:55.242508','21','21',3,'',41,1),(956,'2016-07-21 04:55:43.958226','16','16',3,'',46,1),(957,'2016-07-21 04:55:43.967121','15','15',3,'',46,1),(958,'2016-07-21 04:55:43.975255','14','14',3,'',46,1),(959,'2016-07-21 04:56:08.058697','30','30',3,'',41,1),(960,'2016-07-21 04:56:08.067305','29','29',3,'',41,1),(961,'2016-07-21 04:56:08.075284','28','28',3,'',41,1),(962,'2016-07-21 04:56:08.083371','27','27',3,'',41,1),(963,'2016-07-21 04:56:08.091885','26','26',3,'',41,1),(964,'2016-07-21 04:56:08.100391','25','25',3,'',41,1),(965,'2016-07-21 04:56:08.108714','24','24',3,'',41,1),(966,'2016-07-21 04:59:35.145609','17','17',3,'',46,1),(967,'2016-07-21 04:59:41.865748','31','31',3,'',41,1),(968,'2016-07-21 05:06:56.103717','33','33',3,'',41,1),(969,'2016-07-21 05:06:56.112472','32','32',3,'',41,1),(970,'2016-07-21 05:07:06.335950','19','19',3,'',46,1),(971,'2016-07-21 05:07:06.344418','18','18',3,'',46,1),(972,'2016-07-21 05:39:43.956747','37','37',3,'',41,1),(973,'2016-07-21 05:39:43.965259','36','36',3,'',41,1),(974,'2016-07-21 05:39:43.973618','35','35',3,'',41,1),(975,'2016-07-21 05:40:58.317350','25','25',3,'',46,1),(976,'2016-07-21 05:40:58.325600','24','24',3,'',46,1),(977,'2016-07-21 05:40:58.334017','23','23',3,'',46,1),(978,'2016-07-21 05:40:58.341968','22','22',3,'',46,1),(979,'2016-07-21 05:40:58.350195','21','21',3,'',46,1),(980,'2016-07-21 07:30:29.078660','48','48',3,'',46,1),(981,'2016-07-21 07:30:29.088424','47','47',3,'',46,1),(982,'2016-07-21 07:30:29.096790','46','46',3,'',46,1),(983,'2016-07-21 07:30:29.105099','45','45',3,'',46,1),(984,'2016-07-21 07:30:29.114101','44','44',3,'',46,1),(985,'2016-07-21 07:30:29.122465','43','43',3,'',46,1),(986,'2016-07-21 07:30:29.130227','42','42',3,'',46,1),(987,'2016-07-21 07:30:29.138425','41','41',3,'',46,1),(988,'2016-07-21 07:30:29.146643','40','40',3,'',46,1),(989,'2016-07-21 07:30:29.154577','39','39',3,'',46,1),(990,'2016-07-21 07:30:29.165106','38','38',3,'',46,1),(991,'2016-07-21 07:30:29.173110','34','34',3,'',46,1),(992,'2016-07-21 07:30:29.181412','33','33',3,'',46,1),(993,'2016-07-21 07:30:29.191487','32','32',3,'',46,1),(994,'2016-07-21 07:30:53.962031','49','49',3,'',41,1),(995,'2016-07-21 07:30:53.970888','48','48',3,'',41,1),(996,'2016-07-21 07:30:53.979462','47','47',3,'',41,1),(997,'2016-07-21 07:30:53.987786','46','46',3,'',41,1),(998,'2016-07-21 07:30:53.997343','45','45',3,'',41,1),(999,'2016-07-21 07:30:54.005730','44','44',3,'',41,1),(1000,'2016-07-21 07:30:54.014241','43','43',3,'',41,1),(1001,'2016-07-21 07:30:54.023620','42','42',3,'',41,1),(1002,'2016-07-21 07:30:54.053243','41','41',3,'',41,1),(1003,'2016-07-21 07:30:54.062260','40','40',3,'',41,1),(1004,'2016-07-21 07:30:54.070806','39','39',3,'',41,1),(1005,'2016-07-21 07:30:54.079046','38','38',3,'',41,1),(1006,'2016-07-21 08:39:09.512732','53','53',3,'',41,1),(1007,'2016-07-21 08:39:09.522409','52','52',3,'',41,1),(1008,'2016-07-21 08:39:09.531596','51','51',3,'',41,1),(1009,'2016-07-21 08:39:09.540163','50','50',3,'',41,1),(1010,'2016-07-21 09:33:58.824135','59','59',3,'',41,1),(1011,'2016-07-21 09:33:58.891288','58','58',3,'',41,1),(1012,'2016-07-21 09:33:58.899647','57','57',3,'',41,1),(1013,'2016-07-21 09:33:58.907899','55','55',3,'',41,1),(1014,'2016-07-21 09:33:58.915879','54','54',3,'',41,1),(1015,'2016-07-21 09:34:25.223507','59','59',3,'',46,1),(1016,'2016-07-21 09:34:25.231932','58','58',3,'',46,1),(1017,'2016-07-21 09:34:25.240082','57','57',3,'',46,1),(1018,'2016-07-21 09:34:25.248232','56','56',3,'',46,1),(1019,'2016-07-21 09:34:25.256282','54','54',3,'',46,1),(1020,'2016-07-21 09:34:25.264475','53','53',3,'',46,1),(1021,'2016-07-21 09:34:25.273136','52','52',3,'',46,1),(1022,'2016-07-21 09:34:25.281346','51','51',3,'',46,1),(1023,'2016-07-21 09:34:25.289618','50','50',3,'',46,1),(1024,'2016-07-21 09:34:25.298289','49','49',3,'',46,1),(1025,'2016-07-21 09:41:53.625899','63','63',3,'',46,1),(1026,'2016-07-21 09:41:53.634185','62','62',3,'',46,1),(1027,'2016-07-21 09:41:53.642678','61','61',3,'',46,1),(1028,'2016-07-21 09:42:06.385769','61','61',3,'',41,1),(1029,'2016-07-21 09:45:00.553821','62','62',3,'',41,1),(1030,'2016-07-21 09:45:28.954618','65','65',3,'',46,1),(1031,'2016-07-21 09:45:28.963279','64','64',3,'',46,1),(1032,'2016-07-22 05:25:37.416663','88','88',3,'',41,1),(1033,'2016-07-22 05:25:37.425648','87','87',3,'',41,1),(1034,'2016-07-22 05:25:37.433607','86','86',3,'',41,1),(1035,'2016-07-22 05:25:37.441711','85','85',3,'',41,1),(1036,'2016-07-22 05:25:37.449769','84','84',3,'',41,1),(1037,'2016-07-22 05:25:37.458600','83','83',3,'',41,1),(1038,'2016-07-22 05:25:37.466496','82','82',3,'',41,1),(1039,'2016-07-22 05:25:37.474380','81','81',3,'',41,1),(1040,'2016-07-22 05:25:37.482233','80','80',3,'',41,1),(1041,'2016-07-22 05:25:37.490397','79','79',3,'',41,1),(1042,'2016-07-22 05:25:37.498309','78','78',3,'',41,1),(1043,'2016-07-22 05:25:37.506415','77','77',3,'',41,1),(1044,'2016-07-22 05:25:37.514939','76','76',3,'',41,1),(1045,'2016-07-22 05:25:37.523553','75','75',3,'',41,1),(1046,'2016-07-22 05:25:37.531653','74','74',3,'',41,1),(1047,'2016-07-22 05:25:37.540395','73','73',3,'',41,1),(1048,'2016-07-22 05:25:37.548473','72','72',3,'',41,1),(1049,'2016-07-22 05:37:47.964323','95','95',3,'',41,1),(1050,'2016-07-22 05:37:47.973244','94','94',3,'',41,1),(1051,'2016-07-22 05:37:47.981672','93','93',3,'',41,1),(1052,'2016-07-22 05:37:47.989636','92','92',3,'',41,1),(1053,'2016-07-22 05:37:47.997508','91','91',3,'',41,1),(1054,'2016-07-22 05:37:48.005940','90','90',3,'',41,1),(1055,'2016-07-22 05:37:48.014230','89','89',3,'',41,1),(1056,'2016-07-22 05:43:43.546508','96','96',3,'',41,1),(1057,'2016-07-22 07:37:05.951667','106','106',3,'',46,1),(1058,'2016-07-22 07:37:05.962532','105','105',3,'',46,1),(1059,'2016-07-22 07:37:05.970703','104','104',3,'',46,1),(1060,'2016-07-22 07:37:05.981006','103','103',3,'',46,1),(1061,'2016-07-22 07:37:05.989646','102','102',3,'',46,1),(1062,'2016-07-22 07:37:05.998417','101','101',3,'',46,1),(1063,'2016-07-22 07:37:06.008301','100','100',3,'',46,1),(1064,'2016-07-22 07:37:06.018506','99','99',3,'',46,1),(1065,'2016-07-22 07:37:06.028599','98','98',3,'',46,1),(1066,'2016-07-22 07:37:06.037888','97','97',3,'',46,1),(1067,'2016-07-22 07:37:06.047499','96','96',3,'',46,1),(1068,'2016-07-22 07:37:06.057588','95','95',3,'',46,1),(1069,'2016-07-22 07:37:06.066844','94','94',3,'',46,1),(1070,'2016-07-22 07:37:06.075840','93','93',3,'',46,1),(1071,'2016-07-22 07:37:06.085556','92','92',3,'',46,1),(1072,'2016-07-22 07:37:06.094666','91','91',3,'',46,1),(1073,'2016-07-22 07:37:06.103468','90','90',3,'',46,1),(1074,'2016-07-22 07:37:06.112308','89','89',3,'',46,1),(1075,'2016-07-22 07:37:06.121319','88','88',3,'',46,1),(1076,'2016-07-22 07:37:06.129732','87','87',3,'',46,1),(1077,'2016-07-22 07:37:06.137734','86','86',3,'',46,1),(1078,'2016-07-22 07:37:06.146149','85','85',3,'',46,1),(1079,'2016-07-22 07:37:06.154355','84','84',3,'',46,1),(1080,'2016-07-22 07:37:06.166446','83','83',3,'',46,1),(1081,'2016-07-22 07:37:06.175088','80','80',3,'',46,1),(1082,'2016-07-22 07:37:06.183817','76','76',3,'',46,1),(1083,'2016-07-22 07:37:06.193421','71','71',3,'',46,1),(1084,'2016-07-22 07:37:06.201849','69','69',3,'',46,1),(1085,'2016-07-22 09:44:04.284558','127','127',3,'',46,1),(1086,'2016-07-22 09:44:04.294152','126','126',3,'',46,1),(1087,'2016-07-22 09:44:04.301983','125','125',3,'',46,1),(1088,'2016-07-22 09:44:04.309746','124','124',3,'',46,1),(1089,'2016-07-22 09:44:04.317755','123','123',3,'',46,1),(1090,'2016-07-22 09:44:04.326456','122','122',3,'',46,1),(1091,'2016-07-22 09:44:04.334849','121','121',3,'',46,1),(1092,'2016-07-22 09:44:04.342945','120','120',3,'',46,1),(1093,'2016-07-22 09:44:04.351181','119','119',3,'',46,1),(1094,'2016-07-22 09:44:04.359293','118','118',3,'',46,1),(1095,'2016-07-22 09:44:04.367748','117','117',3,'',46,1),(1096,'2016-07-22 09:44:04.375769','116','116',3,'',46,1),(1097,'2016-07-22 09:44:04.385338','115','115',3,'',46,1),(1098,'2016-07-22 09:44:04.393723','114','114',3,'',46,1),(1099,'2016-07-22 09:44:04.402097','113','113',3,'',46,1),(1100,'2016-07-22 09:44:04.410351','112','112',3,'',46,1),(1101,'2016-07-22 09:44:04.420756','111','111',3,'',46,1),(1102,'2016-07-22 09:44:04.430372','110','110',3,'',46,1),(1103,'2016-07-22 09:44:04.438301','109','109',3,'',46,1),(1104,'2016-07-22 09:44:04.446159','108','108',3,'',46,1),(1105,'2016-07-22 09:44:04.454985','107','107',3,'',46,1),(1106,'2016-07-22 09:44:04.463470','68','68',3,'',46,1),(1107,'2016-07-22 09:44:04.471702','67','67',3,'',46,1),(1108,'2016-07-22 09:44:21.655576','103','103',3,'',41,1),(1109,'2016-07-22 10:07:11.470598','129','129',3,'',46,1),(1110,'2016-07-22 10:07:11.481624','128','128',3,'',46,1),(1111,'2016-07-22 10:34:29.581579','140','140',3,'',46,1),(1112,'2016-07-22 10:34:29.590589','139','139',3,'',46,1),(1113,'2016-07-22 11:08:16.833185','146','146',3,'',46,1),(1114,'2016-07-22 11:08:16.841687','145','145',3,'',46,1),(1115,'2016-07-22 11:08:16.849801','144','144',3,'',46,1),(1116,'2016-07-22 11:33:59.678484','108','108',3,'',41,1),(1117,'2016-07-22 11:33:59.687249','107','107',3,'',41,1),(1118,'2016-07-22 11:34:32.360834','158','158',3,'',46,1),(1119,'2016-07-22 11:34:32.369257','157','157',3,'',46,1),(1120,'2016-07-22 11:34:32.377261','156','156',3,'',46,1),(1121,'2016-07-22 11:34:32.385093','155','155',3,'',46,1),(1122,'2016-07-22 11:34:32.393120','154','154',3,'',46,1),(1123,'2016-07-22 11:34:32.404974','153','153',3,'',46,1),(1124,'2016-07-22 11:34:32.413454','152','152',3,'',46,1),(1125,'2016-07-22 11:34:32.421817','151','151',3,'',46,1),(1126,'2016-07-22 11:34:32.429976','150','150',3,'',46,1),(1127,'2016-07-22 11:34:32.438135','149','149',3,'',46,1),(1128,'2016-07-22 11:34:32.446375','148','148',3,'',46,1),(1129,'2016-07-22 12:36:50.818001','272','272',2,'Changed category_name.',12,1),(1130,'2016-07-22 12:58:13.773530','75','75',2,'Changed service_name and cost.',29,1),(1131,'2016-07-22 12:59:10.744896','74','74',2,'Changed service_name and cost.',29,1),(1132,'2016-07-22 12:59:52.647034','74','74',2,'Changed service_name and cost.',29,1),(1133,'2016-07-22 13:00:55.209846','75','75',2,'Changed service_name and cost.',29,1),(1134,'2016-07-25 05:11:13.584493','76','76',1,'Added.',29,1),(1135,'2016-07-25 05:11:24.564395','77','77',1,'Added.',29,1),(1136,'2016-07-25 05:11:50.472514','78','78',1,'Added.',29,1),(1137,'2016-07-25 05:12:09.268303','79','79',1,'Added.',29,1),(1138,'2016-07-25 05:12:28.671875','80','80',1,'Added.',29,1),(1139,'2016-07-25 05:13:48.048783','75','75',3,'',29,1),(1140,'2016-07-25 05:13:48.065298','74','74',3,'',29,1),(1141,'2016-07-25 05:13:48.074061','73','73',3,'',29,1),(1142,'2016-07-25 05:13:48.082537','72','72',3,'',29,1),(1143,'2016-07-25 05:13:48.090970','71','71',3,'',29,1),(1144,'2016-07-25 05:13:48.099318','70','70',3,'',29,1),(1145,'2016-07-25 05:13:48.108116','69','69',3,'',29,1),(1146,'2016-07-25 05:13:48.116188','68','68',3,'',29,1),(1147,'2016-07-25 05:13:48.124240','67','67',3,'',29,1),(1148,'2016-07-25 05:13:48.133015','66','66',3,'',29,1),(1149,'2016-07-25 05:13:48.141027','65','65',3,'',29,1),(1150,'2016-07-25 05:13:48.150799','64','64',3,'',29,1),(1151,'2016-07-25 05:13:48.159010','63','63',3,'',29,1),(1152,'2016-07-25 05:13:48.167220','62','62',3,'',29,1),(1153,'2016-07-25 05:13:48.177615','61','61',3,'',29,1),(1154,'2016-07-25 05:13:48.185907','60','60',3,'',29,1),(1155,'2016-07-25 05:13:48.193787','59','59',3,'',29,1),(1156,'2016-07-25 05:13:48.202287','58','58',3,'',29,1),(1157,'2016-07-25 05:13:48.210302','57','57',3,'',29,1),(1158,'2016-07-25 05:13:48.218175','56','56',3,'',29,1),(1159,'2016-07-25 12:44:16.399590','4','yogesh@bynry.com',1,'Added.',11,1),(1160,'2016-07-25 12:45:23.253931','4','yogesh@bynry.com',2,'Changed email.',11,1),(1161,'2016-07-25 12:46:30.878022','423','yogesh@bynry.com',2,'Changed password.',4,1),(1162,'2016-07-25 12:46:49.556665','113','113',3,'',16,1),(1163,'2016-07-25 12:46:49.565489','112','112',3,'',16,1),(1164,'2016-07-25 12:46:49.573501','111','111',3,'',16,1),(1165,'2016-07-25 12:46:49.581749','110','110',3,'',16,1),(1166,'2016-07-25 12:46:49.592364','109','109',3,'',16,1),(1167,'2016-07-25 12:46:49.600689','108','108',3,'',16,1),(1168,'2016-07-25 12:46:49.608417','107','107',3,'',16,1),(1169,'2016-07-25 12:46:49.616567','106','106',3,'',16,1),(1170,'2016-07-25 12:46:49.624530','105','105',3,'',16,1),(1171,'2016-07-25 12:46:49.632491','104','104',3,'',16,1),(1172,'2016-07-25 12:46:49.640517','103','103',3,'',16,1),(1173,'2016-07-25 12:47:20.436223','423','yogesh@bynry.com',2,'Changed password.',4,1),(1174,'2016-07-25 13:00:49.190126','114','114',3,'',16,1),(1175,'2016-07-25 13:29:12.370789','115','115',2,'Changed supplier_id.',16,1),(1176,'2016-07-26 05:29:58.836828','99','99',3,'',15,1),(1177,'2016-07-26 05:29:58.846357','98','98',3,'',15,1),(1178,'2016-07-26 05:29:58.854672','97','97',3,'',15,1),(1179,'2016-07-26 05:29:58.863107','94','94',3,'',15,1),(1180,'2016-07-26 05:29:58.871111','83','83',3,'',15,1),(1181,'2016-07-26 05:29:58.879198','75','75',3,'',15,1),(1182,'2016-07-26 06:21:29.279627','115','115',3,'',16,1),(1183,'2016-07-26 12:42:36.180838','135','135',2,'No fields changed.',27,1),(1184,'2016-07-26 13:31:37.927453','130','130',3,'',27,1),(1185,'2016-07-26 13:31:37.935979','129','129',3,'',27,1),(1186,'2016-07-26 13:31:37.945840','128','128',3,'',27,1),(1187,'2016-07-26 13:31:37.954528','127','127',3,'',27,1),(1188,'2016-07-26 13:31:37.962690','126','126',3,'',27,1),(1189,'2016-07-26 13:31:37.970732','124','124',3,'',27,1),(1190,'2016-07-26 13:31:37.979373','123','123',3,'',27,1),(1191,'2016-07-26 13:31:37.987550','122','122',3,'',27,1),(1192,'2016-07-26 13:31:37.995774','121','121',3,'',27,1),(1193,'2016-07-26 13:31:38.005018','120','120',3,'',27,1),(1194,'2016-07-26 13:31:38.014000','119','119',3,'',27,1),(1195,'2016-07-26 13:31:38.022375','117','117',3,'',27,1),(1196,'2016-07-26 16:17:27.819796','140','140',2,'No fields changed.',27,1),(1197,'2016-07-26 16:24:49.550747','121','121',3,'',16,1),(1198,'2016-07-26 16:24:49.559600','119','119',3,'',16,1),(1199,'2016-07-27 11:34:29.727156','322','322',3,'',12,1),(1200,'2016-07-27 11:34:29.736064','321','321',3,'',12,1),(1201,'2016-07-27 11:34:29.744156','320','320',3,'',12,1),(1202,'2016-07-27 11:34:29.752496','319','319',3,'',12,1),(1203,'2016-07-27 11:34:29.760538','318','318',3,'',12,1),(1204,'2016-07-27 11:34:29.768620','317','317',3,'',12,1),(1205,'2016-07-27 11:34:29.813090','316','316',3,'',12,1),(1206,'2016-07-27 11:34:29.819977','315','315',3,'',12,1),(1207,'2016-07-27 11:34:29.828213','314','314',3,'',12,1),(1208,'2016-07-27 11:34:29.836151','313','313',3,'',12,1),(1209,'2016-07-27 11:34:29.843754','312','312',3,'',12,1),(1210,'2016-07-27 11:34:29.851998','311','311',3,'',12,1),(1211,'2016-07-27 11:34:29.860460','310','310',3,'',12,1),(1212,'2016-07-27 11:34:29.868484','309','309',3,'',12,1),(1213,'2016-07-27 11:34:29.877400','308','308',3,'',12,1),(1214,'2016-07-27 11:34:29.885521','307','307',3,'',12,1),(1215,'2016-07-27 11:34:29.893810','306','306',3,'',12,1),(1216,'2016-07-27 11:34:29.901597','305','305',3,'',12,1),(1217,'2016-07-27 11:34:29.909546','304','304',3,'',12,1),(1218,'2016-07-27 11:34:29.917646','303','303',3,'',12,1),(1219,'2016-07-27 11:34:29.925720','302','302',3,'',12,1),(1220,'2016-07-27 11:34:29.933885','301','301',3,'',12,1),(1221,'2016-07-27 11:34:29.941900','300','300',3,'',12,1),(1222,'2016-07-27 11:34:29.949964','296','296',3,'',12,1),(1223,'2016-07-27 11:34:29.958216','295','295',3,'',12,1),(1224,'2016-07-27 11:34:29.965916','294','294',3,'',12,1),(1225,'2016-07-27 11:34:29.974009','293','293',3,'',12,1),(1226,'2016-07-27 11:34:29.984519','292','292',3,'',12,1),(1227,'2016-07-27 11:34:29.992721','291','291',3,'',12,1),(1228,'2016-07-27 11:34:30.003599','290','290',3,'',12,1),(1229,'2016-07-27 11:34:30.014514','289','289',3,'',12,1),(1230,'2016-07-27 11:34:30.024372','288','288',3,'',12,1),(1231,'2016-07-27 11:34:30.035229','287','287',3,'',12,1),(1232,'2016-07-27 11:34:30.043585','286','286',3,'',12,1),(1233,'2016-07-27 11:34:30.051875','285','285',3,'',12,1),(1234,'2016-07-27 11:34:30.059968','284','284',3,'',12,1),(1235,'2016-07-27 11:34:30.067929','283','283',3,'',12,1),(1236,'2016-07-27 11:34:30.075908','282','282',3,'',12,1),(1237,'2016-07-27 11:34:30.083901','281','281',3,'',12,1),(1238,'2016-07-27 11:34:30.092976','280','280',3,'',12,1),(1239,'2016-07-27 11:34:30.100839','279','279',3,'',12,1),(1240,'2016-07-27 11:34:30.108924','278','278',3,'',12,1),(1241,'2016-07-27 11:34:30.117552','277','277',3,'',12,1),(1242,'2016-07-27 11:34:30.125469','276','276',3,'',12,1),(1243,'2016-07-27 11:34:30.133999','275','275',3,'',12,1),(1244,'2016-07-27 11:34:30.141984','274','274',3,'',12,1),(1245,'2016-07-27 11:34:30.150475','273','273',3,'',12,1),(1246,'2016-07-27 11:34:30.158543','272','272',3,'',12,1),(1247,'2016-07-27 11:34:30.166862','271','271',3,'',12,1),(1248,'2016-07-27 11:34:30.174837','270','270',3,'',12,1),(1249,'2016-07-27 11:34:30.183135','269','269',3,'',12,1),(1250,'2016-07-27 11:34:30.190946','268','268',3,'',12,1),(1251,'2016-07-27 11:34:30.199004','267','267',3,'',12,1),(1252,'2016-07-27 11:34:30.206919','266','266',3,'',12,1),(1253,'2016-07-27 11:34:30.216566','265','265',3,'',12,1),(1254,'2016-07-27 11:34:30.225123','264','264',3,'',12,1),(1255,'2016-07-27 11:34:30.233424','263','263',3,'',12,1),(1256,'2016-07-27 11:34:30.241415','262','262',3,'',12,1),(1257,'2016-07-27 11:34:30.249677','261','261',3,'',12,1),(1258,'2016-07-27 11:34:30.257992','260','260',3,'',12,1),(1259,'2016-07-27 11:34:30.266398','259','259',3,'',12,1),(1260,'2016-07-27 11:34:30.274974','258','258',3,'',12,1),(1261,'2016-07-27 11:34:30.283467','257','257',3,'',12,1),(1262,'2016-07-27 11:34:30.291154','256','256',3,'',12,1),(1263,'2016-07-27 11:34:30.299279','255','255',3,'',12,1),(1264,'2016-07-27 11:34:30.308020','254','254',3,'',12,1),(1265,'2016-07-27 11:34:30.317631','253','253',3,'',12,1),(1266,'2016-07-27 11:34:30.325926','252','252',3,'',12,1),(1267,'2016-07-27 13:01:42.642356','330','330',3,'',12,1),(1268,'2016-07-27 13:01:42.651375','329','329',3,'',12,1),(1269,'2016-07-27 13:06:07.113790','331','331',3,'',12,1),(1270,'2016-07-27 13:08:59.405689','332','332',3,'',12,1),(1271,'2016-07-27 13:10:15.615533','328','328',3,'',12,1),(1272,'2016-07-27 13:10:15.624498','327','327',3,'',12,1),(1273,'2016-07-27 13:15:36.082793','334','334',3,'',12,1),(1274,'2016-07-27 13:15:36.091686','333','333',3,'',12,1),(1275,'2016-07-27 13:33:09.705427','335','335',3,'',12,1),(1276,'2016-07-27 16:32:12.732745','14','Admin',3,'',10,1),(1277,'2016-07-27 16:32:12.741696','12','Consumer',3,'',10,1),(1278,'2016-07-27 16:32:12.749975','10','Subscriber',3,'',10,1),(1279,'2016-07-27 16:33:28.175915','171','sagar@bynry.com',2,'Changed is_superuser and user_permissions.',4,1),(1280,'2016-07-28 06:16:04.345538','123','123',2,'Changed supplier_id.',16,1),(1281,'2016-07-28 06:26:55.463504','45','45',3,'',39,1),(1282,'2016-07-28 06:29:03.124357','46','46',3,'',39,1),(1283,'2016-07-28 06:42:49.173003','47','47',3,'',39,1),(1284,'2016-07-28 11:20:25.880235','408','anihkhi[hi7itu3@123.com',3,'',4,1),(1285,'2016-07-28 11:49:50.583165','123','123',3,'',16,1),(1286,'2016-07-28 12:29:14.995258','48','48',3,'',39,1),(1287,'2016-07-28 13:03:08.844994','337','337',2,'Changed category_color.',12,1),(1288,'2016-07-28 13:03:15.721477','336','336',2,'Changed category_color.',12,1),(1289,'2016-07-28 13:03:23.717418','326','326',2,'Changed category_color.',12,1),(1290,'2016-07-28 13:18:00.078306','338','338',3,'',12,1),(1291,'2016-07-28 13:18:00.113086','337','337',3,'',12,1),(1292,'2016-07-28 13:18:00.121459','336','336',3,'',12,1),(1293,'2016-07-28 13:18:00.129895','326','326',3,'',12,1),(1294,'2016-07-28 13:18:41.622698','49','49',3,'',39,1),(1295,'2016-07-28 13:19:16.039101','80','80',3,'',35,1),(1296,'2016-07-28 13:19:16.048293','79','79',3,'',35,1),(1297,'2016-07-28 13:19:16.057800','78','78',3,'',35,1),(1298,'2016-07-28 13:19:16.066345','77','77',3,'',35,1),(1299,'2016-07-28 13:19:16.074320','76','76',3,'',35,1),(1300,'2016-07-28 13:19:16.083551','75','75',3,'',35,1),(1301,'2016-07-28 13:19:16.093609','74','74',3,'',35,1),(1302,'2016-07-28 13:19:16.101828','73','73',3,'',35,1),(1303,'2016-07-28 13:19:16.110190','72','72',3,'',35,1),(1304,'2016-07-28 13:19:16.118776','71','71',3,'',35,1),(1305,'2016-07-28 13:19:16.127182','70','70',3,'',35,1),(1306,'2016-07-28 13:19:16.135790','69','69',3,'',35,1),(1307,'2016-07-28 13:48:04.158718','50','50',3,'',39,1),(1308,'2016-07-28 14:21:54.466620','51','51',3,'',39,1),(1309,'2016-07-28 14:38:44.587531','52','52',3,'',39,1),(1310,'2016-07-28 15:08:03.338749','339','339',2,'Changed category_status.',12,1),(1311,'2016-07-29 04:58:07.042072','342','342',3,'',12,1),(1312,'2016-07-29 04:58:07.051452','341','341',3,'',12,1),(1313,'2016-07-29 04:58:07.074825','340','340',3,'',12,1),(1314,'2016-07-29 05:32:20.131214','343','343',3,'',12,1),(1315,'2016-07-29 05:36:00.614388','442','Vikas Padhy',3,'',4,1),(1316,'2016-07-29 06:57:31.584107','126','126',2,'Changed supplier_id.',16,1),(1317,'2016-07-29 07:03:08.362464','52','52',2,'Changed business_id.',44,1),(1318,'2016-07-29 08:03:03.455678','78','Pawar',3,'',24,1),(1319,'2016-07-29 10:15:52.317502','77','77',3,'',15,1),(1320,'2016-07-29 10:28:33.002296','128','128',3,'',16,1),(1321,'2016-07-29 10:44:49.937330','276','276',2,'Changed no_of_days.',28,1),(1322,'2016-07-29 10:45:02.357076','281','281',2,'Changed no_of_days.',28,1),(1323,'2016-07-29 10:45:22.826043','284','284',2,'Changed no_of_days.',28,1),(1324,'2016-07-29 10:51:42.112308','151','151',3,'',27,1),(1325,'2016-07-29 10:55:51.254602','395','vikram@bynry.com',2,'Changed password.',4,1),(1326,'2016-07-29 10:56:08.648250','395','vikram@bynry.com',2,'Changed password.',4,1),(1327,'2016-07-29 11:07:35.135570','289','289',2,'Changed no_of_days.',28,1),(1328,'2016-07-29 11:14:35.579259','129','129',3,'',16,1),(1329,'2016-07-29 11:23:14.279615','269','vikas2@bynry.com',2,'Changed password.',4,1),(1330,'2016-07-29 11:23:57.813327','388','vikas3@bynry.com',2,'Changed password.',4,1),(1331,'2016-07-29 11:27:50.117717','388','vikas3@bynry.com',2,'Changed password.',4,1),(1332,'2016-07-29 11:28:06.056948','251','akshay@bynry.com',2,'Changed password.',4,1),(1333,'2016-07-29 11:58:23.288656','53','53',3,'',39,1),(1334,'2016-07-29 14:23:16.469086','294','294',2,'Changed no_of_days.',28,1),(1335,'2016-08-01 11:53:38.859995','105','105',3,'',15,1),(1336,'2016-08-01 13:07:25.630395','165','165',3,'',27,1),(1337,'2016-08-01 13:07:50.800708','107','107',3,'',15,1),(1338,'2016-08-02 09:09:08.811730','57','57',2,'Changed creation_date.',45,1),(1339,'2016-08-02 09:10:18.612688','57','57',2,'Changed creation_date.',45,1),(1340,'2016-08-02 09:12:23.475972','56','56',2,'Changed creation_date.',45,1),(1341,'2016-08-02 09:13:32.716116','56','56',2,'No fields changed.',45,1),(1342,'2016-08-02 09:14:32.323386','56','56',2,'Changed creation_date.',45,1),(1343,'2016-08-02 09:18:05.514564','56','56',2,'Changed creation_date.',45,1),(1344,'2016-08-02 09:20:37.151432','57','57',2,'Changed creation_date.',45,1),(1345,'2016-08-02 09:21:21.659244','56','56',2,'Changed creation_date.',45,1),(1346,'2016-08-02 09:58:21.496414','122','122',3,'',38,1),(1347,'2016-08-02 09:58:21.504748','111','111',3,'',38,1),(1348,'2016-08-02 09:58:21.513661','109','109',3,'',38,1),(1349,'2016-08-02 09:58:21.521631','103','103',3,'',38,1),(1350,'2016-08-02 09:58:21.529787','102','102',3,'',38,1),(1351,'2016-08-02 09:58:21.537804','100','100',3,'',38,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(36,'captcha','captchastore'),(5,'contenttypes','contenttype'),(33,'digispaceapp','additionalamenities'),(16,'digispaceapp','advert'),(46,'digispaceapp','advertfavourite'),(18,'digispaceapp','advertimage'),(41,'digispaceapp','advertlike'),(30,'digispaceapp','advertratecard'),(44,'digispaceapp','advertsubscriptionmap'),(43,'digispaceapp','advert_category_map'),(42,'digispaceapp','advert_video'),(21,'digispaceapp','amenities'),(27,'digispaceapp','business'),(12,'digispaceapp','category'),(37,'digispaceapp','categorycitymap'),(48,'digispaceapp','categorylevel1'),(49,'digispaceapp','categorylevel2'),(50,'digispaceapp','categorylevel3'),(51,'digispaceapp','categorylevel4'),(52,'digispaceapp','categorylevel5'),(8,'digispaceapp','city'),(39,'digispaceapp','city_place'),(38,'digispaceapp','consumerprofile'),(40,'digispaceapp','consumer_feedback'),(45,'digispaceapp','couponcode'),(14,'digispaceapp','currency'),(22,'digispaceapp','nearbyattraction'),(25,'digispaceapp','nearesthospital'),(24,'digispaceapp','nearestschool'),(23,'digispaceapp','nearestshopping'),(32,'digispaceapp','paymentdetail'),(13,'digispaceapp','phonecategory'),(17,'digispaceapp','phoneno'),(9,'digispaceapp','pincode'),(35,'digispaceapp','places'),(28,'digispaceapp','premiumservice'),(53,'digispaceapp','privileges'),(47,'digispaceapp','product'),(29,'digispaceapp','serviceratecard'),(7,'digispaceapp','state'),(15,'digispaceapp','supplier'),(34,'digispaceapp','tax'),(11,'digispaceapp','userprofile'),(10,'digispaceapp','userrole'),(19,'digispaceapp','workinghours'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-09 13:39:44.439494'),(2,'auth','0001_initial','2016-06-09 13:39:45.103264'),(3,'admin','0001_initial','2016-06-09 13:39:45.217113'),(4,'admin','0002_logentry_remove_auto_add','2016-06-09 13:39:45.251406'),(5,'contenttypes','0002_remove_content_type_name','2016-06-09 13:39:45.431797'),(6,'auth','0002_alter_permission_name_max_length','2016-06-09 13:39:45.488661'),(7,'auth','0003_alter_user_email_max_length','2016-06-09 13:39:45.543366'),(8,'auth','0004_alter_user_username_opts','2016-06-09 13:39:45.564373'),(9,'auth','0005_alter_user_last_login_null','2016-06-09 13:39:45.651436'),(10,'auth','0006_require_contenttypes_0002','2016-06-09 13:39:45.660514'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-09 13:39:45.678890'),(12,'digispaceapp','0001_initial','2016-06-09 13:39:49.868921'),(13,'sessions','0001_initial','2016-06-09 13:39:49.941665'),(14,'digispaceapp','0002_auto_20160614_1329','2016-06-14 13:29:54.141909'),(15,'digispaceapp','0003_additionalamenities','2016-06-15 14:06:43.779848'),(16,'digispaceapp','0004_auto_20160616_0729','2016-06-16 07:29:51.101683'),(17,'digispaceapp','0005_auto_20160617_0711','2016-06-17 07:11:22.528212'),(18,'digispaceapp','0006_auto_20160617_0938','2016-06-17 09:38:29.192408'),(19,'digispaceapp','0007_places','2016-06-18 14:18:47.907664'),(20,'captcha','0001_initial','2016-06-20 08:35:56.454099'),(21,'digispaceapp','0008_auto_20160622_0549','2016-06-22 05:49:22.175354'),(22,'digispaceapp','0009_consumerprofile','2016-06-23 09:53:04.445277'),(23,'digispaceapp','0010_auto_20160624_1159','2016-06-24 11:59:07.832827'),(24,'digispaceapp','0011_auto_20160624_1229','2016-06-24 12:29:38.392541'),(25,'digispaceapp','0012_auto_20160624_1339','2016-06-24 13:39:55.000699'),(26,'digispaceapp','0013_auto_20160625_1123','2016-06-25 11:23:39.745580'),(27,'digispaceapp','0014_auto_20160629_0723','2016-06-29 07:24:01.779936'),(28,'digispaceapp','0015_auto_20160705_0446','2016-07-05 04:46:29.096637'),(29,'digispaceapp','0016_auto_20160707_1213','2016-07-07 12:14:06.972470'),(30,'digispaceapp','0017_advertlike','2016-07-09 10:41:22.806381'),(31,'digispaceapp','0018_auto_20160709_1722','2016-07-09 17:22:14.995727'),(32,'digispaceapp','0019_auto_20160709_1809','2016-07-09 18:09:31.510293'),(33,'digispaceapp','0020_advert_category_map','2016-07-09 18:31:36.557650'),(34,'digispaceapp','0021_auto_20160714_0514','2016-07-14 05:15:02.883538'),(35,'digispaceapp','0022_auto_20160714_0611','2016-07-14 06:12:02.160824'),(36,'digispaceapp','0023_couponcode','2016-07-14 07:37:24.830042'),(37,'digispaceapp','0024_auto_20160714_1051','2016-07-14 10:51:39.853594'),(38,'digispaceapp','0025_auto_20160715_0704','2016-07-15 07:04:59.339797'),(39,'digispaceapp','0002_auto_20160715_1552','2016-07-15 15:53:00.350813'),(40,'digispaceapp','0003_advert_speciality','2016-07-16 05:19:35.051720'),(41,'digispaceapp','0004_auto_20160719_1007','2016-07-19 10:07:58.399531'),(42,'digispaceapp','0005_auto_20160722_1023','2016-07-22 10:23:34.333226'),(43,'digispaceapp','0006_auto_20160727_1144','2016-07-27 11:44:59.949747'),(44,'digispaceapp','0007_privileges','2016-07-27 16:29:49.496089'),(45,'digispaceapp','0008_category_category_color','2016-07-28 12:55:42.407233'),(46,'digispaceapp','0009_auto_20160729_0456','2016-07-29 04:56:42.827789');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('18t8z29gsz4tupp2veujbgu0smowuhyh','NGY2YTE2MDVjMTMyYjdkZjllNWVkYzdkNTBhODE2NDM5YWM2YTZlMDp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzAwMDM1ZjU2MDBlNjk1ZTVlZmZmOWE3ZWZhMjEyM2MxYjEyYjBmMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-11 14:04:35.063981'),('1skyuxdk9ryfp0pqth6l5mvhusz8iaij','N2RlM2QxN2VhOTY5MGVmNDJkNzUzYTFhMmU4OGJlMGNjZThjOTQ3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY0YWM1Njc2ZmU5ZDhkNzI2ZGNlYWQ0MGMwNzgxNGU2OTA4ZGEwNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-16 09:17:14.806452'),('1wret84qwueulomwsuxx4viryrbebbcv','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-14 10:12:32.156214'),('2m8g1ubbxsw4bblo4e8i3mx9zec6m9a0','MTg2M2I2OGIzZjdiYzFhOTFhNTc2ZjE2ZWUxZDcwZGFhNmFkYTVhNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwOTBhMjEyNGQzMjA2M2Y4MWRmYTBkM2I3M2JlYzY0NTY3YjM1NmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-12 06:28:53.091524'),('2mrmjz66j4gl3yajbu4jfekp8vvfh6hl','MTg2M2I2OGIzZjdiYzFhOTFhNTc2ZjE2ZWUxZDcwZGFhNmFkYTVhNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwOTBhMjEyNGQzMjA2M2Y4MWRmYTBkM2I3M2JlYzY0NTY3YjM1NmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-12 06:28:43.842910'),('2ywyegfg38a5lzb412js9vf4fw6fc6i4','ODUzZmExYTBlOGU0ZTYzMmFlYTM1NzFkNTUyM2Y3YjZlN2M1ZDBkNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Y3OTJlMGQzMmE3NWRlNTcwMGRkNzBhNzY1NTMxZDgwNjU1NzYxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-16 09:44:37.416644'),('3dz05i3of5nm8cco577syqmjnc6y20jv','ZTQ4OGU5ZTlhYTFkNjk3YzU5MDBhYTQyYjQ3YTg1NzgyNDU4OWZjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBkZTRlZjk5MGU1NTNjMzM3MzhkMDE2MDVkZmU1MjgxN2Y3OGJjNGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-08 09:07:46.949440'),('42shz8805ktj5rmdv6feya16kjq6vk3r','MzMyYzEwZmNlOTY0YmU2Nzk4MGViN2UzYTNjY2MyMDhiZTNiOTI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyOGIwY2E0NGMyYTc1YTU0Y2Q3M2ExZGFlMzIyZDQ5ZWU0MjE1ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-24 13:22:48.590431'),('42xh27r7i2ebpkvfv6a6xoe1hz0ecaud','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-30 09:19:57.000000'),('4lq12ebf7h4u54b6n862i14jjqdwjiq3','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-23 06:48:57.000000'),('4r683ozd61mznk31zoaprxvylzywjx2o','YzNlM2RmNDhhYzM1YTg0YjQzN2Y0MmQ0NWUwZTgxZDBiNzRhMDE4Zjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-07-27 12:20:44.278606'),('565fcfbqdrrjpaha16evqklraampvoa4','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-30 07:55:31.000000'),('5gaekk6pf8b9yucfbj1p6nxa8we4rud5','NWJjNjE2MGY0OGI3NmQzNmZlMmI5MmVhYzNmYTU1ZjdmYzZjNjA4Njp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2MjUyNzFmNjA5NjJlOTMwYjkwMjMxYTFkMjFmNDk1MWRlM2YyMjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-16 09:56:22.055050'),('5o9w9ovv72dfem8mgogelpivb5ne8lvy','NTI0YzgxNDFiYmVmNWY0OTQzZDVkNDZkNjQ1NGQ0NWU3ZDc4YWExMzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA5ZjEyMGEyNTA3YzJmMmRlMDg2OWMwMzFlMzM2N2YxZGQxNzI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-21 08:46:30.974855'),('5s0sn9jxbaf7yk0u9pitp3ysc2r164mz','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-11 14:06:11.519752'),('75pekikr9j2luk0df2gzpo4nsdfidr2k','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-04 06:19:40.000000'),('7r6pb3wevcb2e9lj5csq5wpkkm8yv4k2','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-17 08:23:31.306493'),('7rtx8c48s9tr8d3uo1t9ohuzr9z3662m','YTE0NzljNTBhMDQzMjY5NGZlOWViZGU3NDJlYjdhNWNlOTVjYmNjMjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2U5OWExMjE4YzgxMDdjOTgzMGI3MDQyNGU0MzNmZmE0MWY0ZWVjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-18 09:01:43.706391'),('94vssciwjo10q6auvmmanwg0iglvqi4w','ZmU0OTMwMWNkMGM0YTRmNzc4MTdhYmU2MzhmYjA4MGY2ZjdjMjFhMDp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTNjZDAzNjBjMTdkODI2MmUyNjQ0YmQ2OWFjNGFkNGRiZTQ3ZTk1NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-09 05:06:38.220897'),('9eqiy8joxjb83t8g4l0xcr99x73fdgeq','NTI0YzgxNDFiYmVmNWY0OTQzZDVkNDZkNjQ1NGQ0NWU3ZDc4YWExMzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA5ZjEyMGEyNTA3YzJmMmRlMDg2OWMwMzFlMzM2N2YxZGQxNzI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-23 04:49:49.957606'),('9feojrzzpqyoi3w6me5gronutmn6rxzi','MzMyYzEwZmNlOTY0YmU2Nzk4MGViN2UzYTNjY2MyMDhiZTNiOTI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyOGIwY2E0NGMyYTc1YTU0Y2Q3M2ExZGFlMzIyZDQ5ZWU0MjE1ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-23 13:41:52.163047'),('af3yzadzlt8tkiwficmpwya5qtf2v2py','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-08-12 10:04:40.149210'),('ahdxtys4wfsvhf4epam9g9paw29yc43k','MDk0ZDZhYWVjYzFlYWNlYzQxYzliZjU3ZmE2YWZmZGZlMDU3Y2EyODp7ImxvZ2luX3VzZXIiOiJ2aWthc0BieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoidmlrYXNAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjUzMDRlZDc1ZmIxNGFhMDg2Y2Q2NjZhZDVmODlhNmVhOWQzZGI1NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MCJ9','2016-08-09 06:04:44.104884'),('blwcb6kmrifr3sictxxrdhjslmw76lh4','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-05 10:37:38.170347'),('bv4c34nbp3xokfrtf55n1vtiq8jfkcks','ODUzZmExYTBlOGU0ZTYzMmFlYTM1NzFkNTUyM2Y3YjZlN2M1ZDBkNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Y3OTJlMGQzMmE3NWRlNTcwMGRkNzBhNzY1NTMxZDgwNjU1NzYxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-16 10:54:28.093311'),('cd9ezmn1podzbdkgg03r85hvvh6squ7k','MzMyYzEwZmNlOTY0YmU2Nzk4MGViN2UzYTNjY2MyMDhiZTNiOTI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyOGIwY2E0NGMyYTc1YTU0Y2Q3M2ExZGFlMzIyZDQ5ZWU0MjE1ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-23 14:15:50.932198'),('cgxeb504uudh83706rsbny701ycli162','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-30 07:22:10.000000'),('cncda1x3bjcqjur2isu9sxi8lv0ryqu0','NTI0YzgxNDFiYmVmNWY0OTQzZDVkNDZkNjQ1NGQ0NWU3ZDc4YWExMzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA5ZjEyMGEyNTA3YzJmMmRlMDg2OWMwMzFlMzM2N2YxZGQxNzI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-21 05:24:08.448141'),('dakwd0459cofe6vulxb2i7c3un0436vd','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-14 10:06:51.339711'),('dkl154oj1c3ee8sgi8cxo4wjineesw0q','YTE0NzljNTBhMDQzMjY5NGZlOWViZGU3NDJlYjdhNWNlOTVjYmNjMjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2U5OWExMjE4YzgxMDdjOTgzMGI3MDQyNGU0MzNmZmE0MWY0ZWVjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-16 11:19:32.668947'),('e1p8khp4pwwwfvzbiof7zgvyz8wsgxhw','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.649677'),('e6k3r3d8fsioiicvjfqa5n5sylisuigp','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:41.716198'),('ehz84kv6wgu1ldva1e48r01vbjuh68yd','YzNlM2RmNDhhYzM1YTg0YjQzN2Y0MmQ0NWUwZTgxZDBiNzRhMDE4Zjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-08-08 10:44:14.258579'),('ervcwq8euns67o8iop78td5f1s80wu41','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-16 13:17:24.844266'),('etlz72ku97dwrafp7l9x0l5to9efcpt1','MDk0ZDZhYWVjYzFlYWNlYzQxYzliZjU3ZmE2YWZmZGZlMDU3Y2EyODp7ImxvZ2luX3VzZXIiOiJ2aWthc0BieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoidmlrYXNAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjUzMDRlZDc1ZmIxNGFhMDg2Y2Q2NjZhZDVmODlhNmVhOWQzZGI1NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MCJ9','2016-08-02 05:12:13.092378'),('f7974ps6akizbwukfdjo41lqtic7e1s3','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-30 11:11:37.000000'),('fy8jfw51x9861yu3p6s5hrliluf7ldjc','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:34.707099'),('gfo6ld1a7o4d51o2jwg8cdzj7ps03yax','NjQxYTQ1OThjNzBiZTAxZTFhNTg2YTgwNWE4YzJlMDZjNjJjNzkwMTp7ImxvZ2luX3VzZXIiOiJWaWthcyBQYWRoeSIsImZpcnN0X25hbWUiOiJWaWthcyBQYWRoeSIsIl9hdXRoX3VzZXJfaGFzaCI6Ijk0YTFhNzA4MWY5Zjk3NzQ5ZWIyMzIyMzYwZDE2ZTBmODdhYjI5ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0NDIifQ==','2016-08-11 16:23:47.747653'),('gmre4fc0lbtbma233qpe8nooi3ktg4tp','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-02 13:19:01.573623'),('gx8kp9tjnp5x2hklztnr93gua7passbb','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.247188'),('h1qga6eploy81n2rqird67v2wbwwz0ld','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-13 10:33:42.438987'),('hjpi1d9ahh7i7s35wq7wryx3qm68v73a','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.630055'),('hmyio2nailz2z8w3p13o6e5c648wjuak','YzNlM2RmNDhhYzM1YTg0YjQzN2Y0MmQ0NWUwZTgxZDBiNzRhMDE4Zjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-08-04 07:30:22.000000'),('hpl6rygud5wk54z25tia0h3f5dbypxcj','ODJmYjIyYzlmZWIxNzUxNDU1OWM5OGRlYjM4OTE2ZDUxYjA0MmMxZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2NDc0OWI3Y2IwYTAyZWQxZDZmMTEwNjdlZmMwYjQ4OGU0Y2QzZTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-08 05:31:41.088721'),('hxrrgu008m2c56t69yvxa9q7bvg1x0mh','YTE0NzljNTBhMDQzMjY5NGZlOWViZGU3NDJlYjdhNWNlOTVjYmNjMjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2U5OWExMjE4YzgxMDdjOTgzMGI3MDQyNGU0MzNmZmE0MWY0ZWVjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-18 07:04:35.001326'),('i8gutwlhcupk9b3ol9811ddskso3n5fl','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-14 10:13:59.389517'),('j0ye6uykz7o9r53m9dbx4dhv41k4eutu','ZTQ4OGU5ZTlhYTFkNjk3YzU5MDBhYTQyYjQ3YTg1NzgyNDU4OWZjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBkZTRlZjk5MGU1NTNjMzM3MzhkMDE2MDVkZmU1MjgxN2Y3OGJjNGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-08 14:33:33.228462'),('jo3tajt6nh7sqkttc9t5x6fvy9zmsz74','NDliODRjNmEyY2JkYjBjYTM0MDkxMDJmMGZhOTVlNTQxOWJiYzM5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlMzA1OGFhMjUwM2JlY2NhNDhhODVmYmI5NzUzNzZjOWViYzQxMmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-26 07:53:49.106340'),('jw6sqilj3hjfd2qr3jmteny4kwkcnvzp','NzExODFlMTkyOGQwN2JmMjBmZjkzM2RjMThjMGI0YjRlNDM3NThkMzp7ImxvZ2luX3VzZXIiOiJ2aWthc0BieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoidmlrYXNAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWExZGIxZDE0ZTQ0YzZmMDUzZGI1MTlmOTczMDk5Y2ExOTI3MWRmMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MCJ9','2016-07-29 10:12:23.013216'),('kfq6c5mjnzf8o4gzigh008qyz19kbjiw','YzNlM2RmNDhhYzM1YTg0YjQzN2Y0MmQ0NWUwZTgxZDBiNzRhMDE4Zjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-08-04 09:58:11.000000'),('kkx4yeajkke6szckohbo08pqvtijyio0','MDk0ZDZhYWVjYzFlYWNlYzQxYzliZjU3ZmE2YWZmZGZlMDU3Y2EyODp7ImxvZ2luX3VzZXIiOiJ2aWthc0BieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoidmlrYXNAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjUzMDRlZDc1ZmIxNGFhMDg2Y2Q2NjZhZDVmODlhNmVhOWQzZGI1NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MCJ9','2016-08-09 06:04:53.997581'),('kmavq8zv6u8x6ohije88272lq2uucd9t','NzExODFlMTkyOGQwN2JmMjBmZjkzM2RjMThjMGI0YjRlNDM3NThkMzp7ImxvZ2luX3VzZXIiOiJ2aWthc0BieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoidmlrYXNAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWExZGIxZDE0ZTQ0YzZmMDUzZGI1MTlmOTczMDk5Y2ExOTI3MWRmMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MCJ9','2016-07-29 10:12:25.366405'),('kwlkizuq50s0y25701nzn0agw83km842','ODUzZmExYTBlOGU0ZTYzMmFlYTM1NzFkNTUyM2Y3YjZlN2M1ZDBkNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Y3OTJlMGQzMmE3NWRlNTcwMGRkNzBhNzY1NTMxZDgwNjU1NzYxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-16 09:21:03.162680'),('lxfcqm3ft71o85lonel07354ue0estdm','YWEwMmU4MTJkNDA3YmM0MGQ2NTE5NzhiOTRkNWE0OTViYTM2ZWQwZjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTUzMmRlN2ZiODcwNjNjNGZlYjc0NDM3Y2ZhOGI4MDRkNzE1YzMxMCIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-08-09 05:08:04.222572'),('m1w72bigmhvxvqskvq3c9xghpccp8cx5','MzMyYzEwZmNlOTY0YmU2Nzk4MGViN2UzYTNjY2MyMDhiZTNiOTI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyOGIwY2E0NGMyYTc1YTU0Y2Q3M2ExZGFlMzIyZDQ5ZWU0MjE1ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-25 10:17:19.000000'),('m2njqk233f95eo2rualmfs9497cd0dvw','NTI0YzgxNDFiYmVmNWY0OTQzZDVkNDZkNjQ1NGQ0NWU3ZDc4YWExMzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA5ZjEyMGEyNTA3YzJmMmRlMDg2OWMwMzFlMzM2N2YxZGQxNzI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-21 12:16:03.241407'),('nd7h4pn2568err0yvm1xrk0e0dgmsrsq','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-29 11:56:24.000000'),('nt4onl0vgxwcgolsm0f9cgv8o8swf0uw','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-20 12:24:35.815655'),('o11t4mmdjysz2zsagvu424yc8aycny9d','NWJjNjE2MGY0OGI3NmQzNmZlMmI5MmVhYzNmYTU1ZjdmYzZjNjA4Njp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2MjUyNzFmNjA5NjJlOTMwYjkwMjMxYTFkMjFmNDk1MWRlM2YyMjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-16 12:31:19.057413'),('o49bbpgp09h145natpw05tclrg19dmit','NWUzOWE4MWQwODA5Y2JhMDBmYmNmNTAwYzhkMDcwNzQwMDMxOWNhODp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzA1ZGVjMWFiOWIwMTNiNjQ2OGJkODQ1NzE1YzZlZWJhZDQ3Nzk2OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-08 14:11:26.827208'),('o8154o78h1l3apgyp9rjfnpw81o93vw8','NGY2YTE2MDVjMTMyYjdkZjllNWVkYzdkNTBhODE2NDM5YWM2YTZlMDp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzAwMDM1ZjU2MDBlNjk1ZTVlZmZmOWE3ZWZhMjEyM2MxYjEyYjBmMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-11 06:06:03.923470'),('o9zlp92vvlr3hezdtcrm7c1qhwetlul6','YzNlM2RmNDhhYzM1YTg0YjQzN2Y0MmQ0NWUwZTgxZDBiNzRhMDE4Zjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-08-03 12:28:48.222574'),('oe261856qau9y8y0lqcg4btrp01utyku','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-07 07:55:39.667279'),('ojg3r2udsmop7bjmd981y2zrzfj3a0oj','NDA1ZTIxZTNjZGVlMzY2ZTNhMjRjNTRmMmZiNDlkNWU3NDdhZThiYzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiZGM4M2E4MzJmYzBiZTAwMDU3YjM2MmQ1M2QxYzAxMzI1MzI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-12 11:43:36.294616'),('olrrxzbznn2a5n5dsraoo470r1x6pwbz','NTI0YzgxNDFiYmVmNWY0OTQzZDVkNDZkNjQ1NGQ0NWU3ZDc4YWExMzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA5ZjEyMGEyNTA3YzJmMmRlMDg2OWMwMzFlMzM2N2YxZGQxNzI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-19 12:15:03.477039'),('or6xpltj3sngmhh2csfm4iava0bs48hi','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-12 05:55:38.484547'),('otqrtphumaoylhchk1ry2ouugfec995w','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.463852'),('p53kspqpiuyjeyvzihbtw1ucnp71ult9','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.433036'),('pe0ghbmxr03ml0hw4tz6xpimzytmxdp9','NDA1ZTIxZTNjZGVlMzY2ZTNhMjRjNTRmMmZiNDlkNWU3NDdhZThiYzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiZGM4M2E4MzJmYzBiZTAwMDU3YjM2MmQ1M2QxYzAxMzI1MzI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-12 09:47:14.511397'),('pfi7ewf9vko1p33syyhnfy78d33n6fe9','YTE0NzljNTBhMDQzMjY5NGZlOWViZGU3NDJlYjdhNWNlOTVjYmNjMjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2U5OWExMjE4YzgxMDdjOTgzMGI3MDQyNGU0MzNmZmE0MWY0ZWVjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-17 11:55:29.719783'),('px9iqwqpj38mieycfni6tzqu9l9miqp2','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-28 10:55:06.000000'),('q4deq5l5tfwug6pk7aud7kxacs4i0xce','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.274126'),('q7cm04k6v718dmsi4l03z3r17ubdpt9o','YTVjM2U3YzM0N2U4ZTE3ZjU1NWM1NWFiYzY5ZDNhOTM3ZTJkYTU4OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlODExOTc4NTZkZjA0Y2M0YTE5NTkyNzIyMGM4MjJkY2U2ZmIyYzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-04 09:15:53.000000'),('qhch46a93vcv5xqfcprrbfx95fkhfg45','NDA1ZTIxZTNjZGVlMzY2ZTNhMjRjNTRmMmZiNDlkNWU3NDdhZThiYzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiZGM4M2E4MzJmYzBiZTAwMDU3YjM2MmQ1M2QxYzAxMzI1MzI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-12 11:49:31.958568'),('qttcvdgtbedqfrfxgkzmi758puq7sz5j','MjMzYzJjMTkwNzY1ZDNjYmZhNjJkZTNmZjljM2EzYmNiMTZjZTY2Mzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiODM4YjM3ODdmNjkyYjE2YmJjNTZiMzg3MzExMDNjMTdkNzk5MzZhNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-23 11:28:02.274323'),('r3ar8g7il1vbocqqtp7w6z9thjjcs5j7','NDA1ZTIxZTNjZGVlMzY2ZTNhMjRjNTRmMmZiNDlkNWU3NDdhZThiYzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiZGM4M2E4MzJmYzBiZTAwMDU3YjM2MmQ1M2QxYzAxMzI1MzI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-13 08:16:08.820778'),('s4ad7pa56c8clfjy96x39izyg34svb95','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-12 06:26:05.617025'),('s4i66mt8pjenexctgg5qppfot8ihu4im','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-03 13:14:45.312014'),('s7jftykc9tzd0mvzr6arzq08bp45l94a','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.704398'),('sc4wrq75i41ddmzi5h8ssvzrjquc3wp9','YzNlM2RmNDhhYzM1YTg0YjQzN2Y0MmQ0NWUwZTgxZDBiNzRhMDE4Zjp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-08-02 12:46:42.693948'),('su9zvda37256467wivqo6gp5lj8gq0wg','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-03 11:02:18.912792'),('t09njo1aoy1lzdxlxfyec8m30a25k5cw','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-30 07:22:18.000000'),('t523w0u7qm6ekpyojxejuz91cz4fqekw','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-30 07:22:05.000000'),('tblaw0p90pf8n83s6tmt8cmvzk2dmx9x','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-23 16:40:27.329958'),('toay0wpnw3ufm699hnmd3p5hbpteyi6e','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-11 14:17:37.679258'),('u13xhae2ixdjpsun0exbwaalxiggjsve','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-13 13:37:50.118018'),('u5jhtdenutxwdslg2wihtg0gspeyez5q','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.505951'),('uidl3vfgdrin2l08kqe04rcvmg5fb9qf','NDA1ZTIxZTNjZGVlMzY2ZTNhMjRjNTRmMmZiNDlkNWU3NDdhZThiYzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiZGM4M2E4MzJmYzBiZTAwMDU3YjM2MmQ1M2QxYzAxMzI1MzI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-12 14:14:04.868145'),('up94hyxno4ujw3blck5430nestyyk1bk','ODUzZmExYTBlOGU0ZTYzMmFlYTM1NzFkNTUyM2Y3YjZlN2M1ZDBkNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Y3OTJlMGQzMmE3NWRlNTcwMGRkNzBhNzY1NTMxZDgwNjU1NzYxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-16 13:13:45.262520'),('uv3s05qc7pizbxug583yhzg21sq3084d','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-12 11:50:15.424718'),('uwoq43pgmf37espsm0p7nuaz6uqmx7ix','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-23 11:27:07.446864'),('vao40fol78f1cfy467vzxt5wv7qrkpsd','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-08-02 05:07:42.316762'),('vdngrnsj1b44aclrs54g6669qacop4fg','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.352565'),('vibdtwm75j2s70jrq37nwplsskjd6ogw','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.253622'),('viw1dp4h3h5sqiamvvdipj25wl3y6v3g','MDg0NmVhNDdhNjNmOGVkOTk1ZDVmMjE5MDBhMTVhYTk2ZDc4YjhhZDp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGZmY2VjYWQ0ZTJkNWVjNDRmYTVjNjhhODFjMzg1M2E5ZmExODVkZiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-19 10:13:12.065337'),('vk2ed7fi23bjr82jo7tfrnc1kylm1t6n','MzMyYzEwZmNlOTY0YmU2Nzk4MGViN2UzYTNjY2MyMDhiZTNiOTI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyOGIwY2E0NGMyYTc1YTU0Y2Q3M2ExZGFlMzIyZDQ5ZWU0MjE1ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-28 09:36:17.715363'),('voumff40w2ksgnscg62gws2d1iz7ypin','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-11 14:45:17.147507'),('vugo23mgzsui2qo7cxpmcgav666b3zq8','YjI4MDEwNDFlYzUwZDdmMWYxMWJmODc2YmJkZDAyN2I2ZmU4ODczNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE0ZWY5YmE1YzA2ZjA4MGU2NDdmMmEwMjk5ZjA0ZDE2MjkwYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-13 11:45:20.060998'),('vuyb7w3u5zuk8su7zpajl23ndtu961s8','NWJkODJhNjJmYzMxNWUwMTg5ZTQ4NWM5YjZiNWEwYzlkOWNlYzQ0NTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2U5OWExMjE4YzgxMDdjOTgzMGI3MDQyNGU0MzNmZmE0MWY0ZWVjMCIsIl9hdXRoX3VzZXJfaWQiOiIxNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-07-17 11:54:12.362980'),('vylm8kzjsyyvrxikpqbmq74mj01mjmj5','ZmIyOWFmM2VhNTI4NDM0ZGQ5YjdlMzBhNjM0MWUwNzFhNjU1NjAwMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllZWIxZmQ3ODcwY2VkN2JhOGNjMDkyMWRhNGM0Y2JkYTkxNGQ1ZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-02 13:11:35.887567'),('vyopi7viiwebik4xj7l8a056f8lutblv','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.429973'),('woqclcawh3ara1f6fg0mt7evffyido02','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-28 04:19:44.202457'),('wy9yd51sfesqwmv9xfmn5twh9658lkta','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-28 11:34:27.819154'),('xfdsvzn25883lt3xext04y5aclghd2rt','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-28 05:56:32.887018'),('xgb3w954d28utdj4bqyx5o5yp49o0zk0','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:30.231636'),('xqr0usjqqkxruboajfynzsfh2y5imv6h','YjY5MzExNjAxOTU2ZDA0YzRjOGIzODc2M2EzZjM4ZjdiZTdhZTUxNTp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNiZjQ4NThmMTU3NTg4ZGEwZWFjYTM0YTY0OWU1YTZkZWE5MTJjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-07-27 13:06:58.284909'),('y7ds521gf83qu7lzisrwyaubxay82rnn','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.642655'),('yam7fsavgiq2dsrrx6wnchvdyfzu61vd','OWI5MGM3NzhiYjAxNzY5ZDNkYThiN2M4NGQ4NGM5MjkyZjlmZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYjAzMTRhYjZjMWE0Yjg0NWY3ZmJhYmIxYTA0NzE3YzhjZDQ1NjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-12 11:44:18.923520'),('yggkmt7w3ddtudicfgo5a1xdmrx22uez','NDA1ZTIxZTNjZGVlMzY2ZTNhMjRjNTRmMmZiNDlkNWU3NDdhZThiYzp7ImxvZ2luX3VzZXIiOiJzYWdhckBieW5yeS5jb20iLCJmaXJzdF9uYW1lIjoic2FnYXJAYnlucnkuY29tIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiZGM4M2E4MzJmYzBiZTAwMDU3YjM2MmQ1M2QxYzAxMzI1MzI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE3MSJ9','2016-08-12 10:00:18.335741'),('zfnmqfdzx2nazq6w8tbdr38ur8q3rhgh','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-08-12 09:31:26.480646'),('zqb1gmn7dq49j09u5po0b682j9ahlbtq','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-08-11 14:53:43.370352'),('ztlbko2bfbjucqev8s8nrqyyrnr6e95r','Mzg2NjEwMDMxMTEwZTFiM2ExOWMyMjEzMWQ2MTdkMDliNTUyYmE5Zjp7fQ==','2016-07-19 10:11:35.328756');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-02 19:08:57
