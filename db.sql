-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: estudiomorieldb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::content-manager.explorer.create','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2023-01-09 13:27:58.747000','2023-01-09 13:27:58.747000',NULL,NULL),(2,'plugin::content-manager.explorer.create','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2023-01-09 13:27:58.758000','2023-01-09 13:27:58.758000',NULL,NULL),(3,'plugin::content-manager.explorer.create','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[]','2023-01-09 13:27:58.767000','2023-01-09 13:27:58.767000',NULL,NULL),(4,'plugin::content-manager.explorer.create','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[]','2023-01-09 13:27:58.777000','2023-01-09 13:27:58.777000',NULL,NULL),(5,'plugin::content-manager.explorer.create','api::home.home','{\"fields\": [\"title\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[]','2023-01-09 13:27:58.790000','2023-01-09 17:42:30.869000',NULL,NULL),(6,'plugin::content-manager.explorer.read','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2023-01-09 13:27:58.798000','2023-01-09 13:27:58.798000',NULL,NULL),(7,'plugin::content-manager.explorer.read','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2023-01-09 13:27:58.808000','2023-01-09 13:27:58.808000',NULL,NULL),(8,'plugin::content-manager.explorer.read','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[]','2023-01-09 13:27:58.820000','2023-01-09 13:27:58.820000',NULL,NULL),(9,'plugin::content-manager.explorer.read','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[]','2023-01-09 13:27:58.830000','2023-01-09 13:27:58.830000',NULL,NULL),(10,'plugin::content-manager.explorer.read','api::home.home','{\"fields\": [\"title\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[]','2023-01-09 13:27:58.840000','2023-01-09 17:42:30.869000',NULL,NULL),(11,'plugin::content-manager.explorer.update','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2023-01-09 13:27:58.851000','2023-01-09 13:27:58.851000',NULL,NULL),(12,'plugin::content-manager.explorer.update','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2023-01-09 13:27:58.860000','2023-01-09 13:27:58.860000',NULL,NULL),(13,'plugin::content-manager.explorer.update','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[]','2023-01-09 13:27:58.869000','2023-01-09 13:27:58.869000',NULL,NULL),(14,'plugin::content-manager.explorer.update','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[]','2023-01-09 13:27:58.877000','2023-01-09 13:27:58.877000',NULL,NULL),(15,'plugin::content-manager.explorer.update','api::home.home','{\"fields\": [\"title\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[]','2023-01-09 13:27:58.884000','2023-01-09 17:42:30.869000',NULL,NULL),(16,'plugin::content-manager.explorer.delete','plugin::ezforms.submission','{}','[]','2023-01-09 13:27:58.895000','2023-01-09 13:27:58.895000',NULL,NULL),(17,'plugin::content-manager.explorer.delete','plugin::ezforms.recipient','{}','[]','2023-01-09 13:27:58.903000','2023-01-09 13:27:58.903000',NULL,NULL),(18,'plugin::content-manager.explorer.delete','api::contact.contact','{}','[]','2023-01-09 13:27:58.911000','2023-01-09 13:27:58.911000',NULL,NULL),(19,'plugin::content-manager.explorer.delete','api::general.general','{}','[]','2023-01-09 13:27:58.920000','2023-01-09 13:27:58.920000',NULL,NULL),(20,'plugin::content-manager.explorer.delete','api::home.home','{}','[]','2023-01-09 13:27:58.928000','2023-01-09 13:27:58.928000',NULL,NULL),(21,'plugin::content-manager.explorer.publish','api::contact.contact','{}','[]','2023-01-09 13:27:58.937000','2023-01-09 13:27:58.937000',NULL,NULL),(22,'plugin::content-manager.explorer.publish','api::general.general','{}','[]','2023-01-09 13:27:58.945000','2023-01-09 13:27:58.945000',NULL,NULL),(23,'plugin::content-manager.explorer.publish','api::home.home','{}','[]','2023-01-09 13:27:58.954000','2023-01-09 13:27:58.954000',NULL,NULL),(24,'plugin::upload.read',NULL,'{}','[]','2023-01-09 13:27:58.961000','2023-01-09 13:27:58.961000',NULL,NULL),(25,'plugin::upload.configure-view',NULL,'{}','[]','2023-01-09 13:27:58.971000','2023-01-09 13:27:58.971000',NULL,NULL),(26,'plugin::upload.assets.create',NULL,'{}','[]','2023-01-09 13:27:58.979000','2023-01-09 13:27:58.979000',NULL,NULL),(27,'plugin::upload.assets.update',NULL,'{}','[]','2023-01-09 13:27:58.988000','2023-01-09 13:27:58.988000',NULL,NULL),(28,'plugin::upload.assets.download',NULL,'{}','[]','2023-01-09 13:27:58.997000','2023-01-09 13:27:58.997000',NULL,NULL),(29,'plugin::upload.assets.copy-link',NULL,'{}','[]','2023-01-09 13:27:59.007000','2023-01-09 13:27:59.007000',NULL,NULL),(30,'plugin::content-manager.explorer.create','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.024000','2023-01-09 13:27:59.024000',NULL,NULL),(31,'plugin::content-manager.explorer.create','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.034000','2023-01-09 13:27:59.034000',NULL,NULL),(32,'plugin::content-manager.explorer.create','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.047000','2023-01-09 13:27:59.047000',NULL,NULL),(33,'plugin::content-manager.explorer.create','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.057000','2023-01-09 13:27:59.057000',NULL,NULL),(34,'plugin::content-manager.explorer.create','api::home.home','{\"fields\": [\"title\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.064000','2023-01-09 17:42:30.869000',NULL,NULL),(35,'plugin::content-manager.explorer.read','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.073000','2023-01-09 13:27:59.073000',NULL,NULL),(36,'plugin::content-manager.explorer.read','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.083000','2023-01-09 13:27:59.083000',NULL,NULL),(37,'plugin::content-manager.explorer.read','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.091000','2023-01-09 13:27:59.091000',NULL,NULL),(38,'plugin::content-manager.explorer.read','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.099000','2023-01-09 13:27:59.099000',NULL,NULL),(39,'plugin::content-manager.explorer.read','api::home.home','{\"fields\": [\"title\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.107000','2023-01-09 17:42:30.870000',NULL,NULL),(40,'plugin::content-manager.explorer.update','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.116000','2023-01-09 13:27:59.116000',NULL,NULL),(41,'plugin::content-manager.explorer.update','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.128000','2023-01-09 13:27:59.128000',NULL,NULL),(42,'plugin::content-manager.explorer.update','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.137000','2023-01-09 13:27:59.137000',NULL,NULL),(43,'plugin::content-manager.explorer.update','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.147000','2023-01-09 13:27:59.147000',NULL,NULL),(44,'plugin::content-manager.explorer.update','api::home.home','{\"fields\": [\"title\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[\"admin::is-creator\"]','2023-01-09 13:27:59.157000','2023-01-09 17:42:30.870000',NULL,NULL),(45,'plugin::content-manager.explorer.delete','plugin::ezforms.submission','{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.164000','2023-01-09 13:27:59.164000',NULL,NULL),(46,'plugin::content-manager.explorer.delete','plugin::ezforms.recipient','{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.173000','2023-01-09 13:27:59.173000',NULL,NULL),(47,'plugin::content-manager.explorer.delete','api::contact.contact','{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.181000','2023-01-09 13:27:59.181000',NULL,NULL),(48,'plugin::content-manager.explorer.delete','api::general.general','{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.193000','2023-01-09 13:27:59.193000',NULL,NULL),(49,'plugin::content-manager.explorer.delete','api::home.home','{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.204000','2023-01-09 13:27:59.204000',NULL,NULL),(50,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.214000','2023-01-09 13:27:59.214000',NULL,NULL),(51,'plugin::upload.configure-view',NULL,'{}','[]','2023-01-09 13:27:59.223000','2023-01-09 13:27:59.223000',NULL,NULL),(52,'plugin::upload.assets.create',NULL,'{}','[]','2023-01-09 13:27:59.233000','2023-01-09 13:27:59.233000',NULL,NULL),(53,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2023-01-09 13:27:59.242000','2023-01-09 13:27:59.242000',NULL,NULL),(54,'plugin::upload.assets.download',NULL,'{}','[]','2023-01-09 13:27:59.252000','2023-01-09 13:27:59.252000',NULL,NULL),(55,'plugin::upload.assets.copy-link',NULL,'{}','[]','2023-01-09 13:27:59.262000','2023-01-09 13:27:59.262000',NULL,NULL),(56,'plugin::content-manager.explorer.create','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2023-01-09 13:27:59.331000','2023-01-09 13:27:59.331000',NULL,NULL),(57,'plugin::content-manager.explorer.create','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2023-01-09 13:27:59.339000','2023-01-09 13:27:59.339000',NULL,NULL),(58,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2023-01-09 13:27:59.350000','2023-01-09 13:27:59.350000',NULL,NULL),(59,'plugin::content-manager.explorer.create','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[]','2023-01-09 13:27:59.359000','2023-01-09 13:27:59.359000',NULL,NULL),(60,'plugin::content-manager.explorer.create','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[]','2023-01-09 13:27:59.366000','2023-01-09 13:27:59.366000',NULL,NULL),(62,'plugin::content-manager.explorer.read','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2023-01-09 13:27:59.382000','2023-01-09 13:27:59.382000',NULL,NULL),(63,'plugin::content-manager.explorer.read','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2023-01-09 13:27:59.397000','2023-01-09 13:27:59.397000',NULL,NULL),(64,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2023-01-09 13:27:59.406000','2023-01-09 13:27:59.406000',NULL,NULL),(65,'plugin::content-manager.explorer.read','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[]','2023-01-09 13:27:59.414000','2023-01-09 13:27:59.414000',NULL,NULL),(66,'plugin::content-manager.explorer.read','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[]','2023-01-09 13:27:59.423000','2023-01-09 13:27:59.423000',NULL,NULL),(68,'plugin::content-manager.explorer.update','plugin::ezforms.submission','{\"fields\": [\"score\", \"formName\", \"data\"]}','[]','2023-01-09 13:27:59.440000','2023-01-09 13:27:59.440000',NULL,NULL),(69,'plugin::content-manager.explorer.update','plugin::ezforms.recipient','{\"fields\": [\"name\", \"email\", \"number\"]}','[]','2023-01-09 13:27:59.448000','2023-01-09 13:27:59.448000',NULL,NULL),(70,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2023-01-09 13:27:59.457000','2023-01-09 13:27:59.457000',NULL,NULL),(71,'plugin::content-manager.explorer.update','api::contact.contact','{\"fields\": [\"title\", \"subtitle\", \"form\", \"messages\"]}','[]','2023-01-09 13:27:59.465000','2023-01-09 13:27:59.465000',NULL,NULL),(72,'plugin::content-manager.explorer.update','api::general.general','{\"fields\": [\"lbl_see_services\", \"lbl_send\", \"lbl_book_now\", \"lbl_number\", \"logo\", \"email\", \"address\", \"url_map\", \"menu.label\", \"menu.url\", \"tag_manager\", \"facebook_id\", \"pixel_facebook\", \"social_networks.type\", \"social_networks.url\"]}','[]','2023-01-09 13:27:59.474000','2023-01-09 13:27:59.474000',NULL,NULL),(74,'plugin::content-manager.explorer.delete','plugin::ezforms.submission','{}','[]','2023-01-09 13:27:59.494000','2023-01-09 13:27:59.494000',NULL,NULL),(75,'plugin::content-manager.explorer.delete','plugin::ezforms.recipient','{}','[]','2023-01-09 13:27:59.503000','2023-01-09 13:27:59.503000',NULL,NULL),(76,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2023-01-09 13:27:59.511000','2023-01-09 13:27:59.511000',NULL,NULL),(77,'plugin::content-manager.explorer.delete','api::contact.contact','{}','[]','2023-01-09 13:27:59.525000','2023-01-09 13:27:59.525000',NULL,NULL),(78,'plugin::content-manager.explorer.delete','api::general.general','{}','[]','2023-01-09 13:27:59.537000','2023-01-09 13:27:59.537000',NULL,NULL),(79,'plugin::content-manager.explorer.delete','api::home.home','{}','[]','2023-01-09 13:27:59.546000','2023-01-09 13:27:59.546000',NULL,NULL),(80,'plugin::content-manager.explorer.publish','api::contact.contact','{}','[]','2023-01-09 13:27:59.555000','2023-01-09 13:27:59.555000',NULL,NULL),(81,'plugin::content-manager.explorer.publish','api::general.general','{}','[]','2023-01-09 13:27:59.563000','2023-01-09 13:27:59.563000',NULL,NULL),(82,'plugin::content-manager.explorer.publish','api::home.home','{}','[]','2023-01-09 13:27:59.573000','2023-01-09 13:27:59.573000',NULL,NULL),(83,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2023-01-09 13:27:59.581000','2023-01-09 13:27:59.581000',NULL,NULL),(84,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2023-01-09 13:27:59.590000','2023-01-09 13:27:59.590000',NULL,NULL),(85,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2023-01-09 13:27:59.598000','2023-01-09 13:27:59.598000',NULL,NULL),(86,'plugin::content-type-builder.read',NULL,'{}','[]','2023-01-09 13:27:59.612000','2023-01-09 13:27:59.612000',NULL,NULL),(87,'plugin::email.settings.read',NULL,'{}','[]','2023-01-09 13:27:59.623000','2023-01-09 13:27:59.623000',NULL,NULL),(88,'plugin::upload.read',NULL,'{}','[]','2023-01-09 13:27:59.632000','2023-01-09 13:27:59.632000',NULL,NULL),(89,'plugin::upload.assets.create',NULL,'{}','[]','2023-01-09 13:27:59.645000','2023-01-09 13:27:59.645000',NULL,NULL),(90,'plugin::upload.assets.update',NULL,'{}','[]','2023-01-09 13:27:59.654000','2023-01-09 13:27:59.654000',NULL,NULL),(91,'plugin::upload.assets.download',NULL,'{}','[]','2023-01-09 13:27:59.663000','2023-01-09 13:27:59.663000',NULL,NULL),(92,'plugin::upload.assets.copy-link',NULL,'{}','[]','2023-01-09 13:27:59.672000','2023-01-09 13:27:59.672000',NULL,NULL),(93,'plugin::upload.configure-view',NULL,'{}','[]','2023-01-09 13:27:59.683000','2023-01-09 13:27:59.683000',NULL,NULL),(94,'plugin::upload.settings.read',NULL,'{}','[]','2023-01-09 13:27:59.693000','2023-01-09 13:27:59.693000',NULL,NULL),(95,'plugin::i18n.locale.create',NULL,'{}','[]','2023-01-09 13:27:59.703000','2023-01-09 13:27:59.703000',NULL,NULL),(96,'plugin::i18n.locale.read',NULL,'{}','[]','2023-01-09 13:27:59.712000','2023-01-09 13:27:59.712000',NULL,NULL),(97,'plugin::i18n.locale.update',NULL,'{}','[]','2023-01-09 13:27:59.723000','2023-01-09 13:27:59.723000',NULL,NULL),(98,'plugin::i18n.locale.delete',NULL,'{}','[]','2023-01-09 13:27:59.731000','2023-01-09 13:27:59.731000',NULL,NULL),(99,'plugin::users-permissions.roles.create',NULL,'{}','[]','2023-01-09 13:27:59.740000','2023-01-09 13:27:59.740000',NULL,NULL),(100,'plugin::users-permissions.roles.read',NULL,'{}','[]','2023-01-09 13:27:59.748000','2023-01-09 13:27:59.748000',NULL,NULL),(101,'plugin::users-permissions.roles.update',NULL,'{}','[]','2023-01-09 13:27:59.757000','2023-01-09 13:27:59.757000',NULL,NULL),(102,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2023-01-09 13:27:59.765000','2023-01-09 13:27:59.765000',NULL,NULL),(103,'plugin::users-permissions.providers.read',NULL,'{}','[]','2023-01-09 13:27:59.774000','2023-01-09 13:27:59.774000',NULL,NULL),(104,'plugin::users-permissions.providers.update',NULL,'{}','[]','2023-01-09 13:27:59.783000','2023-01-09 13:27:59.783000',NULL,NULL),(105,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2023-01-09 13:27:59.793000','2023-01-09 13:27:59.793000',NULL,NULL),(106,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2023-01-09 13:27:59.803000','2023-01-09 13:27:59.803000',NULL,NULL),(107,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2023-01-09 13:27:59.811000','2023-01-09 13:27:59.811000',NULL,NULL),(108,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2023-01-09 13:27:59.821000','2023-01-09 13:27:59.821000',NULL,NULL),(109,'admin::marketplace.read',NULL,'{}','[]','2023-01-09 13:27:59.829000','2023-01-09 13:27:59.829000',NULL,NULL),(110,'admin::marketplace.plugins.install',NULL,'{}','[]','2023-01-09 13:27:59.838000','2023-01-09 13:27:59.838000',NULL,NULL),(111,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2023-01-09 13:27:59.846000','2023-01-09 13:27:59.846000',NULL,NULL),(112,'admin::webhooks.create',NULL,'{}','[]','2023-01-09 13:27:59.855000','2023-01-09 13:27:59.855000',NULL,NULL),(113,'admin::webhooks.read',NULL,'{}','[]','2023-01-09 13:27:59.863000','2023-01-09 13:27:59.863000',NULL,NULL),(114,'admin::webhooks.update',NULL,'{}','[]','2023-01-09 13:27:59.872000','2023-01-09 13:27:59.872000',NULL,NULL),(115,'admin::webhooks.delete',NULL,'{}','[]','2023-01-09 13:27:59.880000','2023-01-09 13:27:59.880000',NULL,NULL),(116,'admin::users.create',NULL,'{}','[]','2023-01-09 13:27:59.889000','2023-01-09 13:27:59.889000',NULL,NULL),(117,'admin::users.read',NULL,'{}','[]','2023-01-09 13:27:59.897000','2023-01-09 13:27:59.897000',NULL,NULL),(118,'admin::users.update',NULL,'{}','[]','2023-01-09 13:27:59.905000','2023-01-09 13:27:59.905000',NULL,NULL),(119,'admin::users.delete',NULL,'{}','[]','2023-01-09 13:27:59.915000','2023-01-09 13:27:59.915000',NULL,NULL),(120,'admin::roles.create',NULL,'{}','[]','2023-01-09 13:27:59.925000','2023-01-09 13:27:59.925000',NULL,NULL),(121,'admin::roles.read',NULL,'{}','[]','2023-01-09 13:27:59.931000','2023-01-09 13:27:59.931000',NULL,NULL),(122,'admin::roles.update',NULL,'{}','[]','2023-01-09 13:27:59.939000','2023-01-09 13:27:59.939000',NULL,NULL),(123,'admin::roles.delete',NULL,'{}','[]','2023-01-09 13:27:59.945000','2023-01-09 13:27:59.945000',NULL,NULL),(124,'admin::api-tokens.access',NULL,'{}','[]','2023-01-09 13:27:59.952000','2023-01-09 13:27:59.952000',NULL,NULL),(125,'admin::api-tokens.create',NULL,'{}','[]','2023-01-09 13:27:59.960000','2023-01-09 13:27:59.960000',NULL,NULL),(126,'admin::api-tokens.read',NULL,'{}','[]','2023-01-09 13:27:59.968000','2023-01-09 13:27:59.968000',NULL,NULL),(127,'admin::api-tokens.update',NULL,'{}','[]','2023-01-09 13:27:59.975000','2023-01-09 13:27:59.975000',NULL,NULL),(128,'admin::api-tokens.regenerate',NULL,'{}','[]','2023-01-09 13:27:59.984000','2023-01-09 13:27:59.984000',NULL,NULL),(129,'admin::api-tokens.delete',NULL,'{}','[]','2023-01-09 13:27:59.991000','2023-01-09 13:27:59.991000',NULL,NULL),(130,'admin::project-settings.update',NULL,'{}','[]','2023-01-09 13:27:59.999000','2023-01-09 13:27:59.999000',NULL,NULL),(131,'admin::project-settings.read',NULL,'{}','[]','2023-01-09 13:28:00.006000','2023-01-09 13:28:00.006000',NULL,NULL),(144,'plugin::content-manager.explorer.create','api::home.home','{\"fields\": [\"title\", \"HomeBanner.subtitle\", \"HomeBanner.bg\", \"HomeBanner.bg_mob\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeAbout.list.title\", \"HomeAbout.list.icon\", \"characteristic.title\", \"characteristic.description\", \"characteristic.icon\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[]','2023-01-09 17:42:30.756000','2023-01-09 17:42:30.756000',NULL,NULL),(145,'plugin::content-manager.explorer.read','api::home.home','{\"fields\": [\"title\", \"HomeBanner.subtitle\", \"HomeBanner.bg\", \"HomeBanner.bg_mob\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeAbout.list.title\", \"HomeAbout.list.icon\", \"characteristic.title\", \"characteristic.description\", \"characteristic.icon\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[]','2023-01-09 17:42:30.771000','2023-01-09 17:42:30.771000',NULL,NULL),(146,'plugin::content-manager.explorer.update','api::home.home','{\"fields\": [\"title\", \"HomeBanner.subtitle\", \"HomeBanner.bg\", \"HomeBanner.bg_mob\", \"HomeBanner.title\", \"HomeService.titles.title\", \"HomeService.titles.subtitle\", \"HomeService.cardService.title\", \"HomeService.cardService.content\", \"HomeService.cardService.img\", \"HomeService.cardService.img_mobile\", \"HomeAbout.titles.title\", \"HomeAbout.titles.subtitle\", \"HomeAbout.content\", \"HomeAbout.img\", \"HomeAbout.list.title\", \"HomeAbout.list.icon\", \"characteristic.title\", \"characteristic.description\", \"characteristic.icon\", \"HomeBlog.titles.title\", \"HomeBlog.titles.subtitle\", \"HomeBlog.cardArticle.title\", \"HomeBlog.cardArticle.subtitle\", \"HomeBlog.cardArticle.content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.metaSocial.socialNetwork\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicaURL\"]}','[]','2023-01-09 17:42:30.782000','2023-01-09 17:42:30.782000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,1,2,1),(2,2,2,2),(3,3,2,3),(4,4,2,4),(5,5,2,5),(6,6,2,6),(7,7,2,7),(8,8,2,8),(9,9,2,9),(10,10,2,10),(11,11,2,11),(12,12,2,12),(13,13,2,13),(14,14,2,14),(15,15,2,15),(16,16,2,16),(17,17,2,17),(18,18,2,18),(19,19,2,19),(20,20,2,20),(21,21,2,21),(22,22,2,22),(23,23,2,23),(24,24,2,24),(25,25,2,25),(26,26,2,26),(27,27,2,27),(28,28,2,28),(29,29,2,29),(30,30,3,1),(31,31,3,2),(32,32,3,3),(33,33,3,4),(34,34,3,5),(35,35,3,6),(36,36,3,7),(37,37,3,8),(38,38,3,9),(39,39,3,10),(40,40,3,11),(41,41,3,12),(42,42,3,13),(43,43,3,14),(44,44,3,15),(45,45,3,16),(46,46,3,17),(47,47,3,18),(48,48,3,19),(49,49,3,20),(50,50,3,21),(51,51,3,22),(52,52,3,23),(53,53,3,24),(54,54,3,25),(55,55,3,26),(56,56,1,1),(57,57,1,2),(58,58,1,3),(59,59,1,4),(60,60,1,5),(62,62,1,7),(63,63,1,8),(64,64,1,9),(65,65,1,10),(66,66,1,11),(68,68,1,13),(69,69,1,14),(70,70,1,15),(71,71,1,16),(72,72,1,17),(74,74,1,19),(75,75,1,20),(76,76,1,21),(77,77,1,22),(78,78,1,23),(79,79,1,24),(80,80,1,25),(81,81,1,26),(82,82,1,27),(83,83,1,28),(84,84,1,29),(85,85,1,30),(86,86,1,31),(87,87,1,32),(88,88,1,33),(89,89,1,34),(90,90,1,35),(91,91,1,36),(92,92,1,37),(93,93,1,38),(94,94,1,39),(95,95,1,40),(96,96,1,41),(97,97,1,42),(98,98,1,43),(99,99,1,44),(100,100,1,45),(101,101,1,46),(102,102,1,47),(103,103,1,48),(104,104,1,49),(105,105,1,50),(106,106,1,51),(107,107,1,52),(108,108,1,53),(109,109,1,54),(110,110,1,55),(111,111,1,56),(112,112,1,57),(113,113,1,58),(114,114,1,59),(115,115,1,60),(116,116,1,61),(117,117,1,62),(118,118,1,63),(119,119,1,64),(120,120,1,65),(121,121,1,66),(122,122,1,67),(123,123,1,68),(124,124,1,69),(125,125,1,70),(126,126,1,71),(127,127,1,72),(128,128,1,73),(129,129,1,74),(130,130,1,75),(131,131,1,76),(144,144,1,77),(145,145,1,78),(146,146,1,79);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2023-01-09 13:27:58.693000','2023-01-09 13:27:58.693000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2023-01-09 13:27:58.710000','2023-01-09 13:27:58.710000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2023-01-09 13:27:58.717000','2023-01-09 13:27:58.717000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Roy','Cerdan',NULL,'science.kshmr@gmail.com','$2a$10$nX1DuidG3DR1VzEiEibrd.NCAP3zKk/sM.IRzH5CtrG8NY43gyUba',NULL,NULL,1,0,NULL,'2023-01-09 13:28:27.448000','2023-01-09 13:28:27.448000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_abouts`
--

DROP TABLE IF EXISTS `components_blocks_home_abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_abouts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_abouts`
--

LOCK TABLES `components_blocks_home_abouts` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_abouts` DISABLE KEYS */;
INSERT INTO `components_blocks_home_abouts` VALUES (1,'En Estudio jurídico Moriel & asociados, creemos en el trabajo de equipo como pilar fundamental para lograr mejores y mayores resultados. Por ello, conformamos un grupo humano con alta cohesión interna. \n\nApuntamos a la especialización en las diversas áreas del derecho y de la constante actualización de nuestros conocimientos jurídico.');
/*!40000 ALTER TABLE `components_blocks_home_abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_abouts_components`
--

DROP TABLE IF EXISTS `components_blocks_home_abouts_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_abouts_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_blocks_home_abouts_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_blocks_home_abouts_field_index` (`field`),
  KEY `components_blocks_home_abouts_component_type_index` (`component_type`),
  KEY `components_blocks_home_abouts_entity_fk` (`entity_id`),
  CONSTRAINT `components_blocks_home_abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_blocks_home_abouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_abouts_components`
--

LOCK TABLES `components_blocks_home_abouts_components` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_abouts_components` DISABLE KEYS */;
INSERT INTO `components_blocks_home_abouts_components` VALUES (1,1,2,'shared.titles','titles',2),(20,1,1,'shared.about-list','list',1),(24,1,2,'shared.about-list','list',2);
/*!40000 ALTER TABLE `components_blocks_home_abouts_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_banners`
--

DROP TABLE IF EXISTS `components_blocks_home_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_banners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_banners`
--

LOCK TABLES `components_blocks_home_banners` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_banners` DISABLE KEYS */;
INSERT INTO `components_blocks_home_banners` VALUES (1,'WE IMPROVE YOUR SALES EFFICIENCY','The government they survive artical of fortune'),(2,'WE IMPROVE YOUR SALES EFFICIENCY','The government they survive artical of fortune'),(3,'WE IMPROVE YOUR SALES EFFICIENCY','The government they survive artical of fortune');
/*!40000 ALTER TABLE `components_blocks_home_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_blogs`
--

DROP TABLE IF EXISTS `components_blocks_home_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_blogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_blogs`
--

LOCK TABLES `components_blocks_home_blogs` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_blogs` DISABLE KEYS */;
INSERT INTO `components_blocks_home_blogs` VALUES (1);
/*!40000 ALTER TABLE `components_blocks_home_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_blogs_components`
--

DROP TABLE IF EXISTS `components_blocks_home_blogs_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_blogs_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_blocks_home_blogs_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_blocks_home_blogs_field_index` (`field`),
  KEY `components_blocks_home_blogs_component_type_index` (`component_type`),
  KEY `components_blocks_home_blogs_entity_fk` (`entity_id`),
  CONSTRAINT `components_blocks_home_blogs_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_blocks_home_blogs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_blogs_components`
--

LOCK TABLES `components_blocks_home_blogs_components` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_blogs_components` DISABLE KEYS */;
INSERT INTO `components_blocks_home_blogs_components` VALUES (1,1,3,'shared.titles','titles',2),(2,1,1,'shared.card-article','cardArticle',1);
/*!40000 ALTER TABLE `components_blocks_home_blogs_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_characs`
--

DROP TABLE IF EXISTS `components_blocks_home_characs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_characs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_characs`
--

LOCK TABLES `components_blocks_home_characs` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_characs` DISABLE KEYS */;
INSERT INTO `components_blocks_home_characs` VALUES (1,'awfawf',NULL),(2,'Consumer Insights','The east side to a deluxe apartment in move on up to the east side'),(3,'Thought Leadership','The east side to a deluxe apartment in move on up to the east side'),(4,'Emerging Ideas','The east side to a deluxe apartment in move on up to the east side'),(5,'Marketing Goals','The east side to a deluxe apartment in move on up to the east side');
/*!40000 ALTER TABLE `components_blocks_home_characs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_services`
--

DROP TABLE IF EXISTS `components_blocks_home_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_services`
--

LOCK TABLES `components_blocks_home_services` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_services` DISABLE KEYS */;
INSERT INTO `components_blocks_home_services` VALUES (1);
/*!40000 ALTER TABLE `components_blocks_home_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_blocks_home_services_components`
--

DROP TABLE IF EXISTS `components_blocks_home_services_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_blocks_home_services_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_blocks_home_services_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_blocks_home_services_field_index` (`field`),
  KEY `components_blocks_home_services_component_type_index` (`component_type`),
  KEY `components_blocks_home_services_entity_fk` (`entity_id`),
  CONSTRAINT `components_blocks_home_services_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_blocks_home_services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_blocks_home_services_components`
--

LOCK TABLES `components_blocks_home_services_components` WRITE;
/*!40000 ALTER TABLE `components_blocks_home_services_components` DISABLE KEYS */;
INSERT INTO `components_blocks_home_services_components` VALUES (1,1,1,'shared.titles','titles',2),(2,1,1,'shared.card-service','cardService',1);
/*!40000 ALTER TABLE `components_blocks_home_services_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_about_lists`
--

DROP TABLE IF EXISTS `components_shared_about_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_about_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_about_lists`
--

LOCK TABLES `components_shared_about_lists` WRITE;
/*!40000 ALTER TABLE `components_shared_about_lists` DISABLE KEYS */;
INSERT INTO `components_shared_about_lists` VALUES (1,'Vision'),(2,'Mision');
/*!40000 ALTER TABLE `components_shared_about_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_card_articles`
--

DROP TABLE IF EXISTS `components_shared_card_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_card_articles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_card_articles`
--

LOCK TABLES `components_shared_card_articles` WRITE;
/*!40000 ALTER TABLE `components_shared_card_articles` DISABLE KEYS */;
INSERT INTO `components_shared_card_articles` VALUES (1,'wfAf','awf','awfF');
/*!40000 ALTER TABLE `components_shared_card_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_card_charas`
--

DROP TABLE IF EXISTS `components_shared_card_charas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_card_charas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_card_charas`
--

LOCK TABLES `components_shared_card_charas` WRITE;
/*!40000 ALTER TABLE `components_shared_card_charas` DISABLE KEYS */;
INSERT INTO `components_shared_card_charas` VALUES (1,'awff');
/*!40000 ALTER TABLE `components_shared_card_charas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_card_services`
--

DROP TABLE IF EXISTS `components_shared_card_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_card_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_card_services`
--

LOCK TABLES `components_shared_card_services` WRITE;
/*!40000 ALTER TABLE `components_shared_card_services` DISABLE KEYS */;
INSERT INTO `components_shared_card_services` VALUES (1,'wafaf','awfFAW');
/*!40000 ALTER TABLE `components_shared_card_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_contacts`
--

DROP TABLE IF EXISTS `components_shared_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `form` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_contacts`
--

LOCK TABLES `components_shared_contacts` WRITE;
/*!40000 ALTER TABLE `components_shared_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_menus`
--

DROP TABLE IF EXISTS `components_shared_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_menus`
--

LOCK TABLES `components_shared_menus` WRITE;
/*!40000 ALTER TABLE `components_shared_menus` DISABLE KEYS */;
INSERT INTO `components_shared_menus` VALUES (1,'Home','/'),(2,'About Us','about');
/*!40000 ALTER TABLE `components_shared_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_meta_socials`
--

DROP TABLE IF EXISTS `components_shared_meta_socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_meta_socials` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_meta_socials`
--

LOCK TABLES `components_shared_meta_socials` WRITE;
/*!40000 ALTER TABLE `components_shared_meta_socials` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_meta_socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_seos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `keywords` varchar(255) DEFAULT NULL,
  `meta_robots` varchar(255) DEFAULT NULL,
  `structured_data` json DEFAULT NULL,
  `meta_viewport` varchar(255) DEFAULT NULL,
  `canonica_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos`
--

LOCK TABLES `components_shared_seos` WRITE;
/*!40000 ALTER TABLE `components_shared_seos` DISABLE KEYS */;
INSERT INTO `components_shared_seos` VALUES (1,'Mi Tierra','AWFawffAwf awfgaG gaegaegEG gggAEgag',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `components_shared_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos_components`
--

DROP TABLE IF EXISTS `components_shared_seos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_seos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_shared_seos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_shared_seos_field_index` (`field`),
  KEY `components_shared_seos_component_type_index` (`component_type`),
  KEY `components_shared_seos_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_seos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_seos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos_components`
--

LOCK TABLES `components_shared_seos_components` WRITE;
/*!40000 ALTER TABLE `components_shared_seos_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_shared_seos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_social_networks`
--

DROP TABLE IF EXISTS `components_shared_social_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_social_networks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_social_networks`
--

LOCK TABLES `components_shared_social_networks` WRITE;
/*!40000 ALTER TABLE `components_shared_social_networks` DISABLE KEYS */;
INSERT INTO `components_shared_social_networks` VALUES (1,'Instagram',NULL);
/*!40000 ALTER TABLE `components_shared_social_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_titles`
--

DROP TABLE IF EXISTS `components_shared_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_titles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_titles`
--

LOCK TABLES `components_shared_titles` WRITE;
/*!40000 ALTER TABLE `components_shared_titles` DISABLE KEYS */;
INSERT INTO `components_shared_titles` VALUES (1,'WAF','wfa'),(2,'Moriel & Asociados','Sobre el estudio jurídico'),(3,'wfaf','awf');
/*!40000 ALTER TABLE `components_shared_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `form` json DEFAULT NULL,
  `messages` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_created_by_id_fk` (`created_by_id`),
  KEY `contacts_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `contacts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `contacts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'FAFWA',NULL,NULL,NULL,'2023-01-09 13:31:53.242000','2023-01-09 13:31:54.890000','2023-01-09 13:31:54.885000',1,1);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforms_recipient`
--

DROP TABLE IF EXISTS `ezforms_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ezforms_recipient` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezforms_recipient_created_by_id_fk` (`created_by_id`),
  KEY `ezforms_recipient_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `ezforms_recipient_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `ezforms_recipient_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforms_recipient`
--

LOCK TABLES `ezforms_recipient` WRITE;
/*!40000 ALTER TABLE `ezforms_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforms_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforms_submission`
--

DROP TABLE IF EXISTS `ezforms_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ezforms_submission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `score` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezforms_submission_created_by_id_fk` (`created_by_id`),
  KEY `ezforms_submission_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `ezforms_submission_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `ezforms_submission_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforms_submission`
--

LOCK TABLES `ezforms_submission` WRITE;
/*!40000 ALTER TABLE `ezforms_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforms_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `upload_files_created_at_index` (`created_at`),
  KEY `upload_files_updated_at_index` (`updated_at`),
  KEY `upload_files_name_index` (`name`),
  KEY `upload_files_size_index` (`size`),
  KEY `upload_files_ext_index` (`ext`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'solar-on-roof.webp',NULL,NULL,1200,630,'{\"large\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_solar_on_roof_b8d7390c2a.webp\", \"hash\": \"large_solar_on_roof_b8d7390c2a\", \"mime\": \"image/webp\", \"name\": \"large_solar-on-roof.webp\", \"path\": null, \"size\": 122.4, \"width\": 1000, \"height\": 525}, \"small\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_solar_on_roof_b8d7390c2a.webp\", \"hash\": \"small_solar_on_roof_b8d7390c2a\", \"mime\": \"image/webp\", \"name\": \"small_solar-on-roof.webp\", \"path\": null, \"size\": 38.84, \"width\": 500, \"height\": 262}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_solar_on_roof_b8d7390c2a.webp\", \"hash\": \"medium_solar_on_roof_b8d7390c2a\", \"mime\": \"image/webp\", \"name\": \"medium_solar-on-roof.webp\", \"path\": null, \"size\": 80.42, \"width\": 750, \"height\": 394}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_solar_on_roof_b8d7390c2a.webp\", \"hash\": \"thumbnail_solar_on_roof_b8d7390c2a\", \"mime\": \"image/webp\", \"name\": \"thumbnail_solar-on-roof.webp\", \"path\": null, \"size\": 10.35, \"width\": 245, \"height\": 129}}','solar_on_roof_b8d7390c2a','.webp','image/webp',100.28,'https://amgwebsites.s3.amazonaws.com/solar_on_roof_b8d7390c2a.webp',NULL,'aws-s3',NULL,'/','2023-01-09 13:29:48.881000','2023-01-09 13:29:48.881000',1,1),(2,'Roof Mounted.png',NULL,NULL,500,500,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_Roof_Mounted_05eca1431e.png\", \"hash\": \"thumbnail_Roof_Mounted_05eca1431e\", \"mime\": \"image/png\", \"name\": \"thumbnail_Roof Mounted.png\", \"path\": null, \"size\": 8.34, \"width\": 156, \"height\": 156}}','Roof_Mounted_05eca1431e','.png','image/png',3.49,'https://amgwebsites.s3.amazonaws.com/Roof_Mounted_05eca1431e.png',NULL,'aws-s3',NULL,'/','2023-01-09 13:31:39.462000','2023-01-09 13:31:39.462000',1,1),(3,'about-left-bg1.jpg',NULL,NULL,578,586,'{\"small\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_about_left_bg1_e347dedb4b.jpg\", \"hash\": \"small_about_left_bg1_e347dedb4b\", \"mime\": \"image/jpeg\", \"name\": \"small_about-left-bg1.jpg\", \"path\": null, \"size\": 30.16, \"width\": 493, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_about_left_bg1_e347dedb4b.jpg\", \"hash\": \"thumbnail_about_left_bg1_e347dedb4b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_about-left-bg1.jpg\", \"path\": null, \"size\": 6.02, \"width\": 154, \"height\": 156}}','about_left_bg1_e347dedb4b','.jpg','image/jpeg',38.02,'https://amgwebsites.s3.amazonaws.com/about_left_bg1_e347dedb4b.jpg',NULL,'aws-s3',NULL,'/','2023-01-09 13:40:53.775000','2023-01-09 13:40:53.775000',1,1),(4,'scott-graham-OQMZwNd3ThU-unsplash-1024x683.webp',NULL,NULL,1024,683,'{\"large\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b.webp\", \"hash\": \"large_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b\", \"mime\": \"image/webp\", \"name\": \"large_scott-graham-OQMZwNd3ThU-unsplash-1024x683.webp\", \"path\": null, \"size\": 18.95, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b.webp\", \"hash\": \"small_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b\", \"mime\": \"image/webp\", \"name\": \"small_scott-graham-OQMZwNd3ThU-unsplash-1024x683.webp\", \"path\": null, \"size\": 8.37, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b.webp\", \"hash\": \"medium_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b\", \"mime\": \"image/webp\", \"name\": \"medium_scott-graham-OQMZwNd3ThU-unsplash-1024x683.webp\", \"path\": null, \"size\": 13.85, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b.webp\", \"hash\": \"thumbnail_scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b\", \"mime\": \"image/webp\", \"name\": \"thumbnail_scott-graham-OQMZwNd3ThU-unsplash-1024x683.webp\", \"path\": null, \"size\": 3.47, \"width\": 234, \"height\": 156}}','scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b','.webp','image/webp',23.07,'https://amgwebsites.s3.amazonaws.com/scott_graham_OQM_Zw_Nd3_Th_U_unsplash_1024x683_692dc2794b.webp',NULL,'aws-s3',NULL,'/','2023-01-09 13:42:14.919000','2023-01-09 13:42:14.919000',1,1),(5,'smiling-millennial-couple-listening-asian-advisor-lawyer-consulting-customers-1024x683.webp',NULL,NULL,1024,683,'{\"large\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0.webp\", \"hash\": \"large_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0\", \"mime\": \"image/webp\", \"name\": \"large_smiling-millennial-couple-listening-asian-advisor-lawyer-consulting-customers-1024x683.webp\", \"path\": null, \"size\": 27.96, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0.webp\", \"hash\": \"small_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0\", \"mime\": \"image/webp\", \"name\": \"small_smiling-millennial-couple-listening-asian-advisor-lawyer-consulting-customers-1024x683.webp\", \"path\": null, \"size\": 12.84, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0.webp\", \"hash\": \"medium_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0\", \"mime\": \"image/webp\", \"name\": \"medium_smiling-millennial-couple-listening-asian-advisor-lawyer-consulting-customers-1024x683.webp\", \"path\": null, \"size\": 20.7, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0.webp\", \"hash\": \"thumbnail_smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0\", \"mime\": \"image/webp\", \"name\": \"thumbnail_smiling-millennial-couple-listening-asian-advisor-lawyer-consulting-customers-1024x683.webp\", \"path\": null, \"size\": 4.91, \"width\": 234, \"height\": 156}}','smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0','.webp','image/webp',34.67,'https://amgwebsites.s3.amazonaws.com/smiling_millennial_couple_listening_asian_advisor_lawyer_consulting_customers_1024x683_7e198903e0.webp',NULL,'aws-s3',NULL,'/','2023-01-09 13:42:15.339000','2023-01-09 13:42:15.339000',1,1),(6,'us.webp',NULL,NULL,677,976,'{\"small\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_us_89cf8d92d4.webp\", \"hash\": \"small_us_89cf8d92d4\", \"mime\": \"image/webp\", \"name\": \"small_us.webp\", \"path\": null, \"size\": 11.22, \"width\": 347, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_us_89cf8d92d4.webp\", \"hash\": \"medium_us_89cf8d92d4\", \"mime\": \"image/webp\", \"name\": \"medium_us.webp\", \"path\": null, \"size\": 17.06, \"width\": 520, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_us_89cf8d92d4.webp\", \"hash\": \"thumbnail_us_89cf8d92d4\", \"mime\": \"image/webp\", \"name\": \"thumbnail_us.webp\", \"path\": null, \"size\": 2.63, \"width\": 108, \"height\": 156}}','us_89cf8d92d4','.webp','image/webp',25.46,'https://amgwebsites.s3.amazonaws.com/us_89cf8d92d4.webp',NULL,'aws-s3',NULL,'/','2023-01-09 14:19:52.751000','2023-01-09 14:19:52.751000',1,1),(7,'slide-3.jpg',NULL,NULL,1920,953,'{\"large\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_slide_3_c0d238290e.jpg\", \"hash\": \"large_slide_3_c0d238290e\", \"mime\": \"image/jpeg\", \"name\": \"large_slide-3.jpg\", \"path\": null, \"size\": 35.53, \"width\": 1000, \"height\": 496}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_slide_3_c0d238290e.jpg\", \"hash\": \"small_slide_3_c0d238290e\", \"mime\": \"image/jpeg\", \"name\": \"small_slide-3.jpg\", \"path\": null, \"size\": 11.71, \"width\": 500, \"height\": 248}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_slide_3_c0d238290e.jpg\", \"hash\": \"medium_slide_3_c0d238290e\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide-3.jpg\", \"path\": null, \"size\": 22.58, \"width\": 750, \"height\": 372}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_slide_3_c0d238290e.jpg\", \"hash\": \"thumbnail_slide_3_c0d238290e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide-3.jpg\", \"path\": null, \"size\": 4.07, \"width\": 245, \"height\": 121}}','slide_3_c0d238290e','.jpg','image/jpeg',107.01,'https://amgwebsites.s3.amazonaws.com/slide_3_c0d238290e.jpg',NULL,'aws-s3',NULL,'/','2023-01-09 14:50:58.344000','2023-01-09 14:50:58.344000',1,1),(8,'slide-1.jpg',NULL,NULL,1920,780,'{\"large\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_slide_1_e62c303fc3.jpg\", \"hash\": \"large_slide_1_e62c303fc3\", \"mime\": \"image/jpeg\", \"name\": \"large_slide-1.jpg\", \"path\": null, \"size\": 26, \"width\": 1000, \"height\": 406}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_slide_1_e62c303fc3.jpg\", \"hash\": \"small_slide_1_e62c303fc3\", \"mime\": \"image/jpeg\", \"name\": \"small_slide-1.jpg\", \"path\": null, \"size\": 8.82, \"width\": 500, \"height\": 203}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_slide_1_e62c303fc3.jpg\", \"hash\": \"medium_slide_1_e62c303fc3\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide-1.jpg\", \"path\": null, \"size\": 15.99, \"width\": 750, \"height\": 305}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_slide_1_e62c303fc3.jpg\", \"hash\": \"thumbnail_slide_1_e62c303fc3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide-1.jpg\", \"path\": null, \"size\": 3.32, \"width\": 245, \"height\": 100}}','slide_1_e62c303fc3','.jpg','image/jpeg',87.18,'https://amgwebsites.s3.amazonaws.com/slide_1_e62c303fc3.jpg',NULL,'aws-s3',NULL,'/','2023-01-09 14:52:03.752000','2023-01-09 14:52:03.752000',1,1),(9,'slide-2.jpg',NULL,NULL,1920,953,'{\"large\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/large_slide_2_021cc53be6.jpg\", \"hash\": \"large_slide_2_021cc53be6\", \"mime\": \"image/jpeg\", \"name\": \"large_slide-2.jpg\", \"path\": null, \"size\": 45.78, \"width\": 1000, \"height\": 496}, \"small\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_slide_2_021cc53be6.jpg\", \"hash\": \"small_slide_2_021cc53be6\", \"mime\": \"image/jpeg\", \"name\": \"small_slide-2.jpg\", \"path\": null, \"size\": 14.27, \"width\": 500, \"height\": 248}, \"medium\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/medium_slide_2_021cc53be6.jpg\", \"hash\": \"medium_slide_2_021cc53be6\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide-2.jpg\", \"path\": null, \"size\": 28.25, \"width\": 750, \"height\": 372}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_slide_2_021cc53be6.jpg\", \"hash\": \"thumbnail_slide_2_021cc53be6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide-2.jpg\", \"path\": null, \"size\": 4.63, \"width\": 245, \"height\": 121}}','slide_2_021cc53be6','.jpg','image/jpeg',146.79,'https://amgwebsites.s3.amazonaws.com/slide_2_021cc53be6.jpg',NULL,'aws-s3',NULL,'/','2023-01-09 14:52:28.858000','2023-01-09 14:52:28.858000',1,1),(10,'1.png',NULL,NULL,82,82,NULL,'1_4115aafb18','.png','image/png',0.98,'https://amgwebsites.s3.amazonaws.com/1_4115aafb18.png',NULL,'aws-s3',NULL,'/','2023-01-09 15:26:27.262000','2023-01-09 15:26:27.262000',1,1),(11,'2.png',NULL,NULL,76,82,NULL,'2_cc25aa747d','.png','image/png',1.21,'https://amgwebsites.s3.amazonaws.com/2_cc25aa747d.png',NULL,'aws-s3',NULL,'/','2023-01-09 16:40:46.822000','2023-01-09 16:40:46.822000',1,1),(12,'3.png',NULL,NULL,71,82,NULL,'3_3c4e2b8a6c','.png','image/png',1.08,'https://amgwebsites.s3.amazonaws.com/3_3c4e2b8a6c.png',NULL,'aws-s3',NULL,'/','2023-01-09 16:40:47.349000','2023-01-09 16:40:47.349000',1,1),(13,'4.png',NULL,NULL,77,82,NULL,'4_1fdb5c252e','.png','image/png',0.50,'https://amgwebsites.s3.amazonaws.com/4_1fdb5c252e.png',NULL,'aws-s3',NULL,'/','2023-01-09 16:40:47.378000','2023-01-09 16:40:47.378000',1,1),(14,'1.jpg',NULL,NULL,550,410,'{\"small\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/small_1_27cdeccdac.jpg\", \"hash\": \"small_1_27cdeccdac\", \"mime\": \"image/jpeg\", \"name\": \"small_1.jpg\", \"path\": null, \"size\": 20.81, \"width\": 500, \"height\": 373}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"https://amgwebsites.s3.amazonaws.com/thumbnail_1_27cdeccdac.jpg\", \"hash\": \"thumbnail_1_27cdeccdac\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1.jpg\", \"path\": null, \"size\": 6.42, \"width\": 209, \"height\": 156}}','1_27cdeccdac','.jpg','image/jpeg',23.23,'https://amgwebsites.s3.amazonaws.com/1_27cdeccdac.jpg',NULL,'aws-s3',NULL,'/','2023-01-09 17:09:49.636000','2023-01-09 17:09:49.636000',1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_folder_links`
--

LOCK TABLES `files_folder_links` WRITE;
/*!40000 ALTER TABLE `files_folder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_folder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES (116,1,1,'blocks.home-banner','img',1),(117,1,1,'blocks.home-banner','img_mobile',1),(146,1,1,'shared.card-chara','icon',1),(147,1,1,'blocks.home-charac','img',1),(148,1,1,'blocks.home-charac','img_mobile',1),(150,2,1,'api::general.general','logo',1),(250,7,1,'blocks.home-banner','bg',1),(251,7,1,'blocks.home-banner','bg_mob',1),(252,8,2,'blocks.home-banner','bg',1),(253,8,2,'blocks.home-banner','bg_mob',1),(254,9,3,'blocks.home-banner','bg',1),(255,9,3,'blocks.home-banner','bg_mob',1),(256,1,1,'shared.card-service','img',1),(257,1,1,'shared.card-service','img_mobile',1),(258,12,2,'shared.about-list','icon',1),(259,13,1,'shared.about-list','icon',1),(260,14,1,'blocks.home-about','img',1),(261,10,2,'blocks.home-charac','icon',1),(262,11,4,'blocks.home-charac','icon',1),(263,12,3,'blocks.home-charac','icon',1),(264,13,5,'blocks.home-charac','icon',1),(265,1,1,'shared.seo','metaImage',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals`
--

DROP TABLE IF EXISTS `generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lbl_see_services` varchar(255) DEFAULT NULL,
  `lbl_send` varchar(255) DEFAULT NULL,
  `lbl_book_now` varchar(255) DEFAULT NULL,
  `lbl_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `url_map` varchar(255) DEFAULT NULL,
  `tag_manager` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `pixel_facebook` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generals_created_by_id_fk` (`created_by_id`),
  KEY `generals_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `generals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `generals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generals`
--

LOCK TABLES `generals` WRITE;
/*!40000 ALTER TABLE `generals` DISABLE KEYS */;
INSERT INTO `generals` VALUES (1,'See Services','Afe','Contact Us',' 977 321 415','customer@navamovingservices.us','Oakland, CA 94601','ffff',NULL,NULL,NULL,'2023-01-09 13:31:41.487000','2023-01-09 15:07:48.058000','2023-01-09 13:31:43.294000',1,1);
/*!40000 ALTER TABLE `generals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals_components`
--

DROP TABLE IF EXISTS `generals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `generals_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `generals_field_index` (`field`),
  KEY `generals_component_type_index` (`component_type`),
  KEY `generals_entity_fk` (`entity_id`),
  CONSTRAINT `generals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `generals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generals_components`
--

LOCK TABLES `generals_components` WRITE;
/*!40000 ALTER TABLE `generals_components` DISABLE KEYS */;
INSERT INTO `generals_components` VALUES (1,1,1,'shared.menu','menu',1),(2,1,1,'shared.social-network','social_networks',1),(5,1,2,'shared.menu','menu',3);
/*!40000 ALTER TABLE `generals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homes_created_by_id_fk` (`created_by_id`),
  KEY `homes_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `homes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `homes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` VALUES (1,'Home','2023-01-09 13:30:53.935000','2023-01-09 17:49:17.168000','2023-01-09 13:30:58.214000',1,1);
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes_components`
--

DROP TABLE IF EXISTS `homes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `homes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `homes_field_index` (`field`),
  KEY `homes_component_type_index` (`component_type`),
  KEY `homes_entity_fk` (`entity_id`),
  CONSTRAINT `homes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes_components`
--

LOCK TABLES `homes_components` WRITE;
/*!40000 ALTER TABLE `homes_components` DISABLE KEYS */;
INSERT INTO `homes_components` VALUES (1,1,1,'blocks.home-banner','HomeBanner',1),(2,1,1,'blocks.home-services','HomeService',12),(3,1,1,'blocks.home-about','HomeAbout',12),(4,1,1,'blocks.home-charac','HomeCharac',12),(5,1,1,'blocks.home-blog','HomeBlog',12),(6,1,1,'shared.seo','seo',12),(73,1,2,'blocks.home-banner','HomeBanner',3),(74,1,3,'blocks.home-banner','HomeBanner',5),(86,1,2,'blocks.home-charac','characteristic',1),(94,1,4,'blocks.home-charac','characteristic',2),(95,1,3,'blocks.home-charac','characteristic',3),(96,1,5,'blocks.home-charac','characteristic',4);
/*!40000 ALTER TABLE `homes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2023-01-09 13:27:58.474000','2023-01-09 13:27:58.474000',NULL,NULL);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions`
--

LOCK TABLES `strapi_api_token_permissions` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

LOCK TABLES `strapi_api_token_permissions_token_links` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::ezforms.submission\":{\"info\":{\"tableName\":\"submission\",\"singularName\":\"submission\",\"pluralName\":\"submissions\",\"displayName\":\"Form Submissions\",\"description\":\"A Place for all your form submissions\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"score\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"formName\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"data\":{\"type\":\"json\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"submission\",\"singularName\":\"submission\",\"pluralName\":\"submissions\",\"displayName\":\"Form Submissions\",\"description\":\"A Place for all your form submissions\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"score\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"formName\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"data\":{\"type\":\"json\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"submission\",\"connection\":\"default\",\"uid\":\"plugin::ezforms.submission\",\"plugin\":\"ezforms\",\"collectionName\":\"ezforms_submission\",\"globalId\":\"EzformsSubmission\"},\"plugin::ezforms.recipient\":{\"info\":{\"tableName\":\"recipients\",\"singularName\":\"recipient\",\"pluralName\":\"recipients\",\"displayName\":\"Notification Recipients\",\"description\":\"List of Notification Recipients\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"email\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"number\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"recipients\",\"singularName\":\"recipient\",\"pluralName\":\"recipients\",\"displayName\":\"Notification Recipients\",\"description\":\"List of Notification Recipients\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"email\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"number\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"recipient\",\"connection\":\"default\",\"uid\":\"plugin::ezforms.recipient\",\"plugin\":\"ezforms\",\"collectionName\":\"ezforms_recipient\",\"globalId\":\"EzformsRecipient\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::contact.contact\":{\"kind\":\"singleType\",\"collectionName\":\"contacts\",\"info\":{\"singularName\":\"contact\",\"pluralName\":\"contacts\",\"displayName\":\"Contact\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"form\":{\"type\":\"json\"},\"messages\":{\"type\":\"json\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"contacts\",\"info\":{\"singularName\":\"contact\",\"pluralName\":\"contacts\",\"displayName\":\"Contact\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"form\":{\"type\":\"json\"},\"messages\":{\"type\":\"json\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"contact\",\"connection\":\"default\",\"uid\":\"api::contact.contact\",\"apiName\":\"contact\",\"globalId\":\"Contact\",\"actions\":{},\"lifecycles\":{}},\"api::general.general\":{\"kind\":\"singleType\",\"collectionName\":\"generals\",\"info\":{\"singularName\":\"general\",\"pluralName\":\"generals\",\"displayName\":\"General\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"lbl_see_services\":{\"type\":\"string\"},\"lbl_send\":{\"type\":\"string\"},\"lbl_book_now\":{\"type\":\"string\"},\"lbl_number\":{\"type\":\"string\"},\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"email\":{\"type\":\"email\"},\"address\":{\"type\":\"string\"},\"url_map\":{\"type\":\"string\"},\"menu\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.menu\"},\"tag_manager\":{\"type\":\"string\"},\"facebook_id\":{\"type\":\"string\"},\"pixel_facebook\":{\"type\":\"string\"},\"social_networks\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.social-network\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"generals\",\"info\":{\"singularName\":\"general\",\"pluralName\":\"generals\",\"displayName\":\"General\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"lbl_see_services\":{\"type\":\"string\"},\"lbl_send\":{\"type\":\"string\"},\"lbl_book_now\":{\"type\":\"string\"},\"lbl_number\":{\"type\":\"string\"},\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"email\":{\"type\":\"email\"},\"address\":{\"type\":\"string\"},\"url_map\":{\"type\":\"string\"},\"menu\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.menu\"},\"tag_manager\":{\"type\":\"string\"},\"facebook_id\":{\"type\":\"string\"},\"pixel_facebook\":{\"type\":\"string\"},\"social_networks\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.social-network\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"general\",\"connection\":\"default\",\"uid\":\"api::general.general\",\"apiName\":\"general\",\"globalId\":\"General\",\"actions\":{},\"lifecycles\":{}},\"api::home.home\":{\"kind\":\"singleType\",\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"HomeBanner\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"blocks.home-banner\"},\"HomeService\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"blocks.home-services\"},\"HomeAbout\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"blocks.home-about\"},\"characteristic\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"blocks.home-charac\"},\"HomeBlog\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"blocks.home-blog\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"HomeBanner\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"blocks.home-banner\"},\"HomeService\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"blocks.home-services\"},\"HomeAbout\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"blocks.home-about\"},\"characteristic\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"blocks.home-charac\"},\"HomeBlog\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"blocks.home-blog\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"home\",\"connection\":\"default\",\"uid\":\"api::home.home\",\"apiName\":\"home\",\"globalId\":\"Home\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_components::blocks.home-banner','{\"uid\":\"blocks.home-banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"subtitle\",\"defaultSortBy\":\"subtitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"bg\":{\"edit\":{\"label\":\"bg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg\",\"searchable\":false,\"sortable\":false}},\"bg_mob\":{\"edit\":{\"label\":\"bg_mob\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bg_mob\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"bg\",\"bg_mob\",\"subtitle\"],\"edit\":[[{\"name\":\"title\",\"size\":12}],[{\"name\":\"bg\",\"size\":6},{\"name\":\"bg_mob\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(3,'plugin_content_manager_configuration_components::blocks.home-blog','{\"uid\":\"blocks.home-blog\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titles\":{\"edit\":{\"label\":\"titles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titles\",\"searchable\":false,\"sortable\":false}},\"cardArticle\":{\"edit\":{\"label\":\"cardArticle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cardArticle\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titles\",\"cardArticle\"],\"edit\":[[{\"name\":\"titles\",\"size\":12}],[{\"name\":\"cardArticle\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(4,'plugin_content_manager_configuration_components::blocks.home-services','{\"uid\":\"blocks.home-services\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titles\":{\"edit\":{\"label\":\"titles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titles\",\"searchable\":false,\"sortable\":false}},\"cardService\":{\"edit\":{\"label\":\"cardService\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cardService\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titles\",\"cardService\"],\"edit\":[[{\"name\":\"titles\",\"size\":12}],[{\"name\":\"cardService\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(5,'plugin_content_manager_configuration_components::shared.card-article','{\"uid\":\"shared.card-article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"content\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(6,'plugin_content_manager_configuration_components::shared.card-chara','{\"uid\":\"shared.card-chara\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(7,'plugin_content_manager_configuration_components::shared.contact','{\"uid\":\"shared.contact\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"form\":{\"edit\":{\"label\":\"form\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"form\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"form\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(8,'plugin_content_manager_configuration_components::blocks.home-about','{\"uid\":\"blocks.home-about\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titles\":{\"edit\":{\"label\":\"titles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titles\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"list\":{\"edit\":{\"label\":\"list\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"list\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titles\",\"img\",\"list\"],\"edit\":[[{\"name\":\"titles\",\"size\":12}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"img\",\"size\":6}],[{\"name\":\"list\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(9,'plugin_content_manager_configuration_components::blocks.home-charac','{\"uid\":\"blocks.home-charac\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"description\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":12}],[{\"name\":\"description\",\"size\":6},{\"name\":\"icon\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(10,'plugin_content_manager_configuration_components::shared.card-service','{\"uid\":\"shared.card-service\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"img_mobile\":{\"edit\":{\"label\":\"img_mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img_mobile\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"content\",\"img\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"content\",\"size\":6}],[{\"name\":\"img\",\"size\":6},{\"name\":\"img_mobile\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(11,'plugin_content_manager_configuration_components::shared.meta-social','{\"uid\":\"shared.meta-social\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"socialNetwork\":{\"edit\":{\"label\":\"socialNetwork\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialNetwork\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"socialNetwork\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(12,'plugin_content_manager_configuration_components::shared.seo','{\"uid\":\"shared.seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"metaImage\":{\"edit\":{\"label\":\"metaImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaImage\",\"searchable\":false,\"sortable\":false}},\"metaSocial\":{\"edit\":{\"label\":\"metaSocial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaSocial\",\"searchable\":false,\"sortable\":false}},\"keywords\":{\"edit\":{\"label\":\"keywords\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keywords\",\"searchable\":true,\"sortable\":true}},\"metaRobots\":{\"edit\":{\"label\":\"metaRobots\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaRobots\",\"searchable\":true,\"sortable\":true}},\"structuredData\":{\"edit\":{\"label\":\"structuredData\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"structuredData\",\"searchable\":false,\"sortable\":false}},\"metaViewport\":{\"edit\":{\"label\":\"metaViewport\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaViewport\",\"searchable\":true,\"sortable\":true}},\"canonicaURL\":{\"edit\":{\"label\":\"canonicaURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"canonicaURL\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"metaImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"metaImage\",\"size\":6}],[{\"name\":\"metaSocial\",\"size\":12}],[{\"name\":\"keywords\",\"size\":6},{\"name\":\"metaRobots\",\"size\":6}],[{\"name\":\"structuredData\",\"size\":12}],[{\"name\":\"metaViewport\",\"size\":6},{\"name\":\"canonicaURL\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(13,'plugin_content_manager_configuration_components::shared.social-network','{\"uid\":\"shared.social-network\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"url\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"url\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(14,'plugin_content_manager_configuration_components::shared.menu','{\"uid\":\"shared.menu\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"url\"],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"url\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(15,'plugin_content_manager_configuration_components::shared.titles','{\"uid\":\"shared.titles\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(16,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(17,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}','object',NULL,NULL),(18,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(19,'plugin_content_manager_configuration_content_types::plugin::upload.folder','{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}','object',NULL,NULL),(20,'plugin_content_manager_configuration_content_types::plugin::ezforms.submission','{\"uid\":\"plugin::ezforms.submission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"score\",\"defaultSortBy\":\"score\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"score\":{\"edit\":{\"label\":\"score\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"score\",\"searchable\":true,\"sortable\":true}},\"formName\":{\"edit\":{\"label\":\"formName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formName\",\"searchable\":true,\"sortable\":true}},\"data\":{\"edit\":{\"label\":\"data\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"score\",\"formName\",\"createdAt\"],\"edit\":[[{\"name\":\"score\",\"size\":6},{\"name\":\"formName\",\"size\":6}],[{\"name\":\"data\",\"size\":12}]]}}','object',NULL,NULL),(21,'plugin_content_manager_configuration_content_types::plugin::ezforms.recipient','{\"uid\":\"plugin::ezforms.recipient\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"number\":{\"edit\":{\"label\":\"number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"number\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"email\",\"number\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"number\",\"size\":6}]]}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(23,'plugin_content_manager_configuration_content_types::api::home.home','{\"uid\":\"api::home.home\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"HomeBanner\":{\"edit\":{\"label\":\"HomeBanner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HomeBanner\",\"searchable\":false,\"sortable\":false}},\"HomeService\":{\"edit\":{\"label\":\"HomeService\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HomeService\",\"searchable\":false,\"sortable\":false}},\"HomeAbout\":{\"edit\":{\"label\":\"HomeAbout\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HomeAbout\",\"searchable\":false,\"sortable\":false}},\"characteristic\":{\"edit\":{\"label\":\"characteristic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"characteristic\",\"searchable\":false,\"sortable\":false}},\"HomeBlog\":{\"edit\":{\"label\":\"HomeBlog\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HomeBlog\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"HomeBanner\",\"HomeService\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"HomeBanner\",\"size\":12}],[{\"name\":\"HomeService\",\"size\":12}],[{\"name\":\"HomeAbout\",\"size\":12}],[{\"name\":\"HomeBlog\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}],[{\"name\":\"characteristic\",\"size\":12}]]}}','object',NULL,NULL),(24,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}','object',NULL,NULL),(25,'plugin_content_manager_configuration_content_types::admin::api-token-permission','{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}','object',NULL,NULL),(27,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(28,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}','object',NULL,NULL),(29,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(30,'plugin_content_manager_configuration_content_types::api::contact.contact','{\"uid\":\"api::contact.contact\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"form\":{\"edit\":{\"label\":\"form\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"form\",\"searchable\":false,\"sortable\":false}},\"messages\":{\"edit\":{\"label\":\"messages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"messages\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"createdAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"form\",\"size\":12}],[{\"name\":\"messages\",\"size\":12}]]}}','object',NULL,NULL),(31,'plugin_content_manager_configuration_content_types::api::general.general','{\"uid\":\"api::general.general\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"lbl_see_services\",\"defaultSortBy\":\"lbl_see_services\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"lbl_see_services\":{\"edit\":{\"label\":\"lbl_see_services\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_see_services\",\"searchable\":true,\"sortable\":true}},\"lbl_send\":{\"edit\":{\"label\":\"lbl_send\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_send\",\"searchable\":true,\"sortable\":true}},\"lbl_book_now\":{\"edit\":{\"label\":\"lbl_book_now\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_book_now\",\"searchable\":true,\"sortable\":true}},\"lbl_number\":{\"edit\":{\"label\":\"lbl_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lbl_number\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"url_map\":{\"edit\":{\"label\":\"url_map\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url_map\",\"searchable\":true,\"sortable\":true}},\"menu\":{\"edit\":{\"label\":\"menu\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"menu\",\"searchable\":false,\"sortable\":false}},\"tag_manager\":{\"edit\":{\"label\":\"tag_manager\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tag_manager\",\"searchable\":true,\"sortable\":true}},\"facebook_id\":{\"edit\":{\"label\":\"facebook_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"facebook_id\",\"searchable\":true,\"sortable\":true}},\"pixel_facebook\":{\"edit\":{\"label\":\"pixel_facebook\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pixel_facebook\",\"searchable\":true,\"sortable\":true}},\"social_networks\":{\"edit\":{\"label\":\"social_networks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"social_networks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"lbl_see_services\",\"lbl_send\",\"lbl_book_now\"],\"edit\":[[{\"name\":\"lbl_see_services\",\"size\":6},{\"name\":\"lbl_send\",\"size\":6}],[{\"name\":\"lbl_book_now\",\"size\":6},{\"name\":\"lbl_number\",\"size\":6}],[{\"name\":\"logo\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"url_map\",\"size\":6}],[{\"name\":\"menu\",\"size\":12}],[{\"name\":\"tag_manager\",\"size\":6},{\"name\":\"facebook_id\",\"size\":6}],[{\"name\":\"pixel_facebook\",\"size\":6}],[{\"name\":\"social_networks\",\"size\":12}]]}}','object',NULL,NULL),(32,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(33,'plugin_upload_view_configuration','{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}','object',NULL,NULL),(34,'plugin_upload_metrics','{\"weeklySchedule\":\"58 32 13 * * 1\",\"lastWeeklyUpdate\":1673289178024}','object',NULL,NULL),(35,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(36,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(37,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(38,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object',NULL,NULL),(39,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(40,'plugin_content_manager_configuration_components::shared.about-list','{\"uid\":\"shared.about-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (4,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ezforms_submission\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"score\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"form_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ezforms_submission_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"ezforms_submission_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"ezforms_submission_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"ezforms_submission_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ezforms_recipient\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ezforms_recipient_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"ezforms_recipient_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"ezforms_recipient_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"ezforms_recipient_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"contacts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"form\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"messages\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"contacts_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"contacts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"contacts_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"contacts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"generals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"lbl_see_services\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_send\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_book_now\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lbl_number\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url_map\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag_manager\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"facebook_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"pixel_facebook\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"generals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"generals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"generals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"generals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_home_abouts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_home_banners\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"title\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_home_blogs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_home_characs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_home_services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_about_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_card_articles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_card_charas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_card_services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_contacts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"form\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_menus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_meta_socials\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"social_network\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"meta_description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"keywords\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_robots\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"structured_data\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_viewport\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"canonica_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_social_networks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_titles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"generals_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"generals_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"generals_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"generals_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"generals_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"generals_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"generals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"homes_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"homes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_home_abouts_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_blocks_home_abouts_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_blocks_home_abouts_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_blocks_home_abouts_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_blocks_home_abouts_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_blocks_home_abouts_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_blocks_home_abouts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_home_blogs_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_blocks_home_blogs_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_blocks_home_blogs_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_blocks_home_blogs_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_blocks_home_blogs_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_blocks_home_blogs_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_blocks_home_blogs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_home_services_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_blocks_home_services_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_blocks_home_services_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_blocks_home_services_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_blocks_home_services_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_blocks_home_services_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_blocks_home_services\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_seos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_seos_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_seos_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_shared_seos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_seos\", \"referencedColumns\": [\"id\"]}]}]}','2023-01-09 17:42:30','5d78b7393e8dc725d0b31e3904f6add4');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.user.me','2023-01-09 13:27:58.604000','2023-01-09 13:27:58.604000',NULL,NULL),(2,'plugin::users-permissions.auth.changePassword','2023-01-09 13:27:58.604000','2023-01-09 13:27:58.604000',NULL,NULL),(3,'plugin::users-permissions.auth.callback','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(4,'plugin::users-permissions.auth.connect','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(5,'plugin::users-permissions.auth.forgotPassword','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(6,'plugin::users-permissions.auth.resetPassword','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(7,'plugin::users-permissions.auth.register','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(8,'plugin::users-permissions.auth.emailConfirmation','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(9,'plugin::users-permissions.auth.sendEmailConfirmation','2023-01-09 13:27:58.619000','2023-01-09 13:27:58.619000',NULL,NULL),(10,'api::contact.contact.find','2023-01-09 13:32:08.531000','2023-01-09 13:32:08.531000',NULL,NULL),(11,'api::general.general.find','2023-01-09 13:32:08.531000','2023-01-09 13:32:08.531000',NULL,NULL),(12,'api::home.home.find','2023-01-09 13:32:08.531000','2023-01-09 13:32:08.531000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (1,1,1,1),(2,2,1,1),(3,3,2,1),(4,4,2,1),(5,6,2,1),(6,5,2,1),(7,8,2,1),(8,7,2,1),(9,9,2,2),(10,10,2,3),(11,11,2,3),(12,12,2,4);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2023-01-09 13:27:58.582000','2023-01-09 13:27:58.582000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2023-01-09 13:27:58.588000','2023-01-09 13:32:08.525000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders`
--

LOCK TABLES `upload_folders` WRITE;
/*!40000 ALTER TABLE `upload_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders_parent_links`
--

LOCK TABLES `upload_folders_parent_links` WRITE;
/*!40000 ALTER TABLE `upload_folders_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders_parent_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 19:46:39
