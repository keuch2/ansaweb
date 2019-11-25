-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 25, 2019 at 10:39 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ansa_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `photo`, `local_link`, `external_link`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'GoodYear', 'uploads/1/2019-11/fc6fff1f1a0b9aa9bf62e9e67d0215da.jpg', NULL, NULL, NULL, '2019-11-24 05:21:09', '2019-11-24 05:50:09'),
(4, 'Titan', 'uploads/1/2019-11/dd15254f6a170972c6262964d72bd7bc.jpg', NULL, NULL, NULL, '2019-11-24 05:21:44', NULL),
(5, 'Rinaldi', 'uploads/1/2019-11/f95d4101d814a76b3a55fea5e537d6df.jpg', NULL, NULL, NULL, '2019-11-24 05:21:58', NULL),
(6, 'Hyundai XTeer', 'uploads/1/2019-11/ef411633a6ac1ce97e19e3a40a9a2791.jpg', NULL, NULL, NULL, '2019-11-24 05:22:19', NULL),
(7, 'ActiOil', 'uploads/1/2019-11/de5e86db8966317489aa24707e6d3975.jpg', NULL, NULL, NULL, '2019-11-24 05:22:35', NULL),
(8, 'Tortuga', 'uploads/1/2019-11/7bf7a010b97dda8eef8d1ae6c0fa10e5.jpg', NULL, NULL, NULL, '2019-11-24 05:22:48', NULL),
(9, 'Xtire', 'uploads/1/2019-11/f218d4f7805873244a289224bf90c9c4.jpg', NULL, NULL, NULL, '2019-11-24 05:22:59', NULL),
(10, 'Maxion', 'uploads/1/2019-11/1cf4aadd09f9263aabdf872755eff100.jpg', NULL, NULL, NULL, '2019-11-24 05:23:12', NULL),
(11, 'KLL', 'uploads/1/2019-11/baf66d9bbfa6e810f0b61db555c5376f.jpg', NULL, NULL, NULL, '2019-11-24 05:23:27', NULL),
(12, 'Alcoa', 'uploads/1/2019-11/9d01690cbdfc26d77ec4a9f0f622e8bf.jpg', NULL, NULL, NULL, '2019-11-24 05:23:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-05-15 05:10:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-15 05:11:09', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-05-15 05:11:13', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-05-15 05:27:08', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2019-05-15 05:35:35', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-15 05:35:40', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2019-05-15 05:37:52', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-15 05:42:13', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/users/edit-save/1', 'Actualizar información Super Admin en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@ansa.com</td></tr><tr><td>password</td><td>$2y$10$FogogAxVOnsZBrhptSmvG.FVLQ3D.4W6arNgAgXPMVvwzEEQDUfpe</td><td>$2y$10$3kg2VZa9alGNDZbOhq/hJeA9WXpKXgsP7Hz3r7yNUc8yR.geReQKi</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-05-15 05:42:24', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/logout', 'admin@ansa.com se desconectó', '', 1, '2019-05-15 05:42:29', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-15 05:42:34', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/logout', 'admin@ansa.com se desconectó', '', 1, '2019-05-15 05:43:46', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-15 06:05:24', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-16 00:13:02', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/settings/add-save', 'Añadir nueva información cotizacion_dolar_usd_guaranigs en Settings', '', 1, '2019-05-16 02:32:44', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/settings/add-save', 'Añadir nueva información  en Settings', '', 1, '2019-05-16 02:32:50', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/settings/edit-save/18', 'Actualizar información  en Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td></td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>content_input_type</td><td></td><td>text</td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td>Valor de 1 Dolar (USD) en  (Gs)</td><td>Valor de 1 Dolar (USD) en  Reales (R$)</td></tr><tr><td>group_setting</td><td>General Setting</td><td>Cotizaciones</td></tr><tr><td>label</td><td></td><td>Cotizacion Dolar (USD) - Reales(R$)</td></tr></tbody></table>', 1, '2019-05-16 02:34:00', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/edit-save/3', 'Actualizar información Anchos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Ancho</td><td>Anchos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-05-16 05:15:52', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/brands/add-save', 'Añadir nueva información marca de prueba en Marcas', '', 1, '2019-05-16 06:08:26', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/product_categories/add-save', 'Añadir nueva información AAA en Categoria de Productos', '', 1, '2019-05-16 06:08:35', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/products/add-save', 'Añadir nueva información producto prueba en Productos', '', 1, '2019-05-16 06:11:19', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-17 02:07:44', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/radiuses/add-save', 'Añadir nueva información R13 en Radios', '', 1, '2019-05-17 02:08:23', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/widths/add-save', 'Añadir nueva información 25.5 en Anchos', '', 1, '2019-05-17 02:08:43', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/profiles/add-save', 'Añadir nueva información 12 en Perfiles', '', 1, '2019-05-17 02:08:50', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/add-save', 'Añadir nueva información Productos en Menu Management', '', 1, '2019-05-17 02:19:16', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/edit-save/9', 'Actualizar información Productos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>products</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-17 02:20:36', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/edit-save/7', 'Actualizar información Listar Productos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Productos</td><td>Listar Productos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr></tbody></table>', 1, '2019-05-17 02:21:36', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/add-save', 'Añadir nueva información  en Tipos de vehiculos', '', 1, '2019-05-17 02:24:57', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/add-save', 'Añadir nueva información Cotizaciones en Menu Management', '', 1, '2019-05-17 02:28:00', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/settings/edit-save/18', 'Actualizar información  en Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td></td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>label</td><td>Cotizacion Dolar (USD) - Reales(R$)</td><td>Cotizacion Dolar (USD) - Reales(R)</td></tr></tbody></table>', 1, '2019-05-17 02:29:33', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_type_photos/add-save', 'Añadir nueva información prueba en Imagenes de tipos de vehiculos', '', 1, '2019-05-17 02:33:35', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/edit-save/1', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td><p>Autos y autitos</p></td><td>Autos y autitos</td></tr></tbody></table>', 1, '2019-05-17 02:41:30', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/add-save', 'Añadir nueva información Vehiculos en Menu Management', '', 1, '2019-05-17 02:51:37', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-19 00:54:49', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/logout', 'admin@ansa.com se desconectó', '', 1, '2019-05-19 01:52:44', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-19 01:52:51', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/add-save', 'Añadir nueva información Neumaticos en Menu Management', '', 1, '2019-05-19 01:54:23', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/edit-save/14', 'Actualizar información Listar Neumaticos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Neumaticos</td><td>Listar Neumaticos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2019-05-19 01:54:38', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/menu_management/edit-save/16', 'Actualizar información Imagenes de neumaticos en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Fotografias de neumaticos</td><td>Imagenes de neumaticos</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-05-19 02:00:19', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tires/add-save', 'Añadir nueva información GY R13 en Neumaticos', '', 1, '2019-05-19 02:08:13', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tires/edit-save/1', 'Actualizar información GY R13 en Neumaticos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>discount_rate</td><td>26</td><td>25</td></tr><tr><td>final_price</td><td>185000</td><td>187500</td></tr><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-19 02:10:16', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tire_photos/add-save', 'Añadir nueva información imagen de prueba en Imagenes de neumaticos', '', 1, '2019-05-19 02:12:32', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-19 08:43:28', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tire_photos/delete/1', 'Eliminar información imagen de prueba en Imagenes de neumaticos', '', 1, '2019-05-19 08:44:27', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tire_photos/add-save', 'Añadir nueva información  en Imagenes de neumaticos', '', 1, '2019-05-19 08:44:34', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tires/delete-image', 'Eliminar la imagen de GY R13 en Neumaticos', '', 1, '2019-05-19 08:46:45', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tires/edit-save/1', 'Actualizar información GY R13 en Neumaticos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-05/911819af7f6935af425c4f3c472c3ccb.jpg</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-19 08:46:55', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/add-save', 'Añadir nueva información  en Tipos de vehiculos', '', 1, '2019-05-19 09:03:33', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/add-save', 'Añadir nueva información  en Tipos de vehiculos', '', 1, '2019-05-19 09:03:39', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/add-save', 'Añadir nueva información  en Tipos de vehiculos', '', 1, '2019-05-19 09:03:43', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tires/edit-save/1', 'Actualizar información GY R13 en Neumaticos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-05-19 09:03:54', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/brands/delete/1', 'Eliminar información marca de prueba en Marcas', '', 1, '2019-05-19 09:04:19', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tire_photos/delete/2', 'Eliminar información  en Imagenes de neumaticos', '', 1, '2019-05-19 09:04:26', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/tires/delete/1', 'Eliminar información GY R13 en Neumaticos', '', 1, '2019-05-19 09:04:29', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/radiuses/delete/1', 'Eliminar información R13 en Radios', '', 1, '2019-05-19 09:04:32', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/widths/delete/1', 'Eliminar información 25.5 en Anchos', '', 1, '2019-05-19 09:04:35', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/profiles/delete/1', 'Eliminar información 12 en Perfiles', '', 1, '2019-05-19 09:04:38', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/products/delete/1', 'Eliminar información producto prueba en Productos', '', 1, '2019-05-19 09:04:45', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/product_categories/delete/1', 'Eliminar información AAA en Categoria de Productos', '', 1, '2019-05-19 09:04:48', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/delete/1', 'Eliminar información 1 en Tipos de vehiculos', '', 1, '2019-05-19 09:04:53', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/delete/2', 'Eliminar información 2 en Tipos de vehiculos', '', 1, '2019-05-19 09:04:55', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/delete/3', 'Eliminar información 3 en Tipos de vehiculos', '', 1, '2019-05-19 09:04:57', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/delete/4', 'Eliminar información 4 en Tipos de vehiculos', '', 1, '2019-05-19 09:04:58', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_type_photos/delete/1', 'Eliminar información prueba en Imagenes de tipos de vehiculos', '', 1, '2019-05-19 09:05:02', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/add-save', 'Añadir nueva información  en Tipos de vehiculos', '', 1, '2019-05-19 09:05:18', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_type_photos/add-save', 'Añadir nueva información  en Imagenes de tipos de vehiculos', '', 1, '2019-05-19 09:05:35', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_type_photos/delete/2', 'Eliminar información  en Imagenes de tipos de vehiculos', '', 1, '2019-05-19 09:05:41', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8002/admin/vehicle_types/delete/5', 'Eliminar información 5 en Tipos de vehiculos', '', 1, '2019-05-19 09:05:49', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8003/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-05-24 07:20:08', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8003/admin/logout', 'admin@ansa.com se desconectó', '', 1, '2019-05-24 07:21:07', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-06-25 09:51:28', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8001/admin/menu_management/edit-save/11', 'Actualizar información Cotizaciones en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>http://localhost:8002/admin/settings/show?group=Cotizaciones&m=0</td><td>http://localhost:8001/admin/settings/show?group=Cotizaciones&m=0</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-06-25 10:41:44', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-09-11 03:41:48', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-11-20 17:08:53', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-11-21 19:38:08', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información GoodYear en Marcas', '', 1, '2019-11-21 19:44:10', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/delete/2', 'Eliminar información GoodYear en Marcas', '', 1, '2019-11-21 20:01:07', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-11-21 22:29:12', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-11-22 20:37:06', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/logout', 'admin@ansa.com se desconectó', '', 1, '2019-11-23 00:04:33', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-11-24 04:11:43', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/1', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Autos y autitos</td><td></td></tr></tbody></table>', 1, '2019-11-24 04:25:37', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/1', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Autos y autitos</td><td></td></tr></tbody></table>', 1, '2019-11-24 04:25:46', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/4', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-11-24 04:26:45', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/4', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>motossss</td><td></td></tr></tbody></table>', 1, '2019-11-24 04:26:50', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/4', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>motossss</td><td></td></tr></tbody></table>', 1, '2019-11-24 04:26:59', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/4', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>motossss</td><td>mos</td></tr></tbody></table>', 1, '2019-11-24 04:27:06', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/4', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>mos</td><td>m</td></tr></tbody></table>', 1, '2019-11-24 04:27:11', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/edit-save/4', 'Actualizar información  en Tipos de vehiculos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>m</td><td></td></tr></tbody></table>', 1, '2019-11-24 04:27:17', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/vehicle_types/add-save', 'Añadir nueva información  en Tipos de vehiculos', '', 1, '2019-11-24 04:29:13', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información GoodYear en Marcas', '', 1, '2019-11-24 05:21:09', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Titan en Marcas', '', 1, '2019-11-24 05:21:44', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Rinaldi en Marcas', '', 1, '2019-11-24 05:21:58', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Hyundai XTeer en Marcas', '', 1, '2019-11-24 05:22:19', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información ActiOil en Marcas', '', 1, '2019-11-24 05:22:35', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Tortuga en Marcas', '', 1, '2019-11-24 05:22:48', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Xtire en Marcas', '', 1, '2019-11-24 05:22:59', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Maxion en Marcas', '', 1, '2019-11-24 05:23:12', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información KLL en Marcas', '', 1, '2019-11-24 05:23:27', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/add-save', 'Añadir nueva información Alcoa en Marcas', '', 1, '2019-11-24 05:23:40', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/brands/edit-save/3', 'Actualizar información GoodYear sebastiandjmaciel en Marcas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>brand_name</td><td>GoodYear</td><td>GoodYear sebastiandjmaciel</td></tr><tr><td>local_link</td><td></td><td></td></tr><tr><td>external_link</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-11-24 05:50:09', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/login', 'Ingreso de admin@ansa.com desde la Dirección IP 127.0.0.1', '', 1, '2019-11-24 23:16:35', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/radiuses/add-save', 'Añadir nueva información R13 en Radios', '', 1, '2019-11-24 23:57:15', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/radiuses/add-save', 'Añadir nueva información R14 en Radios', '', 1, '2019-11-24 23:57:24', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/radiuses/add-save', 'Añadir nueva información R15 en Radios', '', 1, '2019-11-24 23:57:33', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/radiuses/edit-save/4', 'Actualizar información R15 en Radios', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>radius_value</td><td>15</td><td>15.1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-11-24 23:59:50', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/radiuses/edit-save/4', 'Actualizar información R15 en Radios', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>radius_value</td><td>15.1</td><td>15</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-11-24 23:59:56', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/widths/add-save', 'Añadir nueva información Ancho Estandar en Anchos', '', 1, '2019-11-25 00:00:48', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/profiles/add-save', 'Añadir nueva información Perfil Estandar en Perfiles', '', 1, '2019-11-25 00:01:03', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/tires/add-save', 'Añadir nueva información GoodYear Prueba en Neumaticos', '', 1, '2019-11-25 00:02:50', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/tire_photos/add-save', 'Añadir nueva información Frontal en Imagenes de neumaticos', '', 1, '2019-11-25 00:03:17', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/tire_photos/add-save', 'Añadir nueva información Perfil en Imagenes de neumaticos', '', 1, '2019-11-25 00:03:37', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/tires/add-save', 'Añadir nueva información Goodyear prueba 2 en Neumaticos', '', 1, '2019-11-25 00:13:41', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/tires/edit-save/2', 'Actualizar información GoodYear Prueba en Neumaticos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>discount_rate</td><td>5</td><td>20</td></tr><tr><td>final_price</td><td>95</td><td>80</td></tr><tr><td>visit_counter</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-11-25 00:13:55', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/promotions/add-save', 'Añadir nueva información Alineacion y Balanceo en Promociones', '', 1, '2019-11-25 00:50:00', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/promotions/add-save', 'Añadir nueva información Otra Promocion en Promociones', '', 1, '2019-11-25 01:06:26', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/promotions/delete-image', 'Eliminar la imagen de Otra Promocion en Promociones', '', 1, '2019-11-25 01:23:45', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'http://localhost:8001/admin/promotions/edit-save/2', 'Actualizar información Otra Promocion en Promociones', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-11/bfb6e6396c5e0c3e62e380f7e19e050b.png</td></tr><tr><td>local_link</td><td></td><td></td></tr><tr><td>external_link</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2019-11-25 01:23:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Marcas', 'Route', 'AdminBrandsControllerGetIndex', NULL, 'fa fa-tags', 0, 1, 0, 1, 5, '2019-05-16 04:59:55', NULL),
(2, 'Radios', 'Route', 'AdminRadiusesControllerGetIndex', NULL, 'fa fa-circle-thin', 15, 1, 0, 1, 2, '2019-05-16 05:02:08', NULL),
(3, 'Anchos', 'Route', 'AdminWidthsControllerGetIndex', 'normal', 'fa fa-circle-thin', 15, 1, 0, 1, 3, '2019-05-16 05:14:41', '2019-05-16 05:15:52'),
(4, 'Perfiles', 'Route', 'AdminProfilesControllerGetIndex', NULL, 'fa fa-circle-thin', 15, 1, 0, 1, 4, '2019-05-16 05:17:00', NULL),
(5, 'Banners', 'Route', 'AdminBannersControllerGetIndex', NULL, 'fa fa-image', 0, 1, 0, 1, 6, '2019-05-16 05:20:09', NULL),
(6, 'Categoria de Productos', 'Route', 'AdminProductCategoriesControllerGetIndex', NULL, 'fa fa-cog', 9, 1, 0, 1, 2, '2019-05-16 05:25:39', NULL),
(7, 'Listar Productos', 'Route', 'AdminProductsControllerGetIndex', 'normal', 'fa fa-product-hunt', 9, 1, 0, 1, 1, '2019-05-16 05:27:44', '2019-05-17 02:21:36'),
(8, 'Imagenes de productos', 'Route', 'AdminProductPhotosControllerGetIndex', NULL, 'fa fa-image', 9, 1, 0, 1, 3, '2019-05-16 06:03:33', NULL),
(9, 'Productos', 'Module', 'products', 'normal', 'fa fa-product-hunt', 0, 1, 0, 1, 2, '2019-05-17 02:19:16', '2019-05-17 02:20:36'),
(10, 'Tipos de vehiculos', 'Route', 'AdminVehicleTypesControllerGetIndex', NULL, 'fa fa-bus', 13, 1, 0, 1, 1, '2019-05-17 02:22:39', NULL),
(11, 'Cotizaciones', 'URL', 'http://localhost:8001/admin/settings/show?group=Cotizaciones&m=0', 'normal', 'fa fa-money', 0, 1, 0, 1, 4, '2019-05-17 02:28:00', '2019-06-25 10:41:44'),
(12, 'Imagenes de tipos de vehiculos', 'Route', 'AdminVehicleTypePhotosControllerGetIndex', NULL, 'fa fa-image', 13, 1, 0, 1, 2, '2019-05-17 02:31:45', NULL),
(13, 'Vehiculos', 'Module', 'vehicle_types', 'normal', 'fa fa-automobile', 0, 1, 0, 1, 3, '2019-05-17 02:51:37', NULL),
(14, 'Listar Neumaticos', 'Route', 'AdminTiresControllerGetIndex', 'normal', 'fa fa-gears', 15, 1, 0, 1, 1, '2019-05-19 01:22:44', '2019-05-19 01:54:38'),
(15, 'Neumaticos', 'Module', 'tires', 'normal', 'fa fa-gears', 0, 1, 0, 1, 1, '2019-05-19 01:54:23', NULL),
(16, 'Imagenes de neumaticos', 'Route', 'AdminTirePhotosControllerGetIndex', 'normal', 'fa fa-image', 15, 1, 0, 1, 5, '2019-05-19 01:58:50', '2019-05-19 02:00:19'),
(17, 'Promociones', 'Route', 'AdminPromotionsControllerGetIndex', NULL, 'fa fa-picture-o', 0, 1, 0, 1, 7, '2019-11-25 00:40:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(9, 8, 1),
(11, 9, 1),
(12, 7, 1),
(13, 10, 1),
(15, 12, 1),
(16, 13, 1),
(18, 15, 1),
(19, 14, 1),
(21, 16, 1),
(22, 11, 1),
(23, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-05-15 05:10:15', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-05-15 05:10:15', NULL, NULL),
(12, 'Marcas', 'fa fa-tags', 'brands', 'brands', 'AdminBrandsController', 0, 0, '2019-05-16 04:59:55', NULL, NULL),
(13, 'Radios', 'fa fa-circle-thin', 'radiuses', 'radiuses', 'AdminRadiusesController', 0, 0, '2019-05-16 05:02:08', NULL, NULL),
(14, 'Anchos', 'fa fa-circle-thin', 'widths', 'widths', 'AdminWidthsController', 0, 0, '2019-05-16 05:14:41', NULL, NULL),
(15, 'Perfiles', 'fa fa-circle-thin', 'profiles', 'profiles', 'AdminProfilesController', 0, 0, '2019-05-16 05:17:00', NULL, NULL),
(16, 'Banners', 'fa fa-image', 'banners', 'banners', 'AdminBannersController', 0, 0, '2019-05-16 05:20:09', NULL, NULL),
(17, 'Categoria de Productos', 'fa fa-cog', 'product_categories', 'product_categories', 'AdminProductCategoriesController', 0, 0, '2019-05-16 05:25:39', NULL, NULL),
(18, 'Productos', 'fa fa-product-hunt', 'products', 'products', 'AdminProductsController', 0, 0, '2019-05-16 05:27:44', NULL, NULL),
(19, 'Imagenes de productos', 'fa fa-image', 'product_photos', 'product_photos', 'AdminProductPhotosController', 0, 0, '2019-05-16 06:03:33', NULL, NULL),
(20, 'Tipos de vehiculos', 'fa fa-bus', 'vehicle_types', 'vehicle_types', 'AdminVehicleTypesController', 0, 0, '2019-05-17 02:22:39', NULL, NULL),
(21, 'Imagenes de tipos de vehiculos', 'fa fa-image', 'vehicle_type_photos', 'vehicle_type_photos', 'AdminVehicleTypePhotosController', 0, 0, '2019-05-17 02:31:45', NULL, NULL),
(22, 'Neumaticos', 'fa fa-gears', 'tires', 'tires', 'AdminTiresController', 0, 0, '2019-05-19 01:22:44', NULL, NULL),
(23, 'Imagenes de neumaticos', 'fa fa-image', 'tire_photos', 'tire_photos', 'AdminTirePhotosController', 0, 0, '2019-05-19 01:58:50', NULL, NULL),
(24, 'Promociones', 'fa fa-picture-o', 'promotions', 'promotions', 'AdminPromotionsController', 0, 0, '2019-11-25 00:40:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-05-15 05:10:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2019-05-15 05:10:15', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2019-05-15 05:10:15', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2019-05-15 05:10:15', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2019-05-15 05:10:15', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2019-05-15 05:10:15', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2019-05-15 05:10:15', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2019-05-15 05:10:15', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2019-05-15 05:10:15', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2019-05-15 05:10:15', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2019-05-15 05:10:15', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2019-05-15 05:10:15', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-05-15 05:10:15', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-05-15 05:10:15', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-05-15 05:10:15', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-05-15 05:10:15', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'ANSA', 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-05-15 05:10:15', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-05-15 05:10:15', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-05-15 05:10:15', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'cotizacion_dolar_usd_guaranigs', '6350', 'text', NULL, 'Valor de 1 Dolar (USD) en Guaranies (Gs)', '2019-05-16 02:32:44', NULL, 'Cotizaciones', 'Cotizacion Dolar (USD) - Guarani(Gs)'),
(18, 'cotizacion_dolar_usd_real', '4.05', 'text', NULL, 'Valor de 1 Dolar (USD) en  Reales (R$)', '2019-05-16 02:32:50', '2019-05-17 02:29:33', 'Cotizaciones', 'Cotizacion Dolar (USD) - Reales(R$)');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@ansa.com', '$2y$10$3kg2VZa9alGNDZbOhq/hJeA9WXpKXgsP7Hz3r7yNUc8yR.geReQKi', 1, '2019-05-15 05:10:15', '2019-05-15 05:42:24', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(34, '2019_05_15_204627_create_radiuses_table', 2),
(35, '2019_05_15_211226_create_widths_table', 2),
(36, '2019_05_15_211608_create_profiles_table', 2),
(37, '2019_05_15_211729_create_brands_table', 2),
(38, '2019_05_15_212731_create_product_categories_table', 2),
(39, '2019_05_15_213525_create_products_table', 2),
(40, '2019_05_15_215704_create_product_photos_table', 2),
(41, '2019_05_15_221031_create_banners_table', 2),
(42, '2019_05_15_223709_create_vehicle_types_table', 2),
(43, '2019_05_15_233137_create_vehicle_type_photos_table', 3),
(44, '2019_05_15_234341_create_tires_table', 4),
(45, '2019_05_16_002014_create_tire_photos_table', 5),
(46, '2019_05_16_003511_create_tire_vehicle_types_table', 6),
(47, '2019_05_24_031510_create_product_vehicle_types_table', 7),
(48, '2019_11_24_212422_create_promotions_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `discount_rate` double(8,2) DEFAULT '0.00',
  `final_price` double(8,2) DEFAULT NULL,
  `state` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVO',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_category_id`, `brand_id`, `description`, `price`, `discount_rate`, `final_price`, `state`, `featured`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'producto prueba', 1, 1, '<p>asdasd</p>', 254000.00, 0.02, 0.00, 'ACTIVO', 1, 'uploads/1/2019-05/1bc6d62bfdc7622732fc9a3018074375.jpg', '2019-05-19 09:04:45', '2019-05-16 06:11:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AAA', NULL, '2019-05-19 09:04:48', '2019-05-16 06:08:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

CREATE TABLE `product_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_vehicle_types`
--

CREATE TABLE `product_vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `vehicle_types_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `profile_name`, `profile_value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '12', 12.00, '2019-05-19 09:04:38', '2019-05-17 02:08:49', NULL),
(2, 'Perfil Estandar', 100.50, NULL, '2019-11-25 00:01:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `photo`, `local_link`, `external_link`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Alineacion y Balanceo', 'uploads/1/2019-11/27e0da521f43618f66f46c379fb195a5.jpg', NULL, NULL, NULL, '2019-11-25 00:50:00', NULL),
(2, 'Otra Promocion', 'uploads/1/2019-11/bfb6e6396c5e0c3e62e380f7e19e050b.png', NULL, NULL, NULL, '2019-11-25 01:06:26', '2019-11-25 01:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `radiuses`
--

CREATE TABLE `radiuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `radius_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius_value` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `radiuses`
--

INSERT INTO `radiuses` (`id`, `radius_name`, `radius_value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'R13', 13.00, '2019-05-19 09:04:32', '2019-05-17 02:08:23', NULL),
(2, 'R13', 13.00, NULL, '2019-11-24 23:57:15', NULL),
(3, 'R14', 14.00, NULL, '2019-11-24 23:57:24', NULL),
(4, 'R15', 15.00, NULL, '2019-11-24 23:57:33', '2019-11-24 23:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `tires`
--

CREATE TABLE `tires` (
  `id` int(10) UNSIGNED NOT NULL,
  `tire_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tire_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tire_type` enum('RADIAL','CONVENCIONAL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `radius_id` int(10) UNSIGNED NOT NULL,
  `width_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tires`
--

INSERT INTO `tires` (`id`, `tire_code`, `tire_name`, `tire_type`, `brand_id`, `radius_id`, `width_id`, `profile_id`, `description`, `price`, `discount_rate`, `final_price`, `state`, `featured`, `visit_counter`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '1001', 'GoodYear Prueba', 'RADIAL', 3, 2, 2, 2, '<p>Detalles .. lalala...es un neumatico lindo y caro</p>', 100.00, 20.00, 80.00, 'ACTIVO', 1, NULL, 'uploads/1/2019-11/0aa54437a44cbf28a2d3a861a4d49f51.jpg', NULL, '2019-11-25 00:02:50', '2019-11-25 00:13:55'),
(3, '1002', 'Goodyear prueba 2', 'CONVENCIONAL', 3, 3, 2, 2, '<p>neumatico de prueba</p>', 100.00, 0.00, 100.00, 'ACTIVO', 1, NULL, 'uploads/1/2019-11/6c6843f4984e28d2c77876921a2d1d60.jpg', NULL, '2019-11-25 00:13:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tire_photos`
--

CREATE TABLE `tire_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tire_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tire_photos`
--

INSERT INTO `tire_photos` (`id`, `tire_id`, `title`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'imagen de prueba', 'uploads/1/2019-05/screenshot_from_2019_05_14_21_40_35.png', '2019-05-19 08:44:27', '2019-05-19 02:12:32', NULL),
(2, 1, NULL, 'uploads/1/2019-05/4c30945d3bda87ff70bd155c1103d113.png', '2019-05-19 09:04:26', '2019-05-19 08:44:34', NULL),
(3, 2, 'Frontal', 'uploads/1/2019-11/11a4d2187e45cb6c5eec98f2fc80f2f5.jpg', NULL, '2019-11-25 00:03:17', NULL),
(4, 2, 'Perfil', 'uploads/1/2019-11/26d5d643a9f7a9e35647ef4d8127707a.jpg', NULL, '2019-11-25 00:03:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tire_vehicle_types`
--

CREATE TABLE `tire_vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `tires_id` int(10) UNSIGNED NOT NULL,
  `vehicle_types_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tire_vehicle_types`
--

INSERT INTO `tire_vehicle_types` (`id`, `tires_id`, `vehicle_types_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(11, 2, 1),
(13, 2, 2),
(12, 2, 3),
(14, 2, 6),
(8, 3, 1),
(9, 3, 2),
(10, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `vehicle_type`, `description`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Autos', NULL, NULL, NULL, '2019-05-17 02:24:57', '2019-11-24 04:25:46'),
(2, 'Camionetas', NULL, NULL, NULL, '2019-05-19 09:03:33', NULL),
(3, 'Camiones', NULL, NULL, NULL, '2019-05-19 09:03:39', NULL),
(4, 'Motos', NULL, NULL, NULL, '2019-05-19 09:03:43', '2019-11-24 04:27:17'),
(6, 'SUV', NULL, NULL, NULL, '2019-11-24 04:29:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type_photos`
--

CREATE TABLE `vehicle_type_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widths`
--

CREATE TABLE `widths` (
  `id` int(10) UNSIGNED NOT NULL,
  `width_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width_value` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widths`
--

INSERT INTO `widths` (`id`, `width_name`, `width_value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '25.5', 85.00, '2019-05-19 09:04:35', '2019-05-17 02:08:43', NULL),
(2, 'Ancho Estandar', 165.00, NULL, '2019-11-25 00:00:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_vehicle_types`
--
ALTER TABLE `product_vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_vehicle_types_products_id_vehicle_types_id_unique` (`products_id`,`vehicle_types_id`),
  ADD KEY `product_vehicle_types_vehicle_types_id_foreign` (`vehicle_types_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiuses`
--
ALTER TABLE `radiuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tires`
--
ALTER TABLE `tires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tires_brand_id_foreign` (`brand_id`),
  ADD KEY `tires_radius_id_foreign` (`radius_id`),
  ADD KEY `tires_witdh_id_foreign` (`width_id`),
  ADD KEY `tires_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `tire_photos`
--
ALTER TABLE `tire_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tire_photos_tire_id_foreign` (`tire_id`);

--
-- Indexes for table `tire_vehicle_types`
--
ALTER TABLE `tire_vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tire_vehicle_types_tires_id_vehicle_types_id_unique` (`tires_id`,`vehicle_types_id`),
  ADD KEY `tire_vehicle_types_vehicle_types_id_foreign` (`vehicle_types_id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_type_photos`
--
ALTER TABLE `vehicle_type_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_type_photos_vehicle_type_id_foreign` (`vehicle_type_id`);

--
-- Indexes for table `widths`
--
ALTER TABLE `widths`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_vehicle_types`
--
ALTER TABLE `product_vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `radiuses`
--
ALTER TABLE `radiuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tires`
--
ALTER TABLE `tires`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tire_photos`
--
ALTER TABLE `tire_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tire_vehicle_types`
--
ALTER TABLE `tire_vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_type_photos`
--
ALTER TABLE `vehicle_type_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widths`
--
ALTER TABLE `widths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_vehicle_types`
--
ALTER TABLE `product_vehicle_types`
  ADD CONSTRAINT `product_vehicle_types_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_vehicle_types_vehicle_types_id_foreign` FOREIGN KEY (`vehicle_types_id`) REFERENCES `vehicle_types` (`id`);

--
-- Constraints for table `tires`
--
ALTER TABLE `tires`
  ADD CONSTRAINT `tires_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `tires_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`),
  ADD CONSTRAINT `tires_radius_id_foreign` FOREIGN KEY (`radius_id`) REFERENCES `radiuses` (`id`),
  ADD CONSTRAINT `tires_witdh_id_foreign` FOREIGN KEY (`width_id`) REFERENCES `widths` (`id`);

--
-- Constraints for table `tire_photos`
--
ALTER TABLE `tire_photos`
  ADD CONSTRAINT `tire_photos_tire_id_foreign` FOREIGN KEY (`tire_id`) REFERENCES `tires` (`id`);

--
-- Constraints for table `tire_vehicle_types`
--
ALTER TABLE `tire_vehicle_types`
  ADD CONSTRAINT `tire_vehicle_types_tires_id_foreign` FOREIGN KEY (`tires_id`) REFERENCES `tires` (`id`),
  ADD CONSTRAINT `tire_vehicle_types_vehicle_types_id_foreign` FOREIGN KEY (`vehicle_types_id`) REFERENCES `vehicle_types` (`id`);

--
-- Constraints for table `vehicle_type_photos`
--
ALTER TABLE `vehicle_type_photos`
  ADD CONSTRAINT `vehicle_type_photos_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`);
