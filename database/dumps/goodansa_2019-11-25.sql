# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.27)
# Database: goodansa
# Generation Time: 2019-11-25 23:17:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table brands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` (`id`, `brand_name`, `photo`, `local_link`, `external_link`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(3,'GoodYear','uploads/1/2019-11/fc6fff1f1a0b9aa9bf62e9e67d0215da.jpg',NULL,NULL,NULL,'2019-11-24 00:21:09','2019-11-24 00:50:09'),
	(4,'Titan','uploads/1/2019-11/dd15254f6a170972c6262964d72bd7bc.jpg',NULL,NULL,NULL,'2019-11-24 00:21:44',NULL),
	(5,'Rinaldi','uploads/1/2019-11/f95d4101d814a76b3a55fea5e537d6df.jpg',NULL,NULL,NULL,'2019-11-24 00:21:58',NULL),
	(6,'Hyundai XTeer','uploads/1/2019-11/ef411633a6ac1ce97e19e3a40a9a2791.jpg',NULL,NULL,NULL,'2019-11-24 00:22:19',NULL),
	(7,'ActiOil','uploads/1/2019-11/de5e86db8966317489aa24707e6d3975.jpg',NULL,NULL,NULL,'2019-11-24 00:22:35',NULL),
	(8,'Tortuga','uploads/1/2019-11/7bf7a010b97dda8eef8d1ae6c0fa10e5.jpg',NULL,NULL,NULL,'2019-11-24 00:22:48',NULL),
	(9,'Xtire','uploads/1/2019-11/f218d4f7805873244a289224bf90c9c4.jpg',NULL,NULL,NULL,'2019-11-24 00:22:59',NULL),
	(10,'Maxion','uploads/1/2019-11/1cf4aadd09f9263aabdf872755eff100.jpg',NULL,NULL,NULL,'2019-11-24 00:23:12',NULL),
	(11,'KLL','uploads/1/2019-11/baf66d9bbfa6e810f0b61db555c5376f.jpg',NULL,NULL,NULL,'2019-11-24 00:23:27',NULL),
	(12,'Alcoa','uploads/1/2019-11/9d01690cbdfc26d77ec4a9f0f622e8bf.jpg',NULL,NULL,NULL,'2019-11-24 00:23:40',NULL);

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_apicustom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_apicustom`;

CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_apikey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_apikey`;

CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_dashboard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_email_queues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_email_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`)
VALUES
	(1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2019-05-15 00:10:15',NULL);

/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`)
VALUES
	(1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8001/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-05-15 00:11:09',NULL),
	(2,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8001/admin/logout','admin@crudbooster.com logout','',1,'2019-05-15 00:11:13',NULL),
	(3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-05-15 00:27:08',NULL),
	(4,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/logout','admin@crudbooster.com se desconectó','',1,'2019-05-15 00:35:35',NULL),
	(5,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1','',1,'2019-05-15 00:35:40',NULL),
	(6,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/logout','admin@crudbooster.com se desconectó','',1,'2019-05-15 00:37:52',NULL),
	(7,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1','',1,'2019-05-15 00:42:13',NULL),
	(8,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/users/edit-save/1','Actualizar información Super Admin en Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@ansa.com</td></tr><tr><td>password</td><td>$2y$10$FogogAxVOnsZBrhptSmvG.FVLQ3D.4W6arNgAgXPMVvwzEEQDUfpe</td><td>$2y$10$3kg2VZa9alGNDZbOhq/hJeA9WXpKXgsP7Hz3r7yNUc8yR.geReQKi</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2019-05-15 00:42:24',NULL),
	(9,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/logout','admin@ansa.com se desconectó','',1,'2019-05-15 00:42:29',NULL),
	(10,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-15 00:42:34',NULL),
	(11,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/logout','admin@ansa.com se desconectó','',1,'2019-05-15 00:43:46',NULL),
	(12,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-15 01:05:24',NULL),
	(13,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-15 19:13:02',NULL),
	(14,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/settings/add-save','Añadir nueva información cotizacion_dolar_usd_guaranigs en Settings','',1,'2019-05-15 21:32:44',NULL),
	(15,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/settings/add-save','Añadir nueva información  en Settings','',1,'2019-05-15 21:32:50',NULL),
	(16,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/settings/edit-save/18','Actualizar información  en Settings','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td></td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>content_input_type</td><td></td><td>text</td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td>Valor de 1 Dolar (USD) en  (Gs)</td><td>Valor de 1 Dolar (USD) en  Reales (R$)</td></tr><tr><td>group_setting</td><td>General Setting</td><td>Cotizaciones</td></tr><tr><td>label</td><td></td><td>Cotizacion Dolar (USD) - Reales(R$)</td></tr></tbody></table>',1,'2019-05-15 21:34:00',NULL),
	(17,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/edit-save/3','Actualizar información Anchos en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Ancho</td><td>Anchos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2019-05-16 00:15:52',NULL),
	(18,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/brands/add-save','Añadir nueva información marca de prueba en Marcas','',1,'2019-05-16 01:08:26',NULL),
	(19,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/product_categories/add-save','Añadir nueva información AAA en Categoria de Productos','',1,'2019-05-16 01:08:35',NULL),
	(20,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/products/add-save','Añadir nueva información producto prueba en Productos','',1,'2019-05-16 01:11:19',NULL),
	(21,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-16 21:07:44',NULL),
	(22,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/radiuses/add-save','Añadir nueva información R13 en Radios','',1,'2019-05-16 21:08:23',NULL),
	(23,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/widths/add-save','Añadir nueva información 25.5 en Anchos','',1,'2019-05-16 21:08:43',NULL),
	(24,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/profiles/add-save','Añadir nueva información 12 en Perfiles','',1,'2019-05-16 21:08:50',NULL),
	(25,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/add-save','Añadir nueva información Productos en Menu Management','',1,'2019-05-16 21:19:16',NULL),
	(26,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/edit-save/9','Actualizar información Productos en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>products</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>',1,'2019-05-16 21:20:36',NULL),
	(27,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/edit-save/7','Actualizar información Listar Productos en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Productos</td><td>Listar Productos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr></tbody></table>',1,'2019-05-16 21:21:36',NULL),
	(28,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/add-save','Añadir nueva información  en Tipos de vehiculos','',1,'2019-05-16 21:24:57',NULL),
	(29,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/add-save','Añadir nueva información Cotizaciones en Menu Management','',1,'2019-05-16 21:28:00',NULL),
	(30,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/settings/edit-save/18','Actualizar información  en Settings','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td></td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>label</td><td>Cotizacion Dolar (USD) - Reales(R$)</td><td>Cotizacion Dolar (USD) - Reales(R)</td></tr></tbody></table>',1,'2019-05-16 21:29:33',NULL),
	(31,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_type_photos/add-save','Añadir nueva información prueba en Imagenes de tipos de vehiculos','',1,'2019-05-16 21:33:35',NULL),
	(32,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/edit-save/1','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td><p>Autos y autitos</p></td><td>Autos y autitos</td></tr></tbody></table>',1,'2019-05-16 21:41:30',NULL),
	(33,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/add-save','Añadir nueva información Vehiculos en Menu Management','',1,'2019-05-16 21:51:37',NULL),
	(34,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-18 19:54:49',NULL),
	(35,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/logout','admin@ansa.com se desconectó','',1,'2019-05-18 20:52:44',NULL),
	(36,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-18 20:52:51',NULL),
	(37,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/add-save','Añadir nueva información Neumaticos en Menu Management','',1,'2019-05-18 20:54:23',NULL),
	(38,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/edit-save/14','Actualizar información Listar Neumaticos en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Neumaticos</td><td>Listar Neumaticos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>',1,'2019-05-18 20:54:38',NULL),
	(39,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/menu_management/edit-save/16','Actualizar información Imagenes de neumaticos en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Fotografias de neumaticos</td><td>Imagenes de neumaticos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>',1,'2019-05-18 21:00:19',NULL),
	(40,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tires/add-save','Añadir nueva información GY R13 en Neumaticos','',1,'2019-05-18 21:08:13',NULL),
	(41,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tires/edit-save/1','Actualizar información GY R13 en Neumaticos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>discount_rate</td><td>26</td><td>25</td></tr><tr><td>final_price</td><td>185000</td><td>187500</td></tr><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-05-18 21:10:16',NULL),
	(42,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tire_photos/add-save','Añadir nueva información imagen de prueba en Imagenes de neumaticos','',1,'2019-05-18 21:12:32',NULL),
	(43,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-19 03:43:28',NULL),
	(44,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tire_photos/delete/1','Eliminar información imagen de prueba en Imagenes de neumaticos','',1,'2019-05-19 03:44:27',NULL),
	(45,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tire_photos/add-save','Añadir nueva información  en Imagenes de neumaticos','',1,'2019-05-19 03:44:34',NULL),
	(46,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tires/delete-image','Eliminar la imagen de GY R13 en Neumaticos','',1,'2019-05-19 03:46:45',NULL),
	(47,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tires/edit-save/1','Actualizar información GY R13 en Neumaticos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-05/911819af7f6935af425c4f3c472c3ccb.jpg</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-05-19 03:46:55',NULL),
	(48,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/add-save','Añadir nueva información  en Tipos de vehiculos','',1,'2019-05-19 04:03:33',NULL),
	(49,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/add-save','Añadir nueva información  en Tipos de vehiculos','',1,'2019-05-19 04:03:39',NULL),
	(50,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/add-save','Añadir nueva información  en Tipos de vehiculos','',1,'2019-05-19 04:03:43',NULL),
	(51,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tires/edit-save/1','Actualizar información GY R13 en Neumaticos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-05-19 04:03:54',NULL),
	(52,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/brands/delete/1','Eliminar información marca de prueba en Marcas','',1,'2019-05-19 04:04:19',NULL),
	(53,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tire_photos/delete/2','Eliminar información  en Imagenes de neumaticos','',1,'2019-05-19 04:04:26',NULL),
	(54,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/tires/delete/1','Eliminar información GY R13 en Neumaticos','',1,'2019-05-19 04:04:29',NULL),
	(55,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/radiuses/delete/1','Eliminar información R13 en Radios','',1,'2019-05-19 04:04:32',NULL),
	(56,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/widths/delete/1','Eliminar información 25.5 en Anchos','',1,'2019-05-19 04:04:35',NULL),
	(57,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/profiles/delete/1','Eliminar información 12 en Perfiles','',1,'2019-05-19 04:04:38',NULL),
	(58,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/products/delete/1','Eliminar información producto prueba en Productos','',1,'2019-05-19 04:04:45',NULL),
	(59,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/product_categories/delete/1','Eliminar información AAA en Categoria de Productos','',1,'2019-05-19 04:04:48',NULL),
	(60,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/delete/1','Eliminar información 1 en Tipos de vehiculos','',1,'2019-05-19 04:04:53',NULL),
	(61,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/delete/2','Eliminar información 2 en Tipos de vehiculos','',1,'2019-05-19 04:04:55',NULL),
	(62,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/delete/3','Eliminar información 3 en Tipos de vehiculos','',1,'2019-05-19 04:04:57',NULL),
	(63,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/delete/4','Eliminar información 4 en Tipos de vehiculos','',1,'2019-05-19 04:04:58',NULL),
	(64,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_type_photos/delete/1','Eliminar información prueba en Imagenes de tipos de vehiculos','',1,'2019-05-19 04:05:02',NULL),
	(65,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/add-save','Añadir nueva información  en Tipos de vehiculos','',1,'2019-05-19 04:05:18',NULL),
	(66,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_type_photos/add-save','Añadir nueva información  en Imagenes de tipos de vehiculos','',1,'2019-05-19 04:05:35',NULL),
	(67,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_type_photos/delete/2','Eliminar información  en Imagenes de tipos de vehiculos','',1,'2019-05-19 04:05:41',NULL),
	(68,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8002/admin/vehicle_types/delete/5','Eliminar información 5 en Tipos de vehiculos','',1,'2019-05-19 04:05:49',NULL),
	(69,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8003/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-05-24 02:20:08',NULL),
	(70,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8003/admin/logout','admin@ansa.com se desconectó','',1,'2019-05-24 02:21:07',NULL),
	(71,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-06-25 04:51:28',NULL),
	(72,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8001/admin/menu_management/edit-save/11','Actualizar información Cotizaciones en Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>http://localhost:8002/admin/settings/show?group=Cotizaciones&m=0</td><td>http://localhost:8001/admin/settings/show?group=Cotizaciones&m=0</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',1,'2019-06-25 05:41:44',NULL),
	(73,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-09-10 22:41:48',NULL),
	(74,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-20 12:08:53',NULL),
	(75,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-21 14:38:08',NULL),
	(76,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información GoodYear en Marcas','',1,'2019-11-21 14:44:10',NULL),
	(77,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/delete/2','Eliminar información GoodYear en Marcas','',1,'2019-11-21 15:01:07',NULL),
	(78,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-21 17:29:12',NULL),
	(79,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-22 15:37:06',NULL),
	(80,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/logout','admin@ansa.com se desconectó','',1,'2019-11-22 19:04:33',NULL),
	(81,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-23 23:11:43',NULL),
	(82,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/1','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Autos y autitos</td><td></td></tr></tbody></table>',1,'2019-11-23 23:25:37',NULL),
	(83,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/1','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Autos y autitos</td><td></td></tr></tbody></table>',1,'2019-11-23 23:25:46',NULL),
	(84,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/4','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2019-11-23 23:26:45',NULL),
	(85,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/4','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>motossss</td><td></td></tr></tbody></table>',1,'2019-11-23 23:26:50',NULL),
	(86,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/4','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>motossss</td><td></td></tr></tbody></table>',1,'2019-11-23 23:26:59',NULL),
	(87,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/4','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>motossss</td><td>mos</td></tr></tbody></table>',1,'2019-11-23 23:27:06',NULL),
	(88,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/4','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>mos</td><td>m</td></tr></tbody></table>',1,'2019-11-23 23:27:11',NULL),
	(89,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/edit-save/4','Actualizar información  en Tipos de vehiculos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>m</td><td></td></tr></tbody></table>',1,'2019-11-23 23:27:17',NULL),
	(90,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/vehicle_types/add-save','Añadir nueva información  en Tipos de vehiculos','',1,'2019-11-23 23:29:13',NULL),
	(91,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información GoodYear en Marcas','',1,'2019-11-24 00:21:09',NULL),
	(92,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Titan en Marcas','',1,'2019-11-24 00:21:44',NULL),
	(93,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Rinaldi en Marcas','',1,'2019-11-24 00:21:58',NULL),
	(94,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Hyundai XTeer en Marcas','',1,'2019-11-24 00:22:19',NULL),
	(95,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información ActiOil en Marcas','',1,'2019-11-24 00:22:35',NULL),
	(96,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Tortuga en Marcas','',1,'2019-11-24 00:22:48',NULL),
	(97,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Xtire en Marcas','',1,'2019-11-24 00:22:59',NULL),
	(98,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Maxion en Marcas','',1,'2019-11-24 00:23:12',NULL),
	(99,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información KLL en Marcas','',1,'2019-11-24 00:23:27',NULL),
	(100,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/add-save','Añadir nueva información Alcoa en Marcas','',1,'2019-11-24 00:23:40',NULL),
	(101,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/brands/edit-save/3','Actualizar información GoodYear sebastiandjmaciel en Marcas','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>brand_name</td><td>GoodYear</td><td>GoodYear sebastiandjmaciel</td></tr><tr><td>local_link</td><td></td><td></td></tr><tr><td>external_link</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-11-24 00:50:09',NULL),
	(102,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-24 18:16:35',NULL),
	(103,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/radiuses/add-save','Añadir nueva información R13 en Radios','',1,'2019-11-24 18:57:15',NULL),
	(104,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/radiuses/add-save','Añadir nueva información R14 en Radios','',1,'2019-11-24 18:57:24',NULL),
	(105,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/radiuses/add-save','Añadir nueva información R15 en Radios','',1,'2019-11-24 18:57:33',NULL),
	(106,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/radiuses/edit-save/4','Actualizar información R15 en Radios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>radius_value</td><td>15</td><td>15.1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-11-24 18:59:50',NULL),
	(107,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/radiuses/edit-save/4','Actualizar información R15 en Radios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>radius_value</td><td>15.1</td><td>15</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-11-24 18:59:56',NULL),
	(108,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/widths/add-save','Añadir nueva información Ancho Estandar en Anchos','',1,'2019-11-24 19:00:48',NULL),
	(109,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/profiles/add-save','Añadir nueva información Perfil Estandar en Perfiles','',1,'2019-11-24 19:01:03',NULL),
	(110,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/tires/add-save','Añadir nueva información GoodYear Prueba en Neumaticos','',1,'2019-11-24 19:02:50',NULL),
	(111,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/tire_photos/add-save','Añadir nueva información Frontal en Imagenes de neumaticos','',1,'2019-11-24 19:03:17',NULL),
	(112,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/tire_photos/add-save','Añadir nueva información Perfil en Imagenes de neumaticos','',1,'2019-11-24 19:03:37',NULL),
	(113,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/tires/add-save','Añadir nueva información Goodyear prueba 2 en Neumaticos','',1,'2019-11-24 19:13:41',NULL),
	(114,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/tires/edit-save/2','Actualizar información GoodYear Prueba en Neumaticos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>discount_rate</td><td>5</td><td>20</td></tr><tr><td>final_price</td><td>95</td><td>80</td></tr><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>',1,'2019-11-24 19:13:55',NULL),
	(115,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','http://localhost:8001/admin/promotions/add-save','Añadir nueva información Alineacion y Balanceo en Promociones','',1,'2019-11-24 19:50:00',NULL),
	(116,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','http://localhost/admin/login','Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1','',1,'2019-11-25 12:14:58',NULL);

/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`)
VALUES
	(1,'Marcas','Route','AdminBrandsControllerGetIndex',NULL,'fa fa-tags',0,1,0,1,5,'2019-05-15 23:59:55',NULL),
	(2,'Radios','Route','AdminRadiusesControllerGetIndex',NULL,'fa fa-circle-thin',15,1,0,1,2,'2019-05-16 00:02:08',NULL),
	(3,'Anchos','Route','AdminWidthsControllerGetIndex','normal','fa fa-circle-thin',15,1,0,1,3,'2019-05-16 00:14:41','2019-05-16 00:15:52'),
	(4,'Perfiles','Route','AdminProfilesControllerGetIndex',NULL,'fa fa-circle-thin',15,1,0,1,4,'2019-05-16 00:17:00',NULL),
	(5,'Banners','Route','AdminBannersControllerGetIndex',NULL,'fa fa-image',0,1,0,1,6,'2019-05-16 00:20:09',NULL),
	(6,'Categoria de Productos','Route','AdminProductCategoriesControllerGetIndex',NULL,'fa fa-cog',9,1,0,1,2,'2019-05-16 00:25:39',NULL),
	(7,'Listar Productos','Route','AdminProductsControllerGetIndex','normal','fa fa-product-hunt',9,1,0,1,1,'2019-05-16 00:27:44','2019-05-16 21:21:36'),
	(8,'Imagenes de productos','Route','AdminProductPhotosControllerGetIndex',NULL,'fa fa-image',9,1,0,1,3,'2019-05-16 01:03:33',NULL),
	(9,'Productos','Module','products','normal','fa fa-product-hunt',0,1,0,1,2,'2019-05-16 21:19:16','2019-05-16 21:20:36'),
	(10,'Tipos de vehiculos','Route','AdminVehicleTypesControllerGetIndex',NULL,'fa fa-bus',13,1,0,1,1,'2019-05-16 21:22:39',NULL),
	(11,'Cotizaciones','URL','http://localhost:8001/admin/settings/show?group=Cotizaciones&m=0','normal','fa fa-money',0,1,0,1,4,'2019-05-16 21:28:00','2019-06-25 05:41:44'),
	(12,'Imagenes de tipos de vehiculos','Route','AdminVehicleTypePhotosControllerGetIndex',NULL,'fa fa-image',13,1,0,1,2,'2019-05-16 21:31:45',NULL),
	(13,'Vehiculos','Module','vehicle_types','normal','fa fa-automobile',0,1,0,1,3,'2019-05-16 21:51:37',NULL),
	(14,'Listar Neumaticos','Route','AdminTiresControllerGetIndex','normal','fa fa-gears',15,1,0,1,1,'2019-05-18 20:22:44','2019-05-18 20:54:38'),
	(15,'Neumaticos','Module','tires','normal','fa fa-gears',0,1,0,1,1,'2019-05-18 20:54:23',NULL),
	(16,'Imagenes de neumaticos','Route','AdminTirePhotosControllerGetIndex','normal','fa fa-image',15,1,0,1,5,'2019-05-18 20:58:50','2019-05-18 21:00:19'),
	(17,'Promociones','Route','AdminPromotionsControllerGetIndex',NULL,'fa fa-picture-o',0,1,0,1,7,'2019-11-24 19:40:28',NULL);

/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_menus_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_menus_privileges`;

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`)
VALUES
	(1,1,1),
	(2,2,1),
	(4,3,1),
	(5,4,1),
	(6,5,1),
	(7,6,1),
	(9,8,1),
	(11,9,1),
	(12,7,1),
	(13,10,1),
	(15,12,1),
	(16,13,1),
	(18,15,1),
	(19,14,1),
	(21,16,1),
	(22,11,1),
	(23,17,1);

/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_moduls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2019-05-15 00:10:15',NULL,NULL),
	(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2019-05-15 00:10:15',NULL,NULL),
	(12,'Marcas','fa fa-tags','brands','brands','AdminBrandsController',0,0,'2019-05-15 23:59:55',NULL,NULL),
	(13,'Radios','fa fa-circle-thin','radiuses','radiuses','AdminRadiusesController',0,0,'2019-05-16 00:02:08',NULL,NULL),
	(14,'Anchos','fa fa-circle-thin','widths','widths','AdminWidthsController',0,0,'2019-05-16 00:14:41',NULL,NULL),
	(15,'Perfiles','fa fa-circle-thin','profiles','profiles','AdminProfilesController',0,0,'2019-05-16 00:17:00',NULL,NULL),
	(16,'Banners','fa fa-image','banners','banners','AdminBannersController',0,0,'2019-05-16 00:20:09',NULL,NULL),
	(17,'Categoria de Productos','fa fa-cog','product_categories','product_categories','AdminProductCategoriesController',0,0,'2019-05-16 00:25:39',NULL,NULL),
	(18,'Productos','fa fa-product-hunt','products','products','AdminProductsController',0,0,'2019-05-16 00:27:44',NULL,NULL),
	(19,'Imagenes de productos','fa fa-image','product_photos','product_photos','AdminProductPhotosController',0,0,'2019-05-16 01:03:33',NULL,NULL),
	(20,'Tipos de vehiculos','fa fa-bus','vehicle_types','vehicle_types','AdminVehicleTypesController',0,0,'2019-05-16 21:22:39',NULL,NULL),
	(21,'Imagenes de tipos de vehiculos','fa fa-image','vehicle_type_photos','vehicle_type_photos','AdminVehicleTypePhotosController',0,0,'2019-05-16 21:31:45',NULL,NULL),
	(22,'Neumaticos','fa fa-gears','tires','tires','AdminTiresController',0,0,'2019-05-18 20:22:44',NULL,NULL),
	(23,'Imagenes de neumaticos','fa fa-image','tire_photos','tire_photos','AdminTirePhotosController',0,0,'2019-05-18 20:58:50',NULL,NULL),
	(24,'Promociones','fa fa-picture-o','promotions','promotions','AdminPromotionsController',0,0,'2019-11-24 19:40:28',NULL,NULL);

/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`)
VALUES
	(1,'Super Administrator',1,'skin-red','2019-05-15 00:10:15',NULL);

/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_privileges_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`)
VALUES
	(1,1,0,0,0,0,1,1,'2019-05-15 00:10:15',NULL),
	(2,1,1,1,1,1,1,2,'2019-05-15 00:10:15',NULL),
	(3,0,1,1,1,1,1,3,'2019-05-15 00:10:15',NULL),
	(4,1,1,1,1,1,1,4,'2019-05-15 00:10:15',NULL),
	(5,1,1,1,1,1,1,5,'2019-05-15 00:10:15',NULL),
	(6,1,1,1,1,1,1,6,'2019-05-15 00:10:15',NULL),
	(7,1,1,1,1,1,1,7,'2019-05-15 00:10:15',NULL),
	(8,1,1,1,1,1,1,8,'2019-05-15 00:10:15',NULL),
	(9,1,1,1,1,1,1,9,'2019-05-15 00:10:15',NULL),
	(10,1,1,1,1,1,1,10,'2019-05-15 00:10:15',NULL),
	(11,1,0,1,0,1,1,11,'2019-05-15 00:10:15',NULL),
	(12,1,1,1,1,1,1,12,NULL,NULL),
	(13,1,1,1,1,1,1,13,NULL,NULL),
	(14,1,1,1,1,1,1,14,NULL,NULL),
	(15,1,1,1,1,1,1,15,NULL,NULL),
	(16,1,1,1,1,1,1,16,NULL,NULL),
	(17,1,1,1,1,1,1,17,NULL,NULL),
	(18,1,1,1,1,1,1,18,NULL,NULL),
	(19,1,1,1,1,1,1,19,NULL,NULL),
	(20,1,1,1,1,1,1,20,NULL,NULL),
	(21,1,1,1,1,1,1,21,NULL,NULL),
	(22,1,1,1,1,1,1,22,NULL,NULL),
	(23,1,1,1,1,1,1,23,NULL,NULL),
	(24,1,1,1,1,1,1,24,NULL,NULL);

/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`)
VALUES
	(1,'login_background_color',NULL,'text',NULL,'Input hexacode','2019-05-15 00:10:15',NULL,'Login Register Style','Login Background Color'),
	(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2019-05-15 00:10:15',NULL,'Login Register Style','Login Font Color'),
	(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2019-05-15 00:10:15',NULL,'Login Register Style','Login Background Image'),
	(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Email Setting','Email Sender'),
	(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2019-05-15 00:10:15',NULL,'Email Setting','Mail Driver'),
	(6,'smtp_host','','text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Email Setting','SMTP Host'),
	(7,'smtp_port','25','text',NULL,'default 25','2019-05-15 00:10:15',NULL,'Email Setting','SMTP Port'),
	(8,'smtp_username','','text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Email Setting','SMTP Username'),
	(9,'smtp_password','','text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Email Setting','SMTP Password'),
	(10,'appname','ANSA','text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Application Setting','Application Name'),
	(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2019-05-15 00:10:15',NULL,'Application Setting','Default Paper Print Size'),
	(12,'logo',NULL,'upload_image',NULL,NULL,'2019-05-15 00:10:15',NULL,'Application Setting','Logo'),
	(13,'favicon',NULL,'upload_image',NULL,NULL,'2019-05-15 00:10:15',NULL,'Application Setting','Favicon'),
	(14,'api_debug_mode','true','select','true,false',NULL,'2019-05-15 00:10:15',NULL,'Application Setting','API Debug Mode'),
	(15,'google_api_key',NULL,'text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Application Setting','Google API Key'),
	(16,'google_fcm_key',NULL,'text',NULL,NULL,'2019-05-15 00:10:15',NULL,'Application Setting','Google FCM Key'),
	(17,'cotizacion_dolar_usd_guaranigs','6350','text',NULL,'Valor de 1 Dolar (USD) en Guaranies (Gs)','2019-05-15 21:32:44',NULL,'Cotizaciones','Cotizacion Dolar (USD) - Guarani(Gs)'),
	(18,'cotizacion_dolar_usd_real','4.05','text',NULL,'Valor de 1 Dolar (USD) en  Reales (R$)','2019-05-15 21:32:50','2019-05-16 21:29:33','Cotizaciones','Cotizacion Dolar (USD) - Reales(R$)');

/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_statistic_components
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Super Admin',NULL,'admin@ansa.com','$2y$10$nCrMuKJ2sOsHnny2A.t2/.u6tWSG7eZj92/sPAKUHxIKWC.XSo6ua',1,'2019-05-15 00:10:15','2019-05-15 00:42:24','Active');

/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table imported_tires
# ------------------------------------------------------------

DROP TABLE IF EXISTS `imported_tires`;

CREATE TABLE `imported_tires` (
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `largura` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL,
  `aro` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `imported_tires` WRITE;
/*!40000 ALTER TABLE `imported_tires` DISABLE KEYS */;

INSERT INTO `imported_tires` (`codigo`, `nombre`, `tipo`, `marca`, `largura`, `perfil`, `aro`, `description`)
VALUES
	('18523','265/40R19 EAGLE F1 ASUMMETRIC 2','Paseo','Goodyear','265','40','19','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18447','265/35R19 EAGLE F1 ASYMMETRIC','Paseo','Goodyear','265','35','19','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18446','255/45R18 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','255','45','18','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('18454','255/40R18 EFFICIENT GRIP ROF','Paseo','Goodyear','255','45','18','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('6972','245/50R20 EAGLE RSA','Paseo','Goodyear','245','50','20','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('18522','245/45R19 EAGLE F1 ASYMMETRIC3','Paseo','Goodyear','245','45','19','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('18518','245/45R19 EFFICIENT GRIP ROF','Paseo','Goodyear','245','45','19','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('18453','245/45R18 EFFICIENT GRIP ROF','Paseo','Goodyear','245','45','18','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('18507','245/45R18 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','245','45','18','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('18445','245/35R18 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','245','35','18','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('18452','245/35R18 EAGLE F1 ASSYMETRIC 2 ROF','Paseo','Goodyear','245','35','18','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('13848','235/55R17 EAGLE RSA','Paseo','Goodyear','235','55','17','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('18357','235/50R18 EAGLE SPORT A/S','Paseo','Goodyear','235','50','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18531','235/45R17 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','235','45','17','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('4122','235/45R17 ASSURANCE','Paseo','Goodyear','235','45','17','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('3226','235/35R19 91Y EAGLE F1 ASYMMETRIC','Paseo','Goodyear','235','35','19','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('17673','225/55R18 ASSURANCE COMFORTED TOURING','Paseo','Goodyear','225','45','18','Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo.\r'),
	('17707','225/50R18 EAGLE LS2','Paseo','Goodyear','225','50','18','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('17823','225/50R17 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','225','50','17','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18450','225/45R18 EFFICIENT GRIP ROF','Paseo','Goodyear','225','45','18','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('9275','225/45R18 EAGLE RSA','Paseo','Goodyear','225','45','18','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('18449','225/45R17 EXCELLENCE ROF','Paseo','Goodyear','225','45','17','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('18530','225/45R17 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','225','45','17','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('17789','225/45R17 EAGLE F1 ASYMMETRIC','Paseo','Goodyear','225','45','17','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('17591','225/40R18 EAGLE F1 ASYMMETRIC 2 ROF','Paseo','Goodyear','225','40','18','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18444','225/35R19 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','225','35','19','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('18311','215/70R16 WRANGLER SUV','Paseo','Goodyear','215','70','16','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18309','215/65R16 WRANGLER SUV','Paseo','Goodyear','215','65','16','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18270','215/65R16 WRANGLER SUV ','Paseo','Goodyear','215','65','16','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18872','215/65R16 WRANGLER AT ADVENTURE','Paseo','Goodyear','215','65','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18508','215/55R18 EFFICIENT GRIP SUV','Paseo','Goodyear','215','55','18','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18871','215/55R17 EFFICIENT GRIP SUV','Paseo','Goodyear','215','55','17','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18524','215/55R17 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','215','55','17','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18013','215/55R16 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','215','55','16','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18398','215/50R17 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','215','50','17','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('13295','215/45R17 EXCELLENCE','Paseo','Goodyear','215','45','17','El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r'),
	('18267','215/45R17 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','215','45','17','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18517','215/45R17 ASSURANCE TRIPLEMAX','Paseo','Goodyear','215','45','17','Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r'),
	('9493','215/40R17 EAGLE F1 DIRECTIONAL','Paseo','Goodyear','215','40','17','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18862','205/75R16 CARGO MARATHON 2','Paseo','Goodyear','205','75','16','El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad.\r'),
	('16097','205/70R15 WRANGLER HP','Paseo','Goodyear','205','70','15','Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r'),
	('5015','205/65R15 EXCELLENCE BR','Paseo','Goodyear','205','65','15','El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r'),
	('17761','205/65R15 ASSURANCE','Paseo','Goodyear','205','65','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17562','205/65R15 ASSURANCE','Paseo','Goodyear','205','65','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18873','205/60R16 WRANGLER AT ADVENTURE','Paseo','Goodyear','205','60','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('17735','205/60R16 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','205','60','16','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('30','205/60R15 FORTERA COMFORT','Paseo','Goodyear','205','60','15','Un neumático de alto rendimiento con estilo, para ruedas de gran diámetro\r'),
	('17678','205/60R15 ASSURANCE','Paseo','Goodyear','205','60','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('6008','205/60R15 EXECELLENCE','Paseo','Goodyear','205','60','15','El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r'),
	('18726','205/55R17 EAGLE F1 ASYMMETRIC 3','Paseo','Goodyear','205','55','17','El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r'),
	('18266','205/55R16 EFFICIENTGRIP PERFORMANCE','Paseo','Goodyear','205','55','16','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('17805','205/55R16 EFFICIENTGRIP PERFORMANCE 91V BR','Paseo','Goodyear','205','55','16','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18349','205/55R16 EAGLE SPORT','Paseo','Goodyear','205','55','16','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('17009','205/55R16 ASSURANCE FUELMAX','Paseo','Goodyear','205','55','16','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r'),
	('18448','205/50R17 EFFICIENT GRIP ROF','Paseo','Goodyear','205','50','17','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('17033','205/45R16 ASSURANCE FUELMAX','Paseo','Goodyear','205','45','16','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r'),
	('12602','195/70R14 ASSURANCE DURAPLUS','Paseo','Goodyear','195','70','14','Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r'),
	('17825','195/65R15 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','195','65','15','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18403','195/65R15 EAGLE SPORT','Paseo','Goodyear','195','65','15','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('17831','195/65R15 ASSURANCE DURAPLUS','Paseo','Goodyear','195','65','15','Goodyear Assurance Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r'),
	('18528','195/65R15 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','195','65','15','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('17987','195/60R16 ASSURANCE','Paseo','Goodyear','195','60','16','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17804','195/60R15 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','195','60','15','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('9261','195/60R15 EAGLE NCT-5','Paseo','Goodyear','195','60','15','La llanta equipa originalmente los sedán de lujo\r'),
	('17106','195/60R15 ASSURANCE','Paseo','Goodyear','195','60','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18248','195/55R15 EFFICIENTGRIP PERFORMANCE','Paseo','Goodyear','195','55','15','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18348','195/55R15 EAGLE SPORT','Paseo','Goodyear','195','55','15','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('17484','195/55R15 ASSURANCE','Paseo','Goodyear','195','55','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17076','195/55R15 85V ASSURANCE COMFORTED TOURING','Paseo','Goodyear','195','55','15','Un neumático suave y cómodo para todas las estaciones, ayuda a prolongar la vida útil de la banda de rodamiento y, en promedio, un 20% más de amortiguación que los neumáticos de pasajeros estándar.\r'),
	('2669','185/70R14 EAGLE NCT-5','Paseo','Goodyear','185','70','14','La llanta equipa originalmente los sedán de lujo\r'),
	('18269','185/70R14 ASSURANCE','Paseo','Goodyear','185','70','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18489','185/70R14 88T DIRECTION TOURING','Paseo','Goodyear','185','70','14','Llanta con un excelente costo-beneficio, seguridad y tracción.\r'),
	('17623','185/70R14 ASSURANCE','Paseo','Goodyear','185','70','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18408','185/70R13 ASSURANCE','Paseo','Goodyear','185','70','13','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('3940','185/70R13 ASSURANCE DURAPLUS FUELMAX','Paseo','Goodyear','185','70','13','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r'),
	('18486','185/65R15 ASSURANCE FUELMAX','Paseo','Goodyear','185','65','15','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r'),
	('18249','185/65R15 ASSURANCE','Paseo','Goodyear','185','65','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17622','185/65R15 ASSURANCE','Paseo','Goodyear','185','65','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17546','185/65R15 DURAPLUS','Paseo','Goodyear','185','65','15','Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r'),
	('17418','185/65R15 EXCELLENCE AQUAMAX','Paseo','Goodyear','185','65','15','Neumático de equipo original en ciertos vehículos de importación europeos.\r'),
	('2991','185/65R14 NCT5','Paseo','Goodyear','185','65','14','La llanta equipa originalmente los sedán de lujo\r'),
	('2978','185/65R14 GPS3 SPORT','Paseo','Goodyear','185','65','14','Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r'),
	('13','185/65R14 DURAPLUS FUELMAX','Paseo','Goodyear','185','65','14','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r'),
	('6004','185/65R14 ASSURANCE DURAPLUS','Paseo','Goodyear','185','65','14','Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r'),
	('10553','185/65R14 ASSURANCE','Paseo','Goodyear','185','65','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17624','185/65R14 86T ASSURANCE','Paseo','Goodyear','185','65','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18516','185/65R14 ASSURANCE TRIPLEMAX','Paseo','Goodyear','185','65','14','Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r'),
	('18246','185/60R15 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','185','60','15','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18402','185/60R15 EAGLE SPORT','Paseo','Goodyear','185','60','15','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('6007','185/60R15 84H EXCELLENCE','Paseo','Goodyear','185','60','15','El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r'),
	('2979','185/60R14 EAGLE NCT5','Paseo','Goodyear','185','60','14','La llanta equipa originalmente los sedán de lujo\r'),
	('5227','185/60R14 EXCELLENCE','Paseo','Goodyear','185','60','14','El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r'),
	('16020','185/60R14 ASSURANCE','Paseo','Goodyear','185','60','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18352','185/60R14 ASSURANCE','Paseo','Goodyear','185','60','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('18351','185/55R16 EFFICIENT GRIP PERFORMANCE','Paseo','Goodyear','185','55','16','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('13037','185/55R15 EAGLE NCT5','Paseo','Goodyear','185','55','15','La llanta equipa originalmente los sedán de lujo\r'),
	('17984','175/70R14 ASSURANCE','Paseo','Goodyear','175','70','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('2968','175/70R13 GPS3 SPORT','Paseo','Goodyear','175','70','13','Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r'),
	('18857','175/70R13 DIRECTION TURING','Paseo','Goodyear','175','70','13','Llanta con un excelente costo-beneficio, seguridad y tracción.\r'),
	('18407','175/70R13 ASSURANCE','Paseo','Goodyear','175','70','13','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('9506','175/65R15 GT3','Paseo','Goodyear','175','65','15','El GT3 se trata de confort. Y el valor. Pero lo más importante es que el GT3 trata de ofrecerle los neumáticos más seguros que sabemos cómo fabricar. Su innovador diseño del bloque de la banda de rodadura Bubble Blade ™ funciona igual de bien en condiciones húmedas o secas, mientras que las barras de unión mejoran el manejo del automóvil en casi cualquier situación. Este neumático radial es para el conductor cuyas prioridades coinciden con nuestras prioridades: seguridad, comodidad y tranquilidad.\r'),
	('17780','175/65R15 ASSURANCE','Paseo','Goodyear','175','65','15','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('10997','175/65R15 GPS3','Paseo','Goodyear','175','65','15','Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r'),
	('3022','175/65R14 GPS3','Paseo','Goodyear','175','65','14','Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r'),
	('18341','175/65R14 ASSURANCE','Paseo','Goodyear','175','65','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('13038','175/65R14 ASSURANCE','Paseo','Goodyear','175','65','14','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('17081','175/65R14 82H EAGLE NCT5','Paseo','Goodyear','175','65','14','La llanta equipa originalmente los sedán de lujo\r'),
	('17787','175/65R14 82H ASSURANCE TRIPLEMAX','Paseo','Goodyear','175','65','14','Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r'),
	('2967','165/70R13 GPS3 SPORT','Paseo','Goodyear','165','70','13','Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r'),
	('18406','165/70R13 ASSURANCE','Paseo','Goodyear','165','70','13','Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r'),
	('10667','225/75R15 FORTERA','Utilitario','Goodyear','225','75','15','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('13922','35-12.5R17 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','35','12.5','17','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('13924','265/60R18 ASSURANCE CS FUEL MAX','Utilitario','Goodyear','265','60','18','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r'),
	('14078','245/75R16 WRANGLER MT/R KEVLAR ','Utilitario','Goodyear','245','75','16','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('1471','205/70R15C G32 CARGO ','Utilitario','Goodyear','205','70','15','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('16','215/80R16 WRANGLER ADVENTURE','Utilitario','Goodyear','215','80','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('16028','215/75R14 WRANGLER AT/S','Utilitario','Goodyear','215','75','14','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('16035','225/60R16 ASSURANCE FUELMAX','Utilitario','Goodyear','225','60','16','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r'),
	('16036','315/70R17 WRANGLER DURATRAC','Utilitario','Goodyear','315','70','17','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('16037','245/65R17 ASSURANCE FUELMAX','Utilitario','Goodyear','245','65','17','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r'),
	('16044','37-12.5R17 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','37','12.5','17','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('16045','225/65R17 ASSURANCE FUELMAX','Utilitario','Goodyear','225','65','17','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r'),
	('16049','205/70R15 FORTERA','Utilitario','Goodyear','205','70','15','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('16054','265/75R16 WRANGLER SR-A','Utilitario','Goodyear','265','75','16','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('16055','255/65R17 WRANGLER SR-A','Utilitario','Goodyear','255','65','17','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('16056','265/70R17 WRANGLER DURATRAC','Utilitario','Goodyear','265','70','17','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('16059','235/60R16 ASSURANCE FUEL MAX','Utilitario','Goodyear','235','60','16','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r'),
	('16065','255/65R17 WRANGLER SILENT ARMOR','Utilitario','Goodyear','255','65','17','Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r'),
	('16099','215/70R15 DURASPORT','Utilitario','Goodyear','215','70','15','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('17003','275/70R17 WRANGLER SILENT ARMOR','Utilitario','Goodyear','275','70','17','Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r'),
	('17010','750R16 WRANGLER TG','Utilitario','Goodyear','750','N/E','16','Un neumático resistente para vehiculos utilitarios.\r'),
	('17077','235/60R16 WRANGLER HP ALL WEATHER','Utilitario','Goodyear','235','60','16','Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV\r'),
	('17078','225/75R15 110/108Q AT/S TH','Utilitario','Goodyear','225','75','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17104','275/70R18  WRANGLER DURATRAC','Utilitario','Goodyear','275','70','18','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('17112','245/75R16 WRANGLER DURATRAC','Utilitario','Goodyear','245','75','16','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('17119','35-12.5R15 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','35','12.5','15','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('17473','235/65R17 FORTERA COMFORTED','Utilitario','Goodyear','235','65','17','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('17476','305/70R16 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','305','70','16','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('17488','235/70R16 WRANGLER SR-A','Utilitario','Goodyear','235','70','16','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('17490','195/70R15C G32 CARGO','Utilitario','Goodyear','195','70','15','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('17502','7.50R16LT WRANGLER AT/SA','Utilitario','Goodyear','7.50','N/E','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17574','42X14,5R17 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','42','14.5','17','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('17581','225/65R16C G32 CARGO','Utilitario','Goodyear','225','65','16','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('17584','235/65R17 EXCELLENCE','Utilitario','Goodyear','235','65','17','Neumático de equipo original en ciertos vehículos de importación europeos\r'),
	('17585','235/45R19 EFFICIENT GRIP ROF','Utilitario','Goodyear','235','45','19','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('17590','255/50R19 EAGLE F1 ASYMMETRIC SUV ROF ','Utilitario','Goodyear','255','50','19','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('17594','235/60R17 EFFICIENT GRIP','Utilitario','Goodyear','235','60','17','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('17611','225/75R16 WRANGLER AT/S','Utilitario','Goodyear','225','75','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17612','235/75R15 FORTERA COMFORT','Utilitario','Goodyear','235','75','15','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('17614','245/75R16 WRANGLER AT/S','Utilitario','Goodyear','245','75','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17661','235/60R17  FORTERA COMFORTED','Utilitario','Goodyear','235','60','17','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('17662','235/60R18 WRANGLER SUV','Utilitario','Goodyear','235','60','18','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('17664','265/70R17 WRANGLER SR-A','Utilitario','Goodyear','265','70','17','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('17669','215/80R16 FORTERA COMFORT','Utilitario','Goodyear','215','80','16','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('17671','265/60R18 WRANGLER SR-A','Utilitario','Goodyear','265','60','18','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('17691','265/50R20 FORTERA HL','Utilitario','Goodyear','265','50','20','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('17693','265/70R17 WRANGLER AT/S','Utilitario','Goodyear','265','70','17','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17706','235/55R18 EAGLE RSA','Utilitario','Goodyear','235','55','18','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('17709','245/65R17 WRANGLER SUV','Utilitario','Goodyear','245','65','17','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('17730','275/65R18 114T WRANGLER SRA','Utilitario','Goodyear','275','65','18','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('17734','235/60R16 WRANGLER SUV','Utilitario','Goodyear','235','60','16','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('17766','255/55R18 ASSURANCE','Utilitario','Goodyear','255','55','18','Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r'),
	('17767','255/55R18 ASSURANCE TRIPLETRED A/S','Utilitario','Goodyear','255','55','18','Neumático para todas las temporadas, tracción confiable en condiciones climáticas cambiantes y excelente tracción en condiciones de alta humedad.\r'),
	('17828','265/70R17 ASSURANCE TRIPLETRED','Utilitario','Goodyear','265','70','17','Neumático para todas las temporadas, tracción confiable en condiciones climáticas cambiantes y excelente tracción en condiciones de alta humedad.\r'),
	('17829','265/70R17 WRANGLER AT ADVENTURE OWL','Utilitario','Goodyear','265','70','17','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('17943','225/65R17 WRANGLER SUV','Utilitario','Goodyear','225','65','17','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('17949','205/75R14 WRANGLER AT/S REINFOR ','Utilitario','Goodyear','205','75','14','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17950','215/80R16 WRANGLER AT/S REINFOR','Utilitario','Goodyear','215','80','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17952','265/75R16 WRANGLER ARMORTRAC','Utilitario','Goodyear','265','75','16','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('17953','185R14C WRANGLER AT/S','Utilitario','Goodyear','185','N/E','14','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('17986','265/65R17 EFFICIENT GRIP SUV','Utilitario','Goodyear','265','65','17','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18002','235/55R18 ASSURANCE COMFORTED TOURING ','Utilitario','Goodyear','235','55','18','Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo\r'),
	('18004','245/45R18 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','245','45','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18005','215/45R18 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','215','45','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18052','235/65R17 WRANGLER SUV','Utilitario','Goodyear','235','65','17','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18109','205/65R16 EFFICIENT GRIP','Utilitario','Goodyear','205','65','16','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18121','235/45R18 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','235','45','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18124','275/60R20 115T WRANGLER AT ADVENTURE','Utilitario','Goodyear','275','60','20','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18128','255/55R18 109Y EAGLE F1 ASYMMETRIC SUV','Utilitario','Goodyear','255','55','18','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18137','205/50R17 EFFICIENT GRIP PERFORMANCE ','Utilitario','Goodyear','205','50','17','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18148','235/65R17 EFFICIENT GRIP SUV','Utilitario','Goodyear','235','65','17','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18152','245/70R16 WRANGLER AT ADVENTURE','Utilitario','Goodyear','245','70','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18155','265/70R16 WRANGLER AT ADVENTURE','Utilitario','Goodyear','265','70','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18167','315/75R16 FIERCI ATITUDE','Utilitario','Goodyear','315','75','16','Conduce con estilo en autopistas y senderos con un neumático agresivo para todo terreno creado para la aventura y el aspecto\r'),
	('18187','265/65R17 WRANGLER DURATRAC','Utilitario','Goodyear','265','65','17','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('18189','255/50R20 EAGLE RSA 104V','Utilitario','Goodyear','255','50','20','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('18190','235/70R16 WRANGLER AT ADVENTURE','Utilitario','Goodyear','235','70','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18191','235/60R17 EFFICIENT GRIP SUV','Utilitario','Goodyear','235','60','17','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18192','265/70R16 EFFICIENT GRIP SUV','Utilitario','Goodyear','265','70','16','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18251','235/70R16 WRANGLER AMORTRAC','Utilitario','Goodyear','235','70','16','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18256','255/50R19 EAGLE F1 ASYMMETRIC','Utilitario','Goodyear','255','50','19','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18264','225/55R18  EFFICIENT GRIP','Utilitario','Goodyear','225','55','18','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18284','245/45R17 EAGLE FI ASYMMETRIC ROF','Utilitario','Goodyear','245','45','17','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18308','265/70R16 WRANGLER SUV','Utilitario','Goodyear','265','70','16','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18316','235/65R17 ASSURANCE TRIPLETRED','Utilitario','Goodyear','235','65','17','Neumático para todas las temporadas, tracción confiable en condiciones climáticas cambiantes y excelente tracción en condiciones de alta humedad.\r'),
	('18337','265/70R16 WRANGLER ARMORTRAC','Utilitario','Goodyear','265','70','16','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18338','225/65R17 EFFICIENT GRIP SUV','Utilitario','Goodyear','225','65','17','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18339','255/55R19 EFFICIENT GRIP SUV','Utilitario','Goodyear','255','55','19','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18340','245/70R16 WRANGLER ARMORTRAC ','Utilitario','Goodyear','245','70','16','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18342','205/70R15 WRANGLER SUV','Utilitario','Goodyear','205','70','15','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18350','245/60R18 EFFICIENT GRIP SUV','Utilitario','Goodyear','245','60','18','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18353','245/75R16 WRANGLER ARMORTRAC','Utilitario','Goodyear','245','75','16','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18358','265/60R18 WRANGLER AT ADVENTURE','Utilitario','Goodyear','265','60','18','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18359','265/70R17 WRANGLER AT ADVENTURE','Utilitario','Goodyear','265','70','17','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18360','275/60R20 WRANGLER AT ADVENTURE OWL','Utilitario','Goodyear','275','60','20','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18362','265/65R17 WRANGLER AT ADVENTURE 112T','Utilitario','Goodyear','265','65','17','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18363','265/70R16 WRANGLER AT ADVENTURE','Utilitario','Goodyear','265','70','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18374','195/55R16 EFFICIENT GRIP PERFORMANCE','Utilitario','Goodyear','295','55','16','El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r'),
	('18400','235/75R15 WRANGLER ARMORTRAC','Utilitario','Goodyear','235','75','15','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18455','275/45R21 EAGLE F1 ASIMMETRIC SUV','Utilitario','Goodyear','275','45','21','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18457','275/35R19 EXCELLENCE ROF','Utilitario','Goodyear','275','35','19','Neumático de equipo original en ciertos vehículos de importación europeos\r'),
	('18458','285/45R19 EAGLE F1 ASYMMETRIC SUV ROF','Utilitario','Goodyear','285','45','19','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18459','285/40R21 EAGLE F1 ASYMMETRIC 2 SUV ','Utilitario','Goodyear','285','40','21','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18466','245/45R20 EAGLE F1 SUPERCAR','Utilitario','Goodyear','245','45','20','Alto rendimiento y tracción en seco.\r'),
	('18467','265/70R17 WRANGLER DURATRAC','Utilitario','Goodyear','265','70','17','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('18487','245/75R17 WRANGLER DURATRAC','Utilitario','Goodyear','245','75','17','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('18488','245/70R17 WRANGLER SR-A','Utilitario','Goodyear','245','70','17','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('18497','265/50R20 EFFICIENT GRIP SUV','Utilitario','Goodyear','265','50','20','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18498','255/60R18 WRANGLER AMORTRAC','Utilitario','Goodyear','255','60','18','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18499','31X10.50R15 WRANGLER AT ADVENTURE','Utilitario','Goodyear','31','10.5','15','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18502','235/75R15 WRANGLERL AT/SA ','Utilitario','Goodyear','235','75','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('18504','205/70R15 WRANGLER ADVENTURE','Utilitario','Goodyear','205','70','15','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18509','305/35R20 EAGLE F1 SUPERCAR G 2 ','Utilitario','Goodyear','305','35','20','Alto rendimiento y tracción en seco.\r'),
	('18510','265/60R18 WRANGLER DURATRAC','Utilitario','Goodyear','265','60','18','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('18511','35X12,50R18 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','35','12.5','18','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('18512','285/75R18 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','285','75','18','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('18514','225/60R17 WRANGLER SUV','Utilitario','Goodyear','225','60','17','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18519','255/40R19 EFFICIENT GRIP ROF','Utilitario','Goodyear','255','40','19','Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r'),
	('18520','255/55R20 EAGLE F1 ASYMMETRIC SUV','Utilitario','Goodyear','255','55','20','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18529','215/60R17 EFFICIENT GRIP SUV','Utilitario','Goodyear','215','60','17','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18532','245/45R17 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','245','45','17','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18533','235/50R17 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','235','50','17','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18534','245/40R17 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','245','40','17','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18538','225/40R18 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','225','40','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18539','245/40R18 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','245','40','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18540','245/45R20 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','245','45','20','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18612','255/70R16 WRANGLER AT ADVENTURE','Utilitario','Goodyear','255','70','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18712','305/35R20 EAGLE F1 SUPERCAR G2','Utilitario','Goodyear','305','35','20','Alto rendimiento y tracción en seco.\r'),
	('18713','275/65R18 WRANGLER OWL AT ADVENTURE','Utilitario','Goodyear','275','65','18','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18714','245/75R16 WRANGLER AT ADVENTURE','Utilitario','Goodyear','245','75','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18746','265/65R17 WRANGLER ARMORTRAC','Utilitario','Goodyear','265','65','17','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18747','205/65R15 WRANGLER SUV','Utilitario','Goodyear','205','65','15','Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r'),
	('18778','225/50R17 EFFIGRIP PERFORMANCE ROF','Utilitario','Goodyear','225','50','17','Neumático de equipo original en ciertos vehículos de importación europeos\r'),
	('18780','215/80R16 WRANGLER ARMORTRAC','Utilitario','Goodyear','215','80','16','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18782','265/75R16 WRANGLER OWL DURATRAC','Utilitario','Goodyear','265','75','16','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('18783','35X12.50R20 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','35','12.5','20','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('18800','255/45R20 EAGLE SPORT A/S','Utilitario','Goodyear','255','45','20','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18801','235/40R18 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','235','35','18','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18802','245/70R17 WRANGLER AT ADVENTURE','Utilitario','Goodyear','245','70','17','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('18803','245/35R20 EAGLE SPORT ALL SEASON','Utilitario','Goodyear','245','35','20','Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r'),
	('18839','275/35R20 EXCELLENCE 102Y ROF','Utilitario','Goodyear','275','35','20','Neumático de equipo original en ciertos vehículos de importación europeos\r'),
	('18840','275/35R20 EAGLE F1 ASYM 2 ROF','Utilitario','Goodyear','275','35','20','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('18841','275/40R19 EXCELLENCE ROF','Utilitario','Goodyear','275','40','19','Neumático de equipo original en ciertos vehículos de importación europeos\r'),
	('18842','275/50R20 EAGLE LS2 ROF','Utilitario','Goodyear','275','50','20','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('18853','225/75R16 CARGO MARATHON 2','Utilitario','Goodyear','225','75','16','El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad\r'),
	('18864','225/70R15 CARGO MARATHON 2','Utilitario','Goodyear','225','70','15','El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad\r'),
	('18866','275/70R18 WRANGLER DURATRAC','Utilitario','Goodyear','275','70','18','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('18867','265/70R17 WRANGLER ARMORTRAC','Utilitario','Goodyear','265','70','17','Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r'),
	('18868','255/70R16 EFFICIENTGRIP SUV','Utilitario','Goodyear','255','70','16','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18869','235/55R18 EFFICIENTGRIP SUV','Utilitario','Goodyear','235','55','18','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18870','235/55R19 RFFICIENTGRIP SUV','Utilitario','Goodyear','235','55','19','El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r'),
	('18910','185R14 C CARGO MARATHON 2','Utilitario','Goodyear','185','N/E','14','El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad\r'),
	('2644','235/75R15 WRANGLER AT/SA OWL','Utilitario','Goodyear','235','75','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('2659','225/75R15 ADVENTURE','Utilitario','Goodyear','225','75','15','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('2956','245/70R16 WRANGLER AT/SA','Utilitario','Goodyear','245','70','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('296','315/75R16 WRANGLER DURATRAC','Utilitario','Goodyear','315','75','16','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('2982','225/70R15C G32 CARGO','Utilitario','Goodyear','225','70','15','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('3024','215/75R14 WRANGLER AT/S OWL','Utilitario','Goodyear','215','75','14','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3129','235/60R16 FORTERA','Utilitario','Goodyear','235','60','16','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('313','225/75R16 WRANGLER AT/SA','Utilitario','Goodyear','225','75','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3140','31-10.50R15 WRANGLER AT/S OWL','Utilitario','Goodyear','31','10.5','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3166','265/70R16 WRANGLER AT/SA','Utilitario','Goodyear','265','70','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3167','265/65R17 WRANGLER AT/SA OWL ','Utilitario','Goodyear','265','65','17','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3168','265/75R16 WRANGLER AT/SA OWL','Utilitario','Goodyear','265','75','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3193','225/75R15 WRANGLER  AT/SA OWL','Utilitario','Goodyear','225','75','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3196','30-90.5R15 WRANGLER AT/SA OWL','Utilitario','Goodyear','30','90.5','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3203','235/70R16 WRANGLER SR-A','Utilitario','Goodyear','235','70','16','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r'),
	('3266','31-10.5R15 WRANGLER AT/SA','Utilitario','Goodyear','31','10.5','15','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3270','33-12.50R15 WRANGLER DURATRAC','Utilitario','Goodyear','33','12.5','15','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('3299','185R14C G32 CARGO ','Utilitario','Goodyear','185','N/E','14','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('3476','205/70R15 WRANGLER AT ADVENTURE','Utilitario','Goodyear','205','70','15','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('35','265/70R16 WRANGLER ADVENTURE','Utilitario','Goodyear','265','70','16','Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r'),
	('3577','235/85R16 WRANGLER AT/SA','Utilitario','Goodyear','235','85','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('3640','225/75R16C G32 CARGO','Utilitario','Goodyear','225','75','16','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('3641','265/75R16 123/120R FORTERA','Utilitario','Goodyear','235','75','16','Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r'),
	('3759','195/75R16 G32 CARGO ','Utilitario','Goodyear','195','75','16','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('3934','215/70R14C G32 PLUS','Utilitario','Goodyear','215','70','14','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('3935','205/75R16C G32 CARGO','Utilitario','Goodyear','205','75','16','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('3947','195R14C G46','Utilitario','Goodyear','195','N/E','14','es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('4109','285/75R16 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','285','75','16','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('4316','195/75R14 G-32','Utilitario','Goodyear','195','75','14','G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r'),
	('4409','205/75R15 WRANGLER AT','Utilitario','Goodyear','205','75','15','Resistencia robusta, tracción en todo terreno y un diseño económico de la banda de rodamiento para camionetas pickup.\r'),
	('4557','205R16C WRANGLER AT/S','Utilitario','Goodyear','205','N/E','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('467','235/70R16 WRANGLER AT/SA','Utilitario','Goodyear','235','70','16','Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r'),
	('4950','265/60R18 WRANGLER SILENT ARMOR OWL ','Utilitario','Goodyear','265','60','18','Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r'),
	('5174','265/70R18 WRANGLER SR-A ','Utilitario','Goodyear','265','70','18','Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes.\r'),
	('5192','285/75R16 WRANGLER SILENT ARMOR OWL','Utilitario','Goodyear','285','75','16','Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r'),
	('5193','285/70R17 WRANGLER MT/R OWL','Utilitario','Goodyear','285','70','17','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('5198','33-12.50R15 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','33','12.5','15','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('5202','32-11.50R15 WRANGLER MTR OWL KEVLAR','Utilitario','Goodyear','32','11.5','15','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('5490','265/75R16 WRANGLER MT/R ','Utilitario','Goodyear','265','75','16','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('6973','255/60R19 EAGLE RSA','Utilitario','Goodyear','255','60','19','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('6974','275/55R20 EAGLE LS2 ','Utilitario','Goodyear','275','55','20','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('7136','255/55R19 WRANGLER HP','Utilitario','Goodyear','255','55','19','Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r'),
	('7139','255/55R18 EAGLE F1 ASSYMMETRIC SUV ','Utilitario','Goodyear','255','55','18','El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r'),
	('7242','275/70R17 WRANGLER MT/R KEVLAR','Utilitario','Goodyear','275','70','17','Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r'),
	('726','205/75R15 WRANGLER RT/S','Utilitario','Goodyear','205','75','15','Diseñado para proporcionar tracción en carretera durante todo el año con un manejo competente en terrenos ligeros.\r'),
	('7570','235/60R18 EAGLE RS-A','Utilitario','Goodyear','235','60','18','Neumático de alto rendimiento para diversos tipos de condiciones.\r'),
	('7909','265/75R16 WRANGLER DURATRAC','Utilitario','Goodyear','265','75','16','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('9285','235/65R17 ASSURANCE COMFORTED TOURING','Utilitario','Goodyear','235','65','17','Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo\r'),
	('9302','265/70R16 WRANGLER HP ','Utilitario','Goodyear','265','70','16','Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r'),
	('9307','245/75R16 120Q WRANGLER OWL DURATRAC ','Utilitario','Goodyear','245','75','16','El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r'),
	('79','10.00-20 CONQUISTADOR 16 PR','Camion','Goodyear','10.00','N/E','20','Neumático para uso en todo tipo de servicios de transporte de carga. Banda de rodamiento centrada y ranuras laterales, lo que garantiza una tracción múltiple en cualquier tipo de piso. El compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro. Tiene una carcasa de nylon especial que proporciona ayuda para maximizar la durabilidad y el kilometraje.\r'),
	('71','10.00-20 G8 16PR ','Camion','Goodyear','10.00','N/E','20','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('2649','10.00-20 SUPER CONQUISTADOR 16PR ','Camion','Goodyear','10.00','N/E','20','Neumático para uso en todo tipo de servicios de transporte de carga.\nBanda de rodamiento con ranuras y cuchillas transversales que garantizan una tracción múltiple en cualquier tipo de piso.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro.\nTiene una carcasa de nylon especial que proporciona ayuda para maximizar la durabilidad y el kilometraje.\r'),
	('237','10.00R20 G658 146/143K ','Camion','Goodyear','10.00','N/E','20','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('6257','10.00R20 G665 148J ','Camion','Goodyear','10.00','N/E','20','Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r'),
	('6259','10.00R20 G667 146/143 K ','Camion','Goodyear','10.00','N/E','20','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('5408','10.00R20 G677 MSD PLUS 146K 16PR ','Camion','Goodyear','10.00','N/E','20','\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r'),
	('73','11.00-22 G8 16PR ','Camion','Goodyear','11.00','N/E','22','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('18975','11.00R22 ARMOR MAX MSD 152/149 K ','Camion','Goodyear','11.00','N/E','22','MÁXIMA resistencia de la carcasa con 4 correas de acero y alambre de alta elongación\n  MÁXIMO kilometraje con diseño probado de tracción de servicio mixto\n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r'),
	('8295','11.00R22 G658 152K ','Camion','Goodyear','11.00','N/E','22','Tecnología Duralife: carcasa más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('8296','11.00R22 G667 152K ','Camion','Goodyear','11.00','N/E','22','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('13754','11.00R22 G677 MSD PLUS 152K 16PR ','Camion','Goodyear','11.00','N/E','22','\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r'),
	('46','11R22.5 G667 146L','Camion','Goodyear','11.00','N/E','22.5','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('17483','12R22,5 152/148 LR8 TL MARATHON LHS TURQ ','Camion','Goodyear','12','N/E','22.5','MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r'),
	('18336','12R22,5 G667 150/147L H TL BR ','Camion','Goodyear','12','N/E','22.5','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('17313','12R22.5 G658 150/147L ','Camion','Goodyear','12','N/E','22.5','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('18808','215/75R17,5 REGIONAL RHS 126/124L F BR ','Camion','Goodyear','215','75','17','Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r'),
	('14476','215/75R17.5 G686 MSS 126/124K ','Camion','Goodyear','215','75','17','\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r'),
	('18854','215/75R17.5 REGIONAL RHD 126/124L F BR ','Camion','Goodyear','215','75','17','Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r'),
	('2975','215/75R17.5 REGIONAL RHD 126/124L ','Camion','Goodyear','215','75','17.5','Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r'),
	('2976','215/75R17.5 REGIONAL RHS 126/124L ','Camion','Goodyear','215','75','17.5','Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r'),
	('31','215/75R17.50 G665 126/124J  BR ','Camion','Goodyear','215','75','17.5','Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r'),
	('18809','235/75R17,5 REGIONAL RHS 132/130 L BR ','Camion','Goodyear','235','75','17.5','Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r'),
	('10761','235/75R17.5 REGIONAL RHS 132/130L BR ','Camion','Goodyear','235','75','17.5','Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r'),
	('18855','275/80R22,5 CITYMAX PLUS 149/146J BR ','Camion','Goodyear','275','80','22.5','MAYOR kilometraje en la vida total;\n\n MAYOR RESISTENCIA: bloques flexibles que ayudan a reducir el calor para el servicio de caminar y parar;\n\n MAYOR RESISTENCIA: tecnología Duralife ™ con una carcasa resistente que ayuda a la protección contra impactos y especialmente a la fricción lateral\r'),
	('17944','275/80R22,5 G677 MSD PLUS 149K ','Camion','Goodyear','275','80','22.5','\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r'),
	('18412','275/80R22,5 KMAX D 149/146L BR ','Camion','Goodyear','275','80','22.5','MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r'),
	('6013','275/80R22.5 G665 149/146J ','Camion','Goodyear','275','80','22.5','Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r'),
	('5704','275/80R22.5 KELLY KS461 16PR ','Camion','Goodyear','275','80','22.5','Diseño de la banda de rodamiento de 5 carriles optimizado por computadora: funcionamiento más fresco y mayor área de contacto para una mejor distribución de la carga, mayor kilometraje y facilidad de manejo y seguridad.\r'),
	('18244','275/80R22.5 KMAX S 149/146L ','Camion','Goodyear','275','80','22.5','MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r'),
	('90011698','295/80R22,5 152M REG RHD II','Camion','Goodyear','295','80','22.5','Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r'),
	('18856','295/80R22,5 FUEL MAX LHD 152/148L  BR ','Camion','Goodyear','295','80','22.5','MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r'),
	('18810','295/80R22,5 FUEL MAX LHS 154/149M J BR ','Camion','Goodyear','295','80','22.5','MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r'),
	('17072','295/80R22,5 G677 MSD PLUS 152K ','Camion','Goodyear','295','80','22.5','\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r'),
	('7113','295/80R22,5 REGIONAL RHD II 152M H LUX','Camion','Goodyear','295','80','22.5','Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r'),
	('18821','295/80R22,5 STEELMARK AGD 152/148L H TL BR ','Camion','Goodyear','295','80','22.5','\nDiseño optimizado de la banda de rodamiento de 5 carriles: proporciona una mejor distribución de la carga, un desgaste uniforme y un mayor kilometraje.\r'),
	('18820','295/80R22,5 STEELMARK AGS 152/148L H TL BR ','Camion','Goodyear','295','80','22.5','\nDiseño optimizado de la banda de rodamiento de 5 carriles: proporciona una mejor distribución de la carga, un desgaste uniforme y un mayor kilometraje.\r'),
	('6164','295/80R22.5 G657 154/149 L ','Camion','Goodyear','295','80','22.5','Para aplicaciones en servicio de larga distancia con tecnología Duralife\r'),
	('6014','295/80R22.5 G665 152/148K ','Camion','Goodyear','295','80','22.5','Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r'),
	('6012','295/80R22.5 G667 152/148L ','Camion','Goodyear','295','80','22.5','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('5409','295/80R22.5 KELLY KS461 16PR ','Camion','Goodyear','295','80','22.5','Diseño de la banda de rodamiento de 5 carriles optimizado por computadora: funcionamiento más fresco y mayor área de contacto para una mejor distribución de la carga, mayor kilometraje y facilidad de manejo y seguridad.\r'),
	('7884','295/80R22.5 KELLY KS481 16PR ','Camion','Goodyear','295','80','22.5','\nBanda de rodamiento ancha y plana: permite una mejor distribución de la carga y asientos en el piso, optimizando el desgaste uniforme y el kilometraje;\r'),
	('18779','295/80R22.5 KMAX D TRAC 152/148L H BR ','Camion','Goodyear','295','80','22.5','MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r'),
	('18166','295/80R22.5 KMAX S 152/148L H TL 122642','Camion','Goodyear','295','80','22.5','MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r'),
	('5984','315/80R22,5 G658 154/150M ','Camion','Goodyear','315','80','22.5','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('13572','315/80R22.5 G667 156/150M TL BR121307','Camion','Goodyear','315','80','22.5','Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r'),
	('18179','385/65R22,5 MARATHON LHS II+ 160/158K L LUXERMBURG ','Camion','Goodyear','385','65','22.5','MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r'),
	('4143','385/65R22.5 REG RHT (S.SINGLE) 160J L ','Camion','Goodyear','385','65','22.5','\nFacilita la calibración, elimina la molestia de combinar neumáticos dobles, menos ensamblajes y desensamblajes, y reduce el trabajo de mantenimiento\r'),
	('17487','6.00-14 SUPER CAMINERA XTRAW PR8 PE ','Utilitario','Goodyear','6.00','N/E','14','Neumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\r'),
	('3584','6.50-16 CT160 NYTC 6PR TT BLT T GY ','Utilitario','Goodyear','6.50','N/E','16','Neumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\r'),
	('49','6.50-16 G8 6PR ','Utilitario','Goodyear','6.50','N/E','16','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('5775','600-13 TT PR08 HM G8 PE ','Utilitario','Goodyear','6.00','N/E','13','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('52','7.00-16 CT160 10PR ','Utilitario','Goodyear','7.00','N/E','16','Neumático para vehículos ligeros y uso en todo tipo de servicios.\nDiseño de la banda de rodamiento con centro de bloqueo y bloques laterales para una buena tracción.\nRanuras radiales profundas, que permiten la autolimpieza de la banda de rodadura, ya que evitan la retención de piedras y barro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('50','7.00-16 G8 10PR ','Utilitario','Goodyear','7.00','N/E','16','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('3314','7.50-16 BANDEIRANTE 12PR ','Utilitario','Goodyear','7.50','N/E','16','Mejor distribución de carga con mínima compresión.\nMejor autolimpieza y facilidad para repeler piedras.\nMayor estabilidad direccional.\nDistribución uniforme de tensiones, proporcionando resistencia superior contra daños.\nConserva la carcasa para un futuro recauchutado\r'),
	('64','7.50-16 CT160 10PR ','Utilitario','Goodyear','7.50','N/E','16','Neumático para vehículos ligeros y uso en todo tipo de servicios.\nDiseño de la banda de rodamiento con centro de bloqueo y bloques laterales para una buena tracción.\nRanuras radiales profundas, que permiten la autolimpieza de la banda de rodadura, ya que evitan la retención de piedras y barro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('62','7.50-16 G8 10PR ','Utilitario','Goodyear','7.50','N/E','16','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('3271','7.50-16 G8 12PR ','Utilitario','Goodyear','7.50','N/E','16','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('5300','7.50-18 G8 8PR ','Utilitario','Goodyear','7.50','N/E','18','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('3407','7.50R16 G32 F TT BR ','Utilitario','Goodyear','7.50','N/E','16','Compuesto de goma diferenciado: mayor agarre y resistencia al corte, maximizando el kilometraje.\n Diseño de pista ancha con ranuras y cuchillas anchas: excelente capacidad de conducción, autolimpieza, estabilidad lateral y más seguridad en pistas mojadas.\r'),
	('3012','7.50R16 G49 F TT BR ','Utilitario','Goodyear','7.50','N/E','16','Diseño de bloque con grandes ranuras longitudinales: excelente respuesta al torque del vehículo.\n Compuesto exclusivo de la banda de rodamiento: mayor agarre y resistencia a cortes y tirones.\r'),
	('78','9.00-20 CONQUISTADOR 14PR ','Utilitario','Goodyear','9.00','N/E','20','Neumático para uso en todo tipo de servicios de transporte de carga. Banda de rodamiento centrada y ranuras laterales, lo que garantiza una tracción múltiple en cualquier tipo de piso. El compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro. Tiene una carcasa de nylon especial que proporciona que ayuda a maximizar la durabilidad y el kilometraje.\r'),
	('70','9.00-20 G8 14PR ','Utilitario','Goodyear','9.00','N/E','20','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('3491','9-17.5 PL/G8 NYSC 12PR TT1052852','Utilitario','Goodyear','9.00','N/E','17.5','\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r'),
	('3620','DYNA TORQUE II R1 12PR','Agrícola','Goodyear','12.4','N/E','36','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('7194','ALL SERVICE I3 10PR','Agrícola','Goodyear','6.50','N/E','16','• Mayor agarre y auto limpieza para aplicación en plataformas y sembradoras.\n• Diseño militar evita desplazamiento permitiendo un perfecto funcionamiento del mecanismo del implemento\n\r'),
	('5028','DYNA TORQUE II R1 8PR','Agrícola','Goodyear','14.9','N/E','24','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('5228','RIB TRACTOR F2 10PR','Agrícola','Goodyear','9.00','N/E','16','• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('18071','ALL IMPLEMENT TT 10PR','Agrícola','Titan','7.00','N/E','16','• Mayor agarre y auto limpieza para aplicación en plataformas y sembradoras. \n• Diseño militar evita desplazamiento permitiendo un perfecto funcionamiento del mecanismo del implemento.\n\r'),
	('4622','POWER TORQUE R1 14PR','Agrícola','Goodyear','13.6','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Exclusivo diseño Goodyear con barras alternadas maximizando la fuerza transmitida al suelo.\n• Protección extra en la región del aro que protege contra suciedad, piedras y restos de cultivo\n\r'),
	('229','DYNA TORQUE II R1 8PR','Agrícola','Goodyear','14.9','N/E','28','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('309','SUPER FLOTATION 10PR','Agrícola','Goodyear','10.5','80','18','• Ideal para plataformas, sembradoras y pulverizadores.\n• Flotación extra debido a mayor ancho.\n• Proporciona buena capacidad de carga con un contorno optimizado.\n\r'),
	('3272','SUPER CUARTEADORA R1 6PR','Agrícola','Goodyear','9.5','N/E','24','• Para aplicaciones en tractores, cosechadoras y implementos de las áreas inundadas (cultivo de arroz).\n• Tracción uniforme y resistencia al resbale debido al diseño de las barras simétricas.\n\r'),
	('8568','DYNA TORQUE II R1 10PR ','Agrícola','Goodyear','12.4','N/E','24','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('3235','SURE GRIP IMPLEMENT I3 10PR ','Agrícola','Goodyear','12.5','80','18','• Para aplicaciones en retro excavadoras y cosechadoras.\n• Tracción relativa en suelos sueltos y aplicaciones industriales.\n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r'),
	('5615','RIB TRACTOR F2 8PR ','Agrícola','Goodyear','7.50','N/E','16','• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('227','DYNA TORQUE II R1 12PR ','Agrícola','Goodyear','14.9','N/E','26','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('6165','SUPERFLOT II I-3 14PR ','Agrícola','Goodyear','400','60','15.5 ','• Recomendado para ejes libres de transbordos e implementos agrícolas.\n• Minimiza la compactación del suelo debido a la mayor área de contacto de su rodaje.\n• Talón reforzado para soportar altas cargas a velocidades de hasta 50 Km/h.\n\r'),
	('5236','RIB TRACTOR F2 8PR','Agrícola','Goodyear','7.50','N/E','18','• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('222','DYNA TORQUE II R1 6PR','Agrícola','Goodyear','11.2','N/E','28','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('3218','DYNA TORQUE III R1 12PR','Agrícola','Goodyear','23.1','N/E','30','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('4621','DYNA RIB F2 10PR ','Agrícola','Goodyear','10.00','N/E','16','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r'),
	('3201','POWER TORQUE R1 12PR','Agrícola','Goodyear','18.4','N/E','26','• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Exclusivo diseño Goodyear con barras alternadas maximizando la fuerza transmitida al suelo.\n• Protección extra en la región del aro que protege contra suciedad, piedras y restos de cultivo.\n\r'),
	('3164','SUPER LAMEIRO R1 12PR','Agrícola','Goodyear','12.4','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Ancho de la barra y del aro, optimizados para servicios de pulverización y trabajo entre líneas.\n\r'),
	('234','DYNA TORQUE II R1 12PR ','Agrícola','Goodyear','18.4','N/E','34','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('232','DYNA TORQUE II R1 12PR','Agrícola','Goodyear','18.4','N/E','30','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('10764','FARM UTILITY I1 12PR ','Agrícola','Goodyear','11L','N/E','15','• Ideal para plataformas, sembradoras y pulverizadores.\n• Flotación extra debido a mayor ancho.\n• Proporciona buena capacidad de carga con un contorno optimizado\n\r'),
	('12685','MAQ AGRICOLAS I1 10PR','Agrícola','Goodyear','7.50','N/E','16','• Atiende a las necesidades de implementos agrícolas en eje libre.\n• Mayor estabilidad a las ruedas libres de los implementos agrícolas.\n• Desempeño optimizado a costo justo.\n\r'),
	('4003','DYNA TORQUE III R1 14PR','Agrícola','Goodyear','30.5','N/E','L32','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('3621','DYNA TORQUE III R1 PR12  ','Agrícola','Goodyear','28L','N/E','26','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('236','DYNA TORQUE II R1 12PR','Agrícola','Goodyear','18.4','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('4569','DYNA TORQUE II R1 14PR','Agrícola','Goodyear','20.8','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('18019','HI-FLOTATION 12PR ','Agrícola','Titan','10.5','80','18','• Ideal para plantadoras, sementeras y pulverizadores.\n• Fluctuación extra debido a su largura mayor. \n• Proporciona buena capacidad de carga con un contorno optimizado.\n\r'),
	('18463','HD2000 10PR TL SKD ','Agrícola','Titan','12','N/E','16.5','• Aplicado a minicargaderas y retro excavadoras.\n• Lateral más resistente con diseño agresivo del hombro. \n• Durabilidad maximizada por la mayor área de barras.\n• Mayor resistencia a la penetración debido a la línea del centro reforzada\n\r'),
	('224','DYNA TORQUE II R1 6PR','Agrícola','Goodyear','12.4','N/E','28','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('4623','SUPER GRIP IMPLEMENT I3 10PR ','Agrícola','Goodyear','16.0','70','20','• Para aplicaciones en retro excavadoras y cosechadoras.\n• Tracción relativa en suelos sueltos y aplicaciones industriales.\n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r'),
	('18119','ULTRA SPRAYER R1 150 A8 ','Agrícola','Goodyear','320','90','R42','• Proyectado específicamente para aplicaciones de pulverización.\n• Durabilidad debido al aumento significativo de la superficie de las barras de tracción.\n\r'),
	('230','DYNA TORQUE II R1 8PR ','Agrícola','Goodyear','16.9','N/E','30','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('17616','APR R1 162 A8 ','Agrícola','Goodyear','520','85','R42','• Línea con armadura de aramida\n• Uso en tractores y cosechadoras\n• Diseño con centro abierto\n\r'),
	('18021','HI-TRACTION LUG II 12PR ','Agrícola','Titan','12.4','N/E','36','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('3800','POWER TORQUE R1 8PR ','Agrícola','Goodyear','16.9','N/E','28','• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Exclusivo diseño Goodyear con barras alternadas maximizando la fuerza transmitida al suelo.\n• Protección extra en la región del aro que protege contra suciedad, piedras y restos de cultivo.\n\r'),
	('3236','DYNA TORQUE III R1 12PR','Agrícola','Goodyear','24.5','N/E','32','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('9224','DYNA TORQUE II R1 6PR ','Agrícola','Goodyear','11.2','N/E','24','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('18065','HI-TRACTION LUG II TT 8PR ','Agrícola','Titan','12.4','N/E','24','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado.\n•  Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('18022','HI-TRACTION LUG II 08PR ','Agrícola','Titan','14.9','N/E','24','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('18807','ALL WEATHER 12PR TL R3','Agrícola','Goodyear','23.1','N/E','26','• Ideal para implementos agrícolas, camiones y graneleros.\n• Base ancha para flotación reduciendo la compresión del suelo.\n• Diseño de la banda en \"diamante\" resistente al resbale y proporciona buena tracción.\n\r'),
	('3957','NHS IT323 I3 10PR ','Agrícola','Goodyear','10','N/E','16.5 ','• Aplicado en mini cargaderas y retro excavadoras.\n• Lateral más resistente con diseño agresivo del hombro.\n• Durabilidad maximizada por la mayor área de barras.\n• Mayor resistencia a la penetración debido a la línea del centro reforzada.\n\r'),
	('18826','ULTRA SPRAYER 160D TL R1','Agrícola','Goodyear','380','90','46','• Proyectado específicamente para aplicaciones de pulverización.\n• Durabilidad debido al aumento significativo de la superficie de las barras de tracción.\n\r'),
	('18262','SUPER ARROZEIRO II 12 PR TT R2 ','Agrícola','Goodyear','18.4','N/E','34','• Neumático proyectado con barras de tracción con mayor profundidad excelente en suelos anegados y inconsistentes.\n• El diseño distintivo de las barras evita la acumulación de resíduos y proporciona mayor poder de tracción.\n\r'),
	('3959','ALL WEATHER R3 12PR ','Agrícola','Goodyear','23.1','N/E','30','• Ideal para implementos agrícolas, camiones y graneleros.\n• Base ancha para flotación reduciendo la compresión del suelo.\n• Diseño de la banda en \"diamante\" resistente al resbale y proporciona buena tracción.\n\r'),
	('18087','HI-TRACTION LUG III 12PR ','Agrícola','Titan','24.5','N/E','32','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos.\n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('18033','HI-POWER LUG 12PR','Agrícola','Titan','18.4','N/E','26','• Indicado para retroexcavadoras y cosechadoras. \n• Durabilidad maximizada por la mayor área de barras. \n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r'),
	('18016','TRU TRAC TT 08PR ','Agrícola','Titan','7.50','N/E','16','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres. \n• Mejor control direccional y menores raspajes, principalmente en terrenos con desniveles acentuados. \n• Mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('5328','LABORER F3 12PR ','Agrícola','Goodyear','11L','N/E','16','• Usado en el tren delantero de la retro excavadora y servicios industriales.\n• Ofrece resistencia y manejo.\n• Carcasa reforzada resistente a daños con estabilidad lateral y precisión direccional.\n\r'),
	('3453','DYNA TORQUE III 8PR R1','Agrícola','Goodyear','15.5','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('18027','HI-TRACTION LUG II TT 14PR','Agrícola','Titan','20.8','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('4554','DYNA RIB F2 8PR','Agrícola','Goodyear','6.00','N/E','16','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r'),
	('3607','DYNA TORQUE III R1 12PR','Agrícola','Goodyear','23.1','N/E','26','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración\n\r'),
	('18462','HD2000 10PR TL SKD','Agrícola','Titan','10','N/E','16.5 ','• Aplicado a minicargadoras  y retro excavadoras. \n• Lateral más resistente con diseño agresivo del hombro. \n• Durabilidad maximizada por la mayor área de barras. \n• Mayor  resistencia a la penetración debido a la línea del centro reforzada.\n\r'),
	('5413','DYNA RIB F2 10PR','Agrícola','Goodyear','11.00','N/E','16','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r'),
	('18062','CONTRACTOR II TL 10PR','Agrícola','Titan','12.5','80','18','• Indicado para retroexcavadoras y cosechadoras. \n• Durabilidad maximizada por la mayor área de barras. \n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r'),
	('9642','IND SURE GRIP R4 10PR','Agrícola','Goodyear','16.9','N/E','24','• Indicado para el tren trasero de las retro excavadoras.\n• Buena tracción en aplicaciones industriales (pavimentos) y movimiento de tierra.\n• Barras reforzadas para el uso industrial.\n\r'),
	('233','DYNA TORQUE II R1 10PR ','Agrícola','Goodyear','18.4','N/E','34','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('18025','HI-TRACTION LUGII TT 12PR ','Agrícola','Titan','18.4','N/E','34','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('18093','HI-TRACTIONLUG II 12PR ','Agrícola','Titan','18.4','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('18035','INDUSTRIAL TRACTOR II 12PR','Agrícola','Titan','19.5','N/E','L24','• Hecho especialmente para la trasera de retroexcavadoras. \n• Proporciona un andar suave, buena tracción y longevidad de la banda de rodaje. \n• Formato optimizado de la carcasa que maximiza la durabilidad.\n\r'),
	('18797','DYNA TORQUE II 14 PR TL R1','Agrícola','Goodyear','20.8','N/E','42','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r'),
	('18028','HI-TRACTION LUG III 12PR','Agrícola','Titan','23.1','N/E','30','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('4201','SUPERFLOT II I3 16PR ','Agrícola','Goodyear','600','50','225','• Recomendado para ejes libres de transbordos e implementos agrícolas.\n• Minimiza la compactación del suelo debido a la mayor área de contacto de su rodaje.\n• Talón reforzado para soportar altas cargas a velocidades de hasta 50 Km/h.\n\r'),
	('18018','TRU TRAC TT 10PR','Agrícola','Titan','9.00','N/E','16','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres. \n• Mejor control direccional y menores raspajes, principalmente en terrenos con desniveles acentuados. mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('4197','LABORER F3 10PR ','Agrícola','Goodyear','11L','N/E','15','• Usado en el tren delantero de la retro excavadora y servicios industriales.\n• Ofrece resistencia y manejo.\n• Carcasa reforzada resistente a daños con estabilidad lateral y precisión direccional.\n\r'),
	('18017','TRU TRAC TT 08PR ','Agrícola','Titan','7.50','N/E','18','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres. \n• Mejor control direccional y menores raspajes, principalmente en terrenos con desniveles acentuados. \n• Mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('18461','MXL SS 10PR TL SKD ','Agrícola','Titan','12','N/E','16.5','• Resistencia adicional a los daños debido al refuerzo en el costado y protección de la llanta. \n• Compuesto especial y mayor profundidad de la banda de rodamiento que permite un mejor costo por hora trabajada.\n\r'),
	('18070','HI-TRACTION LUG II TT 12PR ','Agrícola','Titan','14.9','N/E','24','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de traccion en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('213','SUPER ARROZEIRO R2 6PR ','Agrícola','Goodyear','14.9','N/E','24','• Aplicaciones en tractores, cosechadoras y implementos de áreas inundadas (cultivo de arroz).\n• Mayor agarre y alto torque en suelos inconsistentes.\n• Exclusivo diseño Goodyear con \"garra siete\".\n\r'),
	('18024','HI-TRACTION LUG II 12PR','Agrícola','Titan','18.4','N/E','30','• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r'),
	('17089','LOGGER LUG II HD LS2 20PR','Agrícola','Titan','30.5','N/E','L32','• Para aplicación en servicios de silvicultura/forestales.\n• Protección extra debido a las cintas de acero que envuelven la carcasa.\n• Desgaste regular proporcionado por el compuesto de caucho ideal para servicios madereros.\n\r'),
	('18732','ULTRA SPRAYER 156D TL R1 ','Agrícola','Goodyear','320','90','R46','• Proyectado específicamente para aplicaciones de pulverización.\n• Durabilidad debido al aumento significativo de la superficie de las barras de tracción.\n\r'),
	('18501','DT924 55A8 TL R1W ','Agrícola','Goodyear','480','70','34','• Línea de armadura de aramida.\n• Alto extra de las barras  (25% que los neumáticos R1).\n• Cintas amortiguadoras localizadas debajo del rodaje.\n• Carcasa radial.\n\r'),
	('15210','RIB TRACTOR F2 6PR','Agrícola','Goodyear','6.00','N/E','16','• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r'),
	('4555','DYNA RYB F2 ','Agrícola','Goodyear','6.50','N/E','16','• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r'),
	('18464','SKID STEER 12PR','Agrícola','Titan','12','N/E','16.5','• Exclusivo diseño direccional asegura la maxima tracción en suelos inconsistentes.\r'),
	('18034','SUPER MUD TT 12PR','Agrícola','Titan','12.4','N/E','38','• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos. \n• Largura de banda y aro optimizados para servicios de pulverización y trabajo entre-líneas.\n\r'),
	('3815','PD 29 ON ROAD / TRASERO (49L)','Moto','Rinaldi','80','100','14','\nNeumáticos con diseño de banda de rodamiento tradicional,\nse caracterizada por su alta adherencia y rendimiento kilométrico, tiene una estructura bien equilibrada y robusta.\r'),
	('3838','BS 32 ON ROAD / TRASERO 57P)','Moto','Rinaldi','90','90','18','Neumáticos para uso urbano y en carreteras pavimentadas, tiene un rendimiento kilométrico adecuado y optima relación precio x beneficio.\r'),
	('3818','PD 29 ON ROAD / DELANTERO / TRASERO (43L)','Moto','Rinaldi','2.50','N/E','17','\nNeumáticos con diseño de banda de rodamiento tradicional,\nse caracterizada por su alta adherencia y rendimiento kilométrico, tiene una estructura bien equilibrada y robusta.\r'),
	('3823','BS 32 ON ROAD / DELANTERO (48P)','Moto','Rinaldi','2.75','N/E','18','Neumáticos para uso urbano y en carreteras pavimentadas, tiene un rendimiento kilométrico adecuado y optima relación precio x beneficio.\r'),
	('3985','R 34  ON/OFF ROAD / TRASERO (60P)','Moto','Rinaldi','110','90','17','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('4377','R 34  ON/OFF ROAD / TRASERO (57P)','Moto','Rinaldi','90','90','18','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('3987','R 34 ON/OFF ROAD / DELANTERO (52T) ','Moto','Rinaldi','90','90','19','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('4376','SH 31 OFF ROAD / DELANTERO (52M)','Moto','Rinaldi','90','90','19','Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r'),
	('4148','SH 31 OFF ROAD / TRASERO (55M)','Moto','Rinaldi','100','90','17','Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r'),
	('3981','SH 31 OFF ROAD / TRASERO (51M)','Moto','Rinaldi','90','90','18','Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r'),
	('3986','R 34 ON/OFF ROAD / TRASERO (62S)','Moto','Rinaldi','120','80','18','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('5169','R 34 ON/OFF ROAD / TRASERO (49L)','Moto','Rinaldi','80','100','14','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('3839','RW 33 OFF ROAD / TRASERO (59M)','Moto','Rinaldi','100','100','18','\nNeumáticos de variada utilización, que destacan por la adherencia superior.\nTanto en suelos arenosos como en suelos arcillosos .\nPresentan un rendimiento superior en terrenos blandos\r'),
	('3836','PD 29 ON ROAD / DELANTERO / TRASERO (47P)','Moto','Rinaldi','2.75','N/E','17','\nNeumáticos con diseño de banda de rodamiento tradicional,\nse caracterizada por su alta adherencia y rendimiento kilométrico, tiene una estructura bien equilibrada y robusta.\r'),
	('3831','R 34 ON/OFF ROAD / DELANTERO (54S) ','Moto','Rinaldi','90','90','21','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('11750','R 34 ON/OFF ROAD / DELANTERO (42P)','Moto','Rinaldi','2.75','N/E','17','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('3834','R 34 ON/OFF ROAD / TRASERO (58T)','Moto','Rinaldi','110','80','18','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('4153','SH 31 OFF ROAD / DELANTERO (42M)','Moto','Rinaldi','2.75','N/E','18','Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r'),
	('4521','HB 37 ON ROAD / TRASERO (62T)','Moto','Rinaldi','130','70','17','Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r'),
	('4721','R 34 ON/OFF ROAD / DELANTERO (42P)','Moto','Rinaldi','2.75','N/E','18','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('4520','HB 37 ON ROAD / DELANTERO (52T)','Moto','Rinaldi','100','80','17','Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r'),
	('3833','RW 33 OFF ROAD / DELANTERO (51M)','Moto','Rinaldi','80','100','21','\nNeumáticos de variada utilización, que destacan por la adherencia superior.\nTanto en suelos arenosos como en suelos arcillosos .\nPresentan un rendimiento superior en terrenos blandos\r'),
	('3830','SH 31 OFF ROAD / DELANTERO (51M)','Moto','Rinaldi','3.00','N/E','21','Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r'),
	('4436','BS 32 ON ROAD / TRASERO (49L)','Moto','Rinaldi','80','100','14','Neumáticos para uso urbano y en carreteras pavimentadas, tiene un rendimiento kilométrico adecuado y optima relación precio x beneficio.\r'),
	('8566','RM X35 OFF ROAD / DELANTERO (54M)','Moto','Rinaldi','90','90','21','Neumáticos con un diseño en la banda de rodamiento que proporciona elevada tracción y superior desempeño, pudiendo ser utilizado en los mas variados terrenos fuera de carretera, destacándose en los terrenos más rígidos, ideal para la práctica de deportes off road.\r'),
	('5660','RMX 35 OFF ROAD / TRASERO (59M)','Moto','Rinaldi','100','100','18','Neumáticos con un diseño en la banda de rodamiento que proporciona elevada tracción y superior desempeño, pudiendo ser utilizado en los mas variados terrenos fuera de carretera, destacándose en los terrenos más rígidos, ideal para la práctica de deportes off road.\r'),
	('18271','HB 37 ON ROAD / DELANTERO (54T)','Moto','Rinaldi','110','70','17','Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r'),
	('5168','R 34 ON/OFF ROAD / DELANTERO/ TRASERO (43L)','Moto','Rinaldi','2.50','N/E','17','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('18272','HB 37 ON ROAD / TRASERO (66T)','Moto','Rinaldi','140','70','17','Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r'),
	('16051','RMX 35 OFF ROAD / DELANTERO (40M)','Moto','Rinaldi','70','100','17','Neumáticos con un diseño en la banda de rodamiento que proporciona elevada tracción y superior desempeño, pudiendo ser utilizado en los mas variados terrenos fuera de carretera, destacándose en los terrenos más rígidos, ideal para la práctica de deportes off road.\r'),
	('17753','HB 37 ON ROAD / TRASERO (57P)','Moto','Rinaldi','90','90','18','Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r'),
	('17782','RT 36 ON/OFF ROAD / TRASERO (60P)','Moto','Rinaldi','110','90','17','Neumáticos de uso mixto, 60% on road y 40% off road. Es una excelente opción, que satisface las necesidades urbanas y rurales. Excelente tracción y desempeño.\r'),
	('4519','RT 36 ON/OFF ROAD / TRASERO (58P)','Moto','Rinaldi','110','80','18','Neumáticos de uso mixto, 60% on road y 40% off road. Es una excelente opción, que satisface las necesidades urbanas y rurales. Excelente tracción y desempeño.\r'),
	('3835','R 34 ON/OFF ROAD /  TRASERO (65P)','Moto','Rinaldi','130','80','17','Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r'),
	('17754','HB 37 ON ROAD / DELANTERO(47P) ','Moto','Rinaldi','80','100','18','Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r'),
	('18036','11.00-20 ROAD ROLLER C1 18PR TT 1600050','OTR','Goodyear','11.00','N/E','20','Por definir\r'),
	('17384','14.00-24 ROAD GRADER G2 16PR TL TITAN 1601024','OTR','Titan','14.00','N/E','24','Por definir\r'),
	('18107','17.5-25 ND LCM L3 16PR TL 1606072','OTR','Goodyear','17.5','N/E','25','Por definir\r'),
	('5326','17.5-25 EARTH TRACT L2 16PR TL 1606021','OTR','Goodyear','17.5','N/E','25','Por definir\r'),
	('18110','20.5-25 ND LCM L3 TL 24PR TITAN 1606080','OTR','Titan','20.5','N/E','25','Por definir\r'),
	('18100','13.00-24 ROAD GRADER G2 16PR TT 1601005','OTR','Goodyear','13.00','N/E','24','Por definir\r'),
	('13132','20.5-25 EARTH TRACT L2 16PR TL TITAN 1602003','OTR','Titan','20.5','N/E','25','Por definir\r'),
	('18777','23.5-25 ND LCM L3 16PR TL LOADER TI/GY 1606074','OTR','Goodyear','23.5','N/E','25','Por definir\r'),
	('125','13.00-24 ROAD GRADER G2 12PR TT 1601004','OTR','Goodyear','13.00','N/E','24','Por definir\r'),
	('17702','18.00-25 40PR L5 SUPER 1606410U$ USA','OTR','Goodyear','18.00','N/E','25','Por definir\r'),
	('18108','20.5-25 ND LCM L3 TL 16PR TITAN 1606075','OTR','Titan','20.5','N/E','25','Por definir\r'),
	('17696','38X20.00-16 INHS STG 8PR 1152610U$ - USA','OTR','Goodyear','38','20.00','16','Por definir\r'),
	('4593','13.00R24 TC12 SGG-2A G-2 TT','OTR','Goodyear','13.00','N/E','24','Por definir\r'),
	('18037','13.00-24 ROAD GRADER G2 12PR TL 1601003','OTR','Goodyear','13.00','N/E','24','Por definir\r'),
	('18106','17.5R25 MXL L3 E3 1* TL 176A2 TITAN 1650010','OTR','Titan','17.5','N/E','25','Por definir\r'),
	('18111','20.5R25 MXL L3 1 STAR TL 186A2 TITAN 1656085','OTR','Titan','20.5','N/E','25','Por definir\r'),
	('18112','23.5R25 MXL L3 1 STAR TL 195A2 TITAN 1656095','OTR','Titan','23.5','N/E','25','Por definir\r'),
	('18798','16.00-25 HRL- 4B E4 4S 32PR TL BR 180420','OTR','Goodyear','16.00','N/E','25','Por definir\r'),
	('130','13.00-24 SGG-2A G-2 12PR TT 180064','OTR','Goodyear','13.00','N/E','24','Por definir\r'),
	('17085','16.00-25 HRL 3A E3 4S 28PR INDO 180014','OTR','Goodyear','16.00','N/E','25','Por definir\r'),
	('4103','23.5-25 3C 4S16 L3/E3/G3','OTR','Goodyear','23.5','N/E','25','Por definir');

/*!40000 ALTER TABLE `imported_tires` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2016_08_07_145904_add_table_cms_apicustom',1),
	(2,'2016_08_07_150834_add_table_cms_dashboard',1),
	(3,'2016_08_07_151210_add_table_cms_logs',1),
	(4,'2016_08_07_151211_add_details_cms_logs',1),
	(5,'2016_08_07_152014_add_table_cms_privileges',1),
	(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),
	(7,'2016_08_07_152320_add_table_cms_settings',1),
	(8,'2016_08_07_152421_add_table_cms_users',1),
	(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),
	(10,'2016_08_07_154624_add_table_cms_moduls',1),
	(11,'2016_08_17_225409_add_status_cms_users',1),
	(12,'2016_08_20_125418_add_table_cms_notifications',1),
	(13,'2016_09_04_033706_add_table_cms_email_queues',1),
	(14,'2016_09_16_035347_add_group_setting',1),
	(15,'2016_09_16_045425_add_label_setting',1),
	(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),
	(17,'2016_10_01_141740_add_method_type_apicustom',1),
	(18,'2016_10_01_141846_add_parameters_apicustom',1),
	(19,'2016_10_01_141934_add_responses_apicustom',1),
	(20,'2016_10_01_144826_add_table_apikey',1),
	(21,'2016_11_14_141657_create_cms_menus',1),
	(22,'2016_11_15_132350_create_cms_email_templates',1),
	(23,'2016_11_15_190410_create_cms_statistics',1),
	(24,'2016_11_17_102740_create_cms_statistic_components',1),
	(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1),
	(34,'2019_05_15_204627_create_radiuses_table',2),
	(35,'2019_05_15_211226_create_widths_table',2),
	(36,'2019_05_15_211608_create_profiles_table',2),
	(37,'2019_05_15_211729_create_brands_table',2),
	(38,'2019_05_15_212731_create_product_categories_table',2),
	(39,'2019_05_15_213525_create_products_table',2),
	(40,'2019_05_15_215704_create_product_photos_table',2),
	(41,'2019_05_15_221031_create_banners_table',2),
	(42,'2019_05_15_223709_create_vehicle_types_table',2),
	(43,'2019_05_15_233137_create_vehicle_type_photos_table',3),
	(44,'2019_05_15_234341_create_tires_table',4),
	(45,'2019_05_16_002014_create_tire_photos_table',5),
	(46,'2019_05_16_003511_create_tire_vehicle_types_table',6),
	(47,'2019_05_24_031510_create_product_vehicle_types_table',7),
	(48,'2019_11_24_212422_create_promotions_table',8),
	(49,'2019_11_25_120806_create_cache_table',9);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;

INSERT INTO `product_categories` (`id`, `category_name`, `photo`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'AAA',NULL,'2019-05-19 04:04:48','2019-05-16 01:08:35',NULL);

/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_photos`;

CREATE TABLE `product_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_photos_product_id_foreign` (`product_id`),
  CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table product_vehicle_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_vehicle_types`;

CREATE TABLE `product_vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(10) unsigned NOT NULL,
  `vehicle_types_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_vehicle_types_products_id_vehicle_types_id_unique` (`products_id`,`vehicle_types_id`),
  KEY `product_vehicle_types_vehicle_types_id_foreign` (`vehicle_types_id`),
  CONSTRAINT `product_vehicle_types_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_vehicle_types_vehicle_types_id_foreign` FOREIGN KEY (`vehicle_types_id`) REFERENCES `vehicle_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `discount_rate` double(8,2) DEFAULT '0.00',
  `final_price` double(8,2) DEFAULT NULL,
  `state` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVO',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_category_id_foreign` (`product_category_id`),
  KEY `products_brand_id_foreign` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_category_id`, `brand_id`, `description`, `price`, `discount_rate`, `final_price`, `state`, `featured`, `photo`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'1','producto prueba',1,1,'<p>asdasd</p>',254000.00,0.02,0.00,'ACTIVO',1,'uploads/1/2019-05/1bc6d62bfdc7622732fc9a3018074375.jpg','2019-05-19 04:04:45','2019-05-16 01:11:19',NULL);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;

INSERT INTO `profiles` (`id`, `profile_name`, `profile_value`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'12',12.00,'2019-05-19 04:04:38','2019-05-16 21:08:49',NULL),
	(2,'Perfil Estandar',100.50,NULL,'2019-11-24 19:01:03',NULL),
	(3,'40',40.00,NULL,'2019-11-25 22:46:40','2019-11-25 22:46:40'),
	(4,'35',35.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(5,'45',45.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(6,'50',50.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(7,'55',55.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(8,'70',70.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(9,'65',65.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(10,'75',75.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(11,'60',60.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(12,'12.5',12.50,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(13,'80',80.00,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(14,'N/E',0.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(15,'14.5',14.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(16,'10.5',10.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(17,'90.5',90.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(18,'85',85.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(19,'11.5',11.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(20,'90',90.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(21,'100',100.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(22,'20.00',20.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38');

/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table promotions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `promotions`;

CREATE TABLE `promotions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;

INSERT INTO `promotions` (`id`, `title`, `photo`, `local_link`, `external_link`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'Alineacion y Balanceo','uploads/1/2019-11/27e0da521f43618f66f46c379fb195a5.jpg',NULL,NULL,NULL,'2019-11-24 19:50:00',NULL);

/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table radiuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `radiuses`;

CREATE TABLE `radiuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `radius_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius_value` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `radiuses` WRITE;
/*!40000 ALTER TABLE `radiuses` DISABLE KEYS */;

INSERT INTO `radiuses` (`id`, `radius_name`, `radius_value`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'R13',13.00,'2019-05-19 04:04:32','2019-05-16 21:08:23',NULL),
	(2,'R13',13.00,NULL,'2019-11-24 18:57:15',NULL),
	(3,'R14',14.00,NULL,'2019-11-24 18:57:24',NULL),
	(4,'R15',15.00,NULL,'2019-11-24 18:57:33','2019-11-24 18:59:56'),
	(5,'19',19.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(6,'18',18.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(7,'20',20.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(8,'17',17.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(9,'16',16.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(10,'15',15.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(11,'14',14.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(12,'13',13.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(13,'21',21.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(14,'22',22.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(15,'22.5',22.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(16,'17.5',17.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(17,'36',36.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(18,'24',24.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(19,'38',38.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(20,'28',28.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(21,'26',26.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(22,'15.5 ',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(23,'30',30.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(24,'34',34.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(25,'L32',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(26,'16.5',16.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(27,'R42',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(28,'32',32.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(29,'16.5 ',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(30,'46',46.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(31,'L24',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(32,'42',42.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(33,'225',225.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(34,'R46',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(35,'25',25.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38');

/*!40000 ALTER TABLE `radiuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tire_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tire_photos`;

CREATE TABLE `tire_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tire_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tire_photos_tire_id_foreign` (`tire_id`),
  CONSTRAINT `tire_photos_tire_id_foreign` FOREIGN KEY (`tire_id`) REFERENCES `tires` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tire_photos` WRITE;
/*!40000 ALTER TABLE `tire_photos` DISABLE KEYS */;

INSERT INTO `tire_photos` (`id`, `tire_id`, `title`, `photo`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'imagen de prueba','uploads/1/2019-05/screenshot_from_2019_05_14_21_40_35.png','2019-05-19 03:44:27','2019-05-18 21:12:32',NULL),
	(2,1,NULL,'uploads/1/2019-05/4c30945d3bda87ff70bd155c1103d113.png','2019-05-19 04:04:26','2019-05-19 03:44:34',NULL),
	(3,2,'Frontal','uploads/1/2019-11/11a4d2187e45cb6c5eec98f2fc80f2f5.jpg',NULL,'2019-11-24 19:03:17',NULL),
	(4,2,'Perfil','uploads/1/2019-11/26d5d643a9f7a9e35647ef4d8127707a.jpg',NULL,'2019-11-24 19:03:37',NULL);

/*!40000 ALTER TABLE `tire_photos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tire_vehicle_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tire_vehicle_types`;

CREATE TABLE `tire_vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tires_id` int(10) unsigned NOT NULL,
  `vehicle_types_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tire_vehicle_types_tires_id_vehicle_types_id_unique` (`tires_id`,`vehicle_types_id`),
  KEY `tire_vehicle_types_vehicle_types_id_foreign` (`vehicle_types_id`),
  CONSTRAINT `tire_vehicle_types_tires_id_foreign` FOREIGN KEY (`tires_id`) REFERENCES `tires` (`id`),
  CONSTRAINT `tire_vehicle_types_vehicle_types_id_foreign` FOREIGN KEY (`vehicle_types_id`) REFERENCES `vehicle_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tire_vehicle_types` WRITE;
/*!40000 ALTER TABLE `tire_vehicle_types` DISABLE KEYS */;

INSERT INTO `tire_vehicle_types` (`id`, `tires_id`, `vehicle_types_id`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,4),
	(11,2,1),
	(13,2,2),
	(12,2,3),
	(14,2,6),
	(8,3,1),
	(9,3,2),
	(10,3,6);

/*!40000 ALTER TABLE `tire_vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tires
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tires`;

CREATE TABLE `tires` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tire_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tire_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tire_type` enum('RADIAL','CONVENCIONAL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `radius_id` int(10) unsigned NOT NULL,
  `width_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `discount_rate` double(8,2) DEFAULT '0.00',
  `final_price` double(8,2) DEFAULT NULL,
  `state` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVO',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `visit_counter` int(11) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tires_brand_id_foreign` (`brand_id`),
  KEY `tires_radius_id_foreign` (`radius_id`),
  KEY `tires_witdh_id_foreign` (`width_id`),
  KEY `tires_profile_id_foreign` (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tires` WRITE;
/*!40000 ALTER TABLE `tires` DISABLE KEYS */;

INSERT INTO `tires` (`id`, `tire_code`, `tire_name`, `tire_type`, `brand_id`, `radius_id`, `width_id`, `profile_id`, `description`, `price`, `discount_rate`, `final_price`, `state`, `featured`, `visit_counter`, `photo`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'84','GY R13','RADIAL',1,1,1,1,'<p>asdasd asd as</p>',250000.00,25.00,187500.00,'ACTIVO',1,NULL,'uploads/1/2019-05/911819af7f6935af425c4f3c472c3ccb.jpg','2019-05-19 04:04:29','2019-05-18 21:08:13','2019-05-19 04:03:54'),
	(2,'1001','GoodYear Prueba','RADIAL',3,2,2,2,'<p>Detalles .. lalala...es un neumatico lindo y caro</p>',100.00,20.00,80.00,'ACTIVO',1,NULL,'uploads/1/2019-11/0aa54437a44cbf28a2d3a861a4d49f51.jpg',NULL,'2019-11-24 19:02:50','2019-11-24 19:13:55'),
	(3,'1002','Goodyear prueba 2','CONVENCIONAL',3,3,2,2,'<p>neumatico de prueba</p>',100.00,0.00,100.00,'ACTIVO',0,NULL,'uploads/1/2019-11/6c6843f4984e28d2c77876921a2d1d60.jpg',NULL,'2019-11-24 19:13:41',NULL),
	(4,'18523','265/40R19 EAGLE F1 ASUMMETRIC 2','RADIAL',3,5,3,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(5,'18447','265/35R19 EAGLE F1 ASYMMETRIC','RADIAL',3,5,3,4,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(6,'18446','255/45R18 EAGLE F1 ASYMMETRIC 3','RADIAL',3,6,4,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(7,'18454','255/40R18 EFFICIENT GRIP ROF','RADIAL',3,6,4,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(8,'6972','245/50R20 EAGLE RSA','RADIAL',3,7,5,6,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(9,'18522','245/45R19 EAGLE F1 ASYMMETRIC3','RADIAL',3,5,5,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(10,'18518','245/45R19 EFFICIENT GRIP ROF','RADIAL',3,5,5,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(11,'18453','245/45R18 EFFICIENT GRIP ROF','RADIAL',3,6,5,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(12,'18507','245/45R18 EAGLE F1 ASYMMETRIC 3','RADIAL',3,6,5,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(13,'18445','245/35R18 EAGLE F1 ASYMMETRIC 3','RADIAL',3,6,5,4,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(14,'18452','245/35R18 EAGLE F1 ASSYMETRIC 2 ROF','RADIAL',3,6,5,4,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(15,'13848','235/55R17 EAGLE RSA','RADIAL',3,8,6,7,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(16,'18357','235/50R18 EAGLE SPORT A/S','RADIAL',3,6,6,6,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(17,'18531','235/45R17 EAGLE F1 ASYMMETRIC 3','RADIAL',3,8,6,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(18,'4122','235/45R17 ASSURANCE','RADIAL',3,8,6,5,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(19,'3226','235/35R19 91Y EAGLE F1 ASYMMETRIC','RADIAL',3,5,6,4,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(20,'17673','225/55R18 ASSURANCE COMFORTED TOURING','RADIAL',3,6,7,5,'Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(21,'17707','225/50R18 EAGLE LS2','RADIAL',3,6,7,6,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(22,'17823','225/50R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,7,6,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(23,'18450','225/45R18 EFFICIENT GRIP ROF','RADIAL',3,6,7,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(24,'9275','225/45R18 EAGLE RSA','RADIAL',3,6,7,5,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(25,'18449','225/45R17 EXCELLENCE ROF','RADIAL',3,8,7,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(26,'18530','225/45R17 EAGLE F1 ASYMMETRIC 3','RADIAL',3,8,7,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(27,'17789','225/45R17 EAGLE F1 ASYMMETRIC','RADIAL',3,8,7,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(28,'17591','225/40R18 EAGLE F1 ASYMMETRIC 2 ROF','RADIAL',3,6,7,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(29,'18444','225/35R19 EAGLE F1 ASYMMETRIC 3','RADIAL',3,5,7,4,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(30,'18311','215/70R16 WRANGLER SUV','RADIAL',3,9,8,8,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(31,'18309','215/65R16 WRANGLER SUV','RADIAL',3,9,8,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(32,'18270','215/65R16 WRANGLER SUV ','RADIAL',3,9,8,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(33,'18872','215/65R16 WRANGLER AT ADVENTURE','RADIAL',3,9,8,9,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(34,'18508','215/55R18 EFFICIENT GRIP SUV','RADIAL',3,6,8,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(35,'18871','215/55R17 EFFICIENT GRIP SUV','RADIAL',3,8,8,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(36,'18524','215/55R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,8,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(37,'18013','215/55R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,8,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(38,'18398','215/50R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,8,6,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(39,'13295','215/45R17 EXCELLENCE','RADIAL',3,8,8,5,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(40,'18267','215/45R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,8,5,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(41,'18517','215/45R17 ASSURANCE TRIPLEMAX','RADIAL',3,8,8,5,'Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(42,'9493','215/40R17 EAGLE F1 DIRECTIONAL','RADIAL',3,8,8,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(43,'18862','205/75R16 CARGO MARATHON 2','RADIAL',3,9,9,10,'El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(44,'16097','205/70R15 WRANGLER HP','RADIAL',3,10,9,8,'Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(45,'5015','205/65R15 EXCELLENCE BR','RADIAL',3,10,9,9,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(46,'17761','205/65R15 ASSURANCE','RADIAL',3,10,9,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(47,'17562','205/65R15 ASSURANCE','RADIAL',3,10,9,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(48,'18873','205/60R16 WRANGLER AT ADVENTURE','RADIAL',3,9,9,11,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(49,'17735','205/60R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,9,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(50,'30','205/60R15 FORTERA COMFORT','RADIAL',3,10,9,11,'Un neumático de alto rendimiento con estilo, para ruedas de gran diámetro\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(51,'17678','205/60R15 ASSURANCE','RADIAL',3,10,9,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(52,'6008','205/60R15 EXECELLENCE','RADIAL',3,10,9,11,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(53,'18726','205/55R17 EAGLE F1 ASYMMETRIC 3','RADIAL',3,8,9,7,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(54,'18266','205/55R16 EFFICIENTGRIP PERFORMANCE','RADIAL',3,9,9,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(55,'17805','205/55R16 EFFICIENTGRIP PERFORMANCE 91V BR','RADIAL',3,9,9,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(56,'18349','205/55R16 EAGLE SPORT','RADIAL',3,9,9,7,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(57,'17009','205/55R16 ASSURANCE FUELMAX','RADIAL',3,9,9,7,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(58,'18448','205/50R17 EFFICIENT GRIP ROF','RADIAL',3,8,9,6,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(59,'17033','205/45R16 ASSURANCE FUELMAX','RADIAL',3,9,9,5,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(60,'12602','195/70R14 ASSURANCE DURAPLUS','RADIAL',3,11,10,8,'Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(61,'17825','195/65R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,10,9,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(62,'18403','195/65R15 EAGLE SPORT','RADIAL',3,10,10,9,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(63,'17831','195/65R15 ASSURANCE DURAPLUS','RADIAL',3,10,10,9,'Goodyear Assurance Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(64,'18528','195/65R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,10,9,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(65,'17987','195/60R16 ASSURANCE','RADIAL',3,9,10,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(66,'17804','195/60R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,10,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(67,'9261','195/60R15 EAGLE NCT-5','RADIAL',3,10,10,11,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(68,'17106','195/60R15 ASSURANCE','RADIAL',3,10,10,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(69,'18248','195/55R15 EFFICIENTGRIP PERFORMANCE','RADIAL',3,10,10,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(70,'18348','195/55R15 EAGLE SPORT','RADIAL',3,10,10,7,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(71,'17484','195/55R15 ASSURANCE','RADIAL',3,10,10,7,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(72,'17076','195/55R15 85V ASSURANCE COMFORTED TOURING','RADIAL',3,10,10,7,'Un neumático suave y cómodo para todas las estaciones, ayuda a prolongar la vida útil de la banda de rodamiento y, en promedio, un 20% más de amortiguación que los neumáticos de pasajeros estándar.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(73,'2669','185/70R14 EAGLE NCT-5','RADIAL',3,11,11,8,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(74,'18269','185/70R14 ASSURANCE','RADIAL',3,11,11,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(75,'18489','185/70R14 88T DIRECTION TOURING','RADIAL',3,11,11,8,'Llanta con un excelente costo-beneficio, seguridad y tracción.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(76,'17623','185/70R14 ASSURANCE','RADIAL',3,11,11,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(77,'18408','185/70R13 ASSURANCE','RADIAL',3,12,11,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(78,'3940','185/70R13 ASSURANCE DURAPLUS FUELMAX','RADIAL',3,12,11,8,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(79,'18486','185/65R15 ASSURANCE FUELMAX','RADIAL',3,10,11,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(80,'18249','185/65R15 ASSURANCE','RADIAL',3,10,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(81,'17622','185/65R15 ASSURANCE','RADIAL',3,10,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(82,'17546','185/65R15 DURAPLUS','RADIAL',3,10,11,9,'Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(83,'17418','185/65R15 EXCELLENCE AQUAMAX','RADIAL',3,10,11,9,'Neumático de equipo original en ciertos vehículos de importación europeos.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(84,'2991','185/65R14 NCT5','RADIAL',3,11,11,9,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(85,'2978','185/65R14 GPS3 SPORT','RADIAL',3,11,11,9,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(86,'13','185/65R14 DURAPLUS FUELMAX','RADIAL',3,11,11,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(87,'6004','185/65R14 ASSURANCE DURAPLUS','RADIAL',3,11,11,9,'Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(88,'10553','185/65R14 ASSURANCE','RADIAL',3,11,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(89,'17624','185/65R14 86T ASSURANCE','RADIAL',3,11,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(90,'18516','185/65R14 ASSURANCE TRIPLEMAX','RADIAL',3,11,11,9,'Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(91,'18246','185/60R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,11,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(92,'18402','185/60R15 EAGLE SPORT','RADIAL',3,10,11,11,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(93,'6007','185/60R15 84H EXCELLENCE','RADIAL',3,10,11,11,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(94,'2979','185/60R14 EAGLE NCT5','RADIAL',3,11,11,11,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(95,'5227','185/60R14 EXCELLENCE','RADIAL',3,11,11,11,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(96,'16020','185/60R14 ASSURANCE','RADIAL',3,11,11,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(97,'18352','185/60R14 ASSURANCE','RADIAL',3,11,11,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(98,'18351','185/55R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,11,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(99,'13037','185/55R15 EAGLE NCT5','RADIAL',3,10,11,7,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(100,'17984','175/70R14 ASSURANCE','RADIAL',3,11,12,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(101,'2968','175/70R13 GPS3 SPORT','RADIAL',3,12,12,8,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(102,'18857','175/70R13 DIRECTION TURING','RADIAL',3,12,12,8,'Llanta con un excelente costo-beneficio, seguridad y tracción.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(103,'18407','175/70R13 ASSURANCE','RADIAL',3,12,12,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(104,'9506','175/65R15 GT3','RADIAL',3,10,12,9,'El GT3 se trata de confort. Y el valor. Pero lo más importante es que el GT3 trata de ofrecerle los neumáticos más seguros que sabemos cómo fabricar. Su innovador diseño del bloque de la banda de rodadura Bubble Blade ™ funciona igual de bien en condiciones húmedas o secas, mientras que las barras de unión mejoran el manejo del automóvil en casi cualquier situación. Este neumático radial es para el conductor cuyas prioridades coinciden con nuestras prioridades: seguridad, comodidad y tranquilidad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(105,'17780','175/65R15 ASSURANCE','RADIAL',3,10,12,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(106,'10997','175/65R15 GPS3','RADIAL',3,10,12,9,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(107,'3022','175/65R14 GPS3','RADIAL',3,11,12,9,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(108,'18341','175/65R14 ASSURANCE','RADIAL',3,11,12,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(109,'13038','175/65R14 ASSURANCE','RADIAL',3,11,12,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(110,'17081','175/65R14 82H EAGLE NCT5','RADIAL',3,11,12,9,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(111,'17787','175/65R14 82H ASSURANCE TRIPLEMAX','RADIAL',3,11,12,9,'Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(112,'2967','165/70R13 GPS3 SPORT','RADIAL',3,12,13,8,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(113,'18406','165/70R13 ASSURANCE','RADIAL',3,12,13,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(114,'10667','225/75R15 FORTERA','RADIAL',3,10,7,10,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(115,'13922','35-12.5R17 WRANGLER MT/R KEVLAR','RADIAL',3,8,14,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(116,'13924','265/60R18 ASSURANCE CS FUEL MAX','RADIAL',3,6,3,11,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(117,'14078','245/75R16 WRANGLER MT/R KEVLAR ','RADIAL',3,9,5,10,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(118,'1471','205/70R15C G32 CARGO ','RADIAL',3,10,9,8,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(119,'16','215/80R16 WRANGLER ADVENTURE','RADIAL',3,9,8,13,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(120,'16028','215/75R14 WRANGLER AT/S','RADIAL',3,11,8,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(121,'16035','225/60R16 ASSURANCE FUELMAX','RADIAL',3,9,7,11,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(122,'16036','315/70R17 WRANGLER DURATRAC','RADIAL',3,8,15,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(123,'16037','245/65R17 ASSURANCE FUELMAX','RADIAL',3,8,5,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(124,'16044','37-12.5R17 WRANGLER MT/R KEVLAR','RADIAL',3,8,16,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(125,'16045','225/65R17 ASSURANCE FUELMAX','RADIAL',3,8,7,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(126,'16049','205/70R15 FORTERA','RADIAL',3,10,9,8,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(127,'16054','265/75R16 WRANGLER SR-A','RADIAL',3,9,3,10,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(128,'16055','255/65R17 WRANGLER SR-A','RADIAL',3,8,4,9,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(129,'16056','265/70R17 WRANGLER DURATRAC','RADIAL',3,8,3,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(130,'16059','235/60R16 ASSURANCE FUEL MAX','RADIAL',3,9,6,11,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(131,'16065','255/65R17 WRANGLER SILENT ARMOR','RADIAL',3,8,4,9,'Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(132,'16099','215/70R15 DURASPORT','RADIAL',3,10,8,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(133,'17003','275/70R17 WRANGLER SILENT ARMOR','RADIAL',3,8,17,8,'Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(134,'18523','265/40R19 EAGLE F1 ASUMMETRIC 2','RADIAL',3,5,3,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(135,'18447','265/35R19 EAGLE F1 ASYMMETRIC','RADIAL',3,5,3,4,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(136,'18446','255/45R18 EAGLE F1 ASYMMETRIC 3','RADIAL',3,6,4,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(137,'18454','255/40R18 EFFICIENT GRIP ROF','RADIAL',3,6,4,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(138,'6972','245/50R20 EAGLE RSA','RADIAL',3,7,5,6,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(139,'18522','245/45R19 EAGLE F1 ASYMMETRIC3','RADIAL',3,5,5,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(140,'18518','245/45R19 EFFICIENT GRIP ROF','RADIAL',3,5,5,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(141,'18453','245/45R18 EFFICIENT GRIP ROF','RADIAL',3,6,5,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(142,'18507','245/45R18 EAGLE F1 ASYMMETRIC 3','RADIAL',3,6,5,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(143,'18445','245/35R18 EAGLE F1 ASYMMETRIC 3','RADIAL',3,6,5,4,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(144,'18452','245/35R18 EAGLE F1 ASSYMETRIC 2 ROF','RADIAL',3,6,5,4,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(145,'13848','235/55R17 EAGLE RSA','RADIAL',3,8,6,7,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(146,'18357','235/50R18 EAGLE SPORT A/S','RADIAL',3,6,6,6,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(147,'18531','235/45R17 EAGLE F1 ASYMMETRIC 3','RADIAL',3,8,6,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(148,'4122','235/45R17 ASSURANCE','RADIAL',3,8,6,5,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(149,'3226','235/35R19 91Y EAGLE F1 ASYMMETRIC','RADIAL',3,5,6,4,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(150,'17673','225/55R18 ASSURANCE COMFORTED TOURING','RADIAL',3,6,7,5,'Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(151,'17707','225/50R18 EAGLE LS2','RADIAL',3,6,7,6,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(152,'17823','225/50R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,7,6,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(153,'18450','225/45R18 EFFICIENT GRIP ROF','RADIAL',3,6,7,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(154,'9275','225/45R18 EAGLE RSA','RADIAL',3,6,7,5,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(155,'18449','225/45R17 EXCELLENCE ROF','RADIAL',3,8,7,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(156,'18530','225/45R17 EAGLE F1 ASYMMETRIC 3','RADIAL',3,8,7,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(157,'17789','225/45R17 EAGLE F1 ASYMMETRIC','RADIAL',3,8,7,5,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(158,'17591','225/40R18 EAGLE F1 ASYMMETRIC 2 ROF','RADIAL',3,6,7,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(159,'18444','225/35R19 EAGLE F1 ASYMMETRIC 3','RADIAL',3,5,7,4,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(160,'18311','215/70R16 WRANGLER SUV','RADIAL',3,9,8,8,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(161,'18309','215/65R16 WRANGLER SUV','RADIAL',3,9,8,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(162,'18270','215/65R16 WRANGLER SUV ','RADIAL',3,9,8,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(163,'18872','215/65R16 WRANGLER AT ADVENTURE','RADIAL',3,9,8,9,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(164,'18508','215/55R18 EFFICIENT GRIP SUV','RADIAL',3,6,8,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(165,'18871','215/55R17 EFFICIENT GRIP SUV','RADIAL',3,8,8,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(166,'18524','215/55R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,8,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(167,'18013','215/55R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,8,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(168,'18398','215/50R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,8,6,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(169,'13295','215/45R17 EXCELLENCE','RADIAL',3,8,8,5,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(170,'18267','215/45R17 EFFICIENT GRIP PERFORMANCE','RADIAL',3,8,8,5,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(171,'18517','215/45R17 ASSURANCE TRIPLEMAX','RADIAL',3,8,8,5,'Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(172,'9493','215/40R17 EAGLE F1 DIRECTIONAL','RADIAL',3,8,8,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(173,'18862','205/75R16 CARGO MARATHON 2','RADIAL',3,9,9,10,'El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(174,'16097','205/70R15 WRANGLER HP','RADIAL',3,10,9,8,'Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(175,'5015','205/65R15 EXCELLENCE BR','RADIAL',3,10,9,9,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(176,'17761','205/65R15 ASSURANCE','RADIAL',3,10,9,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(177,'17562','205/65R15 ASSURANCE','RADIAL',3,10,9,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(178,'18873','205/60R16 WRANGLER AT ADVENTURE','RADIAL',3,9,9,11,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(179,'17735','205/60R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,9,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(180,'30','205/60R15 FORTERA COMFORT','RADIAL',3,10,9,11,'Un neumático de alto rendimiento con estilo, para ruedas de gran diámetro\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(181,'17678','205/60R15 ASSURANCE','RADIAL',3,10,9,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(182,'6008','205/60R15 EXECELLENCE','RADIAL',3,10,9,11,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(183,'18726','205/55R17 EAGLE F1 ASYMMETRIC 3','RADIAL',3,8,9,7,'El nuevo neumático de alto rendimiento que proporciona una menor distancia de frenado en carreteras secas y mojadas y garantiza un control total para que disfrute al máximo de su viaje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(184,'18266','205/55R16 EFFICIENTGRIP PERFORMANCE','RADIAL',3,9,9,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(185,'17805','205/55R16 EFFICIENTGRIP PERFORMANCE 91V BR','RADIAL',3,9,9,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(186,'18349','205/55R16 EAGLE SPORT','RADIAL',3,9,9,7,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(187,'17009','205/55R16 ASSURANCE FUELMAX','RADIAL',3,9,9,7,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(188,'18448','205/50R17 EFFICIENT GRIP ROF','RADIAL',3,8,9,6,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(189,'17033','205/45R16 ASSURANCE FUELMAX','RADIAL',3,9,9,5,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(190,'12602','195/70R14 ASSURANCE DURAPLUS','RADIAL',3,11,10,8,'Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(191,'17825','195/65R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,10,9,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(192,'18403','195/65R15 EAGLE SPORT','RADIAL',3,10,10,9,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(193,'17831','195/65R15 ASSURANCE DURAPLUS','RADIAL',3,10,10,9,'Goodyear Assurance Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(194,'18528','195/65R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,10,9,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(195,'17987','195/60R16 ASSURANCE','RADIAL',3,9,10,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(196,'17804','195/60R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,10,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(197,'9261','195/60R15 EAGLE NCT-5','RADIAL',3,10,10,11,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(198,'17106','195/60R15 ASSURANCE','RADIAL',3,10,10,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(199,'18248','195/55R15 EFFICIENTGRIP PERFORMANCE','RADIAL',3,10,10,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(200,'18348','195/55R15 EAGLE SPORT','RADIAL',3,10,10,7,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(201,'17484','195/55R15 ASSURANCE','RADIAL',3,10,10,7,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(202,'17076','195/55R15 85V ASSURANCE COMFORTED TOURING','RADIAL',3,10,10,7,'Un neumático suave y cómodo para todas las estaciones, ayuda a prolongar la vida útil de la banda de rodamiento y, en promedio, un 20% más de amortiguación que los neumáticos de pasajeros estándar.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(203,'2669','185/70R14 EAGLE NCT-5','RADIAL',3,11,11,8,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(204,'18269','185/70R14 ASSURANCE','RADIAL',3,11,11,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(205,'18489','185/70R14 88T DIRECTION TOURING','RADIAL',3,11,11,8,'Llanta con un excelente costo-beneficio, seguridad y tracción.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(206,'17623','185/70R14 ASSURANCE','RADIAL',3,11,11,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(207,'18408','185/70R13 ASSURANCE','RADIAL',3,12,11,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(208,'3940','185/70R13 ASSURANCE DURAPLUS FUELMAX','RADIAL',3,12,11,8,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(209,'18486','185/65R15 ASSURANCE FUELMAX','RADIAL',3,10,11,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(210,'18249','185/65R15 ASSURANCE','RADIAL',3,10,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(211,'17622','185/65R15 ASSURANCE','RADIAL',3,10,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(212,'17546','185/65R15 DURAPLUS','RADIAL',3,10,11,9,'Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(213,'17418','185/65R15 EXCELLENCE AQUAMAX','RADIAL',3,10,11,9,'Neumático de equipo original en ciertos vehículos de importación europeos.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(214,'2991','185/65R14 NCT5','RADIAL',3,11,11,9,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(215,'2978','185/65R14 GPS3 SPORT','RADIAL',3,11,11,9,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(216,'13','185/65R14 DURAPLUS FUELMAX','RADIAL',3,11,11,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(217,'6004','185/65R14 ASSURANCE DURAPLUS','RADIAL',3,11,11,9,'Goodyear Duraplus es un neumático fantástico que ha sido diseñado para ofrecer un largo kilometraje y se ha fortalecido con DuPont ™ Kevlar® para aumentar la adaptabilidad y soportar las duras condiciones de las carreteras.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(218,'10553','185/65R14 ASSURANCE','RADIAL',3,11,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(219,'17624','185/65R14 86T ASSURANCE','RADIAL',3,11,11,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(220,'18516','185/65R14 ASSURANCE TRIPLEMAX','RADIAL',3,11,11,9,'Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(221,'18246','185/60R15 EFFICIENT GRIP PERFORMANCE','RADIAL',3,10,11,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(222,'18402','185/60R15 EAGLE SPORT','RADIAL',3,10,11,11,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(223,'6007','185/60R15 84H EXCELLENCE','RADIAL',3,10,11,11,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(224,'2979','185/60R14 EAGLE NCT5','RADIAL',3,11,11,11,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(225,'5227','185/60R14 EXCELLENCE','RADIAL',3,11,11,11,'El neumático 3 en 1 que brinda un agarre, comodidad y conducción excelentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(226,'16020','185/60R14 ASSURANCE','RADIAL',3,11,11,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(227,'18352','185/60R14 ASSURANCE','RADIAL',3,11,11,11,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(228,'18351','185/55R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,11,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(229,'13037','185/55R15 EAGLE NCT5','RADIAL',3,10,11,7,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(230,'17984','175/70R14 ASSURANCE','RADIAL',3,11,12,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(231,'2968','175/70R13 GPS3 SPORT','RADIAL',3,12,12,8,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(232,'18857','175/70R13 DIRECTION TURING','RADIAL',3,12,12,8,'Llanta con un excelente costo-beneficio, seguridad y tracción.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(233,'18407','175/70R13 ASSURANCE','RADIAL',3,12,12,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(234,'9506','175/65R15 GT3','RADIAL',3,10,12,9,'El GT3 se trata de confort. Y el valor. Pero lo más importante es que el GT3 trata de ofrecerle los neumáticos más seguros que sabemos cómo fabricar. Su innovador diseño del bloque de la banda de rodadura Bubble Blade ™ funciona igual de bien en condiciones húmedas o secas, mientras que las barras de unión mejoran el manejo del automóvil en casi cualquier situación. Este neumático radial es para el conductor cuyas prioridades coinciden con nuestras prioridades: seguridad, comodidad y tranquilidad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(235,'17780','175/65R15 ASSURANCE','RADIAL',3,10,12,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(236,'10997','175/65R15 GPS3','RADIAL',3,10,12,9,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(237,'3022','175/65R14 GPS3','RADIAL',3,11,12,9,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(238,'18341','175/65R14 ASSURANCE','RADIAL',3,11,12,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(239,'13038','175/65R14 ASSURANCE','RADIAL',3,11,12,9,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(240,'17081','175/65R14 82H EAGLE NCT5','RADIAL',3,11,12,9,'La llanta equipa originalmente los sedán de lujo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(241,'17787','175/65R14 82H ASSURANCE TRIPLEMAX','RADIAL',3,11,12,9,'Goodyear Assurance TripleMax, un neumático de equipo original, es un neumático sin cámara que ha sido diseñado para ofrecer una excelente capacidad de frenado y una mejor eficiencia de combustible.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(242,'2967','165/70R13 GPS3 SPORT','RADIAL',3,12,13,8,'Compuesto optimizado que permite mayor kilometraje con excelente desempeño en las más variadas condiciones de clima. Bloques con formatos diferenciados que reduce el ruido y ofrece una experiencia de manejo muy confiable.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(243,'18406','165/70R13 ASSURANCE','RADIAL',3,12,13,8,'Un neumático práctico para una tracción segura en todas las estaciones en condiciones húmedas y secas, con una banda de rodamiento larga.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(244,'10667','225/75R15 FORTERA','RADIAL',3,10,7,10,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(245,'13922','35-12.5R17 WRANGLER MT/R KEVLAR','RADIAL',3,8,14,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(246,'13924','265/60R18 ASSURANCE CS FUEL MAX','RADIAL',3,6,3,11,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(247,'14078','245/75R16 WRANGLER MT/R KEVLAR ','RADIAL',3,9,5,10,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(248,'1471','205/70R15C G32 CARGO ','RADIAL',3,10,9,8,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(249,'16','215/80R16 WRANGLER ADVENTURE','RADIAL',3,9,8,13,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(250,'16028','215/75R14 WRANGLER AT/S','RADIAL',3,11,8,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(251,'16035','225/60R16 ASSURANCE FUELMAX','RADIAL',3,9,7,11,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(252,'16036','315/70R17 WRANGLER DURATRAC','RADIAL',3,8,15,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(253,'16037','245/65R17 ASSURANCE FUELMAX','RADIAL',3,8,5,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(254,'16044','37-12.5R17 WRANGLER MT/R KEVLAR','RADIAL',3,8,16,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(255,'16045','225/65R17 ASSURANCE FUELMAX','RADIAL',3,8,7,9,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(256,'16049','205/70R15 FORTERA','RADIAL',3,10,9,8,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(257,'16054','265/75R16 WRANGLER SR-A','RADIAL',3,9,3,10,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(258,'16055','255/65R17 WRANGLER SR-A','RADIAL',3,8,4,9,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(259,'16056','265/70R17 WRANGLER DURATRAC','RADIAL',3,8,3,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(260,'16059','235/60R16 ASSURANCE FUEL MAX','RADIAL',3,9,6,11,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(261,'16065','255/65R17 WRANGLER SILENT ARMOR','RADIAL',3,8,4,9,'Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(262,'16099','215/70R15 DURASPORT','RADIAL',3,10,8,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(263,'17003','275/70R17 WRANGLER SILENT ARMOR','RADIAL',3,8,17,8,'Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(264,'17010','750R16 WRANGLER TG','RADIAL',3,9,18,14,'Un neumático resistente para vehiculos utilitarios.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(265,'17077','235/60R16 WRANGLER HP ALL WEATHER','RADIAL',3,9,6,11,'Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(266,'17078','225/75R15 110/108Q AT/S TH','RADIAL',3,10,7,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(267,'17104','275/70R18  WRANGLER DURATRAC','RADIAL',3,6,17,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(268,'17112','245/75R16 WRANGLER DURATRAC','RADIAL',3,9,5,10,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(269,'17119','35-12.5R15 WRANGLER MT/R KEVLAR','RADIAL',3,10,14,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(270,'17473','235/65R17 FORTERA COMFORTED','RADIAL',3,8,6,9,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(271,'17476','305/70R16 WRANGLER MT/R KEVLAR','RADIAL',3,9,19,8,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(272,'17488','235/70R16 WRANGLER SR-A','RADIAL',3,9,6,8,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(273,'17490','195/70R15C G32 CARGO','RADIAL',3,10,10,8,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(274,'17502','7.50R16LT WRANGLER AT/SA','RADIAL',3,9,20,14,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(275,'17574','42X14,5R17 WRANGLER MT/R KEVLAR','RADIAL',3,8,21,15,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(276,'17581','225/65R16C G32 CARGO','RADIAL',3,9,7,9,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(277,'17584','235/65R17 EXCELLENCE','RADIAL',3,8,6,9,'Neumático de equipo original en ciertos vehículos de importación europeos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(278,'17585','235/45R19 EFFICIENT GRIP ROF','RADIAL',3,5,6,5,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(279,'17590','255/50R19 EAGLE F1 ASYMMETRIC SUV ROF ','RADIAL',3,5,4,6,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(280,'17594','235/60R17 EFFICIENT GRIP','RADIAL',3,8,6,11,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(281,'17611','225/75R16 WRANGLER AT/S','RADIAL',3,9,7,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(282,'17612','235/75R15 FORTERA COMFORT','RADIAL',3,10,6,10,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(283,'17614','245/75R16 WRANGLER AT/S','RADIAL',3,9,5,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(284,'17661','235/60R17  FORTERA COMFORTED','RADIAL',3,8,6,11,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(285,'17662','235/60R18 WRANGLER SUV','RADIAL',3,6,6,11,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(286,'17664','265/70R17 WRANGLER SR-A','RADIAL',3,8,3,8,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(287,'17669','215/80R16 FORTERA COMFORT','RADIAL',3,9,8,13,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(288,'17671','265/60R18 WRANGLER SR-A','RADIAL',3,6,3,11,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(289,'17691','265/50R20 FORTERA HL','RADIAL',3,7,3,6,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(290,'17693','265/70R17 WRANGLER AT/S','RADIAL',3,8,3,8,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(291,'17706','235/55R18 EAGLE RSA','RADIAL',3,6,6,7,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(292,'17709','245/65R17 WRANGLER SUV','RADIAL',3,8,5,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(293,'17730','275/65R18 114T WRANGLER SRA','RADIAL',3,6,17,9,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(294,'17734','235/60R16 WRANGLER SUV','RADIAL',3,9,6,11,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(295,'17766','255/55R18 ASSURANCE','RADIAL',3,6,4,7,'Nuestro mejor neumático para un mayor ahorro de combustible además de una tracción segura en condiciones climáticas cambiantes. Ahorre el equivalente a 4.000 km en el gasto de combustible durante la vida útil de 4 llantas\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(296,'17767','255/55R18 ASSURANCE TRIPLETRED A/S','RADIAL',3,6,4,7,'Neumático para todas las temporadas, tracción confiable en condiciones climáticas cambiantes y excelente tracción en condiciones de alta humedad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(297,'17828','265/70R17 ASSURANCE TRIPLETRED','RADIAL',3,8,3,8,'Neumático para todas las temporadas, tracción confiable en condiciones climáticas cambiantes y excelente tracción en condiciones de alta humedad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(298,'17829','265/70R17 WRANGLER AT ADVENTURE OWL','RADIAL',3,8,3,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(299,'17943','225/65R17 WRANGLER SUV','RADIAL',3,8,7,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(300,'17949','205/75R14 WRANGLER AT/S REINFOR ','RADIAL',3,11,9,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(301,'17950','215/80R16 WRANGLER AT/S REINFOR','RADIAL',3,9,8,13,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(302,'17952','265/75R16 WRANGLER ARMORTRAC','RADIAL',3,9,3,10,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(303,'17953','185R14C WRANGLER AT/S','RADIAL',3,11,11,14,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(304,'17986','265/65R17 EFFICIENT GRIP SUV','RADIAL',3,8,3,9,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(305,'18002','235/55R18 ASSURANCE COMFORTED TOURING ','RADIAL',3,6,6,7,'Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(306,'18004','245/45R18 EAGLE SPORT ALL SEASON','RADIAL',3,6,5,5,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(307,'18005','215/45R18 EAGLE SPORT ALL SEASON','RADIAL',3,6,8,5,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(308,'18052','235/65R17 WRANGLER SUV','RADIAL',3,8,6,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(309,'18109','205/65R16 EFFICIENT GRIP','RADIAL',3,9,9,9,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(310,'18121','235/45R18 EAGLE SPORT ALL SEASON','RADIAL',3,6,6,5,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(311,'18124','275/60R20 115T WRANGLER AT ADVENTURE','RADIAL',3,7,17,11,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(312,'18128','255/55R18 109Y EAGLE F1 ASYMMETRIC SUV','RADIAL',3,6,4,7,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(313,'18137','205/50R17 EFFICIENT GRIP PERFORMANCE ','RADIAL',3,8,9,6,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(314,'18148','235/65R17 EFFICIENT GRIP SUV','RADIAL',3,8,6,9,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(315,'18152','245/70R16 WRANGLER AT ADVENTURE','RADIAL',3,9,5,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(316,'18155','265/70R16 WRANGLER AT ADVENTURE','RADIAL',3,9,3,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(317,'18167','315/75R16 FIERCI ATITUDE','RADIAL',3,9,15,10,'Conduce con estilo en autopistas y senderos con un neumático agresivo para todo terreno creado para la aventura y el aspecto\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(318,'18187','265/65R17 WRANGLER DURATRAC','RADIAL',3,8,3,9,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(319,'18189','255/50R20 EAGLE RSA 104V','RADIAL',3,7,4,6,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(320,'18190','235/70R16 WRANGLER AT ADVENTURE','RADIAL',3,9,6,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(321,'18191','235/60R17 EFFICIENT GRIP SUV','RADIAL',3,8,6,11,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(322,'18192','265/70R16 EFFICIENT GRIP SUV','RADIAL',3,9,3,8,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(323,'18251','235/70R16 WRANGLER AMORTRAC','RADIAL',3,9,6,8,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(324,'18256','255/50R19 EAGLE F1 ASYMMETRIC','RADIAL',3,5,4,6,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(325,'18264','225/55R18  EFFICIENT GRIP','RADIAL',3,6,7,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(326,'18284','245/45R17 EAGLE FI ASYMMETRIC ROF','RADIAL',3,8,5,5,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(327,'18308','265/70R16 WRANGLER SUV','RADIAL',3,9,3,8,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(328,'18316','235/65R17 ASSURANCE TRIPLETRED','RADIAL',3,8,6,9,'Neumático para todas las temporadas, tracción confiable en condiciones climáticas cambiantes y excelente tracción en condiciones de alta humedad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(329,'18337','265/70R16 WRANGLER ARMORTRAC','RADIAL',3,9,3,8,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(330,'18338','225/65R17 EFFICIENT GRIP SUV','RADIAL',3,8,7,9,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(331,'18339','255/55R19 EFFICIENT GRIP SUV','RADIAL',3,5,4,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(332,'18340','245/70R16 WRANGLER ARMORTRAC ','RADIAL',3,9,5,8,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(333,'18342','205/70R15 WRANGLER SUV','RADIAL',3,10,9,8,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(334,'18350','245/60R18 EFFICIENT GRIP SUV','RADIAL',3,6,5,11,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(335,'18353','245/75R16 WRANGLER ARMORTRAC','RADIAL',3,9,5,10,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(336,'18358','265/60R18 WRANGLER AT ADVENTURE','RADIAL',3,6,3,11,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(337,'18359','265/70R17 WRANGLER AT ADVENTURE','RADIAL',3,8,3,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(338,'18360','275/60R20 WRANGLER AT ADVENTURE OWL','RADIAL',3,7,17,11,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(339,'18362','265/65R17 WRANGLER AT ADVENTURE 112T','RADIAL',3,8,3,9,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(340,'18363','265/70R16 WRANGLER AT ADVENTURE','RADIAL',3,9,3,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(341,'18374','195/55R16 EFFICIENT GRIP PERFORMANCE','RADIAL',3,9,22,7,'El neumático con agarre mejorado y una menor distancia de frenado sobre mojado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(342,'18400','235/75R15 WRANGLER ARMORTRAC','RADIAL',3,10,6,10,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(343,'18455','275/45R21 EAGLE F1 ASIMMETRIC SUV','RADIAL',3,13,17,5,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(344,'18457','275/35R19 EXCELLENCE ROF','RADIAL',3,5,17,4,'Neumático de equipo original en ciertos vehículos de importación europeos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(345,'18458','285/45R19 EAGLE F1 ASYMMETRIC SUV ROF','RADIAL',3,5,23,5,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(346,'18459','285/40R21 EAGLE F1 ASYMMETRIC 2 SUV ','RADIAL',3,13,23,3,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(347,'18466','245/45R20 EAGLE F1 SUPERCAR','RADIAL',3,7,5,5,'Alto rendimiento y tracción en seco.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(348,'18467','265/70R17 WRANGLER DURATRAC','RADIAL',3,8,3,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(349,'18487','245/75R17 WRANGLER DURATRAC','RADIAL',3,8,5,10,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(350,'18488','245/70R17 WRANGLER SR-A','RADIAL',3,8,5,8,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(351,'18497','265/50R20 EFFICIENT GRIP SUV','RADIAL',3,7,3,6,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(352,'18498','255/60R18 WRANGLER AMORTRAC','RADIAL',3,6,4,11,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(353,'18499','31X10.50R15 WRANGLER AT ADVENTURE','RADIAL',3,10,24,16,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(354,'18502','235/75R15 WRANGLERL AT/SA ','RADIAL',3,10,6,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(355,'18504','205/70R15 WRANGLER ADVENTURE','RADIAL',3,10,9,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(356,'18509','305/35R20 EAGLE F1 SUPERCAR G 2 ','RADIAL',3,7,19,4,'Alto rendimiento y tracción en seco.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(357,'18510','265/60R18 WRANGLER DURATRAC','RADIAL',3,6,3,11,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(358,'18511','35X12,50R18 WRANGLER MT/R KEVLAR','RADIAL',3,6,14,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(359,'18512','285/75R18 WRANGLER MT/R KEVLAR','RADIAL',3,6,23,10,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(360,'18514','225/60R17 WRANGLER SUV','RADIAL',3,8,7,11,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(361,'18519','255/40R19 EFFICIENT GRIP ROF','RADIAL',3,5,4,3,'Neumático que ofrece desempeño, diseño audaz y ahorro de combustible para su vehículo.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(362,'18520','255/55R20 EAGLE F1 ASYMMETRIC SUV','RADIAL',3,7,4,7,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(363,'18529','215/60R17 EFFICIENT GRIP SUV','RADIAL',3,8,8,11,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(364,'18532','245/45R17 EAGLE SPORT ALL SEASON','RADIAL',3,8,5,5,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(365,'18533','235/50R17 EAGLE SPORT ALL SEASON','RADIAL',3,8,6,6,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(366,'18534','245/40R17 EAGLE SPORT ALL SEASON','RADIAL',3,8,5,3,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(367,'18538','225/40R18 EAGLE SPORT ALL SEASON','RADIAL',3,6,7,3,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(368,'18539','245/40R18 EAGLE SPORT ALL SEASON','RADIAL',3,6,5,3,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(369,'18540','245/45R20 EAGLE SPORT ALL SEASON','RADIAL',3,7,5,5,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(370,'18612','255/70R16 WRANGLER AT ADVENTURE','RADIAL',3,9,4,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(371,'18712','305/35R20 EAGLE F1 SUPERCAR G2','RADIAL',3,7,19,4,'Alto rendimiento y tracción en seco.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(372,'18713','275/65R18 WRANGLER OWL AT ADVENTURE','RADIAL',3,6,17,9,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(373,'18714','245/75R16 WRANGLER AT ADVENTURE','RADIAL',3,9,5,10,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(374,'18746','265/65R17 WRANGLER ARMORTRAC','RADIAL',3,8,3,9,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(375,'18747','205/65R15 WRANGLER SUV','RADIAL',3,10,9,9,'Goodyear Wrangler SUV te da excelente kilometraje y adhesion al asfalto mojado. Toma el camino de forma segura con nosotros!\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(376,'18778','225/50R17 EFFIGRIP PERFORMANCE ROF','RADIAL',3,8,7,6,'Neumático de equipo original en ciertos vehículos de importación europeos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(377,'18780','215/80R16 WRANGLER ARMORTRAC','RADIAL',3,9,8,13,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(378,'18782','265/75R16 WRANGLER OWL DURATRAC','RADIAL',3,9,3,10,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(379,'18783','35X12.50R20 WRANGLER MT/R KEVLAR','RADIAL',3,7,14,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(380,'18800','255/45R20 EAGLE SPORT A/S','RADIAL',3,7,4,5,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(381,'18801','235/40R18 EAGLE SPORT ALL SEASON','RADIAL',3,6,6,4,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(382,'18802','245/70R17 WRANGLER AT ADVENTURE','RADIAL',3,8,5,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(383,'18803','245/35R20 EAGLE SPORT ALL SEASON','RADIAL',3,7,5,4,'Para equipar vehículos de media o alta potencia. Ofrece desempeño, maniobrabilidad y confort.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(384,'18839','275/35R20 EXCELLENCE 102Y ROF','RADIAL',3,7,17,4,'Neumático de equipo original en ciertos vehículos de importación europeos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(385,'18840','275/35R20 EAGLE F1 ASYM 2 ROF','RADIAL',3,7,17,4,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(386,'18841','275/40R19 EXCELLENCE ROF','RADIAL',3,5,17,3,'Neumático de equipo original en ciertos vehículos de importación europeos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(387,'18842','275/50R20 EAGLE LS2 ROF','RADIAL',3,7,17,6,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(388,'18853','225/75R16 CARGO MARATHON 2','RADIAL',3,9,7,10,'El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(389,'18864','225/70R15 CARGO MARATHON 2','RADIAL',3,10,7,8,'El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(390,'18866','275/70R18 WRANGLER DURATRAC','RADIAL',3,6,17,8,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(391,'18867','265/70R17 WRANGLER ARMORTRAC','RADIAL',3,8,3,8,'Wrangler ArmorTrac de Goodyear es un neumático resistente fabricado tanto para la conducción diaria como para la acción en todo terreno.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(392,'18868','255/70R16 EFFICIENTGRIP SUV','RADIAL',3,9,4,8,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(393,'18869','235/55R18 EFFICIENTGRIP SUV','RADIAL',3,6,6,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(394,'18870','235/55R19 RFFICIENTGRIP SUV','RADIAL',3,5,6,7,'El neumático para vehículos utilitarios deportivos que ahorra combustible y proporciona una menor distancia de frenado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(395,'18910','185R14 C CARGO MARATHON 2','RADIAL',3,11,11,14,'El patrón de la banda de rodamiento de 4 canales del Cargo Marathon distribuye la carga uniformemente, mejorando la tracción y maniobrabilidad\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(396,'2644','235/75R15 WRANGLER AT/SA OWL','RADIAL',3,10,6,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(397,'2659','225/75R15 ADVENTURE','RADIAL',3,10,7,10,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(398,'2956','245/70R16 WRANGLER AT/SA','RADIAL',3,9,5,8,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(399,'296','315/75R16 WRANGLER DURATRAC','RADIAL',3,9,15,10,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(400,'2982','225/70R15C G32 CARGO','RADIAL',3,10,7,8,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(401,'3024','215/75R14 WRANGLER AT/S OWL','RADIAL',3,11,8,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(402,'3129','235/60R16 FORTERA','RADIAL',3,9,6,11,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(403,'313','225/75R16 WRANGLER AT/SA','RADIAL',3,9,7,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(404,'3140','31-10.50R15 WRANGLER AT/S OWL','RADIAL',3,10,24,16,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(405,'3166','265/70R16 WRANGLER AT/SA','RADIAL',3,9,3,8,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(406,'3167','265/65R17 WRANGLER AT/SA OWL ','RADIAL',3,8,3,9,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(407,'3168','265/75R16 WRANGLER AT/SA OWL','RADIAL',3,9,3,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(408,'3193','225/75R15 WRANGLER  AT/SA OWL','RADIAL',3,10,7,10,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(409,'3196','30-90.5R15 WRANGLER AT/SA OWL','RADIAL',3,10,25,17,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(410,'3203','235/70R16 WRANGLER SR-A','RADIAL',3,9,6,8,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(411,'3266','31-10.5R15 WRANGLER AT/SA','RADIAL',3,10,24,16,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(412,'3270','33-12.50R15 WRANGLER DURATRAC','RADIAL',3,10,26,12,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(413,'3299','185R14C G32 CARGO ','RADIAL',3,11,11,14,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(414,'3476','205/70R15 WRANGLER AT ADVENTURE','RADIAL',3,10,9,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(415,'35','265/70R16 WRANGLER ADVENTURE','RADIAL',3,9,3,8,'Nuestro mejor neumático para la versatilidad dentro y fuera de la carretera, con DuPont ™ Kevlar® para una resistencia robusta, además de una tracción superior a través de la lluvia. Tanto para la conducción diaria en carretera como para salir de la carretera en cualquier momento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(416,'3577','235/85R16 WRANGLER AT/SA','RADIAL',3,9,6,18,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(417,'3640','225/75R16C G32 CARGO','RADIAL',3,9,7,10,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(418,'3641','265/75R16 123/120R FORTERA','RADIAL',3,9,6,10,'Un neumático silencioso con un aspecto refinado y tracción en todas las estaciones\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(419,'3759','195/75R16 G32 CARGO ','RADIAL',3,9,10,10,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(420,'3934','215/70R14C G32 PLUS','RADIAL',3,11,8,8,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(421,'3935','205/75R16C G32 CARGO','RADIAL',3,9,9,10,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(422,'3947','195R14C G46','RADIAL',3,11,10,14,'es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(423,'4109','285/75R16 WRANGLER MT/R KEVLAR','RADIAL',3,9,23,10,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(424,'4316','195/75R14 G-32','RADIAL',3,11,10,10,'G32 cargo es un neumático de referencia en el segmento de servicios comerciales gracias a su durabilidad y resistencia\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(425,'4409','205/75R15 WRANGLER AT','RADIAL',3,10,9,10,'Resistencia robusta, tracción en todo terreno y un diseño económico de la banda de rodamiento para camionetas pickup.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(426,'4557','205R16C WRANGLER AT/S','RADIAL',3,9,9,14,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(427,'467','235/70R16 WRANGLER AT/SA','RADIAL',3,9,6,8,'Un neumático resistente que ofrece una mejor tracción en carretera y fuera de carretera\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(428,'4950','265/60R18 WRANGLER SILENT ARMOR OWL ','RADIAL',3,6,3,11,'Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(429,'5174','265/70R18 WRANGLER SR-A ','RADIAL',3,6,3,8,'Nuestro mejor neumático para la conducción en carretera con tracción mejorada, desgaste optimizado de la banda de rodadura y manejo en carreteras mojadas, complementado con una conducción silenciosa. Confiado para equipos originales en camionetas pick-up líderes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(430,'5192','285/75R16 WRANGLER SILENT ARMOR OWL','RADIAL',3,9,23,10,'Un neumático resistente con una capa DuPont ™ Kevlar para la versatilidad necesaria para conquistar caminos de tierra y al mismo tiempo proporciona un viaje en carretera suave y silencioso.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(431,'5193','285/70R17 WRANGLER MT/R OWL','RADIAL',3,8,23,8,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(432,'5198','33-12.50R15 WRANGLER MT/R KEVLAR','RADIAL',3,10,26,12,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(433,'5202','32-11.50R15 WRANGLER MTR OWL KEVLAR','RADIAL',3,10,27,19,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(434,'5490','265/75R16 WRANGLER MT/R ','RADIAL',3,9,3,10,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(435,'6973','255/60R19 EAGLE RSA','RADIAL',3,5,4,11,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(436,'6974','275/55R20 EAGLE LS2 ','RADIAL',3,7,17,7,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(437,'7136','255/55R19 WRANGLER HP','RADIAL',3,5,4,7,'Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(438,'7139','255/55R18 EAGLE F1 ASSYMMETRIC SUV ','RADIAL',3,6,4,7,'El neumático de alto rendimiento que permite unas menores distancia de frenado cuando más se necesitan\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(439,'7242','275/70R17 WRANGLER MT/R KEVLAR','RADIAL',3,8,17,8,'Nuestro mejor neumático diseñado para expediciones extremas fuera de la carretera, con DuPont ™ Kevlar® que ayuda a resistir los pinchazos cuando se impulsa sobre rocas, barro y arena.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(440,'726','205/75R15 WRANGLER RT/S','RADIAL',3,10,9,10,'Diseñado para proporcionar tracción en carretera durante todo el año con un manejo competente en terrenos ligeros.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(441,'7570','235/60R18 EAGLE RS-A','RADIAL',3,6,6,11,'Neumático de alto rendimiento para diversos tipos de condiciones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(442,'7909','265/75R16 WRANGLER DURATRAC','RADIAL',3,9,3,10,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(443,'9285','235/65R17 ASSURANCE COMFORTED TOURING','RADIAL',3,8,6,9,'Nuestro mejor neumático para una conducción suave con un manejo refinado y una tracción segura en condiciones climáticas cambiantes. Ofrece un 20% más de amortiguación y supera al principal competidor en comodidad de manejo\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(444,'9302','265/70R16 WRANGLER HP ','RADIAL',3,9,3,8,'Un popular neumático de carretera en el que se confía el equipo original en muchos camiones y SUV.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(445,'9307','245/75R16 120Q WRANGLER OWL DURATRAC ','RADIAL',3,9,5,10,'El diseño audaz y agresivo de la banda de rodadura es ideal para remolcar y transportar camiones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(446,'79','10.00-20 CONQUISTADOR 16 PR','RADIAL',3,7,28,14,'Neumático para uso en todo tipo de servicios de transporte de carga. Banda de rodamiento centrada y ranuras laterales, lo que garantiza una tracción múltiple en cualquier tipo de piso. El compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro. Tiene una carcasa de nylon especial que proporciona ayuda para maximizar la durabilidad y el kilometraje.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(447,'71','10.00-20 G8 16PR ','RADIAL',3,7,28,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(448,'2649','10.00-20 SUPER CONQUISTADOR 16PR ','RADIAL',3,7,28,14,'Neumático para uso en todo tipo de servicios de transporte de carga.\nBanda de rodamiento con ranuras y cuchillas transversales que garantizan una tracción múltiple en cualquier tipo de piso.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro.\nTiene una carcasa de nylon especial que proporciona ayuda para maximizar la durabilidad y el kilometraje.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(449,'237','10.00R20 G658 146/143K ','RADIAL',3,7,28,14,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(450,'6257','10.00R20 G665 148J ','RADIAL',3,7,28,14,'Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(451,'6259','10.00R20 G667 146/143 K ','RADIAL',3,7,28,14,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(452,'5408','10.00R20 G677 MSD PLUS 146K 16PR ','RADIAL',3,7,28,14,'\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(453,'73','11.00-22 G8 16PR ','RADIAL',3,14,29,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(454,'18975','11.00R22 ARMOR MAX MSD 152/149 K ','RADIAL',3,14,29,14,'MÁXIMA resistencia de la carcasa con 4 correas de acero y alambre de alta elongación\n  MÁXIMO kilometraje con diseño probado de tracción de servicio mixto\n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(455,'8295','11.00R22 G658 152K ','RADIAL',3,14,29,14,'Tecnología Duralife: carcasa más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(456,'8296','11.00R22 G667 152K ','RADIAL',3,14,29,14,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(457,'13754','11.00R22 G677 MSD PLUS 152K 16PR ','RADIAL',3,14,29,14,'\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(458,'46','11R22.5 G667 146L','RADIAL',3,15,29,14,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(459,'17483','12R22,5 152/148 LR8 TL MARATHON LHS TURQ ','RADIAL',3,15,30,14,'MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(460,'18336','12R22,5 G667 150/147L H TL BR ','RADIAL',3,15,30,14,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(461,'17313','12R22.5 G658 150/147L ','RADIAL',3,15,30,14,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(462,'18808','215/75R17,5 REGIONAL RHS 126/124L F BR ','RADIAL',3,8,8,10,'Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(463,'14476','215/75R17.5 G686 MSS 126/124K ','RADIAL',3,8,8,10,'\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(464,'18854','215/75R17.5 REGIONAL RHD 126/124L F BR ','RADIAL',3,8,8,10,'Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(465,'2975','215/75R17.5 REGIONAL RHD 126/124L ','RADIAL',3,16,8,10,'Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(466,'2976','215/75R17.5 REGIONAL RHS 126/124L ','RADIAL',3,16,8,10,'Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(467,'31','215/75R17.50 G665 126/124J  BR ','RADIAL',3,16,8,10,'Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(468,'18809','235/75R17,5 REGIONAL RHS 132/130 L BR ','RADIAL',3,16,6,10,'Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(469,'10761','235/75R17.5 REGIONAL RHS 132/130L BR ','RADIAL',3,16,6,10,'Carcasa y correas de acero: mayor durabilidad;\n Compuesto de goma resistente: gran kilometraje;\n Banda de rodamiento de tres carriles: distribución uniforme de presión y carga para un desgaste lento y uniforme\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(470,'18855','275/80R22,5 CITYMAX PLUS 149/146J BR ','RADIAL',3,15,17,13,'MAYOR kilometraje en la vida total;\n\n MAYOR RESISTENCIA: bloques flexibles que ayudan a reducir el calor para el servicio de caminar y parar;\n\n MAYOR RESISTENCIA: tecnología Duralife ™ con una carcasa resistente que ayuda a la protección contra impactos y especialmente a la fricción lateral\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(471,'17944','275/80R22,5 G677 MSD PLUS 149K ','RADIAL',3,15,17,13,'\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(472,'18412','275/80R22,5 KMAX D 149/146L BR ','RADIAL',3,15,17,13,'MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(473,'6013','275/80R22.5 G665 149/146J ','RADIAL',3,15,17,13,'Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(474,'5704','275/80R22.5 KELLY KS461 16PR ','RADIAL',3,15,17,13,'Diseño de la banda de rodamiento de 5 carriles optimizado por computadora: funcionamiento más fresco y mayor área de contacto para una mejor distribución de la carga, mayor kilometraje y facilidad de manejo y seguridad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(475,'18244','275/80R22.5 KMAX S 149/146L ','RADIAL',3,15,17,13,'MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(476,'90011698','295/80R22,5 152M REG RHD II','RADIAL',3,15,22,13,'Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(477,'18856','295/80R22,5 FUEL MAX LHD 152/148L  BR ','RADIAL',3,15,22,13,'MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(478,'18810','295/80R22,5 FUEL MAX LHS 154/149M J BR ','RADIAL',3,15,22,13,'MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(479,'17072','295/80R22,5 G677 MSD PLUS 152K ','RADIAL',3,15,22,13,'\nTecnología de alambre de alta elongación: preservación mejorada de la carcasa contra daños y cortes.\n Tecnología Duralife: carcasa más resistente con 4 correas de acero, lo que aumenta el recauchutado.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(480,'7113','295/80R22,5 REGIONAL RHD II 152M H LUX','RADIAL',3,15,22,13,'Profundidad extra de goma: mayor kilometraje;\n Banda de rodamiento de bloque sólido de 5 carriles: desgaste uniforme por tracción\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(481,'18821','295/80R22,5 STEELMARK AGD 152/148L H TL BR ','RADIAL',3,15,22,13,'\nDiseño optimizado de la banda de rodamiento de 5 carriles: proporciona una mejor distribución de la carga, un desgaste uniforme y un mayor kilometraje.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(482,'18820','295/80R22,5 STEELMARK AGS 152/148L H TL BR ','RADIAL',3,15,22,13,'\nDiseño optimizado de la banda de rodamiento de 5 carriles: proporciona una mejor distribución de la carga, un desgaste uniforme y un mayor kilometraje.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(483,'6164','295/80R22.5 G657 154/149 L ','RADIAL',3,15,22,13,'Para aplicaciones en servicio de larga distancia con tecnología Duralife\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(484,'6014','295/80R22.5 G665 152/148K ','RADIAL',3,15,22,13,'Tecnología Duralife: carcasas más fuertes, aumentando el número de recauchutados. Neumático especialmente hecho para uso regional severo.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(485,'6012','295/80R22.5 G667 152/148L ','RADIAL',3,15,22,13,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(486,'5409','295/80R22.5 KELLY KS461 16PR ','RADIAL',3,15,22,13,'Diseño de la banda de rodamiento de 5 carriles optimizado por computadora: funcionamiento más fresco y mayor área de contacto para una mejor distribución de la carga, mayor kilometraje y facilidad de manejo y seguridad.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(487,'7884','295/80R22.5 KELLY KS481 16PR ','RADIAL',3,15,22,13,'\nBanda de rodamiento ancha y plana: permite una mejor distribución de la carga y asientos en el piso, optimizando el desgaste uniforme y el kilometraje;\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(488,'18779','295/80R22.5 KMAX D TRAC 152/148L H BR ','RADIAL',3,15,22,13,'MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(489,'18166','295/80R22.5 KMAX S 152/148L H TL 122642','RADIAL',3,15,22,13,'MÁXIMO kilometraje con tecnología IntelliMax Rib.\n MÁXIMA durabilidad con 7 años de garantía.\n Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(490,'5984','315/80R22,5 G658 154/150M ','RADIAL',3,15,15,13,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(491,'13572','315/80R22.5 G667 156/150M TL BR121307','RADIAL',3,15,15,13,'Tecnología Duralife: más fuerte, aumentando la cantidad de recauchutado.\n 38% más de kilometraje en el transporte de carga o pasajeros.\n La mejor asistencia técnica en el segmento.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(492,'18179','385/65R22,5 MARATHON LHS II+ 160/158K L LUXERMBURG ','RADIAL',3,15,31,9,'MÁXIMA resistencia a la rodadura con economía de combustible de grado B, la mejor de la industria \n  MÁXIMO rendimiento con hasta un 9% más de kilometraje \n  Máxima durabilidad con 7 años de garantía.\n  Lo último en innovación con chip RFID integrado de fábrica\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(493,'4143','385/65R22.5 REG RHT (S.SINGLE) 160J L ','RADIAL',3,15,31,9,'\nFacilita la calibración, elimina la molestia de combinar neumáticos dobles, menos ensamblajes y desensamblajes, y reduce el trabajo de mantenimiento\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(494,'17487','6.00-14 SUPER CAMINERA XTRAW PR8 PE ','RADIAL',3,11,32,14,'Neumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(495,'3584','6.50-16 CT160 NYTC 6PR TT BLT T GY ','RADIAL',3,9,33,14,'Neumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(496,'49','6.50-16 G8 6PR ','RADIAL',3,9,33,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(497,'5775','600-13 TT PR08 HM G8 PE ','RADIAL',3,12,32,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(498,'52','7.00-16 CT160 10PR ','RADIAL',3,9,34,14,'Neumático para vehículos ligeros y uso en todo tipo de servicios.\nDiseño de la banda de rodamiento con centro de bloqueo y bloques laterales para una buena tracción.\nRanuras radiales profundas, que permiten la autolimpieza de la banda de rodadura, ya que evitan la retención de piedras y barro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(499,'50','7.00-16 G8 10PR ','RADIAL',3,9,34,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(500,'3314','7.50-16 BANDEIRANTE 12PR ','RADIAL',3,9,20,14,'Mejor distribución de carga con mínima compresión.\nMejor autolimpieza y facilidad para repeler piedras.\nMayor estabilidad direccional.\nDistribución uniforme de tensiones, proporcionando resistencia superior contra daños.\nConserva la carcasa para un futuro recauchutado\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(501,'64','7.50-16 CT160 10PR ','RADIAL',3,9,20,14,'Neumático para vehículos ligeros y uso en todo tipo de servicios.\nDiseño de la banda de rodamiento con centro de bloqueo y bloques laterales para una buena tracción.\nRanuras radiales profundas, que permiten la autolimpieza de la banda de rodadura, ya que evitan la retención de piedras y barro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(502,'62','7.50-16 G8 10PR ','RADIAL',3,9,20,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(503,'3271','7.50-16 G8 12PR ','RADIAL',3,9,20,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(504,'5300','7.50-18 G8 8PR ','RADIAL',3,6,20,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(505,'3407','7.50R16 G32 F TT BR ','RADIAL',3,9,20,14,'Compuesto de goma diferenciado: mayor agarre y resistencia al corte, maximizando el kilometraje.\n Diseño de pista ancha con ranuras y cuchillas anchas: excelente capacidad de conducción, autolimpieza, estabilidad lateral y más seguridad en pistas mojadas.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(506,'3012','7.50R16 G49 F TT BR ','RADIAL',3,9,20,14,'Diseño de bloque con grandes ranuras longitudinales: excelente respuesta al torque del vehículo.\n Compuesto exclusivo de la banda de rodamiento: mayor agarre y resistencia a cortes y tirones.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(507,'78','9.00-20 CONQUISTADOR 14PR ','RADIAL',3,7,35,14,'Neumático para uso en todo tipo de servicios de transporte de carga. Banda de rodamiento centrada y ranuras laterales, lo que garantiza una tracción múltiple en cualquier tipo de piso. El compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro. Tiene una carcasa de nylon especial que proporciona que ayuda a maximizar la durabilidad y el kilometraje.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(508,'70','9.00-20 G8 14PR ','RADIAL',3,7,35,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(509,'3491','9-17.5 PL/G8 NYSC 12PR TT1052852','RADIAL',3,16,35,14,'\nNeumático para uso en todo tipo de servicios de transporte de carga o pasajeros.\nLa banda de rodamiento es plana y ancha asi garantiza una mejor distribución de la carga al tiempo que maximiza el kilometraje.\nLas ranuras anchas y asimétricas repelen las piedras y proporcionan tirones firmes y frenado seguro.\nLos hombros redondeados brindan seguridad, estabilidad y firmeza al conducir en las curvas.\nEl compuesto de la banda de rodamiento es resistente a la abrasión, al desgarro y al desgarro conserva la carcasa para el recauchutado futuro.\nLa carcasa de nylon especialmente tratada proporciona un alto índice de recauchutado, maximizando la durabilidad y el kilometraje\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(510,'3620','DYNA TORQUE II R1 12PR','RADIAL',3,17,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(511,'7194','ALL SERVICE I3 10PR','RADIAL',3,9,33,14,'• Mayor agarre y auto limpieza para aplicación en plataformas y sembradoras.\n• Diseño militar evita desplazamiento permitiendo un perfecto funcionamiento del mecanismo del implemento\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(512,'5028','DYNA TORQUE II R1 8PR','RADIAL',3,18,37,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(513,'5228','RIB TRACTOR F2 10PR','RADIAL',3,9,35,14,'• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(514,'18071','ALL IMPLEMENT TT 10PR','RADIAL',4,9,34,14,'• Mayor agarre y auto limpieza para aplicación en plataformas y sembradoras. \n• Diseño militar evita desplazamiento permitiendo un perfecto funcionamiento del mecanismo del implemento.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(515,'4622','POWER TORQUE R1 14PR','RADIAL',3,19,38,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Exclusivo diseño Goodyear con barras alternadas maximizando la fuerza transmitida al suelo.\n• Protección extra en la región del aro que protege contra suciedad, piedras y restos de cultivo\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(516,'229','DYNA TORQUE II R1 8PR','RADIAL',3,20,37,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(517,'309','SUPER FLOTATION 10PR','RADIAL',3,6,39,13,'• Ideal para plataformas, sembradoras y pulverizadores.\n• Flotación extra debido a mayor ancho.\n• Proporciona buena capacidad de carga con un contorno optimizado.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(518,'3272','SUPER CUARTEADORA R1 6PR','RADIAL',3,18,40,14,'• Para aplicaciones en tractores, cosechadoras y implementos de las áreas inundadas (cultivo de arroz).\n• Tracción uniforme y resistencia al resbale debido al diseño de las barras simétricas.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(519,'8568','DYNA TORQUE II R1 10PR ','RADIAL',3,18,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(520,'3235','SURE GRIP IMPLEMENT I3 10PR ','RADIAL',3,6,41,13,'• Para aplicaciones en retro excavadoras y cosechadoras.\n• Tracción relativa en suelos sueltos y aplicaciones industriales.\n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(521,'5615','RIB TRACTOR F2 8PR ','RADIAL',3,9,20,14,'• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(522,'227','DYNA TORQUE II R1 12PR ','RADIAL',3,21,37,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(523,'6165','SUPERFLOT II I-3 14PR ','RADIAL',3,22,42,11,'• Recomendado para ejes libres de transbordos e implementos agrícolas.\n• Minimiza la compactación del suelo debido a la mayor área de contacto de su rodaje.\n• Talón reforzado para soportar altas cargas a velocidades de hasta 50 Km/h.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(524,'5236','RIB TRACTOR F2 8PR','RADIAL',3,6,20,14,'• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(525,'222','DYNA TORQUE II R1 6PR','RADIAL',3,20,43,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(526,'3218','DYNA TORQUE III R1 12PR','RADIAL',3,23,44,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(527,'4621','DYNA RIB F2 10PR ','RADIAL',3,9,28,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(528,'3201','POWER TORQUE R1 12PR','RADIAL',3,21,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Exclusivo diseño Goodyear con barras alternadas maximizando la fuerza transmitida al suelo.\n• Protección extra en la región del aro que protege contra suciedad, piedras y restos de cultivo.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(529,'3164','SUPER LAMEIRO R1 12PR','RADIAL',3,19,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Ancho de la barra y del aro, optimizados para servicios de pulverización y trabajo entre líneas.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(530,'234','DYNA TORQUE II R1 12PR ','RADIAL',3,24,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(531,'232','DYNA TORQUE II R1 12PR','RADIAL',3,23,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(532,'10764','FARM UTILITY I1 12PR ','RADIAL',3,10,46,14,'• Ideal para plataformas, sembradoras y pulverizadores.\n• Flotación extra debido a mayor ancho.\n• Proporciona buena capacidad de carga con un contorno optimizado\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(533,'12685','MAQ AGRICOLAS I1 10PR','RADIAL',3,9,20,14,'• Atiende a las necesidades de implementos agrícolas en eje libre.\n• Mayor estabilidad a las ruedas libres de los implementos agrícolas.\n• Desempeño optimizado a costo justo.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(534,'4003','DYNA TORQUE III R1 14PR','RADIAL',3,25,47,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(535,'3621','DYNA TORQUE III R1 PR12  ','RADIAL',3,21,48,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(536,'236','DYNA TORQUE II R1 12PR','RADIAL',3,19,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(537,'4569','DYNA TORQUE II R1 14PR','RADIAL',3,19,49,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(538,'18019','HI-FLOTATION 12PR ','RADIAL',4,6,39,13,'• Ideal para plantadoras, sementeras y pulverizadores.\n• Fluctuación extra debido a su largura mayor. \n• Proporciona buena capacidad de carga con un contorno optimizado.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(539,'18463','HD2000 10PR TL SKD ','RADIAL',4,26,30,14,'• Aplicado a minicargaderas y retro excavadoras.\n• Lateral más resistente con diseño agresivo del hombro. \n• Durabilidad maximizada por la mayor área de barras.\n• Mayor resistencia a la penetración debido a la línea del centro reforzada\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(540,'224','DYNA TORQUE II R1 6PR','RADIAL',3,20,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(541,'4623','SUPER GRIP IMPLEMENT I3 10PR ','RADIAL',3,7,50,8,'• Para aplicaciones en retro excavadoras y cosechadoras.\n• Tracción relativa en suelos sueltos y aplicaciones industriales.\n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(542,'18119','ULTRA SPRAYER R1 150 A8 ','RADIAL',3,27,51,20,'• Proyectado específicamente para aplicaciones de pulverización.\n• Durabilidad debido al aumento significativo de la superficie de las barras de tracción.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(543,'230','DYNA TORQUE II R1 8PR ','RADIAL',3,23,52,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(544,'17616','APR R1 162 A8 ','RADIAL',3,27,53,18,'• Línea con armadura de aramida\n• Uso en tractores y cosechadoras\n• Diseño con centro abierto\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(545,'18021','HI-TRACTION LUG II 12PR ','RADIAL',4,17,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(546,'3800','POWER TORQUE R1 8PR ','RADIAL',3,20,52,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras y implementos.\n• Exclusivo diseño Goodyear con barras alternadas maximizando la fuerza transmitida al suelo.\n• Protección extra en la región del aro que protege contra suciedad, piedras y restos de cultivo.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(547,'3236','DYNA TORQUE III R1 12PR','RADIAL',3,28,54,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(548,'9224','DYNA TORQUE II R1 6PR ','RADIAL',3,18,43,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(549,'18065','HI-TRACTION LUG II TT 8PR ','RADIAL',4,18,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado.\n•  Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(550,'18022','HI-TRACTION LUG II 08PR ','RADIAL',4,18,37,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(551,'18807','ALL WEATHER 12PR TL R3','RADIAL',3,21,44,14,'• Ideal para implementos agrícolas, camiones y graneleros.\n• Base ancha para flotación reduciendo la compresión del suelo.\n• Diseño de la banda en \"diamante\" resistente al resbale y proporciona buena tracción.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(552,'3957','NHS IT323 I3 10PR ','RADIAL',3,29,55,14,'• Aplicado en mini cargaderas y retro excavadoras.\n• Lateral más resistente con diseño agresivo del hombro.\n• Durabilidad maximizada por la mayor área de barras.\n• Mayor resistencia a la penetración debido a la línea del centro reforzada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(553,'18826','ULTRA SPRAYER 160D TL R1','RADIAL',3,30,56,20,'• Proyectado específicamente para aplicaciones de pulverización.\n• Durabilidad debido al aumento significativo de la superficie de las barras de tracción.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(554,'18262','SUPER ARROZEIRO II 12 PR TT R2 ','RADIAL',3,24,45,14,'• Neumático proyectado con barras de tracción con mayor profundidad excelente en suelos anegados y inconsistentes.\n• El diseño distintivo de las barras evita la acumulación de resíduos y proporciona mayor poder de tracción.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(555,'3959','ALL WEATHER R3 12PR ','RADIAL',3,23,44,14,'• Ideal para implementos agrícolas, camiones y graneleros.\n• Base ancha para flotación reduciendo la compresión del suelo.\n• Diseño de la banda en \"diamante\" resistente al resbale y proporciona buena tracción.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(556,'18087','HI-TRACTION LUG III 12PR ','RADIAL',4,28,54,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos.\n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(557,'18033','HI-POWER LUG 12PR','RADIAL',4,21,45,14,'• Indicado para retroexcavadoras y cosechadoras. \n• Durabilidad maximizada por la mayor área de barras. \n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(558,'18016','TRU TRAC TT 08PR ','RADIAL',4,9,20,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres. \n• Mejor control direccional y menores raspajes, principalmente en terrenos con desniveles acentuados. \n• Mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(559,'5328','LABORER F3 12PR ','RADIAL',3,9,46,14,'• Usado en el tren delantero de la retro excavadora y servicios industriales.\n• Ofrece resistencia y manejo.\n• Carcasa reforzada resistente a daños con estabilidad lateral y precisión direccional.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(560,'3453','DYNA TORQUE III 8PR R1','RADIAL',3,19,57,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(561,'18027','HI-TRACTION LUG II TT 14PR','RADIAL',4,19,49,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(562,'4554','DYNA RIB F2 8PR','RADIAL',3,9,32,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(563,'3607','DYNA TORQUE III R1 12PR','RADIAL',3,21,44,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de la barra corta/barra larga con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(564,'18462','HD2000 10PR TL SKD','RADIAL',4,29,55,14,'• Aplicado a minicargadoras  y retro excavadoras. \n• Lateral más resistente con diseño agresivo del hombro. \n• Durabilidad maximizada por la mayor área de barras. \n• Mayor  resistencia a la penetración debido a la línea del centro reforzada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(565,'5413','DYNA RIB F2 10PR','RADIAL',3,9,29,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(566,'18062','CONTRACTOR II TL 10PR','RADIAL',4,6,41,13,'• Indicado para retroexcavadoras y cosechadoras. \n• Durabilidad maximizada por la mayor área de barras. \n• Estabilidad proporcionada por el bajo perfil del lateral.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(567,'9642','IND SURE GRIP R4 10PR','RADIAL',3,18,52,14,'• Indicado para el tren trasero de las retro excavadoras.\n• Buena tracción en aplicaciones industriales (pavimentos) y movimiento de tierra.\n• Barras reforzadas para el uso industrial.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(568,'233','DYNA TORQUE II R1 10PR ','RADIAL',3,24,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(569,'18025','HI-TRACTION LUGII TT 12PR ','RADIAL',4,24,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(570,'18093','HI-TRACTIONLUG II 12PR ','RADIAL',4,19,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(571,'18035','INDUSTRIAL TRACTOR II 12PR','RADIAL',4,31,58,14,'• Hecho especialmente para la trasera de retroexcavadoras. \n• Proporciona un andar suave, buena tracción y longevidad de la banda de rodaje. \n• Formato optimizado de la carcasa que maximiza la durabilidad.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(572,'18797','DYNA TORQUE II 14 PR TL R1','RADIAL',3,32,49,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos.\n• Diseño de barra corta/barra ancha con la mejor auto limpieza y tracción del mercado.\n• Excelente fuerza de tracción en tractores de alta potencia.\n• Estabilidad y maniobras mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(573,'18028','HI-TRACTION LUG III 12PR','RADIAL',4,23,44,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(574,'4201','SUPERFLOT II I3 16PR ','RADIAL',3,33,59,6,'• Recomendado para ejes libres de transbordos e implementos agrícolas.\n• Minimiza la compactación del suelo debido a la mayor área de contacto de su rodaje.\n• Talón reforzado para soportar altas cargas a velocidades de hasta 50 Km/h.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(575,'18018','TRU TRAC TT 10PR','RADIAL',4,9,35,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres. \n• Mejor control direccional y menores raspajes, principalmente en terrenos con desniveles acentuados. mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(576,'4197','LABORER F3 10PR ','RADIAL',3,10,46,14,'• Usado en el tren delantero de la retro excavadora y servicios industriales.\n• Ofrece resistencia y manejo.\n• Carcasa reforzada resistente a daños con estabilidad lateral y precisión direccional.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(577,'18017','TRU TRAC TT 08PR ','RADIAL',4,6,20,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres. \n• Mejor control direccional y menores raspajes, principalmente en terrenos con desniveles acentuados. \n• Mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(578,'18461','MXL SS 10PR TL SKD ','RADIAL',4,26,30,14,'• Resistencia adicional a los daños debido al refuerzo en el costado y protección de la llanta. \n• Compuesto especial y mayor profundidad de la banda de rodamiento que permite un mejor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(579,'18070','HI-TRACTION LUG II TT 12PR ','RADIAL',4,18,37,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de traccion en tractores de alta potencia. \n• Estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(580,'213','SUPER ARROZEIRO R2 6PR ','RADIAL',3,18,37,14,'• Aplicaciones en tractores, cosechadoras y implementos de áreas inundadas (cultivo de arroz).\n• Mayor agarre y alto torque en suelos inconsistentes.\n• Exclusivo diseño Goodyear con \"garra siete\".\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(581,'18024','HI-TRACTION LUG II 12PR','RADIAL',4,23,45,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras, e implementos. \n• Diseño de barras corta / barra larga con la mejor auto-limpieza y tracción del mercado. \n• Excelente fuerza de tracción en tractores de alta potencia. estabilidad y dirigibilidad mejoradas con minimización de la vibración.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(582,'17089','LOGGER LUG II HD LS2 20PR','RADIAL',4,25,47,14,'• Para aplicación en servicios de silvicultura/forestales.\n• Protección extra debido a las cintas de acero que envuelven la carcasa.\n• Desgaste regular proporcionado por el compuesto de caucho ideal para servicios madereros.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(583,'18732','ULTRA SPRAYER 156D TL R1 ','RADIAL',3,34,51,20,'• Proyectado específicamente para aplicaciones de pulverización.\n• Durabilidad debido al aumento significativo de la superficie de las barras de tracción.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(584,'18501','DT924 55A8 TL R1W ','RADIAL',3,24,60,8,'• Línea de armadura de aramida.\n• Alto extra de las barras  (25% que los neumáticos R1).\n• Cintas amortiguadoras localizadas debajo del rodaje.\n• Carcasa radial.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(585,'15210','RIB TRACTOR F2 6PR','RADIAL',3,9,32,14,'• Aplicación de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Mejor control direccional y menores derrapes, principalmente en terrenos con desniveles acentuados.\n• Mayor durabilidad y menor costo por hora trabajada.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(586,'4555','DYNA RYB F2 ','RADIAL',3,9,33,14,'• Aplicaciones de servicios agrícolas generales en tractores de baja potencia y ejes libres.\n• Cuatro rayos ofrecen excelente flotación y movilidad, incluso en condiciones de lodo.\n• Desgaste uniforme y regular del compuesto y protección extra contra daños.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(587,'18464','SKID STEER 12PR','RADIAL',4,26,30,14,'• Exclusivo diseño direccional asegura la maxima tracción en suelos inconsistentes.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(588,'18034','SUPER MUD TT 12PR','RADIAL',4,19,36,14,'• Aplicaciones agrícolas generales: tractores, cosechadoras e implementos. \n• Largura de banda y aro optimizados para servicios de pulverización y trabajo entre-líneas.\n\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(589,'3815','PD 29 ON ROAD / TRASERO (49L)','RADIAL',5,11,61,21,'\nNeumáticos con diseño de banda de rodamiento tradicional,\nse caracterizada por su alta adherencia y rendimiento kilométrico, tiene una estructura bien equilibrada y robusta.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(590,'3838','BS 32 ON ROAD / TRASERO 57P)','RADIAL',5,6,62,20,'Neumáticos para uso urbano y en carreteras pavimentadas, tiene un rendimiento kilométrico adecuado y optima relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(591,'3818','PD 29 ON ROAD / DELANTERO / TRASERO (43L)','RADIAL',5,8,63,14,'\nNeumáticos con diseño de banda de rodamiento tradicional,\nse caracterizada por su alta adherencia y rendimiento kilométrico, tiene una estructura bien equilibrada y robusta.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(592,'3823','BS 32 ON ROAD / DELANTERO (48P)','RADIAL',5,6,64,14,'Neumáticos para uso urbano y en carreteras pavimentadas, tiene un rendimiento kilométrico adecuado y optima relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(593,'3985','R 34  ON/OFF ROAD / TRASERO (60P)','RADIAL',5,8,65,20,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(594,'4377','R 34  ON/OFF ROAD / TRASERO (57P)','RADIAL',5,6,62,20,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(595,'3987','R 34 ON/OFF ROAD / DELANTERO (52T) ','RADIAL',5,5,62,20,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(596,'4376','SH 31 OFF ROAD / DELANTERO (52M)','RADIAL',5,5,62,20,'Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(597,'4148','SH 31 OFF ROAD / TRASERO (55M)','RADIAL',5,8,66,20,'Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(598,'3981','SH 31 OFF ROAD / TRASERO (51M)','RADIAL',5,6,62,20,'Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(599,'3986','R 34 ON/OFF ROAD / TRASERO (62S)','RADIAL',5,6,67,13,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(600,'5169','R 34 ON/OFF ROAD / TRASERO (49L)','RADIAL',5,11,61,21,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(601,'3839','RW 33 OFF ROAD / TRASERO (59M)','RADIAL',5,6,66,21,'\nNeumáticos de variada utilización, que destacan por la adherencia superior.\nTanto en suelos arenosos como en suelos arcillosos .\nPresentan un rendimiento superior en terrenos blandos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(602,'3836','PD 29 ON ROAD / DELANTERO / TRASERO (47P)','RADIAL',5,8,64,14,'\nNeumáticos con diseño de banda de rodamiento tradicional,\nse caracterizada por su alta adherencia y rendimiento kilométrico, tiene una estructura bien equilibrada y robusta.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(603,'3831','R 34 ON/OFF ROAD / DELANTERO (54S) ','RADIAL',5,13,62,20,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(604,'11750','R 34 ON/OFF ROAD / DELANTERO (42P)','RADIAL',5,8,64,14,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(605,'3834','R 34 ON/OFF ROAD / TRASERO (58T)','RADIAL',5,6,65,13,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(606,'4153','SH 31 OFF ROAD / DELANTERO (42M)','RADIAL',5,6,64,14,'Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(607,'4521','HB 37 ON ROAD / TRASERO (62T)','RADIAL',5,8,68,8,'Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(608,'4721','R 34 ON/OFF ROAD / DELANTERO (42P)','RADIAL',5,6,64,14,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(609,'4520','HB 37 ON ROAD / DELANTERO (52T)','RADIAL',5,8,66,13,'Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(610,'3833','RW 33 OFF ROAD / DELANTERO (51M)','RADIAL',5,13,61,21,'\nNeumáticos de variada utilización, que destacan por la adherencia superior.\nTanto en suelos arenosos como en suelos arcillosos .\nPresentan un rendimiento superior en terrenos blandos\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(611,'3830','SH 31 OFF ROAD / DELANTERO (51M)','RADIAL',5,13,69,14,'Neumáticos con destacado desempeño y durabilidad. Optima relación costo x beneficio, además de un diseño agresivo y eficiente.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(612,'4436','BS 32 ON ROAD / TRASERO (49L)','RADIAL',5,11,61,21,'Neumáticos para uso urbano y en carreteras pavimentadas, tiene un rendimiento kilométrico adecuado y optima relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(613,'8566','RM X35 OFF ROAD / DELANTERO (54M)','RADIAL',5,13,62,20,'Neumáticos con un diseño en la banda de rodamiento que proporciona elevada tracción y superior desempeño, pudiendo ser utilizado en los mas variados terrenos fuera de carretera, destacándose en los terrenos más rígidos, ideal para la práctica de deportes off road.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(614,'5660','RMX 35 OFF ROAD / TRASERO (59M)','RADIAL',5,6,66,21,'Neumáticos con un diseño en la banda de rodamiento que proporciona elevada tracción y superior desempeño, pudiendo ser utilizado en los mas variados terrenos fuera de carretera, destacándose en los terrenos más rígidos, ideal para la práctica de deportes off road.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(615,'18271','HB 37 ON ROAD / DELANTERO (54T)','RADIAL',5,8,65,8,'Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(616,'5168','R 34 ON/OFF ROAD / DELANTERO/ TRASERO (43L)','RADIAL',5,8,63,14,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(617,'18272','HB 37 ON ROAD / TRASERO (66T)','RADIAL',5,8,70,8,'Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(618,'16051','RMX 35 OFF ROAD / DELANTERO (40M)','RADIAL',5,8,71,21,'Neumáticos con un diseño en la banda de rodamiento que proporciona elevada tracción y superior desempeño, pudiendo ser utilizado en los mas variados terrenos fuera de carretera, destacándose en los terrenos más rígidos, ideal para la práctica de deportes off road.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(619,'17753','HB 37 ON ROAD / TRASERO (57P)','RADIAL',5,6,62,20,'Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(620,'17782','RT 36 ON/OFF ROAD / TRASERO (60P)','RADIAL',5,8,65,20,'Neumáticos de uso mixto, 60% on road y 40% off road. Es una excelente opción, que satisface las necesidades urbanas y rurales. Excelente tracción y desempeño.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(621,'4519','RT 36 ON/OFF ROAD / TRASERO (58P)','RADIAL',5,6,65,13,'Neumáticos de uso mixto, 60% on road y 40% off road. Es una excelente opción, que satisface las necesidades urbanas y rurales. Excelente tracción y desempeño.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(622,'3835','R 34 ON/OFF ROAD /  TRASERO (65P)','RADIAL',5,8,68,13,'Neumáticos para uso predomínate en vías pavimentadas, pudiendo ser utilizados con mucha eficiencia también en carreteras de tierra. Superior rendimiento kilométrico y relación precio x beneficio.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(623,'17754','HB 37 ON ROAD / DELANTERO(47P) ','RADIAL',5,6,61,21,'Neumático deportivo de desempeño superior, presentan un elevado performance, asociado a una óptima adherencia y rendimiento kilométrico.\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(624,'18036','11.00-20 ROAD ROLLER C1 18PR TT 1600050','RADIAL',3,7,29,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(625,'17384','14.00-24 ROAD GRADER G2 16PR TL TITAN 1601024','RADIAL',4,18,72,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(626,'18107','17.5-25 ND LCM L3 16PR TL 1606072','RADIAL',3,35,73,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(627,'5326','17.5-25 EARTH TRACT L2 16PR TL 1606021','RADIAL',3,35,73,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(628,'18110','20.5-25 ND LCM L3 TL 24PR TITAN 1606080','RADIAL',4,35,74,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(629,'18100','13.00-24 ROAD GRADER G2 16PR TT 1601005','RADIAL',3,18,75,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(630,'13132','20.5-25 EARTH TRACT L2 16PR TL TITAN 1602003','RADIAL',4,35,74,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(631,'18777','23.5-25 ND LCM L3 16PR TL LOADER TI/GY 1606074','RADIAL',3,35,76,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(632,'125','13.00-24 ROAD GRADER G2 12PR TT 1601004','RADIAL',3,18,75,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(633,'17702','18.00-25 40PR L5 SUPER 1606410U$ USA','RADIAL',3,35,77,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(634,'18108','20.5-25 ND LCM L3 TL 16PR TITAN 1606075','RADIAL',4,35,74,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(635,'17696','38X20.00-16 INHS STG 8PR 1152610U$ - USA','RADIAL',3,9,78,22,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(636,'4593','13.00R24 TC12 SGG-2A G-2 TT','RADIAL',3,18,75,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(637,'18037','13.00-24 ROAD GRADER G2 12PR TL 1601003','RADIAL',3,18,75,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(638,'18106','17.5R25 MXL L3 E3 1* TL 176A2 TITAN 1650010','RADIAL',4,35,73,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(639,'18111','20.5R25 MXL L3 1 STAR TL 186A2 TITAN 1656085','RADIAL',4,35,74,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(640,'18112','23.5R25 MXL L3 1 STAR TL 195A2 TITAN 1656095','RADIAL',4,35,76,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(641,'18798','16.00-25 HRL- 4B E4 4S 32PR TL BR 180420','RADIAL',3,35,79,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(642,'130','13.00-24 SGG-2A G-2 12PR TT 180064','RADIAL',3,18,75,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(643,'17085','16.00-25 HRL 3A E3 4S 28PR INDO 180014','RADIAL',3,35,79,14,'Por definir\r',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(644,'4103','23.5-25 3C 4S16 L3/E3/G3','RADIAL',3,35,76,14,'Por definir',0.00,0.00,0.00,'ACTIVO',0,NULL,NULL,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38');

/*!40000 ALTER TABLE `tires` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table vehicle_type_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vehicle_type_photos`;

CREATE TABLE `vehicle_type_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_type_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicle_type_photos_vehicle_type_id_foreign` (`vehicle_type_id`),
  CONSTRAINT `vehicle_type_photos_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table vehicle_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vehicle_types`;

CREATE TABLE `vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `vehicle_types` WRITE;
/*!40000 ALTER TABLE `vehicle_types` DISABLE KEYS */;

INSERT INTO `vehicle_types` (`id`, `vehicle_type`, `description`, `photo`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'Autos',NULL,NULL,NULL,'2019-05-16 21:24:57','2019-11-23 23:25:46'),
	(2,'Camionetas',NULL,NULL,NULL,'2019-05-19 04:03:33',NULL),
	(3,'Camiones',NULL,NULL,NULL,'2019-05-19 04:03:39',NULL),
	(4,'Motos',NULL,NULL,NULL,'2019-05-19 04:03:43','2019-11-23 23:27:17'),
	(6,'SUV',NULL,NULL,NULL,'2019-11-23 23:29:13',NULL);

/*!40000 ALTER TABLE `vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table widths
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widths`;

CREATE TABLE `widths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `width_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width_value` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `widths` WRITE;
/*!40000 ALTER TABLE `widths` DISABLE KEYS */;

INSERT INTO `widths` (`id`, `width_name`, `width_value`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'25.5',85.00,'2019-05-19 04:04:35','2019-05-16 21:08:43',NULL),
	(2,'Ancho Estandar',165.00,NULL,'2019-11-24 19:00:48',NULL),
	(3,'265',265.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(4,'255',255.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(5,'245',245.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(6,'235',235.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(7,'225',225.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(8,'215',215.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(9,'205',205.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(10,'195',195.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(11,'185',185.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(12,'175',175.00,NULL,'2019-11-25 22:51:51','2019-11-25 22:51:51'),
	(13,'165',165.00,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(14,'35',35.00,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(15,'315',315.00,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(16,'37',37.00,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(17,'275',275.00,NULL,'2019-11-25 22:51:52','2019-11-25 22:51:52'),
	(18,'750',750.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(19,'305',305.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(20,'7.50',7.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(21,'42',42.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(22,'295',295.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(23,'285',285.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(24,'31',31.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(25,'30',30.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(26,'33',33.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(27,'32',32.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(28,'10.00',10.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(29,'11.00',11.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(30,'12',12.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(31,'385',385.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(32,'6.00',6.00,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(33,'6.50',6.50,NULL,'2019-11-25 22:58:37','2019-11-25 22:58:37'),
	(34,'7.00',7.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(35,'9.00',9.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(36,'12.4',12.40,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(37,'14.9',14.90,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(38,'13.6',13.60,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(39,'10.5',10.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(40,'9.5',9.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(41,'12.5',12.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(42,'400',400.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(43,'11.2',11.20,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(44,'23.1',23.10,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(45,'18.4',18.40,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(46,'11L',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(47,'30.5',30.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(48,'28L',0.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(49,'20.8',20.80,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(50,'16.0',16.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(51,'320',320.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(52,'16.9',16.90,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(53,'520',520.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(54,'24.5',24.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(55,'10',10.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(56,'380',380.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(57,'15.5',15.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(58,'19.5',19.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(59,'600',600.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(60,'480',480.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(61,'80',80.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(62,'90',90.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(63,'2.50',2.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(64,'2.75',2.75,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(65,'110',110.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(66,'100',100.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(67,'120',120.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(68,'130',130.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(69,'3.00',3.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(70,'140',140.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(71,'70',70.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(72,'14.00',14.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(73,'17.5',17.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(74,'20.5',20.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(75,'13.00',13.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(76,'23.5',23.50,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(77,'18.00',18.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(78,'38',38.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38'),
	(79,'16.00',16.00,NULL,'2019-11-25 22:58:38','2019-11-25 22:58:38');

/*!40000 ALTER TABLE `widths` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
