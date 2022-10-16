-- MySQL dump 10.13  Distrib 8.0.30, for macos12.5 (arm64)
--
-- Host: localhost    Database: wowy
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'Gb3ZiLO7uF7J5m3j4I60rIVIcfyGOlw3',1,'2022-09-27 01:54:11','2022-09-27 01:54:11','2022-09-27 01:54:11');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Smart Offer','2027-09-27 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,'Sale off','2027-09-27 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(3,'New Arrivals','2027-09-27 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(4,'Gaming Area','2027-09-27 00:00:00','not_set','ILSDKVYFGXPJ','promotion/4.png','/products',0,4,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(5,'Smart Offer','2027-09-27 00:00:00','not_set','IZ6WU8KUALYE','promotion/5.png','/products',0,5,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(6,'Repair Services','2027-09-27 00:00:00','banner-big','IZ6WU8KUALYF','promotion/6.png','/products',0,6,'published','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Smart Offer','promotion/1.png','/vi/products'),('vi',2,'Sale off','promotion/2.png','/vi/products'),('vi',3,'New Arrivals','promotion/3.png','/vi/products'),('vi',4,'Gaming Area','promotion/4.png','/vi/products'),('vi',5,'Smart Offer','promotion/5.png','/vi/products'),('vi',6,'Repair Services','promotion/6.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ut dolor nihil fugit sequi quia autem eum. Sed iste accusantium error voluptatem ut. Error voluptatem at praesentium ut repellendus magnam impedit. Aut sint ut voluptas sit accusantium omnis qui et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(2,'Fashion',0,'Enim in quas sed iusto. Id qui aut et temporibus iure hic rerum. Eum debitis et porro aspernatur pariatur non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(3,'Electronic',0,'Autem laboriosam adipisci maxime et voluptas. Quia sed qui iste magnam nemo sed. Quos asperiores natus voluptas iusto blanditiis consequatur. Et dolores ad in nihil et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(4,'Commercial',0,'Omnis officiis aut rerum. Ex et quos doloremque est molestias dolore. Aspernatur velit itaque non repellat ducimus voluptatibus et velit. Vero laborum provident cum eius voluptas quo non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-09-27 01:54:11','2022-09-27 01:54:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,'brands/1.png','published',0,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(2,'Hiching',NULL,NULL,'brands/2.png','published',1,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(3,'Kepslo',NULL,NULL,'brands/3.png','published',2,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(4,'Groneba',NULL,NULL,'brands/4.png','published',3,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(5,'Babian',NULL,NULL,'brands/5.png','published',4,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(6,'Valorant',NULL,NULL,'brands/6.png','published',5,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(7,'Pure',NULL,NULL,'brands/7.png','published',6,1,'2022-09-27 01:53:54','2022-09-27 01:53:54');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(2,'EUR','€',0,2,1,0,0.84,'2022-09-27 01:53:54','2022-09-27 01:53:54'),(3,'VND','₫',0,0,2,0,23203,'2022-09-27 01:53:54','2022-09-27 01:53:54');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Olin Hodkiewicz III','john.smith@botble.com','+14708866498','IQ','Kansas','Garrisonhaven','177 Nelda Ports',1,1,'2022-09-27 01:54:05','2022-09-27 01:54:05','27120-8481'),(2,'Prof. Olin Hodkiewicz III','john.smith@botble.com','+18605153220','MY','Oklahoma','Graycefort','77623 Lionel Spur',1,0,'2022-09-27 01:54:05','2022-09-27 01:54:05','95435'),(3,'Cade Grady','customer@botble.com','+18502056250','TG','New York','South Betsyfort','5046 Titus Centers',2,1,'2022-09-27 01:54:05','2022-09-27 01:54:05','04975'),(4,'Cade Grady','customer@botble.com','+17087360654','PA','Alabama','East Carmelberg','513 Freida Viaduct Suite 276',2,0,'2022-09-27 01:54:05','2022-09-27 01:54:05','98533'),(5,'Ms. Stephany Williamson','astrid76@example.net','+16785300508','MS','Idaho','Jaclynbury','66893 Vesta Road Suite 543',3,1,'2022-09-27 01:54:05','2022-09-27 01:54:05','69819'),(6,'Jamarcus Douglas','alta.volkman@example.net','+17603345323','MK','Colorado','South Orland','10677 Bessie Fields Suite 475',4,1,'2022-09-27 01:54:05','2022-09-27 01:54:05','86669'),(7,'Miss Lillian Von I','bart37@example.net','+19293764260','MZ','New Jersey','New Zionland','32684 Lewis Corners',5,1,'2022-09-27 01:54:05','2022-09-27 01:54:05','86149'),(8,'Vivienne Hahn','kailyn90@example.org','+16106322889','CV','Mississippi','Considinemouth','65299 Torphy Harbor Suite 283',6,1,'2022-09-27 01:54:05','2022-09-27 01:54:05','69163'),(9,'Camille Dietrich','marcus23@example.com','+14302755445','BQ','California','West Arnulfo','654 Fay Knolls',7,1,'2022-09-27 01:54:06','2022-09-27 01:54:06','87533'),(10,'Arnold Kunze','mckenzie.adan@example.com','+13522262369','PH','Rhode Island','West Bryanahaven','57932 Kerluke Landing',8,1,'2022-09-27 01:54:06','2022-09-27 01:54:06','81980'),(11,'Shayne Wyman','aidan.stanton@example.org','+17195096412','VG','Hawaii','Kozeybury','770 Zieme Burgs Apt. 248',9,1,'2022-09-27 01:54:06','2022-09-27 01:54:06','54261-8714'),(12,'Oleta Schaden','esmith@example.net','+15413394498','KY','West Virginia','Port Robertaborough','225 Lynch Road',10,1,'2022-09-27 01:54:06','2022-09-27 01:54:06','58524-4324');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Olin Hodkiewicz III','john.smith@botble.com','$2y$10$tuAxFDxdwAEShfm4EWaYUevVsIzGbyiaAeHKlP1JyLZkt9rWetHLa','customers/6.jpg','1972-09-17','+12483255586',NULL,'2022-09-27 01:54:05','2022-09-27 01:54:05','2022-09-27 08:54:05',NULL,'activated'),(2,'Cade Grady','customer@botble.com','$2y$10$oJ7.nbUJCBT6.Q/lRkh9q.7OzV7gHVFdtXCt7TByzGUQJBSNonfay','customers/1.jpg','2001-09-06','+19893774569',NULL,'2022-09-27 01:54:05','2022-09-27 01:54:05','2022-09-27 08:54:05',NULL,'activated'),(3,'Ms. Stephany Williamson','astrid76@example.net','$2y$10$Te8qNYf5NnUt3WctuSx9/e/VsL2szVdYuuRGNHdaw0J95sM.3Mroe','customers/1.jpg','1981-09-22','+14137581662',NULL,'2022-09-27 01:54:05','2022-09-27 01:54:05','2022-09-27 08:54:05',NULL,'activated'),(4,'Jamarcus Douglas','alta.volkman@example.net','$2y$10$3g/jrMVI1NJtRrkSGdcULe.2ozQ3Vq/SjXGb.MrT8gVjjR.bB2yAO','customers/2.jpg','1974-09-10','+16232196317',NULL,'2022-09-27 01:54:05','2022-09-27 01:54:05','2022-09-27 08:54:05',NULL,'activated'),(5,'Miss Lillian Von I','bart37@example.net','$2y$10$DmH8kcHkcuXxaGzhrN7XNOqb3klGTy/A6Yp5Tby.NU2Lnuz/MR45.','customers/3.jpg','1997-09-25','+12729098603',NULL,'2022-09-27 01:54:05','2022-09-27 01:54:05','2022-09-27 08:54:05',NULL,'activated'),(6,'Vivienne Hahn','kailyn90@example.org','$2y$10$vyDYLQEHc6K7bRuTy6PwTuCQ6Z7/54DTtshmjoJkLPZu.hCZ1zITm','customers/4.jpg','1998-09-16','+12098479040',NULL,'2022-09-27 01:54:05','2022-09-27 01:54:05','2022-09-27 08:54:05',NULL,'activated'),(7,'Camille Dietrich','marcus23@example.com','$2y$10$BIxHSmUHL0MV.zvRyEKll.KzGwDbh6o7fDNX5zHsq56VPrs175dyu','customers/5.jpg','1973-09-21','+14027683184',NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','2022-09-27 08:54:06',NULL,'activated'),(8,'Arnold Kunze','mckenzie.adan@example.com','$2y$10$n5ywDj1oHv39SzbMi4TQ9.dE53rcS20J5/3riRqMZIxUK1NQTVpHq','customers/6.jpg','2001-09-23','+12082919404',NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','2022-09-27 08:54:06',NULL,'activated'),(9,'Shayne Wyman','aidan.stanton@example.org','$2y$10$vf9kqNogyjJokLUoyvqLhuWjWYxfeB.qHFW9RFgzQ96co0spA6eZK','customers/7.jpg','1979-09-12','+18139381778',NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','2022-09-27 08:54:06',NULL,'activated'),(10,'Oleta Schaden','esmith@example.net','$2y$10$Q8YOvrnK2Nig9m6SZsBHxuHCFX75KN4zcXps/2sobif.Cm4IdLB6u','customers/8.jpg','1994-09-07','+18487378534',NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','2022-09-27 08:54:06',NULL,'activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,5,26.24,12,3),(2,1,120.25,10,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2022-10-25 00:00:00','published','2022-09-27 01:54:06','2022-09-27 01:54:06'),(2,'Gadgets & Accessories','2022-11-08 00:00:00','published','2022-09-27 01:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi trong ngày.'),('vi',2,'Tiện ích & Phụ kiện');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Camille Dietrich','+14302755445','marcus23@example.com','BQ','California','West Arnulfo','654 Fay Knolls',1,'87533','shipping_address'),(2,'Ms. Stephany Williamson','+16785300508','astrid76@example.net','MS','Idaho','Jaclynbury','66893 Vesta Road Suite 543',2,'69819','shipping_address'),(3,'Vivienne Hahn','+16106322889','kailyn90@example.org','CV','Mississippi','Considinemouth','65299 Torphy Harbor Suite 283',3,'69163','shipping_address'),(4,'Arnold Kunze','+13522262369','mckenzie.adan@example.com','PH','Rhode Island','West Bryanahaven','57932 Kerluke Landing',4,'81980','shipping_address'),(5,'Oleta Schaden','+15413394498','esmith@example.net','KY','West Virginia','Port Robertaborough','225 Lynch Road',5,'58524-4324','shipping_address'),(6,'Jamarcus Douglas','+17603345323','alta.volkman@example.net','MK','Colorado','South Orland','10677 Bessie Fields Suite 475',6,'86669','shipping_address'),(7,'Oleta Schaden','+15413394498','esmith@example.net','KY','West Virginia','Port Robertaborough','225 Lynch Road',7,'58524-4324','shipping_address'),(8,'Jamarcus Douglas','+17603345323','alta.volkman@example.net','MK','Colorado','South Orland','10677 Bessie Fields Suite 475',8,'86669','shipping_address'),(9,'Miss Lillian Von I','+19293764260','bart37@example.net','MZ','New Jersey','New Zionland','32684 Lewis Corners',9,'86149','shipping_address'),(10,'Jamarcus Douglas','+17603345323','alta.volkman@example.net','MK','Colorado','South Orland','10677 Bessie Fields Suite 475',10,'86669','shipping_address'),(11,'Shayne Wyman','+17195096412','aidan.stanton@example.org','VG','Hawaii','Kozeybury','770 Zieme Burgs Apt. 248',11,'54261-8714','shipping_address'),(12,'Prof. Olin Hodkiewicz III','+14708866498','john.smith@botble.com','IQ','Kansas','Garrisonhaven','177 Nelda Ports',12,'27120-8481','shipping_address'),(13,'Prof. Olin Hodkiewicz III','+14708866498','john.smith@botble.com','IQ','Kansas','Garrisonhaven','177 Nelda Ports',13,'27120-8481','shipping_address'),(14,'Cade Grady','+18502056250','customer@botble.com','TG','New York','South Betsyfort','5046 Titus Centers',14,'04975','shipping_address'),(15,'Ms. Stephany Williamson','+16785300508','astrid76@example.net','MS','Idaho','Jaclynbury','66893 Vesta Road Suite 543',15,'69819','shipping_address'),(16,'Miss Lillian Von I','+19293764260','bart37@example.net','MZ','New Jersey','New Zionland','32684 Lewis Corners',16,'86149','shipping_address'),(17,'Prof. Olin Hodkiewicz III','+14708866498','john.smith@botble.com','IQ','Kansas','Garrisonhaven','177 Nelda Ports',17,'27120-8481','shipping_address'),(18,'Jamarcus Douglas','+17603345323','alta.volkman@example.net','MK','Colorado','South Orland','10677 Bessie Fields Suite 475',18,'86669','shipping_address'),(19,'Prof. Olin Hodkiewicz III','+14708866498','john.smith@botble.com','IQ','Kansas','Garrisonhaven','177 Nelda Ports',19,'27120-8481','shipping_address'),(20,'Vivienne Hahn','+16106322889','kailyn90@example.org','CV','Mississippi','Considinemouth','65299 Torphy Harbor Suite 283',20,'69163','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-09-22 01:54:06','2022-09-22 01:54:06'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-09-22 01:54:06','2022-09-22 01:54:06'),(3,'confirm_payment','Payment was confirmed (amount $882.80) by %user_name%',0,1,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-09-15 23:54:06','2022-09-15 23:54:06'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-09-15 23:54:06','2022-09-15 23:54:06'),(7,'confirm_payment','Payment was confirmed (amount $656.70) by %user_name%',0,2,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-09-13 13:54:06','2022-09-13 13:54:06'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-09-13 13:54:06','2022-09-13 13:54:06'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-09-12 21:54:06','2022-09-12 21:54:06'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-09-12 21:54:06','2022-09-12 21:54:06'),(15,'create_shipment','Created shipment for order',0,4,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(16,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-09-16 09:54:06','2022-09-16 09:54:06'),(17,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-09-16 09:54:06','2022-09-16 09:54:06'),(18,'confirm_payment','Payment was confirmed (amount $1,458.90) by %user_name%',0,5,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(19,'create_shipment','Created shipment for order',0,5,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-09-14 13:54:06','2022-09-14 13:54:06'),(21,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-09-14 13:54:06','2022-09-14 13:54:06'),(22,'confirm_payment','Payment was confirmed (amount $755.10) by %user_name%',0,6,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(23,'create_shipment','Created shipment for order',0,6,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-09-22 09:54:06','2022-09-22 09:54:06'),(25,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-09-22 09:54:06','2022-09-22 09:54:06'),(26,'confirm_payment','Payment was confirmed (amount $761.20) by %user_name%',0,7,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(27,'create_shipment','Created shipment for order',0,7,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-09-25 23:54:06','2022-09-25 23:54:06'),(29,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-09-25 23:54:06','2022-09-25 23:54:06'),(30,'confirm_payment','Payment was confirmed (amount $1,884.80) by %user_name%',0,8,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(31,'create_shipment','Created shipment for order',0,8,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-09-24 01:54:06','2022-09-24 01:54:06'),(34,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-09-24 01:54:06','2022-09-24 01:54:06'),(35,'confirm_payment','Payment was confirmed (amount $492.20) by %user_name%',0,9,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(36,'create_shipment','Created shipment for order',0,9,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-09-20 15:54:06','2022-09-20 15:54:06'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-09-20 15:54:06','2022-09-20 15:54:06'),(40,'confirm_payment','Payment was confirmed (amount $740.90) by %user_name%',0,10,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(41,'create_shipment','Created shipment for order',0,10,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-09-19 13:54:06','2022-09-19 13:54:06'),(43,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-09-19 13:54:06','2022-09-19 13:54:06'),(44,'confirm_payment','Payment was confirmed (amount $1,533.10) by %user_name%',0,11,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(46,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-09-25 13:54:06','2022-09-25 13:54:06'),(47,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-09-25 13:54:06','2022-09-25 13:54:06'),(48,'confirm_payment','Payment was confirmed (amount $1,436.00) by %user_name%',0,12,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(49,'create_shipment','Created shipment for order',0,12,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-09-20 09:54:06','2022-09-20 09:54:06'),(52,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-09-20 09:54:06','2022-09-20 09:54:06'),(53,'confirm_payment','Payment was confirmed (amount $2,028.10) by %user_name%',0,13,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-09-26 11:54:06','2022-09-26 11:54:06'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-09-26 11:54:06','2022-09-26 11:54:06'),(58,'confirm_payment','Payment was confirmed (amount $1,317.10) by %user_name%',0,14,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(59,'create_shipment','Created shipment for order',0,14,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-09-24 01:54:06','2022-09-24 01:54:06'),(61,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-09-24 01:54:06','2022-09-24 01:54:06'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-09-26 05:54:06','2022-09-26 05:54:06'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-09-26 05:54:06','2022-09-26 05:54:06'),(65,'confirm_payment','Payment was confirmed (amount $1,870.60) by %user_name%',0,16,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-09-26 17:54:06','2022-09-26 17:54:06'),(68,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-09-26 17:54:06','2022-09-26 17:54:06'),(69,'confirm_payment','Payment was confirmed (amount $588.00) by %user_name%',0,17,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-09-26 01:54:06','2022-09-26 01:54:06'),(72,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-09-26 01:54:06','2022-09-26 01:54:06'),(73,'create_shipment','Created shipment for order',0,18,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-09-26 09:54:06','2022-09-26 09:54:06'),(75,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-09-26 09:54:06','2022-09-26 09:54:06'),(76,'confirm_payment','Payment was confirmed (amount $1,522.50) by %user_name%',0,19,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(77,'create_shipment','Created shipment for order',0,19,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-09-26 07:54:06','2022-09-26 07:54:06'),(80,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-09-26 07:54:06','2022-09-26 07:54:06'),(81,'confirm_payment','Payment was confirmed (amount $862.70) by %user_name%',0,20,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(82,'create_shipment','Created shipment for order',0,20,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(84,'update_status','Order confirmed by %user_name%',0,8,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(85,'update_status','Order confirmed by %user_name%',0,9,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(86,'update_status','Order confirmed by %user_name%',0,12,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(87,'update_status','Order confirmed by %user_name%',0,13,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(88,'update_status','Order confirmed by %user_name%',0,19,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(89,'update_status','Order confirmed by %user_name%',0,20,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,81.00,8.10,'[]',32,'Chikie - Bluetooth Speaker',2157.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(2,1,2,129.00,12.90,'[]',45,'Macbook Pro 2015',1152.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(3,1,1,118.00,11.80,'[]',55,'Apple Keyboard',698.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(4,1,2,110.00,11.00,'[]',62,'Black Smart Watches',1658.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(5,2,1,129.00,12.90,'[]',47,'Macbook Pro 2015',576.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(6,2,2,121.00,12.10,'[]',53,'Macbook Pro 13 inch',1280.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(7,2,1,116.00,11.60,'[]',75,'Phillips Mouse',756.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(8,2,1,121.00,12.10,'[]',77,'Gaming Keyboard',606.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(9,3,2,81.00,8.10,'[]',33,'Chikie - Bluetooth Speaker',1438.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(10,3,1,110.00,11.00,'[]',64,'Black Smart Watches',829.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(11,3,1,110.00,11.00,'[]',65,'Black Smart Watches',829.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(12,4,1,41.00,4.10,'[]',34,'Camera Hikvision HK-35VS8',517.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(13,4,2,116.00,11.60,'[]',39,'Leather Watch Band',1446.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(14,4,2,119.00,11.90,'[]',66,'Leather Watch Band Serial 3',1070.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(15,5,3,376.00,37.60,'[]',29,'Headphone Ultra Bass',1941.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(16,5,2,81.00,8.10,'[]',33,'Chikie - Bluetooth Speaker',1438.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(17,5,1,112.00,11.20,'[]',59,'Hand playstation',829.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(18,6,2,116.00,11.60,'[]',41,'Leather Watch Band',1446.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(19,6,1,121.00,12.10,'[]',53,'Macbook Pro 13 inch',640.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(20,6,1,113.00,11.30,'[]',60,'Apple Airpods Serial 3',537.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(21,6,2,121.00,12.10,'[]',77,'Gaming Keyboard',1212.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(22,7,3,41.00,4.10,'[]',34,'Camera Hikvision HK-35VS8',1551.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(23,7,1,129.00,12.90,'[]',45,'Macbook Pro 2015',576.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(24,7,1,129.00,12.90,'[]',46,'Macbook Pro 2015',576.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(25,7,3,113.00,11.30,'[]',60,'Apple Airpods Serial 3',1611.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(26,8,3,376.00,37.60,'[]',28,'Headphone Ultra Bass',1941.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(27,8,3,116.00,11.60,'[]',41,'Leather Watch Band',2169.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(28,8,3,116.00,11.60,'[]',74,'Phillips Mouse',2268.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(29,9,1,116.00,11.60,'[]',42,'Leather Watch Band',723.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(30,9,1,110.00,11.00,'[]',63,'Black Smart Watches',829.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(31,9,2,116.00,11.60,'[]',72,'Historic Alarm Clock',1300.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(32,10,3,123.00,12.30,'[]',58,'MacSafe 80W',2208.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(33,10,3,116.00,11.60,'[]',74,'Phillips Mouse',2268.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(34,11,2,392.00,39.20,'[]',48,'Macbook Air 12 inch',1376.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(35,11,3,113.00,11.30,'[]',60,'Apple Airpods Serial 3',1611.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(36,11,3,116.00,11.60,'[]',76,'Phillips Mouse',2268.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(37,12,2,471.00,47.10,'[]',30,'Boxed - Bluetooth Headphone',1022.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(38,12,2,41.00,4.10,'[]',36,'Camera Hikvision HK-35VS8',1034.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(39,12,1,118.00,11.80,'[]',55,'Apple Keyboard',698.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(40,12,2,110.00,11.00,'[]',64,'Black Smart Watches',1658.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(41,13,3,325.00,32.50,'[]',26,'Smart Home Speaker',2307.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(42,13,2,376.00,37.60,'[]',29,'Headphone Ultra Bass',1294.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(43,13,1,81.00,8.10,'[]',32,'Chikie - Bluetooth Speaker',719.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(44,13,1,129.00,12.90,'[]',46,'Macbook Pro 2015',576.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(45,14,1,325.00,32.50,'[]',25,'Smart Home Speaker',769.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(46,14,3,116.00,11.60,'[]',39,'Leather Watch Band',2169.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(47,14,2,113.00,11.30,'[]',60,'Apple Airpods Serial 3',1074.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(48,14,3,117.00,11.70,'[]',61,'Cool Smart Watches',1974.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(49,15,1,41.00,4.10,'[]',37,'Camera Hikvision HK-35VS8',517.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(50,15,2,116.00,11.60,'[]',42,'Leather Watch Band',1446.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(51,15,2,129.00,12.90,'[]',47,'Macbook Pro 2015',1152.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(52,15,3,116.00,11.60,'[]',72,'Historic Alarm Clock',1950.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(53,16,2,325.00,32.50,'[]',25,'Smart Home Speaker',1538.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(54,16,2,376.00,37.60,'[]',28,'Headphone Ultra Bass',1294.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(55,16,2,129.00,12.90,'[]',45,'Macbook Pro 2015',1152.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(56,16,1,116.00,11.60,'[]',75,'Phillips Mouse',756.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(57,17,2,41.00,4.10,'[]',36,'Camera Hikvision HK-35VS8',1034.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(58,17,2,129.00,12.90,'[]',45,'Macbook Pro 2015',1152.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(59,17,2,110.00,11.00,'[]',65,'Black Smart Watches',1658.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(60,18,1,325.00,32.50,'[]',27,'Smart Home Speaker',769.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(61,18,3,41.00,4.10,'[]',34,'Camera Hikvision HK-35VS8',1551.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(62,19,2,376.00,37.60,'[]',28,'Headphone Ultra Bass',1294.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(63,19,2,117.00,11.70,'[]',61,'Cool Smart Watches',1316.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(64,19,1,116.00,11.60,'[]',74,'Phillips Mouse',756.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(65,19,3,116.00,11.60,'[]',75,'Phillips Mouse',2268.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(66,20,1,81.00,8.10,'[]',33,'Chikie - Bluetooth Speaker',719.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(67,20,1,41.00,4.10,'[]',36,'Camera Hikvision HK-35VS8',517.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(68,20,3,118.00,11.80,'[]',51,'Apple Watch Serial 7',2136.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0),(69,20,3,117.00,11.70,'[]',61,'Cool Smart Watches',1974.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,7,'1','default','pending',882.80,43.80,0.00,NULL,NULL,0.00,839.00,1,NULL,1,NULL,'lHJtc5NSt33WbzCKhHkpowb9T2upu',1,'2022-09-22 01:54:06','2022-09-27 01:54:06'),(2,3,'1','default','pending',656.70,48.70,0.00,NULL,NULL,0.00,608.00,1,NULL,1,NULL,'hbVyN1Fg3yb0918DygRmBkvXPqanP',2,'2022-09-15 23:54:06','2022-09-27 01:54:06'),(3,6,'1','default','completed',412.10,30.10,0.00,NULL,NULL,0.00,382.00,1,NULL,1,'2022-09-27 01:54:06','ivsEHGWhoxgJWW7t9gHYx5M0aVlGW',3,'2022-09-13 13:54:06','2022-09-27 01:54:06'),(4,8,'1','default','pending',538.60,27.60,0.00,NULL,NULL,0.00,511.00,1,NULL,1,NULL,'bb35HNxByDcO0NyCU8AdSnufLfWtG',4,'2022-09-12 21:54:06','2022-09-27 01:54:06'),(5,10,'1','default','pending',1458.90,56.90,0.00,NULL,NULL,0.00,1402.00,1,NULL,1,NULL,'YFpY56iQlLZ5YwpxVZWzkHGxuKE4H',5,'2022-09-16 09:54:06','2022-09-27 01:54:06'),(6,4,'1','default','pending',755.10,47.10,0.00,NULL,NULL,0.00,708.00,1,NULL,1,NULL,'ZUsPRvkDlWAXOaekp9RemJOwXZBRP',6,'2022-09-14 13:54:06','2022-09-27 01:54:06'),(7,10,'1','default','pending',761.20,41.20,0.00,NULL,NULL,0.00,720.00,1,NULL,1,NULL,'gT1v9cbrY5iB5XAdHsFfiumg3PXop',7,'2022-09-22 09:54:06','2022-09-27 01:54:06'),(8,4,'1','default','completed',1884.80,60.80,0.00,NULL,NULL,0.00,1824.00,1,NULL,1,'2022-09-27 01:54:06','WXpn4uep0VyRfFpw8V6LY7roqi0lF',8,'2022-09-25 23:54:06','2022-09-27 01:54:06'),(9,5,'1','default','completed',492.20,34.20,0.00,NULL,NULL,0.00,458.00,1,NULL,1,'2022-09-27 01:54:06','VP8CCKVACQwcXevm6olS0xmgctfSM',9,'2022-09-24 01:54:06','2022-09-27 01:54:06'),(10,4,'1','default','pending',740.90,23.90,0.00,NULL,NULL,0.00,717.00,1,NULL,1,NULL,'2W0tRYRIajVQeA9w8WURJgmVR3hJv',10,'2022-09-20 15:54:06','2022-09-27 01:54:06'),(11,9,'1','default','pending',1533.10,62.10,0.00,NULL,NULL,0.00,1471.00,1,NULL,1,NULL,'Sa547whdmRAiORepbs6KtMefmcExY',11,'2022-09-19 13:54:06','2022-09-27 01:54:06'),(12,1,'1','default','completed',1436.00,74.00,0.00,NULL,NULL,0.00,1362.00,1,NULL,1,'2022-09-27 01:54:06','IG0F0DiXMoAZR7a7Jtdr4LzT7Nk3p',12,'2022-09-25 13:54:06','2022-09-27 01:54:06'),(13,1,'1','default','completed',2028.10,91.10,0.00,NULL,NULL,0.00,1937.00,1,NULL,1,'2022-09-27 01:54:06','T76iMlwOLLyEN7Te3XiJc1TWoRfcr',13,'2022-09-20 09:54:06','2022-09-27 01:54:06'),(14,2,'1','default','pending',1317.10,67.10,0.00,NULL,NULL,0.00,1250.00,1,NULL,1,NULL,'VeqDz3S9NwDhQb64ao1x8aNauTFXq',14,'2022-09-26 11:54:06','2022-09-27 01:54:06'),(15,3,'1','default','pending',919.20,40.20,0.00,NULL,NULL,0.00,879.00,1,NULL,1,NULL,'seqbJYooAvy8C0fHNUSFkOlwbh6zc',15,'2022-09-24 01:54:06','2022-09-27 01:54:06'),(16,5,'1','default','pending',1870.60,94.60,0.00,NULL,NULL,0.00,1776.00,1,NULL,1,NULL,'2aMmk9wAOrrCHQ8zT6m7ICOUJ6vRO',16,'2022-09-26 05:54:06','2022-09-27 01:54:06'),(17,1,'1','default','pending',588.00,28.00,0.00,NULL,NULL,0.00,560.00,1,NULL,1,NULL,'YaDDN0kcRVgqJFqeCyc8b4eXJJopA',17,'2022-09-26 17:54:06','2022-09-27 01:54:06'),(18,4,'1','default','pending',484.60,36.60,0.00,NULL,NULL,0.00,448.00,1,NULL,1,NULL,'d2yBGKLxJAtyKE9BlivckUD4CpLT4',18,'2022-09-26 01:54:06','2022-09-27 01:54:06'),(19,1,'1','default','completed',1522.50,72.50,0.00,NULL,NULL,0.00,1450.00,1,NULL,1,'2022-09-27 01:54:06','R2iW6rPeVHawQg3qiI6yzaN2ZqEcZ',19,'2022-09-26 09:54:06','2022-09-27 01:54:06'),(20,6,'1','default','completed',862.70,35.70,0.00,NULL,NULL,0.00,827.00,1,NULL,1,'2022-09-27 01:54:06','RXj4erl9lVNKfSFqLhtB9f52DeE5a',20,'2022-09-26 07:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-09-27 01:53:55','2022-09-27 01:53:55',0),(2,'Size','size','text',1,1,1,'published',1,'2022-09-27 01:53:55','2022-09-27 01:53:55',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-09-27 01:53:55','2022-09-27 01:53:55');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(3,'Home Audio & Theaters',2,NULL,'published',0,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(4,'TV & Videos',2,NULL,'published',1,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(5,'Camera, Photos & Videos',2,NULL,'published',2,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(6,'Cellphones & Accessories',2,NULL,'published',3,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(7,'Headphones',2,NULL,'published',4,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(8,'Videos games',2,NULL,'published',5,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(9,'Wireless Speakers',2,NULL,'published',6,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(10,'Office Electronic',2,NULL,'published',7,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(11,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(12,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(13,'Computer & Tablets',12,NULL,'published',0,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(14,'Laptop',12,NULL,'published',1,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(15,'Monitors',12,NULL,'published',2,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(16,'Computer Components',12,NULL,'published',3,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(17,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(18,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(19,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(20,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(21,'Drive & Storages',20,NULL,'published',0,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(22,'Gaming Laptop',20,NULL,'published',1,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(23,'Security & Protection',20,NULL,'published',2,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(24,'Accessories',20,NULL,'published',3,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(25,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(26,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(27,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(28,'Books & Office',0,NULL,'published',11,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(29,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55'),(30,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-09-27 01:53:55','2022-09-27 01:53:55');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi nổi bật',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Âm thanh và hình ảnh',NULL),('vi',4,'TV & Videos',NULL),('vi',5,'Máy ảnh, Ảnh & Videos',NULL),('vi',6,'Điện thoại & Phụ kiện',NULL),('vi',7,'Tai nghe',NULL),('vi',8,'Trò chơi',NULL),('vi',9,'Tai nghe không dây',NULL),('vi',10,'Điện tử văn phòng',NULL),('vi',11,'Quần áo',NULL),('vi',12,'Máy tính',NULL),('vi',13,'Máy tính và máy tính bảng',NULL),('vi',14,'Máy vi tính',NULL),('vi',15,'Màn hình',NULL),('vi',16,'Thiết bị máy tính',NULL),('vi',17,'Đồ dùng nhà bếp',NULL),('vi',18,'Sức khỏe & làm đẹp',NULL),('vi',19,'Đồng hồ & trang sức',NULL),('vi',20,'Đồ chơi công nghệ',NULL),('vi',21,'Thiết bị lưu trữ',NULL),('vi',22,'Máy tính chơi game',NULL),('vi',23,'Bảo mật',NULL),('vi',24,'Phụ kiện',NULL),('vi',25,'Điện thoại',NULL),('vi',26,'Mẹ và bé',NULL),('vi',27,'Thể thao & ngoài trời',NULL),('vi',28,'Sách & Văn phòng',NULL),('vi',29,'Ôto & Xe máy',NULL),('vi',30,'Thiết bị gia đình',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,4,1),(2,22,2),(3,8,3),(4,28,4),(5,18,5),(6,33,6),(7,23,7),(8,2,8),(9,31,9),(10,2,10),(11,31,11),(12,16,12),(13,34,13),(14,7,14),(15,35,15),(16,21,16),(17,6,17),(18,20,18),(19,25,19),(20,6,20),(21,3,21),(22,35,22),(23,27,23),(24,15,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,1,2),(3,3,3),(4,3,4),(5,1,5),(6,3,6),(7,2,7),(8,3,8),(9,3,9),(10,1,10),(11,3,11),(12,3,12),(13,2,13),(14,1,14),(15,1,15),(16,2,16),(17,2,17),(18,2,18),(19,1,19),(20,3,20),(21,2,21),(22,2,22),(23,3,23),(24,3,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,23),(2,1,15),(3,1,12),(4,1,20),(5,2,5),(6,2,17),(7,2,10),(8,3,8),(9,3,21),(10,3,17),(11,3,9),(12,4,22),(13,4,1),(14,4,16),(15,4,2),(16,5,8),(17,5,9),(18,5,23),(19,5,11),(20,6,17),(21,6,9),(22,6,11),(23,6,19),(24,7,11),(25,7,10),(26,7,9),(27,7,2),(28,8,1),(29,8,2),(30,8,7),(31,8,14),(32,9,21),(33,9,16),(34,9,1),(35,9,18),(36,10,13),(37,10,11),(38,10,18),(39,10,3),(40,11,21),(41,11,4),(42,11,5),(43,12,9),(44,12,4),(45,12,21),(46,13,10),(47,13,18),(48,13,2),(49,14,5),(50,14,1),(51,14,20),(52,14,18),(53,15,17),(54,15,7),(55,15,9),(56,16,12),(57,16,19),(58,16,5),(59,16,9),(60,17,11),(61,17,23),(62,17,19),(63,18,3),(64,18,8),(65,18,13),(66,18,21),(67,19,9),(68,19,4),(69,19,15),(70,20,6),(71,20,23),(72,20,16),(73,21,8),(74,21,10),(75,21,17),(76,21,19),(77,22,11),(78,22,15),(79,22,20),(80,22,18),(81,23,21),(82,23,1),(83,23,18),(84,23,20),(85,24,17),(86,24,5),(87,24,23);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,7),(2,21),(3,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(2,'New','#00c9a7','published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(3,'Sale','#fe9931','published','2022-09-27 01:53:55','2022-09-27 01:53:55');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,6),(2,2),(2,5),(3,3),(3,4),(4,3),(4,4),(4,6),(5,1),(5,4),(5,5),(6,2),(6,3),(7,2),(7,3),(7,5),(8,2),(8,3),(8,5),(9,4),(9,5),(9,6),(10,4),(10,5),(10,6),(11,2),(11,5),(11,6),(12,1),(12,3),(12,4),(13,2),(13,3),(14,3),(14,6),(15,6),(16,1),(16,3),(16,4),(17,1),(17,2),(17,3),(18,5),(18,6),(19,3),(19,5),(20,1),(20,6),(21,1),(21,5),(22,3),(22,5),(22,6),(23,1),(23,5),(24,1),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(2,'Bags',NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(3,'Shoes',NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(4,'Clothes',NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55'),(5,'Hand bag',NULL,'published','2022-09-27 01:53:55','2022-09-27 01:53:55');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(9,1,5),(19,1,10),(31,1,16),(37,1,19),(43,1,22),(49,1,25),(53,1,27),(65,1,33),(87,1,44),(95,1,48),(103,1,52),(105,1,53),(7,2,4),(11,2,6),(39,2,20),(59,2,30),(69,2,35),(83,2,42),(85,2,43),(89,2,45),(15,3,8),(27,3,14),(45,3,23),(55,3,28),(61,3,31),(67,3,34),(75,3,38),(97,3,49),(17,4,9),(23,4,12),(47,4,24),(57,4,29),(71,4,36),(73,4,37),(77,4,39),(81,4,41),(101,4,51),(3,5,2),(5,5,3),(13,5,7),(21,5,11),(25,5,13),(29,5,15),(33,5,17),(35,5,18),(41,5,21),(51,5,26),(63,5,32),(79,5,40),(91,5,46),(93,5,47),(99,5,50),(2,6,1),(24,6,12),(60,6,30),(62,6,31),(66,6,33),(68,6,34),(84,6,42),(88,6,44),(94,6,47),(96,6,48),(4,7,2),(6,7,3),(8,7,4),(16,7,8),(22,7,11),(30,7,15),(34,7,17),(38,7,19),(46,7,23),(70,7,35),(72,7,36),(76,7,38),(92,7,46),(10,8,5),(12,8,6),(14,8,7),(18,8,9),(32,8,16),(36,8,18),(42,8,21),(44,8,22),(52,8,26),(54,8,27),(58,8,29),(90,8,45),(104,8,52),(20,9,10),(26,9,13),(56,9,28),(64,9,32),(78,9,39),(82,9,41),(86,9,43),(100,9,50),(102,9,51),(106,9,53),(28,10,14),(40,10,20),(48,10,24),(50,10,25),(74,10,37),(80,10,40),(98,10,49);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,2,1),(5,29,2,0),(6,30,3,1),(7,31,3,0),(8,32,4,1),(9,33,4,0),(10,34,5,1),(11,35,5,0),(12,36,5,0),(13,37,5,0),(14,38,6,1),(15,39,7,1),(16,40,7,0),(17,41,7,0),(18,42,7,0),(19,43,7,0),(20,44,8,1),(21,45,9,1),(22,46,9,0),(23,47,9,0),(24,48,10,1),(25,49,10,0),(26,50,11,1),(27,51,11,0),(28,52,11,0),(29,53,12,1),(30,54,13,1),(31,55,13,0),(32,56,14,1),(33,57,14,0),(34,58,14,0),(35,59,15,1),(36,60,16,1),(37,61,17,1),(38,62,18,1),(39,63,18,0),(40,64,18,0),(41,65,18,0),(42,66,19,1),(43,67,19,0),(44,68,20,1),(45,69,20,0),(46,70,20,0),(47,71,21,1),(48,72,21,0),(49,73,22,1),(50,74,23,1),(51,75,23,0),(52,76,23,0),(53,77,24,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-181-A0',0,12,0,1,1,4,0,0,325,NULL,NULL,NULL,19.00,10.00,18.00,769.00,1,105977,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-186-A0',0,11,0,1,1,5,0,0,376,NULL,NULL,NULL,17.00,10.00,15.00,647.00,1,99839,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-190-A0',0,15,0,1,1,1,0,0,471,NULL,NULL,NULL,16.00,20.00,12.00,511.00,1,158402,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-121-A0',0,12,0,1,1,3,0,0,81,61.56,NULL,NULL,15.00,18.00,13.00,719.00,1,104520,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(5,'Camera Hikvision HK-35VS8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-109-A0',0,18,0,1,1,5,0,0,41,NULL,NULL,NULL,18.00,11.00,12.00,517.00,1,176994,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-165-A0',0,11,0,1,1,7,0,0,52,NULL,NULL,NULL,15.00,10.00,16.00,629.00,1,86607,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-185-A0',0,10,0,1,1,6,0,0,116,NULL,NULL,NULL,10.00,18.00,13.00,723.00,1,89354,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-109-A0',0,10,0,1,1,6,0,0,130,93.6,NULL,NULL,18.00,20.00,13.00,517.00,1,35989,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(9,'Macbook Pro 2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-115-A0',0,15,0,1,1,1,0,0,129,NULL,NULL,NULL,19.00,20.00,18.00,576.00,1,70597,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-141-A0',0,12,0,1,1,1,0,0,392,NULL,NULL,NULL,10.00,19.00,14.00,688.00,1,154268,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-162-A0',0,18,0,1,1,5,0,0,118,NULL,NULL,NULL,20.00,10.00,10.00,712.00,1,39575,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-199-A0',0,10,0,1,1,1,0,0,121,91.96,NULL,NULL,18.00,15.00,19.00,640.00,1,129262,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(13,'Apple Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-167-A0',0,10,0,1,1,1,0,0,118,NULL,NULL,NULL,20.00,20.00,17.00,698.00,1,78431,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-161-A0',0,20,0,1,1,3,0,0,123,NULL,NULL,NULL,18.00,20.00,19.00,736.00,1,51582,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-198-A0',0,14,0,1,1,6,0,0,112,NULL,NULL,NULL,10.00,10.00,16.00,829.00,1,99647,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','HS-113-A0',0,18,0,1,1,5,0,0,113,88.14,NULL,NULL,11.00,20.00,14.00,537.00,1,126772,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(17,'Cool Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\"]','HS-124-A0',0,16,0,1,1,1,0,0,117,NULL,NULL,NULL,20.00,15.00,13.00,658.00,1,103200,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-170-A0',0,17,0,1,1,5,0,0,110,NULL,NULL,NULL,11.00,10.00,13.00,829.00,1,125295,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-124-A0',0,15,0,1,1,1,0,0,119,NULL,NULL,NULL,11.00,17.00,17.00,535.00,1,128232,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-195-A0',0,14,0,1,1,3,0,0,112,94.08,NULL,NULL,11.00,19.00,18.00,523.00,1,197530,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(21,'Historic Alarm Clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-104-A0',0,15,0,1,1,2,0,0,116,NULL,NULL,NULL,10.00,19.00,12.00,650.00,1,55873,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-183-A0',0,13,0,1,1,7,0,0,124,NULL,NULL,NULL,10.00,10.00,10.00,856.00,1,110911,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-110-A0',0,17,0,1,1,3,0,0,116,NULL,NULL,NULL,19.00,18.00,11.00,756.00,1,183052,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-176-A0',0,17,0,1,1,5,0,0,121,96.8,NULL,NULL,18.00,16.00,13.00,606.00,1,197750,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(25,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-181-A0',0,12,0,1,0,4,1,0,325,NULL,NULL,NULL,19.00,10.00,18.00,769.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(26,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-181-A0-A1',0,12,0,1,0,4,1,0,325,NULL,NULL,NULL,19.00,10.00,18.00,769.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(27,'Smart Home Speaker',NULL,NULL,'published','[\"products\\/1-2.jpg\"]','HS-181-A0-A2',0,12,0,1,0,4,1,0,325,NULL,NULL,NULL,19.00,10.00,18.00,769.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(28,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-186-A0',0,11,0,1,0,5,1,0,376,NULL,NULL,NULL,17.00,10.00,15.00,647.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(29,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-186-A0-A1',0,11,0,1,0,5,1,0,376,NULL,NULL,NULL,17.00,10.00,15.00,647.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(30,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-190-A0',0,15,0,1,0,1,1,0,471,NULL,NULL,NULL,16.00,20.00,12.00,511.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(31,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-190-A0-A1',0,15,0,1,0,1,1,0,471,NULL,NULL,NULL,16.00,20.00,12.00,511.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(32,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-121-A0',0,12,0,1,0,3,1,0,81,61.56,NULL,NULL,15.00,18.00,13.00,719.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(33,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-121-A0-A1',0,12,0,1,0,3,1,0,81,58.32,NULL,NULL,15.00,18.00,13.00,719.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(34,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-109-A0',0,18,0,1,0,5,1,0,41,NULL,NULL,NULL,18.00,11.00,12.00,517.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(35,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-109-A0-A1',0,18,0,1,0,5,1,0,41,NULL,NULL,NULL,18.00,11.00,12.00,517.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(36,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','HS-109-A0-A2',0,18,0,1,0,5,1,0,41,NULL,NULL,NULL,18.00,11.00,12.00,517.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(37,'Camera Hikvision HK-35VS8',NULL,NULL,'published','[\"products\\/5-3.jpg\"]','HS-109-A0-A3',0,18,0,1,0,5,1,0,41,NULL,NULL,NULL,18.00,11.00,12.00,517.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(38,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-165-A0',0,11,0,1,0,7,1,0,52,NULL,NULL,NULL,15.00,10.00,16.00,629.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(39,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-185-A0',0,10,0,1,0,6,1,0,116,NULL,NULL,NULL,10.00,18.00,13.00,723.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(40,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-185-A0-A1',0,10,0,1,0,6,1,0,116,NULL,NULL,NULL,10.00,18.00,13.00,723.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(41,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-185-A0-A2',0,10,0,1,0,6,1,0,116,NULL,NULL,NULL,10.00,18.00,13.00,723.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(42,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-185-A0-A3',0,10,0,1,0,6,1,0,116,NULL,NULL,NULL,10.00,18.00,13.00,723.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(43,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-185-A0-A4',0,10,0,1,0,6,1,0,116,NULL,NULL,NULL,10.00,18.00,13.00,723.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(44,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-109-A0',0,10,0,1,0,6,1,0,130,93.6,NULL,NULL,18.00,20.00,13.00,517.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(45,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-115-A0',0,15,0,1,0,1,1,0,129,NULL,NULL,NULL,19.00,20.00,18.00,576.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(46,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-115-A0-A1',0,15,0,1,0,1,1,0,129,NULL,NULL,NULL,19.00,20.00,18.00,576.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(47,'Macbook Pro 2015',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-115-A0-A2',0,15,0,1,0,1,1,0,129,NULL,NULL,NULL,19.00,20.00,18.00,576.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(48,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-141-A0',0,12,0,1,0,1,1,0,392,NULL,NULL,NULL,10.00,19.00,14.00,688.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(49,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-141-A0-A1',0,12,0,1,0,1,1,0,392,NULL,NULL,NULL,10.00,19.00,14.00,688.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(50,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-162-A0',0,18,0,1,0,5,1,0,118,NULL,NULL,NULL,20.00,10.00,10.00,712.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(51,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-162-A0-A1',0,18,0,1,0,5,1,0,118,NULL,NULL,NULL,20.00,10.00,10.00,712.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(52,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-162-A0-A2',0,18,0,1,0,5,1,0,118,NULL,NULL,NULL,20.00,10.00,10.00,712.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(53,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-199-A0',0,10,0,1,0,1,1,0,121,91.96,NULL,NULL,18.00,15.00,19.00,640.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(54,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-167-A0',0,10,0,1,0,1,1,0,118,NULL,NULL,NULL,20.00,20.00,17.00,698.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(55,'Apple Keyboard',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-167-A0-A1',0,10,0,1,0,1,1,0,118,NULL,NULL,NULL,20.00,20.00,17.00,698.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(56,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-161-A0',0,20,0,1,0,3,1,0,123,NULL,NULL,NULL,18.00,20.00,19.00,736.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(57,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-161-A0-A1',0,20,0,1,0,3,1,0,123,NULL,NULL,NULL,18.00,20.00,19.00,736.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(58,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-161-A0-A2',0,20,0,1,0,3,1,0,123,NULL,NULL,NULL,18.00,20.00,19.00,736.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(59,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-198-A0',0,14,0,1,0,6,1,0,112,NULL,NULL,NULL,10.00,10.00,16.00,829.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(60,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-113-A0',0,18,0,1,0,5,1,0,113,88.14,NULL,NULL,11.00,20.00,14.00,537.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(61,'Cool Smart Watches',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-124-A0',0,16,0,1,0,1,1,0,117,NULL,NULL,NULL,20.00,15.00,13.00,658.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(62,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-170-A0',0,17,0,1,0,5,1,0,110,NULL,NULL,NULL,11.00,10.00,13.00,829.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(63,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-170-A0-A1',0,17,0,1,0,5,1,0,110,NULL,NULL,NULL,11.00,10.00,13.00,829.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(64,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','HS-170-A0-A2',0,17,0,1,0,5,1,0,110,NULL,NULL,NULL,11.00,10.00,13.00,829.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(65,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-170-A0-A3',0,17,0,1,0,5,1,0,110,NULL,NULL,NULL,11.00,10.00,13.00,829.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(66,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-124-A0',0,15,0,1,0,1,1,0,119,NULL,NULL,NULL,11.00,17.00,17.00,535.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(67,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-124-A0-A1',0,15,0,1,0,1,1,0,119,NULL,NULL,NULL,11.00,17.00,17.00,535.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(68,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-195-A0',0,14,0,1,0,3,1,0,112,94.08,NULL,NULL,11.00,19.00,18.00,523.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(69,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-195-A0-A1',0,14,0,1,0,3,1,0,112,78.4,NULL,NULL,11.00,19.00,18.00,523.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(70,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-195-A0-A2',0,14,0,1,0,3,1,0,112,94.08,NULL,NULL,11.00,19.00,18.00,523.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(71,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-104-A0',0,15,0,1,0,2,1,0,116,NULL,NULL,NULL,10.00,19.00,12.00,650.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(72,'Historic Alarm Clock',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-104-A0-A1',0,15,0,1,0,2,1,0,116,NULL,NULL,NULL,10.00,19.00,12.00,650.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(73,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-183-A0',0,13,0,1,0,7,1,0,124,NULL,NULL,NULL,10.00,10.00,10.00,856.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(74,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-110-A0',0,17,0,1,0,3,1,0,116,NULL,NULL,NULL,19.00,18.00,11.00,756.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(75,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-110-A0-A1',0,17,0,1,0,3,1,0,116,NULL,NULL,NULL,19.00,18.00,11.00,756.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(76,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-110-A0-A2',0,17,0,1,0,3,1,0,116,NULL,NULL,NULL,19.00,18.00,11.00,756.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(77,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-176-A0',0,17,0,1,0,5,1,0,121,96.8,NULL,NULL,18.00,16.00,13.00,606.00,NULL,0,'2022-09-27 01:54:04','2022-09-27 01:54:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical');
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Loa thông minh',NULL,NULL),('vi',2,'Tai nghe Ultra Bass',NULL,NULL),('vi',3,'Tai nghe Bluetooth',NULL,NULL),('vi',4,'Chikie - Loa Bluetooth',NULL,NULL),('vi',5,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',6,'Camera Samsung SS-24',NULL,NULL),('vi',7,'Dây đeo đồng hồ da',NULL,NULL),('vi',8,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',9,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',10,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',11,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',12,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',13,'Bàn phím Apple',NULL,NULL),('vi',14,'Cục sạc MacSafe 80W',NULL,NULL),('vi',15,'Tay cầm chơi game',NULL,NULL),('vi',16,'Apple Airpods Serial 3',NULL,NULL),('vi',17,'Cool Smart Watches',NULL,NULL),('vi',18,'Black Smart Watches',NULL,NULL),('vi',19,'Leather Watch Band Serial 3',NULL,NULL),('vi',20,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',21,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',22,'Kính đen cool ngầu',NULL,NULL),('vi',23,'Chuột máy tính Phillips',NULL,NULL),('vi',24,'Bàn phím chơi game',NULL,NULL),('vi',25,'Loa thông minh',NULL,NULL),('vi',26,'Loa thông minh',NULL,NULL),('vi',27,'Loa thông minh',NULL,NULL),('vi',28,'Tai nghe Ultra Bass',NULL,NULL),('vi',29,'Tai nghe Ultra Bass',NULL,NULL),('vi',30,'Tai nghe Bluetooth',NULL,NULL),('vi',31,'Tai nghe Bluetooth',NULL,NULL),('vi',32,'Chikie - Loa Bluetooth',NULL,NULL),('vi',33,'Chikie - Loa Bluetooth',NULL,NULL),('vi',34,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',35,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',36,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',37,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',38,'Camera Samsung SS-24',NULL,NULL),('vi',39,'Dây đeo đồng hồ da',NULL,NULL),('vi',40,'Dây đeo đồng hồ da',NULL,NULL),('vi',41,'Dây đeo đồng hồ da',NULL,NULL),('vi',42,'Dây đeo đồng hồ da',NULL,NULL),('vi',43,'Dây đeo đồng hồ da',NULL,NULL),('vi',44,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',45,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',46,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',47,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',48,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',49,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',50,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',51,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',52,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',53,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',54,'Bàn phím Apple',NULL,NULL),('vi',55,'Bàn phím Apple',NULL,NULL),('vi',56,'Cục sạc MacSafe 80W',NULL,NULL),('vi',57,'Cục sạc MacSafe 80W',NULL,NULL),('vi',58,'Cục sạc MacSafe 80W',NULL,NULL),('vi',59,'Tay cầm chơi game',NULL,NULL),('vi',60,'Apple Airpods Serial 3',NULL,NULL),('vi',61,'Cool Smart Watches',NULL,NULL),('vi',62,'Black Smart Watches',NULL,NULL),('vi',63,'Black Smart Watches',NULL,NULL),('vi',64,'Black Smart Watches',NULL,NULL),('vi',65,'Black Smart Watches',NULL,NULL),('vi',66,'Leather Watch Band Serial 3',NULL,NULL),('vi',67,'Leather Watch Band Serial 3',NULL,NULL),('vi',68,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',69,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',70,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',71,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',72,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',73,'Kính đen cool ngầu',NULL,NULL),('vi',74,'Chuột máy tính Phillips',NULL,NULL),('vi',75,'Chuột máy tính Phillips',NULL,NULL),('vi',76,'Chuột máy tính Phillips',NULL,NULL),('vi',77,'Bàn phím chơi game',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,1,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]'),(2,5,8,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(3,1,23,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(4,3,22,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(5,1,2,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/23.jpg\"}'),(6,3,5,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(7,9,19,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(8,10,4,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(9,9,20,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(10,5,7,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(11,8,14,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(12,3,24,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(13,3,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(14,6,6,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(15,9,7,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(16,4,17,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(17,2,21,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(18,1,4,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(19,10,11,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(20,3,10,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(21,9,9,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(22,9,21,5.00,'Clean & perfect source code','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(23,3,7,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(24,6,11,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(25,1,22,3.00,'Best ecommerce CMS online store!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(26,3,24,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(27,6,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(28,2,19,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(29,8,11,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(30,1,21,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(31,10,12,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(32,8,19,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(33,2,15,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(34,5,22,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(35,10,6,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\"]'),(36,2,22,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(37,2,6,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(38,9,7,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(39,6,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(40,2,1,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(41,9,13,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(42,8,12,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(43,4,18,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(44,4,17,2.00,'Good app, good backup service and support. Good documentation.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(45,5,4,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(46,4,7,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(47,6,10,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]'),(48,3,5,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(49,4,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(50,6,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(51,1,9,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/22.jpg\"}'),(52,7,16,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(53,10,24,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(54,6,5,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(55,6,7,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(56,4,8,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(57,5,16,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/22.jpg\"}'),(58,7,24,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(59,4,17,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(60,2,17,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/20.jpg\"}'),(61,1,12,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(62,10,3,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/13.jpg\"}'),(63,3,19,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]'),(64,9,10,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(65,2,18,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(66,10,21,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/15.jpg\"}'),(67,6,3,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(68,8,6,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(69,4,11,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(70,10,7,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(71,5,18,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(72,4,15,3.00,'Clean & perfect source code','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\"]'),(73,3,13,2.00,'Best ecommerce CMS online store!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]'),(74,7,17,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]'),(75,1,13,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(76,1,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(77,7,14,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(78,2,22,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/17.jpg\"}'),(79,6,11,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\"]'),(80,3,2,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/19.jpg\"}'),(81,3,23,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(82,4,13,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(83,1,11,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(84,8,10,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(85,5,4,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]'),(86,7,24,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(87,10,9,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(88,4,14,2.00,'Best ecommerce CMS online store!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(89,8,15,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(90,5,1,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(91,3,13,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(92,1,21,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(93,4,21,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/3.jpg\"]'),(94,10,2,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-09-27 01:54:06','2022-09-27 01:54:06','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/11.jpg\"}'),(95,6,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(96,2,20,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(97,9,16,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(98,1,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(99,9,1,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/2.jpg\"]'),(100,2,1,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-09-27 01:54:06','2022-09-27 01:54:06','[\"products\\/4.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-09-22 01:54:06','2022-09-22 01:54:06'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-09-25 09:54:06','2022-09-27 01:54:06'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-09-15 23:54:06','2022-09-15 23:54:06'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-09-25 11:54:06','2022-09-27 01:54:06'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-09-13 13:54:06','2022-09-13 13:54:06'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-09-25 13:54:06','2022-09-27 01:54:06'),(7,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,3,3,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-09-12 21:54:06','2022-09-12 21:54:06'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-09-25 15:54:06','2022-09-27 01:54:06'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-09-16 09:54:06','2022-09-16 09:54:06'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-09-25 17:54:06','2022-09-27 01:54:06'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-09-14 13:54:06','2022-09-14 13:54:06'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-09-25 19:54:06','2022-09-27 01:54:06'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-09-22 09:54:06','2022-09-22 09:54:06'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-09-25 21:54:06','2022-09-27 01:54:06'),(17,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-09-25 23:54:06','2022-09-25 23:54:06'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-09-25 23:54:06','2022-09-27 01:54:06'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-09-24 01:54:06','2022-09-24 01:54:06'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-09-26 01:54:06','2022-09-27 01:54:06'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(23,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-09-20 15:54:06','2022-09-20 15:54:06'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-09-26 03:54:06','2022-09-27 01:54:06'),(25,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-09-19 13:54:06','2022-09-19 13:54:06'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-09-26 05:54:06','2022-09-27 01:54:06'),(27,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-09-25 13:54:06','2022-09-25 13:54:06'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-09-26 07:54:06','2022-09-27 01:54:06'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(30,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-09-20 09:54:06','2022-09-20 09:54:06'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-09-26 09:54:06','2022-09-27 01:54:06'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(33,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-09-26 11:54:06','2022-09-26 11:54:06'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-09-26 11:54:06','2022-09-27 01:54:06'),(35,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-09-24 01:54:06','2022-09-24 01:54:06'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-09-26 13:54:06','2022-09-27 01:54:06'),(37,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-09-26 05:54:06','2022-09-26 05:54:06'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-09-26 15:54:06','2022-09-27 01:54:06'),(39,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-09-26 17:54:06','2022-09-26 17:54:06'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-09-26 17:54:06','2022-09-27 01:54:06'),(41,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-09-26 01:54:06','2022-09-26 01:54:06'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-09-26 19:54:06','2022-09-27 01:54:06'),(43,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-09-26 09:54:06','2022-09-26 09:54:06'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-09-26 21:54:06','2022-09-27 01:54:06'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(46,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-09-26 07:54:06','2022-09-26 07:54:06'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-09-26 23:54:06','2022-09-27 01:54:06'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2022-09-27 01:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,5665.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD004543931','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-30 08:54:06',NULL),(2,2,NULL,3218.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0022232610','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-04 08:54:06',NULL),(3,3,NULL,3096.00,NULL,'','delivered',412.10,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0061808351','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-03 08:54:06','2022-09-27 08:54:06'),(4,4,NULL,3033.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0066807121','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-07 08:54:06',NULL),(5,5,NULL,4208.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0022025002','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-06 08:54:06',NULL),(6,6,NULL,3835.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD002681494','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:54:06',NULL),(7,7,NULL,4314.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0037541029','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:54:06',NULL),(8,8,NULL,6378.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0073419495','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-05 08:54:06','2022-09-27 08:54:06'),(9,9,NULL,2852.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0090634328','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-03 08:54:06','2022-09-27 08:54:06'),(10,10,NULL,4476.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0079171525','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:54:06',NULL),(11,11,NULL,5255.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0074706029','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-04 08:54:06',NULL),(12,12,NULL,4412.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0048754943','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-05 08:54:06','2022-09-27 08:54:06'),(13,13,NULL,4896.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD004310810','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:54:06','2022-09-27 08:54:06'),(14,14,NULL,5986.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0094126399','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-29 08:54:06',NULL),(15,15,NULL,5065.00,NULL,'','approved',919.20,'pending','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0082148354','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-07 08:54:06',NULL),(16,16,NULL,4740.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0017900502','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-05 08:54:06',NULL),(17,17,NULL,3844.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0060718540','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-01 08:54:06',NULL),(18,18,NULL,2320.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0023469863','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-09-28 08:54:06',NULL),(19,19,NULL,5634.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0053598721','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-07 08:54:06','2022-09-27 08:54:06'),(20,20,NULL,5346.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-09-27 01:54:06','2022-09-27 01:54:06','JJD0097129406','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-10-06 08:54:06','2022-09-27 08:54:06');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-09-27 01:54:06','2022-09-27 01:54:06'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-09-27 01:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Wowy','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-09-27 01:54:06','2022-09-27 01:54:06');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-09-27 01:54:05','2022-09-27 01:54:05'),(2,'None',0.000000,2,'published','2022-09-27 01:54:05','2022-09-27 01:54:05');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,'Payment',1,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(3,'Order & Returns',2,'published','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','b01dee97c981f030ab3fe661f5969f38',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','2b2cf331c6eae9e3bc099b2d186ceb02',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','7796a81e2a54ff10f320352115886b5f',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','93cefb454fc39dcc9e4bed47804fd2f8',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'vi','b01dee97c981f030ab3fe661f5969f38',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'vi','2b2cf331c6eae9e3bc099b2d186ceb02',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'vi','7796a81e2a54ff10f320352115886b5f',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','93cefb454fc39dcc9e4bed47804fd2f8',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'en_US','745180ead70057290020a2f42a982987',1,'Botble\\Menu\\Models\\MenuLocation'),(10,'en_US','d6abd53a4eb90237b8eb4caa81671003',1,'Botble\\Menu\\Models\\Menu'),(11,'en_US','a5b4ce260606d0d89d69dfea2b1f1734',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','9c346195beed5b0fba9864b3783835c4',3,'Botble\\Menu\\Models\\Menu'),(13,'vi','962ff2ca61356e3dea274b76d5ebc705',2,'Botble\\Menu\\Models\\MenuLocation'),(14,'vi','d6abd53a4eb90237b8eb4caa81671003',4,'Botble\\Menu\\Models\\Menu'),(15,'vi','a5b4ce260606d0d89d69dfea2b1f1734',5,'Botble\\Menu\\Models\\Menu'),(16,'vi','9c346195beed5b0fba9864b3783835c4',6,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/png',1318,'brands/1.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(2,0,'2',1,'image/png',999,'brands/2.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(3,0,'3',1,'image/png',1251,'brands/3.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(4,0,'4',1,'image/png',1539,'brands/4.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(5,0,'5',1,'image/png',1058,'brands/5.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(6,0,'6',1,'image/png',4165,'brands/6.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(7,0,'7',1,'image/png',1260,'brands/7.png','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(8,0,'1',2,'image/jpeg',75180,'product-categories/1.jpg','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(9,0,'2',2,'image/jpeg',81345,'product-categories/2.jpg','[]','2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(10,0,'3',2,'image/jpeg',99137,'product-categories/3.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(11,0,'4',2,'image/jpeg',108690,'product-categories/4.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(12,0,'5',2,'image/jpeg',53952,'product-categories/5.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(13,0,'6',2,'image/jpeg',47088,'product-categories/6.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(14,0,'7',2,'image/jpeg',48248,'product-categories/7.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(15,0,'8',2,'image/jpeg',67235,'product-categories/8.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(16,0,'1-1',3,'image/jpeg',88437,'products/1-1.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(17,0,'1-2',3,'image/jpeg',122690,'products/1-2.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(18,0,'1-3',3,'image/jpeg',117296,'products/1-3.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(19,0,'1',3,'image/jpeg',139025,'products/1.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(20,0,'10-1',3,'image/jpeg',183491,'products/10-1.jpg','[]','2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(21,0,'10',3,'image/jpeg',150956,'products/10.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(22,0,'11-1',3,'image/jpeg',246200,'products/11-1.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(23,0,'11',3,'image/jpeg',279390,'products/11.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(24,0,'12-1',3,'image/jpeg',249712,'products/12-1.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(25,0,'12',3,'image/jpeg',172221,'products/12.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(26,0,'13-1',3,'image/jpeg',257021,'products/13-1.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(27,0,'13',3,'image/jpeg',232917,'products/13.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(28,0,'14-1',3,'image/jpeg',201773,'products/14-1.jpg','[]','2022-09-27 01:53:56','2022-09-27 01:53:56',NULL),(29,0,'14',3,'image/jpeg',287194,'products/14.jpg','[]','2022-09-27 01:53:57','2022-09-27 01:53:57',NULL),(30,0,'15-1',3,'image/jpeg',273720,'products/15-1.jpg','[]','2022-09-27 01:53:57','2022-09-27 01:53:57',NULL),(31,0,'15',3,'image/jpeg',114265,'products/15.jpg','[]','2022-09-27 01:53:57','2022-09-27 01:53:57',NULL),(32,0,'16',3,'image/jpeg',97174,'products/16.jpg','[]','2022-09-27 01:53:57','2022-09-27 01:53:57',NULL),(33,0,'17',3,'image/jpeg',70179,'products/17.jpg','[]','2022-09-27 01:53:57','2022-09-27 01:53:57',NULL),(34,0,'18-1',3,'image/jpeg',287835,'products/18-1.jpg','[]','2022-09-27 01:53:57','2022-09-27 01:53:57',NULL),(35,0,'18-2',3,'image/jpeg',454869,'products/18-2.jpg','[]','2022-09-27 01:53:58','2022-09-27 01:53:58',NULL),(36,0,'18',3,'image/jpeg',257331,'products/18.jpg','[]','2022-09-27 01:53:58','2022-09-27 01:53:58',NULL),(37,0,'19-1',3,'image/jpeg',144008,'products/19-1.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(38,0,'19',3,'image/jpeg',188821,'products/19.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(39,0,'2-1',3,'image/jpeg',138167,'products/2-1.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(40,0,'2-2',3,'image/jpeg',230552,'products/2-2.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(41,0,'2-3',3,'image/jpeg',179301,'products/2-3.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(42,0,'2',3,'image/jpeg',130048,'products/2.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(43,0,'20-1',3,'image/jpeg',249712,'products/20-1.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(44,0,'20',3,'image/jpeg',172221,'products/20.jpg','[]','2022-09-27 01:53:59','2022-09-27 01:53:59',NULL),(45,0,'21-1',3,'image/jpeg',260746,'products/21-1.jpg','[]','2022-09-27 01:54:00','2022-09-27 01:54:00',NULL),(46,0,'21',3,'image/jpeg',124244,'products/21.jpg','[]','2022-09-27 01:54:00','2022-09-27 01:54:00',NULL),(47,0,'22-1',3,'image/jpeg',213139,'products/22-1.jpg','[]','2022-09-27 01:54:00','2022-09-27 01:54:00',NULL),(48,0,'22',3,'image/jpeg',105409,'products/22.jpg','[]','2022-09-27 01:54:00','2022-09-27 01:54:00',NULL),(49,0,'23-1',3,'image/jpeg',105560,'products/23-1.jpg','[]','2022-09-27 01:54:01','2022-09-27 01:54:01',NULL),(50,0,'23',3,'image/jpeg',177362,'products/23.jpg','[]','2022-09-27 01:54:01','2022-09-27 01:54:01',NULL),(51,0,'24-1',3,'image/jpeg',239311,'products/24-1.jpg','[]','2022-09-27 01:54:01','2022-09-27 01:54:01',NULL),(52,0,'24',3,'image/jpeg',363853,'products/24.jpg','[]','2022-09-27 01:54:01','2022-09-27 01:54:01',NULL),(53,0,'3-1',3,'image/jpeg',135741,'products/3-1.jpg','[]','2022-09-27 01:54:01','2022-09-27 01:54:01',NULL),(54,0,'3-2',3,'image/jpeg',123069,'products/3-2.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(55,0,'3-3',3,'image/jpeg',98645,'products/3-3.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(56,0,'3',3,'image/jpeg',201722,'products/3.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(57,0,'4-1',3,'image/jpeg',205312,'products/4-1.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(58,0,'4-2',3,'image/jpeg',223903,'products/4-2.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(59,0,'4-3',3,'image/jpeg',106593,'products/4-3.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(60,0,'4',3,'image/jpeg',456134,'products/4.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(61,0,'5-1',3,'image/jpeg',110014,'products/5-1.jpg','[]','2022-09-27 01:54:02','2022-09-27 01:54:02',NULL),(62,0,'5-2',3,'image/jpeg',104934,'products/5-2.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(63,0,'5-3',3,'image/jpeg',131628,'products/5-3.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(64,0,'5',3,'image/jpeg',214767,'products/5.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(65,0,'6-1',3,'image/jpeg',128041,'products/6-1.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(66,0,'6',3,'image/jpeg',148485,'products/6.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(67,0,'7-1',3,'image/jpeg',144008,'products/7-1.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(68,0,'7',3,'image/jpeg',188821,'products/7.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(69,0,'8-1',3,'image/jpeg',274272,'products/8-1.jpg','[]','2022-09-27 01:54:03','2022-09-27 01:54:03',NULL),(70,0,'8',3,'image/jpeg',217862,'products/8.jpg','[]','2022-09-27 01:54:04','2022-09-27 01:54:04',NULL),(71,0,'9-1',3,'image/jpeg',65624,'products/9-1.jpg','[]','2022-09-27 01:54:04','2022-09-27 01:54:04',NULL),(72,0,'9',3,'image/jpeg',159636,'products/9.jpg','[]','2022-09-27 01:54:04','2022-09-27 01:54:04',NULL),(73,0,'1',4,'image/jpeg',274660,'customers/1.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(74,0,'2',4,'image/jpeg',295031,'customers/2.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(75,0,'3',4,'image/jpeg',183576,'customers/3.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(76,0,'4',4,'image/jpeg',245360,'customers/4.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(77,0,'5',4,'image/jpeg',262908,'customers/5.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(78,0,'6',4,'image/jpeg',109600,'customers/6.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(79,0,'7',4,'image/jpeg',159280,'customers/7.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(80,0,'8',4,'image/jpeg',99998,'customers/8.jpg','[]','2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(81,0,'1',5,'image/jpeg',62921,'flash-sales/1.jpg','[]','2022-09-27 01:54:06','2022-09-27 01:54:06',NULL),(82,0,'2',5,'image/jpeg',74131,'flash-sales/2.jpg','[]','2022-09-27 01:54:06','2022-09-27 01:54:06',NULL),(83,0,'1-1',6,'image/png',653539,'sliders/1-1.png','[]','2022-09-27 01:54:06','2022-09-27 01:54:06',NULL),(84,0,'1-2',6,'image/png',688883,'sliders/1-2.png','[]','2022-09-27 01:54:07','2022-09-27 01:54:07',NULL),(85,0,'1-3',6,'image/png',249966,'sliders/1-3.png','[]','2022-09-27 01:54:07','2022-09-27 01:54:07',NULL),(86,0,'2-1',6,'image/png',662495,'sliders/2-1.png','[]','2022-09-27 01:54:07','2022-09-27 01:54:07',NULL),(87,0,'2-2',6,'image/png',691309,'sliders/2-2.png','[]','2022-09-27 01:54:07','2022-09-27 01:54:07',NULL),(88,0,'2-3',6,'image/png',249966,'sliders/2-3.png','[]','2022-09-27 01:54:07','2022-09-27 01:54:07',NULL),(89,0,'3-1',6,'image/png',164134,'sliders/3-1.png','[]','2022-09-27 01:54:08','2022-09-27 01:54:08',NULL),(90,0,'3-2',6,'image/png',140217,'sliders/3-2.png','[]','2022-09-27 01:54:08','2022-09-27 01:54:08',NULL),(91,0,'4-1',6,'image/png',415854,'sliders/4-1.png','[]','2022-09-27 01:54:08','2022-09-27 01:54:08',NULL),(92,0,'4-2',6,'image/png',407249,'sliders/4-2.png','[]','2022-09-27 01:54:09','2022-09-27 01:54:09',NULL),(93,0,'4-3',6,'image/png',249966,'sliders/4-3.png','[]','2022-09-27 01:54:09','2022-09-27 01:54:09',NULL),(94,0,'1',7,'image/jpeg',533441,'news/1.jpg','[]','2022-09-27 01:54:09','2022-09-27 01:54:09',NULL),(95,0,'10',7,'image/jpeg',342651,'news/10.jpg','[]','2022-09-27 01:54:09','2022-09-27 01:54:09',NULL),(96,0,'11',7,'image/jpeg',296740,'news/11.jpg','[]','2022-09-27 01:54:09','2022-09-27 01:54:09',NULL),(97,0,'2',7,'image/jpeg',292594,'news/2.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(98,0,'3',7,'image/jpeg',382930,'news/3.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(99,0,'4',7,'image/jpeg',403060,'news/4.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(100,0,'5',7,'image/jpeg',727445,'news/5.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(101,0,'6',7,'image/jpeg',361958,'news/6.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(102,0,'7',7,'image/jpeg',904027,'news/7.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(103,0,'8',7,'image/jpeg',351088,'news/8.jpg','[]','2022-09-27 01:54:10','2022-09-27 01:54:10',NULL),(104,0,'9',7,'image/jpeg',353751,'news/9.jpg','[]','2022-09-27 01:54:11','2022-09-27 01:54:11',NULL),(105,0,'1',8,'image/png',66416,'promotion/1.png','[]','2022-09-27 01:54:11','2022-09-27 01:54:11',NULL),(106,0,'2',8,'image/png',70051,'promotion/2.png','[]','2022-09-27 01:54:11','2022-09-27 01:54:11',NULL),(107,0,'3',8,'image/png',66675,'promotion/3.png','[]','2022-09-27 01:54:11','2022-09-27 01:54:11',NULL),(108,0,'4',8,'image/png',61720,'promotion/4.png','[]','2022-09-27 01:54:12','2022-09-27 01:54:12',NULL),(109,0,'5',8,'image/png',25894,'promotion/5.png','[]','2022-09-27 01:54:12','2022-09-27 01:54:12',NULL),(110,0,'6',8,'image/png',528935,'promotion/6.png','[]','2022-09-27 01:54:12','2022-09-27 01:54:12',NULL),(111,0,'favicon',9,'image/png',2343,'general/favicon.png','[]','2022-09-27 01:54:12','2022-09-27 01:54:12',NULL),(112,0,'icon-bag',9,'image/png',15551,'general/icon-bag.png','[]','2022-09-27 01:54:12','2022-09-27 01:54:12',NULL),(113,0,'icon-operator',9,'image/png',23328,'general/icon-operator.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL),(114,0,'icon-purchase',9,'image/png',22947,'general/icon-purchase.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL),(115,0,'icon-truck',9,'image/png',17131,'general/icon-truck.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL),(116,0,'logo-light',9,'image/png',1938,'general/logo-light.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL),(117,0,'logo',9,'image/png',2494,'general/logo.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL),(118,0,'open-graph-image',9,'image/png',293189,'general/open-graph-image.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL),(119,0,'payment-methods',9,'image/png',10634,'general/payment-methods.png','[]','2022-09-27 01:54:13','2022-09-27 01:54:13',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(2,0,'product-categories','product-categories',0,'2022-09-27 01:53:54','2022-09-27 01:53:54',NULL),(3,0,'products','products',0,'2022-09-27 01:53:55','2022-09-27 01:53:55',NULL),(4,0,'customers','customers',0,'2022-09-27 01:54:05','2022-09-27 01:54:05',NULL),(5,0,'flash-sales','flash-sales',0,'2022-09-27 01:54:06','2022-09-27 01:54:06',NULL),(6,0,'sliders','sliders',0,'2022-09-27 01:54:06','2022-09-27 01:54:06',NULL),(7,0,'news','news',0,'2022-09-27 01:54:09','2022-09-27 01:54:09',NULL),(8,0,'promotion','promotion',0,'2022-09-27 01:54:11','2022-09-27 01:54:11',NULL),(9,0,'general','general',0,'2022-09-27 01:54:12','2022-09-27 01:54:12',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,4,'main-menu','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(6,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(7,1,6,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(8,1,6,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(9,1,6,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(10,1,6,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Products Of Category',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(11,1,0,NULL,NULL,'#',NULL,0,'Product',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(12,1,11,NULL,NULL,'/products/smart-home-speaker',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(13,1,11,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(14,1,11,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Product Full Width',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(15,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(16,1,15,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Right Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(17,1,15,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(18,1,15,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(19,1,15,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(20,1,15,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(21,1,15,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(22,1,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(23,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(24,2,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Men',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(25,2,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Women',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(26,2,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Accessories',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(27,2,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Shoes',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(28,2,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(29,2,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Dress',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(30,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(31,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'About Us',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(32,3,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(33,3,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(34,3,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(35,3,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(36,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(37,4,36,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(38,4,36,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(39,4,36,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(40,4,36,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(41,4,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(42,4,41,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(43,4,41,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(44,4,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(45,4,44,NULL,NULL,'/products/smart-home-speaker',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(46,4,44,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(47,4,44,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(48,4,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(49,4,48,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(50,4,48,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(51,4,48,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(52,4,48,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(53,4,48,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(54,4,48,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết with kèm sản phẩm',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(55,4,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(56,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(57,5,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Dành cho nam',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(58,5,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Dành cho nữ',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(59,5,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Phụ kiện',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(60,5,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Giày dép',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(61,5,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(62,5,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Quần áo',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(63,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(64,6,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(65,6,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(66,6,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(67,6,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12'),(68,6,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,'Product categories','product-categories','published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(3,'Information','information','published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(4,'Menu chính','menu-chinh','published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(5,'Product categories','danh-muc-san-pham','published','2022-09-27 01:54:12','2022-09-27 01:54:12'),(6,'Information','thong-tin','published','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"far fa-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(2,'icon','[\"wowy-font-cpu\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(3,'icon','[\"wowy-font-tshirt\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(4,'icon','[\"wowy-font-desktop\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(5,'icon','[\"wowy-font-home\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(6,'icon','[\"wowy-font-dress\"]',18,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(7,'icon','[\"wowy-font-diamond\"]',19,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(8,'icon','[\"far fa-microchip\"]',20,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(9,'icon','[\"wowy-font-smartphone\"]',25,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(10,'icon','[\"wowy-font-teddy-bear\"]',26,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(11,'icon','[\"wowy-font-kite\"]',27,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(12,'icon','[\"far fa-book\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(13,'icon','[\"far fa-car\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(14,'icon','[\"wowy-font-home\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-09-27 01:53:55','2022-09-27 01:53:55'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(17,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(19,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-09-27 01:54:04','2022-09-27 01:54:04'),(42,'subtitle','[\"Limited quantities.\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(43,'image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(44,'subtitle','[\"Computers & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(45,'image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(46,'vi_subtitle','[\"Gi\\u1edbi h\\u1ea1n s\\u1ed1 l\\u01b0\\u1ee3ng\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(47,'vi_image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(48,'vi_subtitle','[\"M\\u00e1y t\\u00ednh b\\u00e0n & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(49,'vi_image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-09-27 01:54:06','2022-09-27 01:54:06'),(50,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(51,'subtitle','[\"Trade-In Offer\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(52,'highlight_text','[\"On All Products\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(53,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(54,'subtitle','[\"Tech Promotions\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(55,'highlight_text','[\"Great Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(56,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(57,'subtitle','[\"Upcoming Offer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(58,'highlight_text','[\"Manufacturer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(59,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-27 01:54:09','2022-09-27 01:54:09'),(60,'button_text','[\"Shop now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(61,'subtitle','[\"Trade-In Offer\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(62,'highlight_text','[\"On All Products\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(63,'button_text','[\"Discover now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(64,'subtitle','[\"Tech Promotions\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(65,'highlight_text','[\"Great Collection\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(66,'button_text','[\"Shop now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(67,'subtitle','[\"Upcoming Offer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(68,'highlight_text','[\"Manufacturer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(69,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-27 01:54:09','2022-09-27 01:54:09'),(70,'button_text','[\"Shop now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(71,'subtitle','[\"Trade-In Offer\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(72,'highlight_text','[\"On All Products\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(73,'button_text','[\"Discover now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(74,'subtitle','[\"Tech Promotions\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(75,'highlight_text','[\"Great Collection\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(76,'simple_slider_style','[\"style-4\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-27 01:54:09','2022-09-27 01:54:09'),(77,'button_text','[\"Shop now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(78,'subtitle','[\"Trade-In Offer\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(79,'highlight_text','[\"On All Products\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(80,'button_text','[\"Discover now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(81,'subtitle','[\"Tech Promotions\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(82,'highlight_text','[\"Great Collection\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(83,'button_text','[\"Shop now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(84,'subtitle','[\"Upcoming Offer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(85,'highlight_text','[\"Manufacturer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(86,'button_text','[\"Mua ngay\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(87,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(88,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(89,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(90,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(91,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(92,'button_text','[\"Mua ngay\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(93,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(94,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(95,'simple_slider_style','[\"style-2\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-27 01:54:09','2022-09-27 01:54:09'),(96,'button_text','[\"Mua ngay\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(97,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(98,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(99,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(100,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(101,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(102,'button_text','[\"Mua ngay\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(103,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(104,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(105,'simple_slider_style','[\"style-3\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-27 01:54:09','2022-09-27 01:54:09'),(106,'button_text','[\"Mua ngay\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(107,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(108,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(109,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(110,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(111,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(112,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-09-27 01:54:09','2022-09-27 01:54:09'),(113,'button_text','[\"Mua ngay\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(114,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(115,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(116,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(117,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(118,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(119,'button_text','[\"Mua ngay\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(120,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(121,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-09-27 01:54:09','2022-09-27 01:54:09'),(122,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-09-27 01:54:11','2022-09-27 01:54:11'),(123,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-09-27 01:54:11','2022-09-27 01:54:11'),(124,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-09-27 01:54:11','2022-09-27 01:54:11'),(125,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-09-27 01:54:11','2022-09-27 01:54:11'),(126,'header_style','[\"header-style-2\"]',2,'Botble\\Page\\Models\\Page','2022-09-27 01:54:11','2022-09-27 01:54:11'),(127,'expanding_product_categories_on_the_homepage','[\"yes\"]',2,'Botble\\Page\\Models\\Page','2022-09-27 01:54:11','2022-09-27 01:54:11'),(128,'header_style','[\"header-style-3\"]',3,'Botble\\Page\\Models\\Page','2022-09-27 01:54:11','2022-09-27 01:54:11'),(129,'header_style','[\"header-style-4\"]',4,'Botble\\Page\\Models\\Page','2022-09-27 01:54:11','2022-09-27 01:54:11'),(130,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(131,'subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(132,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(133,'subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(134,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(135,'subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(136,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(137,'subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(138,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(139,'subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(140,'button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(141,'subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(142,'vi_subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(143,'vi_button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(144,'vi_subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(145,'vi_button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(146,'vi_subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(147,'vi_button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(148,'vi_subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(149,'vi_button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(150,'vi_subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(151,'vi_button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(152,'vi_subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12'),(153,'vi_button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_27_084829_fix_footer_widget',1),(22,'2020_11_18_150916_ads_create_ads_table',2),(23,'2021_12_02_035301_add_ads_translations_table',2),(24,'2015_06_29_025744_create_audit_history',3),(25,'2015_06_18_033822_create_blog_table',4),(26,'2021_02_16_092633_remove_default_value_for_author_type',4),(27,'2021_12_03_030600_create_blog_translations',4),(28,'2022_04_19_113923_add_index_to_table_posts',4),(29,'2016_06_17_091537_create_contacts_table',5),(30,'2020_03_05_041139_create_ecommerce_tables',6),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(34,'2021_02_18_073505_update_table_ec_reviews',6),(35,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(36,'2021_03_10_025153_change_column_tax_amount',6),(37,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(38,'2021_04_28_074008_ecommerce_create_product_label_table',6),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(40,'2021_06_28_153141_correct_slugs_data',6),(41,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(42,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(43,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(44,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(45,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(46,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(47,'2021_11_23_071403_correct_languages_for_product_variations',6),(48,'2021_11_28_031808_add_product_tags_translations',6),(49,'2021_12_01_031123_add_featured_image_to_ec_products',6),(50,'2022_01_01_033107_update_table_ec_shipments',6),(51,'2022_02_16_042457_improve_product_attribute_sets',6),(52,'2022_03_22_075758_correct_product_name',6),(53,'2022_04_19_113334_add_index_to_ec_products',6),(54,'2022_04_28_144405_remove_unused_table',6),(55,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(56,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(57,'2022_06_16_095633_add_index_to_some_tables',6),(58,'2022_06_30_035148_create_order_referrals_table',6),(59,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(60,'2022_08_14_032836_create_ec_order_returns_table',6),(61,'2022_08_14_033554_create_ec_order_return_items_table',6),(62,'2022_08_15_040324_add_billing_address',6),(63,'2022_08_30_091114_support_digital_products_table',6),(64,'2018_07_09_221238_create_faq_table',7),(65,'2021_12_03_082134_create_faq_translations',7),(66,'2016_10_03_032336_create_languages_table',8),(67,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(68,'2021_12_03_075608_create_page_translations',9),(69,'2019_11_18_061011_create_country_table',10),(70,'2021_12_03_084118_create_location_translations',10),(71,'2021_12_03_094518_migrate_old_location_data',10),(72,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(73,'2022_01_16_085908_improve_plugin_location',10),(74,'2022_08_04_052122_delete_location_backup_tables',10),(75,'2017_10_24_154832_create_newsletter_table',11),(76,'2017_05_18_080441_create_payment_tables',12),(77,'2021_03_27_144913_add_customer_type_into_table_payments',12),(78,'2021_05_24_034720_make_column_currency_nullable',12),(79,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(80,'2021_10_19_020859_update_metadata_field',12),(81,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(82,'2022_07_07_153354_update_charge_id_in_table_payments',12),(83,'2017_07_11_140018_create_simple_slider_table',13),(84,'2016_10_07_193005_create_translations_table',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(5,'Blog','<p>---</p>',1,NULL,'blog-right-sidebar',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(7,'About us','<p>I should like to hear his history. I must have been a RED rose-tree, and we put a white one in by mistake; and if the Mock Turtle with a kind of serpent, that\'s all I can reach the key; and if it had grown so large a house, that she wasn\'t a really good school,\' said the King put on his slate with one eye; \'I seem to dry me at home! Why, I do so like that curious song about the reason they\'re called lessons,\' the Gryphon remarked: \'because they lessen from day to day.\' This was such a tiny.</p><p>Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the world you fly, Like a tea-tray in the middle, wondering how she would get up and straightening itself out again, so violently, that she wanted to send the hedgehog had unrolled itself, and was beating her violently with its mouth open, gazing up into the wood. \'If it had been. But her sister sat still just as usual. \'Come, there\'s no meaning in it,\' said Alice, who felt ready to ask his neighbour to tell him.</p><p>I grow up, I\'ll write one--but I\'m grown up now,\' she added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to make out at all comfortable, and it said in a bit.\' \'Perhaps it doesn\'t matter a bit,\' said the Cat, and vanished. Alice was beginning to end,\' said the Duchess; \'and most things twinkled after that--only the March Hare. \'Exactly so,\' said the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one finger.</p><p>She generally gave herself very good height indeed!\' said Alice, \'and those twelve creatures,\' (she was obliged to say \'Drink me,\' but the Mouse in the morning, just time to wash the things being alive; for instance, there\'s the arch I\'ve got back to the Caterpillar, and the Queen jumped up in such confusion that she was ever to get through the wood. \'If it had lost something; and she went on saying to herself, \'because of his shrill little voice, the name again!\' \'I won\'t interrupt again. I.</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(9,'Terms & Conditions','<p>And he got up very carefully, with one elbow against the ceiling, and had been anything near the door between us. For instance, suppose it doesn\'t matter much,\' thought Alice, \'and why it is to find herself talking familiarly with them, as if it likes.\' \'I\'d rather finish my tea,\' said the Hatter asked triumphantly. Alice did not quite know what they\'re about!\' \'Read them,\' said the one who had been looking at the flowers and the whole party look so grave that she wasn\'t a bit of the.</p><p>And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head struck against the ceiling, and had been anxiously looking across the field after it, \'Mouse dear! Do come back again, and all the rest were quite dry again, the cook had disappeared. \'Never mind!\' said the Duchess, who seemed too much overcome to do this, so she turned the corner, but the Mouse replied rather crossly: \'of.</p><p>It was opened by another footman in livery came running out of that is--\"Be what you mean,\' the March Hare went on. \'Would you tell me, please, which way you can;--but I must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite understand you,\' she said, without opening its eyes, for it now, I suppose, by being drowned in my own tears! That WILL be a lesson to you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I.</p><p>Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be listening, so she went on, half to herself, and began staring at the picture.) \'Up, lazy thing!\' said Alice, \'and if it makes rather a hard word, I will just explain to you never to lose YOUR temper!\' \'Hold your tongue!\' added the Hatter, \'when the Queen jumped up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with her friend. When she got to the part about her pet: \'Dinah\'s our cat. And she\'s such a.</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(10,'Returns & Exchanges','<p>Queen in a piteous tone. And the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the Dormouse, not choosing to notice this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it makes rather a complaining tone, \'and they all cheered. Alice thought this must ever be A secret, kept from all the while, and fighting for the pool as it went. So she was quite silent for a few minutes to see what was the BEST butter, you know.\' \'I.</p><p>I fell off the top of the jurors were writing down \'stupid things!\' on their hands and feet at once, in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Hatter: \'as the things get used to it in a melancholy tone. \'Nobody seems to be sure, this generally happens when you throw them, and was going to be, from one end to the Caterpillar, and the words came very queer to ME.\' \'You!\' said the Queen, who had meanwhile been examining the roses. \'Off with their.</p><p>The Antipathies, I think--\' (for, you see, Alice had no idea what Latitude or Longitude either, but thought they were nice grand words to say.) Presently she began very cautiously: \'But I don\'t want to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, a little startled when she had someone to listen to me! When I used to come down the little crocodile Improve his shining tail, And pour the waters of the Gryphon, half to Alice. \'What sort of chance of getting.</p><p>I don\'t understand. Where did they live at the Queen, pointing to Alice for some minutes. The Caterpillar and Alice joined the procession, wondering very much confused, \'I don\'t much care where--\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Caterpillar. This was such a thing. After a while, finding that nothing more to come, so she turned to the game. CHAPTER IX. The Mock Turtle a little startled when she looked down, was an old.</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(11,'Shipping & Delivery','<p>When the sands are all pardoned.\' \'Come, THAT\'S a good many little girls of her voice. Nobody moved. \'Who cares for you?\' said the Mouse. \'Of course,\' the Dodo managed it.) First it marked out a history of the garden, called out in a low voice. \'Not at first, but, after watching it a minute or two. \'They couldn\'t have done just as well as pigs, and was looking up into the air. \'--as far out to sea!\" But the snail replied \"Too far, too far!\" and gave a little snappishly. \'You\'re enough to get.</p><p>Two. Two began in a whisper.) \'That would be quite as safe to stay with it as far as they all moved off, and had to sing you a song?\' \'Oh, a song, please, if the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the rest, Between yourself and me.\' \'That\'s the judge,\' she said aloud. \'I must be off, and that in some alarm. This time there were any tears. No, there were three gardeners at it, busily painting them red. Alice thought to herself in a natural way again. \'I should.</p><p>VERY unpleasant state of mind, she turned to the Caterpillar, and the sounds will take care of themselves.\"\' \'How fond she is only a child!\' The Queen had only one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m not particular as to size,\' Alice hastily replied; \'at least--at least I mean what I see\"!\' \'You might just as well go in ringlets at all; and I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very soon had to kneel down on the same height as.</p><p>For instance, suppose it were nine o\'clock in the distance, screaming with passion. She had already heard her sentence three of the doors of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'Does YOUR watch tell you how the game was in confusion, getting the Dormouse went on, spreading out the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen said to herself what such an extraordinary ways of.</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(12,'Privacy Policy','<p>And he got up very carefully, remarking, \'I really must be really offended. \'We won\'t talk about her other little children, and make out what she did, she picked up a little bird as soon as it spoke (it was Bill, the Lizard) could not join the dance?\"\' \'Thank you, it\'s a very truthful child; \'but little girls of her sister, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Why, SHE,\' said the Caterpillar, just as I was sent.</p><p>While she was a little timidly: \'but it\'s no use now,\' thought poor Alice, that she ran out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the March Hare had just succeeded in bringing herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two. \'They couldn\'t have done that, you know,\' said Alice a little three-legged table, all made of solid glass; there was a dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t think--\'.</p><p>Alice\'s first thought was that she had to run back into the garden. Then she went hunting about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Queen, who was gently brushing away some dead leaves that had slipped in like herself. \'Would it be of any use, now,\' thought Alice, as she picked her way out. \'I shall do nothing of the trial.\' \'Stupid things!\' Alice thought to herself. \'I dare say there may be different,\' said Alice; \'but a grin without a great.</p><p>March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a pair of the sense, and the sounds will take care of the Gryphon, before Alice could think of any good reason, and as for the baby, it was too dark to see it quite plainly through the little magic bottle had now had its full effect, and she went on. \'Would you tell me,\' said Alice, \'and those twelve.</p>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(13,'Blog Left Sidebar','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-left-sidebar',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(14,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-09-27 01:54:11','2022-09-27 01:54:11');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"slider-trang-chu-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"slider-trang-chu-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"slider-trang-chu-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"slider-trang-chu-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Gryphon. \'Then, you know,\' the Hatter asked triumphantly. Alice did not like to see what was going a journey, I should be like then?\' And she opened the door between us. For instance, suppose it doesn\'t matter which way it was very hot, she kept on good terms with him, he\'d do almost anything you liked with the next witness would be so easily offended!\' \'You\'ll get used up.\' \'But what did the archbishop find?\' The Mouse did.</p><p>NOT, being made entirely of cardboard.) \'All right, so far,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it so quickly that the best of educations--in fact, we went to work very carefully, nibbling first at one end to the beginning of the garden, called out \'The race is over!\' and they lived at the great wonder is, that there\'s any one of them hit her in a very truthful.</p><p>Take your choice!\' The Duchess took no notice of her age knew the meaning of it at all; however, she again heard a little bit of stick, and made a memorandum of the court. (As that is rather a hard word, I will tell you just now what the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she hardly knew what she was not here before,\' said Alice,) and round the court with a cart-horse, and expecting every moment to be ashamed of yourself,\' said Alice, \'we.</p><p>I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very soon came upon a heap of sticks and dry leaves, and the turtles all advance! They are waiting on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, timidly; \'some of the creature, but on second thoughts she decided on going into the air, mixed up with the Gryphon. Alice did not like to be patted on the stairs. Alice knew it was as long as there was enough of it altogether; but after a.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Alice thought to herself, (not in a bit.\' \'Perhaps it doesn\'t matter a bit,\' she thought there was Mystery,\' the Mock Turtle said: \'I\'m too stiff. And the Eaglet bent down its head impatiently, and said, very gravely, \'I think, you ought to go near the centre of the tail, and ending with the dream of Wonderland of long ago: and how she would catch a bat, and that\'s all the creatures argue. It\'s enough to get into that beautiful garden--how IS that to be trampled under its feet, ran round the.</p><p>King, and the King said, turning to Alice, that she began fancying the sort of way to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not like to show you! A little bright-eyed terrier, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; however, she waited for a good way off, and had just upset the week before. \'Oh, I know!\' exclaimed Alice, who felt very curious to see that the way I want to go! Let me see: I\'ll give them a.</p><p>Alice said very politely, feeling quite pleased to find herself still in sight, and no more to do it.\' (And, as you can--\' \'Swim after them!\' screamed the Gryphon. \'Turn a somersault in the sun. (IF you don\'t explain it as a boon, Was kindly permitted to pocket the spoon: While the Owl and the Hatter with a little ledge of rock, and, as the White Rabbit hurried by--the frightened Mouse splashed his way through the air! Do you think you could manage it?) \'And what are YOUR shoes done with?\'.</p><p>I give you fair warning,\' shouted the Queen had ordered. They very soon had to do next, when suddenly a footman because he was gone, and, by the hand, it hurried off, without waiting for the accident of the jurors had a consultation about this, and she put her hand again, and the March Hare interrupted in a game of play with a round face, and was just saying to herself, \'if one only knew the meaning of half an hour or so there were three little sisters--they were learning to draw, you know--\'.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>White Rabbit as he spoke, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a little pattering of feet in the pool of tears which she had drunk half the bottle, she found a little startled by seeing the Cheshire Cat sitting on the look-out for serpents night and day! Why, I wouldn\'t be so kind,\' Alice replied, so eagerly that the reason of that?\' \'In my youth,\' said the Queen. \'You make me grow smaller, I can listen all day about it!\' Last came a rumbling.</p><p>Mouse, frowning, but very glad that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the second time round, she found to be said. At last the Gryphon as if she were saying lessons, and began to cry again. \'You ought to have been a RED rose-tree, and we won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what they\'re about!\' \'Read them,\' said the Hatter: \'but you could manage it?) \'And what an ignorant little girl she\'ll think me at all.\' \'In that.</p><p>Caterpillar. \'Is that the poor little feet, I wonder what they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of this remark, and thought to herself, \'Why, they\'re only a pack of cards: the Knave of Hearts, carrying the King\'s crown on a three-legged stool in the shade: however, the moment she appeared; but she did so, very carefully, nibbling first at one end of your flamingo. Shall I try the patience of an oyster!\' \'I wish I hadn\'t cried so much!\' said Alice, as she could.</p><p>Indeed, she had tired herself out with his tea spoon at the Cat\'s head began fading away the moment she felt sure it would like the look of the leaves: \'I should like to hear her try and say \"How doth the little--\"\' and she did not venture to go with the distant sobs of the ground--and I should be free of them didn\'t know it to make the arches. The chief difficulty Alice found at first she would have done that?\' she thought. \'I must be a very short time the Queen said--\' \'Get to your places!\'.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>It\'s high time to hear the words:-- \'I speak severely to my jaw, Has lasted the rest of the cupboards as she could, for the fan she was holding, and she went on, looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had been all the jelly-fish out of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King and the jury had a little snappishly. \'You\'re enough to get in?\'.</p><p>Alice, who was peeping anxiously into its mouth again, and went to school in the sea. The master was an old conger-eel, that used to come upon them THIS size: why, I should think very likely true.) Down, down, down. There was a table, with a knife, it usually bleeds; and she very good-naturedly began hunting about for a baby: altogether Alice did not get hold of its mouth, and addressed her in the pool of tears which she had somehow fallen into the jury-box, or they would die. \'The trial.</p><p>THAT direction,\' the Cat said, waving its tail about in a large one, but the tops of the jury eagerly wrote down all three dates on their throne when they passed too close, and waving their forepaws to mark the time, while the Dodo solemnly, rising to its feet, \'I move that the hedgehog a blow with its legs hanging down, but generally, just as I tell you!\' But she did not venture to say it any longer than that,\' said the Cat, and vanished again. Alice waited a little, \'From the Queen. \'Well, I.</p><p>King, \'or I\'ll have you executed on the shingle--will you come to an end! \'I wonder how many miles I\'ve fallen by this very sudden change, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'And be quick about it,\' said Alice, who felt very glad to get very tired of this. I vote the young man said, \'And your hair has become very white; And yet I wish you were.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>I\'ve had such a curious dream!\' said Alice, and she swam lazily about in the middle, wondering how she would catch a bad cold if she had never before seen a good way off, panting, with its legs hanging down, but generally, just as usual. I wonder who will put on your shoes and stockings for you now, dears? I\'m sure I have done just as if she were saying lessons, and began picking them up again as quickly as she said to the table to measure herself by it, and finding it very nice, (it had, in.</p><p>I can\'t understand it myself to begin again, it was her dream:-- First, she tried to look at the Queen, tossing her head was so long that they could not help bursting out laughing: and when she first saw the Mock Turtle, and to her daughter \'Ah, my dear! I wish I hadn\'t quite finished my tea when I was thinking I should think you could manage it?) \'And what an ignorant little girl or a worm. The question is, what?\' The great question certainly was, what? Alice looked up, but it did not feel.</p><p>I don\'t remember where.\' \'Well, it must be a letter, after all: it\'s a set of verses.\' \'Are they in the schoolroom, and though this was of very little way out of his shrill little voice, the name of nearly everything there. \'That\'s the first sentence in her pocket, and was a dead silence. Alice was so long that they could not possibly reach it: she could not possibly reach it: she could not tell whether they were mine before. If I or she should meet the real Mary Ann, and be turned out of.</p><p>The Mouse did not quite sure whether it was just possible it had been, it suddenly appeared again. \'By-the-bye, what became of the others all joined in chorus, \'Yes, please do!\' but the Rabbit was still in existence; \'and now for the first day,\' said the Mock Turtle: \'why, if a dish or kettle had been (Before she had someone to listen to her. The Cat only grinned a little of her sharp little chin. \'I\'ve a right to grow larger again, and Alice was not here before,\' said Alice,) and round the.</p>'),('vi',13,'Blog Sidebar Trái',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'KLIS5KXIFG','paypal',NULL,882.80,1,'completed','confirm',7,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'NH1Z4JPUK7','paystack',NULL,656.70,2,'completed','confirm',3,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'YXNWYMU7VI','cod',NULL,412.10,3,'pending','confirm',6,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'9UHRMEDVM1','bank_transfer',NULL,538.60,4,'pending','confirm',8,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'BQBQNIGS5C','sslcommerz',NULL,1458.90,5,'completed','confirm',10,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'SW6TUA1T6M','sslcommerz',NULL,755.10,6,'completed','confirm',4,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'LRRTS6NAWX','mollie',NULL,761.20,7,'completed','confirm',10,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'LKGZIEAVSL','stripe',NULL,1884.80,8,'completed','confirm',4,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'JPNBHFMO2F','sslcommerz',NULL,492.20,9,'completed','confirm',5,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'7O1BMKJXLL','razorpay',NULL,740.90,10,'completed','confirm',4,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'ZKOB2KAWSZ','paystack',NULL,1533.10,11,'completed','confirm',9,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'JQ3NIPWILG','mollie',NULL,1436.00,12,'completed','confirm',1,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'BCLN2AGBS9','mollie',NULL,2028.10,13,'completed','confirm',1,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'GAPIWX4O1Z','razorpay',NULL,1317.10,14,'completed','confirm',2,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'XIQ9EMGP3A','cod',NULL,919.20,15,'pending','confirm',3,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'SP8YFCDNIK','mollie',NULL,1870.60,16,'completed','confirm',5,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'DKVA4F0STH','paypal',NULL,588.00,17,'completed','confirm',1,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'FR9NLR7XAY','bank_transfer',NULL,484.60,18,'pending','confirm',4,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'GKHJL5RZ5P','paypal',NULL,1522.50,19,'completed','confirm',1,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'P1WBON6AG7','paypal',NULL,862.70,20,'completed','confirm',6,NULL,NULL,'2022-09-27 01:54:06','2022-09-27 01:54:06','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,3,1),(3,1,2),(4,4,2),(5,2,3),(6,3,3),(7,2,4),(8,3,4),(9,2,5),(10,3,5),(11,1,6),(12,3,6),(13,1,7),(14,4,7),(15,1,8),(16,4,8),(17,2,9),(18,3,9),(19,2,10),(20,4,10),(21,2,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',686,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',720,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2102,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1195,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',881,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1582,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1658,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1516,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1769,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1291,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2158,NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,NULL),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'ecommerce_store_name','Wowy',NULL,NULL),(9,'ecommerce_store_phone','18006268',NULL,NULL),(10,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(11,'ecommerce_store_state','Singapore',NULL,NULL),(12,'ecommerce_store_city','Singapore',NULL,NULL),(13,'ecommerce_store_country','SG',NULL,NULL),(14,'media_random_hash','3f29a201c8a5f2b4beef6a86e6794bfa',NULL,NULL),(15,'permalink-botble-blog-models-post','blog',NULL,NULL),(16,'permalink-botble-blog-models-category','blog',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(23,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'simple_slider_using_assets','0',NULL,NULL),(26,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'theme','wowy',NULL,NULL),(29,'admin_favicon','general/favicon.png',NULL,NULL),(30,'admin_logo','general/logo-light.png',NULL,NULL),(31,'theme-wowy-site_title','Wowy - Laravel Multipurpose eCommerce Script',NULL,NULL),(32,'theme-wowy-copyright','Copyright © 2021 Wowy all rights reserved. Powered by Botble.',NULL,NULL),(33,'theme-wowy-favicon','general/favicon.png',NULL,NULL),(34,'theme-wowy-logo','general/logo.png',NULL,NULL),(35,'theme-wowy-logo_light','general/logo-light.png',NULL,NULL),(36,'theme-wowy-seo_og_image','general/open-graph-image.png',NULL,NULL),(37,'theme-wowy-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(38,'theme-wowy-hotline','1900 - 888',NULL,NULL),(39,'theme-wowy-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(40,'theme-wowy-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(41,'theme-wowy-homepage_id','1',NULL,NULL),(42,'theme-wowy-blog_page_id','5',NULL,NULL),(43,'theme-wowy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(44,'theme-wowy-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(45,'theme-wowy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(46,'theme-wowy-number_of_cross_sale_product','4',NULL,NULL),(47,'theme-wowy-preloader_enabled','yes',NULL,NULL),(48,'theme-wowy-preloader_version','v2',NULL,NULL),(49,'theme-wowy-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]',NULL,NULL),(50,'theme-wowy-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(51,'theme-wowy-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(52,'theme-wowy-vi-font_text','Roboto Condensed',NULL,NULL),(53,'theme-wowy-vi-copyright','Bản quyền © 2021 Wowy tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(54,'theme-wowy-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(55,'theme-wowy-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(56,'theme-wowy-vi-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(57,'theme-wowy-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(58,'theme-wowy-vi-homepage_id','1',NULL,NULL),(59,'theme-wowy-vi-blog_page_id','5',NULL,NULL),(60,'theme-wowy-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(61,'theme-wowy-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Super Value Deals','sliders/1-1.png','/products','Save more with coupons & up to 70% off',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(2,1,'Tech Trending','sliders/1-2.png','/products','Save more with coupons & up to 20% off',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(3,1,'Big Deals From','sliders/1-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(4,2,'Super Value Deals','sliders/2-1.png','/products','Save more with coupons & up to 70% off',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(5,2,'Tech Trending','sliders/2-2.png','/products','Save more with coupons & up to 20% off',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(6,2,'Big Deals From','sliders/2-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(7,3,'Super Value Deals','sliders/3-1.png','/products','Save more with coupons & up to 70% off',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(8,3,'Tech Trending','sliders/3-2.png','/products','Save more with coupons & up to 20% off',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(9,4,'Super Value Deals','sliders/4-1.png','/products','Save more with coupons & up to 70% off',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(10,4,'Tech Trending','sliders/4-2.png','/products','Save more with coupons & up to 20% off',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(11,4,'Big Deals From','sliders/4-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(12,5,'Giảm giá đặc biệt','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(13,5,'Công nghệ nổi bật','sliders/1-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(14,5,'Giảm giá lớn nhất từ','sliders/1-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(15,6,'Giảm giá đặc biệt','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(16,6,'Công nghệ nổi bật','sliders/2-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(17,6,'Giảm giá lớn nhất từ','sliders/2-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(18,7,'Giảm giá đặc biệt','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(19,7,'Công nghệ nổi bật','sliders/3-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(20,8,'Giảm giá đặc biệt','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(21,8,'Công nghệ nổi bật','sliders/4-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2022-09-27 01:54:09','2022-09-27 01:54:09'),(22,8,'Giảm giá lớn nhất từ','sliders/4-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2022-09-27 01:54:09','2022-09-27 01:54:09');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(5,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(6,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(7,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09'),(8,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-09-27 01:54:09','2022-09-27 01:54:09');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-09-27 01:53:54','2022-09-27 01:53:54'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(10,'home-audio-theaters',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(11,'tv-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(12,'camera-photos-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(13,'cellphones-accessories',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(14,'headphones',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(15,'videos-games',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(16,'wireless-speakers',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(17,'office-electronic',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(18,'clothing',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(19,'computers',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(20,'computer-tablets',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(21,'laptop',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(22,'monitors',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(23,'computer-components',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(24,'home-kitchen',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(25,'health-beauty',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(26,'jewelry-watch',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(27,'technology-toys',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(28,'drive-storages',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(29,'gaming-laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(30,'security-protection',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(31,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(32,'phones',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(33,'babies-moms',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(34,'sport-outdoor',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(35,'books-office',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(36,'cars-motorcycles',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(37,'home-improvements',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-09-27 01:53:55','2022-09-27 01:53:55'),(38,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-27 01:53:55','2022-09-27 01:53:55'),(39,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-27 01:53:55','2022-09-27 01:53:55'),(40,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-27 01:53:55','2022-09-27 01:53:55'),(41,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-27 01:53:55','2022-09-27 01:53:55'),(42,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-09-27 01:53:55','2022-09-27 01:53:55'),(43,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(44,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(45,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(46,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(47,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(48,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(49,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(50,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(51,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(52,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(53,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(54,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(55,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(56,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(57,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(58,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(59,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(60,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(61,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(62,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(63,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(64,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(65,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(66,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2022-09-27 01:54:04','2022-09-27 01:54:04'),(67,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(68,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(69,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(70,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(71,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-09-27 01:54:11','2022-09-27 01:54:11'),(72,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-09-27 01:54:11','2022-09-27 01:54:11'),(73,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-09-27 01:54:11','2022-09-27 01:54:11'),(74,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-09-27 01:54:11','2022-09-27 01:54:11'),(75,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-09-27 01:54:11','2022-09-27 01:54:11'),(76,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(77,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(78,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(79,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(80,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(81,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(82,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(83,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(84,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(85,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(86,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-09-27 01:54:11','2022-09-27 01:54:11'),(87,'homepage',1,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(88,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(89,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(90,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(91,'blog',5,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(92,'contact',6,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(93,'about-us',7,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(94,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(95,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(96,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(97,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(98,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(99,'blog-left-sidebar',13,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11'),(100,'faq',14,'Botble\\Page\\Models\\Page','','2022-09-27 01:54:11','2022-09-27 01:54:11');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-09-27 01:54:11','2022-09-27 01:54:11'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-09-27 01:54:11','2022-09-27 01:54:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4770 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$yHzJ6U7MOPrlfqpW9NxWrOsCkMqx/dwsX2Djyn6JLg98N2yzRPoKW',NULL,'2022-09-27 01:54:11','2022-09-27 01:54:11','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','wowy',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(2,'CustomMenuWidget','footer_sidebar','wowy',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(3,'CustomMenuWidget','footer_sidebar','wowy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(4,'PaymentMethodsWidget','footer_sidebar','wowy',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Payments\",\"description\":\"Secured Payment Gateways\",\"image\":\"general\\/payment-methods.png\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(5,'BlogSearchWidget','primary_sidebar','wowy',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(6,'BlogCategoriesWidget','primary_sidebar','wowy',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(7,'RecentPostsWidget','primary_sidebar','wowy',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(8,'TagsWidget','primary_sidebar','wowy',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(9,'ProductCategoriesWidget','product_sidebar','wowy',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(10,'FeaturedProductsWidget','product_sidebar','wowy',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(11,'FeaturedBrandsWidget','product_sidebar','wowy',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(12,'SiteInfoWidget','footer_sidebar','wowy-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(13,'CustomMenuWidget','footer_sidebar','wowy-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(14,'CustomMenuWidget','footer_sidebar','wowy-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(15,'PaymentMethodsWidget','footer_sidebar','wowy-vi',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Thanh to\\u00e1n\",\"description\":\"C\\u1ed5ng thanh to\\u00e1n an to\\u00e0n\",\"image\":\"general\\/payment-methods.png\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(16,'BlogSearchWidget','primary_sidebar','wowy-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(17,'BlogCategoriesWidget','primary_sidebar','wowy-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(18,'RecentPostsWidget','primary_sidebar','wowy-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(19,'TagsWidget','primary_sidebar','wowy-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(20,'ProductCategoriesWidget','product_sidebar','wowy-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(21,'FeaturedProductsWidget','product_sidebar','wowy-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-09-27 01:54:12','2022-09-27 01:54:12'),(22,'FeaturedBrandsWidget','product_sidebar','wowy-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-09-27 01:54:12','2022-09-27 01:54:12');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 15:54:30