-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 26, 2024 at 07:49 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strapi`
--
CREATE DATABASE IF NOT EXISTS `strapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `strapi`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_parameters` json DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.437000', '2024-09-03 14:16:19.437000', NULL, NULL),
(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.442000', '2024-09-03 14:16:19.442000', NULL, NULL),
(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.451000', '2024-09-03 14:16:19.451000', NULL, NULL),
(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.455000', '2024-09-03 14:16:19.455000', NULL, NULL),
(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.460000', '2024-09-03 14:16:19.460000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.466000', '2024-09-03 14:16:19.466000', NULL, NULL),
(7, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-09-03 14:16:19.472000', '2024-09-03 14:16:19.472000', NULL, NULL),
(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.477000', '2024-09-03 14:16:19.477000', NULL, NULL),
(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.484000', '2024-09-03 14:16:19.484000', NULL, NULL),
(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-09-03 14:16:19.495000', '2024-09-03 14:16:19.495000', NULL, NULL),
(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.503000', '2024-09-03 14:16:19.503000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.509000', '2024-09-03 14:16:19.509000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-09-03 14:16:19.530000', '2024-09-03 14:16:19.530000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-09-03 14:16:19.535000', '2024-09-03 14:16:19.535000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-09-03 14:16:19.541000', '2024-09-03 14:16:19.541000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-09-03 14:16:19.546000', '2024-09-03 14:16:19.546000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.552000', '2024-09-03 14:16:19.552000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.558000', '2024-09-03 14:16:19.558000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.563000', '2024-09-03 14:16:19.563000', NULL, NULL),
(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.569000', '2024-09-03 14:16:19.569000', NULL, NULL),
(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.579000', '2024-09-03 14:16:19.579000', NULL, NULL),
(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.586000', '2024-09-03 14:16:19.586000', NULL, NULL),
(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.590000', '2024-09-03 14:16:19.590000', NULL, NULL),
(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.596000', '2024-09-03 14:16:19.596000', NULL, NULL),
(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.601000', '2024-09-03 14:16:19.601000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.607000', '2024-09-03 14:16:19.607000', NULL, NULL),
(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.611000', '2024-09-03 14:16:19.611000', NULL, NULL),
(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.617000', '2024-09-03 14:16:19.617000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.621000', '2024-09-03 14:16:19.621000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.625000', '2024-09-03 14:16:19.625000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.631000', '2024-09-03 14:16:19.631000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.637000', '2024-09-03 14:16:19.637000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.643000', '2024-09-03 14:16:19.643000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.647000', '2024-09-03 14:16:19.647000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.653000', '2024-09-03 14:16:19.653000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.658000', '2024-09-03 14:16:19.658000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.663000', '2024-09-03 14:16:19.663000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.668000', '2024-09-03 14:16:19.668000', NULL, NULL),
(39, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.674000', '2024-09-03 14:16:19.674000', NULL, NULL),
(40, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.678000', '2024-09-03 14:16:19.678000', NULL, NULL),
(41, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.683000', '2024-09-03 14:16:19.683000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.687000', '2024-09-03 14:16:19.687000', NULL, NULL),
(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.691000', '2024-09-03 14:16:19.691000', NULL, NULL),
(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.696000', '2024-09-03 14:16:19.696000', NULL, NULL),
(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.700000', '2024-09-03 14:16:19.700000', NULL, NULL),
(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.704000', '2024-09-03 14:16:19.704000', NULL, NULL),
(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.708000', '2024-09-03 14:16:19.708000', NULL, NULL),
(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.712000', '2024-09-03 14:16:19.712000', NULL, NULL),
(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.717000', '2024-09-03 14:16:19.717000', NULL, NULL),
(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.722000', '2024-09-03 14:16:19.722000', NULL, NULL),
(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.727000', '2024-09-03 14:16:19.727000', NULL, NULL),
(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.732000', '2024-09-03 14:16:19.732000', NULL, NULL),
(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.737000', '2024-09-03 14:16:19.737000', NULL, NULL),
(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.742000', '2024-09-03 14:16:19.742000', NULL, NULL),
(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.747000', '2024-09-03 14:16:19.747000', NULL, NULL),
(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.752000', '2024-09-03 14:16:19.752000', NULL, NULL),
(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.757000', '2024-09-03 14:16:19.757000', NULL, NULL),
(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.762000', '2024-09-03 14:16:19.762000', NULL, NULL),
(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.767000', '2024-09-03 14:16:19.767000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.774000', '2024-09-03 14:16:19.774000', NULL, NULL),
(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.777000', '2024-09-03 14:16:19.777000', NULL, NULL),
(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.785000', '2024-09-03 14:16:19.785000', NULL, NULL),
(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.790000', '2024-09-03 14:16:19.790000', NULL, NULL),
(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.795000', '2024-09-03 14:16:19.795000', NULL, NULL),
(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.800000', '2024-09-03 14:16:19.800000', NULL, NULL),
(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.830000', '2024-09-03 14:16:19.830000', NULL, NULL),
(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.836000', '2024-09-03 14:16:19.836000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.841000', '2024-09-03 14:16:19.841000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-09-03 14:16:19.846000', '2024-09-03 14:16:19.846000', NULL, NULL),
(75, 'plugin::import-export-entries.import', '{}', NULL, '{}', '[]', '2024-09-09 18:11:51.237000', '2024-09-09 18:11:51.237000', NULL, NULL),
(76, 'plugin::import-export-entries.export', '{}', NULL, '{}', '[]', '2024-09-09 18:11:51.253000', '2024-09-09 18:11:51.253000', NULL, NULL),
(80, 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-09-10 12:45:57.163000', '2024-09-10 12:45:57.163000', NULL, NULL),
(87, 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2024-09-10 12:48:09.590000', '2024-09-10 12:48:09.590000', NULL, NULL),
(88, 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2024-09-10 12:48:09.595000', '2024-09-10 12:48:09.595000', NULL, NULL),
(98, 'plugin::content-manager.explorer.delete', '{}', 'api::writer.writer', '{}', '[]', '2024-09-10 12:55:04.544000', '2024-09-10 12:55:04.544000', NULL, NULL),
(99, 'plugin::content-manager.explorer.create', '{}', 'api::writer.writer', '{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}', '[]', '2024-09-10 12:55:49.015000', '2024-09-10 12:55:49.015000', NULL, NULL),
(100, 'plugin::content-manager.explorer.read', '{}', 'api::writer.writer', '{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}', '[]', '2024-09-10 12:55:49.030000', '2024-09-10 12:55:49.030000', NULL, NULL),
(101, 'plugin::content-manager.explorer.update', '{}', 'api::writer.writer', '{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}', '[]', '2024-09-10 12:55:49.038000', '2024-09-10 12:55:49.038000', NULL, NULL),
(105, 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-09-10 13:18:16.586000', '2024-09-10 13:18:16.586000', NULL, NULL),
(113, 'plugin::react-icons.read', '{}', NULL, '{}', '[]', '2024-09-13 17:22:30.121000', '2024-09-13 17:22:30.121000', NULL, NULL),
(120, 'plugin::drag-drop-content-types.read', '{}', NULL, '{}', '[]', '2024-09-13 17:56:48.609000', '2024-09-13 17:56:48.609000', NULL, NULL),
(145, 'plugin::content-manager.explorer.delete', '{}', 'api::page.page', '{}', '[]', '2024-09-16 15:30:12.938000', '2024-09-16 15:30:12.938000', NULL, NULL),
(146, 'plugin::content-manager.explorer.publish', '{}', 'api::page.page', '{}', '[]', '2024-09-16 15:30:12.942000', '2024-09-16 15:30:12.942000', NULL, NULL),
(150, 'plugin::content-manager.explorer.delete', '{}', 'api::section.section', '{}', '[]', '2024-09-16 15:41:16.991000', '2024-09-16 15:41:16.991000', NULL, NULL),
(151, 'plugin::content-manager.explorer.publish', '{}', 'api::section.section', '{}', '[]', '2024-09-16 15:41:16.995000', '2024-09-16 15:41:16.995000', NULL, NULL),
(230, 'plugin::content-manager.explorer.delete', '{}', 'api::home-page.home-page', '{}', '[]', '2024-09-17 18:22:43.972000', '2024-09-17 18:22:43.972000', NULL, NULL),
(242, 'plugin::seo.read', '{}', NULL, '{}', '[]', '2024-09-25 14:18:28.709000', '2024-09-25 14:18:28.709000', NULL, NULL),
(255, 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"categories\", \"image\", \"author\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:34:53.419000', '2024-09-25 14:34:53.419000', NULL, NULL),
(256, 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"categories\", \"image\", \"author\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:34:53.425000', '2024-09-25 14:34:53.425000', NULL, NULL),
(257, 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"categories\", \"image\", \"author\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:34:53.429000', '2024-09-25 14:34:53.429000', NULL, NULL),
(258, 'plugin::content-manager.explorer.create', '{}', 'api::page.page', '{\"fields\": [\"title\", \"slug\", \"description\", \"before\", \"content\", \"after\", \"rank\", \"section\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:36:30.262000', '2024-09-25 14:36:30.262000', NULL, NULL),
(259, 'plugin::content-manager.explorer.read', '{}', 'api::page.page', '{\"fields\": [\"title\", \"slug\", \"description\", \"before\", \"content\", \"after\", \"rank\", \"section\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:36:30.266000', '2024-09-25 14:36:30.266000', NULL, NULL),
(260, 'plugin::content-manager.explorer.update', '{}', 'api::page.page', '{\"fields\": [\"title\", \"slug\", \"description\", \"before\", \"content\", \"after\", \"rank\", \"section\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:36:30.272000', '2024-09-25 14:36:30.272000', NULL, NULL),
(261, 'plugin::content-manager.explorer.create', '{}', 'api::section.section', '{\"fields\": [\"title\", \"slug\", \"description\", \"content\", \"pages\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:37:04.998000', '2024-09-25 14:37:04.998000', NULL, NULL),
(262, 'plugin::content-manager.explorer.read', '{}', 'api::section.section', '{\"fields\": [\"title\", \"slug\", \"description\", \"content\", \"pages\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:37:05.004000', '2024-09-25 14:37:05.004000', NULL, NULL),
(263, 'plugin::content-manager.explorer.update', '{}', 'api::section.section', '{\"fields\": [\"title\", \"slug\", \"description\", \"content\", \"pages\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:37:05.011000', '2024-09-25 14:37:05.011000', NULL, NULL),
(267, 'plugin::content-manager.explorer.create', '{}', 'api::home-page.home-page', '{\"fields\": [\"title\", \"content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:45:38.165000', '2024-09-25 14:45:38.165000', NULL, NULL),
(268, 'plugin::content-manager.explorer.read', '{}', 'api::home-page.home-page', '{\"fields\": [\"title\", \"content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:45:38.172000', '2024-09-25 14:45:38.172000', NULL, NULL),
(269, 'plugin::content-manager.explorer.update', '{}', 'api::home-page.home-page', '{\"fields\": [\"title\", \"content\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 14:45:38.176000', '2024-09-25 14:45:38.176000', NULL, NULL),
(270, 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\": [\"name\", \"slug\", \"rank\", \"articles\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 16:19:22.865000', '2024-09-25 16:19:22.865000', NULL, NULL),
(271, 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\": [\"name\", \"slug\", \"rank\", \"articles\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 16:19:22.870000', '2024-09-25 16:19:22.870000', NULL, NULL),
(272, 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\": [\"name\", \"slug\", \"rank\", \"articles\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-25 16:19:22.875000', '2024-09-25 16:19:22.875000', NULL, NULL),
(273, 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\": [\"siteName\", \"favicon\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-26 18:41:32.950000', '2024-09-26 18:41:32.950000', NULL, NULL),
(274, 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\": [\"siteName\", \"favicon\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-26 18:41:32.955000', '2024-09-26 18:41:32.955000', NULL, NULL),
(275, 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\": [\"siteName\", \"favicon\", \"seo.metaTitle\", \"seo.metaDescription\", \"seo.metaImage\", \"seo.metaSocial.socialNetwork\", \"seo.metaSocial.title\", \"seo.metaSocial.description\", \"seo.metaSocial.image\", \"seo.keywords\", \"seo.metaRobots\", \"seo.structuredData\", \"seo.metaViewport\", \"seo.canonicalURL\"]}', '[]', '2024-09-26 18:41:32.960000', '2024-09-26 18:41:32.960000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(75, 75, 1, 58),
(76, 76, 1, 59),
(80, 80, 1, 63),
(87, 87, 1, 70),
(88, 88, 1, 71),
(98, 98, 1, 78),
(99, 99, 1, 79),
(100, 100, 1, 80),
(101, 101, 1, 81),
(105, 105, 1, 85),
(113, 113, 1, 93),
(120, 120, 1, 97),
(145, 145, 1, 119),
(146, 146, 1, 120),
(150, 150, 1, 124),
(151, 151, 1, 125),
(230, 230, 1, 159),
(242, 242, 1, 160),
(255, 255, 1, 173),
(256, 256, 1, 174),
(257, 257, 1, 175),
(258, 258, 1, 176),
(259, 259, 1, 177),
(260, 260, 1, 178),
(261, 261, 1, 179),
(262, 262, 1, 180),
(263, 263, 1, 181),
(267, 267, 1, 185),
(268, 268, 1, 186),
(269, 269, 1, 187),
(270, 270, 1, 188),
(271, 271, 1, 189),
(272, 272, 1, 190),
(273, 273, 1, 191),
(274, 274, 1, 192),
(275, 275, 1, 193);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-09-03 14:16:19.421000', '2024-09-03 14:16:19.421000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-09-03 14:16:19.428000', '2024-09-03 14:16:19.428000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-09-03 14:16:19.433000', '2024-09-03 14:16:19.433000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `registration_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Mirum', 'DevOps', NULL, 'devopsbr@mirumagency.com', '$2a$10$ZlZ4MgsJkjqWuFG7A9xLtOkNR/zzoKXxgnsfTg2gJ4Oqv7fbG.gPq', NULL, NULL, 1, 0, NULL, '2024-09-03 14:55:52.164000', '2024-09-03 14:55:52.164000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `content`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'A cultura consumer insights na construção de uma CX de sucesso', 'Executivos de Nestlé, Mastercard, StoneCo e Pluxee refletem sobre a dinâmica que permite explorar com inteligência a riqueza cada vez maior de dados dos clientes', 'Mergulhadas em um novo mindset de tomada de decisões com base nas manifestações dos clientes transformadas em dados, as marcas se encontram hoje no caminho de descobrir de que forma consolidar essa cultura de consumer insights. Conscientes do risco de se tornarem excessivamente reativas diante de tantas mudanças no perfil dos consumidores, as empresas procuram se adaptar ao novo cliente omnichannel com uma atitude proativa de oferecer inovações que permitam se diferenciar da concorrência. Uma das providências nesse sentido é criar programas para que toda a liderança e os colaboradores acompanhem de perto o atendimento ao cliente. Essas são algumas das reflexões extraídas do debate que reuniu, hoje (13), Milena Shimizu, gerente de consumer insights da Nestlé Brasil, Mariana Cerone, gerente executiva de consumer da Pluxee, Ana Karina Scarlato, vice-presidente de produtos e inovação da Mastercard, e Victor Nuti, sócio da StoneCo Brasil, na 775ª. edição da Série Lives – Entrevista ClienteSA, no terceiro encontro comemorativo da Semana do Cliente.\n\nIniciando por enfatizar a relevância que é conferida pela StoneCo à semana em que se comemora o Dia do Cliente, Vitor explicou que, além de ações especiais junto à base, a oportunidade é utilizada para que todas as lideranças participem diretamente da atividade de atendimento aos clientes. Trata-se, segundo ele, de uma estratégia recorrente, exigida de todo novo colaborador como parte do on-boarding, passando um tempo ao lado do agente de relacionamento em plena ação, mas que, nesta semana, demanda dos líderes esse esforço de parar as próprias atribuições para participar dessa interação. Isso envolverá até mesmo os que estão fora do País, em encontros importantes, mas que acordarão mais cedo nesta semana para começar o dia falando direto com os clientes.\n\nNa sequência, respondendo a uma questão sobre os riscos das organizações se tornarem mais reativas que proativas nesse esforço de acompanhar o hábitos dos consumidores, Milena disse que, diante de tanta fluidez de perfis, realmente pode-se cair nessa aparente armadilha do mercado, por isso a empresa tem de saber evoluir para se antecipar também a partir dos insights capturados. ‘Para isso, temos soluções rodando a nosso favor, como, no caso da Nestlé, plataformas de IA generativa, aceleração de ferramentas que possibilitam não apenas realizar perguntas, mas combinar e analisar dados a partir de comportamentos. Por isso, praticamente não temos mais necessidade de validar e testar produtos, pois já viemos construindo os mesmos no entendimento das necessidades reais ao longo da jornada do cliente.’ Para ela, o mais importante é a consolidação de uma cultura de evolução baseada em um novo mindset que envolve toda a empresa no acompanhamento das tendências a partir de todas as interações.\n\nEnquanto Mariana, depois de dar os detalhes que levaram a Sodexo a mudar sua marca para Pluxee, demonstrou sua plena concordância com a análise dos antecessores no debate e contou que, a exemplo do que está sendo feito no StoneCo, os colaboradores atuam pontualmente também na linha de frente do atendimento a clientes B2B, redes credenciadas e consumidores finais. ‘Chamamos esse projeto de ‘In the Shoes’, rodado em parceria com o time de CX, envolvendo os novos colaboradores e todos os times na forma de reciclagem. Eu mesma, na empresa há cinco anos, já participei diversas vezes desse movimento que nos permite conhecer de perto os anseios, dores e satisfações em toda a base.’ Na sua concepção, tanto para ser reativa quanto proativa no mercado, a empresa tem de se utilizar de todo o conjunto de tecnologias, dados e inteligência a favor, reagindo à altura das necessidades e fazendo prevalecer as estratégias criativas.\n\nPor sua vez, aproveitando um conceito levantado por Mariana, de que, independente do modelo de negócio da marca, ela estará sempre lidando com pessoas, Ana Karina destacou essa questão na Mastercard, que opera quase 100% em B2B. Isso, ponderou ela, pressupõe sempre a preocupação de que o usuário final, cliente dos parceiros da empresa, desfrute de uma experiência mais que satisfatória. Ou seja, estar sempre em busca do conhecimento do que é que o cliente na ponta necessita e para que direções indica. ‘Dessa forma, por meio da aproximação estreita com nossos parceiros, conseguimos chegar à inteligência de dados, algo que, neste segmento de cartões de crédito em especial, é gerado em uma riqueza imensa de detalhes. Entretanto, é tanta informação que a nossa preocupação é não nos perdermos em pontos que não gerarão insights verdadeiros em prol do consumidor final. Trata-se de saber combinar, com inteligência, os insumos que surgem dos parceiros com a tecnologia que nos permite direcionar soluções que vão melhorar a vida das pessoas.’\n\nHouve tempo para que o debate seguisse explorando o mar de opções que se abre para os consumidores atualmente, induzindo as empresas na direção de inovar praticamente de forma contínua. Os especialistas puderam, também, analisar a captura de insights dentro da tendência figital, indicando que o digital não é, nem pode ser, o único caminho de acompanhamento do comportamento dos clientes, já que o presencial faz parte intrínseca da adaptação omnichannel exigida hoje das empresas. Eles ainda citaram exemplos de inovações que modificaram comportamentos, como no caso do contactless no uso de cartões e o autoatendimento, além de abordarem as questões geracionais dentro dessa cultura de consumer insights e as perspectivas na área em um futuro próximo.\n\nO vídeo, na íntegra, está disponível em nosso canal no Youtube, o ClienteSA Play, junto com as outras 774 lives realizadas desde março de 2020. Aproveite para também se inscrever. A Série Lives – Entrevista ClienteSA, dentro da programação especial da Semana do Cliente, prosseguirá amanhã (14) com o tema ‘Inovação: O caminho para surpreender na CX’ tendo como convidados Karla Danianne, COO do Charlie, Jimmy Lui, superintendente de inovação e open finance do banco BV, Paula Oliveira, gerente de student experience da Alura, Natasha Iglesias Brunhara, gerente de design e CX da Cielo, e Rodrigo Tavares, vice-presidente sênior de CX da RecargaPay; e, encerrando a semana especial, o ‘Sextou’ tratará da temática ‘Cultura Cliente: A visão customer centric está consolidada?’, reunindo Alex Quezada, sócio e vice-presidente de marketing e vendas da 5àsec, Elisangela Silva, gerente de customer experience e continuous improvement da DHL, Guilherme Sawaya, diretor de incorporação e inovação da Yuny Incorporadora, Julio Plum, diretor de CX da Alelo, e Marco Barbosa, diretor de clientes, CRM e supply chain da Azul.', 'a-cultura-consumer-insights-na-construcao-de-uma-cx-de-sucesso', '2024-09-10 13:34:25.860000', '2024-09-24 12:50:20.413000', '2024-09-10 18:20:43.089000', 1, 1),
(2, '6º Fórum Incorpora celebra 10 Anos da ABRAINC', 'São Paulo, 28 de setembro de 2023 – Em um ambiente marcado pelo otimismo e visão de futuro, a Associação Brasileira de Incorporadoras Imobiliárias (ABRAINC) realizou nesta semana a 6ª edição do Incorpora – Fórum Brasileiro de Incorporadoras 2023.', 'São Paulo, 28 de setembro de 2023 – Em um ambiente marcado pelo otimismo e visão de futuro, a Associação Brasileira de Incorporadoras Imobiliárias (ABRAINC) realizou nesta semana a 6ª edição do Incorpora – Fórum Brasileiro de Incorporadoras 2023.\n\nO evento de grande sucesso foi marcado não apenas pela celebração dos 10 anos da ABRAINC, mas também por intensos debates entre os principais players do setor, líderes políticos e pesquisadores que se reuniram para discutir as perspectivas e desafios do mercado imobiliário brasileiro.\n\nEm seu discurso de abertura, o presidente da ABRAINC, Luiz França, enfatizou a relevância do setor imobiliário para a economia do Brasil, lembrando que a construção civil gerou 17% dos empregos formais no país e definindo o momento atual do país como singular, frente ao aumento dos investimentos no setor imobiliário no segundo trimestre de 2023, superando a média nacional.\n\nNa presença do vice-presidente da República, Geraldo Alckmin, França destacou a importância do apoio governamental no sentido de promover taxas de juros mais baixas e a diversificação das fontes de financiamento para compradores de imóveis.\n\nAbrindo a programação oficial de debates, o jornalista Willian Wack conversou com o empresário fundador do grupo Cyrela, Elie Horn, abordando temas cruciais como política fiscal, taxas de juros e o futuro da construção e incorporação no país. Durante o bate-papo, Horn ressaltou a necessidade das empresas do setor desenvolverem ações sociais dando atenção às camadas menos favorecidas.\n\nPresente durante o evento, a presidente da Caixa Econômica Federal, Maria Rita Serrano, destacou a importância do Fundo de Garantia do Tempo de Serviço (FGTS) e do financiamento imobiliário da Caixa para combater o déficit habitacional. Em seu discurso, Maria Rita também ressaltou a necessidade da desburocratização o setor, visando a redução de custos e atendimento às necessidades da população de modo mais célere.\n\nInovação e Funding\n\nAlém dos debates sobre o panorama atual do mercado imobiliário, o evento abordou ainda temas relacionados à carga tributária, equilíbrio fiscal, funding e inovação no setor, aspectos fundamentais para o seu desenvolvimento contínuo.\n\nParticipando dos diálogos, estiveram presentes diversos especialistas e players do setor como o CEO da Senior Sistemas, Carlênio Castelo Branco; o CEO da Tegra Incorporadora, Ubirajara Freitas; o fundador e CEO da Yuny Incorporadora, Marcelo Yunes; o presidente executivo do Secovi-SP, Ely Wertheim; o diretor de Negócios Imobiliários do Santander, Sandro Gamba; o economista-chefe do BTG Pactual, Mansueto Almeida; o CEO da Tenda, Rodrigo Osmo; o CEO da Direcional Engenharia, Ricardo Ribeiro Gontijo; e o presidente da CBIC, Renato Correia.\n\nImpactos Positivos dos Programas de Habitação de Interesse Social\n\nAo fim do evento, a ABRAINC apresentou uma pesquisa conduzida pela Brain Inteligência Estratégica, que aponta como o programa Minha Casa, Minha Vida tem sido significativo na melhoria da qualidade de vida de seus beneficiários.\n\nDe acordo com o estudo, 77% dos beneficiários do programa entrevistados apontaram uma melhora na qualidade de vida após a aquisição do imóvel. Esse levantamento é essencial para avaliar se o programa está cumprindo seus objetivos de melhorar as condições de moradia e qualidade de vida das famílias de baixa renda no Brasil.', '6-forum-incorpora-celebra-10-anos-da-abrainc', '2024-09-10 13:35:47.833000', '2024-09-24 12:54:02.601000', '2024-09-10 18:20:43.089000', 1, 1),
(3, 'Setor imobiliário: queda da Selic deixa executivos otimistas', 'Economistas, incorporadores e bancários se reuniram na 6ª edição do Incorpora, Fórum da Associação Brasileira de Incorporadoras Imobiliárias (ABRAINC), para discutir as diferentes visões para o mercado imobiliário.', 'Uma série de temas durante o painel foram abordados pelos executivos, com destaque otimista, com a perspectiva de queda da taxa de juros.\n\nPara o economista-chefe do BTG Pactual, Mansueto Almeida, o cenário de inflação mudou muito, com uma expectativa de queda e a taxa de desemprego apresentou uma queda relevante, que representa a menor taxa desde 2014.\n\nEm relação aos pontos de atenção, o presidente da CBIC, Renato Correia, destaca a questão da mão de obra do setor e informalidade. Na sua visão, haverá um aumento nos preços dos imóveis. No entanto, a visão é otimista com a mudança do Minha Casa Minha Vida, e queda da taxa de juros.\n\nVendas dos imóveis em alta em 2023\n\nO fundador e CEO da Yuny Incorporadora, Marcelo Yunes, destacou durante sua participação no painel, sua visão otimista do mercado, visto que no primeiro semestre deste ano (1S23) houveram uma série de avanços no setor.\n\nDesse modo, Yunes afirmou que o número de lançamentos, que foi baixo até então, aumentará em 2024. ‘As empresas estão muito confiantes, e estamos muito otimistas com os números’.\n\nPor outro lado, o CEO da Tegra Incorporadora, Ubirajara Freitas, ressaltou que o ano de 2023 ainda não acabou e estamos entrando no quarto trimestre (4T23) deste ano, que via de regra, é o melhor período do ano.\n\nNesse sentido, Freitas afirmou que, ainda assim, teremos um número lançamentos menor do que 2022 e de vendas ligeiramente maior\n\n‘Não podemos esquecer que viemos de dois anos de inflação absurdos, agora, a inflação está administrada, juros em tendência de queda, o que melhora as perspectivas de 2024’, acrescentou o executivo.\n\n‘As vendas aumentaram porque a demanda é forte, cobrindo um vácuo de anos anteriores, e as margens baixaram, em 2024 será um ano melhor tanto em lançamento como em vendas’, explicou Freitas.\n\nMercado de capitais pode ajudar no financiamento do setor\n\n‘O mercado de capitais é fundamental para o setor’, ressaltou inicialmente o economista-chefe do BTG Pactual. Dessa forma, Almeida acredita que, com a perspectiva de queda da taxa de juros, o interesse das empresas em oferta pública de ações deve aumentar, no entanto, acredita que o mercado de ações precisa melhorar muito.\n\nNessa linha, Yunes afirmou que há uma confiança muito grande que o mercado de capitais irá retornar, em termos econômicos. ‘As empresas do setor imobiliários vão retornar aos IPOs’. Ainda completou que surgirão ainda mais oportunidades de fundos no setor imobiliário, e esses fundos têm sido cruciais para o desenvolvimento do setor.\n\nFórum ABRAINC\n\nA Associação Brasileira de Incorporadoras Imobiliárias (ABRAINC) realiza nesta terça (26) a 6ª edição Incorpora – Fórum Brasileiro das Incorporadoras Imobiliárias, em São Paulo.\n\nO evento conta com a presença de autoridades do País e dos principais players do segmento. Entre os principais painéis do evento, ganham destaque os debates sobre Funding e o atual momento do mercado imobiliário; Novas modalidades de crédito; Inovação na incorporação imobiliária; e, haverá, ainda, um momento solene em comemoração aos 10 anos da ABRAINC completados em 2023.\n\nNomes como, o Ministro da Fazenda, Fernando Haddad; Ministro das Cidades, Jarder Barbalho; presidente do Senado, Rodrigo Pacheco; presidente da Caixa Econômica Federal, Maria Rita Serrano; entre outros nomes.', 'setor-imobiliario-queda-da-selic-deixa-executivos-otimistas', '2024-09-10 13:37:37.394000', '2024-09-24 13:17:41.453000', '2024-09-10 18:20:43.089000', 1, 1),
(4, 'Iniciativas de construção civil com proposta sustentável ganham mercado', 'Geração de resíduos, uso de energia elétrica, consumo de água e poluição são apenas alguns dos exemplos da influência negativa da construção civil no meio ambiente. No entanto, a demanda popular e os avanços tecnológicos estão promovendo iniciativas para diminuir esses impactos. Confira a seguir as novidades disponíveis no setor:', '**Redução de resíduos é um dos objetivos almejados por iniciativas do setor**\n\nGeração de resíduos, uso de energia elétrica, consumo de água e poluição são apenas alguns dos exemplos da influência negativa da construção civil no meio ambiente. No entanto, a demanda popular e os avanços tecnológicos estão promovendo iniciativas para diminuir esses impactos. Confira a seguir as novidades disponíveis no setor:\n\nUm levantamento da consultoria KPMG indica que 86% das 100 maiores empresas brasileiras reportaram questões relacionadas à ESG. A maioria delas (90%) divulgou metas para descarbonização, superando a média de 72% na América Latina. Entre as soluções pensadas para atingir esse objetivo, está a adoção de peças pré-fabricadas de madeira engenheirada para substituir o aço e o concreto.\n\nÉ com essa tecnologia que a startup Noah para fazer sua parte na redução do impacto. ‘É uma técnica construtiva que corrobora para a mitigação do carbono, uma vez que no processo produtivo de 1 m³ da madeira, por exemplo, é possível retirar 1 tonelada de CO2, contribuindo assim para a redução do efeito estufa’, afirma Nicolaos Theodorakis, fundador e CEO da companhia.\n\nAlém da madeira, outros produtos tradicionais também vão se adaptando às demandas do mercado. Outro exemplo é o tijolo ecológico, que tem sido uma resposta ao consumo de argamassa e concreto em blocos, dois dos principais materiais descartados nos canteiros de obras.\n\nExistem diversos tipos de tijolos ecológicos fabricados com uma gama variada de materiais, que vão de cinzas do bagaço da cana-de-açúcar à fibra de coco do babaçu, passando por couro e borracha. Porém, apesar de reduzir a demanda energética em comparação ao tijolo cerâmico, o modelo ecológico tende a ser mais caro e demanda uma mão de obra especializada.\n\nUm estudo da Mckinsey indica que só os novos edifícios são responsáveis por 5% das emissões anuais de gases de efeito estufa. De acordo com o Ministério das Cidades, estima-se que os resíduos de construção e demolição representam de 51% a 70% dos sólidos urbanos. É diante desses números que cidades ao redor do mundo estão dando mais atenção à possibilidade de reciclar materiais de construção.\n\nNa cidade de Portland, nos Estados Unidos, por exemplo, uma lei aprovada em 2016 determina que edifícios construídos antes de 1940 que seriam demolidos devem ser ‘desconstruídos’. A ideia é tentar reaproveitar o material para diminuir o desperdício e os impactos ambientais da queima de detritos ou do envio para aterros sanitários.\n\nEnquanto isso, arquitetos já desenvolveram técnicas de construção de novas estruturas pensando em uma possível desmontagem no futuro, de forma que o processo seja sustentável.\n\nUma diferença de abordagem é percebida já na escolha dos materiais que podem ser reciclados ou reutilizados, como madeira e aço, ao contrário do concreto ou drywall, ou mudanças ainda menores como o uso de parafusos removíveis ou fixadores mecânicos ao invés de soldas e adesivos químicos.\n\nCaminhando em uma direção parecida, a plataforma habitacional MRV&CO se compromete a reaproveitar o concreto dos canteiros de obra para a construção de peças decorativas que vão adornar os imóveis, além de destinar todo o papel e plástico das construções para a reciclagem.\n\nA construção modular é um processo de construção que consiste na fabricação e montagem fragmentada de um imóvel. Na prática, é um método em que módulos individuais são pré-fabricados em uma espécie de linha de montagem e transportados até o local da obra para a instalação.\n\nLeia mais:\n\n5 tipos de pisos e revestimentos que valorizam o imóvel\n\nPlatina 220: quanto custa viver no prédio mais alto de São Paulo?\n\nBrain compra 30% da Global Talent, empresa de carreiras no setor imobiliário\n\n‘Quando comparado às construções tradicionais, feitas com alvenaria, temos uma instalação fácil e rápida, melhoria no desempenho térmico e acústico, ganho de área útil nos ambientes, redução no prazo da construção e uma obra mais limpa, com menos entulho’, explica Maíra Baltrusch, coordenadora sênior de projetos da Yuny, incorpora que adota a prática.\n\nTambém é dessa forma que a incorporadora URBIC atua. ‘A construção industrializada é preponderantemente feita com processos ‘secos’, sem uso de argamassa e processos úmidos’, afirma Luiz Henrique Ceotto, diretor técnico da companhia. ‘O processo acelera as entregas para tempo recorde e os ciclos de incorporação duram entre 25 e 35 meses, desde a compra do terreno até a entrega das chaves.’\n\nEle destaca que a estratégia garante redução de desperdícios e do uso de água na execução da obra. ‘Na construção convencional, utiliza-se cerca de 500 litros por m² de construção, enquanto na industrializada, gasta-se menos de 30 litros por m²’, garante Luiz.', 'iniciativas-de-construcao-civil-com-proposta-sustentavel-ganham-mercado', '2024-09-10 13:40:26.175000', '2024-09-24 12:58:10.142000', '2024-09-10 18:20:43.089000', 1, 1),
(5, 'A hora e a vez da cultura customer centric', 'Executivos de 5àsec, Alelo, Azul, DHL e Yuni aproveitam o Dia do Cliente para avaliar os avanços na estratégias e os pontos de atenção\n\n', 'Desde que qualidade e preço justo foram se tornando commodities, a preocupação de vencer os concorrentes vem passando para o foco mais na experiência do que apenas em produtos e serviços. Esse movimento, por consequência, tem conduzido o cliente cada vez mais para o centro das decisões das marcas, consolidando a cultura customer centric. Isso demanda ações de engajamento junto aos colaboradores – os clientes internos -, para que se sintam foco de uma experiência feliz, transmitindo esse mesmo sentimento aos consumidores. Debatendo os vários detalhes que constroem e consolidam essa cultura, Elisangela Silva, gerente de customer experience e continuous improvement da DHL, Alex Quezada, sócio e vice-presidente de marketing e vendas da 5àsec, , Guilherme Sawaya, diretor de incorporação e inovação da Yuny Incorporadora, Julio Plum, diretor de CX da Alelo, e Marco Barbosa, diretor de clientes, CRM e supply chain da Azul, participaram, hoje (15), da 777ª edição da Série Lives – Entrevista ClienteSA, que marcou o último encontro especial da Semana do Cliente.\n\nIniciando o debate com uma questão envolvendo também o cliente interno, o host Vilnor Grube instigou os convidados a se manifestarem a respeito de uma mensagem vinda da audiência sobre uma pesquisa que mostrou ser a cultura customer centric, também motivadora e retentora de talentos. Elisangela foi a primeira a responder, concordando e acrescentando que há uma consciência generalizada de que a gestão do cliente como o centro das atividades e decisões é que traz a rentabilidade, dando segurança maior a todos os colaboradores. Ainda mais na DHL, segundo a executiva, por atuar com supply chain no modelo B2B, com colaboradores em todos os sites dos clientes. ‘Dessa forma, eles veem in loco o quanto um cliente satisfeito tende a permanecer fiel. Haja vista que temos alguns deles cujos contratos se mantêm conosco há mais de 20 anos. Essa percepção é generalizada, sendo sentida em todas as áreas e pontos de interação, se configurando dentro da cultura de centralidade do cliente que se consolida cada vez mais.’\n\nNo que foi apoiada por Guilherme, compartilhando a visão de que o colaborador já sabe que ele não mantém seu emprego por causa do líder ou da própria organização, mas em razão da felicidade do cliente diante daquilo que lhe é entregue como valor. Segundo o executivo, essa sensação é mais forte ainda quando há contato direto com o cliente, razão pela qual a Yuni tem promovido o programa ‘Ouvinte Carona’, por meio do qual qualquer funcionário pode escutar as ligações que ocorrem na central de atendimento. ‘O mesmo ocorre nos estandes dentro dos showrooms que montamos para vendas de apartamentos, os quais os colaboradores também são convidados a visitar e acompanhar esse tipo de interação. Como o ciclo de relacionamento com nossos clientes é longo, a empresa toda é chamada a estar presente em um dos principais momentos que é o da entrega das chaves, quando o sonho do cliente se materializa e seu expresso contentamento pode ser visto de perto.’ Guilherme enalteceu o preparo que é feito para os profissionais que estão na linha de frente do atendimento, na central, considerando serem os que mais entendem de todo o negócio da empresa, visando sempre o first call resolution. ‘Gente que sente estar fazendo outras pessoas felizes, cria um forte sentimento de propósito e de pertencimento.’\n\nDemonstrando total concordância com as análises feitas, Marco aproveitou para descrever a dinâmica de customer centric na Azul. Ali, onde os colaboradores são chamados de tripulantes, a principal função dos líderes é garantir que essa ‘tripulação’ se sinta feliz com seu trabalho, pois, só assim, transmitirá o mesmo sentimento aos clientes em cada interação. ‘Trata-se de manter um ambiente de acolhimento e cuidado, porque isso se reflete em uma cultura de customer centric que favorece o negócio como um todo.’ Ao passo que Julio, indo pelo mesmo caminho, afirmou que, na Alelo, há cerca de dois anos chegou-se à conclusão de que as práticas centradas no cliente, embora estivessem sempre presentes, precisavam acontecer de forma mais organizada. Era importante, explicou ele, que a empresa toda ficasse ciente dos pilares que sustentam o programa de experiência do cliente, chamado internamente de ‘Cliente, sou teu fã e faço tudo por você’, sendo o principal deles o que é chamado de ‘cultura e engajamento’. Trata-se de um movimento que busca conseguir que cada colaborador se sinta responsável pelo cliente. O diretor de CX detalhou ainda ações e processos de escuta da voz do cliente, externo e interno.\n\nEnquanto Alex, depois de descrever toda a cadeia de clientes em que se configura o foco da 5àsec, falou da importância do engajamento nessa cultura de customer centric por parte dos mais de dois mil colaboradores que estão em contato direto com o consumidor final efetuando as entregas. ‘Para vencer esses desafios realizamos um processo por ciclos com premiações. Este ano fizemos quatro deles, de três meses cada um, sendo que este mês iniciamos o último, com uma campanha nacional que reconhecerá os consumidores finais com o sorteio de 20 prêmios’. Tudo isso é complementado com uma ação motivacional de engajamento, oferecendo um prêmio a cada colaborador da loja franqueada cujo cliente atendido diretamente por ele foi sorteado.\n\nHouve tempo ainda para os debatedores abordarem questões relevantes em termos de customer centric tais como a diferença entre vender produto e experiência, características do que é uma cultura de verdade, o que é uma jornada de encantamento, a transformação de CX em HX (human experience), inovação e a relação da cultura com a rentabilidade, entre outras. O vídeo, na íntegra, está disponível em nosso canal no Youtube, o ClienteSA Play, junto com as outras 776 lives realizadas desde março de 2020. Aproveite para também se inscrever. A Série Lives – Entrevista ClienteSA retorna na segunda-feira (18), recebendo Antonio Augusto, diretor de marketing da Localiza&Co, que falará da centralidade no cliente como pilar para inovar; na terça, será a vez de Fernando Oka, diretor de marketing da Purificadores Europa; na quarta, Jonatas Figueiredo, CEO do grupo O Novo Mercado, dono da H1; e, na quinta, Ana Carolina Ribas, head de experiência do cliente da Basf.\n\n', 'a-hora-e-a-vez-da-cultura-customer-centric', '2024-09-10 13:42:00.123000', '2024-09-24 12:51:48.196000', '2024-09-10 18:20:43.089000', 1, 1),
(6, 'Iniciativas de Construção Civil Com Proposta Sustentável Ganham Mercado', '“Foi um primeiro ensaio de uso do urbanismo na atividade imobiliária para deixar o lugar mais eficiente, diverso, seguro e saudável”, lembra Zarvos.\n', '**Melhoria nos bairros**\n\nJornal Valor Econômico\n\nQuem circula a pé por determinados bairros das zonas Sul e Oeste de São Paulo tem percebido transformações sutis: calçadas mais largas, paisagismo aprimorado, bancos para descanso, lojas no térreo e ausência de muros. O pacote de “gentilezas urbanas” tem sido uma iniciativa cada vez mais frequente das incorporadoras para melhorar a relação de seus empreendimentos com a cidade. E o que é bom poderia ficar ainda melhor se o diálogo entre as empresas do setor fosse mais intenso e produtivo.\n\nOtavio Zarvos, CEO e fundador da Idea!Zarvos, é pioneiro nesse tipo de projeto. Nos anos 2000, ele entregou dois prédios — um comercial e outro residencial — que marcaram a paisagem da Vila Madalena exatamente por oferecer conforto aos pedestres, eliminar a barreira entre o público e o privado e propor um uso que ativasse a vida diurna de um bairro reconhecidamente boêmio.\n\n“Foi um primeiro ensaio de uso do urbanismo na atividade imobiliária para deixar o lugar mais eficiente, diverso, seguro e saudável”, lembra Zarvos.\n\nO executivo conta que seus empreendimentos respeitam três pilares fundamentais: estética, relação com o entorno e avaliação de oferta que contribua para o bairro. Ele acredita que o mercado está em processo de educação para tornar essa discussão mais madura.\n\n“Aos poucos, as empresas vão tomando consciência de que estão construindo uma cidade, não apenas um prédio, e que devem fazer de tudo para torná-los mais amigáveis”, diz.\n\nNa Zona Sul, duas incorporadoras têm tido atuação consistente nesse sentido. No Brooklin, a Yuny Incorporadora acaba de entregar o Grand Habitarte, uma quadra de 20 mil metros quadrados com passeio arborizado que circunda o condomínio e se tornou um circuito de caminhada utilizado por todos os vizinhos.\n\n“Cidades interessantes são feitas por bairros requalificados, e isso demanda um esforço do mercado imobiliário”, afirma Guilherme Sawaya, diretor de Incorporação e Inovação da Yuny. “Nosso ‘stakeholders’ não é apenas quem mora no prédio, mas todos os que conviverão com o empreendimento.”\n\nJá a Benx Incorporadora teve papel determinante na década passada para o aterramento dos fios em 4,2 quilômetros de vias da Vila Olímpia, bairro onde tem 27 empreendimentos. Agora, com o Parque Global, na região do Panamby, assumiu a gestão do Parque Bruno Covas, que se estende às margens do Rio Pinheiros.\n\nPara Renato Bottoni, diretor de Novos Negócios, Marketing e Comercial, além da preocupação com a melhoria do entorno, esse tipo de ação gera uma inequívoca valorização imobiliária.\n\n“É difícil mensurar se 10% ou 15%, mas os empreendimentos sem postes com fios ou com uma ciclovia na porta, sem dúvida, provocam um impacto financeiro positivo”, analisa.\n\nFALTA DIÁLOGO\nUma questão que tem limitado o alcance dessas ações é a ausência de diálogos produtivos entre as próprias incorporadoras, que reconhecem essa carência. “Faltam maturidade e visão do ponto de vista urbanístico na discussão”, pondera Otavio Zarvos, que admite ter pouco contato com outros players para compartilhar soluções.\n\nSawaya, da Yuny, entende que há excesso de competitividade entre as empresas. “Poderíamos exercitar mais o conceito de competição com cooperação. É preciso quebrar esses feudos para construir bairros mais interessantes”, pondera.\n\nUm exemplo bem-sucedido de cooperação entre competidores foi dado pelas incorporadoras Helbor e Tegra, na Zona Oeste. “Tínhamos um terreno em frente ao deles com projetos semelhantes”, lembra Henry Borenstein, CEO da Helbor, que chamou o vizinho para conversar e criar um empreendimento único.\n\nO Caminhos da Lapa nasceu desse entendimento ao redor de uma rua-jardim, com via alargada, muito verde, ciclovia e lazer público. “Com certeza, as incorporadoras podem atuar de forma conjunta. Pensando de maneira mais ampla, podem contribuir de forma significativa para a transformação dos bairros”, resume.\n\nPropostas de arquitetos para embelezar a cidade\n\nEscritórios de arquitetura renomados têm proposto soluções, mas encontram obstáculos para chegar a um consenso\n\nNos últimos três anos, ao menos duas propostas de ação conjunta para transformação urbana foram apresentadas às incorporadoras que atuam na Zona Oeste de São Paulo, mas nenhuma avançou.\nO escritório FGMF Arquitetura desenvolveu um projeto de ressignificação da Rua Auriflama, em Pinheiros. O projeto incluía calçadas com cinco metros de largura, bancos de descanso e playground. “A cidade pertence ao pedestre, e é preciso dar o peso certo a isso”, avalia Lourenço Gimenes, sócio-fundador da FGMF.\n\nPara ele, o adensamento em curso na região é uma oportunidade de se repensar o espaço público, e ele mostra disposição para contribuir nesse sentido.\n\n“O intuito do projeto foi mostrar a possibilidade de transformação, que pode ser replicada em outros bairros da cidade”, ratifica.\n\nTambém em Pinheiros, a Rua Henrique Monteiro virou alvo de grandes incorporadoras de alto padrão, cujo desejo é explorar a proximidade do endereço com o centro financeiro da Avenida Faria Lima.\n\nO arquiteto Arthur Casas, que assina um dos projetos na rua, reuniu por videoconferência todos os empresários responsáveis pelos demais edifícios em construção na rua e apresentou proposta de uniformizar as gentilezas urbanas que seriam feitas por cada um deles. Mas não houve acordo.\n\n“Não havia razão nenhuma para não chegarmos a um consenso. Mas os incorporadores não conseguiram se cotizar para realizar o projeto, orçado em menos de R$ 6 milhões”, recorda Casas.\n\nSegundo ele, prevaleceu a vaidade para liderar o projeto. “Uma ação conjunta traria vantagens para todos, inclusive financeira.”', 'incorporadoras-buscam-melhorar-bairros-da-capital', '2024-09-10 13:42:34.894000', '2024-09-24 13:00:44.488000', '2024-09-10 18:20:43.089000', 1, 1),
(7, 'Yuny Incorporadora fala sobre a inovação pensada no cliente durante o Conecta Imobi 2023', 'Yuny Incorporadora fala sobre a inovação pensada no cliente durante o Conecta Imobi 2023\n\nGuilherme Sawaya, diretor de Incorporação e Inovação, mediou painel que aconteceu em um dos maiores eventos do mercado imobiliário do País\n\n', 'A Yuny Incorporadora esteve presente em um dos maiores e mais importantes eventos imobiliários da América Latina, o Conecta Imobi 2023, participando de um dos painéis que representa uma importante vertente da incorporadora, a Inovação.\n\nNo evento, que tem como objetivo trazer informações e compartilhar tendências do mercado imobiliário, o diretor de Incorporação e Inovação da empresa, Guilherme Sawaya, mediou o painel ‘Qual inovação o cliente realmente demanda no mercado imobiliário?’, com os palestrantes Debora Bertini, da MPD Engenharia, e Rafael Milagre, da LAR Imóveis.\n\nSawaya levou para debate pontos importantes relacionados ao desenvolvimento do mercado, como da inteligência de dados para personalizar um projeto. ‘Na Yuny, por exemplo, descobrimos que 40% da nossa base de clientes não é de São Paulo e isso nos ajudou a pensar no Uapé, um empreendimento inspirado no Pará, que será construído na rua de mesmo nome, em Higienópolis, e traz elementos do Estado em sua arquitetura’, explica.\n\nO diretor da Yuny também falou sobre a cultura de inovação para a sobrevivência das empresas nos próximos anos. ‘É fundamental que os colaboradores tenham a liberdade de testar e errar porque é dessa forma que as soluções são encontradas e podem promover crescimento’, diz Sawaya.\n\nA Yuny, conhecida por seus empreendimentos de alto padrão, conta com um hub de inovação, o YunyLab, que desenvolve soluções para melhorar a jornada do consumidor. Em 2020, a empresa tornou-se sócia da Inbuilt, uma startup que desenvolve soluções de realidade aumentada para construção civil, com foco no cliente.', 'yuny-incorporadora-fala-sobre-a-inovacao-pensada-no-cliente-durante-o-conecta-imobi-2023', '2024-09-24 12:39:33.155000', '2024-09-24 12:40:35.188000', '2024-09-24 12:39:44.718000', 1, 1),
(8, 'Voz do cliente faz, cada vez mais, a diferença', 'Executivos de CPTM, Latam Airlines, Portobello e Will Bank analisam os avanços nas ações de escuta ativa\n\n', 'Paralelamente ao movimento de inovações que nascem da criatividade de colaboradores e especialistas, cresce também o reconhecimento do papel da voz do cliente nesse processo. Tanto que já é possível ver marcas mais antenadas à necessidade de ter o cliente no centro das decisões com ações coordenadas para que haja uma dinâmica consistente e perene de escuta ativa junto à base. E não só de fora para dentro. Uma vez que a manifestação do cliente foi capturada na ponta, começa o movimento interno para que os colaboradores sejam também ouvidos pelas lideranças, em um processo contínuo até que se transforme em ação. Exemplificando com casos reais e práticos, Karina Buccelli, head de CX no Will Bank, Maria Carolina Mendes Garcia, customer voice lead da Portobello, Rodrigo Pontes dos Santos, gerente de marketing e comunicação da CPTM, e Sérgio Vianna, gerente sênior do contact center da Latam Brasil, participaram, hoje (11), do primeiro encontro especial em homenagem à Semana do Cliente, durante a 773ª edição da Série Lives – Entrevista ClienteSA.\n\nPrimeira a ser chamada para o debate, Karina aproveitou para enaltecer a importância da live ao tratar desse tema na Semana do Cliente, garantindo tratar-se de algo que tem contribuído para o propósito do Will Bank de favorecer o acesso ao crédito. Aproveitando também para responder uma questão da audiência, ela disse que a escuta ativa é um processo contínuo, sendo fundamental que, assim como toda a empresa tem de prestar atenção à voz do cliente, as lideranças devem exercer a mesma escuta ativa junto aos colaboradores. ‘Os profissionais que estão na linha de frente no trato com os clientes detém uma riqueza enorme de informações, sendo um desafio grande para todas as empresas superar a complexidade de que esses dados ecoem por toda a organização, gerando providências a partir dos insights surgidos nesse processo.’\n\nPor sua vez, Carolina destacou a importância de mostrar aos clientes, via redes sociais, o quanto suas opiniões capturadas em conversas e pesquisas têm gerado melhorias. Na sequência, ela contou que a Portobello desenvolveu o programa ‘O Cliente no Centro’, por meio do qual dados são extraídos em cada etapa da jornada, seja via pesquisas ou outras estratégias de captura. Essa ação frutificou também em outra iniciativa, a ‘Franqueados no Centro’, cuja escuta ativa se dá junto àqueles que estão no contato direto com os clientes e, portanto, gerando novos dados a serem analisados e tratados. ‘Da mesma forma que temos sistemas robustos criados para ouvir o cliente, desenvolvemos também iniciativas consistentes para extrair dos colaboradores e franqueados, que estão na ponta no dia a dia, sua própria voz e a decodificação que fazem na escuta ativa junto aos clientes.’\n\nDepois foi a vez de Rodrigo chamar a atenção para o recém-criado Comitê de Clientes, ponto alto da comemoração do Dia do Cliente na CPTM, exatamente como culminância do esforço de consolidar a cultura da centralidade do cliente em uma organização que, embora exista há pouco mais de três décadas, é fruto de uma junção de empresas em um processo de mais de um século. Nesse sentido, ele fez questão de ressaltar que nessa cultura já existe uma dinâmica própria, antecedendo as tomadas de decisões, que é a escuta ativa tanto junto ao cliente externo quanto ao interno. ‘Faz parte de todo o investimento da empresa em preservar sua imagem e divulgar seus produtos e serviços, em termos de recursos e esforços, tanto a comunicação externa quanto preparar os agentes de atendimento para lidar com o cliente.’\n\nJá Sérgio ressaltou a consolidação da cultura cliente dentro da Latam, como realizadora de sonhos dos consumidores, considerando toda semana como sendo a do cliente, mas sabendo a importância de realizar iniciativas especiais nesta que homenageia o dia especial. Segundo ele, dentro dessa cultura da empresa se desenvolveu, quase como uma dinâmica institucionalizada, o que chamam de ‘circuito da resolutividade’. Trata-se de informações geradas a partir dos colaboradores que estão no front do atendimento, sobre algo a ser melhorado e que perpassa, se necessário, todos os comitês decisórios da companhia. Na sua concepção, ouvir o que o cliente diz tem que se transformar em um hábito de todos. ‘Entretanto, consideramos necessário também existir um momento formal, programado, para que todas as lideranças escutem diretamente o que o cliente está manifestando, seja presencialmente, nos aeroportos, ou por meio do call center. E, aqui, não só praticamos o conceito de empatia, como vamos além, utilizando o termo ‘compaixão’, que é se colocar de verdade no lugar do outro e partir para a ação resolutiva.’\n\nConvidados a darem mais exemplos de ações que resultaram do processo de escuta ativa nas organizações, o próprio Rodrigo retomou a palavra para falar do programa que permite aos clientes fazerem agora antecipação de voos, algo que brotou de instâncias recorrentes dos próprios clientes. De forma bem humorada, Karina destacou que no Will se usa muito a IA, mas também a IC (inteligência do cliente), exemplificando com sugestões que estão sendo aproveitadas, da mesma forma que as surgidas por inteligência artificial, dando cada vez mais autossuficiência ao app para as necessidades do cliente e em prevenção a fraudes. Depois Carolina ressaltou que esse processo especial de escuta ativa acontece pelo que é chamado na Portobello de ‘rituais estratégicos’, de onde surgiu, por exemplo, o cálculo quantitativo de produtos elaborado de forma personalizada para os clientes. Enquanto Rodrigo mencionou ações envolvendo cuidados com animais, algo que surgiu de demandas internas e externas da companhia.\n\nHouve tempo ainda para os convidados aprofundarem subtemas tais como criação de áreas específicas sobre a voz do cliente, tratamento de dados, ferramentas utilizadas, entre outros. O vídeo, na íntegra, está disponível em nosso canal no Youtube, o ClienteSA Play, junto com as outras 772 lives realizadas desde março de 2020. Aproveite para também se inscrever. A programação especial da Semana do Cliente da Série Lives – Entrevista ClienteSA prossegue amanhã (12) com o tema ‘Digital: A jornada do cliente hiperconectado’, assunto que reunirá Uribe Teófilo, gerente de produtos da Youse, Mauricio Cascão, CEO da Mosaico (Zoom, Buscapé e Bondfaro), Vander Teodosio, head e-commerce e marketing da Forever Liss, Priscila Braga, head de restaurantes do Rappi Brasil e Diego Arruda, diretor de negócios da Agrofy.\n\nNa quarta, será a vez do encontro sobre ‘Customer Insights: Os dados, as descobertas e a cultura cliente’, com Victor Nuti, sócio da StoneCo, Milena Shimizu, gerente de consumer insights da Nestlé Brasil, Mariana Cerone, gerente executiva de consumer da Pluxee e Ana Karina Scarlato, vice-presidente de produtos e inovação da Mastercard Brasil; na quinta, ‘Inovação: O caminho para surpreender na CX’ terá como convidados Karla Danianne, COO do Charlie, Jimmy Lui, superintendente de inovação e open finance do banco BV, Paula Oliveira, gerente de student experience da Alura, Natasha Iglesias Brunhara, gerente de design e CX da Cielo e Rodrigo Tavares, vice-presidente sênior de CX da RecargaPay; e, encerrando a semana especial, o ‘Sextou’ tratará da temática ‘Cultura Cliente: A visão customer centric está consolidada?’, reunindo Alex Quezada, sócio e vice-presidente de marketing e vendas da 5àsec, Elisangela Silva, gerente de customer experience e continuous improvement da DHL, Guilherme Sawaya, diretor de incorporação e inovação da Yuny Incorporadora, Julio Plum, diretor de CX da Alelo e Marco Barbosa, diretor de clientes, CRM e supply chain da Azul.', 'voz-do-cliente-faz-cada-vez-mais-a-diferenca', '2024-09-24 12:41:38.580000', '2024-09-24 12:41:42.421000', '2024-09-24 12:41:42.417000', 1, 1);
INSERT INTO `articles` (`id`, `title`, `description`, `content`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(9, 'Após crise na pandemia, hotéis passam por retrofit e viram residências com locação flexível', 'Novo estilo de hospedagem mescla parte das comodidades da hotelaria tradicional com o custo menor e o atendimento 100% digital do aluguel por temporada', 'A pandemia do coronavírus acelerou uma transformação no jeito de se hospedar em viagens pelo Brasil. O setor, que já tinha sido abalado pela chegada de plataformas on-line como Airbnb, sofreu um duro golpe com o isolamento social necessário para conter a Covid-19 e, na reabertura, novos modelos de negócios ganharam espaço.\n\nHotéis que não sobreviveram à crise são alvo agora de retrofit, ou seja, uma repaginação bancada por incorporadoras e investidores que transformam as tradicionais suítes em apartamentos para aluguel por temporada. Para o turista, surge um novo estilo de hospedagem, que mescla parte das comodidades da hotelaria tradicional – como café da manhã ou serviço de limpeza, mas sob demanda – com o custo menor e o atendimento 100% digital do aluguel por temporada.\n\nNesse negócio, entram novos players: das construtoras responsáveis pelas obras aos investidores que aportam o capital via fundos, passando pelos proprietários dos imóveis e por startups que fazem a gestão da hospedagem.\n\nUnidades de até 45 metros quadrados\n\nA SIG Incorporadora é a responsável, na Zona Sul do Rio de Janeiro, pelos retrofits do centenário Hotel Glória e do Hotel Everest, em Ipanema. Ambos têm previsão de entrega em 2026. O sócio da SIG Otávio Grimberg explica que os apartamentos são adquiridos por diferentes donos, que têm liberdade para usufruir do espaço ou locar para terceiros. Nesse caso, é possível contar com serviços de gestão oferecidos por startups, que cuidam desde o anúncio até a limpeza das unidades.\n\n– Depois da Copa e da Olimpíada, o Rio ficou com excesso de hotéis, que estavam mal das pernas e não resistiram à pandemia. Muitos investidores viram aí um filão de mercado, de olho na locação. A procura também é grande por pessoas solteiras ou que moram em outros estados – conta Grimberg. – Para a incorporadora é um bom negócio porque há muita procura por unidades pequenas. Não existia, até pouco tempo atrás, na cidade, apartamento até 45 metros quadrados.\n\nO advogado de Direito Imobiliário Raphael Mançur destaca que muitas cidades passaram a conceder incentivos fiscais, como redução do IPTU e isenção do ITBI (imposto de transmissão), para facilitar que prédios antigos, principalmente de regiões centrais, saíssem do abandono. Além disso, a lei federal 14.405, deste ano, permitiu que a mudança de destinação comercial para residencial dependa somente da aprovação de 2/3 dos condôminos, não mais de unanimidade.\n\n– Houve uma desburocratização. Agora, não precisa mais demolir. Você pode manter a estrutura e fazer todas as adequações. Há várias dessas obras em andamento no Rio, como as dos hotéis Aymoré e Paysandu – lembra Mançur.\n\nEnquanto a estrutura é mantida, é projetado, no interior, um ambiente completamente novo, com inclusão de uma pequena cozinha em cada unidade e alterações na decoração. A área de lazer também é toda repaginada, para oferecer estrutura de condomínio de luxo – boa piscina, academia bem equipada e até espaço de coworking. Os viajantes têm acesso, então, a um ambiente de alto padrão por um preço abaixo do cobrado em hotéis no mesmo nível. No Everest, por exemplo, estão previstos um rooftop com vista para Ipanema e para a Lagoa Rodrigo de Freitas e a inclusão de varandas nas unidades.\n\nMaria Gal, atriz e influenciadora, de 46 anos, mora no Rio e viaja semanalmente a trabalho para São Paulo. Nos últimos seis meses, trocou os hotéis tradicionais pelas hospedagens flexíveis:\n\n– Já fiquei hospedada de cinco dias a três semanas direto. O preço acaba sendo mais em conta, e a cozinha faz com que eu me sinta em casa.\n\nDo ponto de vista do investidor, os custos de manutenção de uma unidade residencial com locação flexível são bem menores do que os de um quarto de hotel: o check-in digital substitui o cadastro com recepcionista; os serviços são oferecidos sob demanda, com cobrança extra; e o menor número de funcionários diminui o valor do condomínio.\n\nO uso da tecnologia ainda permite, segundo Luiz Mazetto, diretor de Operações da gestora de imóveis Casai, aumentar as receitas com locações. O mesmo apartamento é disponibilizado no portal da empresa e em diversos outros sites, alcançando quem tem interesse em permanecer por um dia, um mês ou um ano. Com um público potencial amplo, dificilmente as unidades ficam vazias.\n\n– Oferecemos retornos até 70% maiores que aluguéis tradicionais – afirma Mazetto.\n\nComodidades com custo menor\n\nPara quem se hospeda, também há economia. Enquanto a diária de um hotel quatro estrelas em Aphaville, São Paulo, por exemplo, sai em torno de R$ 370, um apartamento de locação flexível no mesmo bairro, com categoria semelhante, sai a R$ 240.\n\nThomaz Guz, fundador e CEO da Nomah, startup de locação flexível que se fundiu no mês passado com a Casai, vê com otimismo a expansão do negócio. Hoje, a empresa faz a gestão do antigo Hotel Massis, em São Paulo.\n\n– De um lado, tinha a hotelaria, burocrática, e do outro, o aluguel direto com o dono, imprevisível e com vários perrengues. Oferecemos o meio termo – diz Guz. – O cliente manda uma selfie e, com a biometria facial, consegue entrar no prédio. Se precisar de algo, conta com atendimento por WhatsApp 24 horas.\n\nModelo resiliente\n\nWilliam Astolfi, fundador da startup BHomy, acredita que, além do conforto e do atendimento, o sucesso das locações flexíveis está diretamente relacionado à estética. Por isso, a empresa conta com um time de arquitetos que oferecem o serviço de design para os proprietários. O antigo Mercury Paraíso, também em São Paulo, foi redecorado antes de virar residencial para locações de curta e longa temporadas.\n\n– Dentro desse mesmo prédio, operamos imóveis que foram reformados e que não tiveram ajustes. Nos retrofitados, o faturamento é 50% maior, porque consigo cobrar mais pelas diárias e eles ficam mais tempo ocupados – comenta Astolfi.\n\nA startup Charlie, que surgiu em junho de 2020, também tem sua própria equipe de arquitetos para deixar os apartamentos mais enxutos e eficientes. Para o CEO Allan Sztokfisz, há uma forte demanda por aluguel por temporada no Brasil:\n\n– Tivemos prova de que esse modelo funcionava porque, na pandemia, enquanto os hotéis mantinham ocupação baixíssima, conseguíamos manter ocupação alta, em cerca de 70%, por entregar o melhor custo-benefício. Acredito que esse é o modelo mais resiliente de hospedagem.\n\nA startup, que já tem parcerias com mais de 26 incorporadoras nacionais, entre elas Trisul, Eztec, Cyrela, Cury, Gamaro, Lavvi, Next Realty, Yuny e Tecnisa, faz a gestão de hotéis retrofitados em São Paulo e Porto Alegre. No Rio, conforme conta Sztokfisz, tem duas negociações em andamento, de hotéis localizados no Leblon e em Copacabana.', 'apos-crise-na-pandemia-hoteis-passam-por-retrofit-e-viram-residenciais-com-locacao-flexivel', '2024-09-24 12:42:59.970000', '2024-09-24 12:47:29.276000', '2024-09-24 12:43:01.244000', 1, 1),
(10, 'Os novos e inúmeros caminhos do consumidor no digital', 'Executivos de Rappi, Youse, Mosaico, Forever Liss e Agrofy refletem sobre os ecossistemas que vão redefinindo as relações de consumo\n\n', 'Embora o impulso gerado pela pandemia no mundo digital ainda não tenha se configurado em um crescimento contínuo, já que o e-commerce se mantém em um patamar de 10% a 15% do varejo total no País, um novo cenário vai se desenhando e apontando para perspectivas mais promissoras. Trata-se da formação de ecossistemas em que um negócio potencializa o outro, notadamente pelos caminhos do figital. Ao esmiuçar as nuances desse panorama que agita os mundos on-line e off-line, Priscila Braga, head de restaurantes do Rappi, Uribe Teófilo, gerente de produtos da Youse, Mauricio Cascão, CEO da Mosaico (Zoom, Buscapé e Bondfaro), Vander Teodosio, head e-commerce e marketing da Forever Liss, e Diego Arruda, diretor de negócios da Agrofy, demonstraram que ainda se impõe às empresas a necessidade de estratégias inteligente de engajamento dos consumidores conectados até à educação dos que ainda não descobriram as vantagens do on-line. Eles participaram, hoje (12), da 774ª edição da Série Lives – Entrevista ClienteSA, no segundo encontro dedicado à Semana do Cliente.\n\nInstigados a iniciarem o bate-papo analisando a amplitude que o digital consegue atingir, Uribe foi o primeiro a se manifestar indicando que a contribuição da Youse segue na direção de contribuir para a mudança do atual cenário do mercado de seguros, que já é, por si só, inibido pela cultura da sociedade, com apenas 20% dos brasileiros possuindo apólices de seguros. No seu entendimento, trata-se de conseguir, com o digital, democratizar o segmento e fazer com que o valor que esse produto entrega chegue ao conhecimento das pessoas. Em resumo, com mais canais de acesso a conteúdos e ofertas de produtos, a ampliação do mercado tende a ocorrer.\n\nPor sua vez, lembrando que o Rappi é um superapp que oferece a conveniência digital em verticais que vão muito além que só mercados e restaurantes, Priscila disse que foram esses segmentos que impulsionaram o negócio notadamente em função da pandemia. Só que, com esse crescimento de uma cultura de delivery no País, abriram-se as portas para o consumo on-line em praticamente todas as outras vertentes, tais como produtos de beleza, papelarias e varejo em geral. Ela vê o crescimento do digital também a partir da percepção da facilidade de adoção que tem ocorrido pelos consumidores, em ênfase acentuada nos grandes centros urbanos. ‘Isso significa que existe ainda um mar de oportunidades mesmo quando pensamos apenas no delivery.’\n\nNo que foi corroborada por Vander, cujo negócio de produtos voltados para cuidados capilares junto ao público feminino via on-line, a Forever Liss, se insere nos 15% que representam o total do digital no varejo. Ele mensura um potencial enorme de crescer pelo que observa nas ativações mensais que a empresa realiza nas mídias sociais, atingindo um público em torno de 50 milhões de pessoas. No entanto, essa movimentação tem mostrado à marca, também, a necessidade de atuar estrategicamente no figital, ou seja, estar presente também no mundo off-line e possibilitando, pelo digital, entregas cada vez mais rápidas.\n\nO que levou Diego a desenhar o cenário do que ocorre hoje no mundo agro. Segundo ele, existem hoje cerca de cinco milhões de produtores rurais, sendo que aproximadamente 25% já conhecem o caminho dos sites e marketplaces. Só a Agrofy registra uma média de 600 mil visitas mensais, o que gira em torno de 10% a 12% desse universo. Afunilando os números, em termos de conversão de vendas, chega-se à constatação de que apenas algo em torno de 2% do que é comercializado no setor agropecuário brasileiro acontece pelo virtual. ‘Mas o cenário vai se transformando, com a consolidação das tecnologias no campo, favorecendo que o produtor rural se torne um consumidor omnichannel. Ou seja, ele visita feiras e eventos de negócios no campo, mas também já se orienta pelo on-line para suas tomadas de decisões. Nossas pesquisas mostram que 70% das compras realizadas por eles no off-line foram influenciadas de forma decisiva pelo digital, principalmente via marketplace, como é o nosso caso. Tudo isso sendo modificado pelas novas gerações que vão assumindo os negócios dos pais em um agro cada vez mais tecnológico e conectado.’\n\nEnquanto Maurício forneceu mais números. Com a apresentação de algo próximo a 300 milhões de ofertas em seu ecossistema, envolvendo a média de 30 milhões de visitantes mensais, a empresa procura trabalhar de forma sistêmica, ou seja, englobando praticamente todas as grandes marcas do varejo brasileiro na sua comparação de preços. ‘Então, agora, com o banco Pan no ecossistema, além de cumprir nosso propósito de possibilitar que o consumidor economize tempo e dinheiro, participamos do processo também com oferta de crédito. Trata-se de ajudar não só a comprar, mas também a pagar. Porque está mais do que comprovado, em pesquisas, que o crédito é o combustível do varejo.’\n\nAinda houve tempo para responderem a questões da audiência, como sobre a atenção dada aos consumidores hiperconectados, que se transformam também em influenciadores de forma natural, levando Priscila a falar do programa do Rappi chamado de ‘Assistente Pessoal’, que permite a esses frequentadores contumazes do app um contato direto com as lideranças da empresa caso queiram se manifestar positiva ou negativamente em relação a algum evento ou interação. O debate seguiu abordando também a educação dos usuários para se tornarem mais conectados, estratégias de engajamento digital, entre outros temas. O vídeo, na íntegra, está disponível em nosso canal no Youtube, o ClienteSA Play, junto com as outras 773 lives realizadas desde março de 2020. Aproveite para também se inscrever.\n\nA Série Lives – Entrevista ClienteSA, dentro da programação especial da Semana do Cliente, segue amanhã (13) com o tema ‘Customer Insights: Os dados, as descobertas e a cultura cliente’, trazendo Victor Nuti, sócio da StoneCo, Milena Shimizu, gerente de consumer insights da Nestlé Brasil, Mariana Cerone, gerente executiva de consumer da Pluxee e Ana Karina Scarlato, vice-presidente de produtos e inovação da Mastercard Brasil. Na quinta, será a vez de Karla Danianne, COO do Charlie, Jimmy Lui, superintendente de inovação e open finance do banco BV, Paula Oliveira, gerente de student experience da Alura, Natasha Iglesias Brunhara, gerente de design e CX da Cielo, e Rodrigo Tavares, vice-presidente sênior de CX da RecargaPay, com o tema ‘Inovação: O caminho para surpreender na CX’; e, encerrando a semana especial, o ‘Sextou’ tratará da temática ‘Cultura Cliente: A visão customer centric está consolidada?’, reunindo Alex Quezada, sócio e vice-presidente de marketing e vendas da 5àsec, Elisangela Silva, gerente de customer experience e continuous improvement da DHL, Guilherme Sawaya, diretor de incorporação e inovação da Yuny Incorporadora, Julio Plum, diretor de CX da Alelo, e Marco Barbosa, diretor de clientes, CRM e supply chain da Azul.', 'os-novos-e-inumeros-caminhos-do-consumidor-no-digital', '2024-09-24 12:49:15.328000', '2024-09-24 12:49:15.849000', '2024-09-24 12:49:15.846000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles_author_links`
--

DROP TABLE IF EXISTS `articles_author_links`;
CREATE TABLE `articles_author_links` (
  `id` int UNSIGNED NOT NULL,
  `article_id` int UNSIGNED DEFAULT NULL,
  `writer_id` int UNSIGNED DEFAULT NULL,
  `article_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles_author_links`
--

INSERT INTO `articles_author_links` (`id`, `article_id`, `writer_id`, `article_order`) VALUES
(1, 1, 2, 1),
(2, 2, 1, 1),
(3, 3, 1, 2),
(4, 4, 2, 2),
(5, 5, 2, 3),
(6, 6, 1, 3),
(7, 7, 1, 4),
(8, 8, 2, 4),
(9, 9, 2, 5),
(10, 10, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories_links`
--

DROP TABLE IF EXISTS `articles_categories_links`;
CREATE TABLE `articles_categories_links` (
  `id` int UNSIGNED NOT NULL,
  `article_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `category_order` double UNSIGNED DEFAULT NULL,
  `article_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles_categories_links`
--

INSERT INTO `articles_categories_links` (`id`, `article_id`, `category_id`, `category_order`, `article_order`) VALUES
(1, 4, 1, 2, 1),
(2, 4, 5, 1, 1),
(3, 7, 1, 1, 2),
(4, 8, 2, 0, 1),
(5, 9, 1, 0, 3),
(6, 10, 2, 1, 2),
(7, 10, 4, 0, 1),
(8, 1, 3, 1, 1),
(9, 5, 5, 1, 2),
(10, 2, 1, 2, 4),
(11, 2, 5, 1, 3),
(12, 6, 4, 1, 2),
(13, 3, 5, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `articles_components`
--

DROP TABLE IF EXISTS `articles_components`;
CREATE TABLE `articles_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `rank` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `rank`) VALUES
(1, 'Notícias', 'news', '2024-09-10 13:28:08.710000', '2024-09-24 13:19:05.656000', 1, 1, NULL),
(2, 'Tecnologia e Inovação', 'tech', '2024-09-10 13:28:53.067000', '2024-09-24 13:19:21.264000', 1, 1, 2),
(3, 'Setor imobiliário', 'setor-imobiliario', '2024-09-10 13:30:16.874000', '2024-09-24 13:18:29.710000', 1, 1, 3),
(4, 'Sustentabilidade', 'nature', '2024-09-10 13:30:35.878000', '2024-09-24 13:18:47.842000', 1, 1, 1),
(5, 'Mercado Financeiro', 'mercado-financeiro', '2024-09-10 13:30:54.391000', '2024-09-24 13:18:09.403000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_components`
--

DROP TABLE IF EXISTS `categories_components`;
CREATE TABLE `categories_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_blocks_faqs`
--

DROP TABLE IF EXISTS `components_blocks_faqs`;
CREATE TABLE `components_blocks_faqs` (
  `id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_blocks_faqs`
--

INSERT INTO `components_blocks_faqs` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `components_blocks_faqs_components`
--

DROP TABLE IF EXISTS `components_blocks_faqs_components`;
CREATE TABLE `components_blocks_faqs_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_blocks_faqs_components`
--

INSERT INTO `components_blocks_faqs_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'elements.title-and-description', 'questions', 1),
(2, 1, 2, 'elements.title-and-description', 'questions', 2),
(3, 2, 3, 'elements.title-and-description', 'questions', 1),
(4, 2, 4, 'elements.title-and-description', 'questions', 2),
(5, 2, 5, 'elements.title-and-description', 'questions', 3);

-- --------------------------------------------------------

--
-- Table structure for table `components_blocks_heroes`
--

DROP TABLE IF EXISTS `components_blocks_heroes`;
CREATE TABLE `components_blocks_heroes` (
  `id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_blocks_heroes`
--

INSERT INTO `components_blocks_heroes` (`id`) VALUES
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `components_blocks_heroes_components`
--

DROP TABLE IF EXISTS `components_blocks_heroes_components`;
CREATE TABLE `components_blocks_heroes_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_blocks_heroes_components`
--

INSERT INTO `components_blocks_heroes_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(2, 2, 3, 'elements.button', 'buttons', 2),
(6, 2, 2, 'elements.card', 'slides', 3),
(8, 2, 3, 'elements.card', 'slides', 1),
(20, 2, 8, 'elements.card', 'slides', 2),
(79, 3, 12, 'elements.card', 'slides', 1),
(81, 4, 13, 'elements.card', 'slides', 1),
(87, 5, 14, 'elements.card', 'slides', 1),
(89, 6, 15, 'elements.card', 'slides', 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_blocks_media_cards`
--

DROP TABLE IF EXISTS `components_blocks_media_cards`;
CREATE TABLE `components_blocks_media_cards` (
  `id` int UNSIGNED NOT NULL,
  `media_position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_blocks_media_cards`
--

INSERT INTO `components_blocks_media_cards` (`id`, `media_position`) VALUES
(1, 'left');

-- --------------------------------------------------------

--
-- Table structure for table `components_blocks_media_cards_components`
--

DROP TABLE IF EXISTS `components_blocks_media_cards_components`;
CREATE TABLE `components_blocks_media_cards_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_blocks_media_cards_components`
--

INSERT INTO `components_blocks_media_cards_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 16, 'elements.card', 'card', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_buttons`
--

DROP TABLE IF EXISTS `components_elements_buttons`;
CREATE TABLE `components_elements_buttons` (
  `id` int UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_elements_buttons`
--

INSERT INTO `components_elements_buttons` (`id`, `label`, `url`, `icon`, `color`) VALUES
(1, 'teste', '/teste', 'FcAddColumn', '#561c1c'),
(2, 'More', '/news', 'AiFillNotification', '#8c1414'),
(3, 'Click me', '/click', 'AiFillAlipayCircle', '#7c2222'),
(4, 'More cards', '/more', 'AiFillCreditCard', '#431818'),
(5, 'veja todas', '/news', 'AiFillAlipaySquare', '#ce2d2d');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_cards`
--

DROP TABLE IF EXISTS `components_elements_cards`;
CREATE TABLE `components_elements_cards` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_elements_cards`
--

INSERT INTO `components_elements_cards` (`id`, `title`, `description`, `label`, `url`, `background`, `color`) VALUES
(1, 'Apartamento 70 m² - Padrão', 'Donec dolor nisi, pulvinar id leo vel, semper sollicitudin nunc. Integer nec diam maximus, porttitor est in, dictum sapien. Aliquam erat volutpat. Pellentesque non odio est. Aenean commodo nec nisl a laoreet. Praesent ut suscipit metus. Quisque est libero, commodo id urna quis, vehicula aliquam mauris. Duis placerat efficitur gravida. Sed convallis elit eget porta volutpat.', NULL, NULL, NULL, NULL),
(2, 'Sauna e Sala de Massagem', '**Coloque a sua rotina no ritmo certo.**\nEspaços dedicados para você respirar, relaxar e se curtir. Sua vida merece momentos como esses.', 'Agende uma visita', '/click', '#ffffff', NULL),
(3, 'Piscina', '**Atmosfera urbana em um novo estado de espírito**\nPiscina no rooftop com vista para cidade oferece momentos para relaxar e curtir sozinho ou em família.', 'Simule agora', '/click', '#ffffff', NULL),
(4, 'Apartamento 70 m² - Sala Ampliada ', 'Donec dolor nisi, pulvinar id leo vel, semper sollicitudin nunc. Integer nec diam maximus, porttitor est in, dictum sapien. Aliquam erat volutpat. Pellentesque non odio est. Aenean commodo nec nisl a laoreet. Praesent ut suscipit metus. Quisque est libero, commodo id urna quis, vehicula aliquam mauris. Duis placerat efficitur gravida. Sed convallis elit eget porta volutpat.', NULL, NULL, '#000000', NULL),
(5, 'Apartamento 76 m² - Padrão ', 'Donec dolor nisi, pulvinar id leo vel, semper sollicitudin nunc. Integer nec diam maximus, porttitor est in, dictum sapien. Aliquam erat volutpat. Pellentesque non odio est. Aenean commodo nec nisl a laoreet. Praesent ut suscipit metus. Quisque est libero, commodo id urna quis, vehicula aliquam mauris. Duis placerat efficitur gravida. Sed convallis elit eget porta volutpat.', NULL, NULL, '#000000', NULL),
(6, 'Apartamento 92 m² - Padrão ', 'Donec dolor nisi, pulvinar id leo vel, semper sollicitudin nunc. Integer nec diam maximus, porttitor est in, dictum sapien. Aliquam erat volutpat. Pellentesque non odio est. Aenean commodo nec nisl a laoreet. Praesent ut suscipit metus. Quisque est libero, commodo id urna quis, vehicula aliquam mauris. Duis placerat efficitur gravida. Sed convallis elit eget porta volutpat.', NULL, NULL, '#000000', NULL),
(7, 'Apartamento 92 m² - Sala Ampliada ', 'Donec dolor nisi, pulvinar id leo vel, semper sollicitudin nunc. Integer nec diam maximus, porttitor est in, dictum sapien. Aliquam erat volutpat. Pellentesque non odio est. Aenean commodo nec nisl a laoreet. Praesent ut suscipit metus. Quisque est libero, commodo id urna quis, vehicula aliquam mauris. Duis placerat efficitur gravida. Sed convallis elit eget porta volutpat.', NULL, NULL, '#000000', NULL),
(8, 'Apartamentos', '**Iluminação e ventilação naturais que trazem mais vida aos ambientes.**\nA arquitetura foi pensada para receber a luminosidade e beleza de uma das vistas mais deslumbrantes entre os bairros de São Paulo. ', 'Fale com o corretor', '/click', '#ffffff', NULL),
(9, 'Card 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL),
(10, 'Card 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL),
(12, 'Relatório de Sustentabilidade', 'Crescendo de forma sustentável', NULL, NULL, '#ffffff', NULL),
(13, 'Relatório de Sustentabilidade', 'Crescendo de forma sustentável', NULL, NULL, NULL, NULL),
(14, 'Quem Somos', 'Acreditamos que um empreendimento imobiliário pode transformar o indivíduo e o entorno.', NULL, NULL, NULL, NULL),
(15, ' ', NULL, NULL, NULL, NULL, NULL),
(16, 'Teste', 'Descricao vai aqui', 'Clique agora', '/teste', '#ffffff', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_links`
--

DROP TABLE IF EXISTS `components_elements_links`;
CREATE TABLE `components_elements_links` (
  `id` int UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_elements_links`
--

INSERT INTO `components_elements_links` (`id`, `label`, `url`, `icon`) VALUES
(1, 'Sobre a Yuny', '/sobre', 'AiOutlineHome'),
(2, 'Empreendimentos', '/empreendimentos', 'AiOutlineAppstore'),
(3, 'Blog', '/blog', 'AiOutlineFileText'),
(4, 'Investidores', '/investidores', 'AiOutlineDollar');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_title_and_descriptions`
--

DROP TABLE IF EXISTS `components_elements_title_and_descriptions`;
CREATE TABLE `components_elements_title_and_descriptions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_elements_title_and_descriptions`
--

INSERT INTO `components_elements_title_and_descriptions` (`id`, `title`, `description`) VALUES
(1, 'Como faz?', 'Faz assim...'),
(2, 'E se nao fizer?', 'nao funciona'),
(3, 'Funcionou?', 'Claro....'),
(4, 'sei nao', 'confia'),
(5, 'Será', 'certeza');

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_carousels`
--

DROP TABLE IF EXISTS `components_sections_carousels`;
CREATE TABLE `components_sections_carousels` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_sections_carousels`
--

INSERT INTO `components_sections_carousels` (`id`, `title`) VALUES
(1, 'Teste carousel'),
(2, 'Galeria de Plantas'),
(3, 'Carousel');

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_carousels_components`
--

DROP TABLE IF EXISTS `components_sections_carousels_components`;
CREATE TABLE `components_sections_carousels_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_sections_carousels_components`
--

INSERT INTO `components_sections_carousels_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 2, 1, 'elements.card', 'cards', 1),
(2, 2, 4, 'elements.button', 'buttons', 1),
(13, 2, 4, 'elements.card', 'cards', 3),
(22, 2, 5, 'elements.card', 'cards', 4),
(23, 2, 6, 'elements.card', 'cards', 5),
(24, 2, 7, 'elements.card', 'cards', 6),
(52, 3, 9, 'elements.card', 'cards', 1),
(53, 3, 10, 'elements.card', 'cards', 2);

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_latest_news`
--

DROP TABLE IF EXISTS `components_sections_latest_news`;
CREATE TABLE `components_sections_latest_news` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_sections_latest_news`
--

INSERT INTO `components_sections_latest_news` (`id`, `title`) VALUES
(1, 'What\'s new?'),
(2, 'Latest News'),
(3, 'More news'),
(4, 'Ulitmas noticias'),
(5, 'Noticias');

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_latest_news_articles_links`
--

DROP TABLE IF EXISTS `components_sections_latest_news_articles_links`;
CREATE TABLE `components_sections_latest_news_articles_links` (
  `id` int UNSIGNED NOT NULL,
  `latest_news_id` int UNSIGNED DEFAULT NULL,
  `article_id` int UNSIGNED DEFAULT NULL,
  `article_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_sections_latest_news_articles_links`
--

INSERT INTO `components_sections_latest_news_articles_links` (`id`, `latest_news_id`, `article_id`, `article_order`) VALUES
(1, 1, 1, 2),
(2, 1, 6, 1),
(3, 1, 5, 0),
(4, 2, 5, 1),
(5, 2, 2, 2),
(6, 2, 3, 6),
(7, 2, 6, 5),
(8, 2, 4, 4),
(9, 2, 1, 3),
(10, 3, 5, 1),
(11, 3, 3, 4),
(12, 3, 1, 3),
(13, 3, 2, 2),
(14, 4, 5, 2),
(15, 4, 6, 1),
(16, 4, 9, 0),
(17, 5, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_latest_news_components`
--

DROP TABLE IF EXISTS `components_sections_latest_news_components`;
CREATE TABLE `components_sections_latest_news_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_sections_latest_news_components`
--

INSERT INTO `components_sections_latest_news_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 2, 2, 'elements.button', 'buttons', 1),
(35, 4, 5, 'elements.button', 'buttons', 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_meta_socials`
--

DROP TABLE IF EXISTS `components_shared_meta_socials`;
CREATE TABLE `components_shared_meta_socials` (
  `id` int UNSIGNED NOT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_seos`;
CREATE TABLE `components_shared_seos` (
  `id` int UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `keywords` longtext,
  `meta_robots` varchar(255) DEFAULT NULL,
  `structured_data` json DEFAULT NULL,
  `meta_viewport` varchar(255) DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `components_shared_seos`
--

INSERT INTO `components_shared_seos` (`id`, `meta_title`, `meta_description`, `keywords`, `meta_robots`, `structured_data`, `meta_viewport`, `canonical_url`) VALUES
(1, 'Website', 'Empreendimentos imobiliários que transformam o indivíduo e a cidade. Conheça a Yuny Incorporadora.', 'Empreendimentos, Imóveis, Incorporadora, Construtora', NULL, NULL, NULL, NULL),
(2, 'Home', 'Lorem ispon description amet sit dolor kaput guava', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos_components`
--

DROP TABLE IF EXISTS `components_shared_seos_components`;
CREATE TABLE `components_shared_seos_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alternative_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `preview_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'default-image', 'default-image', 'default-image', 1208, 715, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_default_image_30db5e0bc1.png\", \"hash\": \"large_default_image_30db5e0bc1\", \"mime\": \"image/png\", \"name\": \"large_default-image\", \"path\": null, \"size\": 322.9, \"width\": 1000, \"height\": 592, \"sizeInBytes\": 322895}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_default_image_30db5e0bc1.png\", \"hash\": \"small_default_image_30db5e0bc1\", \"mime\": \"image/png\", \"name\": \"small_default-image\", \"path\": null, \"size\": 74.29, \"width\": 500, \"height\": 296, \"sizeInBytes\": 74292}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_default_image_30db5e0bc1.png\", \"hash\": \"medium_default_image_30db5e0bc1\", \"mime\": \"image/png\", \"name\": \"medium_default-image\", \"path\": null, \"size\": 170.33, \"width\": 750, \"height\": 444, \"sizeInBytes\": 170325}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_default_image_30db5e0bc1.png\", \"hash\": \"thumbnail_default_image_30db5e0bc1\", \"mime\": \"image/png\", \"name\": \"thumbnail_default-image\", \"path\": null, \"size\": 20.52, \"width\": 245, \"height\": 145, \"sizeInBytes\": 20518}}', 'default_image_30db5e0bc1', '.png', 'image/png', 81.61, '/uploads/default_image_30db5e0bc1.png', NULL, 'local', NULL, '/', '2024-09-09 18:11:51.678000', '2024-09-09 18:11:51.678000', NULL, NULL),
(2, 'daviddoe@strapi', 'daviddoe@strapi', 'daviddoe@strapi', 2418, 2711, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_daviddoe_strapi_41db3a7f94.jpg\", \"hash\": \"large_daviddoe_strapi_41db3a7f94\", \"mime\": \"image/jpeg\", \"name\": \"large_daviddoe@strapi\", \"path\": null, \"size\": 74.56, \"width\": 892, \"height\": 1000, \"sizeInBytes\": 74560}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_daviddoe_strapi_41db3a7f94.jpg\", \"hash\": \"small_daviddoe_strapi_41db3a7f94\", \"mime\": \"image/jpeg\", \"name\": \"small_daviddoe@strapi\", \"path\": null, \"size\": 22.51, \"width\": 446, \"height\": 500, \"sizeInBytes\": 22509}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_daviddoe_strapi_41db3a7f94.jpg\", \"hash\": \"medium_daviddoe_strapi_41db3a7f94\", \"mime\": \"image/jpeg\", \"name\": \"medium_daviddoe@strapi\", \"path\": null, \"size\": 44.37, \"width\": 669, \"height\": 750, \"sizeInBytes\": 44372}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_daviddoe_strapi_41db3a7f94.jpg\", \"hash\": \"thumbnail_daviddoe_strapi_41db3a7f94\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_daviddoe@strapi\", \"path\": null, \"size\": 6.24, \"width\": 139, \"height\": 156, \"sizeInBytes\": 6240}}', 'daviddoe_strapi_41db3a7f94', '.jpg', 'image/jpeg', 587.69, '/uploads/daviddoe_strapi_41db3a7f94.jpg', NULL, 'local', NULL, '/', '2024-09-09 18:11:52.221000', '2024-09-09 18:11:52.221000', NULL, NULL),
(3, 'sarahbaker@strapi', 'sarahbaker@strapi', 'sarahbaker@strapi', 3321, 2746, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sarahbaker_strapi_2f81012ca4.jpg\", \"hash\": \"large_sarahbaker_strapi_2f81012ca4\", \"mime\": \"image/jpeg\", \"name\": \"large_sarahbaker@strapi\", \"path\": null, \"size\": 101.98, \"width\": 1000, \"height\": 827, \"sizeInBytes\": 101978}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sarahbaker_strapi_2f81012ca4.jpg\", \"hash\": \"small_sarahbaker_strapi_2f81012ca4\", \"mime\": \"image/jpeg\", \"name\": \"small_sarahbaker@strapi\", \"path\": null, \"size\": 30.58, \"width\": 500, \"height\": 413, \"sizeInBytes\": 30578}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sarahbaker_strapi_2f81012ca4.jpg\", \"hash\": \"medium_sarahbaker_strapi_2f81012ca4\", \"mime\": \"image/jpeg\", \"name\": \"medium_sarahbaker@strapi\", \"path\": null, \"size\": 61.37, \"width\": 750, \"height\": 620, \"sizeInBytes\": 61368}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sarahbaker_strapi_2f81012ca4.jpg\", \"hash\": \"thumbnail_sarahbaker_strapi_2f81012ca4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sarahbaker@strapi\", \"path\": null, \"size\": 6.68, \"width\": 189, \"height\": 156, \"sizeInBytes\": 6681}}', 'sarahbaker_strapi_2f81012ca4', '.jpg', 'image/jpeg', 795.13, '/uploads/sarahbaker_strapi_2f81012ca4.jpg', NULL, 'local', NULL, '/', '2024-09-09 18:11:52.332000', '2024-09-10 13:32:09.072000', NULL, 1),
(4, 'what-s-inside-a-black-hole.jpg', NULL, NULL, 800, 466, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_what_s_inside_a_black_hole_8429f51e95.jpg\", \"hash\": \"small_what_s_inside_a_black_hole_8429f51e95\", \"mime\": \"image/jpeg\", \"name\": \"small_what-s-inside-a-black-hole.jpg\", \"path\": null, \"size\": 3.89, \"width\": 500, \"height\": 291, \"sizeInBytes\": 3889}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_what_s_inside_a_black_hole_8429f51e95.jpg\", \"hash\": \"medium_what_s_inside_a_black_hole_8429f51e95\", \"mime\": \"image/jpeg\", \"name\": \"medium_what-s-inside-a-black-hole.jpg\", \"path\": null, \"size\": 6.94, \"width\": 750, \"height\": 437, \"sizeInBytes\": 6935}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_what_s_inside_a_black_hole_8429f51e95.jpg\", \"hash\": \"thumbnail_what_s_inside_a_black_hole_8429f51e95\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_what-s-inside-a-black-hole.jpg\", \"path\": null, \"size\": 1.55, \"width\": 245, \"height\": 143, \"sizeInBytes\": 1549}}', 'what_s_inside_a_black_hole_8429f51e95', '.jpg', 'image/jpeg', 7.50, '/uploads/what_s_inside_a_black_hole_8429f51e95.jpg', NULL, 'local', NULL, '/', '2024-09-10 13:34:16.676000', '2024-09-17 16:18:43.659000', 1, 1),
(5, 'this-shrimp-is-awesome.jpg', NULL, NULL, 1200, 630, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_this_shrimp_is_awesome_d44399f73d.jpg\", \"hash\": \"large_this_shrimp_is_awesome_d44399f73d\", \"mime\": \"image/jpeg\", \"name\": \"large_this-shrimp-is-awesome.jpg\", \"path\": null, \"size\": 72.87, \"width\": 1000, \"height\": 525, \"sizeInBytes\": 72867}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_this_shrimp_is_awesome_d44399f73d.jpg\", \"hash\": \"small_this_shrimp_is_awesome_d44399f73d\", \"mime\": \"image/jpeg\", \"name\": \"small_this-shrimp-is-awesome.jpg\", \"path\": null, \"size\": 26.93, \"width\": 500, \"height\": 263, \"sizeInBytes\": 26930}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_this_shrimp_is_awesome_d44399f73d.jpg\", \"hash\": \"medium_this_shrimp_is_awesome_d44399f73d\", \"mime\": \"image/jpeg\", \"name\": \"medium_this-shrimp-is-awesome.jpg\", \"path\": null, \"size\": 48.38, \"width\": 750, \"height\": 394, \"sizeInBytes\": 48380}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_this_shrimp_is_awesome_d44399f73d.jpg\", \"hash\": \"thumbnail_this_shrimp_is_awesome_d44399f73d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_this-shrimp-is-awesome.jpg\", \"path\": null, \"size\": 9.71, \"width\": 245, \"height\": 129, \"sizeInBytes\": 9711}}', 'this_shrimp_is_awesome_d44399f73d', '.jpg', 'image/jpeg', 95.48, '/uploads/this_shrimp_is_awesome_d44399f73d.jpg', NULL, 'local', NULL, '/', '2024-09-10 13:35:43.307000', '2024-09-10 13:35:43.307000', 1, 1),
(6, 'the-internet-s-own-boy.jpg', NULL, NULL, 1200, 707, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_the_internet_s_own_boy_9a75b786df.jpg\", \"hash\": \"large_the_internet_s_own_boy_9a75b786df\", \"mime\": \"image/jpeg\", \"name\": \"large_the-internet-s-own-boy.jpg\", \"path\": null, \"size\": 70.11, \"width\": 1000, \"height\": 589, \"sizeInBytes\": 70105}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_the_internet_s_own_boy_9a75b786df.jpg\", \"hash\": \"small_the_internet_s_own_boy_9a75b786df\", \"mime\": \"image/jpeg\", \"name\": \"small_the-internet-s-own-boy.jpg\", \"path\": null, \"size\": 25.31, \"width\": 500, \"height\": 295, \"sizeInBytes\": 25308}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_the_internet_s_own_boy_9a75b786df.jpg\", \"hash\": \"medium_the_internet_s_own_boy_9a75b786df\", \"mime\": \"image/jpeg\", \"name\": \"medium_the-internet-s-own-boy.jpg\", \"path\": null, \"size\": 45.93, \"width\": 750, \"height\": 442, \"sizeInBytes\": 45925}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_the_internet_s_own_boy_9a75b786df.jpg\", \"hash\": \"thumbnail_the_internet_s_own_boy_9a75b786df\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_the-internet-s-own-boy.jpg\", \"path\": null, \"size\": 8.38, \"width\": 245, \"height\": 144, \"sizeInBytes\": 8380}}', 'the_internet_s_own_boy_9a75b786df', '.jpg', 'image/jpeg', 91.55, '/uploads/the_internet_s_own_boy_9a75b786df.jpg', NULL, 'local', NULL, '/', '2024-09-10 13:37:56.970000', '2024-09-10 13:37:56.970000', 1, 1),
(7, 'a-bug-is-becoming-a-meme-on-the-internet.jpg', NULL, NULL, 3628, 2419, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015.jpg\", \"hash\": \"large_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015\", \"mime\": \"image/jpeg\", \"name\": \"large_a-bug-is-becoming-a-meme-on-the-internet.jpg\", \"path\": null, \"size\": 51.05, \"width\": 1000, \"height\": 666, \"sizeInBytes\": 51046}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015.jpg\", \"hash\": \"small_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015\", \"mime\": \"image/jpeg\", \"name\": \"small_a-bug-is-becoming-a-meme-on-the-internet.jpg\", \"path\": null, \"size\": 19.27, \"width\": 500, \"height\": 333, \"sizeInBytes\": 19268}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015.jpg\", \"hash\": \"medium_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015\", \"mime\": \"image/jpeg\", \"name\": \"medium_a-bug-is-becoming-a-meme-on-the-internet.jpg\", \"path\": null, \"size\": 33.58, \"width\": 750, \"height\": 500, \"sizeInBytes\": 33577}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015.jpg\", \"hash\": \"thumbnail_a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_a-bug-is-becoming-a-meme-on-the-internet.jpg\", \"path\": null, \"size\": 10.27, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10269}}', 'a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015', '.jpg', 'image/jpeg', 234.02, '/uploads/a_bug_is_becoming_a_meme_on_the_internet_aea4a1e015.jpg', NULL, 'local', NULL, '/', '2024-09-10 13:40:22.479000', '2024-09-13 17:01:39.748000', 1, 1),
(8, 'beautiful-picture.jpg', NULL, NULL, 3824, 2548, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_beautiful_picture_841b6164bc.jpg\", \"hash\": \"large_beautiful_picture_841b6164bc\", \"mime\": \"image/jpeg\", \"name\": \"large_beautiful-picture.jpg\", \"path\": null, \"size\": 83.42, \"width\": 1000, \"height\": 666, \"sizeInBytes\": 83416}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_beautiful_picture_841b6164bc.jpg\", \"hash\": \"small_beautiful_picture_841b6164bc\", \"mime\": \"image/jpeg\", \"name\": \"small_beautiful-picture.jpg\", \"path\": null, \"size\": 23.38, \"width\": 500, \"height\": 333, \"sizeInBytes\": 23380}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_beautiful_picture_841b6164bc.jpg\", \"hash\": \"medium_beautiful_picture_841b6164bc\", \"mime\": \"image/jpeg\", \"name\": \"medium_beautiful-picture.jpg\", \"path\": null, \"size\": 47.89, \"width\": 750, \"height\": 500, \"sizeInBytes\": 47888}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_beautiful_picture_841b6164bc.jpg\", \"hash\": \"thumbnail_beautiful_picture_841b6164bc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_beautiful-picture.jpg\", \"path\": null, \"size\": 6.43, \"width\": 234, \"height\": 156, \"sizeInBytes\": 6427}}', 'beautiful_picture_841b6164bc', '.jpg', 'image/jpeg', 710.28, '/uploads/beautiful_picture_841b6164bc.jpg', NULL, 'local', NULL, '/', '2024-09-10 13:41:56.401000', '2024-09-13 16:59:37.691000', 1, 1),
(9, 'we-love-pizza.jpg', NULL, NULL, 3782, 2522, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_we_love_pizza_5832a22602.jpg\", \"hash\": \"large_we_love_pizza_5832a22602\", \"mime\": \"image/jpeg\", \"name\": \"large_we-love-pizza.jpg\", \"path\": null, \"size\": 179.96, \"width\": 1000, \"height\": 667, \"sizeInBytes\": 179955}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_we_love_pizza_5832a22602.jpg\", \"hash\": \"small_we_love_pizza_5832a22602\", \"mime\": \"image/jpeg\", \"name\": \"small_we-love-pizza.jpg\", \"path\": null, \"size\": 52.55, \"width\": 500, \"height\": 333, \"sizeInBytes\": 52548}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_we_love_pizza_5832a22602.jpg\", \"hash\": \"medium_we_love_pizza_5832a22602\", \"mime\": \"image/jpeg\", \"name\": \"medium_we-love-pizza.jpg\", \"path\": null, \"size\": 105.97, \"width\": 750, \"height\": 500, \"sizeInBytes\": 105971}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_we_love_pizza_5832a22602.jpg\", \"hash\": \"thumbnail_we_love_pizza_5832a22602\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_we-love-pizza.jpg\", \"path\": null, \"size\": 13.77, \"width\": 234, \"height\": 156, \"sizeInBytes\": 13766}}', 'we_love_pizza_5832a22602', '.jpg', 'image/jpeg', 1169.12, '/uploads/we_love_pizza_5832a22602.jpg', NULL, 'local', NULL, '/', '2024-09-10 13:42:32.549000', '2024-09-13 16:59:49.221000', 1, 1),
(10, 'Imagem_6_Detalhes_Massagem_Desktop_1920x1040-min.jpg', NULL, NULL, 1920, 1040, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda.jpg\", \"hash\": \"large_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda\", \"mime\": \"image/jpeg\", \"name\": \"large_Imagem_6_Detalhes_Massagem_Desktop_1920x1040-min.jpg\", \"path\": null, \"size\": 61.84, \"width\": 1000, \"height\": 542, \"sizeInBytes\": 61844}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda.jpg\", \"hash\": \"small_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda\", \"mime\": \"image/jpeg\", \"name\": \"small_Imagem_6_Detalhes_Massagem_Desktop_1920x1040-min.jpg\", \"path\": null, \"size\": 19.17, \"width\": 500, \"height\": 271, \"sizeInBytes\": 19173}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda.jpg\", \"hash\": \"medium_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda\", \"mime\": \"image/jpeg\", \"name\": \"medium_Imagem_6_Detalhes_Massagem_Desktop_1920x1040-min.jpg\", \"path\": null, \"size\": 38.05, \"width\": 750, \"height\": 406, \"sizeInBytes\": 38046}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda.jpg\", \"hash\": \"thumbnail_Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Imagem_6_Detalhes_Massagem_Desktop_1920x1040-min.jpg\", \"path\": null, \"size\": 6.19, \"width\": 245, \"height\": 133, \"sizeInBytes\": 6194}}', 'Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda', '.jpg', 'image/jpeg', 191.08, '/uploads/Imagem_6_Detalhes_Massagem_Desktop_1920x1040_min_f7fef14fda.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:29:30.744000', '2024-09-24 11:42:10.006000', 1, 1),
(11, 'Galeria_04_Piscina_Paisagem_1920x1200-min.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648.jpg\", \"hash\": \"large_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648\", \"mime\": \"image/jpeg\", \"name\": \"large_Galeria_04_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 103.9, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 103901}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648.jpg\", \"hash\": \"small_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648\", \"mime\": \"image/jpeg\", \"name\": \"small_Galeria_04_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 28.73, \"width\": 500, \"height\": 313, \"sizeInBytes\": 28733}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648.jpg\", \"hash\": \"medium_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648\", \"mime\": \"image/jpeg\", \"name\": \"medium_Galeria_04_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 60.64, \"width\": 750, \"height\": 469, \"sizeInBytes\": 60643}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648.jpg\", \"hash\": \"thumbnail_Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Galeria_04_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 7.96, \"width\": 245, \"height\": 153, \"sizeInBytes\": 7957}}', 'Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648', '.jpg', 'image/jpeg', 345.88, '/uploads/Galeria_04_Piscina_Paisagem_1920x1200_min_a15c964648.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:31:20.538000', '2024-09-24 11:31:20.538000', 1, 1),
(12, 'Galeria_05_Piscina_Paisagem_1920x1200-min.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569.jpg\", \"hash\": \"large_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569\", \"mime\": \"image/jpeg\", \"name\": \"large_Galeria_05_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 124.24, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 124240}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569.jpg\", \"hash\": \"small_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569\", \"mime\": \"image/jpeg\", \"name\": \"small_Galeria_05_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 37.91, \"width\": 500, \"height\": 313, \"sizeInBytes\": 37905}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569.jpg\", \"hash\": \"medium_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569\", \"mime\": \"image/jpeg\", \"name\": \"medium_Galeria_05_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 76.61, \"width\": 750, \"height\": 469, \"sizeInBytes\": 76606}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569.jpg\", \"hash\": \"thumbnail_Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Galeria_05_Piscina_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 10.8, \"width\": 245, \"height\": 153, \"sizeInBytes\": 10796}}', 'Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569', '.jpg', 'image/jpeg', 352.73, '/uploads/Galeria_05_Piscina_Paisagem_1920x1200_min_b22505f569.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:35:21.431000', '2024-09-24 11:35:21.431000', 1, 1),
(13, 'Galeria_01_Galeria_Paisagem_1920x1200-min.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99.jpg\", \"hash\": \"large_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99\", \"mime\": \"image/jpeg\", \"name\": \"large_Galeria_01_Galeria_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 166.57, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 166573}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99.jpg\", \"hash\": \"small_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99\", \"mime\": \"image/jpeg\", \"name\": \"small_Galeria_01_Galeria_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 47.71, \"width\": 500, \"height\": 313, \"sizeInBytes\": 47714}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99.jpg\", \"hash\": \"medium_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99\", \"mime\": \"image/jpeg\", \"name\": \"medium_Galeria_01_Galeria_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 99.79, \"width\": 750, \"height\": 469, \"sizeInBytes\": 99787}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99.jpg\", \"hash\": \"thumbnail_Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Galeria_01_Galeria_Paisagem_1920x1200-min.jpg\", \"path\": null, \"size\": 12.9, \"width\": 245, \"height\": 153, \"sizeInBytes\": 12900}}', 'Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99', '.jpg', 'image/jpeg', 516.44, '/uploads/Galeria_01_Galeria_Paisagem_1920x1200_min_1f227ecd99.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:36:21.694000', '2024-09-24 11:36:21.694000', 1, 1),
(15, 'Galeria_Yuny_Perspectiva_Fachada_1920x1200.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7.jpg\", \"hash\": \"large_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7\", \"mime\": \"image/jpeg\", \"name\": \"large_Galeria_Yuny_Perspectiva_Fachada_1920x1200.jpg\", \"path\": null, \"size\": 130.27, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 130274}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7.jpg\", \"hash\": \"small_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7\", \"mime\": \"image/jpeg\", \"name\": \"small_Galeria_Yuny_Perspectiva_Fachada_1920x1200.jpg\", \"path\": null, \"size\": 1.23, \"width\": 500, \"height\": 313, \"sizeInBytes\": 1226}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7.jpg\", \"hash\": \"medium_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7\", \"mime\": \"image/jpeg\", \"name\": \"medium_Galeria_Yuny_Perspectiva_Fachada_1920x1200.jpg\", \"path\": null, \"size\": 84.83, \"width\": 750, \"height\": 469, \"sizeInBytes\": 84826}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7.jpg\", \"hash\": \"thumbnail_Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Galeria_Yuny_Perspectiva_Fachada_1920x1200.jpg\", \"path\": null, \"size\": 12.71, \"width\": 245, \"height\": 153, \"sizeInBytes\": 12714}}', 'Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7', '.jpg', 'image/jpeg', 237.28, '/uploads/Galeria_Yuny_Perspectiva_Fachada_1920x1200_26009cdcb7.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:36:56.635000', '2024-09-24 11:36:56.635000', 1, 1),
(16, 'Vitrine_Yuny_Bossa_1920x1000.jpg', NULL, NULL, 1920, 1000, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753.jpg\", \"hash\": \"large_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753\", \"mime\": \"image/jpeg\", \"name\": \"large_Vitrine_Yuny_Bossa_1920x1000.jpg\", \"path\": null, \"size\": 148.22, \"width\": 1000, \"height\": 521, \"sizeInBytes\": 148223}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753.jpg\", \"hash\": \"small_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753\", \"mime\": \"image/jpeg\", \"name\": \"small_Vitrine_Yuny_Bossa_1920x1000.jpg\", \"path\": null, \"size\": 41.44, \"width\": 500, \"height\": 260, \"sizeInBytes\": 41443}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753.jpg\", \"hash\": \"medium_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753\", \"mime\": \"image/jpeg\", \"name\": \"medium_Vitrine_Yuny_Bossa_1920x1000.jpg\", \"path\": null, \"size\": 87.7, \"width\": 750, \"height\": 391, \"sizeInBytes\": 87702}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753.jpg\", \"hash\": \"thumbnail_Vitrine_Yuny_Bossa_1920x1000_9fb3b65753\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Vitrine_Yuny_Bossa_1920x1000.jpg\", \"path\": null, \"size\": 10.94, \"width\": 245, \"height\": 128, \"sizeInBytes\": 10942}}', 'Vitrine_Yuny_Bossa_1920x1000_9fb3b65753', '.jpg', 'image/jpeg', 293.40, '/uploads/Vitrine_Yuny_Bossa_1920x1000_9fb3b65753.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:37:13.349000', '2024-09-24 11:56:49.485000', 1, 1),
(17, 'Galeria_Yuny_Perspectiva_AptoBoutique_1920x1200.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8.jpg\", \"hash\": \"large_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8\", \"mime\": \"image/jpeg\", \"name\": \"large_Galeria_Yuny_Perspectiva_AptoBoutique_1920x1200.jpg\", \"path\": null, \"size\": 87.02, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 87015}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8.jpg\", \"hash\": \"small_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8\", \"mime\": \"image/jpeg\", \"name\": \"small_Galeria_Yuny_Perspectiva_AptoBoutique_1920x1200.jpg\", \"path\": null, \"size\": 25.38, \"width\": 500, \"height\": 313, \"sizeInBytes\": 25383}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8.jpg\", \"hash\": \"medium_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8\", \"mime\": \"image/jpeg\", \"name\": \"medium_Galeria_Yuny_Perspectiva_AptoBoutique_1920x1200.jpg\", \"path\": null, \"size\": 51.4, \"width\": 750, \"height\": 469, \"sizeInBytes\": 51403}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8.jpg\", \"hash\": \"thumbnail_Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Galeria_Yuny_Perspectiva_AptoBoutique_1920x1200.jpg\", \"path\": null, \"size\": 7.86, \"width\": 245, \"height\": 153, \"sizeInBytes\": 7863}}', 'Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8', '.jpg', 'image/jpeg', 196.43, '/uploads/Galeria_Yuny_Perspectiva_Apto_Boutique_1920x1200_fe110b19f8.jpg', NULL, 'local', NULL, '/', '2024-09-24 11:54:00.535000', '2024-09-24 11:54:00.535000', 1, 1),
(18, 'apple-icon-60x60-new.png', NULL, NULL, 60, 60, NULL, 'apple_icon_60x60_new_5c83b03c1d', '.png', 'image/png', 0.72, '/uploads/apple_icon_60x60_new_5c83b03c1d.png', NULL, 'local', NULL, '/', '2024-09-24 11:58:00.213000', '2024-09-24 11:58:00.213000', 1, 1),
(19, 'Planta_Yuny_Bossa_Apto41m_1920x1200.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966.jpg\", \"hash\": \"large_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966\", \"mime\": \"image/jpeg\", \"name\": \"large_Planta_Yuny_Bossa_Apto41m_1920x1200.jpg\", \"path\": null, \"size\": 46.71, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 46705}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966.jpg\", \"hash\": \"small_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966\", \"mime\": \"image/jpeg\", \"name\": \"small_Planta_Yuny_Bossa_Apto41m_1920x1200.jpg\", \"path\": null, \"size\": 14.3, \"width\": 500, \"height\": 313, \"sizeInBytes\": 14297}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966.jpg\", \"hash\": \"medium_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966\", \"mime\": \"image/jpeg\", \"name\": \"medium_Planta_Yuny_Bossa_Apto41m_1920x1200.jpg\", \"path\": null, \"size\": 27.17, \"width\": 750, \"height\": 469, \"sizeInBytes\": 27167}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966.jpg\", \"hash\": \"thumbnail_Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Planta_Yuny_Bossa_Apto41m_1920x1200.jpg\", \"path\": null, \"size\": 4.69, \"width\": 245, \"height\": 153, \"sizeInBytes\": 4692}}', 'Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966', '.jpg', 'image/jpeg', 134.33, '/uploads/Planta_Yuny_Bossa_Apto41m_1920x1200_400b5fb966.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:06:59.078000', '2024-09-24 12:06:59.078000', 1, 1),
(20, 'Boutique-4-36-m²-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Boutique_4_36_m_Com_Cotas_c5207d1449.jpg\", \"hash\": \"large_Boutique_4_36_m_Com_Cotas_c5207d1449\", \"mime\": \"image/jpeg\", \"name\": \"large_Boutique-4-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 48.34, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 48338}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Boutique_4_36_m_Com_Cotas_c5207d1449.jpg\", \"hash\": \"small_Boutique_4_36_m_Com_Cotas_c5207d1449\", \"mime\": \"image/jpeg\", \"name\": \"small_Boutique-4-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 14.96, \"width\": 500, \"height\": 313, \"sizeInBytes\": 14956}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Boutique_4_36_m_Com_Cotas_c5207d1449.jpg\", \"hash\": \"medium_Boutique_4_36_m_Com_Cotas_c5207d1449\", \"mime\": \"image/jpeg\", \"name\": \"medium_Boutique-4-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 29.4, \"width\": 750, \"height\": 469, \"sizeInBytes\": 29397}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Boutique_4_36_m_Com_Cotas_c5207d1449.jpg\", \"hash\": \"thumbnail_Boutique_4_36_m_Com_Cotas_c5207d1449\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Boutique-4-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 4.79, \"width\": 245, \"height\": 153, \"sizeInBytes\": 4786}}', 'Boutique_4_36_m_Com_Cotas_c5207d1449', '.jpg', 'image/jpeg', 142.53, '/uploads/Boutique_4_36_m_Com_Cotas_c5207d1449.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:07:11.805000', '2024-09-24 12:07:11.805000', 1, 1),
(21, 'Boutique-2-36-m²-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Boutique_2_36_m_Com_Cotas_1c5c5f765c.jpg\", \"hash\": \"large_Boutique_2_36_m_Com_Cotas_1c5c5f765c\", \"mime\": \"image/jpeg\", \"name\": \"large_Boutique-2-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 78.68, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 78675}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Boutique_2_36_m_Com_Cotas_1c5c5f765c.jpg\", \"hash\": \"small_Boutique_2_36_m_Com_Cotas_1c5c5f765c\", \"mime\": \"image/jpeg\", \"name\": \"small_Boutique-2-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 22.17, \"width\": 500, \"height\": 313, \"sizeInBytes\": 22168}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Boutique_2_36_m_Com_Cotas_1c5c5f765c.jpg\", \"hash\": \"medium_Boutique_2_36_m_Com_Cotas_1c5c5f765c\", \"mime\": \"image/jpeg\", \"name\": \"medium_Boutique-2-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 45.88, \"width\": 750, \"height\": 469, \"sizeInBytes\": 45883}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Boutique_2_36_m_Com_Cotas_1c5c5f765c.jpg\", \"hash\": \"thumbnail_Boutique_2_36_m_Com_Cotas_1c5c5f765c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Boutique-2-36-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 6.72, \"width\": 245, \"height\": 153, \"sizeInBytes\": 6717}}', 'Boutique_2_36_m_Com_Cotas_1c5c5f765c', '.jpg', 'image/jpeg', 245.75, '/uploads/Boutique_2_36_m_Com_Cotas_1c5c5f765c.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:07:18.956000', '2024-09-24 12:07:18.956000', 1, 1),
(22, 'Boutique-5-32-m²-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Boutique_5_32_m_Com_Cotas_a427e53e2e.jpg\", \"hash\": \"large_Boutique_5_32_m_Com_Cotas_a427e53e2e\", \"mime\": \"image/jpeg\", \"name\": \"large_Boutique-5-32-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 56.79, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 56791}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Boutique_5_32_m_Com_Cotas_a427e53e2e.jpg\", \"hash\": \"small_Boutique_5_32_m_Com_Cotas_a427e53e2e\", \"mime\": \"image/jpeg\", \"name\": \"small_Boutique-5-32-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 16.73, \"width\": 500, \"height\": 313, \"sizeInBytes\": 16731}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Boutique_5_32_m_Com_Cotas_a427e53e2e.jpg\", \"hash\": \"medium_Boutique_5_32_m_Com_Cotas_a427e53e2e\", \"mime\": \"image/jpeg\", \"name\": \"medium_Boutique-5-32-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 33.45, \"width\": 750, \"height\": 469, \"sizeInBytes\": 33453}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Boutique_5_32_m_Com_Cotas_a427e53e2e.jpg\", \"hash\": \"thumbnail_Boutique_5_32_m_Com_Cotas_a427e53e2e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Boutique-5-32-m²-Com-Cotas.jpg\", \"path\": null, \"size\": 5.32, \"width\": 245, \"height\": 153, \"sizeInBytes\": 5315}}', 'Boutique_5_32_m_Com_Cotas_a427e53e2e', '.jpg', 'image/jpeg', 171.86, '/uploads/Boutique_5_32_m_Com_Cotas_a427e53e2e.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:07:26.215000', '2024-09-24 12:07:26.215000', 1, 1),
(23, 'Apartamento-92-m²-Ampliada-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21.jpg\", \"hash\": \"large_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21\", \"mime\": \"image/jpeg\", \"name\": \"large_Apartamento-92-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 81.78, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 81779}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21.jpg\", \"hash\": \"small_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21\", \"mime\": \"image/jpeg\", \"name\": \"small_Apartamento-92-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 1.23, \"width\": 500, \"height\": 313, \"sizeInBytes\": 1226}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21.jpg\", \"hash\": \"medium_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21\", \"mime\": \"image/jpeg\", \"name\": \"medium_Apartamento-92-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 54.53, \"width\": 750, \"height\": 469, \"sizeInBytes\": 54525}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21.jpg\", \"hash\": \"thumbnail_Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Apartamento-92-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 7.68, \"width\": 245, \"height\": 153, \"sizeInBytes\": 7676}}', 'Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21', '.jpg', 'image/jpeg', 249.67, '/uploads/Apartamento_92_m_Ampliada_Com_Cotas_3b5de03b21.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:07:33.534000', '2024-09-24 12:07:33.534000', 1, 1),
(24, 'Planta_Yuny_Bossa_Apto92m_1920x1200.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b.jpg\", \"hash\": \"large_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b\", \"mime\": \"image/jpeg\", \"name\": \"large_Planta_Yuny_Bossa_Apto92m_1920x1200.jpg\", \"path\": null, \"size\": 84.32, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 84316}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b.jpg\", \"hash\": \"small_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b\", \"mime\": \"image/jpeg\", \"name\": \"small_Planta_Yuny_Bossa_Apto92m_1920x1200.jpg\", \"path\": null, \"size\": 25.17, \"width\": 500, \"height\": 313, \"sizeInBytes\": 25166}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b.jpg\", \"hash\": \"medium_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b\", \"mime\": \"image/jpeg\", \"name\": \"medium_Planta_Yuny_Bossa_Apto92m_1920x1200.jpg\", \"path\": null, \"size\": 50.32, \"width\": 750, \"height\": 469, \"sizeInBytes\": 50318}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b.jpg\", \"hash\": \"thumbnail_Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Planta_Yuny_Bossa_Apto92m_1920x1200.jpg\", \"path\": null, \"size\": 7.81, \"width\": 245, \"height\": 153, \"sizeInBytes\": 7814}}', 'Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b', '.jpg', 'image/jpeg', 199.17, '/uploads/Planta_Yuny_Bossa_Apto92m_1920x1200_efb645418b.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:07:58.281000', '2024-09-24 12:07:58.281000', 1, 1),
(25, 'Apartamento-76-m²-Padrao-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c.jpg\", \"hash\": \"large_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c\", \"mime\": \"image/jpeg\", \"name\": \"large_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 94.02, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 94020}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c.jpg\", \"hash\": \"small_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c\", \"mime\": \"image/jpeg\", \"name\": \"small_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 28.28, \"width\": 500, \"height\": 313, \"sizeInBytes\": 28278}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c.jpg\", \"hash\": \"medium_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c\", \"mime\": \"image/jpeg\", \"name\": \"medium_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 56.13, \"width\": 750, \"height\": 469, \"sizeInBytes\": 56128}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c.jpg\", \"hash\": \"thumbnail_Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 8.73, \"width\": 245, \"height\": 153, \"sizeInBytes\": 8727}}', 'Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c', '.jpg', 'image/jpeg', 230.00, '/uploads/Apartamento_76_m_Padrao_Com_Cotas_c94e7b070c.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:08:05.369000', '2024-09-24 12:08:05.369000', 1, 1),
(26, 'Apartamento-76-m²-Padrao-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a.jpg\", \"hash\": \"large_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a\", \"mime\": \"image/jpeg\", \"name\": \"large_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 94.02, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 94020}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a.jpg\", \"hash\": \"small_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a\", \"mime\": \"image/jpeg\", \"name\": \"small_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 28.28, \"width\": 500, \"height\": 313, \"sizeInBytes\": 28278}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a.jpg\", \"hash\": \"medium_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a\", \"mime\": \"image/jpeg\", \"name\": \"medium_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 56.13, \"width\": 750, \"height\": 469, \"sizeInBytes\": 56128}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a.jpg\", \"hash\": \"thumbnail_Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Apartamento-76-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 8.73, \"width\": 245, \"height\": 153, \"sizeInBytes\": 8727}}', 'Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a', '.jpg', 'image/jpeg', 230.00, '/uploads/Apartamento_76_m_Padrao_Com_Cotas_8dbd57b63a.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:08:13.539000', '2024-09-24 12:08:13.539000', 1, 1),
(27, 'Apartamento-70-m²-Ampliada-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd.jpg\", \"hash\": \"large_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd\", \"mime\": \"image/jpeg\", \"name\": \"large_Apartamento-70-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 99.2, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 99196}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd.jpg\", \"hash\": \"small_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd\", \"mime\": \"image/jpeg\", \"name\": \"small_Apartamento-70-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 28.73, \"width\": 500, \"height\": 313, \"sizeInBytes\": 28731}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd.jpg\", \"hash\": \"medium_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd\", \"mime\": \"image/jpeg\", \"name\": \"medium_Apartamento-70-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 58.54, \"width\": 750, \"height\": 469, \"sizeInBytes\": 58537}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd.jpg\", \"hash\": \"thumbnail_Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Apartamento-70-m²-Ampliada-Com-Cotas.jpg\", \"path\": null, \"size\": 8.83, \"width\": 245, \"height\": 153, \"sizeInBytes\": 8834}}', 'Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd', '.jpg', 'image/jpeg', 229.83, '/uploads/Apartamento_70_m_Ampliada_Com_Cotas_86303fb2cd.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:08:21.647000', '2024-09-24 12:08:21.647000', 1, 1),
(28, 'Apartamento-70-m²-Padrao-Com-Cotas.jpg', NULL, NULL, 1920, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Apartamento_70_m_Padrao_Com_Cotas_b04897e532.jpg\", \"hash\": \"large_Apartamento_70_m_Padrao_Com_Cotas_b04897e532\", \"mime\": \"image/jpeg\", \"name\": \"large_Apartamento-70-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 97.97, \"width\": 1000, \"height\": 625, \"sizeInBytes\": 97973}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Apartamento_70_m_Padrao_Com_Cotas_b04897e532.jpg\", \"hash\": \"small_Apartamento_70_m_Padrao_Com_Cotas_b04897e532\", \"mime\": \"image/jpeg\", \"name\": \"small_Apartamento-70-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 29.11, \"width\": 500, \"height\": 313, \"sizeInBytes\": 29109}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Apartamento_70_m_Padrao_Com_Cotas_b04897e532.jpg\", \"hash\": \"medium_Apartamento_70_m_Padrao_Com_Cotas_b04897e532\", \"mime\": \"image/jpeg\", \"name\": \"medium_Apartamento-70-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 59.29, \"width\": 750, \"height\": 469, \"sizeInBytes\": 59294}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Apartamento_70_m_Padrao_Com_Cotas_b04897e532.jpg\", \"hash\": \"thumbnail_Apartamento_70_m_Padrao_Com_Cotas_b04897e532\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Apartamento-70-m²-Padrao-Com-Cotas.jpg\", \"path\": null, \"size\": 9.31, \"width\": 245, \"height\": 153, \"sizeInBytes\": 9308}}', 'Apartamento_70_m_Padrao_Com_Cotas_b04897e532', '.jpg', 'image/jpeg', 223.20, '/uploads/Apartamento_70_m_Padrao_Com_Cotas_b04897e532.jpg', NULL, 'local', NULL, '/', '2024-09-24 12:08:28.635000', '2024-09-24 12:09:08.442000', 1, 1),
(29, 'relatorio_sustentabilidade_2022-scaled.jpg', NULL, NULL, 2560, 616, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_relatorio_sustentabilidade_2022_scaled_14b8aa4139.jpg\", \"hash\": \"large_relatorio_sustentabilidade_2022_scaled_14b8aa4139\", \"mime\": \"image/jpeg\", \"name\": \"large_relatorio_sustentabilidade_2022-scaled.jpg\", \"path\": null, \"size\": 58.4, \"width\": 1000, \"height\": 241, \"sizeInBytes\": 58397}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_relatorio_sustentabilidade_2022_scaled_14b8aa4139.jpg\", \"hash\": \"small_relatorio_sustentabilidade_2022_scaled_14b8aa4139\", \"mime\": \"image/jpeg\", \"name\": \"small_relatorio_sustentabilidade_2022-scaled.jpg\", \"path\": null, \"size\": 15.78, \"width\": 500, \"height\": 120, \"sizeInBytes\": 15778}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_relatorio_sustentabilidade_2022_scaled_14b8aa4139.jpg\", \"hash\": \"medium_relatorio_sustentabilidade_2022_scaled_14b8aa4139\", \"mime\": \"image/jpeg\", \"name\": \"medium_relatorio_sustentabilidade_2022-scaled.jpg\", \"path\": null, \"size\": 34.02, \"width\": 750, \"height\": 180, \"sizeInBytes\": 34023}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_relatorio_sustentabilidade_2022_scaled_14b8aa4139.jpg\", \"hash\": \"thumbnail_relatorio_sustentabilidade_2022_scaled_14b8aa4139\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_relatorio_sustentabilidade_2022-scaled.jpg\", \"path\": null, \"size\": 0.36, \"width\": 245, \"height\": 59, \"sizeInBytes\": 362}}', 'relatorio_sustentabilidade_2022_scaled_14b8aa4139', '.jpg', 'image/jpeg', 306.56, '/uploads/relatorio_sustentabilidade_2022_scaled_14b8aa4139.jpg', NULL, 'local', NULL, '/', '2024-09-24 13:51:22.214000', '2024-09-24 13:51:22.214000', 1, 1),
(30, 'yuny_sobre.jpg', NULL, NULL, 1920, 320, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_yuny_sobre_b35f431119.jpg\", \"hash\": \"large_yuny_sobre_b35f431119\", \"mime\": \"image/jpeg\", \"name\": \"large_yuny_sobre.jpg\", \"path\": null, \"size\": 24.87, \"width\": 1000, \"height\": 167, \"sizeInBytes\": 24867}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_yuny_sobre_b35f431119.jpg\", \"hash\": \"small_yuny_sobre_b35f431119\", \"mime\": \"image/jpeg\", \"name\": \"small_yuny_sobre.jpg\", \"path\": null, \"size\": 8.1, \"width\": 500, \"height\": 83, \"sizeInBytes\": 8104}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_yuny_sobre_b35f431119.jpg\", \"hash\": \"medium_yuny_sobre_b35f431119\", \"mime\": \"image/jpeg\", \"name\": \"medium_yuny_sobre.jpg\", \"path\": null, \"size\": 15.52, \"width\": 750, \"height\": 125, \"sizeInBytes\": 15518}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_yuny_sobre_b35f431119.jpg\", \"hash\": \"thumbnail_yuny_sobre_b35f431119\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_yuny_sobre.jpg\", \"path\": null, \"size\": 2.77, \"width\": 245, \"height\": 41, \"sizeInBytes\": 2774}}', 'yuny_sobre_b35f431119', '.jpg', 'image/jpeg', 68.72, '/uploads/yuny_sobre_b35f431119.jpg', NULL, 'local', NULL, '/', '2024-09-24 14:01:03.232000', '2024-09-24 14:01:03.232000', 1, 1),
(31, '1170x480.jpg', NULL, NULL, 1170, 480, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_1170x480_7ed4a8380b.jpg\", \"hash\": \"large_1170x480_7ed4a8380b\", \"mime\": \"image/jpeg\", \"name\": \"large_1170x480.jpg\", \"path\": null, \"size\": 116.34, \"width\": 1000, \"height\": 410, \"sizeInBytes\": 116344}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_1170x480_7ed4a8380b.jpg\", \"hash\": \"small_1170x480_7ed4a8380b\", \"mime\": \"image/jpeg\", \"name\": \"small_1170x480.jpg\", \"path\": null, \"size\": 32.05, \"width\": 500, \"height\": 205, \"sizeInBytes\": 32046}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_1170x480_7ed4a8380b.jpg\", \"hash\": \"medium_1170x480_7ed4a8380b\", \"mime\": \"image/jpeg\", \"name\": \"medium_1170x480.jpg\", \"path\": null, \"size\": 69.19, \"width\": 750, \"height\": 308, \"sizeInBytes\": 69187}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_1170x480_7ed4a8380b.jpg\", \"hash\": \"thumbnail_1170x480_7ed4a8380b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1170x480.jpg\", \"path\": null, \"size\": 8.62, \"width\": 245, \"height\": 101, \"sizeInBytes\": 8624}}', '1170x480_7ed4a8380b', '.jpg', 'image/jpeg', 156.40, '/uploads/1170x480_7ed4a8380b.jpg', NULL, 'local', NULL, '/', '2024-09-24 14:04:54.293000', '2024-09-24 14:04:54.293000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 3, 1, 'api::writer.writer', 'picture', 1),
(2, 2, 2, 'api::writer.writer', 'picture', 1),
(27, 7, 1, 'shared.shared-seo', 'shareImage', 1),
(28, 9, 2, 'sections.sections-hero', 'image', 1),
(29, 8, 2, 'shared.card', 'image', 1),
(30, 9, 3, 'shared.card', 'image', 1),
(33, 5, 4, 'elements.shared-seo', 'shareImage', 1),
(34, 9, 3, 'elements.shared-seo', 'shareImage', 1),
(36, 6, 1, 'blocks.hero', 'image', 1),
(65, 9, 2, 'blocks.hero', 'image', 1),
(300, 15, 7, 'api::article.article', 'image', 1),
(301, 11, 8, 'api::article.article', 'image', 1),
(303, 10, 9, 'api::article.article', 'image', 1),
(304, 3, 10, 'api::article.article', 'image', 1),
(305, 2, 1, 'api::article.article', 'image', 1),
(306, 12, 5, 'api::article.article', 'image', 1),
(308, 8, 2, 'api::article.article', 'image', 1),
(310, 7, 4, 'api::article.article', 'image', 1),
(311, 9, 6, 'api::article.article', 'image', 1),
(312, 17, 3, 'api::article.article', 'image', 1),
(325, 16, 1, 'settings.seo', 'shareImage', 1),
(330, 29, 12, 'elements.card', 'image', 1),
(336, 29, 13, 'elements.card', 'image', 1),
(337, 30, 14, 'elements.card', 'image', 1),
(340, 31, 15, 'elements.card', 'image', 1),
(373, 9, 9, 'elements.card', 'image', 1),
(374, 6, 10, 'elements.card', 'image', 1),
(403, 18, 1, 'api::global.global', 'favicon', 1),
(413, 11, 3, 'elements.card', 'image', 1),
(414, 17, 8, 'elements.card', 'image', 1),
(415, 10, 2, 'elements.card', 'image', 1),
(416, 31, 16, 'elements.card', 'image', 1),
(417, 28, 1, 'elements.card', 'image', 1),
(418, 27, 4, 'elements.card', 'image', 1),
(419, 26, 5, 'elements.card', 'image', 1),
(420, 24, 6, 'elements.card', 'image', 1),
(421, 23, 7, 'elements.card', 'image', 1),
(433, 3, 1, 'plugin::menus.menu-item', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
CREATE TABLE `globals` (
  `id` int UNSIGNED NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `globals`
--

INSERT INTO `globals` (`id`, `site_name`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Yuny Incorporadora', '2024-09-13 20:47:36.426000', '2024-09-25 17:02:27.989000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `globals_components`
--

DROP TABLE IF EXISTS `globals_components`;
CREATE TABLE `globals_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `globals_components`
--

INSERT INTO `globals_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(2, 1, 1, 'sections.nav-bar', 'menus', 7),
(7, 1, 1, 'settings.seo', 'defaultSeo', 2),
(9, 1, 1, 'elements.link', 'mainMenu', 1),
(13, 1, 2, 'elements.link', 'mainMenu', 2),
(19, 1, 3, 'elements.link', 'mainMenu', 4),
(21, 1, 4, 'elements.link', 'mainMenu', 3),
(69, 1, 1, 'shared.seo', 'seo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

DROP TABLE IF EXISTS `home_pages`;
CREATE TABLE `home_pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `title`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Yuny', '2024-09-17 18:24:04.477000', '2024-09-26 12:34:14.958000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_pages_components`
--

DROP TABLE IF EXISTS `home_pages_components`;
CREATE TABLE `home_pages_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home_pages_components`
--

INSERT INTO `home_pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(164, 1, 2, 'shared.seo', 'seo', NULL),
(165, 1, 2, 'blocks.hero', 'content', 1),
(166, 1, 1, 'blocks.media-card', 'content', 2),
(167, 1, 2, 'blocks.carousel', 'content', 3),
(168, 1, 1, 'blocks.faq', 'content', 4),
(169, 1, 2, 'blocks.latest-news', 'content', 5);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2024-09-03 14:16:19.385000', '2024-09-03 14:16:19.385000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iconlibrary`
--

DROP TABLE IF EXISTS `iconlibrary`;
CREATE TABLE `iconlibrary` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `iconlibrary`
--

INSERT INTO `iconlibrary` (`id`, `name`, `abbreviation`, `is_enabled`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Ant Design Icons', 'ai', 1, '2024-09-13 17:37:24.576000', '2024-09-13 17:37:24.576000', NULL, NULL),
(2, 'Bootstrap Icons', 'bs', 1, '2024-09-13 17:37:24.596000', '2024-09-13 17:37:24.596000', NULL, NULL),
(3, 'BoxIcons', 'bi', 1, '2024-09-13 17:37:24.612000', '2024-09-13 17:37:24.612000', NULL, NULL),
(4, 'Devicons', 'di', 1, '2024-09-13 17:37:24.627000', '2024-09-13 17:37:24.627000', NULL, NULL),
(5, 'Feather', 'fi', 1, '2024-09-13 17:37:24.665000', '2024-09-13 17:37:24.665000', NULL, NULL),
(6, 'Circum Icons', 'ci', 1, '2024-09-13 17:37:24.667000', '2024-09-13 17:37:24.667000', NULL, NULL),
(7, 'Flat Color Icons', 'fc', 1, '2024-09-13 17:37:24.702000', '2024-09-13 17:37:24.702000', NULL, NULL),
(8, 'Font Awesome 6', 'fa', 1, '2024-09-13 17:37:24.725000', '2024-09-13 17:37:24.725000', NULL, NULL),
(9, 'Game Icons', 'gi', 1, '2024-09-13 17:37:24.759000', '2024-09-13 17:37:24.759000', NULL, NULL),
(10, 'Github Octicons icons', 'go', 1, '2024-09-13 17:37:24.765000', '2024-09-13 17:37:24.765000', NULL, NULL),
(11, 'Heroicons 2', 'hi', 1, '2024-09-13 17:37:24.810000', '2024-09-13 17:37:24.810000', NULL, NULL),
(12, 'Grommet-Icons', 'gr', 1, '2024-09-13 17:37:24.816000', '2024-09-13 17:37:24.816000', NULL, NULL),
(13, 'IcoMoon Free', 'im', 1, '2024-09-13 17:37:24.865000', '2024-09-13 17:37:24.865000', NULL, NULL),
(14, 'Ionicons 5', 'io', 1, '2024-09-13 17:37:24.894000', '2024-09-13 17:37:24.894000', NULL, NULL),
(15, 'Material Design icons', 'md', 1, '2024-09-13 17:37:24.911000', '2024-09-13 17:37:24.911000', NULL, NULL),
(16, 'Radix Icons', 'rx', 1, '2024-09-13 17:37:24.935000', '2024-09-13 17:37:24.935000', NULL, NULL),
(17, 'Remix Icon', 'ri', 1, '2024-09-13 17:37:24.959000', '2024-09-13 17:37:24.959000', NULL, NULL),
(18, 'Simple Icons', 'si', 1, '2024-09-13 17:37:24.990000', '2024-09-13 17:37:24.990000', NULL, NULL),
(19, 'Simple Line Icons', 'sl', 1, '2024-09-13 17:37:24.996000', '2024-09-13 17:37:24.996000', NULL, NULL),
(20, 'Tabler Icons', 'tb', 1, '2024-09-13 17:37:25.016000', '2024-09-13 17:37:25.016000', NULL, NULL),
(21, 'Themify Icons', 'tfi', 1, '2024-09-13 17:37:25.039000', '2024-09-13 17:37:25.039000', NULL, NULL),
(22, 'Typicons', 'ti', 1, '2024-09-13 17:37:25.063000', '2024-09-13 17:37:25.063000', NULL, NULL),
(23, 'VS Code Icons', 'vsc', 1, '2024-09-13 17:37:25.086000', '2024-09-13 17:37:25.086000', NULL, NULL),
(24, 'Weather Icons', 'wi', 1, '2024-09-13 17:37:25.109000', '2024-09-13 17:37:25.109000', NULL, NULL),
(25, 'css.gg', 'cg', 1, '2024-09-13 17:37:25.126000', '2024-09-13 17:37:25.126000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `slug`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'top', 'top', '2024-09-26 12:48:00.214000', '2024-09-26 19:42:25.226000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `order` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `order`, `title`, `url`, `target`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `icon`, `description`) VALUES
(1, 0, 'Sobre', '/sobre', '_self', '2024-09-26 12:48:00.230000', '2024-09-26 19:42:25.188000', NULL, NULL, 'AiFillAccountBook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.'),
(2, 1, 'Empreendimentos', '/empreendimentos', '_self', '2024-09-26 12:48:00.232000', '2024-09-26 19:42:25.177000', NULL, NULL, 'AiFillClockCircle', NULL),
(3, 0, 'Sub link', '/fsdfs', '_parent', '2024-09-26 15:33:49.442000', '2024-09-26 19:42:25.189000', NULL, NULL, 'AiFillAppstore', NULL),
(4, 1, 'Other sub', '/sub', '_self', '2024-09-26 19:00:39.514000', '2024-09-26 19:42:25.190000', NULL, NULL, 'AiFillDingtalkCircle', NULL),
(5, 2, 'One more', '/teste', '_blank', '2024-09-26 19:36:21.825000', '2024-09-26 19:42:25.190000', NULL, NULL, 'AiFillApple', NULL),
(6, 3, 'Two more', '/resre', '_parent', '2024-09-26 19:36:21.827000', '2024-09-26 19:42:25.191000', NULL, NULL, 'AiFillCopyrightCircle', NULL),
(7, 5, 'Four more', '/fdsaf', '_parent', '2024-09-26 19:36:36.972000', '2024-09-26 19:42:25.192000', NULL, NULL, 'AiFillAppstore', NULL),
(8, 6, 'Five more', '/fdas', '_blank', '2024-09-26 19:36:51.936000', '2024-09-26 19:42:25.193000', NULL, NULL, 'AiFillAliwangwang', NULL),
(9, 4, 'New column?', '/fsdf', '_blank', '2024-09-26 19:37:37.378000', '2024-09-26 19:42:25.194000', NULL, NULL, 'AiFillBackward', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items_parent_links`
--

DROP TABLE IF EXISTS `menu_items_parent_links`;
CREATE TABLE `menu_items_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `menu_item_id` int UNSIGNED DEFAULT NULL,
  `inv_menu_item_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu_items_parent_links`
--

INSERT INTO `menu_items_parent_links` (`id`, `menu_item_id`, `inv_menu_item_id`) VALUES
(1, 3, 1),
(3, 4, 1),
(8, 5, 1),
(7, 6, 1),
(11, 7, 1),
(16, 8, 1),
(22, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items_root_menu_links`
--

DROP TABLE IF EXISTS `menu_items_root_menu_links`;
CREATE TABLE `menu_items_root_menu_links` (
  `id` int UNSIGNED NOT NULL,
  `menu_item_id` int UNSIGNED DEFAULT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `menu_item_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu_items_root_menu_links`
--

INSERT INTO `menu_items_root_menu_links` (`id`, `menu_item_id`, `menu_id`, `menu_item_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 2),
(4, 4, 1, 3),
(5, 6, 1, 4),
(6, 5, 1, 4),
(7, 7, 1, 5),
(8, 8, 1, 6),
(9, 9, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `rank` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `content`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `rank`) VALUES
(1, 'Bossa Pinheiros', 'bossa-pinheiros', 'Aptos de 70m² a 92 m² | Boutique Apartments de 32m² a 66 m²', '### Em cada estrofe, experiências desenham o novo em Pinheiros\n\nBossa Pinheiros tem o dom de inspirar quem mora e quem passa. O mais novo Yuny oferece apartamentos e apartamentos boutique com iluminação natural para colocar você em harmonia com um novo amanhecer. Além de integrar seus dias com a cidade através de uma galeria viva com o que Pinheiros tem de melhor.​\n\nAptos de 70m² a 92 m² | Boutique Apartments de 32m² a 66 m²', '2024-09-16 15:45:36.785000', '2024-09-24 14:07:27.530000', '2024-09-16 16:22:11.928000', 1, 1, NULL),
(2, 'Quem somos', 'quem-somos', 'Service Description', '## DESIGN QUE INSPIRA\nPensamos a Yuny muito além de uma empresa. Enxergamos nela a possibilidade de mudar a realidade de pessoas e impactar positivamente aquilo que está ao nosso redor.\n\n### Marcelo e Marcos Yunes\nFundadores da Yuny Incorporadora', '2024-09-19 14:39:30.101000', '2024-09-24 14:01:45.301000', '2024-09-19 14:39:41.476000', 1, 1, NULL),
(3, 'Relatório de Sustentabilidade', 'relatorio-de-sustentabilidade', 'Crescendo de forma sustentável', '#### Água\nBuscamos as melhores soluções de projeto usando o consumo inteligente dos recursos naturais, especificando dispositivos modernos e promovendo programas de conscientização sobre o uso racional da água e energia.\n\n#### Materiais\nPrivilegiamos produtos e materiais com alta porcentagem de conteúdo reciclado e, para reduzir os impactos causados pelo transporte e extração, priorizamos a aquisição de materiais extraídos e manufaturados num raio inferior a 800 km.\n\n#### Madeira\nUtilizamos apenas madeiras extraídas de forma legalizada e identificadas pelo DOF – Documento de Origem Florestal controlado pelo Ibama.\n\n#### Poluição\nDependendo dos níveis de emissão, o material particulado pode causar impactos no meio ambiente e transtornos para a população. Para que isso não ocorra, implementamos diversas estratégias a fim de controlar a poluição e evitar a saída de sedimentos do terreno.\n\n#### Carbon Control\nO Programa Carbon Free foi desenvolvido pela Iniciativa Verde para que as emissões de gases de efeito estufa (GEE) decorrentes de qualquer atividade humana, como produtos, serviços, construções ou eventos, sejam compensadas por meio da recomposição da Mata Atlântica. Ou seja, a Iniciativa Verde faz o plantio de árvores nativas de um dos biomas mais ricos em biodiversidade do mundo em áreas de preservação. Quem participa do programa recebe o selo Carbon Free e um certificado com o número de árvores plantadas e a quantidade de gases de efeito estufa compensada.', '2024-09-24 13:54:25.898000', '2024-09-24 13:58:09.848000', '2024-09-24 13:55:00.174000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages_components`
--

DROP TABLE IF EXISTS `pages_components`;
CREATE TABLE `pages_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages_components`
--

INSERT INTO `pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(12, 3, 4, 'blocks.hero', 'before', 1),
(13, 2, 5, 'blocks.hero', 'before', 1),
(16, 1, 6, 'blocks.hero', 'before', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_section_links`
--

DROP TABLE IF EXISTS `pages_section_links`;
CREATE TABLE `pages_section_links` (
  `id` int UNSIGNED NOT NULL,
  `page_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `page_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages_section_links`
--

INSERT INTO `pages_section_links` (`id`, `page_id`, `section_id`, `page_order`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Empreendimentos', 'empreendimentos', 'This is a section example', '2024-09-16 15:44:50.136000', '2024-09-24 12:12:38.092000', '2024-09-16 16:22:21.679000', 1, 1),
(2, 'Sobre a Yuny', 'sobre', 'Pensamos a Yuny muito além de uma empresa. Enxergamos nela a possibilidade de mudar a realidade de pessoas e impactar positivamente aquilo que está ao nosso redor.', '2024-09-19 00:01:59.570000', '2024-09-24 19:28:14.769000', '2024-09-19 00:03:22.091000', 1, 1),
(3, 'Investidores', 'investidores', NULL, '2024-09-24 13:51:58.420000', '2024-09-24 13:52:46.099000', '2024-09-24 13:52:14.239000', 1, 1),
(4, 'Batata', 'batata', NULL, '2024-09-24 18:59:46.421000', '2024-09-24 18:59:49.164000', '2024-09-24 18:59:49.159000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections_components`
--

DROP TABLE IF EXISTS `sections_components`;
CREATE TABLE `sections_components` (
  `id` int UNSIGNED NOT NULL,
  `entity_id` int UNSIGNED DEFAULT NULL,
  `component_id` int UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections_components`
--

INSERT INTO `sections_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(10, 1, 3, 'blocks.latest-news', 'content', 1),
(13, 3, 3, 'blocks.hero', 'content', 1),
(14, 4, 5, 'blocks.latest-news', 'content', 1),
(15, 2, 3, 'blocks.carousel', 'content', 1),
(16, 2, 2, 'blocks.faq', 'content', 2);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'token', '', 'read-only', '2c3d146c78d65f321b5ffaa9e1f15f24861899ad23ba7bedcbeed0756852cd632a96115577d6e4fdcaecaee8c3365159e26b1e4d0ddc64155a8da29e9ec14418', NULL, NULL, NULL, '2024-09-03 17:25:47.061000', '2024-09-03 17:25:47.061000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `environment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release-action\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release-action\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\"},\"plugin::react-icons.iconlibrary\":{\"kind\":\"collectionType\",\"collectionName\":\"iconlibrary\",\"info\":{\"singularName\":\"iconlibrary\",\"pluralName\":\"iconlibraries\",\"displayName\":\"IconLibrary\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"abbreviation\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":3},\"isEnabled\":{\"type\":\"boolean\",\"default\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"iconlibrary\",\"info\":{\"singularName\":\"iconlibrary\",\"pluralName\":\"iconlibraries\",\"displayName\":\"IconLibrary\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"abbreviation\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":3},\"isEnabled\":{\"type\":\"boolean\",\"default\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"iconlibrary\",\"connection\":\"default\",\"uid\":\"plugin::react-icons.iconlibrary\",\"plugin\":\"react-icons\",\"globalId\":\"ReactIconsIconlibrary\"},\"plugin::menus.menu\":{\"kind\":\"collectionType\",\"collectionName\":\"menus\",\"info\":{\"name\":\"Menu\",\"displayName\":\"Menu\",\"singularName\":\"menu\",\"pluralName\":\"menus\",\"tableName\":\"menus\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::menus.menu-item\",\"mappedBy\":\"root_menu\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"menus\",\"info\":{\"name\":\"Menu\",\"displayName\":\"Menu\",\"singularName\":\"menu\",\"pluralName\":\"menus\",\"tableName\":\"menus\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"items\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::menus.menu-item\",\"mappedBy\":\"root_menu\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"menu\",\"connection\":\"default\",\"uid\":\"plugin::menus.menu\",\"plugin\":\"menus\",\"globalId\":\"MenusMenu\"},\"plugin::menus.menu-item\":{\"kind\":\"collectionType\",\"collectionName\":\"menu_items\",\"info\":{\"name\":\"MenuItem\",\"displayName\":\"Menu Item\",\"singularName\":\"menu-item\",\"pluralName\":\"menu-items\",\"tableName\":\"menu_items\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"order\":{\"type\":\"integer\"},\"title\":{\"type\":\"string\",\"required\":true},\"url\":{\"type\":\"string\"},\"target\":{\"type\":\"enumeration\",\"enum\":[\"_blank\",\"_parent\",\"_self\",\"_top\"]},\"root_menu\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::menus.menu\",\"inversedBy\":\"items\",\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::menus.menu-item\"},\"description\":{\"type\":\"text\"},\"icon\":{\"type\":\"string\",\"customField\":\"plugin::react-icons.icon\"},\"image\":{\"type\":\"media\",\"allowedTypes\":[\"images\"],\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"menu_items\",\"info\":{\"name\":\"MenuItem\",\"displayName\":\"Menu Item\",\"singularName\":\"menu-item\",\"pluralName\":\"menu-items\",\"tableName\":\"menu_items\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"order\":{\"type\":\"integer\"},\"title\":{\"type\":\"string\",\"required\":true},\"url\":{\"type\":\"string\"},\"target\":{\"type\":\"enumeration\",\"enum\":[\"_blank\",\"_parent\",\"_self\",\"_top\"]},\"root_menu\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::menus.menu\",\"inversedBy\":\"items\",\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::menus.menu-item\"},\"description\":{\"type\":\"text\"},\"icon\":{\"type\":\"customField\",\"customField\":\"plugin::react-icons.icon\"},\"image\":{\"type\":\"media\",\"allowedTypes\":[\"images\"],\"multiple\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"menu-item\",\"connection\":\"default\",\"uid\":\"plugin::menus.menu-item\",\"plugin\":\"menus\",\"globalId\":\"MenusMenuItem\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::article.article\":{\"kind\":\"collectionType\",\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\",\"required\":true},\"content\":{\"type\":\"richtext\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::writer.writer\",\"inversedBy\":\"articles\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\",\"required\":true},\"content\":{\"type\":\"richtext\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::writer.writer\",\"inversedBy\":\"articles\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"article\",\"connection\":\"default\",\"uid\":\"api::article.article\",\"apiName\":\"article\",\"globalId\":\"Article\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"rank\":{\"type\":\"integer\",\"private\":true},\"articles\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"categories\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"rank\":{\"type\":\"integer\",\"private\":true},\"articles\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"categories\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"files\",\"images\",\"videos\"]},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"files\",\"images\",\"videos\"]},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":true}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"global\",\"connection\":\"default\",\"uid\":\"api::global.global\",\"apiName\":\"global\",\"globalId\":\"Global\",\"actions\":{},\"lifecycles\":{}},\"api::home-page.home-page\":{\"kind\":\"singleType\",\"collectionName\":\"home_pages\",\"info\":{\"singularName\":\"home-page\",\"pluralName\":\"home-pages\",\"displayName\":\"Home Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.latest-news\",\"blocks.hero\",\"blocks.carousel\",\"blocks.faq\",\"blocks.media-card\"]},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"home_pages\",\"info\":{\"singularName\":\"home-page\",\"pluralName\":\"home-pages\",\"displayName\":\"Home Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.latest-news\",\"blocks.hero\",\"blocks.carousel\",\"blocks.faq\",\"blocks.media-card\"]},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":false}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"home-page\",\"connection\":\"default\",\"uid\":\"api::home-page.home-page\",\"apiName\":\"home-page\",\"globalId\":\"HomePage\",\"actions\":{},\"lifecycles\":{}},\"api::page.page\":{\"kind\":\"collectionType\",\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"description\":{\"type\":\"string\"},\"before\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.hero\"]},\"content\":{\"type\":\"richtext\"},\"after\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.latest-news\",\"blocks.carousel\",\"blocks.faq\",\"blocks.media-card\"]},\"rank\":{\"type\":\"integer\"},\"section\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::section.section\",\"inversedBy\":\"pages\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"description\":{\"type\":\"string\"},\"before\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.hero\"]},\"content\":{\"type\":\"richtext\"},\"after\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.latest-news\",\"blocks.carousel\",\"blocks.faq\",\"blocks.media-card\"]},\"rank\":{\"type\":\"integer\"},\"section\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::section.section\",\"inversedBy\":\"pages\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"page\",\"connection\":\"default\",\"uid\":\"api::page.page\",\"apiName\":\"page\",\"globalId\":\"Page\",\"actions\":{},\"lifecycles\":{}},\"api::section.section\":{\"kind\":\"collectionType\",\"collectionName\":\"sections\",\"info\":{\"singularName\":\"section\",\"pluralName\":\"sections\",\"displayName\":\"Section\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"description\":{\"type\":\"string\"},\"content\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.latest-news\",\"blocks.hero\",\"blocks.carousel\",\"blocks.faq\",\"blocks.media-card\"]},\"pages\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::page.page\",\"mappedBy\":\"section\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sections\",\"info\":{\"singularName\":\"section\",\"pluralName\":\"sections\",\"displayName\":\"Section\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"description\":{\"type\":\"string\"},\"content\":{\"type\":\"dynamiczone\",\"components\":[\"blocks.latest-news\",\"blocks.hero\",\"blocks.carousel\",\"blocks.faq\",\"blocks.media-card\"]},\"pages\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::page.page\",\"mappedBy\":\"section\"},\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"section\",\"connection\":\"default\",\"uid\":\"api::section.section\",\"apiName\":\"section\",\"globalId\":\"Section\",\"actions\":{},\"lifecycles\":{}},\"api::writer.writer\":{\"kind\":\"collectionType\",\"collectionName\":\"writers\",\"info\":{\"singularName\":\"writer\",\"pluralName\":\"writers\",\"displayName\":\"Writer\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"picture\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"files\",\"images\",\"videos\"]},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"email\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"writers\",\"info\":{\"singularName\":\"writer\",\"pluralName\":\"writers\",\"displayName\":\"Writer\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"picture\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"files\",\"images\",\"videos\"]},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"email\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"writer\",\"connection\":\"default\",\"uid\":\"api::writer.writer\",\"apiName\":\"writer\",\"globalId\":\"Writer\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"locale\":{\"edit\":{\"label\":\"locale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"locale\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"locale\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"locale\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(17, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(18, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(19, 'plugin_upload_metrics', '{\"weeklySchedule\":\"28 23 14 * * 3\",\"lastWeeklyUpdate\":1727274208096}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(21, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(22, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(23, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(26, 'type_setup_initHasRun', 'true', 'boolean', 'development', NULL),
(27, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"rank\":{\"edit\":{\"label\":\"rank\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"rank\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"articles\",\"size\":6},{\"name\":\"rank\",\"size\":4}],[{\"name\":\"seo\",\"size\":12}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(28, 'plugin_content_manager_configuration_content_types::api::article.article', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"seo\",\"size\":12}],[{\"name\":\"description\",\"size\":6},{\"name\":\"categories\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"author\",\"size\":6}]],\"list\":[\"id\",\"title\",\"description\",\"slug\",\"categories\"]},\"uid\":\"api::article.article\"}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::writer.writer', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"picture\":{\"edit\":{\"label\":\"picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"picture\",\"searchable\":false,\"sortable\":false}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"picture\",\"articles\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"articles\",\"size\":6},{\"name\":\"email\",\"size\":6}]]},\"uid\":\"api::writer.writer\"}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::global.global', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"siteName\",\"favicon\",\"seo\"],\"edit\":[[{\"name\":\"siteName\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"seo\",\"size\":12}]]},\"uid\":\"api::global.global\"}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::plugin::react-icons.iconlibrary', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"abbreviation\":{\"edit\":{\"label\":\"abbreviation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"abbreviation\",\"searchable\":true,\"sortable\":true}},\"isEnabled\":{\"edit\":{\"label\":\"isEnabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEnabled\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"abbreviation\",\"isEnabled\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"abbreviation\",\"size\":6}],[{\"name\":\"isEnabled\",\"size\":4}]]},\"uid\":\"plugin::react-icons.iconlibrary\"}', 'object', NULL, NULL),
(37, 'plugin_drag-drop-content-types_settings', '{\"body\":{\"rank\":\"rank\",\"title\":\"\",\"subtitle\":\"\",\"triggerWebhooks\":false}}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::api::page.page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"before\":{\"edit\":{\"label\":\"before\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"before\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"after\":{\"edit\":{\"label\":\"after\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"after\",\"searchable\":false,\"sortable\":false}},\"rank\":{\"edit\":{\"label\":\"rank\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"rank\",\"searchable\":true,\"sortable\":true}},\"section\":{\"edit\":{\"label\":\"section\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"section\",\"searchable\":true,\"sortable\":true}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"section\",\"size\":6}],[{\"name\":\"before\",\"size\":12}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"after\",\"size\":12}],[{\"name\":\"rank\",\"size\":4}],[{\"name\":\"seo\",\"size\":12}]]},\"uid\":\"api::page.page\"}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::api::section.section', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"pages\":{\"edit\":{\"label\":\"pages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"pages\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"pages\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]]},\"uid\":\"api::section.section\"}', 'object', NULL, NULL),
(43, 'plugin_content_manager_configuration_components::blocks.carousel', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"cards\":{\"edit\":{\"label\":\"cards\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cards\",\"searchable\":false,\"sortable\":false}},\"buttons\":{\"edit\":{\"label\":\"buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"cards\",\"buttons\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"cards\",\"size\":12}],[{\"name\":\"buttons\",\"size\":12}]]},\"uid\":\"blocks.carousel\",\"isComponent\":true}', 'object', NULL, NULL),
(45, 'plugin_content_manager_configuration_components::blocks.latest-news', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"buttons\":{\"edit\":{\"label\":\"buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"articles\",\"buttons\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"articles\",\"size\":6}],[{\"name\":\"buttons\",\"size\":12}]]},\"uid\":\"blocks.latest-news\",\"isComponent\":true}', 'object', NULL, NULL),
(51, 'plugin_content_manager_configuration_components::blocks.hero', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"slides\":{\"edit\":{\"label\":\"slides\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slides\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"slides\"],\"edit\":[[{\"name\":\"slides\",\"size\":12}]]},\"uid\":\"blocks.hero\",\"isComponent\":true}', 'object', NULL, NULL),
(52, 'plugin_content_manager_configuration_components::elements.button', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"url\",\"icon\"],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"icon\",\"size\":6},{\"name\":\"color\",\"size\":6}]]},\"uid\":\"elements.button\",\"isComponent\":true}', 'object', NULL, NULL),
(53, 'plugin_content_manager_configuration_components::elements.card', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"background\":{\"edit\":{\"label\":\"background\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"background\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"image\",\"background\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"background\",\"size\":6}],[{\"name\":\"image\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"label\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"color\",\"size\":6}]]},\"uid\":\"elements.card\",\"isComponent\":true}', 'object', NULL, NULL),
(54, 'plugin_content_manager_configuration_components::elements.link', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"label\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"label\",\"url\",\"icon\"],\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"url\",\"size\":6}],[{\"name\":\"icon\",\"size\":6}]]},\"uid\":\"elements.link\",\"isComponent\":true}', 'object', NULL, NULL),
(55, 'plugin_content_manager_configuration_content_types::api::home-page.home-page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"seo\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"seo\",\"size\":12}]]},\"uid\":\"api::home-page.home-page\"}', 'object', NULL, NULL),
(57, 'plugin_content_manager_configuration_components::elements.title-and-description', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]]},\"uid\":\"elements.title-and-description\",\"isComponent\":true}', 'object', NULL, NULL),
(58, 'plugin_content_manager_configuration_components::blocks.faq', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"questions\":{\"edit\":{\"label\":\"questions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"questions\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"questions\"],\"edit\":[[{\"name\":\"questions\",\"size\":12}]]},\"uid\":\"blocks.faq\",\"isComponent\":true}', 'object', NULL, NULL),
(59, 'plugin_content_manager_configuration_components::blocks.media-card', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}},\"mediaPosition\":{\"edit\":{\"label\":\"mediaPosition\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mediaPosition\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"card\",\"mediaPosition\"],\"edit\":[[{\"name\":\"card\",\"size\":12}],[{\"name\":\"mediaPosition\",\"size\":6}]]},\"uid\":\"blocks.media-card\",\"isComponent\":true}', 'object', NULL, NULL),
(60, 'plugin_seo_settings', '{\"api::article.article\":{\"collectionName\":\"article\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::category.category\":{\"collectionName\":\"category\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::global.global\":{\"collectionName\":\"global\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::home-page.home-page\":{\"collectionName\":\"home-page\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::page.page\":{\"collectionName\":\"page\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::section.section\":{\"collectionName\":\"section\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}},\"api::writer.writer\":{\"collectionName\":\"writer\",\"seoChecks\":{\"metaTitle\":true,\"metaDescription\":true,\"metaRobots\":true,\"metaSocial\":true,\"wordCount\":true,\"canonicalUrl\":true,\"keywordDensity\":true,\"structuredData\":true,\"alternativeText\":true,\"lastUpdatedAt\":true}}}', 'object', NULL, NULL),
(61, 'plugin_content_manager_configuration_components::shared.seo', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"metaImage\":{\"edit\":{\"label\":\"metaImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaImage\",\"searchable\":false,\"sortable\":false}},\"metaSocial\":{\"edit\":{\"label\":\"metaSocial\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaSocial\",\"searchable\":false,\"sortable\":false}},\"keywords\":{\"edit\":{\"label\":\"keywords\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"keywords\",\"searchable\":true,\"sortable\":true}},\"metaRobots\":{\"edit\":{\"label\":\"metaRobots\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaRobots\",\"searchable\":true,\"sortable\":true}},\"structuredData\":{\"edit\":{\"label\":\"structuredData\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"structuredData\",\"searchable\":false,\"sortable\":false}},\"metaViewport\":{\"edit\":{\"label\":\"metaViewport\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaViewport\",\"searchable\":true,\"sortable\":true}},\"canonicalURL\":{\"edit\":{\"label\":\"canonicalURL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"canonicalURL\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"metaImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"metaImage\",\"size\":6}],[{\"name\":\"metaSocial\",\"size\":12}],[{\"name\":\"keywords\",\"size\":6},{\"name\":\"metaRobots\",\"size\":6}],[{\"name\":\"structuredData\",\"size\":12}],[{\"name\":\"metaViewport\",\"size\":6},{\"name\":\"canonicalURL\",\"size\":6}]]},\"uid\":\"shared.seo\",\"isComponent\":true}', 'object', NULL, NULL),
(62, 'plugin_content_manager_configuration_components::shared.meta-social', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"socialNetwork\":{\"edit\":{\"label\":\"socialNetwork\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialNetwork\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"socialNetwork\",\"title\",\"description\"],\"edit\":[[{\"name\":\"socialNetwork\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image\",\"size\":6}]]},\"uid\":\"shared.meta-social\",\"isComponent\":true}', 'object', NULL, NULL),
(63, 'plugin_content_manager_configuration_content_types::plugin::menus.menu', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"items\":{\"edit\":{\"label\":\"items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"items\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"items\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"items\",\"size\":6}]]},\"uid\":\"plugin::menus.menu\"}', 'object', NULL, NULL),
(64, 'plugin_content_manager_configuration_content_types::plugin::menus.menu-item', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"target\":{\"edit\":{\"label\":\"target\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"target\",\"searchable\":true,\"sortable\":true}},\"root_menu\":{\"edit\":{\"label\":\"root_menu\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"root_menu\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"order\",\"title\",\"url\"],\"edit\":[[{\"name\":\"order\",\"size\":4},{\"name\":\"title\",\"size\":6}],[{\"name\":\"url\",\"size\":6},{\"name\":\"target\",\"size\":6}],[{\"name\":\"root_menu\",\"size\":6},{\"name\":\"parent\",\"size\":6}],[{\"name\":\"icon\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"plugin::menus.menu-item\"}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(131, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"action_parameters\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_releases\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"released_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"scheduled_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"timezone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_entry_valid\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"iconlibrary\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"abbreviation\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"iconlibrary_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"iconlibrary_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"iconlibrary_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"iconlibrary_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menus_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"menus_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"menus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"menus_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"menus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menu_items\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"icon\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menu_items_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"menu_items_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"menu_items_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"menu_items_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"articles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"articles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"articles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"rank\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"site_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"home_pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"home_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"home_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"home_pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"home_pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"rank\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sections\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sections_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"sections_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sections_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sections_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sections_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"writers\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"writers_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"writers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"writers_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"writers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"keywords\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_robots\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"structured_data\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_viewport\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"canonical_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_meta_socials\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"social_network\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_media_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"media_position\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_sections_latest_news\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_heroes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_blocks_faqs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_sections_carousels\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_elements_title_and_descriptions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_elements_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"icon\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_elements_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"background\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"color\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_elements_buttons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"icon\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"color\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions_release_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"release_action_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_action_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_unique\", \"type\": \"unique\", \"columns\": [\"release_action_id\", \"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_order_inv_fk\", \"columns\": [\"release_action_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_release_actions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_releases\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menu_items_root_menu_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"menu_item_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"menu_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"menu_item_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menu_items_root_menu_links_fk\", \"columns\": [\"menu_item_id\"]}, {\"name\": \"menu_items_root_menu_links_inv_fk\", \"columns\": [\"menu_id\"]}, {\"name\": \"menu_items_root_menu_links_unique\", \"type\": \"unique\", \"columns\": [\"menu_item_id\", \"menu_id\"]}, {\"name\": \"menu_items_root_menu_links_order_inv_fk\", \"columns\": [\"menu_item_order\"]}], \"foreignKeys\": [{\"name\": \"menu_items_root_menu_links_fk\", \"columns\": [\"menu_item_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menu_items\", \"referencedColumns\": [\"id\"]}, {\"name\": \"menu_items_root_menu_links_inv_fk\", \"columns\": [\"menu_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menus\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menu_items_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"menu_item_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_menu_item_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menu_items_parent_links_fk\", \"columns\": [\"menu_item_id\"]}, {\"name\": \"menu_items_parent_links_inv_fk\", \"columns\": [\"inv_menu_item_id\"]}, {\"name\": \"menu_items_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"menu_item_id\", \"inv_menu_item_id\"]}], \"foreignKeys\": [{\"name\": \"menu_items_parent_links_fk\", \"columns\": [\"menu_item_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menu_items\", \"referencedColumns\": [\"id\"]}, {\"name\": \"menu_items_parent_links_inv_fk\", \"columns\": [\"inv_menu_item_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menu_items\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_field_index\", \"columns\": [\"field\"]}, {\"name\": \"articles_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"articles_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"articles_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"articles_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles_categories_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"article_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_categories_links_fk\", \"columns\": [\"article_id\"]}, {\"name\": \"articles_categories_links_inv_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"articles_categories_links_unique\", \"type\": \"unique\", \"columns\": [\"article_id\", \"category_id\"]}, {\"name\": \"articles_categories_links_order_fk\", \"columns\": [\"category_order\"]}, {\"name\": \"articles_categories_links_order_inv_fk\", \"columns\": [\"article_order\"]}], \"foreignKeys\": [{\"name\": \"articles_categories_links_fk\", \"columns\": [\"article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_categories_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles_author_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"writer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"article_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_author_links_fk\", \"columns\": [\"article_id\"]}, {\"name\": \"articles_author_links_inv_fk\", \"columns\": [\"writer_id\"]}, {\"name\": \"articles_author_links_unique\", \"type\": \"unique\", \"columns\": [\"article_id\", \"writer_id\"]}, {\"name\": \"articles_author_links_order_inv_fk\", \"columns\": [\"article_order\"]}], \"foreignKeys\": [{\"name\": \"articles_author_links_fk\", \"columns\": [\"article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_author_links_inv_fk\", \"columns\": [\"writer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"writers\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_field_index\", \"columns\": [\"field\"]}, {\"name\": \"categories_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"categories_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"categories_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"categories_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_field_index\", \"columns\": [\"field\"]}, {\"name\": \"globals_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"globals_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"home_pages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"home_pages_field_index\", \"columns\": [\"field\"]}, {\"name\": \"home_pages_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"home_pages_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"home_pages_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"home_pages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"home_pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_field_index\", \"columns\": [\"field\"]}, {\"name\": \"pages_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"pages_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"pages_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"pages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages_section_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"page_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"page_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_section_links_fk\", \"columns\": [\"page_id\"]}, {\"name\": \"pages_section_links_inv_fk\", \"columns\": [\"section_id\"]}, {\"name\": \"pages_section_links_unique\", \"type\": \"unique\", \"columns\": [\"page_id\", \"section_id\"]}, {\"name\": \"pages_section_links_order_inv_fk\", \"columns\": [\"page_order\"]}], \"foreignKeys\": [{\"name\": \"pages_section_links_fk\", \"columns\": [\"page_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pages\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pages_section_links_inv_fk\", \"columns\": [\"section_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sections\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sections_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sections_field_index\", \"columns\": [\"field\"]}, {\"name\": \"sections_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"sections_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"sections_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"sections_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sections\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_seos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_seos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_shared_seos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_shared_seos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_shared_seos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_seos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_media_cards_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_blocks_media_cards_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_blocks_media_cards_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_blocks_media_cards_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_blocks_media_cards_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_blocks_media_cards_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_blocks_media_cards\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_sections_latest_news_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_sections_latest_news_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_sections_latest_news_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_sections_latest_news_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_sections_latest_news_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_sections_latest_news_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_sections_latest_news\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_sections_latest_news_articles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"latest_news_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"article_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_sections_latest_news_articles_links_fk\", \"columns\": [\"latest_news_id\"]}, {\"name\": \"components_sections_latest_news_articles_links_inv_fk\", \"columns\": [\"article_id\"]}, {\"name\": \"components_sections_latest_news_articles_links_unique\", \"type\": \"unique\", \"columns\": [\"latest_news_id\", \"article_id\"]}, {\"name\": \"components_sections_latest_news_articles_links_order_fk\", \"columns\": [\"article_order\"]}], \"foreignKeys\": [{\"name\": \"components_sections_latest_news_articles_links_fk\", \"columns\": [\"latest_news_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_sections_latest_news\", \"referencedColumns\": [\"id\"]}, {\"name\": \"components_sections_latest_news_articles_links_inv_fk\", \"columns\": [\"article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_heroes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_blocks_heroes_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_blocks_heroes_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_blocks_heroes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_blocks_heroes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_blocks_heroes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_blocks_heroes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_blocks_faqs_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_blocks_faqs_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_blocks_faqs_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_blocks_faqs_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_blocks_faqs_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_blocks_faqs_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_blocks_faqs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_sections_carousels_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_sections_carousels_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_sections_carousels_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_sections_carousels_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_sections_carousels_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_sections_carousels_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_sections_carousels\", \"referencedColumns\": [\"id\"]}]}]}', '2024-09-26 18:41:32', '92b3c8a29ae140186eb4f3fb32d475fb');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

DROP TABLE IF EXISTS `strapi_releases`;
CREATE TABLE `strapi_releases` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

DROP TABLE IF EXISTS `strapi_release_actions`;
CREATE TABLE `strapi_release_actions` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `target_id` int UNSIGNED DEFAULT NULL,
  `target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_links`
--

DROP TABLE IF EXISTS `strapi_release_actions_release_links`;
CREATE TABLE `strapi_release_actions_release_links` (
  `id` int UNSIGNED NOT NULL,
  `release_action_id` int UNSIGNED DEFAULT NULL,
  `release_id` int UNSIGNED DEFAULT NULL,
  `release_action_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

DROP TABLE IF EXISTS `strapi_transfer_tokens`;
CREATE TABLE `strapi_transfer_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

DROP TABLE IF EXISTS `strapi_transfer_token_permissions`;
CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_transfer_token_permissions_token_links`;
CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `transfer_token_permission_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2024-09-03 14:16:19.356000', '2024-09-03 14:16:19.356000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2024-09-03 14:16:19.357000', '2024-09-03 14:16:19.357000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-09-03 14:16:19.365000', '2024-09-03 14:16:19.365000', NULL, NULL),
(74, 'api::article.article.find', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(75, 'api::article.article.findOne', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(76, 'api::category.category.find', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(77, 'api::category.category.findOne', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(78, 'api::global.global.find', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(80, 'api::writer.writer.find', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(81, 'api::writer.writer.findOne', '2024-09-10 13:22:07.519000', '2024-09-10 13:22:07.519000', NULL, NULL),
(82, 'api::page.page.find', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(83, 'api::page.page.findOne', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(84, 'api::section.section.find', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(85, 'api::section.section.findOne', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(86, 'plugin::content-type-builder.components.getComponents', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(87, 'plugin::content-type-builder.components.getComponent', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(88, 'plugin::content-type-builder.content-types.getContentTypes', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(89, 'plugin::content-type-builder.content-types.getContentType', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(90, 'plugin::i18n.locales.listLocales', '2024-09-16 18:44:51.065000', '2024-09-16 18:44:51.065000', NULL, NULL),
(91, 'api::home-page.home-page.find', '2024-09-17 18:24:58.115000', '2024-09-17 18:24:58.115000', NULL, NULL),
(93, 'plugin::menus.menu.find', '2024-09-26 12:51:25.369000', '2024-09-26 12:51:25.369000', NULL, NULL),
(94, 'plugin::menus.menu.findOne', '2024-09-26 12:51:25.369000', '2024-09-26 12:51:25.369000', NULL, NULL),
(95, 'plugin::menus.menu-item.find', '2024-09-26 12:51:25.369000', '2024-09-26 12:51:25.369000', NULL, NULL),
(96, 'plugin::menus.menu-item.findOne', '2024-09-26 12:51:25.369000', '2024-09-26 12:51:25.369000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 8, 2, 1),
(9, 9, 2, 1),
(74, 74, 2, 2),
(75, 75, 2, 2),
(76, 76, 2, 2),
(77, 78, 2, 2),
(79, 77, 2, 2),
(80, 80, 2, 3),
(81, 81, 2, 3),
(82, 82, 2, 4),
(83, 84, 2, 4),
(84, 85, 2, 4),
(85, 86, 2, 4),
(86, 87, 2, 4),
(87, 88, 2, 4),
(88, 89, 2, 4),
(89, 83, 2, 4),
(90, 90, 2, 5),
(91, 91, 2, 6),
(93, 94, 2, 7),
(94, 93, 2, 7),
(95, 95, 2, 7),
(96, 96, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-09-03 14:16:19.344000', '2024-09-03 14:16:19.344000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2024-09-03 14:16:19.349000', '2024-09-26 12:51:25.362000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmation_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

DROP TABLE IF EXISTS `writers`;
CREATE TABLE `writers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `email`) VALUES
(1, 'Sarah Baker', '2024-09-10 13:32:15.822000', '2024-09-10 13:32:15.822000', 1, 1, 'sarahbaker@strapi.io'),
(2, 'David Doe', '2024-09-10 13:32:38.938000', '2024-09-10 13:32:38.938000', 1, 1, 'daviddoe@strapi.io');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`),
  ADD KEY `articles_created_by_id_fk` (`created_by_id`),
  ADD KEY `articles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `articles_author_links`
--
ALTER TABLE `articles_author_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_author_links_unique` (`article_id`,`writer_id`),
  ADD KEY `articles_author_links_fk` (`article_id`),
  ADD KEY `articles_author_links_inv_fk` (`writer_id`),
  ADD KEY `articles_author_links_order_inv_fk` (`article_order`);

--
-- Indexes for table `articles_categories_links`
--
ALTER TABLE `articles_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_categories_links_unique` (`article_id`,`category_id`),
  ADD KEY `articles_categories_links_fk` (`article_id`),
  ADD KEY `articles_categories_links_inv_fk` (`category_id`),
  ADD KEY `articles_categories_links_order_fk` (`category_order`),
  ADD KEY `articles_categories_links_order_inv_fk` (`article_order`);

--
-- Indexes for table `articles_components`
--
ALTER TABLE `articles_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `articles_field_index` (`field`),
  ADD KEY `articles_component_type_index` (`component_type`),
  ADD KEY `articles_entity_fk` (`entity_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories_components`
--
ALTER TABLE `categories_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `categories_field_index` (`field`),
  ADD KEY `categories_component_type_index` (`component_type`),
  ADD KEY `categories_entity_fk` (`entity_id`);

--
-- Indexes for table `components_blocks_faqs`
--
ALTER TABLE `components_blocks_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_blocks_faqs_components`
--
ALTER TABLE `components_blocks_faqs_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_blocks_faqs_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_blocks_faqs_field_index` (`field`),
  ADD KEY `components_blocks_faqs_component_type_index` (`component_type`),
  ADD KEY `components_blocks_faqs_entity_fk` (`entity_id`);

--
-- Indexes for table `components_blocks_heroes`
--
ALTER TABLE `components_blocks_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_blocks_heroes_components`
--
ALTER TABLE `components_blocks_heroes_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_blocks_heroes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_blocks_heroes_field_index` (`field`),
  ADD KEY `components_blocks_heroes_component_type_index` (`component_type`),
  ADD KEY `components_blocks_heroes_entity_fk` (`entity_id`);

--
-- Indexes for table `components_blocks_media_cards`
--
ALTER TABLE `components_blocks_media_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_blocks_media_cards_components`
--
ALTER TABLE `components_blocks_media_cards_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_blocks_media_cards_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_blocks_media_cards_field_index` (`field`),
  ADD KEY `components_blocks_media_cards_component_type_index` (`component_type`),
  ADD KEY `components_blocks_media_cards_entity_fk` (`entity_id`);

--
-- Indexes for table `components_elements_buttons`
--
ALTER TABLE `components_elements_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_cards`
--
ALTER TABLE `components_elements_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_links`
--
ALTER TABLE `components_elements_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_title_and_descriptions`
--
ALTER TABLE `components_elements_title_and_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_sections_carousels`
--
ALTER TABLE `components_sections_carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_sections_carousels_components`
--
ALTER TABLE `components_sections_carousels_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_sections_carousels_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_sections_carousels_field_index` (`field`),
  ADD KEY `components_sections_carousels_component_type_index` (`component_type`),
  ADD KEY `components_sections_carousels_entity_fk` (`entity_id`);

--
-- Indexes for table `components_sections_latest_news`
--
ALTER TABLE `components_sections_latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_sections_latest_news_articles_links`
--
ALTER TABLE `components_sections_latest_news_articles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_sections_latest_news_articles_links_unique` (`latest_news_id`,`article_id`),
  ADD KEY `components_sections_latest_news_articles_links_fk` (`latest_news_id`),
  ADD KEY `components_sections_latest_news_articles_links_inv_fk` (`article_id`),
  ADD KEY `components_sections_latest_news_articles_links_order_fk` (`article_order`);

--
-- Indexes for table `components_sections_latest_news_components`
--
ALTER TABLE `components_sections_latest_news_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_sections_latest_news_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_sections_latest_news_field_index` (`field`),
  ADD KEY `components_sections_latest_news_component_type_index` (`component_type`),
  ADD KEY `components_sections_latest_news_entity_fk` (`entity_id`);

--
-- Indexes for table `components_shared_meta_socials`
--
ALTER TABLE `components_shared_meta_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_shared_seos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `components_shared_seos_field_index` (`field`),
  ADD KEY `components_shared_seos_component_type_index` (`component_type`),
  ADD KEY `components_shared_seos_entity_fk` (`entity_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globals_created_by_id_fk` (`created_by_id`),
  ADD KEY `globals_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `globals_components`
--
ALTER TABLE `globals_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `globals_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `globals_field_index` (`field`),
  ADD KEY `globals_component_type_index` (`component_type`),
  ADD KEY `globals_entity_fk` (`entity_id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `home_pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `home_pages_components`
--
ALTER TABLE `home_pages_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_pages_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `home_pages_field_index` (`field`),
  ADD KEY `home_pages_component_type_index` (`component_type`),
  ADD KEY `home_pages_entity_fk` (`entity_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `iconlibrary`
--
ALTER TABLE `iconlibrary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iconlibrary_created_by_id_fk` (`created_by_id`),
  ADD KEY `iconlibrary_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`),
  ADD KEY `menus_created_by_id_fk` (`created_by_id`),
  ADD KEY `menus_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_created_by_id_fk` (`created_by_id`),
  ADD KEY `menu_items_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `menu_items_parent_links`
--
ALTER TABLE `menu_items_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_items_parent_links_unique` (`menu_item_id`,`inv_menu_item_id`),
  ADD KEY `menu_items_parent_links_fk` (`menu_item_id`),
  ADD KEY `menu_items_parent_links_inv_fk` (`inv_menu_item_id`);

--
-- Indexes for table `menu_items_root_menu_links`
--
ALTER TABLE `menu_items_root_menu_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_items_root_menu_links_unique` (`menu_item_id`,`menu_id`),
  ADD KEY `menu_items_root_menu_links_fk` (`menu_item_id`),
  ADD KEY `menu_items_root_menu_links_inv_fk` (`menu_id`),
  ADD KEY `menu_items_root_menu_links_order_inv_fk` (`menu_item_order`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pages_components`
--
ALTER TABLE `pages_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `pages_field_index` (`field`),
  ADD KEY `pages_component_type_index` (`component_type`),
  ADD KEY `pages_entity_fk` (`entity_id`);

--
-- Indexes for table `pages_section_links`
--
ALTER TABLE `pages_section_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_section_links_unique` (`page_id`,`section_id`),
  ADD KEY `pages_section_links_fk` (`page_id`),
  ADD KEY `pages_section_links_inv_fk` (`section_id`),
  ADD KEY `pages_section_links_order_inv_fk` (`page_order`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_slug_unique` (`slug`),
  ADD KEY `sections_created_by_id_fk` (`created_by_id`),
  ADD KEY `sections_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sections_components`
--
ALTER TABLE `sections_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  ADD KEY `sections_field_index` (`field`),
  ADD KEY `sections_component_type_index` (`component_type`),
  ADD KEY `sections_entity_fk` (`entity_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_links_unique` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_links_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_links_inv_fk` (`release_id`),
  ADD KEY `strapi_release_actions_release_links_order_inv_fk` (`release_action_order`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writers_created_by_id_fk` (`created_by_id`),
  ADD KEY `writers_updated_by_id_fk` (`updated_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `articles_author_links`
--
ALTER TABLE `articles_author_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `articles_categories_links`
--
ALTER TABLE `articles_categories_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `articles_components`
--
ALTER TABLE `articles_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories_components`
--
ALTER TABLE `categories_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_blocks_faqs`
--
ALTER TABLE `components_blocks_faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_blocks_faqs_components`
--
ALTER TABLE `components_blocks_faqs_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `components_blocks_heroes`
--
ALTER TABLE `components_blocks_heroes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `components_blocks_heroes_components`
--
ALTER TABLE `components_blocks_heroes_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `components_blocks_media_cards`
--
ALTER TABLE `components_blocks_media_cards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_blocks_media_cards_components`
--
ALTER TABLE `components_blocks_media_cards_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_elements_buttons`
--
ALTER TABLE `components_elements_buttons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_elements_cards`
--
ALTER TABLE `components_elements_cards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `components_elements_links`
--
ALTER TABLE `components_elements_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_elements_title_and_descriptions`
--
ALTER TABLE `components_elements_title_and_descriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_sections_carousels`
--
ALTER TABLE `components_sections_carousels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_sections_carousels_components`
--
ALTER TABLE `components_sections_carousels_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `components_sections_latest_news`
--
ALTER TABLE `components_sections_latest_news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_sections_latest_news_articles_links`
--
ALTER TABLE `components_sections_latest_news_articles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `components_sections_latest_news_components`
--
ALTER TABLE `components_sections_latest_news_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `components_shared_meta_socials`
--
ALTER TABLE `components_shared_meta_socials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `globals_components`
--
ALTER TABLE `globals_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_pages_components`
--
ALTER TABLE `home_pages_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iconlibrary`
--
ALTER TABLE `iconlibrary`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_items_parent_links`
--
ALTER TABLE `menu_items_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `menu_items_root_menu_links`
--
ALTER TABLE `menu_items_root_menu_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages_components`
--
ALTER TABLE `pages_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages_section_links`
--
ALTER TABLE `pages_section_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections_components`
--
ALTER TABLE `sections_components`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `articles_author_links`
--
ALTER TABLE `articles_author_links`
  ADD CONSTRAINT `articles_author_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_author_links_inv_fk` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_categories_links`
--
ALTER TABLE `articles_categories_links`
  ADD CONSTRAINT `articles_categories_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_components`
--
ALTER TABLE `articles_components`
  ADD CONSTRAINT `articles_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories_components`
--
ALTER TABLE `categories_components`
  ADD CONSTRAINT `categories_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_blocks_faqs_components`
--
ALTER TABLE `components_blocks_faqs_components`
  ADD CONSTRAINT `components_blocks_faqs_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_blocks_faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_blocks_heroes_components`
--
ALTER TABLE `components_blocks_heroes_components`
  ADD CONSTRAINT `components_blocks_heroes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_blocks_heroes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_blocks_media_cards_components`
--
ALTER TABLE `components_blocks_media_cards_components`
  ADD CONSTRAINT `components_blocks_media_cards_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_blocks_media_cards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_sections_carousels_components`
--
ALTER TABLE `components_sections_carousels_components`
  ADD CONSTRAINT `components_sections_carousels_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_carousels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_sections_latest_news_articles_links`
--
ALTER TABLE `components_sections_latest_news_articles_links`
  ADD CONSTRAINT `components_sections_latest_news_articles_links_fk` FOREIGN KEY (`latest_news_id`) REFERENCES `components_sections_latest_news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `components_sections_latest_news_articles_links_inv_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_sections_latest_news_components`
--
ALTER TABLE `components_sections_latest_news_components`
  ADD CONSTRAINT `components_sections_latest_news_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_latest_news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_shared_seos_components`
--
ALTER TABLE `components_shared_seos_components`
  ADD CONSTRAINT `components_shared_seos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_seos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globals`
--
ALTER TABLE `globals`
  ADD CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globals_components`
--
ALTER TABLE `globals_components`
  ADD CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD CONSTRAINT `home_pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `home_pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `home_pages_components`
--
ALTER TABLE `home_pages_components`
  ADD CONSTRAINT `home_pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `home_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `iconlibrary`
--
ALTER TABLE `iconlibrary`
  ADD CONSTRAINT `iconlibrary_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `iconlibrary_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menus_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menu_items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menu_items_parent_links`
--
ALTER TABLE `menu_items_parent_links`
  ADD CONSTRAINT `menu_items_parent_links_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_links_inv_fk` FOREIGN KEY (`inv_menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items_root_menu_links`
--
ALTER TABLE `menu_items_root_menu_links`
  ADD CONSTRAINT `menu_items_root_menu_links_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_root_menu_links_inv_fk` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages_components`
--
ALTER TABLE `pages_components`
  ADD CONSTRAINT `pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages_section_links`
--
ALTER TABLE `pages_section_links`
  ADD CONSTRAINT `pages_section_links_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_section_links_inv_fk` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sections_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_components`
--
ALTER TABLE `sections_components`
  ADD CONSTRAINT `sections_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD CONSTRAINT `strapi_release_actions_release_links_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_links_inv_fk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `writers`
--
ALTER TABLE `writers`
  ADD CONSTRAINT `writers_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `writers_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
