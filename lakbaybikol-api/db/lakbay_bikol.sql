/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 10.1.30-MariaDB : Database - lakbaybikol_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lakbaybikol_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lakbaybikol_db`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2018_11_12_155043_create_users_table',1),
(2,'2018_11_12_155054_create_provinces_table',1);

/*Table structure for table `tbl_events` */

DROP TABLE IF EXISTS `tbl_events`;

CREATE TABLE `tbl_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `province_id` bigint(20) DEFAULT NULL,
  `event_name` longtext,
  `event_desc` longtext,
  `event_date` longtext,
  `event_venue` longtext,
  `event_focal_person` longtext,
  `event_category` longtext,
  `event_start_month` smallint(6) DEFAULT NULL,
  `event_image` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_events` */

insert  into `tbl_events`(`id`,`province_id`,`event_name`,`event_desc`,`event_date`,`event_venue`,`event_focal_person`,`event_category`,`event_start_month`,`event_image`) values 
(1,1,'Fiesta Tsinoy','A Chinese New Year celebration participated by the Filipino-Chinese community (Albay Chapter) featuring various activities i.e., Dragon/Lion Dance, Chinese Cultural Program, ancestral veneration within a mass, among others.','January 27-28','Legazpi City','Ms. Josephine Lee\r\nChinese Community\r\nLegazpi City','Festival',1,NULL),
(2,1,'Fiesta Tsinoy','A Chinese New Year celebration participated by the Filipino-Chinese community (Albay Chapter) featuring various activities i.e., Dragon/Lion Dance, Chinese Cultural Program, ancestral veneration within a mass, among others.','January 27-28','Legazpi City','Ms. Josephine Lee\r\nChinese Community\r\nLegazpi City','Festival',1,NULL),
(3,1,'Fiesta Tsinoy','A Chinese New Year celebration participated by the Filipino-Chinese community (Albay Chapter) featuring various activities i.e., Dragon/Lion Dance, Chinese Cultural Program, ancestral veneration within a mass, among others.','January 27-28','Legazpi City','Ms. Josephine Lee\r\nChinese Community\r\nLegazpi City','Festival',2,NULL);

/*Table structure for table `tbl_events_images` */

DROP TABLE IF EXISTS `tbl_events_images`;

CREATE TABLE `tbl_events_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) DEFAULT NULL,
  `event_image` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_events_images` */

insert  into `tbl_events_images`(`id`,`event_id`,`event_image`) values 
(1,1,NULL),
(2,1,NULL),
(3,1,NULL);

/*Table structure for table `tbl_hotel_restaurant` */

DROP TABLE IF EXISTS `tbl_hotel_restaurant`;

CREATE TABLE `tbl_hotel_restaurant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attraction_name` longtext,
  `attraction_activities` longtext,
  `attraction_image` longtext,
  `attraction_lat` longtext,
  `attraction_long` longtext,
  `attraction_desc` longtext,
  `attraction_rating` bigint(20) DEFAULT NULL,
  `attraction_total_rating` bigint(20) DEFAULT NULL,
  `attraction_total_reviews` bigint(20) DEFAULT NULL,
  `attraction_open_close_hour` longtext,
  `attraction_contact_in_charge` longtext,
  `attraction_entrance_fee` longtext,
  `attraction_delicacies_cuisine_offered` longtext,
  `attraction_category` longtext,
  `craeted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_hotel_restaurant` */

insert  into `tbl_hotel_restaurant`(`id`,`attraction_name`,`attraction_activities`,`attraction_image`,`attraction_lat`,`attraction_long`,`attraction_desc`,`attraction_rating`,`attraction_total_rating`,`attraction_total_reviews`,`attraction_open_close_hour`,`attraction_contact_in_charge`,`attraction_entrance_fee`,`attraction_delicacies_cuisine_offered`,`attraction_category`,`craeted_at`,`updated_at`) values 
(1,'Mayon Volcano','Trekking, Camping, Bird Watching, Sight Seeing, ATV','mayon.jpg','13.2572306','123.65154873','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',4,34,9,'8AM - 10AM, Monday - Friday','+63912345678912','PHP 100','Pinangat, Pili, Longganisa, Sili Icecream, etc.','Nature Tourism',NULL,'2018-12-28 01:57:42'),
(2,'Cagbulalacao Cave','Spelunking','caramoan.jpg',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(3,'Black Sand Beaches','Swimming','whaleshark-donsol.jpg',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(4,'Sogod Beach','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(5,'Camalig Church','Pilgrimage, Way of the Cross, Religious Activities',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(6,'Cagsawa Ruins','Sight Seeing, Picture Taking, Historical Significance',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(7,'Albay Park & Wildlife','Educational Tour, Animal Visit, Biking, Picnicking, Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(8,'Legazpi Boulevard','Strolling, Biking, Jogging, Long boarding, Skate boarding',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(9,'Basud River','Kayaking, Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(10,'Bicol National Park','Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(11,'Pag-Asa Beach','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(12,'Merdcedes 7 Group of Islands','Swimming, Island hopping, Snorkeling',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(13,'Capalonga Shrine','Pilgrimage, Worship',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(14,'Martyrs\' Shrine','Picture Taking, Historical Significance',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(15,'Pineapple Island Resort','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(16,'Sinagtala Resort','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(17,'Lake Baao','Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(18,'Lake Bato','Fishing, Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(19,'Animasola Island','Swimming, Rock Climbing, Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(20,'Coguit Beachfronts','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(21,'Bishop Barlin Monument & Park','Strolling, Picture Taking',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(22,'Bombon Parish and Leaning Bell Tower','Religious Activities, Historical Significance',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(23,'Lake Buhi Resort','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(24,'Maguindara Resort','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(25,'Soboc Cove','Swimming, Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(26,'Binanuahan Falls','Trekking, Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(27,'Loran Beach','Swimming, Boat Riding',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(28,'Majestice Beach','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(29,'Our Lady of Peñafrancia Shrine','Religious Activities, Pilgrimage',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(30,'Bato Church','Religious Activities',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(31,'Balongbong Mini-Hydro Damsite and Forebay','Hiking, Camping, Sightseeing, Field Trips',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(32,'Doppler Radar Station','Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(33,'Mata Caves','Spelunking',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(34,'Magdagat Cave','Spelunking',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(35,'Aroroy Beach','Swimming, Excursions',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(36,'Gato, Mahaba, Nabogto, Napayuan Islands','Swimming, Snorkeling, SCUBA Diving',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(37,'Balay na Bato ','Sightseeing, Picture Taking, Historical Significance',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(38,'Our Lady of Mt. Carmel Grotto','Pilgrimage',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(39,'Bugui Light House','Sightseeing, Picture Taking',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(40,'GK Monte De Oro','Immersion Tours',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(41,'Bato Limestone Cave','Spelunking, Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(42,'Lukot Spring Mini Waterfalls','Trekking, Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(43,'Paguriran Island','Swimming, Sightseeing',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(44,'Tolong Gapo Beach','Swimming',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',NULL,NULL),
(45,'St. Joseph Church','Religious Activities, Historical Significance',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(46,'St. Michael the Archangel Church ','Religious Activities, Historical Significance',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',NULL,NULL),
(47,'Pepita Park','Strolling, Playing around the Park',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(48,'Sorsogon Baywalk/Rompeolas','Strolling, Biking, Jogging',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',NULL,NULL),
(49,'Mayon Volcano','Trekking, Camping, Bird Watching, Sight Seeing, ATV',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(50,'Cagbulalacao Cave','Spelunking',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(51,'Mayon Volcano','Trekking, Camping, Bird Watching, Sight Seeing, ATV',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL),
(52,'Cagbulalacao Cave','Spelunking',NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nature Tourism',NULL,NULL);

/*Table structure for table `tbl_hotel_restaurant_images` */

DROP TABLE IF EXISTS `tbl_hotel_restaurant_images`;

CREATE TABLE `tbl_hotel_restaurant_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint(20) DEFAULT NULL,
  `attraction_image` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_hotel_restaurant_images` */

insert  into `tbl_hotel_restaurant_images`(`id`,`attraction_id`,`attraction_image`) values 
(1,1,'sampleimage_1.jpg'),
(2,1,'sampleimage_2.jpg'),
(3,1,'sampleimage_3.jpg'),
(4,1,'sampleimage_4.jpg'),
(5,1,'sampleimage_5.jpg');

/*Table structure for table `tbl_hotel_restaurant_reviews` */

DROP TABLE IF EXISTS `tbl_hotel_restaurant_reviews`;

CREATE TABLE `tbl_hotel_restaurant_reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint(20) DEFAULT NULL,
  `attraction_rating` bigint(20) DEFAULT NULL,
  `attraction_reviews` longtext,
  `reviewer_name` longtext COMMENT 'user name',
  `reviewer_id` bigint(20) DEFAULT NULL COMMENT 'user id',
  `date_created` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_hotel_restaurant_reviews` */

insert  into `tbl_hotel_restaurant_reviews`(`id`,`attraction_id`,`attraction_rating`,`attraction_reviews`,`reviewer_name`,`reviewer_id`,`date_created`,`created_at`,`updated_at`) values 
(1,1,5,'So beautiful','Juan Dela Cruz',NULL,'2018-12-25',NULL,NULL),
(2,1,4,'Relaxing','John Doe',NULL,'2018-12-25',NULL,NULL),
(3,1,5,'Fantastic','Johnny M',NULL,'2018-12-25',NULL,NULL),
(4,1,3,'Feels good','Taylor Otwell',NULL,'2018-12-25',NULL,NULL),
(5,1,2,'Everthing is good','Ogre Magi',NULL,'2018-12-25',NULL,NULL),
(12,1,5,'Greate','ccs0ap02',1,'2018-12-27','2018-12-27 23:58:23','2018-12-27 23:58:23'),
(13,1,5,'Amazing','ccs0ap02',1,'2018-12-27','2018-12-27 23:59:21','2018-12-27 23:59:21'),
(14,1,5,'Yey','ccs0ap02',1,'2018-12-27','2018-12-28 01:57:41','2018-12-28 01:57:41');

/*Table structure for table `tbl_provinces` */

DROP TABLE IF EXISTS `tbl_provinces`;

CREATE TABLE `tbl_provinces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_provinces` */

insert  into `tbl_provinces`(`id`,`province_name`,`province_image`,`created_at`,`updated_at`) values 
(1,'Albay','prov_albay.jpg',NULL,NULL),
(2,'Camarines Norte','prov_camnorte.jpg',NULL,NULL),
(3,'Camarines Sur','prov_camsur.jpg',NULL,NULL),
(4,'Catanduanes','prov_catanduanes.jpg',NULL,NULL),
(5,'Masbate','prov_masbate.jpg',NULL,NULL),
(6,'Sorsogon','prov_sorsogon.jpg',NULL,NULL);

/*Table structure for table `tbl_tour_guide_agency` */

DROP TABLE IF EXISTS `tbl_tour_guide_agency`;

CREATE TABLE `tbl_tour_guide_agency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `province_id` bigint(20) DEFAULT NULL,
  `tour_guide_agency_category` longtext,
  `tour_guide_agency_classification` longtext,
  `tour_guide_agency_municipality` longtext,
  `tour_guide_agency_name` longtext,
  `tour_guide_agency_address` longtext,
  `tour_guide_agency_email` longtext,
  `tour_guide_agency_number` longtext,
  `tour_guide_agency_manager` longtext,
  `tour_guide_agency_accredation_number` longtext,
  `tour_guide_agency_desc` longtext,
  `tour_guide_agency_image` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tour_guide_agency` */

insert  into `tbl_tour_guide_agency`(`id`,`province_id`,`tour_guide_agency_category`,`tour_guide_agency_classification`,`tour_guide_agency_municipality`,`tour_guide_agency_name`,`tour_guide_agency_address`,`tour_guide_agency_email`,`tour_guide_agency_number`,`tour_guide_agency_manager`,`tour_guide_agency_accredation_number`,`tour_guide_agency_desc`,`tour_guide_agency_image`) values 
(1,1,'Travel and Tour Agency	','Regular','Daraga (Locsin)','JMO Adventure Travel and Tours	','2nd Floor Avelino Bldg., Rizal St., Daraga, Albay	','jmoadventuretraveltours@gmail.com	','0947 596 9371 / 0947 372 3985','Jelynne M. Olaño (O)	','		',NULL,NULL),
(2,1,'Travel and Tour Agency	','Regular','Oas','On Trail Adventure Travel and Tours	','Diversion Road, Oas, Albay 4504	','lourdtravel@yahoo.com	','	0915 590 5980	','Louie Jan Cielo	','		',NULL,NULL),
(3,1,'Travel and Tour Agency	','Regular','Tabaco','Perfect Cone Travels and Consultancy	','43 Arellano St., Tabaco City, Albay 4511	','	perfectcone_travels@yahoo.com	','0920 552 2248	','Anronio Lugo	','		',NULL,NULL),
(4,1,'Travel and Tour Agency	','Regular','Daraga (Locsin)','Puree Hosanna Travel and Tours	','#003 GF Lower Malabog, Daraga, Albay 4511	','pureehosanna0113@gmail.com / nissa.laban@gmail.com / maclesterestimada@gmail.com	','(052) 284 1657 / 0977 817 7548 / 0995 974 5938	','Nissa L. Laban (O) / MacLester P. Estimada	','		',NULL,NULL),
(27,2,'	Travel and Tour Agency	','Regular','Daet','	Northlink Events and Travel Services	','	Villa Magana-Guinto Building, J .Lukban Street, Daet, Camarines Norte 4600	','	dar_extreme13@yahoo.com	','	(054) 440 0408 / 0917 554 8297	','	Darius Mirasol	','		',NULL,NULL),
(28,2,'	Travel and Tour Agency	','Regular','Daet','	Calaguas Eco-tour Inc.	','	Daet, Camarines Norte 4600	','	calaguas_ecotours@yahoo.com	','	0923 743 0894 / 0928 502 5738 / (054) 440 1127 / (054) 721 2664	','		','		',NULL,NULL),
(30,3,'	Travel and Tour Agency	','Regular','Iriga','	Asog Travel and Tours	','	Asog County Hotel Hi-way 1, San Isidro, Iriga City, Camarines Sur 4431	','	asogtours@gmail.com	','	0999 887 2236	','	Juvy Aben	','		',NULL,NULL),
(31,3,'	Travel and Tour Agency	','Regular','Naga','	Amreach Travel and Tours	','	2nd Floor SM City Naga City, Camarines Sur 4400	','	amreachnaga01@yahoo.com	','	(054) 811 6390	','	Sheryl Arguilles	','		',NULL,NULL),
(32,3,'	Travel and Tour Agency	','Regular','Bula','	ASM Travel and Tours	','	2nd Floor Ibasco Bldg., Brgy. Salvacion, Bula, Camarines Sur 4430	','	macalalad_ana@yahoo.com	','	0927 239 3582 / 0929 255 1338	','	Anna Macalalad	','		',NULL,NULL),
(33,3,'	Travel and Tour Agency	','Regular','Naga','	CamSur Viaje Service Co.	','	Door MMCN Bldg. 2, mayon Avenue, Concepcion Pequena, Naga City, Camarines Sur 4400	','	camsurviaje@yahoo.com	','	(054) 881 6346	','	Marichris Floriano	','		',NULL,NULL),
(47,4,'	Travel and Tour Agency	','Regular','Virac','	Katandungan Travel and Tours	','	R. Abundo’s Bldg., National Road, San Isidro Village, Virac, Catanduanes 4800	','	tours.katandungan@yahoo.com	','	0949 377 9209 / 0926 690 8105	','	Predrito Jose Bermundo	','		',NULL,NULL),
(48,4,'	Travel and Tour Agency	','Regular','Virac','	Island Escape Travel and Tours	','	G/F TMDEE Bldg., Gogon Centro, Virac, Catanduanes 4800	','	iescape100@gmail.com	','	0949 462 2641 / 0917 675 5406	','	Rechie Toyado	','		',NULL,NULL),
(49,6,'	Travel and Tour Agency	','Regular','Sorsogon City','	Venzbay Travel and Tours	','	Andres Bldg., Quezon Street, Sorsogon City, Sorsogon 4700	','	venzbaytravel_masbate@yahoo.com	','	(056) 578 0429	','	Daisy Bayaga	','		',NULL,NULL),
(50,5,'	Travel and Tour Agency	','Regular','Masbate City','	Tres Uno Travel and Tours	','	Across Airport Road, Barangay Centro, Masbate City, Masbate 5400	','	jinalaltarejos@gmail.com	','	0939 903 1998	','	Jina Altajero	','		',NULL,NULL),
(51,6,'	Travel and Tour Agency	','Regular','Sorsogon City','	Ur Place Travel and Tours	','	Kim’s Food Palace De Vera St., Polvorista, Sorsogon City, Sorsogon 4700	','	urplacetravel.sorsogon@gmail.com	','	(056) 255 0399 / 0928 956 7801	','	Antonia Guab	','		',NULL,NULL),
(52,6,'	Travel and Tour Agency	','Regular','Sorsogon City','	Happy Feet Travels	','	191 Alegre Street, Sorsogon City, Sorsogon 4700	','	happyfeettravels@yahoo.com	','	(056) 421 5497	','	Cynthia Lubiano	','		',NULL,NULL),
(53,6,'	Travel and Tour Agency	','Regular','Donsol','	Whale Shark Adventure	','	Dancalan, Donsol, Sorsogon 4700	','	reservations_donsol@yahoo.com	','	0921 929 3811	','	Ruby Lita	','		',NULL,NULL),
(54,6,'	Travel and Tour Agency	','Regular','Sorsogon City','Cite Tours & Trading Services	','	3807 AJ Building, Rizal Street, Brgy. Piot, Sorsogon City, Sorsogon 4700	','	citetours.tradingservices@gmail.com	','	(056) 255 0689 / 0977 251 9470 / 0916 285 5400	','	Emmanuel F. Duran (O)	','		',NULL,NULL),
(55,5,'	Travel and Tour Agency	','Regular','Masbate City','	Talilakaw Travel and Tours	','	Stairway, Quezon Street, Brgy. Centro, masbate City	','	talikaw@gmail.com talilakawph@yahoo.com	','	0995 324 9184 / (056) 578 5984	','	Norhamin M. Andik	','	TTA-RO5-0000205-2018	',NULL,NULL),
(58,1,'	Motel	','Non-PAS','Daraga (Locsin)','	Neuhaus Inn	','	Maroroy, Daraga, Albay 4501	','	\"neuhausinn2000@yahoo.com www.neuhausinn.com\"	','	\"(052) 483 7288 / 0918 988 3388\"	','	Edna B. Dio	','	MOT-RO5-0000099-2017	',NULL,NULL),
(59,5,'	Mabuhay Accommodation	','Regular','J.M. Robredo St., Boulevard Ext., Brgy. Espinosa, Masbate City','Ranchelle Beach Resort','	richellebaraquio@yahoo.com.ph	','	09778022040 / 09173337533	','	09778022040 / 09173337533	','		','	ACC-RO5-0000220-2018	',NULL,NULL),
(60,1,'	Mabuhay Accommodation	','Regular','Maramba, Oas, Albay','Sabando Ocampo Beach Resort	','	sabandoocampo@yahoo.com	','	0906 574 2968 / 0910 204 6317 / 0908 894 9037	','	Inocentes Sabando	','	31-Oct-20	','	ACC-RO5-0000203-2018	',NULL,NULL),
(61,1,'	Mabuhay Accommodation	','Regular','Sitio Imacoto, Cagmanaba, Oas, Albay','Victoria Bay Resort	','	victoriabayresort@yahoo.com	','	0906 574 2968 / 0910 204 6317 / 0908 894 9037	','	Inocentes Sabando	','	31-Oct-20	','	ACC-RO5-0000202-2018	',NULL,NULL),
(86,1,'	Tourism Frontliner	','Eco-Guide','Ligao','	Roy C. Lopera	','	TAMBAC, MAONON, LIGAO CITY	','		','	0916 426 8213	','		','	TRG-RO5-0000094-2018	',NULL,NULL),
(87,1,'	Tourism Frontliner	','Eco-Guide','Ligao','	Rodolfo P. Yuson	','	PUROK 7, MAONON, LIGAO CITY	','		','	0997 213 4542	','		','	TRG-RO5-0000093-2018	',NULL,NULL),
(99,5,'	Tourism Frontliner	','Eco-Guide','Monreal','	Rejuso, Lyn B.	','	Poblacion, Villamor St., Monreal, Masbate	','	rejusolyn1424@gmail.com	','	9104532320	','		','	TRG-RO5-0000185-2018	',NULL,NULL),
(100,5,'	Tourism Frontliner	','Eco-Guide','San Jacinto','	Gebilaguin, Dave Y.	','	Bagahanglad, San Jacinto, Masbate	','		','	9129237086	','		','	TRG-RO5-0000184-2018 	',NULL,NULL),
(101,5,'	Tourism Frontliner	','Eco-Guide','Monreal','	Diche, Gilbert L.	','	Poblacion, Monreal, Masbate	','		','	9484789536	','		','	TRG-RO5-0000183-2018 	',NULL,NULL),
(102,5,'	Tourism Frontliner	','Eco-Guide','Monreal','	Barruga, Rhandy A.	','	Poblacion, Monreal, Masbate	','		','	9123577415	','		','	TRG-RO5-0000182-2018 	',NULL,NULL),
(103,5,'	Tourism Frontliner	','Eco-Guide','Monreal','	Encabo, Oscar A.	','	Guinhadap, Monreal, Masbate	','		','	9175582293	','		','	TRG-RO5-0000181-2018 	',NULL,NULL),
(119,6,'	Tourism Frontliner	','Eco-Guide','Donsol','	Maricel O. Tarog	','	Brgy. Dancalan, Donsol, Sorsogon	','		','	0921 676 7297	','		','	30/06/2019	',NULL,NULL),
(131,3,'	Tourism Frontliner	','Tour Guide - Regional','Naga','	Osea, Jay G.	','	B13 L6 Villa Karangahan Subd., San Felipe, Naga City, Camarines Sur	','		','		','		','		',NULL,NULL),
(132,3,'	Tourism Frontliner	','Tour Guide - Regional','Pamplona','	Realce, Rymar I.	','	Zone 9 Poblacion, Pamplona, Camarines Sur	','		','		','		','		',NULL,NULL),
(133,3,'	Tourism Frontliner	','Tour Guide - Regional','Naga','	Villareal, Jose Ferdinand C.	','	29 Sampaguita St., Naga City Subd., Brgy. Triangulo, Naga City, Camarines Sur	','		','		','		','		',NULL,NULL),
(138,6,'	Tourism Frontliner	','Eco-Guide','Bulusan','	Luces, Romeo A.	','		','		','		','		','		',NULL,NULL),
(139,6,'	Tourism Frontliner	','Eco-Guide','Bulusan','	Evasco, Rico L.	','	6	','		','		','		','		',NULL,NULL),
(140,6,'	Tourism Frontliner	','Eco-Guide','Bulusan','	Dominguez, Ricky G.	','	Malungoy Lungoy, Bulusan, Sorsogon	','	rickydominguez@gmail.com	','	0939 646 7676	','		','		',NULL,NULL),
(159,6,'	Tourism Frontliner	','Eco-Guide','Donsol','	Daisy Fery L. Borja	','	Brgy. Rawis, Donsol, Sorsogon	','	fairylacsamana@yahoo.com	','	0938 117 9214	','		','	TRG-RO5-0000201-2018	',NULL,NULL);

/*Table structure for table `tbl_tour_guide_agency_images` */

DROP TABLE IF EXISTS `tbl_tour_guide_agency_images`;

CREATE TABLE `tbl_tour_guide_agency_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tour_guide_agency_id` bigint(20) DEFAULT NULL,
  `tour_guide_agency_image` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tour_guide_agency_images` */

