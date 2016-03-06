/*
SQLyog Community v12.15 (64 bit)
MySQL - 5.6.26 : Database - belajar_laravel_5_2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`belajar_laravel_5_2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `belajar_laravel_5_2`;

/*Table structure for table `migrations` */

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2014_10_12_000000_create_users_table',1),
('2014_10_12_100000_create_password_resets_table',1),
('2016_03_05_132242_create_social_accounts_table',1);

/*Table structure for table `password_resets` */

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `social_accounts` */

CREATE TABLE `social_accounts` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `social_accounts` */

insert  into `social_accounts`(`user_id`,`provider_user_id`,`provider`,`created_at`,`updated_at`) values 
(1,'107842353474583563194','GoogleProvider','2016-03-05 16:56:33','2016-03-05 16:56:33'),
(3,'100000333548426','FacebookProvider','2016-03-05 17:02:40','2016-03-05 17:02:40'),
(4,'313698045','TwitterProvider','2016-03-05 17:22:51','2016-03-05 17:22:51');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Mhd Syarif','mhdsyarif.ms@gmail.com','','noGVxDfBNJRtb4ViR47C6QLtaZ699q6Ro83QvXudQK3QO2rwHTTfn7TpLnBT','2016-03-05 16:56:33','2016-03-05 23:06:34'),
(2,'Muhammad Syarif','syarif@gmail.com','$2y$10$trjR0vWdUum/SsL32RJLy.xWWKQiQ2F3qBHDkQH/uIPOEZZ.cetNa','W74iTpx1Fjq8vKdRKg6F9Jj62AzgNuYDLs96UUwVPyATj6NystejMQfVZ8X9','2016-03-05 16:57:01','2016-03-05 17:29:12'),
(3,'Syarif\'s Touch\'s','mhsyarif25@gmail.com','','A7xupFxyFf1lU2oB35v8vuSMZ6jqdROnMFKDtREoegVTo5b7eUPmhtdTzsmx','2016-03-05 17:02:39','2016-03-05 23:06:47'),
(4,'Mhd Syarif',NULL,'','v8FGHwUE2dINMvjzsiqmLV6z2JyWfoFc2mqcWIsShLgNJK0B9XSfOfjtzYuH','2016-03-05 17:22:51','2016-03-05 23:07:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