insert  into `tbl_tour_guide_agency_images`(`id`,`tour_guide_agency_id`,`tour_guide_agency_image`) values 
(1,1,NULL),
(2,1,NULL),
(3,1,NULL);

/*Table structure for table `tbl_touristspot` */

DROP TABLE IF EXISTS `tbl_touristspot`;

CREATE TABLE `tbl_touristspot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `province_id` bigint(20) DEFAULT NULL,
  `attraction_name` longtext,
  `attraction_activities` longtext,
  `attraction_image` longtext,
  `attraction_lat` longtext,
  `attraction_long` longtext,
  `attraction_desc` longtext,
  `attraction_rating` bigint(20) DEFAULT '0',
  `attraction_total_rating` bigint(20) DEFAULT NULL,
  `attraction_total_reviews` bigint(20) DEFAULT NULL,
  `attraction_open_close_hour` longtext,
  `attraction_contact_in_charge` longtext,
  `attraction_entrance_fee` longtext,
  `attraction_delicacies_cuisine_offered` longtext,
  `attraction_category` longtext,
  `attraction_type` smallint(6) DEFAULT NULL COMMENT '0 = Tourist Spot, 1 = Hotel, 2 = Restaurant, 3 = Establishment',
  `craeted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `related_establistment_category` longtext,
  `related_establistment_classification` longtext,
  `related_establistment_municipality` longtext,
  `related_establistment_address` longtext,
  `related_establistment_email` longtext,
  `related_establistment_manager` longtext,
  `related_establistment_number_of_room` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_touristspot` */

insert  into `tbl_touristspot`(`id`,`province_id`,`attraction_name`,`attraction_activities`,`attraction_image`,`attraction_lat`,`attraction_long`,`attraction_desc`,`attraction_rating`,`attraction_total_rating`,`attraction_total_reviews`,`attraction_open_close_hour`,`attraction_contact_in_charge`,`attraction_entrance_fee`,`attraction_delicacies_cuisine_offered`,`attraction_category`,`attraction_type`,`craeted_at`,`updated_at`,`related_establistment_category`,`related_establistment_classification`,`related_establistment_municipality`,`related_establistment_address`,`related_establistment_email`,`related_establistment_manager`,`related_establistment_number_of_room`) values 
(1,1,'Mayon Volcano','Trekking, Camping, Bird Watching, Sight Seeing, ATV','mayon.jpg','13.2572306','123.65154873','Mayon (Central Bicolano: Bulkan Mayon, Filipino: Bulkang Mayon, Spanish: Monte Mayón), also known as Mayon Volcano or Mount Mayon, is an active stratovolcano in the province of Albay in Bicol Region, on the large island of Luzon in the Philippines. Renowned as the \"perfect cone\" because of its symmetric conical shape, the volcano with its surrounding landscape was declared a national park on July 20, 1938, the first in the nation. It was reclassified a Natural Park and renamed as the Mayon Volcano Natural Park in 2000.[4] Local folklore refers to the volcano being named after the legendary princess-heroine Daragang Magayon (English: Beautiful Lady). Numerous festivals and rituals are associated with the volcano and its landscape.[5] The volcano is the centerpiece of the Albay Biosphere Reserve, declared by UNESCO in 2016.[6]',4,39,10,'8AM - 10AM, Monday - Friday','+63912345678912','PHP 100','Pinangat, Pili, Longganisa, Sili Icecream, etc.','Nature Tourism',0,NULL,'2019-01-07 11:52:36','','','','','','','0'),
(6,1,'Cagsawa Ruins','Sight Seeing, Picture Taking, Historical Significance',NULL,'13.165998','123.701121','Cagsawa Ruins\r\nMga Guho ng Cagsawa\r\nCagsawa ruins.jpg\r\nOnly the church tower remains of the Cagsawa Church, which was destroyed by the 1814 eruption of Mayon Volcano.\r\nCagsawa Ruins is located in PhilippinesCagsawa Ruins\r\nShown within Philippines\r\nAlternative name	Kagsawa, Cagsaua\r\nLocation	Busay, Albay, Bicol Region, Philippines\r\nCoordinates	13°9?58?N 123°42?4?ECoordinates: 13°9?58?N 123°42?4?E\r\nType	Church\r\nArea	500 m2 (5,400 sq ft)\r\nHistory\r\nBuilder	Franciscan order\r\nFounded	1724\r\nAbandoned	1814\r\nManagement	Local Government of Daraga and the National Museum of the Philippines\r\nThe Cagsawa Ruins (also spelled as Kagsawa or Cagsaua) are the remnants of a 16th-century Franciscan church, the Cagsawa church. It was originally built in the town of Cagsawa in 1587 but was burned down by Dutch pirates in 1636. It was rebuilt in 1724 by Fr. Francisco Blanco, but was destroyed again, along with the town of Cagsawa, in February 1, 1814, during the eruption of the Mayon Volcano.',0,NULL,NULL,NULL,NULL,NULL,NULL,'Cultural/Historical Tourism',0,NULL,NULL,'','','','','','','0'),
(7,1,'Albay Park & Wildlife','Educational Tour, Animal Visit, Biking, Picnicking, Sightseeing',NULL,'13.157284','123.730478','Quaint city park hosting a diverse array of wildlife, including crocodiles, pigs & eagles.',0,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',0,NULL,NULL,'','','','','','','0'),
(8,1,'Legazpi Boulevard','Strolling, Biking, Jogging, Long boarding, Skate boarding',NULL,'13.135021','123.763559','The Legazpi Boulevard is a coastal road network extending from the city’s central business district and port area to the southern barangays. The area is planned as a new frontier for future development. The boulevard is one of the most picturesque seaside roads in the Philippines, with a spectacular view of the Mayon Volcano and the Kapuntukan hill to the north, the Albay Gulf and its islands to the east, and the mountains of Sorsogon to the south.',0,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',0,NULL,NULL,'','','','','','','0'),
(15,2,'Pineapple Island Resort','Swimming',NULL,'14.083542','122.930743','',0,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',0,NULL,NULL,'','','','','','','0'),
(16,2,'Sinagtala Resort','Swimming',NULL,'14.105628','122.813480','',0,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',0,NULL,NULL,'','','','','','','0'),
(19,3,'Animasola Island','Swimming, Rock Climbing, Sightseeing',NULL,'13.221153','123.045269','',0,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',0,NULL,NULL,'','','','','','','0'),
(24,3,'Maguindara Resort','Swimming',NULL,'13.433766','123.509309','',0,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',0,NULL,NULL,'','','','','','','0'),
(43,6,'Paguriran Island','Swimming, Sightseeing',NULL,'13.070650','124.121898','',0,NULL,NULL,NULL,NULL,NULL,NULL,'Sun and Beach Tourism',0,NULL,NULL,'','','','','','','0'),
(48,6,'Sorsogon Baywalk/Rompeolas','Strolling, Biking, Jogging',NULL,'12.965216','124.004405','',0,NULL,NULL,NULL,NULL,NULL,NULL,'Leisure and Entertainment Tourism',3,NULL,NULL,'','','','','','','0'),
(53,NULL,'	Sonrisa Farm	',NULL,NULL,'13.666042','123.256827',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourism Related Establishments	','	Farm Site	','	Camarines Sur	','	Camarines Sur	','	albertojemaivy@yahoo.com	','	Sylvia Amor	','0'),
(55,NULL,'	Mirisbiris Garden Educational Foundation	',NULL,NULL,'13.235709','123.815937',NULL,0,NULL,NULL,NULL,'0955 536 87190926 684 6807',NULL,NULL,NULL,3,NULL,NULL,'	Tourism Related Establishments	','	Farm Site	','	Albay	','	Albay	','	mirisbirisgarden@gmail.com	','	Glenda Newhall	','0'),
(56,NULL,'	Balay Buhay sa Uma Bee Farm	',NULL,NULL,'12.739525','124.084714',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourism Related Establishments	','	Farm Site	','	Sorsogon	','	Sorsogon	','	balaybuhaybeefarm@gmail.com	','	Sim Gamba (OM) / Luz Catindig (Pres)	','0'),
(58,NULL,'	Hibiscus Trekkers Camp	',NULL,NULL,'13.619688','123.415904',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourism Related Establishments	','	Farm Site	','	Camarines Sur	','	Camarines Sur	','	hibiscusconsocep@gmail.com	','		','0'),
(60,NULL,'	Iriga City Organic Agriculture Learning Farm (ICOALF)	',NULL,NULL,'13.438802','123.395597',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourism Related Establishments	','	Farm Site	','	Camarines Sur	','	Camarines Sur	','	irigatourism@yahoo.com.ph	','	City Government of Iriga	','0'),
(61,NULL,'	La Piazza Hotel and Convention Center, Inc.	',NULL,NULL,'13.152285','123.742783',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	STAR - Hotel	','	Albay	','	Albay	','	lapiazza_htc@yahoo.com	','	Michelle Ravalo	','0'),
(62,NULL,'	The Oriental Legazpi	',NULL,NULL,'13.134509','123.738749',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	STAR - Hotel	','	Albay	','	Albay	','	inquiry@theorintalhotels.com	','	Jonathan Neric	','0'),
(63,NULL,'	The Avenue Plaza Hotel	',NULL,NULL,'13.632681','123.196597',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	STAR - Hotel	','	Camarines Sur	','	Camarines Sur	','	info@theavenueplazahotel.com	','	Allan Cu	','0'),
(64,NULL,'	Villa Caceres Hotel	',NULL,NULL,'13.628020','123.199341',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	STAR - Hotel	','	Camarines Sur	','	Camarines Sur	','	villacacereshotel@yahoo.com	','	Lyn P. Santy	','0'),
(65,NULL,'	Alicia Hotel and Convention Center	',NULL,NULL,'13.152660','123.734306',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	Hotel (Generic)	','	Albay	','	Albay	','	alicia_hotel@yahoo.com.ph	','	Antonette Guitterez	','0'),
(66,NULL,'	Hotel Fina	',NULL,NULL,'13.357579','123.729306',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	Hotel (Generic)	','	Albay	','	Albay	','	reservations@hotelfina.com	','	April Anne Dy	','0'),
(67,NULL,'	Hotel St. Ellis	',NULL,NULL,'13.148159','123.754585',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	Hotel (Generic)	','	Albay	','	Albay	','	reservations@hotelstellis.com.ph	','	Carlo Librea	','0'),
(68,NULL,'	Ninongs Hotel	',NULL,NULL,'13.139396','123.736275',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	Hotel (Generic)	','	Albay	','	Albay	','	sales@ninongshotel.com.ph	','	Cristine Joy Vibal	','0'),
(69,NULL,'	Tyche Boutique Hotel	',NULL,NULL,'13.148201','123.754809',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	Hotel (Generic)	','	Albay	','	Albay	','	\"reservations@tycheboutiquehotel.com marketing@tycheboutiquehotel.com www.tycheboutiquehotel.com\"	','	Arlene Relucio	','0'),
(70,NULL,'	Tabaco Royal Mansion Hotel	',NULL,NULL,'13.358013','123.724824',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'	Hotel	','	Hotel (Generic)	','	Albay	','	Albay	','	riaangela@yahoo.com	','	Ria Que	','0'),
(84,NULL,'	Mayon Backpackers Hostel	',NULL,NULL,'13.136758','123.730837',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Pension House	','	Non-PAS	','	Albay	','	Albay	','	\"mayonbackpackers@gmail.com www.mayonbackpackers.com\"	','	Mark Bigueras	','0'),
(85,NULL,'	Vista Al Mayon Pensionne	',NULL,NULL,'13.147915','123.734350',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Pension House	','	Non-PAS	','	Albay	','	Albay	','	vistaalmayon@yahoo.com	','	Michael Locsin	','0'),
(86,NULL,'	Riserr Residences	',NULL,NULL,'13.141402','123.733944',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Pension House	','	Non-PAS	','	Albay	','	Albay	','	Riser.residences@yahoo.com	','	Randy Reolo	','0'),
(87,NULL,'	Casa Simeon I, Inc.	',NULL,NULL,'13.291743','123.792301',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Pension House	','	Non-PAS	','	Albay	','	Albay	','		','	Enrico Calleja	','0'),
(88,NULL,'	Manong’s Hometel	',NULL,NULL,'13.157248','123.723737',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Pension House	','	Non-PAS	','	Albay	','	Albay	','		','	Nancy Mapalo	','0'),
(104,NULL,'	Misibis Bay	',NULL,NULL,'13.249682','123.899715',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Resort	','	STAR - Resort	','	Albay	','	Albay	','	\"april.orbita@sunwest.com.ph www.misibisbay.com\"	','	Carlo Librea	','0'),
(105,NULL,'	Macagang Hotel and Resort	',NULL,NULL,'13.415716','123.368717',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Resort	','	STAR - Resort	','	Camarines Sur	','	Camarines Sur	','	info@macagangbusinesscenter.com	','	Sonia B. Reyes	','0'),
(106,NULL,'	Dancalan Beach Resort	',NULL,NULL,'12.923106','123.578140',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Resort	','	STAR - Resort	','	Sorsogon	','	Sorsogon	','	lyn_amor0122@yahoo.com.ph	','	Lalaine Amor	','0'),
(109,NULL,'	Haciendas de Naga Golf Resort and Country Club	',NULL,NULL,'13.652627','123.265173',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Resort	','	Resort (Generic)	','	Camarines Sur	','	Camarines Sur	','	haciendasdenaga@enjoyrealty.com	','	Malyn Aman	','0'),
(110,NULL,'	Tugawe Cove Resort	',NULL,NULL,'13.719556','123.971810',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Resort	','	Resort (Generic)	','	Camarines Sur	','	Camarines Sur	','	tugawecoveresort@gmail.com	','	Michael Bufete	','0'),
(120,NULL,'	Casablanca Hotel	',NULL,NULL,'13.152375','123.752363',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourist Inn	','	Tourist Inn	','	Albay	','	Albay	','	johnlee@casablancacorp.com.ph	','	John Glen Lee	','0'),
(121,NULL,'	Casablanca Suites	',NULL,NULL,'13.146137','123.736547',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourist Inn	','	Tourist Inn	','	Albay	','	Albay	','	hr@casablancacorp.com.ph	','	John Glen Lee	','0'),
(122,NULL,'	Dhio Endheka Spring Resort	',NULL,NULL,'13.311832','123.642407',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourist Inn	','	Tourist Inn	','	Albay	','	Albay	','	amy_gonzales@yahoo.com	','	Atty. Fresnido Gonsales	','0'),
(124,NULL,'	JJ Midcity Inn	',NULL,NULL,'13.358478','123.730432',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourist Inn	','	Tourist Inn	','	Albay	','	Albay	','	jjmidcityinn@yahoo.com	','	April Anne Dy	','0'),
(125,NULL,'	Legazpi Amigos Hometel	',NULL,NULL,'13.137540','123.742741',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,'	Tourist Inn	','	Tourist Inn	','	Albay	','	Albay	','	legazpi_amigos@yahoo.com	','	Chris Napili	','0'),
(164,NULL,'	Pares King Food House	',NULL,NULL,'13.146095','123.734409',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,'	Tourism Related Establishments	','	Restaurant	','	Albay	','	Albay	','	annie@paresking.com	','	Ma. Aniceta Roa Llaguno	','0'),
(165,NULL,'	7 Degrees Grill Bar Restaurant and Catering Services	',NULL,NULL,'13.139565','123.745114',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,'	Tourism Related Establishments	','	Restaurant	','	Albay	','	Albay	','	m7degrees@yahoo.com	','	Emil Lee B. Galicia	','0'),
(166,NULL,'	Koron Native Cuisine	',NULL,NULL,'13.148112','123.734238',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,'	Tourism Related Establishments	','	Restaurant	','	Albay	','	Albay	','	thekoronexperience@gmail.com / ginamarinas22@yahoo.com / eduardjana27@yahoo.com	','	Engr. Gina D. Mariñas (O) / Eduard O. Jana (Store Sup)	','0'),
(167,NULL,'	Lucky Fortune Seafood Restaurant	',NULL,NULL,'13.146763','123.751997',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,'	Tourism Related Establishments	','	Restaurant	','	Albay	','	Albay	','	arlenebrelucio@yahoo.com	','	Arlene B. Relucio	','0'),
(168,NULL,'	Smalltalk Café	',NULL,NULL,'13.138205','123.737220',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,'	Tourism Related Establishments	','	Restaurant	','	Albay	','	Albay	','	smoltok_cafe@yahoo.com	','	Ma. Bernadette Peralta Factora	','0'),
(212,NULL,'	Benmar Transport Express	',NULL,NULL,'13.139385','123.732844',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourist Transport Operator	','	Land Transport	','	Albay	','	Albay	','	benpardines@ymail.com	','	Benito A. Pardines Jr. (O) / Ma. Luz V. Pardines (GM)	','0'),
(213,NULL,'	Bicol Airport AUV Operators Transport Cooperative	',NULL,NULL,'13.152252','123.730532',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'	Tourist Transport Operator	','	Land Transport	','	Albay	','	Albay	','	bicolairportcooperative@yahoo.com / nestletrans@yahoo.com	','	Nestor B. Calmada (O) / Felimon B. Panesa Jr.	','0');

/*Table structure for table `tbl_touristspot_images` */

DROP TABLE IF EXISTS `tbl_touristspot_images`;

CREATE TABLE `tbl_touristspot_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint(20) DEFAULT NULL,
  `attraction_image` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_touristspot_images` */

insert  into `tbl_touristspot_images`(`id`,`attraction_id`,`attraction_image`) values 
(1,1,'sampleimage_1.jpg'),
(2,1,'sampleimage_2.jpg'),
(3,1,'sampleimage_3.jpg'),
(4,1,'sampleimage_4.jpg'),
(5,1,'sampleimage_5.jpg');

/*Table structure for table `tbl_touristspot_reviews` */

DROP TABLE IF EXISTS `tbl_touristspot_reviews`;

CREATE TABLE `tbl_touristspot_reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint(20) DEFAULT NULL,
  `attraction_rating` bigint(20) DEFAULT NULL,
  `attraction_reviews` longtext,
  `reviewer_name` longtext COMMENT 'user name',
  `reviewer_id` bigint(20) DEFAULT NULL COMMENT 'user id',
  `date_created` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_touristspot_reviews` */

insert  into `tbl_touristspot_reviews`(`id`,`attraction_id`,`attraction_rating`,`attraction_reviews`,`reviewer_name`,`reviewer_id`,`date_created`,`created_at`,`updated_at`) values 
(1,1,5,'So beautiful','Juan Dela Cruz',NULL,'2018-12-25',NULL,NULL),
(2,1,4,'Relaxing','John Doe',NULL,'2018-12-25',NULL,NULL),
(3,1,5,'Fantastic','Johnny M',NULL,'2018-12-25',NULL,NULL),
(4,1,3,'Feels good','Taylor Otwell',NULL,'2018-12-25',NULL,NULL),
(5,1,2,'Everthing is good','Ogre Magi',NULL,'2018-12-25',NULL,NULL),
(12,1,5,'Greate','ccs0ap02',1,'2018-12-27','2018-12-27 23:58:23','2018-12-27 23:58:23'),
(13,1,5,'Amazing','ccs0ap02',1,'2018-12-27','2018-12-27 23:59:21','2018-12-27 23:59:21'),
(14,1,5,'Yey','ccs0ap02',1,'2018-12-27','2018-12-28 01:57:41','2018-12-28 01:57:41'),
(15,1,5,'asd','Angelo Pavilando',1,'2019-01-07','2019-01-07 19:52:36','2019-01-07 19:52:36');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`username`,`password`,`fullname`,`address`,`phone`,`email`,`created_at`,`updated_at`) values 
(1,'ccs0ap03','id37id37id37','Angelo T. Pavilando','Guadalupe Bliss Building 19','09179230437','pavilandoangelo@gmail.com','2018-11-13 23:31:41','2019-01-20 07:00:36'),
(2,'ccs0ap02','id37id37','Angelo Pavilando','','09179230438','ccs0ap02@gmail.com','2019-01-21 22:07:07','2019-01-21 22:07:07');

/*Table structure for table `tbl_user_fav_touristspot` */

DROP TABLE IF EXISTS `tbl_user_fav_touristspot`;

CREATE TABLE `tbl_user_fav_touristspot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` longtext,
  `attraction_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_fav_touristspot` */

insert  into `tbl_user_fav_touristspot`(`id`,`user_id`,`user_name`,`attraction_id`,`created_at`,`updated_at`) values 
(1,1,'ccs0ap02',1,'2018-12-28 02:48:30','2018-12-28 02:48:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
