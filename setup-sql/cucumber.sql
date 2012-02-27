-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: coupa_test
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
-- Table structure for table `account_allocations`
--

DROP TABLE IF EXISTS `account_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `allocable_id` int(11) DEFAULT NULL,
  `allocable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_account_allocations_on_account_id` (`account_id`),
  KEY `index_account_allocations_on_allocable_id` (`allocable_id`),
  KEY `index_account_allocations_on_created_by` (`created_by`),
  KEY `index_account_allocations_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_allocations`
--

LOCK TABLES `account_allocations` WRITE;
/*!40000 ALTER TABLE `account_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_approvers`
--

DROP TABLE IF EXISTS `account_approvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_approvers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approver_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `segment_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lower_limit` decimal(30,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `index_account_approvers_on_account_type_id` (`account_type_id`),
  KEY `index_account_approvers_on_approver_id` (`approver_id`),
  KEY `index_account_approvers_on_created_by` (`created_by`),
  KEY `index_account_approvers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_approvers`
--

LOCK TABLES `account_approvers` WRITE;
/*!40000 ALTER TABLE `account_approvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_approvers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_field_types`
--

DROP TABLE IF EXISTS `account_field_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_field_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validation_regex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_account_field_types_on_created_by` (`created_by`),
  KEY `index_account_field_types_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_field_types`
--

LOCK TABLES `account_field_types` WRITE;
/*!40000 ALTER TABLE `account_field_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_field_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_groups`
--

DROP TABLE IF EXISTS `account_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(11) DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_groups`
--

LOCK TABLES `account_groups` WRITE;
/*!40000 ALTER TABLE `account_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_groups_users`
--

DROP TABLE IF EXISTS `account_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_groups_users` (
  `user_id` int(11) DEFAULT NULL,
  `account_group_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  KEY `index_account_groups_users_on_account_group_id` (`account_group_id`),
  KEY `index_account_groups_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_groups_users`
--

LOCK TABLES `account_groups_users` WRITE;
/*!40000 ALTER TABLE `account_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_types`
--

DROP TABLE IF EXISTS `account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_1_field_type_id` int(11) DEFAULT NULL,
  `segment_2_field_type_id` int(11) DEFAULT NULL,
  `segment_3_field_type_id` int(11) DEFAULT NULL,
  `segment_4_field_type_id` int(11) DEFAULT NULL,
  `segment_5_field_type_id` int(11) DEFAULT NULL,
  `segment_6_field_type_id` int(11) DEFAULT NULL,
  `segment_7_field_type_id` int(11) DEFAULT NULL,
  `segment_8_field_type_id` int(11) DEFAULT NULL,
  `segment_9_field_type_id` int(11) DEFAULT NULL,
  `segment_10_field_type_id` int(11) DEFAULT NULL,
  `segment_11_field_type_id` int(11) DEFAULT NULL,
  `segment_12_field_type_id` int(11) DEFAULT NULL,
  `segment_13_field_type_id` int(11) DEFAULT NULL,
  `segment_14_field_type_id` int(11) DEFAULT NULL,
  `segment_15_field_type_id` int(11) DEFAULT NULL,
  `segment_16_field_type_id` int(11) DEFAULT NULL,
  `segment_17_field_type_id` int(11) DEFAULT NULL,
  `segment_18_field_type_id` int(11) DEFAULT NULL,
  `segment_19_field_type_id` int(11) DEFAULT NULL,
  `segment_20_field_type_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `primary_contact_id` int(11) DEFAULT NULL,
  `primary_address_id` int(11) DEFAULT NULL,
  `po_terms` text COLLATE utf8_unicode_ci,
  `qty_qty_pct_tolerance` float DEFAULT NULL,
  `qty_price_amt_tolerance` float DEFAULT NULL,
  `qty_price_pct_tolerance` float DEFAULT NULL,
  `amt_amt_amt_tolerance` float DEFAULT NULL,
  `amt_amt_pct_tolerance` float DEFAULT NULL,
  `line_amount_tolerance` float DEFAULT NULL,
  `total_amount_tolerance` float DEFAULT NULL,
  `default_tax_account_id` int(11) DEFAULT NULL,
  `default_shipping_account_id` int(11) DEFAULT NULL,
  `logo_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `s_qty_qty_pct_tolerance` float DEFAULT '0',
  `s_qty_price_amt_tolerance` float DEFAULT '0',
  `s_qty_price_pct_tolerance` float DEFAULT '0',
  `s_amt_amt_amt_tolerance` float DEFAULT '0',
  `s_amt_amt_pct_tolerance` float DEFAULT '0',
  `default_payment_term_id` int(11) DEFAULT NULL,
  `default_shipping_term_id` int(11) DEFAULT NULL,
  `s_total_amount_tolerance` float DEFAULT NULL,
  `extras_amount_tolerance` float DEFAULT NULL,
  `s_extras_amount_tolerance` float DEFAULT NULL,
  `extras_pct_tolerance` float DEFAULT NULL,
  `s_extras_pct_tolerance` float DEFAULT NULL,
  `logo_image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_image_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_1_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_1_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20_model` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20_column` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po_layout_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po_layout_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po_layout_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_default_po_layout` tinyint(1) DEFAULT '1',
  `min_amount_tolerance` float DEFAULT NULL,
  `s_min_amount_tolerance` float DEFAULT NULL,
  `segment_1_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_1_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20_model_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20_column_expense` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_ship_to_as_bill_to` tinyint(1) DEFAULT NULL,
  `use_requester_as_billing_contact` tinyint(1) DEFAULT NULL,
  `s_line_amount_tolerance` float DEFAULT NULL,
  `line_con_amt_tolerance` decimal(30,2) DEFAULT NULL,
  `s_line_con_amt_tolerance` decimal(30,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_account_types_on_created_by` (`created_by`),
  KEY `index_account_types_on_currency_id` (`currency_id`),
  KEY `index_account_types_on_default_payment_term_id` (`default_payment_term_id`),
  KEY `index_account_types_on_default_shipping_account_id` (`default_shipping_account_id`),
  KEY `index_account_types_on_default_shipping_term_id` (`default_shipping_term_id`),
  KEY `index_account_types_on_primary_address_id` (`primary_address_id`),
  KEY `index_account_types_on_primary_contact_id` (`primary_contact_id`),
  KEY `index_account_types_on_segment_10_field_type_id` (`segment_10_field_type_id`),
  KEY `index_account_types_on_segment_11_field_type_id` (`segment_11_field_type_id`),
  KEY `index_account_types_on_segment_12_field_type_id` (`segment_12_field_type_id`),
  KEY `index_account_types_on_segment_13_field_type_id` (`segment_13_field_type_id`),
  KEY `index_account_types_on_segment_14_field_type_id` (`segment_14_field_type_id`),
  KEY `index_account_types_on_segment_15_field_type_id` (`segment_15_field_type_id`),
  KEY `index_account_types_on_segment_16_field_type_id` (`segment_16_field_type_id`),
  KEY `index_account_types_on_segment_17_field_type_id` (`segment_17_field_type_id`),
  KEY `index_account_types_on_segment_18_field_type_id` (`segment_18_field_type_id`),
  KEY `index_account_types_on_segment_19_field_type_id` (`segment_19_field_type_id`),
  KEY `index_account_types_on_segment_1_field_type_id` (`segment_1_field_type_id`),
  KEY `index_account_types_on_segment_20_field_type_id` (`segment_20_field_type_id`),
  KEY `index_account_types_on_segment_2_field_type_id` (`segment_2_field_type_id`),
  KEY `index_account_types_on_segment_3_field_type_id` (`segment_3_field_type_id`),
  KEY `index_account_types_on_segment_4_field_type_id` (`segment_4_field_type_id`),
  KEY `index_account_types_on_segment_5_field_type_id` (`segment_5_field_type_id`),
  KEY `index_account_types_on_segment_6_field_type_id` (`segment_6_field_type_id`),
  KEY `index_account_types_on_segment_7_field_type_id` (`segment_7_field_type_id`),
  KEY `index_account_types_on_segment_8_field_type_id` (`segment_8_field_type_id`),
  KEY `index_account_types_on_segment_9_field_type_id` (`segment_9_field_type_id`),
  KEY `index_account_types_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `segment_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `last_quickbooks_sync` datetime DEFAULT NULL,
  `delta` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_accounts_on_account_type_id` (`account_type_id`),
  KEY `index_accounts_on_active` (`active`),
  KEY `index_accounts_on_code` (`code`),
  KEY `index_accounts_on_created_by` (`created_by`),
  KEY `index_accounts_on_name` (`name`),
  KEY `index_accounts_on_segment_1` (`segment_1`),
  KEY `index_accounts_on_segment_10` (`segment_10`),
  KEY `index_accounts_on_segment_11` (`segment_11`),
  KEY `index_accounts_on_segment_12` (`segment_12`),
  KEY `index_accounts_on_segment_13` (`segment_13`),
  KEY `index_accounts_on_segment_14` (`segment_14`),
  KEY `index_accounts_on_segment_15` (`segment_15`),
  KEY `index_accounts_on_segment_16` (`segment_16`),
  KEY `index_accounts_on_segment_17` (`segment_17`),
  KEY `index_accounts_on_segment_18` (`segment_18`),
  KEY `index_accounts_on_segment_19` (`segment_19`),
  KEY `index_accounts_on_segment_2` (`segment_2`),
  KEY `index_accounts_on_segment_20` (`segment_20`),
  KEY `index_accounts_on_segment_3` (`segment_3`),
  KEY `index_accounts_on_segment_4` (`segment_4`),
  KEY `index_accounts_on_segment_5` (`segment_5`),
  KEY `index_accounts_on_segment_6` (`segment_6`),
  KEY `index_accounts_on_segment_7` (`segment_7`),
  KEY `index_accounts_on_segment_8` (`segment_8`),
  KEY `index_accounts_on_segment_9` (`segment_9`),
  KEY `index_accounts_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_users`
--

DROP TABLE IF EXISTS `accounts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_users` (
  `account_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `account_group_id` int(11) DEFAULT NULL,
  KEY `index_accounts_users_on_account_group_id` (`account_group_id`),
  KEY `index_accounts_users_on_account_id_and_user_id` (`account_id`,`user_id`),
  KEY `index_accounts_users_on_account_id` (`account_id`),
  KEY `index_accounts_users_on_account_type_id` (`account_type_id`),
  KEY `index_accounts_users_on_user_id_and_account_type_id` (`user_id`,`account_type_id`),
  KEY `index_accounts_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_users`
--

LOCK TABLES `accounts_users` WRITE;
/*!40000 ALTER TABLE `accounts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_assignments`
--

DROP TABLE IF EXISTS `address_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addressable_id` int(11) DEFAULT NULL,
  `addressable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_type_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_address_assignments_on_address_id` (`address_id`),
  KEY `index_address_assignments_on_address_type_id` (`address_type_id`),
  KEY `index_address_assignments_on_addressable_id` (`addressable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_assignments`
--

LOCK TABLES `address_assignments` WRITE;
/*!40000 ALTER TABLE `address_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address_owner_id` int(11) DEFAULT NULL,
  `address_owner_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attention` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_address_owner_id` (`address_owner_id`),
  KEY `index_addresses_on_country_id` (`country_id`),
  KEY `index_addresses_on_created_by` (`created_by`),
  KEY `index_addresses_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate_links`
--

DROP TABLE IF EXISTS `affiliate_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate_links`
--

LOCK TABLES `affiliate_links` WRITE;
/*!40000 ALTER TABLE `affiliate_links` DISABLE KEYS */;
INSERT INTO `affiliate_links` VALUES (1,'compusa.com','LinkshareAffiliateLink','24845','2009-07-15 23:05:30','2009-07-17 00:42:08'),(2,'buy.com','GenericEscapeAffiliateLink','http://affiliate.buy.com/gateway.aspx?adid=17662&aid=10389733&pid=3483802&sURL=ORIGINAL_URL','2009-07-15 23:25:13','2009-07-17 00:42:32'),(3,'officedepot.com','LinkshareAffiliateLink','926','2009-07-17 00:44:06','2009-07-17 00:44:06'),(4,'techdepot.com','LinkshareAffiliateLink','2504','2009-07-17 00:45:10','2009-07-17 00:45:10'),(5,'tigerdirect.com','LinkshareAffiliateLink','14028','2009-07-17 00:46:55','2009-07-17 00:46:55'),(6,'tractorsupply.com','LinkshareAffiliateLink','35230','2009-07-17 00:47:50','2009-07-17 00:47:50'),(7,'newegg.com','GenericEscapeAffiliateLink','http://www.anrdoezrs.net/click-3483802-10446076?url=ORIGINAL_URL','2009-07-17 00:48:33','2009-07-17 00:48:33'),(8,'ebay.com','GenericEscapeAffiliateLink','http://rover.ebay.com/rover/1/711-53200-19255-0/1?ff3=4&pub=5574819014&toolid=10001&campid=5336356640&customid=&mpre=ORIGINAL_URL','2009-07-17 00:49:45','2009-07-17 00:49:45'),(9,'half.com','GenericEscapeAffiliateLink','http://rover.ebay.com/rover/1/8971-56017-19255-0/1?ff3=8&pub=5574819014&toolid=10001&campid=5336356640&customid=&mpre=ORIGINAL_URL','2009-07-17 00:50:40','2009-07-17 00:50:40'),(10,'endless.com','AmazonAffiliateLink','','2009-07-27 20:53:47','2009-07-27 20:53:47'),(11,'walmart.com','GenericEscapeAffiliateLink','http://linksynergy.walmart.com/fs-bin/click?id=zzA6QldruFQ&offerid=100143&type=10&tmpid=1081&RD_PARM1=ORIGINAL_URL','2009-07-27 20:54:02','2009-07-27 20:54:02'),(12,'buyerzone.com','LinkshareAffiliateLink','3440','2009-07-27 20:55:24','2009-07-27 20:55:35'),(13,'computers4sure.com','LinkshareAffiliateLink','2488','2009-07-27 20:56:13','2009-07-27 20:56:13'),(14,'4sure.com','LinkshareAffiliateLink','2488','2009-07-27 20:56:26','2009-07-29 07:02:14'),(15,'dell.ca','LinkshareAffiliateLink','3178','2009-07-27 20:57:08','2009-07-27 20:57:08'),(16,'griffintechnology.com','LinkshareAffiliateLink','24409','2009-07-27 20:57:49','2009-07-27 20:57:49'),(17,'lego.com','LinkshareAffiliateLink','13923','2009-07-27 20:58:47','2009-07-27 20:58:47'),(18,'officefurniture.com','LinkshareAffiliateLink','1519','2009-07-27 20:59:05','2009-07-27 20:59:05'),(19,'webroot.com','LinkshareAffiliateLink','24709','2009-07-27 20:59:57','2009-07-27 20:59:57'),(20,'barnesandnoble.com','GenericEscapeAffiliateLink','ORIGINAL_URL&lkid=J28480428&pubid=K207892','2009-07-27 21:07:38','2009-07-27 21:07:38'),(21,'trendmicro.com','GenericEscapeAffiliateLink','http://www.kqzyfj.com/click-3483802-10503305?url=ORIGINAL_URL','2009-07-27 22:35:15','2009-07-27 22:35:15'),(23,'pcconnection.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/tplclick?lid=41000000026530730&pubid=21000000000207892&redirect=ORIGINAL_URL','2009-07-28 00:44:53','2009-07-28 18:28:35'),(24,'target.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302361&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(25,'motorola.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302196','2009-07-28 17:24:22','2009-07-28 17:24:22'),(26,'1000bulbs.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028306388&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(27,'6ave.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302235','2009-07-28 17:24:22','2009-07-28 17:24:22'),(28,'abt.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028309515&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(29,'activeforever.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028304854&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(30,'everythingofficefurniture.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302194&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(31,'inkplustoner.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302225&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(32,'kohls.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028330047&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(33,'kmart.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028483251','2009-07-28 17:24:22','2009-07-28 17:24:22'),(34,'lightinthebox.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028305046&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(35,'mcmelectronics','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302237&redirect=ORIGINAL_URL','2009-07-28 17:24:22','2009-07-28 17:24:22'),(36,'officemax.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302175','2009-07-28 17:24:22','2009-07-28 17:24:22'),(37,'macconnection.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302205','2009-07-28 17:24:22','2009-08-06 01:58:27'),(38,'roadrunnersports.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302206&redirect=ORIGINAL_URL','2009-07-28 17:24:23','2009-07-28 17:24:23'),(39,'sears.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302209&redirect=ORIGINAL_URL','2009-07-28 17:24:23','2009-07-28 17:24:23'),(40,'shoes.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302210','2009-07-28 17:24:23','2009-07-28 17:24:23'),(41,'textbooks.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302212&redirect=ORIGINAL_URL','2009-07-28 17:24:23','2009-07-28 17:24:23'),(42,'containerstore.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028483456','2009-07-28 17:24:23','2009-07-28 17:24:23'),(43,'uprinting.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028302441&redirect=ORIGINAL_URL','2009-07-28 17:24:23','2009-07-28 17:24:23'),(44,'zazzle.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028317215&redirect=ORIGINAL_URL','2009-07-28 17:24:23','2009-07-28 17:24:23'),(45,'ecost.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028343383','2009-07-28 17:24:23','2009-07-28 17:24:23'),(46,'vistaprint.com','GenericEscapeAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028309553&redirect=ORIGINAL_URL','2009-07-28 17:24:23','2009-07-28 17:24:23'),(53,'magazines.com','LinkshareAffiliateLink','1154','2009-07-29 19:06:07','2009-07-29 19:06:07'),(54,'mcafee.com','LinkshareAffiliateLink','1106','2009-07-29 19:07:12','2009-07-29 19:07:12'),(55,'myflavia.com','LinkshareAffiliateLink','24804','2009-07-29 19:07:32','2009-07-29 19:07:32'),(56,'tigerdirect.ca','LinkshareAffiliateLink','14028','2009-07-29 19:08:19','2009-07-29 19:08:19'),(57,'cheaptickets.com','LinkshareAffiliateLink','2836','2009-07-29 19:08:49','2009-07-29 19:08:49'),(58,'dollar.com','LinkshareAffiliateLink','35267','2009-07-29 19:09:30','2009-07-29 19:09:30'),(59,'enterprise.com','LinkshareAffiliateLink','1695','2009-07-29 19:09:57','2009-07-29 19:09:57'),(60,'thrifty.com','LinkshareAffiliateLink','3088','2009-07-29 19:10:18','2009-07-29 20:44:00'),(61,'shopfujitsu.com','RedirectAffiliateLink','http://click.linksynergy.com/fs-bin/click?id=zzA6QldruFQ&offerid=164636.10000092&type=4&subid=0','2009-07-29 19:42:15','2009-07-29 19:42:15'),(62,'HOTWIRE.COM','RedirectAffiliateLink','http://click.linksynergy.com/fs-bin/click?id=zzA6QldruFQ&offerid=120349.10000231&subid=0&type=4','2009-07-29 19:47:23','2009-07-29 19:47:23'),(63,'macys.com','RedirectAffiliateLink','http://click.linksynergy.com/fs-bin/click?id=zzA6QldruFQ&offerid=176538.10000309&subid=0&type=4','2009-07-29 19:52:23','2009-07-29 19:52:23'),(64,'microsoft.com','RedirectAffiliateLink','http://click.linksynergy.com/fs-bin/click?id=zzA6QldruFQ&offerid=166833.10000370&subid=0&type=4','2009-07-29 19:55:08','2009-07-29 19:55:08'),(65,'toshibadirect.com','RedirectAffiliateLink','http://click.linksynergy.com/fs-bin/click?id=zzA6QldruFQ&offerid=84864.10000505&subid=0&type=4','2009-07-29 19:56:44','2009-07-29 19:56:44'),(66,'att.com','RedirectAffiliateLink','http://click.linksynergy.com/fs-bin/click?id=zzA6QldruFQ&offerid=171038.10000335&subid=0&type=4','2009-07-29 20:00:57','2009-07-29 20:00:57'),(67,'iprint.com','GenericEscapeAffiliateLink','http://www.anrdoezrs.net/click-3483802-10470786?url=ORIGINAL_URL','2009-07-29 20:02:32','2009-07-29 20:03:07'),(68,'onsale.com','RedirectAffiliateLink','http://www.kqzyfj.com/click-3483802-10372092','2009-07-29 20:03:38','2009-07-29 20:03:38'),(69,'macmall.com','RedirectAffiliateLink','http://www.kqzyfj.com/click-3483802-10556729','2009-07-29 20:04:06','2009-07-29 20:04:06'),(70,'adobe.com','GenericEscapeAffiliateLink','http://www.jdoqocy.com/click-3483802-10498707?url=ORIGINAL_URL','2009-07-29 20:05:06','2009-07-29 20:05:06'),(71,'inksmile.com','GenericEscapeAffiliateLink','http://www.anrdoezrs.net/click-3483802-10504502?url=ORIGINAL_URL','2009-07-29 20:07:35','2009-07-29 20:07:35'),(72,'pcmall.com','GenericEscapeAffiliateLink','http://www.anrdoezrs.net/click-3483802-10373204?url=ORIGINAL_URL','2009-07-29 20:39:48','2009-07-29 20:40:51'),(73,'inkgrabber.com','GenericEscapeAffiliateLink','http://www.kqzyfj.com/click-3483802-10429612?url=ORIGINAL_URL','2009-07-29 20:43:24','2009-07-29 20:43:24'),(74,'pinnaclemicro.com','ShareasaleAffiliateLink','http://www.shareasale.com/r.cfm?b=170671&u=357290&m=21462&urllink=ORIGINAL_URL&afftrack=','2009-07-29 20:56:11','2009-07-29 20:56:27'),(75,'dell.com','RedirectAffiliateLink','http://www.anrdoezrs.net/click-3483802-10473263','2009-08-06 02:30:52','2009-08-06 02:30:52'),(76,'aramark-uniform.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028496113 ','2009-08-06 04:30:58','2009-08-06 04:30:58'),(77,'amazon.com','AmazonAffiliateLink',NULL,'2009-08-13 01:57:59','2009-08-13 01:57:59'),(78,'restockit.com','GenericEscapeAffiliateLink','http://www.jdoqocy.com/click-3483802-10364735?url=ORIGINAL_URL','2009-08-13 22:33:13','2009-08-13 22:34:19'),(79,'buyonlinenow.com','RedirectAffiliateLink','http://www.kqzyfj.com/click-3483802-10684835','2009-08-13 22:56:08','2009-08-13 22:58:13'),(80,'overnightprints.com','GenericEscapeAffiliateLink','http://www.anrdoezrs.net/click-3483802-10665363?url=ORIGINAL_URL','2009-08-13 23:03:07','2009-08-13 23:03:07'),(81,'nationalbusinessfurniture.com','LinkshareAffiliateLink','2456','2009-08-13 23:08:43','2009-08-13 23:08:43'),(82,'zipzoomfly.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/click?lid=41000000028548476','2009-08-13 23:14:39','2009-08-13 23:14:39'),(83,'circuitcity.com','RedirectAffiliateLink','http://clickserve.cc-dt.com/link/tplclick?lid=41000000028367956&pubid=21000000000207892','2009-08-13 23:21:15','2009-08-13 23:21:15');
/*!40000 ALTER TABLE `affiliate_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alertable_id` int(11) DEFAULT NULL,
  `alertable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alertee_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `threshold` decimal(30,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alerts_on_alertable_id_and_alertable_type` (`alertable_id`,`alertable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_user_id` int(11) DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_api_keys_on_api_user_id` (`api_user_id`),
  KEY `index_api_keys_on_created_by` (`created_by`),
  KEY `index_api_keys_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_user_restrictions`
--

DROP TABLE IF EXISTS `api_user_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_user_restrictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_user_id` int(11) DEFAULT NULL,
  `restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_user_restrictions`
--

LOCK TABLES `api_user_restrictions` WRITE;
/*!40000 ALTER TABLE `api_user_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_user_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_chain_approvers`
--

DROP TABLE IF EXISTS `approval_chain_approvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_chain_approvers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_chain_id` int(11) DEFAULT NULL,
  `approver_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `limit_amount` decimal(30,2) DEFAULT NULL,
  `limit_currency_id` int(11) DEFAULT NULL,
  `approver_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_approval_chain_approvers_on_approval_chain_id` (`approval_chain_id`),
  KEY `index_approval_chain_approvers_on_limit_currency_id` (`limit_currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_chain_approvers`
--

LOCK TABLES `approval_chain_approvers` WRITE;
/*!40000 ALTER TABLE `approval_chain_approvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_chain_approvers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_chain_conditions`
--

DROP TABLE IF EXISTS `approval_chain_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_chain_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_chain_id` int(11) DEFAULT NULL,
  `lhs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rhs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comparator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_approver_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_approval_chain_conditions_on_account_approver_id` (`account_approver_id`),
  KEY `index_approval_chain_conditions_on_approval_chain_id` (`approval_chain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_chain_conditions`
--

LOCK TABLES `approval_chain_conditions` WRITE;
/*!40000 ALTER TABLE `approval_chain_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_chain_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_chain_watchers`
--

DROP TABLE IF EXISTS `approval_chain_watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_chain_watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_chain_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_chain_watchers`
--

LOCK TABLES `approval_chain_watchers` WRITE;
/*!40000 ALTER TABLE `approval_chain_watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_chain_watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_chains`
--

DROP TABLE IF EXISTS `approval_chains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_chains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `approval_limit_id` int(11) DEFAULT NULL,
  `min_total_amount` decimal(30,2) DEFAULT NULL,
  `min_total_currency_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_approval_limit_id` int(11) DEFAULT NULL,
  `skip_management` tinyint(1) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skip_previous_approvers` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_approval_chains_on_approval_limit_id` (`approval_limit_id`),
  KEY `index_approval_chains_on_min_approval_limit_id` (`min_approval_limit_id`),
  KEY `index_approval_chains_on_min_total_currency_id` (`min_total_currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_chains`
--

LOCK TABLES `approval_chains` WRITE;
/*!40000 ALTER TABLE `approval_chains` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_chains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_delegates`
--

DROP TABLE IF EXISTS `approval_delegates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_delegates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approver_id` int(11) DEFAULT NULL,
  `delegate_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_approval_delegates_on_approver_id` (`approver_id`),
  KEY `index_approval_delegates_on_delegate_id` (`delegate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_delegates`
--

LOCK TABLES `approval_delegates` WRITE;
/*!40000 ALTER TABLE `approval_delegates` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_delegates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_group_events`
--

DROP TABLE IF EXISTS `approval_group_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_group_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval_group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_group_events`
--

LOCK TABLES `approval_group_events` WRITE;
/*!40000 ALTER TABLE `approval_group_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_group_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_groups`
--

DROP TABLE IF EXISTS `approval_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_groups`
--

LOCK TABLES `approval_groups` WRITE;
/*!40000 ALTER TABLE `approval_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_groups_users`
--

DROP TABLE IF EXISTS `approval_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_groups_users` (
  `approval_group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_groups_users`
--

LOCK TABLES `approval_groups_users` WRITE;
/*!40000 ALTER TABLE `approval_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_limits`
--

DROP TABLE IF EXISTS `approval_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_approval_limits_on_currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_limits`
--

LOCK TABLES `approval_limits` WRITE;
/*!40000 ALTER TABLE `approval_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approvals`
--

DROP TABLE IF EXISTS `approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approvals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `approver_id` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `approval_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approvable_id` int(11) DEFAULT NULL,
  `approvable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delegate_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_chain_id` int(11) DEFAULT NULL,
  `needs_reapproval` tinyint(1) DEFAULT '0',
  `override_id` int(11) DEFAULT NULL,
  `approver_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_approvals_on_approvable_id` (`approvable_id`),
  KEY `index_approvals_on_approval_chain_id` (`approval_chain_id`),
  KEY `index_approvals_on_user_id` (`approver_id`),
  KEY `index_approvals_on_delegate_id` (`delegate_id`),
  KEY `index_approvals_on_override_id` (`override_id`),
  KEY `index_approvals_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approvals`
--

LOCK TABLES `approvals` WRITE;
/*!40000 ALTER TABLE `approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_answers`
--

DROP TABLE IF EXISTS `ask_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ask_question_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ask_answers_on_ask_question_id` (`ask_question_id`),
  KEY `index_ask_answers_on_created_by` (`created_by`),
  KEY `index_ask_answers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_answers`
--

LOCK TABLES `ask_answers` WRITE;
/*!40000 ALTER TABLE `ask_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ask_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_categories`
--

DROP TABLE IF EXISTS `ask_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_ask_categories_on_created_by` (`created_by`),
  KEY `index_ask_categories_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_categories`
--

LOCK TABLES `ask_categories` WRITE;
/*!40000 ALTER TABLE `ask_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ask_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_moderators`
--

DROP TABLE IF EXISTS `ask_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_moderators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ask_category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ask_moderators_on_created_by` (`created_by`),
  KEY `index_ask_moderators_on_updated_by` (`updated_by`),
  KEY `index_ask_moderators_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_moderators`
--

LOCK TABLES `ask_moderators` WRITE;
/*!40000 ALTER TABLE `ask_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `ask_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_questions`
--

DROP TABLE IF EXISTS `ask_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci,
  `ask_category_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `delta` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_ask_questions_on_ask_category_id` (`ask_category_id`),
  KEY `index_ask_questions_on_created_by` (`created_by`),
  KEY `index_ask_questions_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_questions`
--

LOCK TABLES `ask_questions` WRITE;
/*!40000 ALTER TABLE `ask_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ask_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_subscriptions`
--

DROP TABLE IF EXISTS `ask_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ask_category_id` int(11) DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email_notifications` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_ask_subscriptions_on_ask_category_id` (`ask_category_id`),
  KEY `index_ask_subscriptions_on_created_by` (`created_by`),
  KEY `index_ask_subscriptions_on_subscriber_id` (`subscriber_id`),
  KEY `index_ask_subscriptions_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_subscriptions`
--

LOCK TABLES `ask_subscriptions` WRITE;
/*!40000 ALTER TABLE `ask_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ask_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_tags`
--

DROP TABLE IF EXISTS `asset_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_line_id` int(11) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `received` tinyint(1) DEFAULT '0',
  `requisition_line_id` int(11) DEFAULT NULL,
  `inventory_balance_id` int(11) DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_asset_tags_on_created_by` (`created_by`),
  KEY `index_asset_tags_on_inventory_balance_id` (`inventory_balance_id`),
  KEY `index_asset_tags_on_order_line_id` (`order_line_id`),
  KEY `index_asset_tags_on_requisition_line_id` (`requisition_line_id`),
  KEY `index_asset_tags_on_tag` (`tag`),
  KEY `index_asset_tags_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_tags`
--

LOCK TABLES `asset_tags` WRITE;
/*!40000 ALTER TABLE `asset_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment_links`
--

DROP TABLE IF EXISTS `attachment_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachable_id` int(11) DEFAULT NULL,
  `attachable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_field` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_attachment_links_on_attachable_id` (`attachable_id`),
  KEY `index_attachment_links_on_attachable_type` (`attachable_type`),
  KEY `index_attachment_links_on_attachment_id` (`attachment_id`),
  KEY `index_attachment_links_on_created_by` (`created_by`),
  KEY `index_attachment_links_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment_links`
--

LOCK TABLES `attachment_links` WRITE;
/*!40000 ALTER TABLE `attachment_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intent` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_created_by` (`created_by`),
  KEY `index_attachments_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_statuses`
--

DROP TABLE IF EXISTS `audit_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_statuses`
--

LOCK TABLES `audit_statuses` WRITE;
/*!40000 ALTER TABLE `audit_statuses` DISABLE KEYS */;
INSERT INTO `audit_statuses` VALUES (1,'Verified Receipt Online',1,NULL,NULL,'2009-10-09 00:00:00','2009-10-09 00:00:00'),(2,'Verified Unattached Receipt',1,NULL,NULL,'2009-10-09 00:00:00','2009-10-09 00:00:00'),(3,'Waiting for Receipt',1,NULL,NULL,'2009-10-09 00:00:00','2009-10-09 00:00:00'),(4,'No Receipt Required',1,NULL,NULL,'2009-10-09 00:00:00','2009-10-09 00:00:00'),(5,'Approved Without Receipt',1,NULL,NULL,'2009-10-09 00:00:00','2009-10-09 00:00:00');
/*!40000 ALTER TABLE `audit_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bj_config`
--

DROP TABLE IF EXISTS `bj_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bj_config` (
  `bj_config_id` int(11) NOT NULL,
  `hostname` text COLLATE utf8_unicode_ci,
  `key` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `cast` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bj_config`
--

LOCK TABLES `bj_config` WRITE;
/*!40000 ALTER TABLE `bj_config` DISABLE KEYS */;
INSERT INTO `bj_config` VALUES (0,'ruby-dev-03','production.no_tickle','false','to_bool'),(0,'ruby-dev-03','development.no_tickle','false','to_bool'),(0,'ruby-dev-03','test.no_tickle','true','to_bool');
/*!40000 ALTER TABLE `bj_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bj_job`
--

DROP TABLE IF EXISTS `bj_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bj_job` (
  `bj_job_id` int(11) NOT NULL AUTO_INCREMENT,
  `command` text COLLATE utf8_unicode_ci,
  `state` text COLLATE utf8_unicode_ci,
  `priority` int(11) DEFAULT NULL,
  `tag` text COLLATE utf8_unicode_ci,
  `is_restartable` int(11) DEFAULT NULL,
  `submitter` text COLLATE utf8_unicode_ci,
  `runner` text COLLATE utf8_unicode_ci,
  `pid` int(11) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `env` text COLLATE utf8_unicode_ci,
  `stdin` text COLLATE utf8_unicode_ci,
  `stdout` text COLLATE utf8_unicode_ci,
  `stderr` text COLLATE utf8_unicode_ci,
  `exit_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`bj_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bj_job`
--

LOCK TABLES `bj_job` WRITE;
/*!40000 ALTER TABLE `bj_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `bj_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bj_job_archive`
--

DROP TABLE IF EXISTS `bj_job_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bj_job_archive` (
  `bj_job_archive_id` int(11) NOT NULL AUTO_INCREMENT,
  `command` text COLLATE utf8_unicode_ci,
  `state` text COLLATE utf8_unicode_ci,
  `priority` int(11) DEFAULT NULL,
  `tag` text COLLATE utf8_unicode_ci,
  `is_restartable` int(11) DEFAULT NULL,
  `submitter` text COLLATE utf8_unicode_ci,
  `runner` text COLLATE utf8_unicode_ci,
  `pid` int(11) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `env` text COLLATE utf8_unicode_ci,
  `stdin` text COLLATE utf8_unicode_ci,
  `stdout` text COLLATE utf8_unicode_ci,
  `stderr` text COLLATE utf8_unicode_ci,
  `exit_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`bj_job_archive_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bj_job_archive`
--

LOCK TABLES `bj_job_archive` WRITE;
/*!40000 ALTER TABLE `bj_job_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `bj_job_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_line_adjustments`
--

DROP TABLE IF EXISTS `budget_line_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_line_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_line_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `budget_remaining` decimal(30,2) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjuster_id` int(11) NOT NULL,
  `adjuster_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` decimal(30,2) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_budget_line_adjustments_on_adjuster_type_and_adjuster_id` (`adjuster_type`,`adjuster_id`),
  KEY `index_budget_line_adjustments_on_adjuster_type` (`adjuster_type`),
  KEY `index_budget_line_adjustments_on_budget_line_id` (`budget_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_line_adjustments`
--

LOCK TABLES `budget_line_adjustments` WRITE;
/*!40000 ALTER TABLE `budget_line_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_line_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_lines`
--

DROP TABLE IF EXISTS `budget_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `segment_1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_6` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_7` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_8` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_9` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_10` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_11` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_12` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_13` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_14` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_15` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_16` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_17` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_18` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_19` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment_20` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_is_approver` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_budget_lines_on_created_by` (`created_by`),
  KEY `index_budget_lines_on_currency_id` (`currency_id`),
  KEY `index_budget_lines_on_owner_id` (`owner_id`),
  KEY `index_budget_lines_on_period_id` (`period_id`),
  KEY `index_budget_lines_on_segment_1` (`segment_1`),
  KEY `index_budget_lines_on_segment_2` (`segment_2`),
  KEY `index_budget_lines_on_segment_3` (`segment_3`),
  KEY `index_budget_lines_on_segment_4` (`segment_4`),
  KEY `index_budget_lines_on_segment_5` (`segment_5`),
  KEY `index_budget_lines_on_segment_6` (`segment_6`),
  KEY `index_budget_lines_on_segment_7` (`segment_7`),
  KEY `index_budget_lines_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_lines`
--

LOCK TABLES `budget_lines` WRITE;
/*!40000 ALTER TABLE `budget_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_group_assignments`
--

DROP TABLE IF EXISTS `business_group_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_group_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_group_id` int(11) DEFAULT NULL,
  `securable_id` int(11) DEFAULT NULL,
  `securable_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_business_group_assignments_on_business_group_id` (`business_group_id`),
  KEY `index_business_group_assignments_on_created_by` (`created_by`),
  KEY `bga_securable` (`securable_type`,`securable_id`),
  KEY `index_business_group_assignments_on_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_group_assignments`
--

LOCK TABLES `business_group_assignments` WRITE;
/*!40000 ALTER TABLE `business_group_assignments` DISABLE KEYS */;
INSERT INTO `business_group_assignments` VALUES (5,1,4,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(6,1,5,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(7,1,6,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(8,1,7,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(9,1,8,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(10,1,9,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(11,1,10,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(12,1,11,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(13,1,12,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(14,1,13,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(15,1,14,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(16,1,15,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(17,1,16,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23'),(18,1,17,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23'),(19,1,18,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23'),(20,1,19,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23'),(21,1,20,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23'),(22,1,21,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23'),(23,1,1,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(24,1,2,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22'),(25,1,3,'ExpensePolicy',NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22');
/*!40000 ALTER TABLE `business_group_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_groups`
--

DROP TABLE IF EXISTS `business_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_business_groups_on_created_by` (`created_by`),
  KEY `index_business_groups_on_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_groups`
--

LOCK TABLES `business_groups` WRITE;
/*!40000 ALTER TABLE `business_groups` DISABLE KEYS */;
INSERT INTO `business_groups` VALUES (1,'Global','Default business group that all users have access to',NULL,1,'2006-08-28 02:40:04','2007-05-24 12:53:00');
/*!40000 ALTER TABLE `business_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_items`
--

DROP TABLE IF EXISTS `catalog_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_header_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `uom_id` int(11) NOT NULL DEFAULT '0',
  `list_price` decimal(30,4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_reviews_count` int(11) NOT NULL DEFAULT '0',
  `avg_rating` float NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `source_part_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cached_at` datetime DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `list_price_currency_id` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_catalog_items_on_created_by` (`created_by`),
  KEY `catalog_items_name_index` (`name`),
  KEY `catalog_items_spn_index` (`source_part_num`),
  KEY `index_catalog_items_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_items`
--

LOCK TABLES `catalog_items` WRITE;
/*!40000 ALTER TABLE `catalog_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `supplier_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `connect_catalog_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cert_string` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `comment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commentable` (`commentable_id`,`commentable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodities`
--

DROP TABLE IF EXISTS `commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_commodities_on_active` (`active`),
  KEY `index_commodities_on_created_by` (`created_by`),
  KEY `index_commodities_on_name` (`name`),
  KEY `index_commodities_on_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodities`
--

LOCK TABLES `commodities` WRITE;
/*!40000 ALTER TABLE `commodities` DISABLE KEYS */;
INSERT INTO `commodities` VALUES (1,1,'Computer Equipment',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2),(2,1,'Computer Equipment - Capital',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,4),(3,1,'Computer Equipment - Maintenance',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6),(4,1,'Computer Software',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,8),(5,1,'Computer Software - Capital',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,10),(6,1,'Computer Software - Maintenance',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,12),(7,1,'Consulting Services',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,14),(8,1,'Dues & Subscriptions',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,16),(9,1,'Electrical Supplies',1,1,'2008-11-25 17:18:32','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,18),(10,1,'Equipment',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,20),(11,1,'Equipment - Capital',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,22),(12,1,'Facilities - Capital',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,24),(13,1,'Facilities - Supplies',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,26),(14,1,'Food & Food Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,28),(15,1,'Freight',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,30),(16,1,'Furniture',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,32),(17,1,'Furniture - Capital',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,34),(18,1,'Janitorial Supplies',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,36),(19,1,'Lab Equipment',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,38),(20,1,'Lab Supplies',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,40),(21,1,'Legal & Accounting Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,42),(22,1,'Maintenance & Repair Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43,44),(23,1,'Marketing Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,46),(24,1,'Office Supplies',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,48),(25,1,'Packaging Materials',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,50),(26,1,'Postage & Mail Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51,52),(27,1,'Printing Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,54),(28,1,'Professional Development',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,56),(29,1,'Rental & Lease Services',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,58),(30,1,'Security Expenses',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,60),(31,1,'Storage Fees',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,62),(32,1,'Telecommunications',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63,64),(33,1,'Telecommunications - Capital',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,66),(34,1,'Travel & Transport',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,68),(35,1,'Unclassified Expenses',1,1,'2008-11-25 17:18:33','2011-03-23 01:30:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69,70);
/*!40000 ALTER TABLE `commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name_prefix` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_suffix` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_additional` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_given` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_family` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_fullname` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_phone_id` int(11) DEFAULT NULL,
  `mobile_phone_id` int(11) DEFAULT NULL,
  `fax_phone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contacts_on_created_by` (`created_by`),
  KEY `index_contacts_on_fax_phone_id` (`fax_phone_id`),
  KEY `index_contacts_on_mobile_phone_id` (`mobile_phone_id`),
  KEY `index_contacts_on_updated_by` (`updated_by`),
  KEY `index_contacts_on_work_phone_id` (`work_phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minimum_value` float DEFAULT NULL,
  `maximum_value` float DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `legal_agreement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_flag` tinyint(1) DEFAULT NULL,
  `catalog_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legal_agreement_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legal_agreement_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legal_agreement_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `savings_pct` decimal(8,2) DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_commit` decimal(30,2) DEFAULT NULL,
  `max_commit` decimal(30,2) DEFAULT NULL,
  `supplier_invoiceable` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `default_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contracts_on_created_by` (`created_by`),
  KEY `index_contracts_on_currency_id` (`currency_id`),
  KEY `index_contracts_on_supplier_id` (`supplier_id`),
  KEY `index_contracts_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (2,'AF','Afghanistan',3,1),(3,'AL','Albania',4,1),(4,'DZ','Algeria',5,1),(5,'AS','American Samoa',6,1),(6,'AD','Andorra',7,1),(7,'AO','Angola',8,1),(8,'AI','Anguilla',9,1),(9,'AQ','Antarctica',10,1),(10,'AG','Antigua & Barbuda',11,1),(11,'AR','Argentina',12,1),(12,'AM','Armenia',13,1),(13,'AW','Aruba',14,1),(14,'AU','Australia',15,1),(15,'AT','Austria',16,1),(16,'AZ','Azerbaijan',17,1),(17,'BS','Bahamas',18,1),(18,'BH','Bahrain',19,1),(19,'BD','Bangladesh',20,1),(20,'BB','Barbados',21,1),(21,'BY','Belarus',22,1),(22,'BE','Belgium',23,1),(23,'BZ','Belize',24,1),(24,'BJ','Benin',25,1),(25,'BM','Bermuda',26,1),(26,'BT','Bhutan',27,1),(27,'BO','Bolivia, Plurinational State Of',28,1),(28,'BA','Bosnia & Herzegovina',29,1),(29,'BW','Botswana',30,1),(30,'BV','Bouvet Island',31,1),(31,'BR','Brazil',32,1),(32,'IO','British Indian Ocean Territory',33,1),(33,'BN','Brunei Darussalam',34,1),(34,'BG','Bulgaria',35,1),(35,'BF','Burkina Faso',36,1),(36,'BI','Burundi',37,1),(37,'KH','Cambodia',38,1),(38,'CM','Cameroon',39,1),(39,'CA','Canada',40,1),(40,'CV','Cape Verde',41,1),(41,'KY','Cayman Islands',42,1),(42,'CF','Central African Republic',43,1),(43,'TD','Chad',44,1),(44,'CL','Chile',45,1),(45,'CN','China',46,1),(46,'CX','Christmas Island',47,1),(47,'CC','Cocos (Keeling) Islands',48,1),(48,'CO','Colombia',49,1),(49,'KM','Comoros',50,1),(50,'CG','Congo',51,1),(51,'CK','Cook Islands',52,1),(52,'CR','Costa Rica',53,1),(53,'HR','Croatia',54,1),(54,'CU','Cuba',55,1),(55,'CY','Cyprus',56,1),(56,'CZ','Czech Republic',57,1),(57,'CS','Czechoslovakia',58,1),(58,'DK','Denmark',59,1),(59,'DJ','Djibouti',60,1),(60,'DM','Dominica',61,1),(61,'DO','Dominican Republic',62,1),(62,'TL','Timor-Leste',63,1),(63,'EC','Ecuador',64,1),(64,'EG','Egypt',65,1),(65,'SV','El Salvador',66,1),(66,'GQ','Equatorial Guinea',67,1),(67,'EE','Estonia',68,1),(68,'ET','Ethiopia',69,1),(69,'FK','Falkland Islands (Malvinas)',70,1),(70,'FO','Faroe Islands',71,1),(71,'FJ','Fiji',72,1),(72,'FI','Finland',73,1),(73,'FR','France',74,1),(74,'FX','France (European Ter.)',75,1),(75,'TF','French Southern Territories',76,1),(76,'GA','Gabon',77,1),(77,'GM','Gambia',78,1),(78,'GE','Georgia',79,1),(79,'DE','Germany',80,1),(80,'GH','Ghana',81,1),(81,'GI','Gibraltar',82,1),(82,'GB','United Kingdom',83,1),(83,'GR','Greece',84,1),(84,'GL','Greenland',85,1),(85,'GD','Grenada',86,1),(86,'GP','Guadeloupe',87,1),(87,'GU','Guam',88,1),(88,'GT','Guatemala',89,1),(89,'GF','French Guiana',90,1),(90,'GN','Guinea',91,1),(91,'GW','Guinea-Bissau',92,1),(92,'GY','Guyana',93,1),(93,'HT','Haiti',94,1),(94,'HM','Heard Island & Mcdonald Islands',95,1),(95,'HN','Honduras',96,1),(96,'HK','Hong Kong',97,1),(97,'HU','Hungary',98,1),(98,'IS','Iceland',99,1),(99,'IN','India',100,1),(100,'ID','Indonesia',101,1),(101,'IR','Iran, Islamic Republic Of',102,1),(102,'IQ','Iraq',103,1),(103,'IE','Ireland',104,1),(104,'IL','Israel',105,1),(105,'IT','Italy',106,1),(106,'CI','Côte D\'ivoire',107,1),(107,'JM','Jamaica',108,1),(108,'JP','Japan',109,1),(109,'JO','Jordan',110,1),(110,'KZ','Kazakhstan',111,1),(111,'KE','Kenya',112,1),(112,'KI','Kiribati',113,1),(113,'KP','Korea, Democratic People\'s Republic Of',114,1),(114,'KR','Korea, Republic Of',115,1),(115,'KW','Kuwait',116,1),(116,'KG','Kyrgyzstan',117,1),(117,'LA','Lao People\'s Democratic Republic',118,1),(118,'LV','Latvia',119,1),(119,'LB','Lebanon',120,1),(120,'LS','Lesotho',121,1),(121,'LR','Liberia',122,1),(122,'LY','Libyan Arab Jamahiriya',123,1),(123,'LI','Liechtenstein',124,1),(124,'LT','Lithuania',125,1),(125,'LU','Luxembourg',126,1),(126,'MO','Macao',127,1),(127,'MK','Macedonia, The Former Yugoslav Republic Of',128,1),(128,'MG','Madagascar',129,1),(129,'MW','Malawi',130,1),(130,'MY','Malaysia',131,1),(131,'MV','Maldives',132,1),(132,'ML','Mali',133,1),(133,'MT','Malta',134,1),(134,'MH','Marshall Islands',135,1),(135,'MQ','Martinique',136,1),(136,'MR','Mauritania',137,1),(137,'MU','Mauritius',138,1),(138,'MX','Mexico',139,1),(139,'FM','Micronesia, Federated States Of',140,1),(140,'MD','Moldova, Republic Of',141,1),(141,'MC','Monaco',142,1),(142,'MN','Mongolia',143,1),(143,'MS','Montserrat',145,1),(144,'MA','Morocco',146,1),(145,'MZ','Mozambique',147,1),(146,'MM','Myanmar',148,1),(147,'NA','Namibia',149,1),(148,'NR','Nauru',150,1),(149,'NP','Nepal',151,1),(150,'AN','Netherland Antilles',152,1),(151,'NL','Netherlands',153,1),(152,'NT','Neutral Zone',154,1),(153,'NC','New Caledonia',155,1),(154,'NZ','New Zealand',156,1),(155,'NI','Nicaragua',157,1),(156,'NE','Niger',158,1),(157,'NG','Nigeria',159,1),(158,'NU','Niue',160,1),(159,'NF','Norfolk Island',161,1),(160,'MP','Northern Mariana Islands',162,1),(161,'NO','Norway',163,1),(162,'OM','Oman',164,1),(163,'PK','Pakistan',165,1),(164,'PW','Palau',166,1),(165,'PA','Panama',167,1),(166,'PG','Papua New Guinea',168,1),(167,'PY','Paraguay',169,1),(168,'PE','Peru',170,1),(169,'PH','Philippines',171,1),(170,'PN','Pitcairn',172,1),(171,'PL','Poland',173,1),(172,'PF','French Polynesia',174,1),(173,'PT','Portugal',175,1),(174,'PR','Puerto Rico',176,1),(175,'QA','Qatar',177,1),(176,'RE','Réunion',178,1),(177,'RO','Romania',179,1),(178,'RU','Russian Federation',180,1),(179,'RW','Rwanda',181,1),(180,'LC','Saint Lucia',182,1),(181,'WS','Samoa',183,1),(182,'SM','San Marino',184,1),(183,'SA','Saudi Arabia',185,1),(184,'SN','Senegal',186,1),(185,'SC','Seychelles',188,1),(186,'SL','Sierra Leone',189,1),(187,'SG','Singapore',190,1),(188,'SK','Slovakia',191,1),(189,'SI','Slovenia',192,1),(190,'SB','Solomon Islands',193,1),(191,'SO','Somalia',194,1),(192,'ZA','South Africa',195,1),(193,'ES','Spain',196,1),(194,'LK','Sri Lanka',197,1),(195,'SH','Saint Helena, Ascension & Tristan Da Cunha',198,1),(196,'PM','Saint Pierre & Miquelon',199,1),(197,'ST','Sao Tome & Principe',200,1),(198,'KN','Saint Kitts & Nevis',201,1),(199,'VC','Saint Vincent & The Grenadines',202,1),(200,'SD','Sudan',203,1),(201,'SR','Suriname',204,1),(202,'SJ','Svalbard & Jan Mayen',205,1),(203,'SZ','Swaziland',206,1),(204,'SE','Sweden',207,1),(205,'CH','Switzerland',208,1),(206,'SY','Syrian Arab Republic',209,1),(207,'TJ','Tajikistan',210,1),(208,'TW','Taiwan, Province Of China',211,1),(209,'TZ','Tanzania, United Republic Of',212,1),(210,'TH','Thailand',213,1),(211,'TG','Togo',214,1),(212,'TK','Tokelau',215,1),(213,'TO','Tonga',216,1),(214,'TT','Trinidad & Tobago',217,1),(215,'TN','Tunisia',218,1),(216,'TR','Turkey',219,1),(217,'TM','Turkmenistan',220,1),(218,'TC','Turks & Caicos Islands',221,1),(219,'TV','Tuvalu',222,1),(220,'UG','Uganda',223,1),(221,'UA','Ukraine',224,1),(222,'AE','United Arab Emirates',225,1),(223,'US','United States',1,1),(224,'UY','Uruguay',227,1),(225,'UM','United States Minor Outlying Islands',228,1),(226,'UZ','Uzbekistan',229,1),(227,'VU','Vanuatu',230,1),(228,'VA','Holy See (Vatican City State)',231,1),(229,'VE','Venezuela, Bolivarian Republic Of',232,1),(230,'VN','Viet Nam',233,1),(231,'VG','Virgin Islands, British',234,1),(232,'VI','Virgin Islands, U.S.',235,1),(233,'WF','Wallis & Futuna',236,1),(234,'EH','Western Sahara',237,1),(235,'YE','Yemen',238,1),(236,'YU','Yugoslavia',239,0),(237,'ZR','Zaire',240,1),(238,'ZM','Zambia',241,1),(239,'ZW','Zimbabwe',242,1),(240,'ME','Montenegro',144,1),(241,'RS','Serbia',187,1),(244,'AX','Åland Islands',243,1),(245,'BQ','Bonaire, Saint Eustatius & Saba',244,1),(246,'CD','Congo, The Democratic Republic Of The',245,1),(247,'CW','Curaçao',246,1),(248,'ER','Eritrea',247,1),(249,'GG','Guernsey',248,1),(250,'IM','Isle Of Man',249,1),(251,'JE','Jersey',250,1),(252,'YT','Mayotte',251,1),(253,'PS','Palestinian Territory, Occupied',252,1),(254,'BL','Saint Barthélemy',253,1),(255,'MF','Saint Martin (French Part)',254,1),(256,'SX','Sint Maarten (Dutch Part)',255,1),(257,'GS','South Georgia & The South Sandwich Islands',256,1);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_imports`
--

DROP TABLE IF EXISTS `credit_card_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card_imports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_id` int(11) DEFAULT NULL,
  `source_request_id` int(11) DEFAULT NULL,
  `source_request_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_imports`
--

LOCK TABLES `credit_card_imports` WRITE;
/*!40000 ALTER TABLE `credit_card_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_card_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_transaction_categories`
--

DROP TABLE IF EXISTS `credit_card_transaction_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card_transaction_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yodlee_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_transaction_categories`
--

LOCK TABLES `credit_card_transaction_categories` WRITE;
/*!40000 ALTER TABLE `credit_card_transaction_categories` DISABLE KEYS */;
INSERT INTO `credit_card_transaction_categories` VALUES (1,'ATM/Cash Withdrawals',25,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(2,'Advertising',100,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(3,'Automotive Expenses',2,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(4,'Business Miscellaneous',102,'2010-09-11 05:10:03','2010-09-11 05:10:04',21),(5,'Cable/Satellite Services',15,'2010-09-11 05:10:03','2010-09-11 05:10:04',16),(6,'Charitable Giving',3,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(7,'Checks',33,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(8,'Child/Dependent Expenses',4,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(9,'Clothing/Shoes',5,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(10,'Dues and Subscriptions',108,'2010-09-11 05:10:03','2010-09-11 05:10:04',18),(11,'Education',6,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(12,'Electronics',43,'2010-09-11 05:10:03','2010-09-11 05:10:04',20),(13,'Entertainment',7,'2010-09-11 05:10:03','2010-09-11 05:10:04',14),(14,'Gasoline/Fuel',8,'2010-09-11 05:10:03','2010-09-11 05:10:04',7),(15,'General Merchandise',44,'2010-09-11 05:10:03','2010-09-11 05:10:04',21),(16,'Gifts',9,'2010-09-11 05:10:03','2010-09-11 05:10:04',19),(17,'Groceries',10,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(18,'Healthcare/Medical',11,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(19,'Hobbies',34,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(20,'Home Improvement',13,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(21,'Home Maintenance',12,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(22,'Insurance',14,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(23,'Loans',17,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(24,'Mortgages',18,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(25,'Office Maintenance',110,'2010-09-11 05:10:03','2010-09-11 05:10:04',20),(26,'Office Supplies',45,'2010-09-11 05:10:03','2010-09-11 05:10:04',20),(27,'Online Services',16,'2010-09-11 05:10:03','2010-09-11 05:10:04',16),(28,'Other Bills',35,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(29,'Other Expenses',19,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(30,'Personal Care',20,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(31,'Pets/Pet Care',42,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(32,'Postage and Shipping',104,'2010-09-11 05:10:03','2010-09-11 05:10:04',20),(33,'Printing',106,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(34,'Rent',21,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(35,'Restaurants/Dining',22,'2010-09-11 05:10:03','2010-09-11 05:10:04',5),(36,'Service Charges/Fees',24,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(37,'Taxes',37,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(38,'Telephone Services',38,'2010-09-11 05:10:03','2010-09-11 05:10:04',12),(39,'Travel',23,'2010-09-11 05:10:03','2010-09-11 05:10:04',1),(40,'Utilities',39,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(41,'Wages Paid',112,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(42,'Consulting',92,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(43,'Deposits',27,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(44,'Interest',96,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(45,'Investment Income',30,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(46,'Other Income',32,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(47,'Paychecks/Salary',29,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(48,'Retirement Income',31,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(49,'Sales',94,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(50,'Services',98,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(51,'Credit Card Payments',26,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(52,'Savings',40,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(53,'Securities Trades',36,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(54,'Transfers',28,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(55,'Retirement Contributions',41,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL),(56,'Uncategorized',1,'2010-09-11 05:10:03','2010-09-11 05:10:03',NULL);
/*!40000 ALTER TABLE `credit_card_transaction_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_transactions`
--

DROP TABLE IF EXISTS `credit_card_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_id` int(11) DEFAULT NULL,
  `yodlee_id` int(11) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `removed` tinyint(1) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `credit_card_transaction_category_id` int(11) DEFAULT NULL,
  `expense_line_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_transactions`
--

LOCK TABLES `credit_card_transactions` WRITE;
/*!40000 ALTER TABLE `credit_card_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_card_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_types`
--

DROP TABLE IF EXISTS `credit_card_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content_service_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `home_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mfa_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_types`
--

LOCK TABLES `credit_card_types` WRITE;
/*!40000 ALTER TABLE `credit_card_types` DISABLE KEYS */;
INSERT INTO `credit_card_types` VALUES (1,'1st City Savings FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:52','2011-02-09 17:34:52',7108,6451,'https://www.firstcitycu.org/home.html',3800,'First City Credit Union','First City Credit Union',NULL),(2,'1st Credit Union of Gainesville -Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:52','2011-02-09 17:34:52',7113,8189,'http://www.1stcu.com/',3807,'1st Credit Union of Gainesville','1st Credit Union of Gainesville','SECURITY_QUESTION'),(3,'1st University Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:53','2011-02-09 17:34:53',5921,5278,'http://www.culink.net/default2.html',3160,'1st University Credit Union','1st University Credit Union - Credit Card',NULL),(4,'310 Community Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:53','2011-02-09 17:34:53',5884,5245,'http://www.310ccu.org/',3135,'310 Community Credit Union','310 Community Credit Union - Credit Card',NULL),(5,'ADA Platinum MasterCard',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:55','2011-02-09 17:34:55',10748,8604,'http://www.adacard.com/',5384,'American Dental Association','ADA Platinum MasterCard',NULL),(6,'AdvisorTestSiteforDummyCard',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:56','2011-02-09 17:34:56',11060,8860,'N/A',2375,'Dummy','AdvisorTestSiteforDummyCard',NULL),(7,'Alabama Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:56','2011-02-09 17:34:56',5395,4764,'http://server.alabamacu.com/',2789,'Alabama Credit Union','Alabama Credit Union - Credit Cards','SECURITY_QUESTION'),(8,'Alabama Telco Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:57','2011-02-09 17:34:57',7159,6463,'http://www.alatelco.org/',3254,'Alabama Telco Credit Union','Alabama Telco Credit Union',NULL),(9,'All America Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:57','2011-02-09 17:34:57',16195,13291,'http://www.allamericabank.net/',7534,'All America Bank','All America Bank - Loan',NULL),(10,'Alliance Bank  - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:57','2011-02-09 17:34:57',15989,13418,'http://www.alliancebanking.com/',5276,'Alliance Bank','Alliance Bank',NULL),(11,'Amazon.com Store Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:34:59','2011-02-09 17:34:59',16298,13669,'http://www.amazon.com/',1053,'Amazon.com','Amazon.com Store Card','SECURITY_QUESTION'),(12,'American Express Cards (Canada)',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:01','2011-02-09 17:35:01',12119,9907,'http://www.americanexpress.com/canada/en/homepage/default.shtml?ca_en_nu=global',583,'Ameriprise Financial','American Express Cards (Canada)',NULL),(13,'American Express Cards (India)',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:01','2011-02-09 17:35:01',16277,13638,'http://www.americanexpress.com/india/homepage.shtml',7709,'American Express (India)','American Express Cards (India)',NULL),(14,'American Express Corporate Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:01','2011-02-09 17:35:01',14982,12526,'https://home.americanexpress.com/home/mt_personal_cm.shtml?',583,'Ameriprise Financial','American Express Corporate Card',NULL),(15,'Andover Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:04','2011-02-09 17:35:04',5369,4738,'http://www.andoverfcu.com/',2614,'Andover Federal Credit Union','Andover Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(16,'Arhaus Furniture Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:05','2011-02-09 17:35:05',16294,13664,'https://onlineaccess.mycreditcard.cc/arhaus',5793,'World Financial Network National Bank','Arhaus Furniture Credit Card','SECURITY_QUESTION'),(17,'Arizona Media Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:06','2011-02-09 17:35:06',5479,4847,'http://www.azmedia.org/',2838,'Arizona Media Credit Union','Arizona Media Credit Union - Credit Cards','SECURITY_QUESTION'),(18,'Arlington Virginia FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:06','2011-02-09 17:35:06',7208,6473,'http://www.arlingtonvafcu.org/',4232,'Arlington Virginia Federal Credit Union','Arlington Virginia FCU',NULL),(19,'Atlantic Financial FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:08','2011-02-09 17:35:08',7230,8156,'http://www.affcu.org/',4018,'Atlantic Financial Federal Credit Union','Atlantic Financial FCU','SECURITY_QUESTION'),(20,'B&W Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:09','2011-02-09 17:35:09',7236,6478,'http://www.bwfcu.org/',4237,'B&W Federal Credit Union','B&W Federal Credit Union',NULL),(21,'Babbitt Steelworkers CU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:09','2011-02-09 17:35:09',5432,4801,'http://mesabi.rangenet.com/~bscu/',2775,'Babbitt Steelworkers CU','Babbitt Steelworkers CU - Credit Cards','SECURITY_QUESTION'),(22,'BankFinancial - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:11','2011-02-09 17:35:11',7268,6484,'http://www.bankfinancial.com/',4021,'BankFinancial','BankFinancial','SECURITY_QUESTION'),(23,'Bank of Los Altos - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:12','2011-02-09 17:35:12',6066,2991,'http://www.bankoflosaltos.com/home.htm',1341,'Bank of Los Altos','Heritage Bank of Commerce',NULL),(24,'Baraboo National Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:14','2011-02-09 17:35:14',8316,6677,'http://www.barnatl.com/',4102,'The Baraboo National Bank','The Baraboo National Bank',NULL),(25,'Bath National Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:15','2011-02-09 17:35:15',10638,8499,'http://www.bathnational.com/',5286,'Bath National Bank','Bath National Bank - Credit Card','SECURITY_QUESTION'),(26,'Beaumont Municipal Employees CU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:15','2011-02-09 17:35:15',5946,5307,'http://www.bmecu.com/ASP/home.asp',3183,'Beaumont Municipal Employees CU','Beaumont Municipal Employees CU - Credit Card',NULL),(27,'Birmingham Bloomfield CU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:16','2011-02-09 17:35:16',5457,4826,'http://www.bbcu.org/',2847,'Birmingham Bloomfield CU','Birmingham Bloomfield CU - Credit Cards','SECURITY_QUESTION'),(28,'Butler Armco Employees CU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:23','2011-02-09 17:35:23',5258,4627,'http://www.nb.net/',2726,'Butler Armco Employees CU','Butler Armco Employees CU - Credit Cards','SECURITY_QUESTION'),(29,'Cambridge State Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:24','2011-02-09 17:35:24',5964,5324,'http://www.cambridgebank.com/',3193,'Cambridge State Bank','Cambridge State Bank - Credit Card','SECURITY_QUESTION'),(30,'Capstone Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:25','2011-02-09 17:35:25',5966,5326,'http://www.2capstone.com/',3195,'MainSource Financial','Capstone Bank - Credit Card','SECURITY_QUESTION'),(31,'Cecil County Schools Employees FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:27','2011-02-09 17:35:27',5298,4667,'http://www.cecilcountyschoolefcu.com/',2798,'Cecil County Schools Employees FCU','Cecil County Schools Employees FCU - Credit Cards','SECURITY_QUESTION'),(32,'Central Minnesota FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:27','2011-02-09 17:35:27',7351,6497,'https://www.centralmnfcu.org/',3799,'Central Minnesota Federal Credit Union','Central Minnesota FCU',NULL),(33,'Central Missouri Community CU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:27','2011-02-09 17:35:27',5386,4755,'http://www.cmccreditunion.org/',2821,'Central Missouri Community CU','Central Missouri Community CU - Credit Cards','SECURITY_QUESTION'),(34,'Chase e-funds - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:29','2011-02-09 17:35:29',12550,10334,'www.efundscard.com',6119,'Viacom','Chase e-funds - Credit Card (BETA)',NULL),(35,'Chevron West Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:30','2011-02-09 17:35:30',9567,7473,'http://www.chevronwestcu.org/',2456,'Chevron Federal Credit Union','Chevron West Credit Union - Credit Card',NULL),(36,'Choice One FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:31','2011-02-09 17:35:31',5241,4610,'http://www.choiceone.org/',2599,'Choice One FCU','Choice One FCU - Credit Cards','SECURITY_QUESTION'),(37,'Cincinnati Police FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:32','2011-02-09 17:35:32',5368,4737,'http://www.copfcu.com/',2841,'Cincinnati Police FCU','Cincinnati Police FCU - Credit Cards',NULL),(38,'City Bank Hawaii - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:34','2011-02-09 17:35:34',10655,8429,'http://www.citybankhi.com/',5310,'City Bank Hawaii','City Bank Hawaii',NULL),(39,'Coastal FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:35','2011-02-09 17:35:35',5519,4880,'https://www.coastal24.com/index.html',2492,'Coastal Federal Credit Union','Coastal FCU - Credit Card','SECURITY_QUESTION'),(40,'CommerceWest Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:38','2011-02-09 17:35:38',16089,13508,'http://www.cwbk.com/',7640,'CommerceWest Bank','CommerceWest Bank',NULL),(41,'Conoco Mastercard',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:40','2011-02-09 17:35:40',10070,7916,'http://www.conoco.com/',4985,'Conoco','Conoco Mastercard',NULL),(42,'Coors Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:40','2011-02-09 17:35:40',5480,4848,'http://www.coorscu.org/',2826,'Coors Credit Union','Coors Credit Union - Credit Cards','SECURITY_QUESTION'),(43,'CorTrust Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:41','2011-02-09 17:35:41',15922,13369,'http://www.cortrustbankcc.com/',7576,'CorTrust Bank','CorTrust Bank - Credit Card',NULL),(44,'Credit Union Northwest - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:41','2011-02-09 17:35:41',9564,7470,'http://www.cunw.org/',4709,'Credit Union Northwest','Credit Union Northwest - Credit Card','SECURITY_QUESTION'),(45,'Cyprus CU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:43','2011-02-09 17:35:43',16029,7513,'http://www.cypruscu.com/',4794,'Cyprus Credit Union','Cyprus Credit Union',NULL),(46,'DagCreditcard',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:43','2011-02-09 17:35:43',11198,8998,'n/a',1148,'Demo Bank','DagCreditcard',NULL),(47,'Delafield State Bank - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:46','2011-02-09 17:35:46',5392,4761,'http://www.delafieldbank.com/',2765,'Delafield State Bank','Delafield State Bank - Credit Cards','SECURITY_QUESTION'),(48,'Delta Community Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:47','2011-02-09 17:35:47',4989,4366,'http://www.decu.org',2108,'Delta Community Credit Union','Delta Community Credit Union - Credit Card',NULL),(49,'DHS Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:48','2011-02-09 17:35:48',5273,4642,'http://www.dhscu.org/',2799,'DHS Credit Union','DHS Credit Union - Credit Cards','SECURITY_QUESTION'),(50,'Diamond State FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:48','2011-02-09 17:35:48',5372,4741,'http://www.dstfcu.com/',2829,'Diamond State FCU','Diamond State FCU - Credit Cards','SECURITY_QUESTION'),(51,'Direct Card Access - Personal Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:49','2011-02-09 17:35:49',15502,13026,'http://www.directcardaccess.com/mark/home/personal/',2978,'AMCORE','Direct Card Access - Personal Credit Card','SECURITY_QUESTION'),(52,'dressbarn - credit card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:50','2011-02-09 17:35:50',14956,12496,'http://www.dressbarn.com/',7153,'Dressbarn','dressbarn - credit card','SECURITY_QUESTION'),(53,'Eddie Bauer Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:52','2011-02-09 17:35:52',14253,11808,'https://onlineaccess.mycreditcard.cc/eddiebauer?Action=Intro.jsp',5793,'World Financial Network National Bank','Eddie Bauer Credit Card','SECURITY_QUESTION'),(54,'ESL Federal Credit Union -  Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:54','2011-02-09 17:35:54',5111,4488,'http://www.esl.org/',637,'ESL Federal Credit Union','ESL Federal Credit Union -  Credit Card',NULL),(55,'Exco Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:55','2011-02-09 17:35:55',5376,4745,'http://www.excofcu.org/',2760,'Exco Federal Credit Union','Exco Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(56,'Farmers State Bank(Colorado) - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:56','2011-02-09 17:35:56',6009,5369,'https://www.suntrust.com/portal/server.pt',3233,'Farmers State Bank(Colorado)','Farmers State Bank(Colorado) - Credit Card','SECURITY_QUESTION'),(57,'Firelands Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:57','2011-02-09 17:35:57',5379,4748,'http://www.bellfed.org/',2772,'Firelands Federal Credit Union','Firelands Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(58,'First American Bank(Texas) - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:57','2011-02-09 17:35:57',5994,5354,'http://www.fabtexas.com/',3204,'First American Bank','First American Bank(Texas) - Credit Card','SECURITY_QUESTION'),(59,'First Citizens (GA) - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:58','2011-02-09 17:35:58',7582,6541,'http://www.firstcitizensbankofga.com/',4127,'First Citizens','First Citizens (GA)',NULL),(60,'First Financial FCU of Maryland - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:59','2011-02-09 17:35:59',16214,13592,'https://www.firstfinancial.org/',7678,'First Financial Federal Credit Union','First Financial FCU of Maryland',NULL),(61,'First Future Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:59','2011-02-09 17:35:59',11635,9429,'http://www.kmfcu.org/',2987,'First Future Credit Union','First Future Credit Union - Loan',NULL),(62,'First Harrison Bank - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:59','2011-02-09 17:35:59',5481,4849,'http://www.firstharrison.com/',2617,'First Harrison Bank','First Harrison Bank - Credit Cards','SECURITY_QUESTION'),(63,'First Illinois Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:35:59','2011-02-09 17:35:59',5470,4838,'http://www.1stillinoiscu.org/public/newsandoffers.asp',2831,'First Illinois Credit Union','First Illinois Credit Union - Credit Cards','SECURITY_QUESTION'),(64,'FirstLight Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:00','2011-02-09 17:36:00',5054,4427,'http://www.fbfcu.org/',2529,'Fort Bliss Federal Credit Union','FirstLight Federal Credit Union - Credit Card',NULL),(65,'First National Bank of Barry - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:00','2011-02-09 17:36:00',5981,5341,'http://www.fnbbarry.com/',3220,'The First National Bank of Barry','First National Bank of Barry - Credit Card','SECURITY_QUESTION'),(66,'First National Bank of Springdale - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:00','2011-02-09 17:36:00',8809,6825,'https://banking.fnbspringdale.com/servlet/ftb/index.html',4346,'First National Bank of Springdale','First National Bank of Springdale ',NULL),(67,'First Penn Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:01','2011-02-09 17:36:01',7640,8186,'https://www.firstpennbankhb.com/',4223,'First Penn Bank','First Penn Bank','SECURITY_QUESTION'),(68,'FNANB Online',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:04','2011-02-09 17:36:04',9697,7600,'http://www.fnanb.com/',4412,'FNANB','FNANB Online',NULL),(69,'Fort Leavenworth CU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:05','2011-02-09 17:36:05',5260,4629,'http://www.flcuks.org/index.html',2595,'Fort Leavenworth CU','Fort Leavenworth CU - Credit Cards','SECURITY_QUESTION'),(70,'Founders Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:05','2011-02-09 17:36:05',5094,4471,'http://www.foundersfcu.com/',2530,'Founders Federal Credit Union','Founders Federal Credit Union - Credit Card',NULL),(71,'FRBEFCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:05','2011-02-09 17:36:05',5274,4643,'http://www.frbefcu.org/',2670,'FRBEFCU','FRBEFCU - Credit Cards','SECURITY_QUESTION'),(72,'Fry\'s Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:06','2011-02-09 17:36:06',15983,13415,'https://corecard.i.frys.com/frysselfservice/Pages/ServiceLogin.aspx?e=a',7599,'First Electronic Bank','Fry\'\'s Credit Card',NULL),(73,'Galveston County FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:07','2011-02-09 17:36:07',5934,5293,'http://www.galco.org/',3163,'Galveston County Federal Credit Union','Galveston County FCU - Credit Card',NULL),(74,'Gateway Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:07','2011-02-09 17:36:07',5269,4638,'http://www.gatewaycreditunion.org/',2759,'Gateway Credit Union','Gateway Credit Union - Credit Cards','SECURITY_QUESTION'),(75,'Golden Bay Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:11','2011-02-09 17:36:11',7719,1195,'http://www.goldenbay.org/',658,'Golden Bay Federal Credit Union','Golden Bay Federal Credit Union',NULL),(76,'Gordon\'s Jewelers - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:11','2011-02-09 17:36:11',15279,12799,'http://www.gordonsjewelers.com/',7330,'GORDON\'S JEWELERS','Gordon\'\'s Jewelers - Credit Card',NULL),(77,'Gracewood Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:12','2011-02-09 17:36:12',5434,4803,'http://www.gracewoodfcu.com/',2803,'Gracewood Federal Credit Union','Gracewood Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(78,'Great Wisconsin Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:13','2011-02-09 17:36:13',10000,7852,'https://www.greatwisconsincu.org/GreatWisconsinCU.asp',3870,'CUNA Credit Union','Great Wisconsin Credit Union',NULL),(79,'Guardian Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:14','2011-02-09 17:36:14',5281,4650,'http://www.guardianfcu.org/',2727,'Guardian Federal Credit Union','Guardian Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(80,'H&H School Employees FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:15','2011-02-09 17:36:15',5952,5313,'http://www.hhsefcu.org/welcome.html',3185,'H&H School Employees FCU','H&H School Employees FCU - Credit Card',NULL),(81,'Hobart Corporation Employees FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:18','2011-02-09 17:36:18',5353,4722,'http://www.hobartcreditunion.com/',2761,'Hobart Corporation Employees FCU','Hobart Corporation Employees FCU - Credit Cards','SECURITY_QUESTION'),(82,'Houston Texans',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:20','2011-02-09 17:36:20',10309,8179,'http://www.mbnanetaccess.com/',545,'MBNA','Houston Texans',NULL),(83,'Houston Texans',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:20','2011-02-09 17:36:20',12752,8179,'http://www.mbnanetaccess.com/',545,'MBNA','Houston Texans',NULL),(84,'Houston Texas Fire Fighters FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:20','2011-02-09 17:36:20',5325,4694,'http://www.htfffcu.org/',2649,'Houston Texas Fire Fighters FCU','Houston Texas Fire Fighters FCU - Credit Cards','SECURITY_QUESTION'),(85,'IH Mississippi Valley CU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:23','2011-02-09 17:36:23',7812,6580,' http://www.ihmvcu.org/ASP/home.asp ',4224,'IH Mississippi Valley Credit Union','IH Mississippi Valley CU - Credit Card','MUTLI_LEVEL'),(86,'Indianapolis Colts',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:24','2011-02-09 17:36:24',10310,8180,'http://www.mbnanetaccess.com/',545,'MBNA','Indianapolis Colts',NULL),(87,'Indianapolis Colts',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:24','2011-02-09 17:36:24',12757,8180,'http://www.mbnanetaccess.com/',545,'MBNA','Indianapolis Colts',NULL),(88,'Iowa Postal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:25','2011-02-09 17:36:25',5873,5234,'http://www.iapcu.org/',3140,'Iowa Class Credit Union','Iowa Postal Credit Union - Credit Card',NULL),(89,'IR Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:25','2011-02-09 17:36:25',7833,6585,'http://www.irfcu.org/',4154,'IR Federal Credit Union','IR Federal Credit Union',NULL),(90,'IRS (WV) Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:25','2011-02-09 17:36:25',5389,4758,'http://www.irswvfcu.org/',2736,'IRS (WV) Federal Credit Union','IRS (WV) Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(91,'Jared Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:26','2011-02-09 17:36:26',15855,13328,'http://www.jared.com/webapp/wcs/stores/servlet/home%7C10451%7C10001%7C-1%7C',7560,'jared.com','Jared Credit Card',NULL),(92,'JetStream Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:28','2011-02-09 17:36:28',5075,4452,'https://www.jetstreamfcu.org/',2526,'FAA Credit Union','FAA Credit Union - Credit Card',NULL),(93,'Johns Hopkins FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:29','2011-02-09 17:36:29',8887,6681,'http://www.jhfcu.org/',4155,'The Johns Hopkins Federal Credit Union','Johns Hopkins FCU - Mortgage',NULL),(94,'JustBANKIt.com - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:30','2011-02-09 17:36:30',7845,8200,'http://www.arkansasonlinebank.com/',4020,'JustBANKIt.com','JustBANKIt.com','SECURITY_QUESTION'),(95,'Kansas Super Chief Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:31','2011-02-09 17:36:31',5333,4702,'http://www.kansascu.com/',4092,'Kansas Super Chief Credit Union','Kansas Super Chief Credit Union - Credit Cards','SECURITY_QUESTION'),(96,'Kemba CU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:32','2011-02-09 17:36:32',14912,8690,'http://www.kembacu.org/',3340,'Kemba Credit Union','Kemba CU',NULL),(97,'Le Mars Bank & Trust - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:36','2011-02-09 17:36:36',6001,5361,'http://www.lemarsbank.com/',3227,'Le Mars Bank & Trust','Le Mars Bank & Trust - Credit Card','SECURITY_QUESTION'),(98,'Levitz.com - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:36','2011-02-09 17:36:36',11169,8967,'http://www.levitz.com/',5510,'Levitz Furniture Company','Levitz.com - Credit Card',NULL),(99,'Los Angeles Times FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:39','2011-02-09 17:36:39',5362,4732,'http://www.latfcu.com/',2608,'Los Angeles Times FCU','Los Angeles Times FCU - Credit Cards','SECURITY_QUESTION'),(100,'Louisiana FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:39','2011-02-09 17:36:39',13951,11502,'http://www.louisianafcu.org/',6516,'Louisiana Federal Credit Union','Louisiana FCU - Credit Card','SECURITY_QUESTION'),(101,'MarionCommunity Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:41','2011-02-09 17:36:41',5440,4809,'http://www.marioncommunitycu.org/',2747,'MarionCommunity Credit Union','MarionCommunity Credit Union - Credit Cards','SECURITY_QUESTION'),(102,'Maumee Valley Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:42','2011-02-09 17:36:42',5442,4811,'http://development.computol.com/mvcu/Index.cfm',2822,'Maumee Valley Credit Union','Maumee Valley Credit Union - Credit Cards','SECURITY_QUESTION'),(103,'MBNA (Canada) Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:43','2011-02-09 17:36:43',12077,9866,'http://www.mbna.com',5871,'MBNA Canada Bank','MBNA (Canada) Credit Card','SECURITY_QUESTION'),(104,'MBNA - CFO Credits',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:43','2011-02-09 17:36:43',10968,8785,'https://www.usecfo.com/default.asp',545,'MBNA','MBNA - CFO Credits',NULL),(105,'Metro North Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:45','2011-02-09 17:36:45',9551,7457,'http://www.metronorthfcu.com',4704,'Metro North Federal Credit Union','Metro North Federal Credit Union - Credit Card','SECURITY_QUESTION'),(106,'Metropolitan Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:45','2011-02-09 17:36:45',10815,8296,'http://www.metrocreditunion.org/',5188,'Metropolitan Credit Union','Metropolitan Credit Union','SECURITY_QUESTION'),(107,'Mid-Kansas Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:46','2011-02-09 17:36:46',5310,4679,'http://www.mkcu.com/',2592,'Mid-Kansas Credit Union','Mid-Kansas Credit Union - Credit Cards','SECURITY_QUESTION'),(108,'MidWest Financial Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:46','2011-02-09 17:36:46',5127,4504,'http://www.midwestfinancial.org/index.cfm',2637,'MidWest Financial Credit Union','MidWest Financial Credit Union - Credit Card',NULL),(109,'Minnesota Building Trades FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:47','2011-02-09 17:36:47',5146,4523,'http://www.mbtfcu.com/ASP/home.asp',2645,'MBTFCU','Minnesota Building Trades FCU - Credit Card',NULL),(110,'Mon-Oc Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:49','2011-02-09 17:36:49',5400,4769,'http://www.monocfcu.com/home.html',2609,'Mon-Oc Federal Credit Union','Mon-Oc Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(111,'Monterey County Bank MasterCard',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:49','2011-02-09 17:36:49',12107,9895,'http://www.mcbbankcard.com/Index.aspx',5892,'Monterey County Bank','Monterey County Bank MasterCard - (BETA)',NULL),(112,'MyCardAccount for Providian National Bank',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:51','2011-02-09 17:36:51',10735,8594,'https://www.mycardaccount.com/icFoundation/frameset.asp?LOC=19',954,'Providian Financial','MyCardAccount for Providian National Bank',NULL),(113,'MYCCINFO.COM',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:51','2011-02-09 17:36:51',3591,3388,'https://www.myccinfo.com/',1705,'MYCCINFO.COM','MYCCINFO.COM','SECURITY_QUESTION'),(114,'National City - Visa Buxx',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:53','2011-02-09 17:36:53',4780,4179,'https://www.nc.visabuxx.com/index.cfm?',1550,'National City','National City - Visa Buxx',NULL),(115,'Navy MBNA MasterCard',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:55','2011-02-09 17:36:55',14583,12133,'https://www.ibsnetaccess.com/NASApp/NetAccess/LoginDisplay',6152,'FIA Card Services','Navy MBNA MasterCard',NULL),(116,'Neosho Savings & Loan Assn. F.A - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:56','2011-02-09 17:36:56',8023,8170,'http://www.neoshosavings.com/',4172,'Neosho Savings & Loan Association','Neosho Savings & Loan Assn. F.A',NULL),(117,'NetBank - Cardmember Services',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:56','2011-02-09 17:36:56',8915,6857,'http://www.netbank.com/',74,'ING DIRECT Bank','NetBank - Cardmember Services',NULL),(118,'New York & Company Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:36:58','2011-02-09 17:36:58',14809,12348,'http://www.nyandcompany.com/nyco/',7083,'NEW YORK & COMPANY','New York & Company Credit Card','SECURITY_QUESTION'),(119,'Northeast Family FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:00','2011-02-09 17:37:00',5342,4711,'http://www.nsefcu.org/index.html',2587,'Northeast Family FCU','Northeast Family FCU - Credit Cards','SECURITY_QUESTION'),(120,'Northeast Illinois Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:01','2011-02-09 17:37:01',5320,4689,'http://www.nicu1960.org/',2662,'Northeast Illinois Credit Union','Northeast Illinois Credit Union - Credit Cards','SECURITY_QUESTION'),(121,'Northern Trust - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:01','2011-02-09 17:37:01',11322,9130,'https://online.elancard.com/elanCard/RequestRouter?requestCmdId=ElanLogon&theme=elan2&loc=4971',527,'Northern Trust','Northern Trust - Credit Card',NULL),(122,'Northwestern Area Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:01','2011-02-09 17:37:01',5474,4842,'http://www.nwacu.com/',2814,'Northwestern Area Credit Union','Northwestern Area Credit Union - Credit Cards','SECURITY_QUESTION'),(123,'NSWC Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:02','2011-02-09 17:37:02',5292,4661,'http://www.nswcfcu.org/',2768,'NSWC FCU','NSWC Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(124,'Ocean Crest Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:03','2011-02-09 17:37:03',9576,7482,'http://www.lbsecu.org/',4716,'Ocean Crest Credit Union','Ocean Crest Credit Union - Credit Card','SECURITY_QUESTION'),(125,'OCHA Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:03','2011-02-09 17:37:03',5438,4807,'http://www.ochacu.org/',2801,'OCHA Credit Union','OCHA Credit Union - Credit Cards','SECURITY_QUESTION'),(126,'PayPal Plus - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:09','2011-02-09 17:37:09',15720,13201,'https://www.paypalplus.gemoney.com',1343,'GE','PayPal Plus - Credit Card',NULL),(127,'Pen Air Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:09','2011-02-09 17:37:09',8118,8182,'http://www.penair.org/',4182,'Pen Air Federal Credit Union','Pen Air Federal Credit Union','SECURITY_QUESTION'),(128,'People\'s United Bank (CT) - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:09','2011-02-09 17:37:09',4858,4246,'http://www.peoples.com/index.htm',2332,'Peoples Bank (CT)','People\'s United Bank (CT) - Credit Cards','SECURITY_QUESTION'),(129,'Pipefitters Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:11','2011-02-09 17:37:11',9574,7480,'http://www.pipefittersfcu.org/',4714,'Pipefitters Federal Credit Union ','Pipefitters Federal Credit Union - Credit Card','SECURITY_QUESTION'),(130,'Placer Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:12','2011-02-09 17:37:12',8139,8468,'http://www.placercu.org/',4186,'First U.S. Community Credit Union','Placer Credit Union','SECURITY_QUESTION'),(131,'Postal Community Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:13','2011-02-09 17:37:13',8149,1145,'http://www.bpoecu.org/dhtml/pages/splashNew.htm',2980,'First Priority Credit Union','First Priority Credit Union','SECURITY_QUESTION'),(132,'Presidents Choice Financial CreditCard (Canada)',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:14','2011-02-09 17:37:14',11314,9118,'http://www.pcfinancial.ca/index.html?referid=null',4421,'Presidents Choice Financial','Presidents Choice Financial CreditCard (Canada)','SECURITY_QUESTION'),(133,'Productivity Online Business Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:14','2011-02-09 17:37:14',15443,12967,'http://www.productivitycard.com/',5610,'General Electric Capital Corporation','Productivity Online Business Card',NULL),(134,'Rockland Trust - Business Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:20','2011-02-09 17:37:20',15592,13101,'http://www.rocklandtrust.com/index.aspx',4530,'Rockland Trust','Rockland Trust - Business Credit Card','SECURITY_QUESTION'),(135,'SAMS CLUB Discover - Business Credit Account',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:22','2011-02-09 17:37:22',11879,9673,'http://www.samsclub.com/sams/homepage.jsp',5757,'GE Money Bank','SAMS CLUB Discover - Business Credit Account',NULL),(136,'Seamans.com - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:26','2011-02-09 17:37:26',11163,8961,'http://www.seamans.com/',5534,'1-800-Batteries','Seamans.com - Credit Card',NULL),(137,'Seattle Metropolitan Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:26','2011-02-09 17:37:26',10182,8029,'http://www.smcu.com/',5085,'Seattle Metropolitan Credit Union','Seattle Metropolitan Credit Union - Credit Card','SECURITY_QUESTION'),(138,'Security Service FCU Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:26','2011-02-09 17:37:26',4511,3933,'http://www.ssfcu.org/',2114,'Security Service Fed Credit Union','Security Service FCU Credit Card',NULL),(139,'Sheet Metal Worker FCU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:27','2011-02-09 17:37:27',5079,4457,'http://www.smwfcu.com/',2545,'Sheet Metal Worker FCU','Sheet Metal Worker FCU - Credit Card',NULL),(140,'Shell Credit Card (Shell Fleet Account)',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:27','2011-02-09 17:37:27',10461,8335,'https://www.citibank.com/us/cards/shell/index.jsp',3158,'Shell Credit Card','The Shell Credit Card (Shell Fleet Account)',NULL),(141,'Signature Bank of Arkansas - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:28','2011-02-09 17:37:28',13480,11018,'http://www.sbofa.com/',3055,'Signature Bank','Signature Bank of Arkansas - Credit Card (BETA)',NULL),(142,'Six Rivers Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:28','2011-02-09 17:37:28',5979,5339,'http://www.sixrivers.com/srnb.html',3218,'North Valley Bancorp','Six Rivers Bank - Credit Card','SECURITY_QUESTION'),(143,'Spokane Teachers Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:31','2011-02-09 17:37:31',4675,3708,'https://netteller.stcu.org',1977,'Spokane Teachers Credit Union','Spokane Teachers Credit Union',NULL),(144,'St. Josephs Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:32','2011-02-09 17:37:32',9565,7471,'http://www.stjosephfcu.org',4710,'St. Josephs Federal Credit Union','St. Josephs Federal Credit Union - Credit Card','SECURITY_QUESTION'),(145,'Standard Chartered Bank (India) - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:32','2011-02-09 17:37:32',11430,9234,'http://www.standardchartered.com/in/',5592,'Standard Chartered Bank','Standard Chartered Bank (India) - Credit Cards',NULL),(146,'Standard Federal Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:32','2011-02-09 17:37:32',5657,5022,'http://www.standardfederalbank.com/',1537,'ABN AMRO','Standard Federal Bank - Credit Card',NULL),(147,'State Bank & Trust - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:33','2011-02-09 17:37:33',5980,5340,'http://www.state-bank.com/',3219,'State Bank & Trust','State Bank & Trust - Credit Card','SECURITY_QUESTION'),(148,'State Bank of India (India) - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:34','2011-02-09 17:37:34',12220,10003,'https://www.onlinesbi.com/',5595,'State Bank of India','State Bank of India (India) - Credit Card',NULL),(149,'Synergy Federal Savings Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:37','2011-02-09 17:37:37',8291,8147,'http://www.synergyfsb.com/',4207,'Synergy Federal Savings Bank','Synergy Federal Savings Bank',NULL),(150,'Teachers Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:38','2011-02-09 17:37:38',5521,4882,'https://www.cardmemberservices.net/',2489,'Teachers Credit Union','Teachers Credit Union - Credit Card',NULL),(151,'Telephone Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:39','2011-02-09 17:37:39',5295,4664,'http://www.telephonecreditunion.com/',2811,'Telephone Credit Union','Telephone Credit Union - Credit Cards','SECURITY_QUESTION'),(152,'Temple Area Federal Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:40','2011-02-09 17:37:40',5927,5287,'http://www.tafcu.org/',3168,'Temple Area Federal Credit Union','Temple Area Federal Credit Union - Credit Card',NULL),(153,'Tennessee Members First FCU - Credit Card(aka Oak)',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:40','2011-02-09 17:37:40',5130,4507,'http://www.orfcu.org/index.php3',2639,'Oak Ridge Federal Credit Union','Oak Ridge Federal Credit Union - Credit Card',NULL),(154,'Texaco Houston Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:40','2011-02-09 17:37:40',5923,5283,'http://www.texacohcu.com/',3164,'Texaco Houston Credit Union','Texaco Houston Credit Union - Credit Card',NULL),(155,'Texas Crossroads FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:41','2011-02-09 17:37:41',5293,4662,'http://www.texascrossroadsfcu.org/ASP/home.asp',2774,'Texas Crossroads FCU','Texas Crossroads FCU - Credit Cards','SECURITY_QUESTION'),(156,'THE BANK Oldham County - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:42','2011-02-09 17:37:42',8311,3527,'http://www.thebankoc.com/',1825,'BANK - Oldham County','BANK - Oldham County','SECURITY_QUESTION'),(157,'Tioga State Bank - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:43','2011-02-09 17:37:43',5373,4742,'http://www.tiogabank.com/',1727,'Tioga State Bank','Tioga State Bank - Credit Cards','SECURITY_QUESTION'),(158,'Toledo Area Community Credit Union Visa',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:43','2011-02-09 17:37:43',4990,4367,'http://www.cathcu.org/start/cu.htm',2424,'Toledo Area Community Credit Union','Toledo Area Community Credit Union Visa','SECURITY_QUESTION'),(159,'Trumark Financial CU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:45','2011-02-09 17:37:45',15845,11792,'https://www.trumarkonline.org/',6786,'Trumark Financial Credit Union ','Trumark Financial Credit Union - Bank','SECURITY_QUESTION'),(160,'UARK Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:47','2011-02-09 17:37:47',5329,4698,'http://www.uarkfcu.com/online.htm',2582,'UARK','UARK Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(161,'US Airways Business Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:55','2011-02-09 17:37:55',15332,12851,'https://www.usairwaysbizcard.com/businesscard/Login.do?promoCode=USAirways',107,'US Airways','US Airways Business Card','SECURITY_QUESTION'),(162,'USE Federal Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:56','2011-02-09 17:37:56',5311,4680,'http://www.usefcu.com/',2598,'USE Federal Credit Union','USE Federal Credit Union - Credit Cards','SECURITY_QUESTION'),(163,'Visterra CU (Aka March Community CU) - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:58','2011-02-09 17:37:58',5118,4495,'https://www.visterracu.org/',2633,'March Community Credit Union','Visterra CU (Aka March Community CU) - Credit Card',NULL),(164,'Vought Heritage Community CU - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:37:59','2011-02-09 17:37:59',5933,5292,'http://www.vhfcu.org/',3171,'VHCCU','Vought Heritage Community CU - Credit Card',NULL),(165,'Wauwatosa Credit Union - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:00','2011-02-09 17:38:00',9556,7462,'http://www.tosacu.org',4614,'Wauwatosa Credit Union','Wauwatosa Credit Union - Credit Card','SECURITY_QUESTION'),(166,'West Coast Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:02','2011-02-09 17:38:02',8454,6702,'http://www.wcb.com/',4137,'West Coast Bank','West Coast Bank','SECURITY_QUESTION'),(167,'Wichita Falls Teachers FCU- CC',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:04','2011-02-09 17:38:04',11976,9766,'https://www22.quik.com/wftfcu/home.htm',5818,'Wichita Falls Teachers Federal Credit Union','Wichita Falls Teachers FCU- CC',NULL),(168,'Wilkes-Barre VA Employees FCU - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:04','2011-02-09 17:38:04',5377,4746,'http://www.wilkesbarrevaefcu.org/',2620,'Wilkes-Barre VA Employees FCU','Wilkes-Barre VA Employees FCU - Credit Cards','SECURITY_QUESTION'),(169,'Wisconsin Community Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:04','2011-02-09 17:38:04',8470,6705,'http://www.wisconsincommunity.com/',4219,'Wisconsin Community Bank','Wisconsin Community Bank','SECURITY_QUESTION'),(170,'Woodgrove Bank - Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:05','2011-02-09 17:38:05',11329,8949,'https://MoneyOFX.moonport.com/Isapi2k/bank2k.dll',5481,'Woodgrove Bank','Woodgrove Bank',NULL),(171,'Worcester Credit Union - Credit Cards',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:05','2011-02-09 17:38:05',5402,4771,'http://www.worcestercu.com/',2682,'Worcester Credit Union','Worcester Credit Union - Credit Cards','SECURITY_QUESTION'),(172,'Yahoo! Visa',NULL,NULL,NULL,NULL,NULL,NULL,'2011-02-09 17:38:07','2011-02-09 17:38:07',1419,1407,'https://www.chase.com/index.jsp?pg_name=ccpmapp/card_servicing/partner/page/home_Yahoo',1247,'Yahoo!','Yahoo!',NULL);
/*!40000 ALTER TABLE `credit_card_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_type_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yodlee_card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_balance_amount` decimal(30,2) DEFAULT NULL,
  `current_balance_currency_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `refresh_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_last_updated_at` datetime DEFAULT NULL,
  `user_action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_action_code` int(11) DEFAULT NULL,
  `import_job_id` int(11) DEFAULT NULL,
  `last_imported_at` datetime DEFAULT NULL,
  `refresh_attempt_at` datetime DEFAULT NULL,
  `refresh_status_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `min_accountable_unit` float DEFAULT NULL,
  `symbol` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_code_index` (`code`),
  KEY `index_currencies_on_enabled_flag` (`enabled_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','United States of America, Dollars',NULL,'$',1),(2,'AFN','Afghanistan, Afghanis',NULL,'؋',NULL),(3,'ALL','Albania, Leke',NULL,'Lek',NULL),(4,'AMD','Armenia, Drams',NULL,NULL,NULL),(5,'ANG','Netherlands Antilles, Guilders (also called Florins)',NULL,'ƒ',NULL),(6,'AOA','Angola, Kwanza',NULL,NULL,NULL),(7,'ARS','Argentina, Pesos',NULL,'$',NULL),(8,'AUD','Australia, Dollars',NULL,'$',NULL),(9,'AWG','Aruba, Guilders (also called Florins)',NULL,'ƒ',NULL),(10,'AZM','Azerbaijan, Manats [being phased out]',NULL,NULL,NULL),(11,'AZN','Azerbaijan, New Manats',NULL,'ман',NULL),(12,'BAM','Bosnia and Herzegovina, Convertible Marka',NULL,'KM',NULL),(13,'BBD','Barbados, Dollars',NULL,'$',NULL),(14,'BDT','Bangladesh, Taka',NULL,NULL,NULL),(15,'BGN','Bulgaria, Leva',NULL,'лв',NULL),(16,'BHD','Bahrain, Dinars',NULL,NULL,NULL),(17,'BIF','Burundi, Francs',NULL,NULL,NULL),(18,'BMD','Bermuda, Dollars',NULL,'$',NULL),(19,'BND','Brunei Darussalam, Dollars',NULL,'$',NULL),(20,'BOB','Bolivia, Bolivianos',NULL,'$b',NULL),(21,'BRL','Brazil, Brazil Real',NULL,'R$',NULL),(22,'BSD','Bahamas, Dollars',NULL,'$',NULL),(23,'BTN','Bhutan, Ngultrum',NULL,NULL,NULL),(24,'BWP','Botswana, Pulas',NULL,'P',NULL),(25,'BYR','Belarus, Rubles',NULL,'p.',NULL),(26,'BZD','Belize, Dollars',NULL,'BZ$',NULL),(27,'CAD','Canada, Dollars',NULL,'$',NULL),(28,'CDF','Congo/Kinshasa, Congolese Francs',NULL,NULL,NULL),(29,'CHF','Switzerland, Francs',NULL,'CHF',NULL),(30,'CLP','Chile, Pesos',NULL,'$',NULL),(31,'CNY','China, Yuan Renminbi',NULL,'¥',NULL),(32,'COP','Colombia, Pesos',NULL,'$',NULL),(33,'CRC','Costa Rica, Colones',NULL,'₡',NULL),(34,'CUP','Cuba, Pesos',NULL,'₱',NULL),(35,'CVE','Cape Verde, Escudos',NULL,NULL,NULL),(36,'CYP','Cyprus, Pounds',NULL,NULL,NULL),(37,'CZK','Czech Republic, Koruny',NULL,'Kč',NULL),(38,'DJF','Djibouti, Francs',NULL,NULL,NULL),(39,'DKK','Denmark, Kroner',NULL,'kr',NULL),(40,'DOP','Dominican Republic, Pesos',NULL,'RD$',NULL),(41,'DZD','Algeria, Algeria Dinars',NULL,NULL,NULL),(42,'EEK','Estonia, Krooni',NULL,'kr',NULL),(43,'EGP','Egypt, Pounds',NULL,'£',NULL),(44,'ERN','Eritrea, Nakfa',NULL,NULL,NULL),(45,'ETB','Ethiopia, Birr',NULL,NULL,NULL),(46,'EUR','Euro Member Countries, Euro',NULL,'€',NULL),(47,'FJD','Fiji, Dollars',NULL,'$',NULL),(48,'FKP','Falkland Islands (Malvinas), Pounds',NULL,'£',NULL),(49,'GBP','United Kingdom, Pounds',NULL,'£',NULL),(50,'GEL','Georgia, Lari',NULL,NULL,NULL),(51,'GGP','Guernsey, Pounds',NULL,'£',NULL),(52,'GHC','Ghana, Cedis',NULL,'¢',NULL),(53,'GIP','Gibraltar, Pounds',NULL,'£',NULL),(54,'GMD','Gambia, Dalasi',NULL,NULL,NULL),(55,'GNF','Guinea, Francs',NULL,NULL,NULL),(56,'GTQ','Guatemala, Quetzales',NULL,'Q',NULL),(57,'GYD','Guyana, Dollars',NULL,'$',NULL),(58,'HKD','Hong Kong, Dollars',NULL,'$',NULL),(59,'HNL','Honduras, Lempiras',NULL,'L',NULL),(60,'HRK','Croatia, Kuna',NULL,'kn',NULL),(61,'HTG','Haiti, Gourdes',NULL,NULL,NULL),(62,'HUF','Hungary, Forint',NULL,'Ft',NULL),(63,'IDR','Indonesia, Rupiahs',NULL,'Rp',NULL),(64,'ILS','Israel, New Shekels',NULL,'₪',NULL),(65,'IMP','Isle of Man, Pounds',NULL,'£',NULL),(66,'INR','India, Rupees',NULL,'₨',NULL),(67,'IQD','Iraq, Dinars',NULL,NULL,NULL),(68,'IRR','Iran, Rials',NULL,'﷼',NULL),(69,'ISK','Iceland, Kronur',NULL,'kr',NULL),(70,'JEP','Jersey, Pounds',NULL,'£',NULL),(71,'JMD','Jamaica, Dollars',NULL,'J$',NULL),(72,'JOD','Jordan, Dinars',NULL,NULL,NULL),(73,'JPY','Japan, Yen',NULL,'¥',NULL),(74,'KES','Kenya, Shillings',NULL,NULL,NULL),(75,'KGS','Kyrgyzstan, Soms',NULL,'лв',NULL),(76,'KHR','Cambodia, Riels',NULL,'៛',NULL),(77,'KMF','Comoros, Francs',NULL,NULL,NULL),(78,'KPW','Korea (North), Won',NULL,'₩',NULL),(79,'KRW','Korea (South), Won',NULL,'₩',NULL),(80,'KWD','Kuwait, Dinars',NULL,NULL,NULL),(81,'KYD','Cayman Islands, Dollars',NULL,'$',NULL),(82,'KZT','Kazakhstan, Tenge',NULL,'лв',NULL),(83,'LAK','Laos, Kips',NULL,'₭',NULL),(84,'LBP','Lebanon, Pounds',NULL,'£',NULL),(85,'LKR','Sri Lanka, Rupees',NULL,'₨',NULL),(86,'LRD','Liberia, Dollars',NULL,'$',NULL),(87,'LSL','Lesotho, Maloti',NULL,NULL,NULL),(88,'LTL','Lithuania, Litai',NULL,'Lt',NULL),(89,'LVL','Latvia, Lati',NULL,'Ls',NULL),(90,'LYD','Libya, Dinars',NULL,NULL,NULL),(91,'MAD','Morocco, Dirhams',NULL,NULL,NULL),(92,'MDL','Moldova, Lei',NULL,NULL,NULL),(93,'MGA','Madagascar, Ariary',NULL,NULL,NULL),(94,'MKD','Macedonia, Denars',NULL,'ден',NULL),(95,'MMK','Myanmar (Burma), Kyats',NULL,NULL,NULL),(96,'MNT','Mongolia, Tugriks',NULL,'₮',NULL),(97,'MOP','Macau, Patacas',NULL,NULL,NULL),(98,'MRO','Mauritania, Ouguiyas',NULL,NULL,NULL),(99,'MTL','Malta, Liri',NULL,NULL,NULL),(100,'MUR','Mauritius, Rupees',NULL,'₨',NULL),(101,'MVR','Maldives (Maldive Islands), Rufiyaa',NULL,NULL,NULL),(102,'MWK','Malawi, Kwachas',NULL,NULL,NULL),(103,'MXN','Mexico, Pesos',NULL,'$',NULL),(104,'MYR','Malaysia, Ringgits',NULL,'RM',NULL),(105,'MZM','Mozambique, Meticais [being phased out]',NULL,NULL,NULL),(106,'MZN','Mozambique, Meticais [newer unit, same name]',NULL,'MT',NULL),(107,'NAD','Namibia, Dollars',NULL,'$',NULL),(108,'NGN','Nigeria, Nairas',NULL,'₦',NULL),(109,'NIO','Nicaragua, Cordobas',NULL,'C$',NULL),(110,'NOK','Norway, Krone',NULL,'kr',NULL),(111,'NPR','Nepal, Nepal Rupees',NULL,'₨',NULL),(112,'NZD','New Zealand, Dollars',NULL,'$',NULL),(113,'OMR','Oman, Rials',NULL,'﷼',NULL),(114,'PAB','Panama, Balboa',NULL,'B/.',NULL),(115,'PEN','Peru, Nuevos Soles',NULL,'S/.',NULL),(116,'PGK','Papua New Guinea, Kina',NULL,NULL,NULL),(117,'PHP','Philippines, Pesos',NULL,'Php',NULL),(118,'PKR','Pakistan, Rupees',NULL,'₨',NULL),(119,'PLN','Poland, Zlotych',NULL,'zł',NULL),(120,'PYG','Paraguay, Guarani',NULL,'Gs',NULL),(121,'QAR','Qatar, Rials',NULL,'﷼',NULL),(122,'ROL','Romania, Lei [being phased out]',NULL,NULL,NULL),(123,'RON','Romania, New Lei',NULL,'lei',NULL),(124,'RSD','Serbia, Dinars',NULL,'Дин.',NULL),(125,'RUB','Russia, Rubles',NULL,'руб',NULL),(126,'RWF','Rwanda, Rwanda Francs',NULL,NULL,NULL),(127,'SAR','Saudi Arabia, Riyals',NULL,'﷼',NULL),(128,'SBD','Solomon Islands, Dollars',NULL,'$',NULL),(129,'SCR','Seychelles, Rupees',NULL,'₨',NULL),(130,'SDD','Sudan, Dinars',NULL,NULL,NULL),(131,'SEK','Sweden, Kronor',NULL,'kr',NULL),(132,'SGD','Singapore, Dollars',NULL,'$',NULL),(133,'SHP','Saint Helena, Pounds',NULL,'£',NULL),(134,'SIT','Slovenia, Tolars',NULL,NULL,NULL),(135,'SKK','Slovakia, Koruny',NULL,NULL,NULL),(136,'SLL','Sierra Leone, Leones',NULL,NULL,NULL),(137,'SOS','Somalia, Shillings',NULL,'S',NULL),(138,'SPL','Seborga, Luigini',NULL,NULL,NULL),(139,'SRD','Suriname, Dollars',NULL,'$',NULL),(140,'STD','São Tome and Principe, Dobras',NULL,NULL,NULL),(141,'SVC','El Salvador, Colones',NULL,'$',NULL),(142,'SYP','Syria, Pounds',NULL,'£',NULL),(143,'SZL','Swaziland, Emalangeni',NULL,NULL,NULL),(144,'THB','Thailand, Baht',NULL,'฿',NULL),(145,'TJS','Tajikistan, Somoni',NULL,NULL,NULL),(146,'TMM','Turkmenistan, Manats',NULL,NULL,NULL),(147,'TND','Tunisia, Dinars',NULL,NULL,NULL),(148,'TOP','Tonga, Pa\'anga',NULL,NULL,NULL),(149,'TRY','Turkey, New Lira',NULL,'TL',NULL),(150,'TTD','Trinidad and Tobago, Dollars',NULL,'TT$',NULL),(151,'TVD','Tuvalu, Tuvalu Dollars',NULL,'$',NULL),(152,'TWD','Taiwan, New Dollars',NULL,'NT$',NULL),(153,'TZS','Tanzania, Shillings',NULL,NULL,NULL),(154,'UAH','Ukraine, Hryvnia',NULL,'₴',NULL),(155,'UGX','Uganda, Shillings',NULL,NULL,NULL),(156,'AED','United Arab Emirates, Dirhams',NULL,NULL,NULL),(157,'UYU','Uruguay, Pesos',NULL,'$U',NULL),(158,'UZS','Uzbekistan, Sums',NULL,'лв',NULL),(159,'VEB','Venezuela, Bolivares',NULL,NULL,NULL),(160,'VND','Viet Nam, Dong',NULL,'₫',NULL),(161,'VUV','Vanuatu, Vatu',NULL,NULL,NULL),(162,'WST','Samoa, Tala',NULL,NULL,NULL),(163,'XAF','Communauté Financière Africaine BEAC, Francs',NULL,NULL,NULL),(164,'XAG','Silver, Ounces',NULL,NULL,NULL),(165,'XAU','Gold, Ounces',NULL,NULL,NULL),(166,'XCD','East Caribbean Dollars',NULL,'$',NULL),(167,'XDR','International Monetary Fund (IMF) Special Drawing Rights',NULL,NULL,NULL),(168,'XOF','Communauté Financière Africaine BCEAO, Francs',NULL,NULL,NULL),(169,'XPD','Palladium Ounces',NULL,NULL,NULL),(170,'XPF','Comptoirs Français du Pacifique Francs',NULL,NULL,NULL),(171,'XPT','Platinum, Ounces',NULL,NULL,NULL),(172,'YER','Yemen, Rials',NULL,'﷼',NULL),(173,'ZAR','South Africa, Rand',NULL,'R',NULL),(174,'ZMK','Zambia, Kwacha',NULL,NULL,NULL),(175,'ZWN','Zimbabwe, Zimbabwe Dollars',NULL,NULL,NULL),(176,'VEF','Venezuela, Bolivar Fuertes',NULL,'Bs',0);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_paid_amounts`
--

DROP TABLE IF EXISTS `current_paid_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_paid_amounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_line_id` int(11) NOT NULL,
  `order_line_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` decimal(30,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_paid_amounts`
--

LOCK TABLES `current_paid_amounts` WRITE;
/*!40000 ALTER TABLE `current_paid_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_paid_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_attributes`
--

DROP TABLE IF EXISTS `custom_field_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `col_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prompt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaults_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `required_for_approval` tinyint(1) DEFAULT NULL,
  `editable` tinyint(1) DEFAULT NULL,
  `supplier_viewable` tinyint(1) DEFAULT NULL,
  `supplier_editable` tinyint(1) DEFAULT NULL,
  `api_editable` tinyint(1) DEFAULT NULL,
  `allow_blank` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `min_value` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `causes_revision` tinyint(1) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT '0',
  `dependent_id` int(11) DEFAULT NULL,
  `show_in_catalog` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_custom_field_attributes_on_model` (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_attributes`
--

LOCK TABLES `custom_field_attributes` WRITE;
/*!40000 ALTER TABLE `custom_field_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_1_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_2_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_3_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_4_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_5_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_6_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_7_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_8_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_9_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_10_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_model` (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_sources`
--

DROP TABLE IF EXISTS `data_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_for` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `owner_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `error_text` text COLLATE utf8_unicode_ci,
  `parameters` text COLLATE utf8_unicode_ci,
  `file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result_text` text COLLATE utf8_unicode_ci,
  `progress` int(11) DEFAULT NULL,
  `job_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_data_sources_on_created_by` (`created_by`),
  KEY `index_data_sources_on_owner_id` (`owner_id`),
  KEY `index_data_sources_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_sources`
--

LOCK TABLES `data_sources` WRITE;
/*!40000 ALTER TABLE `data_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_table_views`
--

DROP TABLE IF EXISTS `data_table_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_table_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_table_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `table_columns` text COLLATE utf8_unicode_ci,
  `options` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `based_on_filter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_data_table_views_on_created_by` (`created_by`),
  KEY `index_data_table_views_on_data_table_id` (`data_table_id`),
  KEY `index_data_table_views_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_table_views`
--

LOCK TABLES `data_table_views` WRITE;
/*!40000 ALTER TABLE `data_table_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_table_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_tables`
--

DROP TABLE IF EXISTS `data_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_columns` text COLLATE utf8_unicode_ci,
  `options` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_data_tables_on_model_id` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tables`
--

LOCK TABLES `data_tables` WRITE;
/*!40000 ALTER TABLE `data_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_departments_on_created_by` (`created_by`),
  KEY `index_departments_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `did_you_knows`
--

DROP TABLE IF EXISTS `did_you_knows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `did_you_knows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `did_you_knows`
--

LOCK TABLES `did_you_knows` WRITE;
/*!40000 ALTER TABLE `did_you_knows` DISABLE KEYS */;
INSERT INTO `did_you_knows` VALUES (1,'<p>We\'ve looked at scores of actual customers and how they\'ve configured their Coupa system. From them, we\'ve created best practices that are built directly into Coupa\'s Quickstart.</p><p>Every customer is different, but the quickest setup was completed in under 10 minutes!</p>','2009-01-05 23:09:47','2009-01-06 01:53:53','/steps/step:home',NULL,NULL),(2,'<p>If our live chat is closed, you can always click on the \"Closed\" sign to file a help ticket with our super Support team.  They\'ll get back to you quickly!</p>','2009-01-05 23:15:50','2009-01-06 01:54:10','/steps/step:company_info',NULL,NULL),(3,'<p>Your company address is where you\'ll typically want goods shipped. Each of your employees can use that company address or have one of their own.</p><p>If you need multiple company addresses, no problem.  You can add as many as you need outside of Coupa Quickstart.  All configurations are made available in the Setup tab outside of Quickstart.</p>','2009-01-05 23:17:22','2009-01-06 01:54:13','/steps/step:company_info/stations/station:basic_info',NULL,NULL),(4,'<p>Maximum size for the on-screen logo is 240 X 33 pixels.</p><p>If your logo is too big, we\'ll scale your image size down.</p><p>Keep in mind that your logos will be placed on a white background.</p>','2009-01-05 23:20:31','2009-01-06 01:54:16','/steps/step:company_info/stations/station:logo',NULL,NULL),(5,'<p>Coupa has full support for multiple currencies, including setting exchange rates. If a user submits a request in US Dollars and the approver prefers Euros, the approver will see the total in Euros.<p><p>Our pre-seeded commodity list takes the most popular and complete category list across Coupa\'s customer base.</p>','2009-01-05 23:22:18','2009-01-06 01:54:17','/steps/step:company_info/stations/station:other_settings',NULL,NULL),(6,'<p>At the end of each section, you\'ll see a review page.  If any step is marked incomplete, you\'ll want to complete it before you try to create purchase orders!</p>','2009-01-05 23:25:10','2009-01-06 01:54:19','/steps/step:company_info/stations/station:review',NULL,NULL),(7,'<p>Our largest customer has over 5000 users.</p><p>Each person who needs to create purchase and approve requests needs to have an account.  You\'ll also want accounts for all the purchasing, finance and administrative users of the system.</p>','2009-01-05 23:28:44','2009-01-06 01:54:20','/steps/step:users',NULL,NULL),(8,'<p>In Coupa you can inactivate accounts when a person leaves the company.  This prevents the employee from logging in, and preserves all order history.</p><p>Our experienced customers can also take advantage of our bulk loader to create new users and update existing users. It\'s more powerful, but we recommend getting comfortable with all the required and optional fields first.</p>','2009-01-05 23:29:56','2009-01-06 01:54:22','/steps/step:users/stations/station:users',NULL,NULL),(9,'<p>With Coupa, customers have seen a 90+% reduction in the approval cycle time.</p><p>Approvers are notified via email when they need to review a request. They can approve or reject directly from email or log into the Coupa application to decide. The approval history is tracked on every request and you can see who approved it and the exact time.</p><p>Most companies don\'t put someone from purchasing in the approval path.  If the purchasing departments wants to review purchase orders before they go out, they can set the buyer hold flag which is explained later in Quickstart.</p><p>Similarly for expense reports, once an expense report is approved by the appropriate manager(s), it goes to the Finance team for review and audit of the receipts. There is no need to include Finance in the management approval path.</p>','2009-01-05 23:36:37','2009-01-20 21:55:29','/steps/step:users/stations/station:learn_about_approvals',NULL,NULL),(10,'<p>Many companies set a user\'s approval limit according to his or her level in the company. For instance, managers may have no approval authority, directors may have $500 while VP\'s have $10,000.<p></p>If an employee goes on vacation, he or she can set a delegate approver for that period. Individual users can set their delegate in the main application in their My Account section.</p><p>If User Jane reports to User Tim AND User Tim reports to User Jane, then you have a circular approval path which is not allowed. You will receive an error message that \"Approver will result in a cyclic approval chain\".</p>','2009-01-05 23:46:44','2009-01-20 21:56:43','/steps/step:users/stations/station:approval_rules',NULL,NULL),(11,'<p>When requisitions or expense reports go to the Ultimate Approver often, it probably means that you have a gap in your management hierarchy.</p><p>You may want to check out Approval Chains in the Learn More section. These chains allow you to create approval rules for special situations, in addition to your management hierarchy.</p>','2009-01-05 23:48:11','2009-01-06 01:54:28','/steps/step:users/stations/station:ultimate_approver',NULL,NULL),(12,'<p>Practically everything you do in Quickstart can be adjusted later on.</p><p>If any of the steps are marked as incomplete, you have some more work to do!</p>','2009-01-05 23:49:16','2009-01-20 21:57:47','/steps/step:users/stations/station:review',NULL,NULL),(13,'<p>No companies like when they go over budget and Coupa lets you have real-time tracking of spend against budgets.</p><p>You can use Coupa\'s full set of APIs and spreadsheet downloaders to effectively integrate your Coupa and financial systems.  Most Coupa customers use Coupa from purchase request all the way through capturing and approving an invoice.  Then their payables system sends out the check to the vendor.</p>','2009-01-05 23:50:00','2009-01-20 20:13:27','/steps/step:finances',NULL,NULL),(14,'<p>Supplier payment terms take precedence over the default payment term.  So, if Supplier ABC has a term of Net 15 and your default term is Net 30, then all POs for Supplier ABC will have a term of Net 15.</p><p>The supplier will only see the Code, not the Days for Net Payment, Days for Discount and Discount Rate. Those other fields are informational. If you have a 3-tiered payment term (e.g., 3/10 2/20 Net 30), just enter in the Code.</p><p>Using appropriate payment terms is effective cash management strategy.</p>','2009-01-05 23:51:12','2009-01-06 01:54:33','/steps/step:finances/stations/station:payment_terms',NULL,NULL),(15,'<p>FOB is a common shipping term that stands for Free on Board or Freight on Board.</p><p>Other common terms of our customers include particular carriers (e.g., Fedex, UPS), 2-day, overnight, and ground.</p><p>North America tends to have different meanings for their shipping terms than the rest of the world.</p>','2009-01-05 23:52:02','2009-01-20 19:49:32','/steps/step:finances/stations/station:shipping_terms',NULL,NULL),(16,'<p>Suppliers may need to get in touch with someone about an order they\'ve received.  Both the billing contact and the requisitioner\'s info are displayed on the order.</p><p>Streamlining the communication between you and your supply base can be a big time and cost savings!</p>','2009-01-05 23:53:05','2009-01-06 01:54:37','/steps/step:finances/stations/station:billing_info',NULL,NULL),(17,'<p>Coupa has a very flexible Chart of Accounts structure.  You can have anywhere from 1 segment to 20 segments.  The largest structure that we\'ve seen from our Coupa customers is 8 segments.</p><p>Your company may have multiple charts of accounts for financial and reporting reasons.  No problem!  Coupa fully supports multiple charts of accounts.  If you need more than one, click the Live Chat to talk to a Coupa Expert on the best way to setup the additional charts of accounts.</p>','2009-01-05 23:57:18','2009-01-06 01:54:39','/steps/step:finances/stations/station:accounts',NULL,NULL),(18,'<p>Suppliers can make your life easier by logging into Coupa and creating invoices directly in your system, instead of mailing or faxing their invoices.  You can find out about this feature in the Learn More section or chatting with a Coupa Expert.</p>','2009-01-06 00:01:29','2009-01-06 01:54:40','/steps/step:finances/stations/station:review',NULL,NULL),(19,'<p>Your supplier list can grow as you use the system.  Even your employees can request a new supplier directly in Coupa.  If the new supplier isn\'t in the system, they\'ll be asked to fill out a new supplier request form.</p><p>Purchasing department review is required for all new supplier requests which prevents orders from going out to unauthorized suppliers. You can also turn this review off, if you choose.</p>','2009-01-06 00:02:25','2009-01-06 01:54:41','/steps/step:suppliers',NULL,NULL),(20,'<p>Most customers tend to only load their active suppliers. While definitions vary, most define active as the ones that they have used in the last year.</p><p>Some companies, including ourselves, use Coupa for expense reporting too. It\'s a nice way to capture employee purchasing and T&E.</p>','2009-01-06 00:03:26','2009-01-20 19:55:21','/steps/step:suppliers/stations/station:list',NULL,NULL),(21,'<p>The Coupa community help desk system at <a href=\"http://support.coupa.com/\">http://support.coupa.com</a> is a great resource for the latest tips and tricks, knowledge exchange with other customers and pitching your favorite feature request.</p><p>In our latest customer survey, receiving and invoicing are becoming very popular. With the introduction of Coupa Budgeting in mid-2008, companies can easily establish and track spend across budgets. And budget owners can see their available budget right on their Coupa homepage.</p><p>Please note that certain features are available only in particular subscription packages. Consult your Coupa account manager for more info.</p>','2009-01-06 00:04:26','2009-01-20 19:59:33','/steps/step:learn_more',NULL,NULL),(22,'<p>Coupa is designed with best-in-class usability, but remember that your employees will be logging into a new system. Make them feel comfortable by letting them know how to ask questions and get the help they need.</p><p>If your employees are satisfied, they will put all their requests into the system and your company will see big cost and efficiency benefits.</p>','2009-01-06 00:05:34','2009-01-06 01:54:53','/steps/step:final_review',NULL,NULL),(23,'<p>Sample way to enter in 3-segment accounts. The 1st one has a nickname, while the 2nd one does not:<ul><li>200-750-IT Equipment, Finance IT Equipment</li><li>200-800-Paper</li>\n</ul></p>\n<p>When submitting a purchase request, your employees can charge the whole order to a particular account or set a different charge account on each request line.</p>\n<p>For expense reports, each line of the expense report is set to a particular account. You can setup defaulting rules that make it so your employees do not have to pick the particular account, and it is entirely set based on the user and expense category. To learn more about defaulting rules, <a href=\"http://support.coupa.com/forums/24448/entries\">click here</a>.</p>\n<p>Employees can set a default account, or favorite account, in their My Account section of the Coupa application.</p>','2009-01-06 04:50:55','2009-01-20 19:54:05','/steps/step:finances/stations/station:accounts/continuations/continuation:accounts',NULL,NULL),(24,'<p>When submitting a purchase request, your employees can charge the whole order to a particular account or set a different charge account on each request line.</p><p>Employees can set a default account, or favorite account, in their My Account section of the Coupa application.</p>','2009-01-06 04:52:40','2009-01-06 04:52:40','/steps/step:finances/stations/station:accounts/continuations/continuation:accounts/branch/branch:accounts',NULL,NULL),(25,'<p>You can completely customize the look and feel of your purchase order with only basic HTML knowledge.  Of course, you\'ll start with our standard template and decide if you would like to change it.</p> <p>We encourage our customers to share their customized purchase order templates with others in our Coupa customer community.</p><p>Coupa supports both Windows and Macintosh users. All you need is an Internet Explorer or Firefox web browser.</p>','2009-01-06 04:56:27','2009-01-06 04:56:27','/steps/step:finances/stations/station:billing_info/continuations/continuation:billing_info',NULL,NULL),(26,'<p>Once a currency is in use, it cannot be deactivated. So, turn on only the ones that you need.</p><p>Each user will have his or her own preferred currency.</p>','2009-01-20 19:20:22','2009-01-20 19:20:22','/steps/step:company_info/stations/station:other_settings/local/local:currencies',NULL,NULL),(27,'<p>There are many sources of current exchange rates on the Internet, including Yahoo! Finance.</p><p>You can easily change exchange rates daily, if you want.</p>','2009-01-20 19:25:07','2009-01-20 19:25:07','/steps/step:company_info/stations/station:other_settings/local/local:currencies/continuations/continuation:exchange_rates',NULL,NULL),(28,'<p>Many customers simply stick with Each/EA for all their purchases, but some have enabled 10 or more UOMs.</p><p>Coupa also supports \"amount-based\" purchases on which you don\'t specify a quantity or UOM, just an amount. Services, such as consulting or maintenance, are the most common amount-based purchases.</p>','2009-01-20 19:27:04','2009-01-20 21:50:35','/steps/step:company_info/stations/station:other_settings/local/local:units_of_measure',NULL,NULL),(29,'<p>Let\'s say that you have account structure of Country-Department-ExpenseType, there\'s no need to use Departments here. You\'ll set up your accounts later in Quickstart and have your departments there.</p><p>You can remove multiple departments at once by using multi-select (control-click on a PC, command-click on a Mac).</p>','2009-01-20 19:32:35','2009-01-20 21:51:40','/steps/step:company_info/stations/station:other_settings/local/local:departments',NULL,NULL),(30,'<p>There are very detailed, multi-level commodity structures out there. We\'ve found that employees tend to get confused, so we recommend our simple commodity list which you can tailor to your needs.</p><p>If you start creating catalog items with Coupa, each item can have a particular commodity too. With classification, you get better information about your spending to help make informed decisions.</p><p>You can default a portion of the billing account based on a commodity or supplier. So, let\'s say you pick \"Electrical Supplies\" as the commodity on a purchase request, Coupa can automatically select a particular billing account or part of a billing account that is related to electrical supplies. Chat with a Coupa Expert for more info.</p>','2009-01-20 19:33:44','2009-01-20 19:33:44','/steps/step:company_info/stations/station:other_settings/local/local:commodities',NULL,NULL),(31,'<p>To make adding users easy, we only ask for the most important information during Quickstart. There are additional fields that you can set in the main application, such as setting a default billing account for a user.</p><p>If you have any questions about roles, chat with one of our Coupa Experts. In the main application, you can also customize these roles to suit your needs.</p><p>Coupa also supports LDAP for user authentication. If you\'d like to use LDAP, talk to a Coupa Expert and they\'ll help get you configured.</p>','2009-01-20 19:35:33','2009-01-20 21:52:44','/steps/step:suppliers/stations/station:add_suppliers',NULL,NULL),(32,'<p>To make adding users easy, we only ask for the most important information during Quickstart. There are additional fields that you can set in the main application, such as setting a default billing account for a user.</p><p>If you have any questions about roles, chat with one of our Coupa Experts. In the main application, you can also customize these roles to suit your needs.</p><p>Coupa also supports LDAP for user authentication. If you\'d like to use LDAP, talk to a Coupa Expert and they\'ll help get you configured.</p>','2009-01-20 19:36:01','2009-01-20 21:53:04','/steps/step:users/stations/station:users/branch/branch:edit',NULL,NULL),(33,'<p>We always recommend that you download your existing users first, and then use that file to create your upload file. When you do an upload, Coupa shows you a preview of the results of the first 6 rows of your file. If everything looks good, you can finish the upload.</p><p>After your preview, the system takes a minute or so to start the \"official\" upload. You\'ll see a green progress bar to give you a status. After processing completes, you\'ll see the results including any errors. If you load a file 100 rows and only 1 row has an error, the other 99 processed correctly. If you think that your bulkload is not working correctly, chat with one of our Coupa Experts and they\'ll help diagnose your issue.</p>','2009-01-20 19:37:27','2009-01-20 21:54:19','/steps/step:users/stations/station:users/branch/branch:bulk_load',NULL,NULL),(34,'<p>You manually add approvers and watchers at the checkout page when you are submitting a requisition. You can add approvers so they come right at the start or at the very end of the approval list.</p>','2009-01-20 19:47:34','2009-01-20 19:47:34','/steps/step:users/stations/station:approval_rules/continuations/continuation:add_approvers_and_watchers',NULL,NULL),(35,'<p>Self-approvals are a popular way to get orders out quickly. Of course, it eases the amount of control. You can always turn self-approvals on or off after you start using Coupa.</p>','2009-01-20 19:48:23','2009-01-20 19:48:23','/steps/step:users/stations/station:approval_rules/continuations/continuation:self-approvals',NULL,NULL),(36,'<p>When creating a supplier, the only required fields are the company name and email address where each of their orders will be sent.</p><p>If your supplier doesn\'t have email, no problem. Set the PO Transmission option to Prompt and you can use a manual method (e.g. snail mail) to get that order out. One other option is to send the orders electronically via XML. You can find out all about that in one of our <a href=\"/stations/learn_more\">Learn More pages</a>.</p><p>If your purchasing department wants to review all orders before they go out to the supplier, you should check the \"Hold POs for buyer review\" box.</p><p>Coupa automatically tracks savings from using your preferred supplier relationships. All suppliers can have a cost-savings percentage associated with purchases from them.</p>','2009-01-20 19:56:26','2009-01-20 19:56:26','/steps/step:suppliers/stations/station:add_suppliers/branch/branch:create',NULL,NULL),(37,'<p>When creating a supplier, the only required fields are the company name and email address where each of their orders will be sent.</p><p>If your supplier doesn\'t have email, no problem. Set the PO Transmission option to Prompt and you can use a manual method (e.g. snail mail) to get that order out. One other option is to send the orders electronically via XML. You can find out all about that in one of our <a href=\"/stations/learn_more\">Learn More pages</a>.</p><p>If your purchasing department wants to review all orders before they go out to the supplier, you should check the \"Hold POs for buyer review\" box.</p><p>Coupa automatically tracks savings from using your preferred supplier relationships. All suppliers can have a cost-savings percentage associated with purchases from them.</p>','2009-01-20 19:56:55','2009-01-20 19:56:55','/steps/step:suppliers/stations/station:add_suppliers/branch/branch:edit',NULL,NULL),(38,'<p>We always recommend that you download your existing suppliers first, and then use that file to create your upload file. When you do an upload, Coupa shows you a preview of the results of the first 6 rows of your file. If everything looks good, you can finish the upload.</p><p>After your preview, the system takes a minute or so to start the \"official\" upload. You\'ll see a green progress bar to give you a status. After processing completes, you\'ll see the results including any errors. If you load a file 100 rows and only 1 row has an error, the other 99 processed correctly. If you think that your bulkload is not working correctly, chat with one of our Coupa Experts and they\'ll help diagnose your issue.</p>','2009-01-20 19:58:43','2009-01-20 21:58:33','/steps/step:suppliers/stations/station:list/branch/branch:bulk_load',NULL,NULL),(39,'<p>Budgeting is quickly becoming one of Coupa\'s most popular capabilities. Noone likes surprises and Coupa Budgeting provides controls for your employees to make good decisions.</p><p>If your purchase request will cause a budget overrun, then you get a warning notification during checkout. All approvers are warned, as well.</p>','2009-01-20 20:00:56','2009-01-20 20:00:56','/steps/step:learn_more/continuations/continuation:budgeting',NULL,NULL),(40,'<p>If you use invoicing in Coupa, you may want to do 3-way matching. With 3-way matching you have the best controls, where you know that the order has a matching receipt and invoice.</p><p>When doing a detailed receipt, you can assign asset tags to have an internal tracking number on particular goods that you receive. For big orders, such as 100 new laptops that you just bought, you can upload the asset tags in a spreadsheet file when doing the receipt.</p>','2009-01-20 20:02:37','2009-01-20 20:02:37','/steps/step:learn_more/continuations/continuation:receiving',NULL,NULL),(41,'Management hierarchy approvals is much more common, but there are cases when approval chains bring in additional controls that you want.','2009-01-20 20:03:28','2009-01-20 20:03:28','/steps/step:learn_more/continuations/continuation:approval_chains',NULL,NULL),(42,'<p>Budgeting and invoicing are closely linked. If the invoice differs from the order, your budgets are automatically updated.</p><p>Should an invoice go on-hold, your employees with the Accounting Supervisor role will be notified via email and can adjust the invoice or remove the hold.</p>','2009-01-20 20:05:01','2009-01-20 20:05:01','/steps/step:learn_more/continuations/continuation:invoicing',NULL,NULL),(43,'<p>Catalog items are great for frequently ordered items. Instead of typing in a free-form request, your employees can search the catalog and find the item.</p><p>Coupa makes it easy to create catalog items. In fact, buyers and inventory managers can look at past purchase orders and convert free-form request lines directly into catalog items. Talk to a Coupa Expert to learn more.</p>','2009-01-20 20:07:01','2009-01-20 20:07:01','/steps/step:learn_more/continuations/continuation:items',NULL,NULL),(44,'<p>The 2 main reasons to create contracts are to enable supplier punchouts and to restrict security.</p><p>Buyers get notified of expiring contracts.</p>','2009-01-20 20:08:01','2009-01-20 20:08:01','/steps/step:learn_more/continuations/continuation:contracts',NULL,NULL),(45,'<p>Business groups are only for advanced customer requirements where they need to restrict certain users from seeing particular catalog items, supplier punchouts or how-to-buy policies.</p>','2009-01-20 20:08:43','2009-01-20 22:02:34','/steps/step:learn_more/continuations/continuation:business_groups',NULL,NULL),(46,'<p>The best way to get familiar with Punchout is to start with your office supply vendor. They are usually quick to enable Punchout.</p><p>Some suppliers require you to have a minimum spend level with them before they enable Punchout for you. Remind your supplier that it is in their best interest to enable Punchout because it is viewed as a preferred relationship where you encourage your employees to use the particular supplier.</p>','2009-01-20 20:09:41','2009-01-20 20:09:41','/steps/step:learn_more/continuations/continuation:punchout_sites_and_xml_ordering',NULL,NULL),(47,'<p>You might want to get help from Coupa\'s help desk system when creating your first Web Form. As described, it\'s a 2-step process. First, create your questionnaire and then create the actual Web Form.</p>','2009-01-20 20:10:32','2009-01-20 20:10:32','/steps/step:learn_more/continuations/continuation:web_forms',NULL,NULL),(48,'<p>If you already have inventory in stock and want to record it in Coupa, no problem. Make sure those items are created and then do inventory adjustments to record the existing stock counts.</p>','2009-01-20 20:11:17','2009-01-20 20:11:17','/steps/step:learn_more/continuations/continuation:inventory',NULL,NULL),(49,'<p>The Coupa community help desk system at <a href=\"http://support.coupa.com/\">http://support.coupa.com</a> is a great resource for the latest tips and tricks, knowledge exchange with other customers and pitching your favorite feature request.</p>','2009-01-20 20:12:30','2009-01-20 20:12:30','/steps/step:learn_more/continuations/continuation:rfqs',NULL,NULL),(50,'<p>The Coupa community help desk system at <a href=\"http://support.coupa.com\">http://support.coupa.com</a> is a great resource for the latest tips and tricks, knowledge exchange with other customers and pitching your favorite feature request.</p>\n','2009-01-20 22:03:25','2009-01-20 22:03:25','/steps/step:learn_more/continuations/continuation:how_to_buy_policies',NULL,NULL),(51,'<p>The Coupa community help desk system at <a href=\"http://support.coupa.com\">http://support.coupa.com</a> is a great resource for the latest tips and tricks, knowledge exchange with other customers and pitching your favorite feature request.</p>\n','2009-01-20 22:04:19','2009-01-20 22:04:19','/steps/step:learn_more/continuations/continuation:ask_an_expert',NULL,NULL),(52,'<p>The Coupa community help desk system at <a href=\"http://support.coupa.com\">http://support.coupa.com</a> is a great resource for the latest tips and tricks, knowledge exchange with other customers and pitching your favorite feature request.</p>\n','2009-01-20 22:04:53','2009-01-20 22:04:53','/steps/step:learn_more/continuations/continuation:integration',NULL,NULL),(53,'<p>Coupa can sync with your Quickbooks automatically. Accounts, suppliers and invoices can be transferred using the Quickbooks Web Connector.</p>','2009-06-12 01:08:19','2009-06-12 01:08:19','/steps/step:finances/stations/station:quickbooks',NULL,NULL),(54,'<p>You should sign into Coupa as the user you would like to have Quickbooks use. You will be required to enter and store your Coupa password in the Quickbooks Web Connector. Your password will not be visible to anyone.</p>','2009-06-12 01:15:49','2009-06-12 01:15:49','/steps/step:finances/stations/station:quickbooks/continuations/continuation:quickbooks',NULL,NULL),(55,'<p>Coupa can sync with your Quickbooks automatically. Accounts, suppliers and invoices can be transferred using the Quickbooks Web Connector. Using the Quickbooks Web Connector requires Windows XP or newer and Quickbooks 2006 or later.</p>\n\n<p>You should sign into Coupa as the user you would like to have Quickbooks use. You will be required to enter and store your Coupa password in the Quickbooks Web Connector. Your password will not be visible to anyone.</p>\n\n<p>The configuration file tells Quickbooks which Coupa customer you are. It also sets Quickbooks to sync every hour. You can adjust the amount of time in between syncs in Quickbooks Web Connector. </p>','2009-06-15 22:59:27','2009-06-15 23:01:22','/steps/step:finances/stations/station:quickbooks/continuations/continuation:installing_the_quickbooks_web_connector',NULL,NULL),(56,'<p>iRequest makes it simple for your users to request items from e-commerce websites. They can get the iRequest widget and when on the supplier site, click it to add the item to their Coupa shopping cart. Users can find the best prices, and the company maintains the control of allowing these purchases and all the pre-approvals. Click <a href=\"/stations/learn_more/irequest_and_ibuy\" onclick=\"window.open(this.href,\'external_coupa_popup\',\'scrollbars=yes,width=720\'); return false;\">here</a> to learn more.</p>\n\n<p>Once purchase requisitions for iRequest suppliers are approved, your purchasing department can use iBuy to finish the order with the e-commerce vendor. By clicking the iBuy / Order Online button, the purchasing user is brought directly back to the item that the end-user requested. The iBuy widget guides the purchaser on how to complete the order.</p>\n','2009-08-30 16:23:00','2009-08-30 16:23:00','/steps/step:suppliers/stations/station:featured_irequest_sites',NULL,NULL),(57,'<p>With Coupa, your users assign each expense to a particular category. We recommend using the pre-seeded Coupa expense category list or another similar simple list. Simplicity helps your users categorize correctly and provide the information needed for approvers, the finance team, and executives.</p><p>The categories also help default the right billing account onto each line.</p><p>Expense categories and policies can be connected. When a user selects a particular category, the appropriate policy can be displayed, giving full information to the employee about what is allowable and what is not.</p>','2009-01-20 19:33:44','2009-01-20 19:33:44','/steps/step:company_info/stations/station:other_settings/local/local:expense_categories',NULL,NULL);
/*!40000 ALTER TABLE `did_you_knows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_schema_info`
--

DROP TABLE IF EXISTS `engine_schema_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_schema_info` (
  `engine_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_schema_info`
--

LOCK TABLES `engine_schema_info` WRITE;
/*!40000 ALTER TABLE `engine_schema_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine_schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_rates`
--

DROP TABLE IF EXISTS `exchange_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_currency_id` int(11) DEFAULT NULL,
  `to_currency_id` int(11) DEFAULT NULL,
  `rate` decimal(30,9) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exchange_rates_on_created_by` (`created_by`),
  KEY `index_exchange_rates_on_from_currency_id` (`from_currency_id`),
  KEY `index_exchange_rates_on_to_currency_id` (`to_currency_id`),
  KEY `index_exchange_rates_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_rates`
--

LOCK TABLES `exchange_rates` WRITE;
/*!40000 ALTER TABLE `exchange_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_account_type_limits`
--

DROP TABLE IF EXISTS `expense_account_type_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_account_type_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(11) DEFAULT NULL,
  `does_not_require_receipt` tinyint(1) DEFAULT NULL,
  `limit_amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_account_type_limits`
--

LOCK TABLES `expense_account_type_limits` WRITE;
/*!40000 ALTER TABLE `expense_account_type_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_account_type_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_artifacts`
--

DROP TABLE IF EXISTS `expense_artifacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_artifacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_line_id` int(11) DEFAULT NULL,
  `source_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_artifacts`
--

LOCK TABLES `expense_artifacts` WRITE;
/*!40000 ALTER TABLE `expense_artifacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_artifacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `average` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` VALUES (1,'Airfare',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(2,'Lodging',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(3,'Meal - Breakfast',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(4,'Meal - Lunch',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(5,'Meal - Dinner',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(6,'Rental Car',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(7,'Fuel',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(8,'Mileage',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(9,'Parking',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(10,'Taxi',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(11,'Transportation - Other',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(12,'Phone - Cellular',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(13,'Phone - Other',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(14,'Entertainment - Business Meal',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(15,'Entertainment - Other',1,1,'2009-09-29 18:39:27','2009-09-29 18:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(16,'Internet',1,1,'2009-09-29 18:39:28','2009-09-29 18:39:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(17,'Tips',1,1,'2009-09-29 18:39:28','2009-09-29 18:39:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(18,'Dues',1,1,'2009-09-29 18:39:28','2009-09-29 18:39:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(19,'Gifts',1,1,'2009-09-29 18:39:28','2009-09-29 18:39:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(20,'Office Supplies',1,1,'2009-09-29 18:39:28','2009-09-29 18:39:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(21,'Other Miscellaneous',1,1,'2009-09-29 18:39:28','2009-09-29 18:39:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_delegations`
--

DROP TABLE IF EXISTS `expense_delegations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_delegations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_delegate_for_id` int(11) DEFAULT NULL,
  `expenses_delegated_to_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_delegations`
--

LOCK TABLES `expense_delegations` WRITE;
/*!40000 ALTER TABLE `expense_delegations` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_delegations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_line_allocations`
--

DROP TABLE IF EXISTS `expense_line_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_line_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_report_id` int(11) DEFAULT NULL,
  `expense_line_id` int(11) DEFAULT NULL,
  `order_line_allocation_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `pct` decimal(8,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_expense_line_allocations_on_account_id` (`account_id`),
  KEY `index_expense_line_allocations_on_account_type_id` (`account_type_id`),
  KEY `index_expense_line_allocations_on_expense_line_id` (`expense_line_id`),
  KEY `index_expense_line_allocations_on_expense_report_id` (`expense_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_line_allocations`
--

LOCK TABLES `expense_line_allocations` WRITE;
/*!40000 ALTER TABLE `expense_line_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_line_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_lines`
--

DROP TABLE IF EXISTS `expense_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_report_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_date` datetime DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `reporting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `merchant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expensed_by` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audit_status_id` int(11) DEFAULT NULL,
  `approved_amount` decimal(30,2) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `order_line_id` int(11) DEFAULT NULL,
  `salesforce_account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salesforce_account_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salesforce_opportunity_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salesforce_opportunity_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_expense_lines_on_allocation_count` (`allocation_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_lines`
--

LOCK TABLES `expense_lines` WRITE;
/*!40000 ALTER TABLE `expense_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_policies`
--

DROP TABLE IF EXISTS `expense_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` int(11) DEFAULT NULL,
  `business_group_id` int(11) DEFAULT NULL,
  `requires_receipt` tinyint(1) DEFAULT '0',
  `summary` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `show_comparisons` tinyint(1) DEFAULT '0',
  `currency_id` int(11) DEFAULT NULL,
  `limit_amount` decimal(30,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_policies`
--

LOCK TABLES `expense_policies` WRITE;
/*!40000 ALTER TABLE `expense_policies` DISABLE KEYS */;
INSERT INTO `expense_policies` VALUES (1,1,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(2,2,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(3,3,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(4,4,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(5,5,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(6,6,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(7,7,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(8,8,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(9,9,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(10,10,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(11,11,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(12,12,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(13,13,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(14,14,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(15,15,NULL,0,NULL,NULL,'2010-05-21 22:36:22','2010-05-21 22:36:22',NULL,0,NULL,NULL,NULL,NULL),(16,16,NULL,0,NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23',NULL,0,NULL,NULL,NULL,NULL),(17,17,NULL,0,NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23',NULL,0,NULL,NULL,NULL,NULL),(18,18,NULL,0,NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23',NULL,0,NULL,NULL,NULL,NULL),(19,19,NULL,0,NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23',NULL,0,NULL,NULL,NULL,NULL),(20,20,NULL,0,NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23',NULL,0,NULL,NULL,NULL,NULL),(21,21,NULL,0,NULL,NULL,'2010-05-21 22:36:23','2010-05-21 22:36:23',NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `expense_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_policy_limits`
--

DROP TABLE IF EXISTS `expense_policy_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_policy_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_policy_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `limit_amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_policy_limits`
--

LOCK TABLES `expense_policy_limits` WRITE;
/*!40000 ALTER TABLE `expense_policy_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_policy_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_policy_violations`
--

DROP TABLE IF EXISTS `expense_policy_violations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_policy_violations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_exceeded` decimal(30,2) DEFAULT NULL,
  `receipt_missing` tinyint(1) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL,
  `policy_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `violator_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_policy_violations`
--

LOCK TABLES `expense_policy_violations` WRITE;
/*!40000 ALTER TABLE `expense_policy_violations` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_policy_violations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_report_event_history`
--

DROP TABLE IF EXISTS `expense_report_event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_report_event_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_report_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_report_event_history`
--

LOCK TABLES `expense_report_event_history` WRITE;
/*!40000 ALTER TABLE `expense_report_event_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_report_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_reports`
--

DROP TABLE IF EXISTS `expense_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` decimal(30,2) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expensed_by` int(11) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `auditor_note` text COLLATE utf8_unicode_ci,
  `aud_score` decimal(30,2) DEFAULT NULL,
  `rep_score` decimal(30,2) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_reports`
--

LOCK TABLES `expense_reports` WRITE;
/*!40000 ALTER TABLE `expense_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache` text COLLATE utf8_unicode_ci,
  `cache_data_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_cached_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_checked_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feeds_on_created_by` (`created_by`),
  KEY `index_feeds_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_responses`
--

DROP TABLE IF EXISTS `form_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response` text COLLATE utf8_unicode_ci,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_form_responses_on_created_by` (`created_by`),
  KEY `index_form_responses_on_form_id` (`form_id`),
  KEY `index_form_responses_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_responses`
--

LOCK TABLES `form_responses` WRITE;
/*!40000 ALTER TABLE `form_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_forms_on_created_by` (`created_by`),
  KEY `index_forms_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fte_metrics`
--

DROP TABLE IF EXISTS `fte_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fte_metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metric_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` decimal(30,2) DEFAULT NULL,
  `cost` decimal(30,2) DEFAULT NULL,
  `as_of_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fte_metrics`
--

LOCK TABLES `fte_metrics` WRITE;
/*!40000 ALTER TABLE `fte_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `fte_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_events`
--

DROP TABLE IF EXISTS `history_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `history_object_id` int(11) NOT NULL,
  `history_object_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `history_hash` blob NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `history_events_history_object_index` (`history_object_id`,`history_object_type`),
  KEY `index_history_events_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_events`
--

LOCK TABLES `history_events` WRITE;
/*!40000 ALTER TABLE `history_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_codes`
--

DROP TABLE IF EXISTS `inspection_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspection_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inspection_codes_on_created_by` (`created_by`),
  KEY `index_inspection_codes_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_codes`
--

LOCK TABLES `inspection_codes` WRITE;
/*!40000 ALTER TABLE `inspection_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspection_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_metrics`
--

DROP TABLE IF EXISTS `instance_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_1` float DEFAULT NULL,
  `value_2` float DEFAULT NULL,
  `value_3` float DEFAULT NULL,
  `value_4` float DEFAULT NULL,
  `value_5` float DEFAULT NULL,
  `value_6` float DEFAULT NULL,
  `value_7` float DEFAULT NULL,
  `value_8` float DEFAULT NULL,
  `value_9` float DEFAULT NULL,
  `value_10` float DEFAULT NULL,
  `value_11` float DEFAULT NULL,
  `value_12` float DEFAULT NULL,
  `value_13` float DEFAULT NULL,
  `value_14` float DEFAULT NULL,
  `value_15` float DEFAULT NULL,
  `value_16` float DEFAULT NULL,
  `total_value` float DEFAULT NULL,
  `number_of_months` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_metrics`
--

LOCK TABLES `instance_metrics` WRITE;
/*!40000 ALTER TABLE `instance_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_balances`
--

DROP TABLE IF EXISTS `inventory_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_balances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) DEFAULT NULL,
  `warehouse_location_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_balances_on_item_id` (`item_id`),
  KEY `index_inventory_balances_on_uom_id` (`uom_id`),
  KEY `index_inventory_balances_on_warehouse_id` (`warehouse_id`),
  KEY `index_inventory_balances_on_warehouse_location_id` (`warehouse_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_balances`
--

LOCK TABLES `inventory_balances` WRITE;
/*!40000 ALTER TABLE `inventory_balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_transactions`
--

DROP TABLE IF EXISTS `inventory_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_warehouse_id` int(11) DEFAULT NULL,
  `from_warehouse_location_id` int(11) DEFAULT NULL,
  `to_warehouse_id` int(11) DEFAULT NULL,
  `to_warehouse_location_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `order_line_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `price` decimal(30,4) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rfid_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inspection_code_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `receipt_id` int(11) DEFAULT NULL,
  `receiving_form_response_id` int(11) DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'created',
  `comments` text COLLATE utf8_unicode_ci,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation_count` int(11) DEFAULT '0',
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_transactions_on_account_id` (`account_id`),
  KEY `index_inventory_transactions_on_account_type_id` (`account_type_id`),
  KEY `index_inventory_transactions_on_allocation_count` (`allocation_count`),
  KEY `index_inventory_transactions_on_created_by` (`created_by`),
  KEY `index_inventory_transactions_on_currency_id` (`currency_id`),
  KEY `index_inventory_transactions_on_from_warehouse_id` (`from_warehouse_id`),
  KEY `index_inventory_transactions_on_from_warehouse_location_id` (`from_warehouse_location_id`),
  KEY `index_inventory_transactions_on_inspection_code_id` (`inspection_code_id`),
  KEY `index_inventory_transactions_on_item_id` (`item_id`),
  KEY `index_inventory_transactions_on_order_line_id` (`order_line_id`),
  KEY `index_inventory_transactions_on_receipt_id` (`receipt_id`),
  KEY `index_inventory_transactions_on_receiving_form_response_id` (`receiving_form_response_id`),
  KEY `index_inventory_transactions_on_to_warehouse_id` (`to_warehouse_id`),
  KEY `index_inventory_transactions_on_to_warehouse_location_id` (`to_warehouse_location_id`),
  KEY `index_inventory_transactions_on_uom_id` (`uom_id`),
  KEY `index_inventory_transactions_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_transactions`
--

LOCK TABLES `inventory_transactions` WRITE;
/*!40000 ALTER TABLE `inventory_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_txn_allocations`
--

DROP TABLE IF EXISTS `inventory_txn_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_txn_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_transaction_id` int(11) DEFAULT NULL,
  `order_line_allocation_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `pct` decimal(8,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_txn_allocations_on_account_id` (`account_id`),
  KEY `index_inventory_txn_allocations_on_account_type_id` (`account_type_id`),
  KEY `index_inventory_txn_allocations_on_inventory_transaction_id` (`inventory_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_txn_allocations`
--

LOCK TABLES `inventory_txn_allocations` WRITE;
/*!40000 ALTER TABLE `inventory_txn_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_txn_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_txns_asset_tags`
--

DROP TABLE IF EXISTS `inventory_txns_asset_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_txns_asset_tags` (
  `inventory_transaction_id` int(11) DEFAULT NULL,
  `asset_tag_id` int(11) DEFAULT NULL,
  KEY `index_inventory_txns_asset_tags_on_asset_tag_id` (`asset_tag_id`),
  KEY `index_inventory_txns_asset_tags_on_inventory_transaction_id` (`inventory_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_txns_asset_tags`
--

LOCK TABLES `inventory_txns_asset_tags` WRITE;
/*!40000 ALTER TABLE `inventory_txns_asset_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_txns_asset_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_event_history`
--

DROP TABLE IF EXISTS `invoice_event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_event_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_header_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoice_event_history_on_invoice_header_id` (`invoice_header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_event_history`
--

LOCK TABLES `invoice_event_history` WRITE;
/*!40000 ALTER TABLE `invoice_event_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_headers`
--

DROP TABLE IF EXISTS `invoice_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `remit_to_address_id` int(11) DEFAULT NULL,
  `invoice_number` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `terms_id` int(11) DEFAULT NULL,
  `supplier_note` text COLLATE utf8_unicode_ci,
  `internal_note` text COLLATE utf8_unicode_ci,
  `image_scan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_amount` decimal(30,2) DEFAULT NULL,
  `handling_amount` decimal(30,2) DEFAULT NULL,
  `tax_amount` decimal(30,2) DEFAULT NULL,
  `misc_amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `line_level_taxation` tinyint(1) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `payment_term_id` int(11) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code_id` int(11) DEFAULT NULL,
  `tax_rate` float DEFAULT NULL,
  `shipping_term_id` int(11) DEFAULT NULL,
  `image_scan_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_scan_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_scan_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid` tinyint(1) DEFAULT '0',
  `payment_date` datetime DEFAULT NULL,
  `payment_notes` text COLLATE utf8_unicode_ci,
  `last_exported_at` datetime DEFAULT NULL,
  `image_scan_view_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_quickbooks_sync` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approvaldata` text COLLATE utf8_unicode_ci,
  `contract_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoice_headers_on_account_type_id` (`account_type_id`),
  KEY `index_invoice_headers_on_created_by` (`created_by`),
  KEY `index_invoice_headers_on_currency_id` (`currency_id`),
  KEY `index_invoice_headers_on_payment_term_id` (`payment_term_id`),
  KEY `index_invoice_headers_on_remit_to_address_id` (`remit_to_address_id`),
  KEY `index_invoice_headers_on_shipping_term_id` (`shipping_term_id`),
  KEY `index_invoice_headers_on_status` (`status`),
  KEY `index_invoice_headers_on_supplier_id` (`supplier_id`),
  KEY `index_invoice_headers_on_tax_code_id` (`tax_code_id`),
  KEY `index_invoice_headers_on_terms_id` (`terms_id`),
  KEY `index_invoice_headers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_headers`
--

LOCK TABLES `invoice_headers` WRITE;
/*!40000 ALTER TABLE `invoice_headers` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_line_allocations`
--

DROP TABLE IF EXISTS `invoice_line_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_line_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_header_id` int(11) DEFAULT NULL,
  `invoice_line_id` int(11) DEFAULT NULL,
  `order_line_allocation_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `pct` decimal(8,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoice_line_allocations_on_account_id` (`account_id`),
  KEY `index_invoice_line_allocations_on_account_type_id` (`account_type_id`),
  KEY `index_invoice_line_allocations_on_invoice_header_id` (`invoice_header_id`),
  KEY `index_invoice_line_allocations_on_invoice_line_id` (`invoice_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_line_allocations`
--

LOCK TABLES `invoice_line_allocations` WRITE;
/*!40000 ALTER TABLE `invoice_line_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_line_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_line_event_history`
--

DROP TABLE IF EXISTS `invoice_line_event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_line_event_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_line_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoice_line_event_history_on_invoice_line_id` (`invoice_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_line_event_history`
--

LOCK TABLES `invoice_line_event_history` WRITE;
/*!40000 ALTER TABLE `invoice_line_event_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_line_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_lines`
--

DROP TABLE IF EXISTS `invoice_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_header_id` int(11) DEFAULT NULL,
  `line_num` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_item_id` int(11) DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` decimal(30,4) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_line_id` int(11) DEFAULT NULL,
  `tax_code_id` int(11) DEFAULT NULL,
  `tax_rate` float DEFAULT NULL,
  `tax_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_amount` decimal(30,2) DEFAULT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_supply_date` datetime DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `reporting_total` decimal(30,2) DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `supplier_item_id` int(11) DEFAULT NULL,
  `allocation_count` int(11) DEFAULT '0',
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoice_lines_on_account_id` (`account_id`),
  KEY `index_invoice_lines_on_account_type_id` (`account_type_id`),
  KEY `index_invoice_lines_on_accounting_total_currency_id` (`accounting_total_currency_id`),
  KEY `index_invoice_lines_on_allocation_count` (`allocation_count`),
  KEY `index_invoice_lines_on_catalog_item_id` (`catalog_item_id`),
  KEY `index_invoice_lines_on_created_by` (`created_by`),
  KEY `index_invoice_lines_on_currency_id` (`currency_id`),
  KEY `index_invoice_lines_on_invoice_header_id` (`invoice_header_id`),
  KEY `index_invoice_lines_on_order_line_id` (`order_line_id`),
  KEY `index_invoice_lines_on_tax_code_id` (`tax_code_id`),
  KEY `index_invoice_lines_on_uom_id` (`uom_id`),
  KEY `index_invoice_lines_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_lines`
--

LOCK TABLES `invoice_lines` WRITE;
/*!40000 ALTER TABLE `invoice_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iphones`
--

DROP TABLE IF EXISTS `iphones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iphones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_iphones_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iphones`
--

LOCK TABLES `iphones` WRITE;
/*!40000 ALTER TABLE `iphones` DISABLE KEYS */;
/*!40000 ALTER TABLE `iphones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irequest_sites`
--

DROP TABLE IF EXISTS `irequest_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irequest_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seeded` tinyint(1) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irequest_sites`
--

LOCK TABLES `irequest_sites` WRITE;
/*!40000 ALTER TABLE `irequest_sites` DISABLE KEYS */;
INSERT INTO `irequest_sites` VALUES (1,'amazon.com',1,1,'/images/irequest_sites/amazon.png',NULL,NULL,'2009-07-30 20:50:46','2009-07-30 20:50:46',NULL,NULL),(2,'buy.com',1,1,'/images/irequest_sites/buy_dot_com.png',NULL,NULL,'2009-07-30 20:51:11','2009-07-30 20:51:11',NULL,NULL),(3,'officedepot.com',1,0,'/images/irequest_sites/office_depot.png',NULL,NULL,'2009-07-30 20:51:51','2009-07-30 20:54:01',NULL,NULL),(4,'officemax.com',1,0,'/images/irequest_sites/officemax.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(5,'barnesandnoble.com',1,0,'/images/irequest_sites/barnes_and_noble.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(6,'ecost.com',1,0,'/images/irequest_sites/ecost.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(7,'newegg.com',1,1,'/images/irequest_sites/newegg.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(8,'pcconnection.com',1,0,'/images/irequest_sites/pcconnection.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(9,'pcmall.com',1,0,'/images/irequest_sites/pcmall.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(10,'techdepot.com',1,0,'/images/irequest_sites/techdepot.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(11,'vistaprint.com',1,0,'/images/irequest_sites/vistaprint.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(12,'walmart.com',1,0,'/images/irequest_sites/walmart.png',NULL,NULL,'2009-07-30 20:52:17','2009-07-30 20:52:17',NULL,NULL),(13,'dell.com',1,0,'/images/irequest_sites/dell.png',NULL,NULL,'2009-09-01 00:00:00','2009-09-01 00:00:00',NULL,NULL),(14,'target.com',1,0,'/images/irequest_sites/target.png',NULL,NULL,'2009-09-01 00:00:00','2009-09-01 00:00:00',NULL,NULL),(15,'bestbuy.com',1,0,'/images/irequest_sites/best_buy.png',NULL,NULL,'2009-09-22 00:00:00','2009-09-22 00:00:00',NULL,NULL),(16,'restockit.com',1,0,'/images/irequest_sites/restockit.png',NULL,NULL,'2009-09-22 00:00:00','2009-09-22 00:00:00',NULL,NULL),(17,'tigerdirect.com',1,1,'/images/irequest_sites/tigerdirect.png',NULL,NULL,'2009-09-22 00:00:00','2009-09-22 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `irequest_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reorder_point` float DEFAULT NULL,
  `require_inspection` tinyint(1) DEFAULT NULL,
  `require_asset_tag` tinyint(1) DEFAULT NULL,
  `require_rfid` tinyint(1) DEFAULT NULL,
  `require_barcode` tinyint(1) DEFAULT NULL,
  `receiving_form_id` int(11) DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `product_reviews_count` int(11) DEFAULT NULL,
  `avg_rating` float NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delta` tinyint(1) DEFAULT '0',
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_item_id` int(11) DEFAULT NULL,
  `imported_from_connect` tinyint(1) DEFAULT '0',
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_items_on_active` (`active`),
  KEY `index_items_on_commodity_id` (`commodity_id`),
  KEY `index_items_on_created_by` (`created_by`),
  KEY `index_items_on_item_number` (`item_number`),
  KEY `index_items_on_name` (`name`),
  KEY `index_items_on_receiving_form_id` (`receiving_form_id`),
  KEY `index_items_on_uom_id` (`uom_id`),
  KEY `index_items_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `attempted_at` datetime DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `success_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_preferences`
--

DROP TABLE IF EXISTS `notification_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_online` tinyint(1) DEFAULT NULL,
  `send_via_email` tinyint(1) DEFAULT NULL,
  `send_via_im` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notification_preferences_on_created_by` (`created_by`),
  KEY `index_notification_preferences_on_updated_by` (`updated_by`),
  KEY `index_notification_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_preferences`
--

LOCK TABLES `notification_preferences` WRITE;
/*!40000 ALTER TABLE `notification_preferences` DISABLE KEYS */;
INSERT INTO `notification_preferences` VALUES (1,1,'next_approver',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 19:23:34'),(2,1,'req_to_requester',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 19:23:34'),(3,1,'req_to_approver',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 19:23:34'),(4,1,'req_approved',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(5,1,'req_rejected',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(6,1,'req_received',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(7,1,'confirm_receipt',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(8,1,'req_submitted',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(9,1,'req_returned_by_buyer',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(10,1,'contract_1_month_warning',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 19:23:34'),(11,1,'contract_expiration',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 18:51:50'),(12,1,'req_requires_action',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(13,1,'po_on_supplier_hold',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(14,1,'po_on_buyer_hold',1,1,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(15,1,'invoice_on_hold',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14'),(16,1,'employee_review_flagged',0,0,0,1,1,'2009-01-21 00:41:14','2009-01-21 00:41:14');
/*!40000 ALTER TABLE `notification_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `read_flag` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifier_id` int(11) DEFAULT NULL,
  `notifier_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_done` tinyint(1) DEFAULT NULL,
  `mini_note` text COLLATE utf8_unicode_ci,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_created_by` (`created_by`),
  KEY `index_notifications_on_notifier_id` (`notifier_id`),
  KEY `index_notifications_on_updated_by` (`updated_by`),
  KEY `index_notifications_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `now_you_know_users`
--

DROP TABLE IF EXISTS `now_you_know_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `now_you_know_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `now_you_know_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `times_viewed` int(11) DEFAULT '0',
  `removed` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_now_you_know_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `now_you_know_users`
--

LOCK TABLES `now_you_know_users` WRITE;
/*!40000 ALTER TABLE `now_you_know_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `now_you_know_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `now_you_knows`
--

DROP TABLE IF EXISTS `now_you_knows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `now_you_knows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission_controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission_action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `now_you_knows`
--

LOCK TABLES `now_you_knows` WRITE;
/*!40000 ALTER TABLE `now_you_knows` DISABLE KEYS */;
INSERT INTO `now_you_knows` VALUES (1,'To get started, you can view all your existing purchase orders and invoices.  The latest ones are shown and click the \"See All\" links to view more.  To create an invoice, click on the \"gold coins\" icon for that purchase order.','SupplierUser',NULL,NULL,'user','home',NULL,NULL,NULL,NULL,'2011-08-17 13:31:00','2011-08-17 13:31:00'),(2,'Creating your first invoice? Just enter in your invoice number.  Check the line details, make any necessary changes and put in any extra charges.  Once you are ready, click Submit.  You\'ll be notified if the invoice is approved or placed on hold.','SupplierUser',NULL,NULL,'supplier_invoices','edit',NULL,NULL,NULL,NULL,'2011-08-17 13:31:00','2011-08-17 13:31:00'),(3,'Custom fields allow you to create new fields on a number of pages. They can be named anything you like. In addition to the standard view and edit pages, these fields will also be available in table views and when you export to Excel.',NULL,NULL,NULL,'custom_fields','index',NULL,NULL,NULL,NULL,'2011-08-17 13:31:00','2011-08-17 13:31:00');
/*!40000 ALTER TABLE `now_you_knows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objections`
--

DROP TABLE IF EXISTS `objections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_review_id` int(11) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `objectable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectable_id` int(11) DEFAULT NULL,
  `reviewable_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_objections_on_created_by` (`created_by`),
  KEY `index_objections_on_product_review_id` (`product_review_id`),
  KEY `index_objections_on_review_title` (`review_title`),
  KEY `index_objections_on_reviewable_name` (`reviewable_name`),
  KEY `index_objections_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objections`
--

LOCK TABLES `objections` WRITE;
/*!40000 ALTER TABLE `objections` DISABLE KEYS */;
/*!40000 ALTER TABLE `objections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_stores`
--

DROP TABLE IF EXISTS `online_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_stores`
--

LOCK TABLES `online_stores` WRITE;
/*!40000 ALTER TABLE `online_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_event_history`
--

DROP TABLE IF EXISTS `order_event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_event_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_header_id` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_event_history_on_created_by` (`created_by`),
  KEY `index_order_event_history_on_order_header_id` (`order_header_id`),
  KEY `index_order_event_history_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_event_history`
--

LOCK TABLES `order_event_history` WRITE;
/*!40000 ALTER TABLE `order_event_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_header_transmissions`
--

DROP TABLE IF EXISTS `order_header_transmissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_header_transmissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) DEFAULT NULL,
  `package_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_header_transmissions_on_package_id_and_package_type` (`package_id`,`package_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_header_transmissions`
--

LOCK TABLES `order_header_transmissions` WRITE;
/*!40000 ALTER TABLE `order_header_transmissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_header_transmissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_header_versions`
--

DROP TABLE IF EXISTS `order_header_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_header_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_header_id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT '0',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ship_to_address_id` int(11) DEFAULT NULL,
  `ship_to_user_id` int(11) DEFAULT NULL,
  `supplier_view_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acknowledged_flag` tinyint(1) DEFAULT NULL,
  `last_opened_at` datetime DEFAULT NULL,
  `shipping_term_id` int(11) DEFAULT NULL,
  `payment_term_id` int(11) DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  `ship_to_attention` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcard_id` int(11) DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requisition_header_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_header_versions_on_created_by` (`created_by`),
  KEY `index_order_header_versions_on_order_header_id` (`order_header_id`),
  KEY `index_order_header_versions_on_payment_term_id` (`payment_term_id`),
  KEY `index_order_header_versions_on_ship_to_address_id` (`ship_to_address_id`),
  KEY `index_order_header_versions_on_ship_to_user_id` (`ship_to_user_id`),
  KEY `index_order_header_versions_on_shipping_term_id` (`shipping_term_id`),
  KEY `index_order_header_versions_on_supplier_id` (`supplier_id`),
  KEY `index_order_header_versions_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_header_versions`
--

LOCK TABLES `order_header_versions` WRITE;
/*!40000 ALTER TABLE `order_header_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_header_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_headers`
--

DROP TABLE IF EXISTS `order_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ship_to_address_id` int(11) DEFAULT NULL,
  `ship_to_user_id` int(11) DEFAULT NULL,
  `supplier_view_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acknowledged_flag` tinyint(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `pcard_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `last_opened_at` datetime DEFAULT NULL,
  `payment_term_id` int(11) DEFAULT NULL,
  `shipping_term_id` int(11) DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  `ship_to_attention` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoiced_amount` decimal(30,2) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requisition_header_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_headers_on_account_type_id` (`account_type_id`),
  KEY `index_order_headers_on_created_by` (`created_by`),
  KEY `index_order_headers_on_payment_term_id` (`payment_term_id`),
  KEY `index_order_headers_on_pcard_id` (`pcard_id`),
  KEY `index_order_headers_on_ship_to_address_id` (`ship_to_address_id`),
  KEY `index_order_headers_on_ship_to_user_id` (`ship_to_user_id`),
  KEY `index_order_headers_on_shipping_term_id` (`shipping_term_id`),
  KEY `index_order_headers_on_status` (`status`),
  KEY `index_order_headers_on_supplier_id` (`supplier_id`),
  KEY `index_order_headers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_headers`
--

LOCK TABLES `order_headers` WRITE;
/*!40000 ALTER TABLE `order_headers` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line_allocations`
--

DROP TABLE IF EXISTS `order_line_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_header_id` int(11) DEFAULT NULL,
  `order_line_id` int(11) DEFAULT NULL,
  `req_line_allocation_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `pct` decimal(8,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_line_allocations_on_account_id` (`account_id`),
  KEY `index_order_line_allocations_on_account_type_id` (`account_type_id`),
  KEY `index_order_line_allocations_on_order_header_id` (`order_header_id`),
  KEY `index_order_line_allocations_on_order_line_id` (`order_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line_allocations`
--

LOCK TABLES `order_line_allocations` WRITE;
/*!40000 ALTER TABLE `order_line_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line_versions`
--

DROP TABLE IF EXISTS `order_line_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_line_id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `order_header_id` int(11) DEFAULT '0',
  `item_id` int(11) DEFAULT NULL,
  `price` decimal(30,4) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `line_num` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `form_response_id` int(11) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `received` decimal(30,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `versioned_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_header_version_id` int(11) DEFAULT NULL,
  `need_by_date` datetime DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `sub_line_num` int(11) DEFAULT NULL,
  `source_part_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoiced` decimal(30,2) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `supp_aux_part_num` text COLLATE utf8_unicode_ci,
  `commodity_id` int(11) DEFAULT NULL,
  `current_committed_amount` decimal(30,2) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `supplier_order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_line_versions_on_account_id` (`account_id`),
  KEY `index_order_line_versions_on_accounting_total_currency_id` (`accounting_total_currency_id`),
  KEY `index_order_line_versions_on_contract_id` (`contract_id`),
  KEY `index_order_line_versions_on_created_by` (`created_by`),
  KEY `index_order_line_versions_on_currency_id` (`currency_id`),
  KEY `index_order_line_versions_on_form_response_id` (`form_response_id`),
  KEY `index_order_line_versions_on_item_id` (`item_id`),
  KEY `index_order_line_versions_on_milestone_id` (`milestone_id`),
  KEY `index_order_line_versions_on_order_header_id` (`order_header_id`),
  KEY `index_order_line_versions_on_order_header_version_id` (`order_header_version_id`),
  KEY `index_order_line_versions_on_order_line_id` (`order_line_id`),
  KEY `index_order_line_versions_on_supplier_id` (`supplier_id`),
  KEY `index_order_line_versions_on_uom_id` (`uom_id`),
  KEY `index_order_line_versions_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line_versions`
--

LOCK TABLES `order_line_versions` WRITE;
/*!40000 ALTER TABLE `order_line_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_header_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) DEFAULT NULL,
  `price` decimal(30,4) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `line_num` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `form_response_id` int(11) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received` decimal(30,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `accounting_total` decimal(30,2) DEFAULT NULL,
  `accounting_total_currency_id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `need_by_date` datetime DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `sub_line_num` int(11) DEFAULT NULL,
  `source_part_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoiced` decimal(30,2) DEFAULT NULL,
  `supp_aux_part_num` text COLLATE utf8_unicode_ci,
  `department_id` int(11) DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `current_committed_amount` decimal(30,2) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `need_by_notification_sent_at` datetime DEFAULT NULL,
  `savings_pct` decimal(8,2) DEFAULT NULL,
  `online_order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reporting_total` decimal(30,2) DEFAULT NULL,
  `supplier_order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gather_supplier_review_notification_sent_at` datetime DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation_count` int(11) DEFAULT '0',
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_lines_on_account_id` (`account_id`),
  KEY `index_order_lines_on_account_type_id` (`account_type_id`),
  KEY `index_order_lines_on_accounting_total_currency_id` (`accounting_total_currency_id`),
  KEY `index_order_lines_on_allocation_count` (`allocation_count`),
  KEY `index_order_lines_on_commodity_id` (`commodity_id`),
  KEY `index_order_lines_on_contract_id` (`contract_id`),
  KEY `index_order_lines_on_created_by` (`created_by`),
  KEY `index_order_lines_on_currency_id` (`currency_id`),
  KEY `index_order_lines_on_department_id` (`department_id`),
  KEY `index_order_lines_on_form_response_id` (`form_response_id`),
  KEY `index_order_lines_on_item_id` (`item_id`),
  KEY `index_order_lines_on_milestone_id` (`milestone_id`),
  KEY `index_order_lines_on_order_header_id` (`order_header_id`),
  KEY `index_order_lines_on_status` (`status`),
  KEY `index_order_lines_on_supplier_id` (`supplier_id`),
  KEY `index_order_lines_on_uom_id` (`uom_id`),
  KEY `index_order_lines_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_organizations_on_created_by` (`created_by`),
  KEY `index_organizations_on_parent_id` (`parent_id`),
  KEY `index_organizations_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations_users`
--

DROP TABLE IF EXISTS `organizations_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations_users` (
  `organization_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_organizations_users_on_organization_id` (`organization_id`),
  KEY `index_organizations_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations_users`
--

LOCK TABLES `organizations_users` WRITE;
/*!40000 ALTER TABLE `organizations_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_audits`
--

DROP TABLE IF EXISTS `password_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_password` tinyint(1) DEFAULT '0',
  `affects_expiration` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_audits`
--

LOCK TABLES `password_audits` WRITE;
/*!40000 ALTER TABLE `password_audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `personalized_message` text COLLATE utf8_unicode_ci,
  `reply_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_terms`
--

DROP TABLE IF EXISTS `payment_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_for_net_payment` int(11) DEFAULT NULL,
  `days_for_discount_payment` int(11) DEFAULT NULL,
  `discount_rate` float DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_terms`
--

LOCK TABLES `payment_terms` WRITE;
/*!40000 ALTER TABLE `payment_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount_paid` decimal(30,2) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payable_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_payments_on_payable_id` (`payable_id`),
  KEY `index_payments_on_payable_type` (`payable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcards`
--

DROP TABLE IF EXISTS `pcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcards`
--

LOCK TABLES `pcards` WRITE;
/*!40000 ALTER TABLE `pcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periods`
--

DROP TABLE IF EXISTS `periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `segment_1` tinyint(1) DEFAULT NULL,
  `segment_2` tinyint(1) DEFAULT NULL,
  `segment_3` tinyint(1) DEFAULT NULL,
  `segment_4` tinyint(1) DEFAULT NULL,
  `segment_5` tinyint(1) DEFAULT NULL,
  `segment_6` tinyint(1) DEFAULT NULL,
  `segment_7` tinyint(1) DEFAULT NULL,
  `segment_8` tinyint(1) DEFAULT NULL,
  `segment_9` tinyint(1) DEFAULT NULL,
  `segment_10` tinyint(1) DEFAULT NULL,
  `segment_11` tinyint(1) DEFAULT NULL,
  `segment_12` tinyint(1) DEFAULT NULL,
  `segment_13` tinyint(1) DEFAULT NULL,
  `segment_14` tinyint(1) DEFAULT NULL,
  `segment_15` tinyint(1) DEFAULT NULL,
  `segment_16` tinyint(1) DEFAULT NULL,
  `segment_17` tinyint(1) DEFAULT NULL,
  `segment_18` tinyint(1) DEFAULT NULL,
  `segment_19` tinyint(1) DEFAULT NULL,
  `segment_20` tinyint(1) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_periods_on_account_type_id` (`account_type_id`),
  KEY `index_periods_on_created_by` (`created_by`),
  KEY `index_periods_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periods`
--

LOCK TABLES `periods` WRITE;
/*!40000 ALTER TABLE `periods` DISABLE KEYS */;
/*!40000 ALTER TABLE `periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flavor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_permissions_on_action_and_controller` (`action`,`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=8032 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'role','new',NULL,0),(2,'role','list',NULL,0),(3,'role','edit',NULL,0),(4,'role','destroy',NULL,0),(5,'role','show',NULL,0),(6,'role','index',NULL,0),(13,'user','new',NULL,0),(14,'user','delete',NULL,0),(15,'user','list',NULL,0),(16,'user','restore_deleted',NULL,0),(17,'user','forgot_password',NULL,0),(18,'user','delete_user',NULL,0),(19,'sessions','destroy',NULL,0),(20,'user','edit',NULL,0),(21,'user','change_password_for_user',NULL,0),(22,'user','edit_user',NULL,0),(23,'user','signup',NULL,0),(24,'user','show',NULL,0),(25,'user','edit_roles',NULL,0),(26,'sessions','new',NULL,0),(27,'user','home',NULL,0),(28,'user','change_password',NULL,0),(101,'user','registrations',NULL,0),(354,'user','account',NULL,0),(355,'user','req_feed',NULL,0),(486,'user','load_file',NULL,0),(487,'user','bulk_loader',NULL,0),(488,'user','load_progress',NULL,0),(489,'user','index',NULL,0),(490,'user','list_csv',NULL,0),(585,'suppliers','new',NULL,1),(586,'suppliers','list',NULL,1),(587,'suppliers','mini',NULL,1),(588,'suppliers','search',NULL,1),(589,'suppliers','edit',NULL,1),(590,'suppliers','load_file',NULL,1),(591,'suppliers','destroy',NULL,1),(592,'suppliers','bulk_loader',NULL,1),(593,'suppliers','load_progress',NULL,1),(594,'suppliers','create',NULL,1),(595,'suppliers','show',NULL,1),(596,'suppliers','index',NULL,1),(597,'suppliers','show_hierarchy',NULL,1),(599,'suppliers','list_csv',NULL,1),(600,'suppliers','update',NULL,1),(602,'suppliers','auto_complete',NULL,1),(603,'objections','list',NULL,0),(604,'objections','dismiss_objection',NULL,0),(605,'objections','index',NULL,0),(607,'objections','remove_review',NULL,0),(608,'objections','object',NULL,0),(620,'contacts','new',NULL,0),(621,'contacts','list',NULL,0),(622,'contacts','edit',NULL,0),(623,'contacts','vcf',NULL,0),(624,'contacts','destroy',NULL,0),(625,'contacts','create',NULL,0),(626,'contacts','show',NULL,0),(627,'contacts','index',NULL,0),(629,'contacts','update',NULL,0),(631,'uoms','new',NULL,1),(632,'uoms','list',NULL,1),(633,'uoms','edit',NULL,1),(634,'uoms','destroy',NULL,1),(635,'uoms','create',NULL,1),(636,'uoms','show',NULL,1),(637,'uoms','index',NULL,1),(639,'uoms','update',NULL,1),(641,'uoms','auto_complete',NULL,1),(642,'account_types','new',NULL,0),(643,'account_types','list',NULL,0),(644,'account_types','edit',NULL,0),(645,'account_types','destroy',NULL,0),(646,'account_types','create',NULL,0),(647,'account_types','show',NULL,0),(648,'account_types','index',NULL,0),(650,'account_types','update',NULL,0),(652,'catalog_items','new',NULL,1),(653,'catalog_items','list',NULL,1),(654,'catalog_items','mini',NULL,1),(655,'catalog_items','search',NULL,1),(656,'catalog_items','edit',NULL,1),(657,'catalog_items','tags',NULL,1),(658,'catalog_items','destroy',NULL,1),(659,'catalog_items','create',NULL,1),(660,'catalog_items','tags_search',NULL,1),(661,'catalog_items','show',NULL,1),(662,'catalog_items','index',NULL,1),(664,'catalog_items','tags_add',NULL,1),(665,'catalog_items','update',NULL,1),(667,'catalog_items','auto_complete',NULL,1),(668,'tag','search',NULL,0),(669,'tag','add',NULL,0),(672,'tag','remove_taggings',NULL,0),(673,'tag','admin_remove_tagging',NULL,0),(674,'tag','admin',NULL,0),(679,'tag','manage',NULL,1),(683,'tag','index',NULL,0),(685,'tag','portlet',NULL,0),(687,'tag','remove_tagging',NULL,0),(688,'tag','cloud_portlet',NULL,0),(690,'tag','tag_cloud',NULL,0),(693,'tag','admin_remove_taggings',NULL,0),(698,'account','home',NULL,0),(700,'punchout','new',NULL,1),(701,'punchout','list',NULL,1),(702,'punchout','auto_complete_for_contract_name',NULL,1),(703,'punchout','edit',NULL,1),(704,'punchout','related',NULL,1),(705,'punchout','destroy',NULL,1),(706,'punchout','checkout_test',NULL,1),(707,'punchout','create',NULL,1),(708,'punchout','test',NULL,1),(709,'punchout','index',NULL,1),(711,'punchout','go',NULL,1),(712,'punchout','update',NULL,1),(714,'punchout','login',NULL,1),(715,'punchout','checkout',NULL,1),(716,'attachment_links','new',NULL,0),(717,'attachment_links','list',NULL,0),(718,'attachment_links','edit',NULL,0),(719,'attachment_links','destroy',NULL,0),(720,'attachment_links','create',NULL,0),(721,'attachment_links','show',NULL,0),(722,'attachment_links','index',NULL,0),(724,'attachment_links','update',NULL,0),(726,'approval_limits','set_ultimate_approver',NULL,0),(727,'approval_limits','new',NULL,0),(728,'approval_limits','list',NULL,0),(729,'approval_limits','edit',NULL,0),(730,'approval_limits','destroy',NULL,0),(731,'approval_limits','create',NULL,0),(732,'approval_limits','show',NULL,0),(733,'approval_limits','index',NULL,0),(735,'approval_limits','update',NULL,0),(748,'administration','home',NULL,0),(750,'punchin','invalid_credentials',NULL,1),(751,'punchin','override_session',NULL,1),(752,'punchin','start',NULL,1),(753,'punchin','keep_session',NULL,1),(754,'punchin','setup',NULL,1),(767,'order_headers','new',NULL,1),(768,'order_headers','list',NULL,1),(769,'order_headers','create_from_req',NULL,1),(770,'order_headers','mini',NULL,1),(771,'order_headers','search',NULL,1),(772,'order_headers','edit',NULL,1),(773,'order_headers','destroy',NULL,1),(774,'order_headers','supplier_view',NULL,1),(775,'order_headers','create',NULL,1),(776,'order_headers','show',NULL,1),(778,'order_headers','index',NULL,1),(780,'order_headers','update',NULL,1),(781,'order_headers','send_via_email',NULL,1),(783,'attachments','new',NULL,0),(784,'attachments','embedded_list',NULL,0),(785,'attachments','list',NULL,0),(786,'attachments','edit',NULL,0),(788,'attachments','destroy',NULL,0),(789,'attachments','attach',NULL,0),(790,'attachments','create',NULL,0),(791,'attachments','show',NULL,0),(792,'attachments','index',NULL,0),(794,'attachments','update',NULL,0),(806,'projects','new',NULL,0),(807,'projects','list',NULL,0),(808,'projects','edit',NULL,0),(809,'projects','destroy',NULL,0),(810,'projects','create',NULL,0),(811,'projects','show',NULL,0),(812,'projects','index',NULL,0),(814,'projects','update',NULL,0),(816,'approvals','new',NULL,0),(817,'approvals','list',NULL,0),(818,'approvals','edit',NULL,0),(819,'approvals','destroy',NULL,0),(820,'approvals','create',NULL,0),(821,'approvals','show',NULL,0),(822,'approvals','index',NULL,0),(824,'approvals','update',NULL,0),(826,'order_lines','new',NULL,1),(827,'order_lines','list',NULL,1),(828,'order_lines','edit',NULL,1),(829,'order_lines','destroy',NULL,1),(830,'order_lines','create',NULL,1),(831,'order_lines','show',NULL,1),(832,'order_lines','index',NULL,1),(834,'order_lines','update',NULL,1),(846,'account_field_types','new',NULL,0),(847,'account_field_types','list',NULL,0),(848,'account_field_types','edit',NULL,0),(849,'account_field_types','destroy',NULL,0),(850,'account_field_types','create',NULL,0),(851,'account_field_types','show',NULL,0),(852,'account_field_types','index',NULL,0),(854,'account_field_types','update',NULL,0),(857,'buying','update_contracts',NULL,0),(858,'buying','change_billing',NULL,0),(859,'buying','pool_feed',NULL,0),(863,'buying','edit',NULL,0),(864,'buying','index',NULL,0),(867,'buying','tabs',NULL,0),(870,'buying','update',NULL,0),(874,'buying','pool',NULL,0),(875,'policies','new',NULL,1),(876,'policies','list',NULL,1),(877,'policies','search',NULL,1),(878,'policies','edit',NULL,1),(879,'policies','related',NULL,1),(880,'policies','destroy',NULL,1),(881,'policies','create',NULL,1),(882,'policies','show',NULL,1),(883,'policies','index',NULL,1),(885,'policies','update',NULL,1),(887,'search','results',NULL,0),(888,'search','tag',NULL,0),(889,'search','header',NULL,0),(892,'requisition_line_templates','new',NULL,1),(894,'requisition_line_templates','update_contracts',NULL,1),(895,'requisition_line_templates','list',NULL,1),(897,'requisition_line_templates','edit',NULL,1),(898,'requisition_line_templates','related',NULL,1),(899,'requisition_line_templates','destroy',NULL,1),(900,'requisition_line_templates','add_to_requisition',NULL,1),(901,'requisition_line_templates','create',NULL,1),(904,'requisition_line_templates','show',NULL,1),(905,'requisition_line_templates','index',NULL,1),(910,'requisition_line_templates','update',NULL,1),(913,'requisition_line_templates','admin_related',NULL,1),(915,'forms','new',NULL,1),(916,'forms','add_widget',NULL,1),(917,'forms','update_widget_properties',NULL,1),(918,'forms','update_section_properties',NULL,1),(919,'forms','edit',NULL,1),(920,'forms','reorder',NULL,1),(921,'forms','update_form_properties',NULL,1),(922,'forms','create',NULL,1),(923,'forms','remove_container',NULL,1),(924,'forms','add_container',NULL,1),(925,'forms','index',NULL,1),(927,'forms','remove_widget',NULL,1),(928,'forms','update',NULL,1),(930,'forms','set_title',NULL,1),(931,'forms','delete_choice',NULL,1),(932,'inbox','show_content',NULL,0),(933,'inbox','show',NULL,0),(934,'inbox','rss',NULL,0),(935,'inbox','index',NULL,0),(938,'form_responses','popup',NULL,0),(939,'form_responses','update_popup',NULL,0),(940,'form_responses','pop_popup',NULL,0),(943,'product_reviews','manage_destroy',NULL,0),(944,'product_reviews','embedded_list',NULL,0),(945,'product_reviews','embedded_add',NULL,0),(946,'product_reviews','manage_edit',NULL,0),(947,'product_reviews','manage',NULL,1),(948,'product_reviews','embedded_destroy',NULL,0),(951,'contracts','new',NULL,1),(952,'contracts','delete_item',NULL,1),(953,'contracts','list',NULL,1),(954,'contracts','edit',NULL,1),(955,'contracts','destroy',NULL,1),(956,'contracts','create',NULL,1),(957,'contracts','show',NULL,1),(958,'contracts','auto_complete_for_supplier_name',NULL,1),(959,'contracts','index',NULL,1),(961,'contracts','update',NULL,1),(963,'requisition_headers','email_template',NULL,1),(964,'requisition_headers','submit_for_approval',NULL,1),(965,'requisition_headers','new',NULL,1),(967,'requisition_headers','list',NULL,1),(968,'requisition_headers','rss',NULL,1),(970,'requisition_headers','change_billing',NULL,1),(972,'requisition_headers','add',NULL,1),(973,'requisition_headers','edit',NULL,1),(974,'requisition_headers','withdraw',NULL,1),(975,'requisition_headers','ask',NULL,1),(976,'requisition_headers','destroy',NULL,1),(978,'requisition_headers','create',NULL,1),(979,'requisition_headers','menu_add',NULL,1),(980,'requisition_headers','approve',NULL,1),(981,'requisition_headers','clear_cart',NULL,1),(982,'requisition_headers','show',NULL,1),(983,'requisition_headers','save',NULL,1),(984,'requisition_headers','change_shipping',NULL,1),(985,'requisition_headers','index',NULL,1),(986,'requisition_headers','portlet',NULL,1),(989,'requisition_headers','update',NULL,1),(990,'requisition_headers','reject',NULL,1),(991,'requisition_headers','portlet_remove',NULL,1),(992,'requisition_headers','resend',NULL,1),(994,'requisition_headers','edit_cart',NULL,1),(995,'requisition_headers','checkout',NULL,1),(996,'ask','subscribe_from_subscriptions',NULL,0),(997,'ask','answer_question',NULL,0),(998,'ask','add_moderator',NULL,0),(999,'ask','delete_category',NULL,0),(1000,'ask','search',NULL,0),(1001,'ask','open_questions',NULL,0),(1002,'ask','close_question',NULL,0),(1003,'ask','questions',NULL,0),(1004,'ask','remove_moderator',NULL,0),(1005,'ask','moderators',NULL,0),(1006,'ask','subscribe_from_subscribers',NULL,0),(1007,'ask','subscriptions',NULL,0),(1008,'ask','questions_answered',NULL,0),(1009,'ask','delete_question',NULL,0),(1010,'ask','subscribers',NULL,0),(1011,'ask','post_question',NULL,0),(1012,'ask','create_category',NULL,0),(1013,'ask','question',NULL,0),(1014,'ask','categories',NULL,0),(1015,'ask','index',NULL,0),(1016,'ask','unsubscribe_from_subscribers',NULL,0),(1017,'ask','unsubscribe_from_subscriptions',NULL,0),(1018,'ask','portlet',NULL,0),(1019,'ask','closed_questions',NULL,0),(1021,'ask','query',NULL,0),(1022,'ask','set_category_name',NULL,0),(1023,'ask','set_email_notifications',NULL,0),(1025,'ask','questions_asked',NULL,0),(1026,'requisition_lines','new','Add individual requisition line.',1),(1027,'requisition_lines','list',NULL,1),(1028,'requisition_lines','edit','Edit individual requisition line.',1),(1029,'requisition_lines','destroy','Delete individual requisition line.',1),(1030,'requisition_lines','create',NULL,1),(1031,'requisition_lines','show',NULL,1),(1032,'requisition_lines','index',NULL,1),(1034,'requisition_lines','update','Save individual requisition line.',1),(1036,'data_sources','errors',NULL,0),(1037,'data_sources','start',NULL,0),(1038,'data_sources','index',NULL,0),(1041,'accounts','new',NULL,0),(1042,'accounts','list',NULL,0),(1043,'accounts','search',NULL,0),(1044,'accounts','edit',NULL,0),(1045,'accounts','load_file',NULL,0),(1046,'accounts','destroy',NULL,0),(1047,'accounts','update_segments',NULL,0),(1048,'accounts','bulk_loader',NULL,0),(1049,'accounts','choose',NULL,0),(1050,'accounts','load_progress',NULL,0),(1051,'accounts','create',NULL,0),(1052,'accounts','show',NULL,0),(1053,'accounts','index',NULL,0),(1055,'accounts','list_csv',NULL,0),(1056,'accounts','update',NULL,0),(1057,'accounts','update_segment_fields',NULL,0),(1060,'feed','home',NULL,0),(1062,'addresses','new',NULL,0),(1063,'addresses','list',NULL,0),(1064,'addresses','edit',NULL,0),(1065,'addresses','get_address_page',NULL,0),(1066,'addresses','destroy',NULL,0),(1067,'addresses','dialog_form',NULL,0),(1068,'addresses','choose',NULL,0),(1069,'addresses','create',NULL,0),(1070,'addresses','show',NULL,0),(1071,'addresses','index',NULL,0),(1072,'addresses','create_from_dialog',NULL,0),(1074,'addresses','update',NULL,0),(1078,'order_headers','create_from_req_via_email',NULL,1),(1080,'order_headers','sort_order_header_table',NULL,1),(1082,'order_headers','search_order_header_table',NULL,1),(1098,'punchout','update_contract_selector',NULL,1),(1104,'punchout','auto_complete_for_supplier_name',NULL,1),(1114,'contracts','sort_contract_table',NULL,1),(1121,'contracts','search_contract_table',NULL,1),(1144,'periods','open',NULL,0),(1145,'periods','edit',NULL,0),(1146,'periods','search_period_table',NULL,0),(1147,'budget_lines','create',NULL,0),(1148,'periods','new',NULL,0),(1149,'periods','update',NULL,0),(1150,'budget_lines','show',NULL,0),(1153,'budget_lines','load_file',NULL,0),(1154,'periods','show',NULL,0),(1156,'periods','update_segments',NULL,0),(1157,'budget_lines','bulk_loader',NULL,0),(1159,'periods','create',NULL,0),(1160,'budget_lines','delete',NULL,0),(1164,'budget_lines','load_progress',NULL,0),(1166,'budget_lines','update',NULL,0),(1167,'budget_lines','search_budget_line_table',NULL,0),(1168,'budget_lines','sort_budget_line_table',NULL,0),(1169,'budget_lines','edit',NULL,0),(1170,'periods','auto_complete_segment',NULL,0),(1173,'budget_lines','new',NULL,0),(1175,'budget_lines','update_budget_segments',NULL,0),(1180,'budget_lines','list_csv',NULL,0),(1181,'periods','delete',NULL,0),(1183,'periods','sort_period_table',NULL,0),(1187,'policies','sort_policy_table',NULL,1),(1194,'policies','search_policy_table',NULL,1),(1206,'reporting','update_segments',NULL,0),(1207,'reporting','req_value_chart',NULL,0),(1212,'reporting','date_range',NULL,0),(1213,'reporting','update_budget_report',NULL,0),(1215,'reporting','index',NULL,1),(1219,'reporting','chart',NULL,0),(1220,'reporting','export',NULL,0),(1222,'reporting','budget',NULL,0),(1243,'account_field_types','sort_account_field_type_table',NULL,0),(1251,'account_field_types','search_account_field_type_table',NULL,0),(1302,'approval_limits','set_requisition_routing',NULL,0),(1344,'suppliers','auto_complete_unfiltered',NULL,1),(1345,'suppliers','search_supplier_table',NULL,1),(1350,'suppliers','sort_supplier_table',NULL,1),(1452,'role','search_role_table',NULL,0),(1458,'role','sort_role_table',NULL,0),(1521,'administration','company',NULL,0),(1524,'administration','feeds',NULL,0),(1534,'administration','update_feeds',NULL,0),(1536,'administration','update_company_info',NULL,0),(1580,'accounts','search_account_table',NULL,0),(1582,'accounts','sort_account_table',NULL,0),(1587,'business_groups','new',NULL,0),(1588,'business_groups','list',NULL,0),(1591,'business_groups','graph',NULL,0),(1592,'business_groups','edit',NULL,0),(1595,'business_groups','destroy',NULL,0),(1599,'business_groups','create',NULL,0),(1601,'business_groups','show',NULL,0),(1602,'business_groups','index',NULL,0),(1606,'business_groups','update',NULL,0),(1608,'business_groups','sort_business_group_table',NULL,0),(1612,'business_groups','search_business_group_table',NULL,0),(1630,'buying','search_requisition_header_table',NULL,0),(1632,'buying','edit_draft_supplier',NULL,0),(1634,'buying','sort_requisition_header_table',NULL,0),(1639,'buying','edit_supplier',NULL,0),(1649,'requisition_headers','new_supplier',NULL,1),(1650,'requisition_headers','search_requisition_header_table',NULL,1),(1653,'requisition_headers','sort_requisition_header_table',NULL,1),(1660,'requisition_headers','new_supplier_form',NULL,1),(1698,'user','edit_business_groups',NULL,0),(1699,'user','sort_user_table',NULL,0),(1700,'user','search_user_table',NULL,0),(1731,'account_types','search_account_type_table',NULL,0),(1747,'account_types','sort_account_type_table',NULL,0),(1748,'reporting','update_mini_segments',NULL,1),(1749,'reporting','update_users',NULL,0),(1750,'reporting','auto_complete_for_search_params_user',NULL,0),(1751,'reporting','auto_complete_for_search_params_supplier',NULL,0),(1752,'search','browse_by_supplier',NULL,0),(1753,'receipts','receive_requisition',NULL,1),(1770,'receipts','update_requisition',NULL,1),(1772,'user','graph',NULL,0),(1773,'requisition_headers','edit_draft_supplier',NULL,1),(1774,'requisition_headers','quick_access',NULL,1),(1775,'requisition_headers','edit_supplier',NULL,1),(1776,'account_types','update_default',NULL,0),(1777,'account_types','auto_complete_for_account_type_currency',NULL,0),(1778,'account_types','add_segment',NULL,0),(1779,'account_approvers','method_missing',NULL,0),(1780,'account_approvers','csv_template',NULL,0),(1781,'account_approvers','auto_complete_for_account_approver_approver',NULL,0),(1782,'account_approvers','add_approver',NULL,0),(1783,'account_approvers','load_file',NULL,0),(1784,'account_approvers','bulk_loader',NULL,0),(1785,'account_approvers','destroy',NULL,0),(1786,'account_approvers','load_progress',NULL,0),(1787,'account_approvers','search_account_approver_table',NULL,0),(1788,'account_approvers','sort_account_approver_table',NULL,0),(1789,'account_approvers','index',NULL,0),(1790,'account_approvers','list_csv',NULL,0),(1791,'account_approvers','update_segment_form',NULL,0),(1792,'punchin','po',NULL,1),(1793,'approval_limits','sort_approval_limit_table',NULL,0),(1794,'approval_limits','search_approval_limit_table',NULL,0),(1795,'approval_limits','auto_complete_for_approval_limit_currency',NULL,0),(1796,'addresses','picker',NULL,0),(1797,'accounts','csv_template',NULL,0),(1798,'accounts','auto_complete',NULL,0),(1799,'user','change_pcard_for_user',NULL,0),(1800,'user','filter_parameters',NULL,0),(1801,'user','auto_complete',NULL,0),(1802,'user','edit_address',NULL,0),(1803,'tax_codes','new',NULL,0),(1804,'tax_codes','sort_tax_code_table',NULL,0),(1805,'tax_codes','create',NULL,0),(1806,'tax_codes','search_tax_code_table',NULL,0),(1807,'tax_codes','index',NULL,0),(1808,'suppliers','new_supplier',NULL,1),(1809,'suppliers','csv_template',NULL,1),(1810,'suppliers','edit_draft_supplier',NULL,1),(1811,'suppliers','edit_supplier',NULL,1),(1812,'suppliers','new_supplier_form',NULL,1),(1813,'requisition_lines','popup',NULL,1),(1814,'requisition_lines','update_popup',NULL,1),(1815,'requisition_lines','pop_popup',NULL,1),(1816,'requisition_line_templates','auto_complete_for_currency_code',NULL,1),(1817,'requisition_headers','change_line_type',NULL,1),(1818,'requisition_headers','add_milestone',NULL,1),(1820,'receipts','list',NULL,1),(1821,'receipts','asset_tags_popup',NULL,1),(1822,'receipts','set_asset_tags',NULL,1),(1823,'receipts','update_requisitions',NULL,1),(1824,'receipts','asset_received_popup',NULL,1),(1825,'receipts','search_requisition_line_table',NULL,1),(1826,'receipts','sort_requisition_line_table',NULL,1),(1827,'receipts','index',NULL,1),(1828,'receipts','set_asset_tags_received',NULL,1),(1829,'quotes','new_response',NULL,1),(1830,'quotes','response_line_types',NULL,1),(1831,'quotes','request_line_types',NULL,1),(1832,'quotes','add_response_line',NULL,1),(1833,'quotes','add_quote_supplier',NULL,1),(1834,'quotes','rfq_manager',NULL,1),(1835,'quotes','edit_response',NULL,1),(1836,'quotes','search_quote_request_table',NULL,1),(1837,'quotes','sort_quote_request_table',NULL,1),(1838,'quotes','new_request',NULL,1),(1839,'quotes','delete_request',NULL,1),(1840,'quotes','update_response',NULL,1),(1841,'quotes','add_request_line',NULL,1),(1842,'quotes','update_request',NULL,1),(1843,'quotes','index',NULL,1),(1844,'quotes','edit_request',NULL,1),(1845,'quotes','auto_complete_for_quote_supplier_name',NULL,1),(1846,'quotes','view_request',NULL,1),(1847,'policies','set_default_policy',NULL,1),(1848,'payment_terms','new',NULL,1),(1849,'payment_terms','search_payment_term_table',NULL,1),(1850,'payment_terms','sort_payment_term_table',NULL,1),(1851,'payment_terms','create',NULL,1),(1852,'payment_terms','index',NULL,1),(1853,'order_headers','add_comment',NULL,1),(1854,'order_headers','cancel',NULL,1),(1855,'order_headers','acknowledge',NULL,1),(1856,'exchange_rates','new',NULL,0),(1857,'exchange_rates','list',NULL,0),(1858,'exchange_rates','get_rates',NULL,0),(1859,'exchange_rates','sort_exchange_rate_table',NULL,0),(1860,'exchange_rates','load_file',NULL,0),(1861,'exchange_rates','bulk_loader',NULL,0),(1862,'exchange_rates','auto_complete_for_exchange_rate_from_currency',NULL,0),(1863,'exchange_rates','auto_complete_for_exchange_rate_to_currency',NULL,0),(1864,'exchange_rates','create',NULL,0),(1865,'exchange_rates','load_progress',NULL,0),(1866,'exchange_rates','index',NULL,0),(1867,'exchange_rates','search_exchange_rate_table',NULL,0),(1868,'exchange_rates','list_csv',NULL,0),(1869,'invoices','search_order_line_table',NULL,1),(1870,'invoices','default_tax_info',NULL,1),(1871,'invoices','add_blank_line',NULL,1),(1872,'invoices','list',NULL,1),(1873,'invoices','edit',NULL,1),(1874,'invoices','sort_order_line_table',NULL,1),(1875,'invoices','change_line_type',NULL,1),(1876,'invoices','destroy',NULL,1),(1877,'invoices','pick_lines',NULL,1),(1878,'invoices','update_tolerances',NULL,1),(1879,'invoices','flip_po',NULL,1),(1880,'invoices','show',NULL,1),(1881,'invoices','add_line',NULL,1),(1882,'invoices','index',NULL,1),(1883,'invoices','sort_invoice_header_table',NULL,1),(1884,'invoices','render_tolerances_form',NULL,1),(1885,'invoices','search_invoice_header_table',NULL,1),(1886,'invoices','update',NULL,1),(1887,'invoices','tolerances',NULL,1),(1888,'forms','set_active',NULL,1),(1889,'currencies','list',NULL,0),(1890,'currencies','sort_currency_table',NULL,0),(1891,'currencies','search_currency_table',NULL,0),(1892,'currencies','show',NULL,0),(1893,'currencies','enable',NULL,0),(1894,'currencies','index',NULL,0),(1895,'contracts','gallery_summary',NULL,1),(1896,'buying','add_milestone',NULL,0),(2352,'administration','search_address_table',NULL,0),(2353,'administration','sort_address_table',NULL,0),(2354,'administration','new_address',NULL,0),(2355,'administration','update_address',NULL,0),(2356,'administration','edit_address',NULL,0),(2357,'administration','create_address',NULL,0),(2358,'requisition_line_templates','search_requisition_line_template_table',NULL,1),(2359,'requisition_line_templates','sort_requisition_line_template_table',NULL,1),(2360,'requisition_line_templates','options_from_collection_for_select',NULL,1),(2361,'requisition_headers','reject_popup',NULL,1),(2362,'quotes','compare_responses',NULL,1),(2363,'quotes','create_supplier',NULL,1),(2364,'quotes','rtf',NULL,1),(2365,'quotes','view_response',NULL,1),(2366,'quotes','transfer_to_requisition',NULL,1),(2367,'quotes','activate_supplier',NULL,1),(2368,'quotes','supplier_view',NULL,1),(2369,'quotes','order_from_quote',NULL,1),(2370,'quotes','delete_response',NULL,1),(2371,'accounts','pick',NULL,0),(2372,'accounts','picker',NULL,0),(2373,'accounts','picker_search',NULL,0),(2374,'accounts','picker_update_segment_fields',NULL,0),(2375,'forms','update_tabform_properties',NULL,1),(2376,'forms','add_choice',NULL,1),(2377,'catalog_headers','new',NULL,0),(2378,'catalog_headers','list',NULL,0),(2379,'catalog_headers','edit',NULL,0),(2380,'catalog_headers','destroy',NULL,0),(2381,'catalog_headers','create',NULL,0),(2382,'catalog_headers','show',NULL,0),(2383,'catalog_headers','index',NULL,0),(2384,'catalog_headers','update',NULL,0),(2385,'buying','approve_and_submit',NULL,0),(2386,'buying','change_line_type',NULL,0),(2387,'buying','options_from_collection_for_select',NULL,0),(2388,'tasks','new',NULL,0),(2389,'tasks','list',NULL,0),(2390,'tasks','edit',NULL,0),(2391,'tasks','destroy',NULL,0),(2392,'tasks','create',NULL,0),(2393,'tasks','show',NULL,0),(2394,'tasks','index',NULL,0),(2395,'tasks','update',NULL,0),(2396,'suppliers','po_send_methods',NULL,1),(2397,'suppliers','invoice_matching_levels',NULL,1),(2398,'uoms','sort_uom_table',NULL,1),(2399,'uoms','search_uom_table',NULL,1),(2400,'invoices','toggle_taxation',NULL,1),(2401,'invoices','approve',NULL,1),(2402,'user','change_status',NULL,0),(2404,'buying','activate_supplier','',0),(2947,'forms','sort_form_table',NULL,1),(2948,'forms','destroy',NULL,1),(2949,'forms','search_form_table',NULL,1),(2950,'requisition_headers','update_page_tag',NULL,1),(2951,'requisition_headers','form_remote_for',NULL,1),(2952,'requisition_headers','remote_form_for',NULL,1),(2953,'requisition_headers','observe_form',NULL,1),(2954,'requisition_headers','evaluate_remote_response',NULL,1),(2955,'requisition_headers','update_element_function_with_deprecation',NULL,1),(2956,'requisition_headers','observe_field',NULL,1),(2957,'requisition_headers','update_page',NULL,1),(2958,'requisition_headers','link_to_remote',NULL,1),(2959,'requisition_headers','form_remote_tag',NULL,1),(2960,'requisition_headers','update_element_function',NULL,1),(2961,'requisition_headers','submit_to_remote',NULL,1),(2962,'requisition_headers','update_element_function_without_deprecation',NULL,1),(2963,'requisition_headers','periodically_call_remote',NULL,1),(2964,'requisition_headers','remote_function',NULL,1),(2965,'reporting','export_to',NULL,1),(2966,'reporting','update_statuses',NULL,0),(2967,'buying','remove',NULL,0),(2968,'quotes','invited_suppliers',NULL,1),(2969,'invoices','remove',NULL,1),(2970,'invoices','pool',NULL,1),(2971,'budget_lines','show_owned',NULL,0),(2972,'administration','remove_logo',NULL,0),(2973,'catalog_items','search_catalog_item_table',NULL,1),(2974,'catalog_items','load_file',NULL,1),(2975,'catalog_items','bulk_loader',NULL,1),(2977,'catalog_items','sort_catalog_item_table',NULL,1),(2978,'catalog_items','list_csv',NULL,1),(2979,'attachments','retrieve',NULL,0),(2980,'ask','sort_ask_category_table',NULL,0),(2981,'ask','search_ask_category_table',NULL,0),(2982,'ask','auto_complete_for_moderator_user',NULL,0),(2983,'delegate_approvals','edit_delegate',NULL,1),(2984,'delegate_approvals','update_delegate',NULL,0),(2985,'delegate_approvals','destroy',NULL,0),(2986,'delegate_approvals','search_approval_delegate_table',NULL,0),(2987,'delegate_approvals','sort_approval_delegate_table',NULL,0),(2988,'delegate_approvals','manage_delegates',NULL,0),(2989,'delegate_approvals','admin_update_delegate',NULL,0),(2990,'delegate_approvals','admin_destroy',NULL,0),(3016,'accounts','choose_default',NULL,0),(3017,'accounts','set_default',NULL,0),(3018,'accounts','default_search',NULL,0),(3019,'requisition_headers','update_department',NULL,1),(3020,'account_field_types','validation_type',NULL,0),(3021,'buying','update_department',NULL,0),(3022,'buying','select_item',NULL,0),(3023,'addresses','set_default_address',NULL,0),(3024,'ask','update_category_name',NULL,0),(3025,'ask','category_name',NULL,0),(3026,'ask','destroy',NULL,0),(3027,'departments','new',NULL,0),(3028,'departments','list',NULL,0),(3030,'departments','edit',NULL,0),(3031,'departments','load_file',NULL,0),(3033,'departments','bulk_loader',NULL,0),(3035,'departments','load_progress',NULL,0),(3036,'departments','create',NULL,0),(3037,'departments','index',NULL,0),(3038,'departments','auto_complete',NULL,0),(3039,'departments','update',NULL,0),(3040,'departments','list_csv',NULL,0),(3041,'approver','search_requisition_header_table',NULL,0),(3042,'approver','reject_popup',NULL,0),(3043,'approver','edit_draft_supplier',NULL,0),(3044,'approver','edit',NULL,0),(3045,'approver','change_line_type',NULL,0),(3046,'approver','sort_requisition_header_table',NULL,0),(3047,'approver','select_item',NULL,0),(3048,'approver','toggle_line_level_accounting',NULL,0),(3049,'approver','edit_supplier',NULL,0),(3050,'approver','approve',NULL,0),(3052,'approver','add_milestone',NULL,0),(3053,'approver','pick_account',NULL,0),(3054,'approver','remove_line',NULL,0),(3055,'approver','options_from_collection_for_select',NULL,0),(3056,'approver','update',NULL,0),(3057,'approver','reject',NULL,0),(3058,'buying','toggle_line_level_accounting',NULL,0),(3059,'buying','pick_account',NULL,0),(3060,'requisition_headers','add_approver',NULL,1),(3061,'requisition_headers','toggle_line_level_accounting',NULL,1),(3062,'requisition_headers','pick_account',NULL,1),(3063,'approval_chains','add',NULL,0),(3064,'setup','get',NULL,0),(3065,'setup','set',NULL,0),(3066,'departments','search_department_table',NULL,0),(3067,'departments','sort_department_table',NULL,0),(3068,'approval_limits','amount',NULL,0),(3069,'approval_chains','new',NULL,0),(3070,'approval_chains','edit',NULL,0),(3071,'approval_chains','add_approver',NULL,0),(3072,'approval_chains','destroy',NULL,0),(3073,'approval_chains','create',NULL,0),(3074,'approval_chains','delete_approver',NULL,0),(3075,'approval_chains','update',NULL,0),(3076,'approval_chains','update_segment_form',NULL,0),(3077,'approval_limits','search_approval_chain_table',NULL,0),(3078,'approval_limits','sort_approval_chain_table',NULL,0),(3079,'addresses','personal',NULL,1),(3080,'approver','change_shipping','',0),(4811,'policies','update_policy_account_segments',NULL,1),(4812,'payment_terms','update_payment_term_account_segments',NULL,1),(4813,'order_headers','update_order_header_account_segments',NULL,1),(4814,'items','new',NULL,1),(4815,'items','remove_reorder_alert',NULL,1),(4816,'items','remove_supplier_item',NULL,1),(4817,'items','add_supplier_item',NULL,1),(4818,'items','update_item_account_segments',NULL,1),(4819,'items','list',NULL,1),(4820,'items','load_file',NULL,1),(4821,'items','edit',NULL,1),(4822,'items','search_item_table',NULL,1),(4823,'items','bulk_loader',NULL,1),(4824,'items','add_reorder_alert',NULL,1),(4825,'items','load_progress',NULL,1),(4826,'items','create',NULL,1),(4827,'items','index',NULL,1),(4828,'items','sort_item_table',NULL,1),(4829,'items','show',NULL,1),(4830,'items','auto_complete',NULL,1),(4831,'items','list_csv',NULL,1),(4832,'items','update',NULL,1),(4833,'items','detail',NULL,1),(4834,'delegate_approvals','update_approval_delegate_account_segments',NULL,0),(4835,'invoices','update_order_line_account_segments',NULL,1),(4836,'invoices','update_invoice_header_account_segments',NULL,1),(4837,'contracts','update_contract_account_segments',NULL,1),(4838,'account_approvers','update_account_approver_account_segments',NULL,0),(4839,'buying','update_requisition_header_account_segments',NULL,0),(4840,'business_groups','update_business_group_account_segments',NULL,0),(4843,'approver','update_requisition_header_account_segments',NULL,0),(4844,'inventory','sort_inventory_balance_table',NULL,1),(4845,'inventory','adjust_balance',NULL,1),(4846,'inventory','transfer_balance',NULL,1),(4847,'inventory','history',NULL,1),(4848,'inventory','sort_inventory_transaction_table',NULL,1),(4849,'inventory','auto_complete_for_inventory_transaction_item',NULL,1),(4850,'inventory','transfer',NULL,1),(4851,'inventory','auto_complete_for_inventory_transaction_to_warehouse',NULL,1),(4852,'inventory','update_inventory_transaction_account_segments',NULL,1),(4853,'inventory','query_onhand',NULL,1),(4854,'inventory','update_inventory_balance_account_segments',NULL,1),(4855,'inventory','create_transfer',NULL,1),(4856,'inventory','search_inventory_transaction_table',NULL,1),(4857,'inventory','create_adjustment',NULL,1),(4858,'inventory','search_inventory_balance_table',NULL,1),(4859,'api_keys','search_api_key_table',NULL,0),(4860,'api_keys','new',NULL,0),(4861,'api_keys','sort_api_key_table',NULL,0),(4862,'api_keys','list',NULL,0),(4863,'api_keys','edit',NULL,0),(4864,'api_keys','bulk_loader',NULL,0),(4865,'api_keys','create',NULL,0),(4866,'api_keys','update_api_key_account_segments',NULL,0),(4867,'api_keys','index',NULL,0),(4868,'api_keys','show',NULL,0),(4869,'api_keys','update',NULL,0),(4870,'inspection_codes','new',NULL,0),(4871,'inspection_codes','list',NULL,0),(4872,'inspection_codes','edit',NULL,0),(4873,'inspection_codes','create',NULL,0),(4874,'inspection_codes','index',NULL,0),(4875,'inspection_codes','show',NULL,0),(4876,'inspection_codes','update_inspection_code_account_segments',NULL,0),(4877,'inspection_codes','search_inspection_code_table',NULL,0),(4878,'inspection_codes','update',NULL,0),(4879,'inspection_codes','sort_inspection_code_table',NULL,0),(4880,'administration','update_address_account_segments',NULL,0),(4881,'account_types','update_account_type_account_segments',NULL,0),(4882,'forms','update_form_account_segments',NULL,1),(4883,'forms','copy',NULL,1),(4884,'uoms','update_uom_account_segments',NULL,1),(4885,'tag','add_tag',NULL,0),(4886,'ask','update_ask_category_account_segments',NULL,0),(4887,'approval_limits','update_approval_chain_account_segments',NULL,0),(4888,'approval_limits','update_approval_limit_account_segments',NULL,0),(4889,'role','update_role_account_segments',NULL,0),(4890,'exchange_rates','update_exchange_rate_account_segments',NULL,0),(4891,'departments','update_department_account_segments',NULL,0),(4892,'currencies','update_currency_account_segments',NULL,0),(4893,'accounts','update_account_account_segments',NULL,0),(4894,'commodities','new',NULL,0),(4895,'commodities','list',NULL,0),(4896,'commodities','load_file',NULL,0),(4897,'commodities','edit',NULL,0),(4898,'commodities','make_editable',NULL,0),(4899,'commodities','bulk_loader',NULL,0),(4900,'commodities','update_name',NULL,0),(4901,'commodities','load_progress',NULL,0),(4902,'commodities','create',NULL,0),(4903,'commodities','index',NULL,0),(4904,'commodities','update_commodity_account_segments',NULL,0),(4905,'commodities','auto_complete',NULL,0),(4906,'commodities','list_csv',NULL,0),(4907,'commodities','cloud_portlet',NULL,0),(4908,'commodities','update',NULL,0),(4909,'commodities','search_commodity_table',NULL,0),(4910,'commodities','sort_commodity_table',NULL,0),(4911,'commodities','update_active',NULL,0),(4912,'account_field_types','update_account_field_type_account_segments',NULL,0),(4916,'inbox','update_notification_account_segments',NULL,0),(4917,'inbox','search_notification_table',NULL,0),(4918,'inbox','sort_notification_table',NULL,0),(4919,'warehouses','new',NULL,1),(4920,'warehouses','update_warehouse_location',NULL,1),(4921,'warehouses','list_warehouse_location',NULL,1),(4922,'warehouses','sort_warehouse_location_table',NULL,1),(4923,'warehouses','show_warehouse_location',NULL,1),(4924,'warehouses','update_warehouse_active_flag',NULL,1),(4925,'warehouses','list',NULL,1),(4926,'warehouses','edit',NULL,1),(4927,'warehouses','update_warehouse_location_account_segments',NULL,1),(4928,'warehouses','update_warehouse_account_segments',NULL,1),(4929,'warehouses','search_warehouse_location_table',NULL,1),(4930,'warehouses','create',NULL,1),(4931,'warehouses','index',NULL,1),(4932,'warehouses','show',NULL,1),(4933,'warehouses','search_warehouse_table',NULL,1),(4934,'warehouses','new_warehouse_location',NULL,1),(4935,'warehouses','update',NULL,1),(4936,'warehouses','create_warehouse_location',NULL,1),(4937,'warehouses','sort_warehouse_table',NULL,1),(4938,'warehouses','edit_warehouse_location',NULL,1),(4939,'requisition_line_templates','update_requisition_line_template_account_segments',NULL,1),(4940,'requisition_headers','set_line_types',NULL,1),(4941,'requisition_headers','update_requisition_header_account_segments',NULL,1),(4942,'requisition_headers','remove_approval',NULL,1),(4943,'warehouse_types','new',NULL,1),(4944,'warehouse_types','list',NULL,1),(4945,'warehouse_types','edit',NULL,1),(4946,'warehouse_types','create',NULL,1),(4947,'warehouse_types','search_warehouse_type_table',NULL,1),(4948,'warehouse_types','sort_warehouse_type_table',NULL,1),(4949,'warehouse_types','index',NULL,1),(4950,'warehouse_types','show',NULL,1),(4951,'warehouse_types','update',NULL,1),(4952,'warehouse_types','update_warehouse_type_account_segments',NULL,1),(4953,'reporting','sort_inventory_balance_table',NULL,0),(4954,'reporting','explode_req',NULL,0),(4955,'reporting','timeline',NULL,0),(4956,'reporting','update_inventory_balance_account_segments',NULL,0),(4957,'reporting','recent',NULL,0),(4958,'reporting','search_inventory_balance_table',NULL,0),(4959,'reporting','inventory',NULL,1),(4960,'warehouse_locations','new',NULL,0),(4961,'warehouse_locations','sort_warehouse_location_table',NULL,0),(4962,'warehouse_locations','autocomplete',NULL,0),(4963,'warehouse_locations','list',NULL,0),(4964,'warehouse_locations','edit',NULL,0),(4965,'warehouse_locations','update_warehouse_location_account_segments',NULL,0),(4966,'warehouse_locations','search_warehouse_location_table',NULL,0),(4967,'warehouse_locations','create',NULL,0),(4968,'warehouse_locations','index',NULL,0),(4969,'warehouse_locations','show',NULL,0),(4970,'warehouse_locations','update',NULL,0),(4971,'user','update_user_account_segments',NULL,0),(4972,'receipts','update_requisition_line_account_segments',NULL,1),(4973,'receipts','auto_complete_for_inventory_transaction_to_warehouse',NULL,1),(4974,'receipts','full_receipt',NULL,1),(4975,'receipts','save_full_receipt',NULL,1),(4976,'tax_codes','update_tax_code_account_segments',NULL,0),(4977,'suppliers','activate_supplier',NULL,1),(4978,'suppliers','update_supplier_account_segments',NULL,1),(4979,'catalog_items','update_catalog_item_account_segments',NULL,1),(4980,'quotes','update_quote_request_account_segments',NULL,1),(4981,'api_items','list',NULL,0),(4982,'api_items','create',NULL,0),(4983,'api_items','index',NULL,0),(4984,'api_items','show',NULL,0),(4985,'api_items','update',NULL,0),(4986,'api_invoices','list',NULL,0),(4987,'api_invoices','create',NULL,0),(4988,'api_invoices','index',NULL,0),(4989,'api_invoices','show',NULL,0),(4990,'api_invoices','update',NULL,0),(4991,'api_docs','index',NULL,0),(4992,'api_docs','show',NULL,0),(4993,'api_accounts','list',NULL,0),(4994,'api_accounts','create',NULL,0),(4995,'api_accounts','index',NULL,0),(4996,'api_accounts','show',NULL,0),(4997,'api_accounts','update',NULL,0),(4998,'administration','index',NULL,0),(4999,'api_users','list',NULL,0),(5000,'api_users','create',NULL,0),(5001,'api_users','index',NULL,0),(5002,'api_users','show',NULL,0),(5003,'api_users','update',NULL,0),(5004,'api_suppliers','list',NULL,0),(5005,'api_suppliers','create',NULL,0),(5006,'api_suppliers','index',NULL,0),(5007,'api_suppliers','show',NULL,0),(5008,'api_suppliers','update',NULL,0),(5009,'inventory','show',NULL,1),(5010,'api_requisitions','list',NULL,0),(5011,'api_requisitions','create',NULL,0),(5012,'api_requisitions','index',NULL,0),(5013,'api_requisitions','show',NULL,0),(5014,'api_requisitions','update',NULL,0),(5015,'api_receipts','list',NULL,0),(5016,'api_receipts','create',NULL,0),(5017,'api_receipts','index',NULL,0),(5018,'api_receipts','show',NULL,0),(5019,'api_receipts','update',NULL,0),(5020,'api_purchase_orders','list',NULL,0),(5021,'api_purchase_orders','create',NULL,0),(5022,'api_purchase_orders','index',NULL,0),(5023,'api_purchase_orders','show',NULL,0),(5024,'api_purchase_orders','update',NULL,0),(5025,'inbox','update_preferences',NULL,0),(5026,'inbox','preferences',NULL,0),(5027,'inbox','destroy',NULL,0),(5028,'workspaces','add',NULL,0),(5029,'workspaces','reorder',NULL,0),(5030,'workspaces','remove',NULL,0),(5031,'warehouse_types','sort_warehouse_location_table',NULL,1),(5032,'warehouse_types','update_warehouse_location_account_segments',NULL,1),(5033,'warehouse_types','search_warehouse_location_table',NULL,1),(5034,'warehouse_types','pick',NULL,1),(5035,'user','search_requisition_header_table',NULL,0),(5036,'user','update_requisition_header_account_segments',NULL,0),(5037,'user','sort_requisition_header_table',NULL,0),(5038,'receipts','sort_inventory_transaction_table',NULL,1),(5039,'receipts','history',NULL,1),(5040,'receipts','update_inventory_transaction_account_segments',NULL,1),(5041,'receipts','show',NULL,1),(5042,'receipts','search_inventory_transaction_table',NULL,1),(5043,'order_headers','asset_tag',NULL,1),(5044,'items','cloud_portlet',NULL,1),(5045,'buying','send_next_approver',NULL,0),(5046,'buying','validate_and_order',NULL,0),(5047,'buying','update_and_order',NULL,0),(5049,'inventory','asset_tracking',NULL,1),(5050,'order_headers','add_line',NULL,1),(5051,'order_headers','add_milestone',NULL,1),(5052,'order_headers','pick_account',NULL,1),(5053,'inventory','update_asset_tag_account_segments',NULL,1),(5054,'inventory','search_asset_tag_table',NULL,1),(5055,'inventory','sort_asset_tag_table',NULL,1),(5056,'inventory','update_asset_tags',NULL,1),(5057,'inbox','default_notification_preference_settings=',NULL,0),(5058,'inbox','default_notification_preference_settings',NULL,0),(5059,'reporting','update_order_line_account_segments',NULL,0),(5061,'reporting','uninvoiced_orders',NULL,1),(5062,'reporting','sort_order_line_table',NULL,0),(5064,'requisition_headers','convert_to_po',NULL,1),(5065,'receipts','update_order_line_account_segments',NULL,1),(5066,'receipts','search_order_line_table',NULL,1),(5067,'receipts','unreceived_orders',NULL,1),(5068,'receipts','sort_order_line_table',NULL,1),(5069,'api_inventory_transactions','list',NULL,0),(5070,'api_inventory_transactions','create',NULL,0),(5071,'api_inventory_transactions','show',NULL,0),(5072,'api_inventory_transactions','index',NULL,0),(5073,'api_inventory_transactions','update',NULL,0),(5976,'buying','pick_address',NULL,0),(5977,'budget_lines','show_sample',NULL,0),(5978,'asset_tags','edit',NULL,0),(5979,'asset_tags','update_asset_tag_account_segments',NULL,0),(5980,'asset_tags','index',NULL,0),(5981,'asset_tags','search_asset_tag_table',NULL,0),(5982,'asset_tags','sort_asset_tag_table',NULL,0),(5983,'administration','security',NULL,0),(5984,'administration','update_security',NULL,0),(5985,'administration','destroy_address',NULL,0),(5986,'administration','deactivate_address',NULL,0),(5987,'addresses','deactivate',NULL,0),(5988,'account_types','deactivate',NULL,0),(5989,'uoms','deactivate',NULL,1),(5990,'exchange_rates','show_sample',NULL,0),(5991,'departments','show_sample',NULL,0),(5992,'data_table','update_columns',NULL,0),(5993,'data_table','add_condition',NULL,0),(5994,'data_table','save_sort',NULL,0),(5995,'data_table','edit_columns',NULL,0),(5996,'data_table','update_data_table_account_segments',NULL,0),(5997,'data_table','update_condition_clause',NULL,0),(5998,'data_table','update_table',NULL,0),(5999,'data_table','update_conditions',NULL,0),(6000,'data_table','edit',NULL,0),(6001,'data_table','sort_data_table',NULL,0),(6002,'data_table','edit_graphics',NULL,0),(6003,'data_table','update_column_order',NULL,0),(6004,'data_table','edit_conditions',NULL,0),(6005,'data_table','edit_grouping',NULL,0),(6006,'data_table','reorder_columns',NULL,0),(6007,'data_table','index',NULL,0),(6008,'data_table','show',NULL,0),(6009,'data_table','update_grouping',NULL,0),(6011,'data_table','update_column_table',NULL,0),(6012,'data_table','search_data_table',NULL,0),(6013,'data_table','edit_filters',NULL,0),(6014,'accounts','deactivate',NULL,0),(6015,'accounts','show_sample',NULL,0),(6016,'commodities','show_sample',NULL,0),(6017,'suppliers','deactivate',NULL,1),(6018,'suppliers','show_sample',NULL,1),(6019,'supplier_order_headers','update_order_header_account_segments',NULL,0),(6020,'supplier_order_headers','list',NULL,0),(6021,'supplier_order_headers','sort_order_header_table',NULL,0),(6022,'supplier_order_headers','search_order_header_table',NULL,0),(6023,'supplier_order_headers','index',NULL,0),(6024,'supplier_order_headers','show',NULL,0),(6025,'supplier_invoices','default_tax_info',NULL,0),(6026,'supplier_invoices','list',NULL,0),(6027,'supplier_invoices','toggle_taxation',NULL,0),(6028,'supplier_invoices','edit',NULL,0),(6029,'supplier_invoices','flip_po',NULL,0),(6030,'supplier_invoices','update_invoice_header_account_segments',NULL,0),(6032,'supplier_invoices','index',NULL,0),(6033,'supplier_invoices','show',NULL,0),(6034,'supplier_invoices','sort_invoice_header_table',NULL,0),(6035,'supplier_invoices','remove',NULL,0),(6036,'supplier_invoices','search_invoice_header_table',NULL,0),(6037,'supplier_invoices','update',NULL,0),(6038,'requisition_headers','pick_address',NULL,1),(6039,'requisition_headers','copy',NULL,1),(6040,'quotes','pick_address',NULL,1),(6041,'items','show_sample',NULL,1),(6042,'user','update_order_header_account_segments',NULL,0),(6043,'user','ping',NULL,0),(6044,'user','session_alert',NULL,0),(6045,'user','sort_order_header_table',NULL,0),(6046,'user','search_order_header_table',NULL,0),(6047,'user','show_sample',NULL,0),(6048,'user','update_invoice_header_account_segments',NULL,0),(6049,'user','sort_invoice_header_table',NULL,0),(6050,'user','search_invoice_header_table',NULL,0),(6051,'order_headers','pick_address',NULL,1),(6052,'order_headers','email_bug',NULL,1),(6053,'asset_tags','update',NULL,0),(6054,'approver','pick_address',NULL,0),(6055,'accounts','new_popup',NULL,0),(6056,'shipping_terms','new',NULL,1),(6057,'shipping_terms','sort_shipping_term_table',NULL,1),(6058,'shipping_terms','list',NULL,1),(6059,'shipping_terms','edit',NULL,1),(6060,'shipping_terms','update_shipping_term_account_segments',NULL,1),(6061,'shipping_terms','create',NULL,1),(6062,'shipping_terms','index',NULL,1),(6063,'shipping_terms','show',NULL,1),(6064,'shipping_terms','update',NULL,1),(6065,'shipping_terms','search_shipping_term_table',NULL,1),(6066,'payment_terms','list',NULL,1),(6067,'payment_terms','edit',NULL,1),(6068,'payment_terms','show',NULL,1),(6069,'payment_terms','update',NULL,1),(6070,'invoices','portlet_remove',NULL,1),(6072,'now_you_knows','remove',NULL,0),(6073,'forms','load_now_you_knows',NULL,1),(6074,'form_responses','load_now_you_knows',NULL,0),(6075,'delegate_approvals','load_now_you_knows',NULL,0),(6076,'data_sources','load_now_you_knows',NULL,0),(6077,'contracts','load_now_you_knows',NULL,1),(6078,'catalog_headers','load_now_you_knows',NULL,0),(6079,'buying','load_now_you_knows',NULL,0),(6080,'api_purchase_orders','load_now_you_knows',NULL,0),(6081,'api_keys','load_now_you_knows',NULL,0),(6082,'budget_lines','load_now_you_knows',NULL,0),(6083,'api_items','load_now_you_knows',NULL,0),(6084,'api_invoices','load_now_you_knows',NULL,0),(6085,'api_inventory_transactions','load_now_you_knows',NULL,0),(6086,'api_docs','load_now_you_knows',NULL,0),(6087,'business_groups','load_now_you_knows',NULL,0),(6088,'asset_tags','load_now_you_knows',NULL,0),(6089,'api_accounts','load_now_you_knows',NULL,0),(6090,'account_approvers','load_now_you_knows',NULL,0),(6091,'administration','load_now_you_knows',NULL,0),(6092,'addresses','update_address_account_segments',NULL,0),(6093,'addresses','search_address_table',NULL,0),(6094,'addresses','sort_address_table',NULL,0),(6095,'addresses','load_now_you_knows',NULL,0),(6096,'account_types','load_now_you_knows',NULL,0),(6097,'approver','load_now_you_knows',NULL,0),(6098,'approval_chains','load_now_you_knows',NULL,0),(6099,'api_users','load_now_you_knows',NULL,0),(6100,'api_suppliers','load_now_you_knows',NULL,0),(6101,'api_requisitions','load_now_you_knows',NULL,0),(6102,'api_receipts','load_now_you_knows',NULL,0),(6104,'uoms','load_now_you_knows',NULL,1),(6105,'tag','load_now_you_knows',NULL,0),(6106,'attachments','load_now_you_knows',NULL,0),(6107,'setup','load_now_you_knows',NULL,0),(6108,'ask','load_now_you_knows',NULL,0),(6109,'role','load_now_you_knows',NULL,0),(6110,'role','copy',NULL,0),(6111,'approval_limits','load_now_you_knows',NULL,0),(6112,'punchin','load_now_you_knows',NULL,1),(6113,'product_reviews','load_now_you_knows',NULL,0),(6114,'exchange_rates','load_now_you_knows',NULL,0),(6115,'departments','load_now_you_knows',NULL,0),(6116,'data_table','load_now_you_knows',NULL,0),(6117,'currencies','load_now_you_knows',NULL,0),(6118,'contacts','load_now_you_knows',NULL,0),(6119,'accounts','load_now_you_knows',NULL,0),(6120,'commodities','load_now_you_knows',NULL,0),(6121,'account_field_types','load_now_you_knows',NULL,0),(6122,'warehouses','load_now_you_knows',NULL,1),(6123,'warehouse_types','load_now_you_knows',NULL,1),(6124,'supplier_invoices','load_now_you_knows',NULL,0),(6125,'feed','load_now_you_knows',NULL,0),(6126,'shipping_terms','load_now_you_knows',NULL,1),(6127,'warehouse_locations','load_now_you_knows',NULL,0),(6128,'search','load_now_you_knows',NULL,0),(6129,'requisition_lines','update_requisition_line_account_segments',NULL,1),(6130,'requisition_lines','load_now_you_knows',NULL,1),(6131,'requisition_lines','search_requisition_line_table',NULL,1),(6132,'requisition_lines','sort_requisition_line_table',NULL,1),(6133,'user','load_now_you_knows',NULL,0),(6134,'requisition_line_templates','load_now_you_knows',NULL,1),(6135,'requisition_headers','load_now_you_knows',NULL,1),(6136,'tax_codes','load_now_you_knows',NULL,0),(6137,'quotes','load_now_you_knows',NULL,1),(6138,'tasks','load_now_you_knows',NULL,0),(6139,'reporting','load_now_you_knows',NULL,0),(6140,'punchout','load_now_you_knows',NULL,1),(6141,'projects','load_now_you_knows',NULL,0),(6142,'catalog_items','load_now_you_knows',NULL,1),(6143,'policies','load_now_you_knows',NULL,1),(6144,'suppliers','load_now_you_knows',NULL,1),(6145,'items','load_now_you_knows',NULL,1),(6146,'payment_terms','load_now_you_knows',NULL,1),(6147,'order_headers','load_now_you_knows',NULL,1),(6148,'supplier_order_headers','load_now_you_knows',NULL,0),(6149,'receipts','search_txn_order_line_table',NULL,1),(6150,'receipts','sort_txn_order_line_table',NULL,1),(6151,'receipts','update_txn_order_line_account_segments',NULL,1),(6152,'receipts','load_now_you_knows',NULL,1),(6153,'objections','load_now_you_knows',NULL,0),(6154,'invoices','load_now_you_knows',NULL,1),(6155,'now_you_knows','new',NULL,0),(6156,'now_you_knows','update_now_you_know_account_segments',NULL,0),(6157,'now_you_knows','list',NULL,0),(6158,'now_you_knows','edit',NULL,0),(6159,'now_you_knows','create',NULL,0),(6160,'now_you_knows','load_now_you_knows',NULL,0),(6161,'now_you_knows','show',NULL,0),(6162,'now_you_knows','index',NULL,0),(6163,'now_you_knows','search_now_you_know_table',NULL,0),(6164,'now_you_knows','sort_now_you_know_table',NULL,0),(6165,'now_you_knows','update',NULL,0),(6166,'inventory','load_now_you_knows',NULL,1),(6167,'inventory','asset_tag_template',NULL,1),(6168,'inspection_codes','load_now_you_knows',NULL,0),(6169,'inbox','load_now_you_knows',NULL,0),(6170,'hidden_administration','load_now_you_knows',NULL,0),(6171,'hidden_administration','index',NULL,0),(6172,'hidden_administration','set_debug_options',NULL,0),(6173,'exchange_rates','currencies_needed',NULL,0),(6174,'data_table','new_view',NULL,0),(6175,'data_table','create_view',NULL,0),(6176,'data_table','list_csv',NULL,0),(6177,'data_table','edit_view',NULL,0),(6178,'data_table','update_view',NULL,0),(6179,'order_headers','order_header_list_csv',NULL,1),(6180,'contracts','contract_list_csv',NULL,1),(6181,'periods','period_list_csv',NULL,0),(6182,'budget_lines','budget_line_list_csv',NULL,0),(6183,'policies','policy_list_csv',NULL,1),(6184,'account_field_types','account_field_type_list_csv',NULL,0),(6185,'suppliers','supplier_list_csv',NULL,1),(6186,'role','role_list_csv',NULL,0),(6187,'accounts','account_list_csv',NULL,0),(6188,'business_groups','business_group_list_csv',NULL,0),(6189,'buying','requisition_header_list_csv',NULL,0),(6190,'requisition_headers','requisition_header_list_csv',NULL,1),(6191,'user','user_list_csv',NULL,0),(6192,'account_types','account_type_list_csv',NULL,0),(6193,'account_approvers','account_approver_list_csv',NULL,0),(6194,'approval_limits','approval_limit_list_csv',NULL,0),(6195,'tax_codes','tax_code_list_csv',NULL,0),(6196,'receipts','requisition_line_list_csv',NULL,1),(6197,'quotes','quote_request_list_csv',NULL,1),(6198,'payment_terms','payment_term_list_csv',NULL,1),(6199,'exchange_rates','exchange_rate_list_csv',NULL,0),(6200,'invoices','order_line_list_csv',NULL,1),(6201,'invoices','invoice_header_list_csv',NULL,1),(6202,'currencies','currency_list_csv',NULL,0),(6203,'administration','address_list_csv',NULL,0),(6204,'requisition_line_templates','requisition_line_template_list_csv',NULL,1),(6205,'uoms','uom_list_csv',NULL,1),(6206,'forms','form_list_csv',NULL,1),(6207,'catalog_items','catalog_item_list_csv',NULL,1),(6208,'ask','ask_category_list_csv',NULL,0),(6209,'delegate_approvals','approval_delegate_list_csv',NULL,0),(6210,'approver','requisition_header_list_csv',NULL,0),(6211,'departments','department_list_csv',NULL,0),(6212,'approval_limits','approval_chain_list_csv',NULL,0),(6213,'items','item_list_csv',NULL,1),(6214,'inventory','inventory_transaction_list_csv',NULL,1),(6215,'inventory','inventory_balance_list_csv',NULL,1),(6216,'api_keys','api_key_list_csv',NULL,0),(6217,'inspection_codes','inspection_code_list_csv',NULL,0),(6218,'commodities','commodity_list_csv',NULL,0),(6219,'inbox','notification_list_csv',NULL,0),(6220,'warehouses','warehouse_location_list_csv',NULL,1),(6221,'warehouses','warehouse_list_csv',NULL,1),(6222,'warehouse_types','warehouse_type_list_csv',NULL,1),(6223,'reporting','inventory_balance_list_csv',NULL,0),(6224,'warehouse_locations','warehouse_location_list_csv',NULL,0),(6225,'warehouse_types','warehouse_location_list_csv',NULL,1),(6226,'user','requisition_header_list_csv',NULL,0),(6227,'receipts','inventory_transaction_list_csv',NULL,1),(6228,'inventory','asset_tag_list_csv',NULL,1),(6230,'receipts','order_line_list_csv',NULL,1),(6231,'asset_tags','asset_tag_list_csv',NULL,0),(6232,'data_table','data_list_csv',NULL,0),(6233,'supplier_order_headers','order_header_list_csv',NULL,0),(6234,'supplier_invoices','invoice_header_list_csv',NULL,0),(6235,'user','order_header_list_csv',NULL,0),(6236,'user','invoice_header_list_csv',NULL,0),(6237,'shipping_terms','shipping_term_list_csv',NULL,1),(6238,'addresses','address_list_csv',NULL,0),(6239,'requisition_lines','requisition_line_list_csv',NULL,1),(6240,'receipts','txn_order_line_list_csv',NULL,1),(6241,'now_you_knows','now_you_know_list_csv',NULL,0),(6242,'data_table','destroy_view',NULL,0),(6243,'contracts','retrieve_legal_agreement',NULL,1),(6244,'invoices','retrieve_image_scan',NULL,1),(6245,'supplier_invoices','retrieve_image_scan',NULL,0),(6246,'supplier_order_headers','acknowledge',NULL,0),(6247,'inbox','hide',NULL,0),(6248,'inbox','unhide',NULL,0),(6269,'supplier_items','index',NULL,1),(6271,'invoice_lines','index',NULL,1),(6272,'supplier_items','search_supplier_item_table',NULL,0),(6273,'supplier_items','supplier_item_list_csv',NULL,0),(6274,'invoice_lines','search_invoice_line_table',NULL,1),(6275,'invoice_lines','invoice_line_list_csv',NULL,1),(6276,'reporting','search_order_line_table',NULL,0),(6277,'reporting','order_line_list_csv',NULL,0),(6397,'credit_cards','index',NULL,2),(6398,'credit_cards','new',NULL,2),(6399,'credit_cards','create',NULL,2),(6400,'credit_cards','edit',NULL,2),(6401,'credit_cards','update',NULL,2),(6402,'credit_cards','show',NULL,2),(6403,'credit_cards','destroy',NULL,2),(6404,'credit_cards','auto_complete_for_credit_card_credit_card_type',NULL,2),(6406,'credit_cards','search_credit_card_transaction_table',NULL,2),(6407,'credit_cards','refresh',NULL,2),(6408,'credit_cards','search_wallet',NULL,2),(6409,'credit_cards','credit_card_details_form',NULL,2),(6410,'credit_cards','check_refresh_status',NULL,2),(6411,'credit_cards','cancel_refresh',NULL,2),(6412,'credit_card_transactions','index',NULL,2),(6413,'credit_card_transactions','destroy',NULL,2),(6414,'credit_card_transactions','search_credit_card_transaction_table',NULL,2),(6415,'credit_card_transactions','add',NULL,2),(6416,'credit_card_transactions','done',NULL,2),(6417,'expense_lines','expense_line_list_csv',NULL,2),(6418,'credit_cards','list',NULL,2),(6616,'punchout','search_punchout_site_table',NULL,1),(6617,'punchout','punchout_site_list_csv',NULL,1),(6618,'order_lines','search_order_line_table',NULL,1),(6619,'order_lines','order_line_list_csv',NULL,1),(6620,'data_table','search_data_table_view_table',NULL,0),(6621,'data_table','data_table_view_list_csv',NULL,0),(6622,'invoices','void','void an invoice line',1),(6624,'order_headers','close','close po',1),(6625,'budget_lines','index',NULL,0),(6626,'periods','index',NULL,0),(6627,'budget_lines','search_budget_line_adjustment_table',NULL,0),(6628,'budget_lines','sort_budget_line_adjustment_table',NULL,0),(6629,'budget_lines','auto_complete_segment',NULL,0),(6630,'buying','pick_budget_period',NULL,0),(6631,'invoices','pick_budget_period',NULL,1),(6632,'order_headers','pick_budget_period',NULL,1),(6633,'requisition_headers','pick_budget_period',NULL,1),(6634,'periods','update_use_periods_on_requisitions',NULL,0),(6635,'budget_lines','show_results',NULL,0),(6636,'invoices','pick_account',NULL,1),(6637,'invoices','save_payment_details',NULL,1),(6638,'invoices','edit_approved_invoice',NULL,1),(6639,'order_lines','close',NULL,1),(6640,'invoice_lines','void',NULL,1),(6642,'suppliers','show_results',NULL,1),(6645,'requisition_headers','save_and_add_line','Save individual requisition line and add a new line.',1),(6646,'requisition_headers','cancel_line','Cancel editing individual requisition line.',1),(6647,'requisition_headers','add_attachment_line','Add new file upload line.',1),(6648,'order_headers','send_to_supplier','send po to supplier',1),(6649,'order_headers','po_transmission_popup','choose how to send po to supplier',1),(6650,'order_headers','create_transmission','create a transmission to send po',1),(6654,'buying','cancel_line','Cancel editing individual requisition line.',0),(6655,'requisition_headers','cancel','Cancel editing and goto show.',1),(6656,'requisition_headers','add_header_attachment_line','Add new file upload line.',1),(6657,'inventory','edit',NULL,1),(6658,'inventory','void',NULL,1),(6659,'user','show_results',NULL,0),(6660,'accounts','show_results',NULL,0),(6661,'account_approvers','show_results',NULL,0),(6662,'exchange_rates','show_results',NULL,0),(6663,'catalog_items','show_results',NULL,1),(6664,'departments','show_results',NULL,0),(6665,'items','show_results',NULL,1),(6666,'commodities','show_results',NULL,0),(6667,'user','update',NULL,0),(6670,'requisition_headers','set_on_behalf_of',NULL,1),(6671,'approver','set_on_behalf_of',NULL,0),(6672,'buying','set_on_behalf_of',NULL,0),(6673,'comments','add_comment','Add comments.',0),(6674,'requisition_headers','clear_on_behalf_of',NULL,1),(6675,'approver','clear_on_behalf_of',NULL,0),(6676,'buying','clear_on_behalf_of',NULL,0),(6678,'suppliers','send_invitations',NULL,1),(6679,'suppliers','send_coupa_connect_invitation',NULL,1),(6682,'suppliers','compose_connect_invitation',NULL,1),(6683,'suppliers','compose_connect_invitation_submit',NULL,1),(6684,'order_headers','show_custom',NULL,1),(6685,'supplier_order_headers','show_custom',NULL,0),(6691,'catalogs','index',NULL,0),(6692,'catalogs','edit',NULL,0),(6693,'catalogs','update',NULL,0),(6694,'catalogs','approve',NULL,0),(6695,'catalogs','reject',NULL,0),(6696,'suppliers','supplier_directory',NULL,1),(6697,'catalogs','delete',NULL,0),(6698,'suppliers','connect_to_checkout_supplier',NULL,1),(6699,'requisition_headers','update_budget_warnings',NULL,1),(6700,'suppliers','merge_with_connect',NULL,1),(6701,'approver','add_approver',NULL,0),(6702,'approver','delete_approver',NULL,0),(6703,'supplier_order_headers','search_connect_order_header_table',NULL,0),(6704,'supplier_invoices','search_connect_invoice_header_table',NULL,0),(6705,'order_headers','email_overlay',NULL,1),(6706,'order_headers','email_overlay_edit',NULL,1),(6707,'order_headers','email_overlay_send_email',NULL,1),(6708,'order_headers','print_view',NULL,1),(6709,'approver','update_budget_warnings',NULL,0),(6710,'buying','update_budget_warnings',NULL,0),(6711,'payment_terms','delete_or_deactivate',NULL,1),(6712,'approval_limit','lookup_name',NULL,0),(6714,'suppliers','search_connect_supplier_table',NULL,1),(6715,'suppliers','sort_connect_supplier_table',NULL,1),(6716,'catalogs','search_catalog_table',NULL,0),(6717,'catalogs','sort_catalog_table',NULL,0),(6718,'bookmarklet','add',NULL,0),(6719,'bookmarklet','req_this',NULL,0),(6722,'suppliers','random_password','Generate random password',1),(6723,'suppliers','coupa_email','Generate coupa supplier email',1),(6733,'supplier_reviews','index',NULL,0),(6734,'supplier_reviews','request_review_popup_submit',NULL,0),(6735,'supplier_reviews','request_review_popup',NULL,0),(6736,'shopping_assistant','refresh_widget',NULL,0),(6737,'online_stores','update_order',NULL,0),(6738,'online_stores','navigation',NULL,0),(6739,'online_stores','show',NULL,0),(6740,'user','requisition_this',NULL,1),(6741,'dashboard','index',NULL,0),(6742,'dashboard','liquidity',NULL,0),(6743,'dashboard','spend_metrics',NULL,1),(6744,'dashboard','supplier_performance',NULL,0),(6745,'dashboard','update_budgets',NULL,0),(6746,'dashboard','update_invoice_value',NULL,0),(6747,'dashboard','update_late_deliveries',NULL,0),(6748,'dashboard','update_metrics',NULL,0),(6749,'dashboard','update_over_invoiced',NULL,0),(6750,'dashboard','update_pie_chart',NULL,0),(6751,'dashboard','update_spend',NULL,0),(6752,'spend_alerts','create',NULL,0),(6753,'spend_alerts','delete',NULL,0),(6754,'spend_alerts','index',NULL,0),(6755,'spend_alerts','new',NULL,0),(6756,'budget_lines','new_alert',NULL,0),(6757,'budget_lines','create_alert',NULL,0),(6758,'budget_lines','delete_alert',NULL,0),(6759,'shopping_assistant','refresh_widget_for_cart',NULL,0),(6760,'approval_limits','diagram',NULL,0),(6761,'reviews','index',NULL,0),(6762,'reviews','manage',NULL,0),(6763,'reviews','embedded_list',NULL,0),(6764,'reviews','embedded_add',NULL,0),(6765,'reviews','manage_edit',NULL,0),(6766,'reviews','manage_destroy',NULL,0),(6767,'dashboard','benchmarking',NULL,0),(6768,'reviews','embedded_destroy',NULL,0),(6769,'objections','create',NULL,0),(6770,'reporting','accrual',NULL,1),(6771,'quickbooks','index',NULL,0),(6772,'quickbooks','update_sync_settings',NULL,0),(6773,'quickbooks','qwc',NULL,0),(6774,'invoices','change_account_type',NULL,1),(6775,'quotes','twitter_announce',NULL,1),(6776,'pcards','new',NULL,0),(6777,'pcards','create',NULL,0),(6778,'pcards','destroy',NULL,0),(6779,'pcards','pick',NULL,0),(6780,'reporting','search_accrual_order_line_table',NULL,0),(6781,'reporting','accrual_order_line_list_csv',NULL,0),(6782,'approver','update_department',NULL,0),(6783,'invoices','split_line',NULL,1),(6784,'order_lines','cancel',NULL,1),(6785,'supplier_reviews','create',NULL,0),(6786,'supplier_reviews','destroy',NULL,0),(6787,'passwords','index',NULL,0),(6788,'passwords','password_audit_list_csv',NULL,0),(6789,'passwords','sort_password_audit_table',NULL,0),(6790,'passwords','search_password_audit_table',NULL,0),(6791,'invoices','resend_confirm_receipt',NULL,1),(6792,'search','global_search',NULL,0),(6793,'user','mark_to_done',NULL,0),(6794,'search','irequest_search',NULL,0),(6795,'supplier_order_headers','update',NULL,0),(6796,'payments','new',NULL,0),(6797,'payments','destroy',NULL,0),(6798,'user','update_budgets',NULL,0),(6799,'suppliers','auto_complete_smaller',NULL,1),(6800,'expense_reports','new',NULL,2),(6801,'expense_reports','edit',NULL,2),(6802,'expense_reports','work',NULL,2),(6803,'expense_reports','bypass_approvals',NULL,2),(6804,'expense_reports','home',NULL,2),(6805,'expense_reports','show',NULL,2),(6806,'expense_reports','review',NULL,2),(6807,'expense_reports','submit',NULL,2),(6809,'expense_reports','add_approver',NULL,2),(6810,'expense_reports','refresh_report_total',NULL,2),(6811,'expense_reports','approve',NULL,2),(6812,'expense_reports','reject',NULL,2),(6813,'expense_reports','find_expense_report_for_approval',NULL,2),(6814,'expense_reports','resend',NULL,2),(6815,'expense_reports','approve_for_payment',NULL,2),(6816,'expense_reports','reviewer_request_info',NULL,2),(6817,'expense_reports','reviewer_reject',NULL,2),(6830,'expense_categories','update_name',NULL,2),(6831,'expense_categories','update_active',NULL,2),(6832,'expense_categories','index',NULL,2),(6833,'expense_categories','auto_complete',NULL,2),(6834,'expense_categories','list',NULL,2),(6835,'expense_categories','new',NULL,2),(6836,'expense_categories','edit',NULL,2),(6837,'expense_categories','create',NULL,2),(6838,'expense_categories','update',NULL,2),(6880,'expense_lines','new',NULL,2),(6881,'expense_lines','create_in_background',NULL,2),(6882,'expense_lines','save_in_background',NULL,2),(6883,'expense_lines','create',NULL,2),(6884,'expense_lines','edit',NULL,2),(6885,'expense_lines','update',NULL,2),(6886,'expense_lines','merge',NULL,2),(6887,'expense_lines','destroy',NULL,2),(6888,'expense_lines','copy',NULL,2),(6889,'expense_lines','shelve',NULL,2),(6890,'expense_reports','search_wallet',NULL,2),(6891,'expense_lines','reload_receipts',NULL,2),(6892,'expense_artifacts','create',NULL,2),(6893,'expense_artifacts','show',NULL,2),(6894,'expense_reports','destroy',NULL,2),(6895,'expense_reports','update',NULL,2),(6896,'expense_lines','expense_lines_for',NULL,2),(6897,'expense_reports','reviewer_audit',NULL,2),(6898,'expense_artifacts','thumbnail',NULL,2),(6899,'expense_lines','index',NULL,2),(6900,'expense_reports','index',NULL,2),(6901,'requisition_headers','update_requested_by',NULL,1),(6902,'expense_reports','search_expense_report_table',NULL,2),(6903,'expense_reports','expense_report_list_csv',NULL,2),(6904,'user','search_expense_report_table',NULL,2),(6905,'expense_lines','search_expense_line_table',NULL,2),(6906,'administration','expense_settings',NULL,2),(6907,'dashboard','expense_metrics',NULL,2),(6908,'delegate_expenses','for_current_user',NULL,2),(6909,'expense_reports','withdraw',NULL,2),(6910,'expense_lines','search_historical_expense_line_table',NULL,2),(6911,'expense_lines','expense_category_changed',NULL,2),(6912,'delegate_expenses','update_for_current_user',NULL,2),(6920,'custom_fields','index',NULL,0),(6921,'custom_fields','edit_field',NULL,0),(6922,'custom_fields','copy',NULL,0),(6923,'custom_fields','update',NULL,0),(6924,'custom_fields','destroy',NULL,0),(6925,'custom_fields','update_fields',NULL,0),(6926,'custom_fields','update_layout',NULL,0),(6927,'custom_fields','delete_field',NULL,0),(6928,'custom_fields','save_field',NULL,0),(6930,'expense_artifacts','download',NULL,2),(6931,'budget_lines','budget_line_adjustment_list_csv',NULL,0),(6932,'salesforce','account_popup',NULL,2),(6933,'salesforce','account_select',NULL,2),(6934,'requisition_headers','update_payment',NULL,1),(6935,'approver','update_payment',NULL,0),(6936,'approval_chains','approver_auto_complete',NULL,0),(6937,'order_headers','update_supplier_order_number',NULL,1),(6938,'invoices','calculate',NULL,1),(6939,'supplier_invoices','flip_contract',NULL,0),(6940,'invoices','reject',NULL,1),(6941,'invoices','autocomplete_users_and_approval_groups',NULL,1),(6942,'invoices','withdraw',NULL,1),(6943,'invoices','pick_approval_method',NULL,1),(6944,'invoices','check_for_approval',NULL,1),(6945,'invoices','save_and_pick_lines',NULL,1),(6946,'expense_lines','check_distance','ajax action to check mileage distance',2),(6947,'invoices','new',NULL,1),(6948,'invoices','bypass_approvals',NULL,1),(6949,'order_headers','update_order_line_savings',NULL,1),(6950,'invoices','show_for_approval',NULL,1),(6951,'user','cart_hover',NULL,1),(6952,'invoices','update_contracts',NULL,1),(6954,'requisition_lines','pick_account','Choose the account for a requisition line.',1),(6956,'requisition_headers','update_and_close','Save the requistion and change to a new cart.',1),(6957,'requisition_headers','account_pick','Show \'adjust all\' popover on requsition edit page.',1),(6958,'comments','create','Allow users to add comments to Requsitions, Orders, Expenses, etc.',0),(6959,'approver','account_pick',NULL,0),(6960,'buying','account_pick',NULL,0),(6961,'invoices','resend_invoice_approval','Allow AP to resend approval notfication to current approver of invoice',1),(6962,'requisition_headers','update_approval_chain',NULL,1),(6967,'expense_reports','expense_category_changed','Updates fields that depend on categories when category changes',2),(6968,'requisition_lines','update_budget_warnings','Updates budget display when you change a period on the checkout page',1),(6969,'search','homepage_browse',NULL,1),(6970,'user','save_homepage_preference','Saves the last used tab on homepage',1),(6971,'supplier_reviews','new',NULL,0),(6972,'credit_card_transactions','remove',NULL,2),(6973,'contracts','create_alert',NULL,1),(6974,'contracts','destroy_alert',NULL,1),(8012,'user','auto_complete_for_expense','Autocomplete that limits its output to only expense users',2),(8013,'user','manage_content','Manage tags, item reviews, and other content',0),(8014,'user','manage_delegates','Manage delegation of approvals and report creation',0),(8015,'buying','add_approver',NULL,0),(8016,'accounts','search_choose_default_account_table',NULL,0),(8017,'addresses','new_popup',NULL,0),(8018,'forms','add_in_popup',NULL,1),(8019,'expense_lines','popup_google_map','viewing google map for mileage',2),(8020,'accounts','search_picker_account_table',NULL,0),(8021,'user','recent_reqs',NULL,0),(8022,'requisition_headers','lazy_load_lines',NULL,1),(8023,'buying','lazy_load_lines',NULL,1),(8024,'approver','lazy_load_lines',NULL,1),(8026,'inbox','update_todo_list',NULL,0),(8027,'accounts','choose_default_search',NULL,0),(8028,'user','finish_tour',NULL,0),(8029,'user','tour',NULL,0),(8030,'addresses','search_picker_address_table',NULL,0),(8031,'account_groups','auto_complete',NULL,0);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions_roles` (
  `permission_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_permissions_roles_on_role_id_and_permission_id` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
INSERT INTO `permissions_roles` VALUES (17,1),(23,1),(26,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(1452,2),(1700,2),(6046,2),(6050,2),(6186,2),(6191,2),(6235,2),(6236,2),(6667,2),(6712,2),(8026,2),(8031,2),(19,3),(20,3),(26,3),(27,3),(28,3),(354,3),(602,3),(608,3),(641,3),(653,3),(655,3),(657,3),(660,3),(661,3),(664,3),(667,3),(668,3),(669,3),(672,3),(679,3),(683,3),(685,3),(687,3),(688,3),(690,3),(702,3),(706,3),(708,3),(709,3),(711,3),(714,3),(715,3),(732,3),(769,3),(776,3),(788,3),(789,3),(790,3),(794,3),(876,3),(877,3),(882,3),(883,3),(887,3),(888,3),(900,3),(932,3),(933,3),(934,3),(935,3),(938,3),(939,3),(940,3),(943,3),(944,3),(945,3),(946,3),(947,3),(948,3),(963,3),(964,3),(965,3),(967,3),(968,3),(970,3),(972,3),(973,3),(974,3),(976,3),(978,3),(979,3),(980,3),(981,3),(982,3),(983,3),(984,3),(986,3),(989,3),(990,3),(991,3),(992,3),(994,3),(995,3),(996,3),(997,3),(1000,3),(1001,3),(1002,3),(1003,3),(1007,3),(1008,3),(1011,3),(1013,3),(1015,3),(1017,3),(1018,3),(1019,3),(1021,3),(1023,3),(1025,3),(1026,3),(1028,3),(1029,3),(1034,3),(1042,3),(1043,3),(1047,3),(1049,3),(1052,3),(1057,3),(1060,3),(1062,3),(1063,3),(1064,3),(1065,3),(1066,3),(1067,3),(1068,3),(1069,3),(1070,3),(1072,3),(1074,3),(1187,3),(1194,3),(1580,3),(1649,3),(1650,3),(1660,3),(1752,3),(1753,3),(1770,3),(1773,3),(1774,3),(1775,3),(1796,3),(1798,3),(1801,3),(1802,3),(1808,3),(1810,3),(1811,3),(1812,3),(1813,3),(1814,3),(1815,3),(1817,3),(1818,3),(1821,3),(1822,3),(1824,3),(1828,3),(2361,3),(2371,3),(2372,3),(2373,3),(2374,3),(2401,3),(2971,3),(2973,3),(2983,3),(2984,3),(2985,3),(3016,3),(3017,3),(3018,3),(3019,3),(3023,3),(3050,3),(3057,3),(3060,3),(3061,3),(3062,3),(3079,3),(4830,3),(4833,3),(4885,3),(4905,3),(4907,3),(4916,3),(4917,3),(4918,3),(4942,3),(5025,3),(5026,3),(5027,3),(5035,3),(5987,3),(5992,3),(5993,3),(5996,3),(5997,3),(6038,3),(6039,3),(6046,3),(6050,3),(6072,3),(6093,3),(6174,3),(6175,3),(6176,3),(6177,3),(6178,3),(6183,3),(6187,3),(6190,3),(6207,3),(6219,3),(6226,3),(6235,3),(6236,3),(6238,3),(6242,3),(6247,3),(6248,3),(6627,3),(6628,3),(6630,3),(6631,3),(6632,3),(6633,3),(6645,3),(6646,3),(6647,3),(6654,3),(6655,3),(6656,3),(6670,3),(6671,3),(6672,3),(6673,3),(6674,3),(6675,3),(6676,3),(6684,3),(6699,3),(6701,3),(6702,3),(6705,3),(6706,3),(6707,3),(6708,3),(6712,3),(6718,3),(6719,3),(6733,3),(6734,3),(6735,3),(6736,3),(6737,3),(6738,3),(6739,3),(6740,3),(6756,3),(6757,3),(6758,3),(6759,3),(6761,3),(6763,3),(6764,3),(6768,3),(6769,3),(6792,3),(6793,3),(6794,3),(6798,3),(6799,3),(6931,3),(6932,3),(6934,3),(6935,3),(6940,3),(6950,3),(6951,3),(6954,3),(6956,3),(6957,3),(6958,3),(6959,3),(6962,3),(6968,3),(6969,3),(6970,3),(6971,3),(8013,3),(8014,3),(8016,3),(8017,3),(8020,3),(8021,3),(8022,3),(8026,3),(8027,3),(8028,3),(8029,3),(8030,3),(19,4),(20,4),(26,4),(27,4),(28,4),(354,4),(585,4),(586,4),(587,4),(588,4),(589,4),(590,4),(591,4),(592,4),(593,4),(594,4),(595,4),(596,4),(597,4),(599,4),(600,4),(602,4),(603,4),(604,4),(605,4),(607,4),(608,4),(626,4),(641,4),(652,4),(653,4),(655,4),(656,4),(657,4),(658,4),(659,4),(660,4),(661,4),(662,4),(664,4),(665,4),(667,4),(668,4),(669,4),(672,4),(673,4),(674,4),(679,4),(683,4),(685,4),(687,4),(688,4),(690,4),(693,4),(702,4),(706,4),(708,4),(711,4),(714,4),(715,4),(732,4),(748,4),(767,4),(768,4),(769,4),(771,4),(772,4),(775,4),(776,4),(778,4),(780,4),(781,4),(788,4),(789,4),(829,4),(832,4),(857,4),(858,4),(859,4),(863,4),(864,4),(870,4),(874,4),(875,4),(876,4),(877,4),(878,4),(879,4),(880,4),(881,4),(882,4),(883,4),(885,4),(887,4),(888,4),(892,4),(894,4),(895,4),(897,4),(898,4),(899,4),(900,4),(901,4),(904,4),(905,4),(910,4),(913,4),(915,4),(916,4),(917,4),(918,4),(919,4),(920,4),(921,4),(922,4),(923,4),(924,4),(925,4),(927,4),(928,4),(930,4),(931,4),(932,4),(933,4),(934,4),(935,4),(938,4),(939,4),(940,4),(943,4),(944,4),(945,4),(946,4),(947,4),(948,4),(951,4),(952,4),(953,4),(954,4),(955,4),(956,4),(957,4),(958,4),(959,4),(961,4),(963,4),(964,4),(965,4),(967,4),(970,4),(972,4),(973,4),(974,4),(978,4),(979,4),(980,4),(981,4),(982,4),(983,4),(984,4),(985,4),(986,4),(989,4),(990,4),(991,4),(992,4),(994,4),(995,4),(996,4),(997,4),(998,4),(999,4),(1000,4),(1001,4),(1002,4),(1003,4),(1004,4),(1005,4),(1006,4),(1007,4),(1008,4),(1009,4),(1010,4),(1011,4),(1012,4),(1013,4),(1014,4),(1015,4),(1016,4),(1017,4),(1018,4),(1019,4),(1021,4),(1022,4),(1023,4),(1025,4),(1026,4),(1028,4),(1029,4),(1032,4),(1034,4),(1042,4),(1043,4),(1047,4),(1049,4),(1052,4),(1057,4),(1060,4),(1062,4),(1063,4),(1064,4),(1065,4),(1066,4),(1067,4),(1068,4),(1069,4),(1072,4),(1074,4),(1080,4),(1082,4),(1098,4),(1114,4),(1121,4),(1150,4),(1187,4),(1194,4),(1206,4),(1207,4),(1212,4),(1213,4),(1215,4),(1219,4),(1220,4),(1222,4),(1344,4),(1345,4),(1350,4),(1524,4),(1534,4),(1580,4),(1630,4),(1632,4),(1634,4),(1639,4),(1649,4),(1650,4),(1660,4),(1748,4),(1749,4),(1750,4),(1751,4),(1752,4),(1753,4),(1770,4),(1773,4),(1774,4),(1775,4),(1796,4),(1798,4),(1808,4),(1809,4),(1810,4),(1811,4),(1812,4),(1813,4),(1814,4),(1815,4),(1816,4),(1817,4),(1818,4),(1821,4),(1822,4),(1824,4),(1828,4),(1829,4),(1830,4),(1831,4),(1832,4),(1833,4),(1834,4),(1835,4),(1836,4),(1837,4),(1838,4),(1839,4),(1840,4),(1841,4),(1842,4),(1843,4),(1844,4),(1845,4),(1846,4),(1847,4),(1853,4),(1854,4),(1855,4),(1869,4),(1874,4),(1883,4),(1885,4),(1888,4),(1895,4),(1896,4),(2358,4),(2359,4),(2360,4),(2361,4),(2362,4),(2363,4),(2364,4),(2365,4),(2366,4),(2367,4),(2368,4),(2369,4),(2370,4),(2371,4),(2372,4),(2373,4),(2374,4),(2375,4),(2376,4),(2385,4),(2386,4),(2387,4),(2396,4),(2397,4),(2404,4),(2948,4),(2949,4),(2966,4),(2968,4),(2971,4),(2973,4),(2980,4),(2981,4),(2983,4),(2984,4),(2985,4),(3016,4),(3017,4),(3018,4),(3019,4),(3021,4),(3022,4),(3023,4),(3024,4),(3025,4),(3026,4),(3050,4),(3057,4),(3058,4),(3059,4),(3060,4),(3061,4),(3062,4),(3079,4),(4813,4),(4814,4),(4815,4),(4816,4),(4817,4),(4818,4),(4819,4),(4820,4),(4821,4),(4822,4),(4823,4),(4824,4),(4825,4),(4826,4),(4827,4),(4828,4),(4829,4),(4830,4),(4831,4),(4832,4),(4833,4),(4883,4),(4907,4),(4917,4),(4953,4),(4956,4),(4958,4),(4959,4),(4977,4),(4978,4),(5009,4),(5035,4),(5038,4),(5039,4),(5040,4),(5042,4),(5045,4),(5046,4),(5047,4),(5050,4),(5051,4),(5052,4),(5059,4),(5061,4),(5062,4),(5976,4),(5992,4),(5993,4),(5996,4),(5997,4),(6017,4),(6018,4),(6040,4),(6041,4),(6046,4),(6050,4),(6051,4),(6131,4),(6174,4),(6175,4),(6176,4),(6177,4),(6178,4),(6179,4),(6180,4),(6183,4),(6185,4),(6187,4),(6189,4),(6190,4),(6197,4),(6200,4),(6204,4),(6206,4),(6207,4),(6208,4),(6213,4),(6219,4),(6223,4),(6226,4),(6227,4),(6235,4),(6236,4),(6239,4),(6242,4),(6243,4),(6244,4),(6269,4),(6272,4),(6273,4),(6276,4),(6277,4),(6618,4),(6619,4),(6624,4),(6627,4),(6628,4),(6639,4),(6642,4),(6645,4),(6646,4),(6647,4),(6648,4),(6649,4),(6650,4),(6654,4),(6655,4),(6656,4),(6665,4),(6670,4),(6673,4),(6674,4),(6678,4),(6679,4),(6682,4),(6683,4),(6684,4),(6691,4),(6692,4),(6693,4),(6694,4),(6695,4),(6696,4),(6697,4),(6698,4),(6699,4),(6700,4),(6701,4),(6702,4),(6705,4),(6706,4),(6707,4),(6708,4),(6710,4),(6712,4),(6714,4),(6715,4),(6716,4),(6717,4),(6722,4),(6723,4),(6737,4),(6738,4),(6739,4),(6770,4),(6775,4),(6779,4),(6780,4),(6781,4),(6784,4),(6785,4),(6786,4),(6901,4),(6931,4),(6937,4),(6949,4),(6954,4),(6958,4),(6960,4),(6973,4),(6974,4),(8015,4),(8018,4),(8023,4),(8026,4),(19,5),(20,5),(26,5),(27,5),(28,5),(354,5),(585,5),(586,5),(587,5),(588,5),(589,5),(590,5),(591,5),(592,5),(593,5),(594,5),(595,5),(596,5),(597,5),(599,5),(600,5),(602,5),(608,5),(641,5),(653,5),(655,5),(657,5),(660,5),(661,5),(664,5),(667,5),(668,5),(669,5),(672,5),(679,5),(683,5),(685,5),(687,5),(688,5),(690,5),(702,5),(706,5),(708,5),(711,5),(714,5),(715,5),(732,5),(748,5),(768,5),(769,5),(771,5),(774,5),(776,5),(778,5),(780,5),(781,5),(788,5),(789,5),(832,5),(864,5),(877,5),(882,5),(887,5),(888,5),(900,5),(932,5),(933,5),(934,5),(935,5),(938,5),(939,5),(940,5),(943,5),(944,5),(945,5),(946,5),(947,5),(948,5),(951,5),(952,5),(953,5),(954,5),(955,5),(956,5),(957,5),(958,5),(959,5),(961,5),(963,5),(964,5),(965,5),(967,5),(970,5),(972,5),(973,5),(974,5),(978,5),(979,5),(980,5),(981,5),(982,5),(983,5),(984,5),(985,5),(986,5),(989,5),(990,5),(991,5),(994,5),(995,5),(996,5),(997,5),(1000,5),(1001,5),(1002,5),(1003,5),(1006,5),(1007,5),(1008,5),(1011,5),(1013,5),(1015,5),(1016,5),(1017,5),(1018,5),(1019,5),(1021,5),(1023,5),(1025,5),(1026,5),(1028,5),(1029,5),(1032,5),(1034,5),(1042,5),(1043,5),(1047,5),(1049,5),(1052,5),(1057,5),(1060,5),(1062,5),(1063,5),(1064,5),(1065,5),(1066,5),(1067,5),(1068,5),(1069,5),(1070,5),(1072,5),(1074,5),(1080,5),(1082,5),(1114,5),(1121,5),(1187,5),(1194,5),(1344,5),(1345,5),(1350,5),(1580,5),(1649,5),(1650,5),(1653,5),(1660,5),(1752,5),(1753,5),(1770,5),(1773,5),(1774,5),(1775,5),(1798,5),(1808,5),(1809,5),(1810,5),(1811,5),(1812,5),(1813,5),(1814,5),(1815,5),(1817,5),(1818,5),(1821,5),(1822,5),(1824,5),(1828,5),(1836,5),(1843,5),(1853,5),(1855,5),(1869,5),(1870,5),(1871,5),(1872,5),(1873,5),(1874,5),(1875,5),(1876,5),(1877,5),(1879,5),(1880,5),(1881,5),(1882,5),(1883,5),(1885,5),(1886,5),(1895,5),(2361,5),(2371,5),(2372,5),(2373,5),(2374,5),(2396,5),(2397,5),(2400,5),(2402,5),(2966,5),(2969,5),(2973,5),(2983,5),(2984,5),(2985,5),(3016,5),(3017,5),(3018,5),(3019,5),(3023,5),(3050,5),(3057,5),(3060,5),(3061,5),(3062,5),(3079,5),(4829,5),(4830,5),(4833,5),(4907,5),(4917,5),(5035,5),(5061,5),(5992,5),(5993,5),(5996,5),(5997,5),(6017,5),(6018,5),(6046,5),(6050,5),(6070,5),(6131,5),(6174,5),(6175,5),(6176,5),(6177,5),(6178,5),(6179,5),(6180,5),(6183,5),(6185,5),(6187,5),(6190,5),(6200,5),(6201,5),(6207,5),(6219,5),(6226,5),(6235,5),(6236,5),(6242,5),(6243,5),(6244,5),(6271,5),(6274,5),(6275,5),(6276,5),(6277,5),(6618,5),(6619,5),(6636,5),(6637,5),(6642,5),(6645,5),(6646,5),(6647,5),(6649,5),(6650,5),(6654,5),(6655,5),(6656,5),(6673,5),(6679,5),(6682,5),(6683,5),(6684,5),(6698,5),(6699,5),(6701,5),(6702,5),(6705,5),(6706,5),(6707,5),(6708,5),(6712,5),(6722,5),(6723,5),(6770,5),(6774,5),(6779,5),(6780,5),(6781,5),(6783,5),(6791,5),(6796,5),(6797,5),(6938,5),(6941,5),(6942,5),(6943,5),(6944,5),(6945,5),(6947,5),(6952,5),(6954,5),(6958,5),(6961,5),(6973,5),(6974,5),(8026,5),(19,6),(20,6),(26,6),(27,6),(28,6),(354,6),(602,6),(608,6),(641,6),(653,6),(655,6),(657,6),(660,6),(661,6),(664,6),(667,6),(668,6),(669,6),(672,6),(679,6),(683,6),(685,6),(687,6),(688,6),(690,6),(702,6),(706,6),(708,6),(711,6),(714,6),(715,6),(732,6),(748,6),(769,6),(774,6),(776,6),(778,6),(788,6),(789,6),(832,6),(877,6),(882,6),(887,6),(888,6),(900,6),(932,6),(933,6),(934,6),(935,6),(938,6),(939,6),(940,6),(943,6),(944,6),(945,6),(946,6),(947,6),(948,6),(963,6),(964,6),(965,6),(967,6),(970,6),(972,6),(973,6),(974,6),(978,6),(979,6),(980,6),(981,6),(983,6),(984,6),(986,6),(989,6),(990,6),(991,6),(992,6),(994,6),(995,6),(996,6),(997,6),(1000,6),(1001,6),(1002,6),(1003,6),(1006,6),(1007,6),(1008,6),(1011,6),(1013,6),(1015,6),(1016,6),(1017,6),(1018,6),(1019,6),(1021,6),(1023,6),(1025,6),(1026,6),(1028,6),(1029,6),(1034,6),(1042,6),(1043,6),(1047,6),(1049,6),(1052,6),(1057,6),(1060,6),(1062,6),(1063,6),(1064,6),(1065,6),(1066,6),(1067,6),(1068,6),(1069,6),(1070,6),(1072,6),(1074,6),(1082,6),(1187,6),(1194,6),(1207,6),(1580,6),(1649,6),(1650,6),(1653,6),(1660,6),(1752,6),(1753,6),(1770,6),(1773,6),(1774,6),(1775,6),(1798,6),(1808,6),(1810,6),(1811,6),(1812,6),(1813,6),(1814,6),(1815,6),(1817,6),(1818,6),(1820,6),(1821,6),(1822,6),(1823,6),(1824,6),(1825,6),(1826,6),(1827,6),(1828,6),(2361,6),(2371,6),(2372,6),(2373,6),(2374,6),(2973,6),(2983,6),(2984,6),(2985,6),(3016,6),(3017,6),(3018,6),(3019,6),(3023,6),(3050,6),(3057,6),(3060,6),(3061,6),(3062,6),(4829,6),(4830,6),(4833,6),(4844,6),(4845,6),(4846,6),(4847,6),(4848,6),(4849,6),(4850,6),(4851,6),(4852,6),(4853,6),(4854,6),(4855,6),(4856,6),(4857,6),(4858,6),(4907,6),(4917,6),(4932,6),(4969,6),(4972,6),(4973,6),(4974,6),(4975,6),(5009,6),(5034,6),(5035,6),(5039,6),(5042,6),(5049,6),(5053,6),(5054,6),(5055,6),(5056,6),(5066,6),(5067,6),(5978,6),(5979,6),(5980,6),(5981,6),(5982,6),(5992,6),(5993,6),(5996,6),(5997,6),(6046,6),(6050,6),(6053,6),(6149,6),(6167,6),(6174,6),(6175,6),(6176,6),(6177,6),(6178,6),(6179,6),(6183,6),(6187,6),(6190,6),(6207,6),(6214,6),(6215,6),(6219,6),(6226,6),(6228,6),(6231,6),(6235,6),(6236,6),(6240,6),(6242,6),(6276,6),(6277,6),(6618,6),(6619,6),(6645,6),(6646,6),(6647,6),(6654,6),(6655,6),(6656,6),(6657,6),(6658,6),(6673,6),(6684,6),(6699,6),(6701,6),(6702,6),(6705,6),(6706,6),(6707,6),(6708,6),(6712,6),(6954,6),(6958,6),(8026,6),(19,7),(20,7),(27,7),(28,7),(354,7),(585,7),(586,7),(587,7),(588,7),(589,7),(590,7),(591,7),(592,7),(593,7),(594,7),(595,7),(596,7),(597,7),(599,7),(600,7),(602,7),(608,7),(641,7),(642,7),(643,7),(644,7),(645,7),(646,7),(647,7),(648,7),(650,7),(653,7),(655,7),(657,7),(660,7),(661,7),(662,7),(664,7),(667,7),(668,7),(669,7),(672,7),(679,7),(683,7),(685,7),(687,7),(688,7),(690,7),(702,7),(706,7),(708,7),(711,7),(714,7),(715,7),(732,7),(748,7),(768,7),(769,7),(771,7),(774,7),(776,7),(778,7),(780,7),(781,7),(788,7),(789,7),(832,7),(846,7),(847,7),(848,7),(849,7),(850,7),(851,7),(852,7),(854,7),(864,7),(877,7),(882,7),(887,7),(888,7),(900,7),(932,7),(933,7),(934,7),(935,7),(938,7),(939,7),(940,7),(943,7),(944,7),(945,7),(946,7),(947,7),(948,7),(951,7),(952,7),(953,7),(954,7),(955,7),(956,7),(957,7),(958,7),(959,7),(961,7),(963,7),(964,7),(965,7),(967,7),(970,7),(972,7),(973,7),(974,7),(978,7),(979,7),(980,7),(981,7),(982,7),(983,7),(984,7),(985,7),(986,7),(989,7),(990,7),(991,7),(994,7),(995,7),(996,7),(997,7),(1000,7),(1001,7),(1002,7),(1003,7),(1006,7),(1007,7),(1008,7),(1011,7),(1013,7),(1015,7),(1016,7),(1017,7),(1018,7),(1019,7),(1021,7),(1023,7),(1025,7),(1026,7),(1028,7),(1029,7),(1032,7),(1034,7),(1041,7),(1042,7),(1043,7),(1044,7),(1045,7),(1046,7),(1047,7),(1048,7),(1049,7),(1050,7),(1051,7),(1052,7),(1053,7),(1055,7),(1056,7),(1057,7),(1060,7),(1062,7),(1063,7),(1064,7),(1065,7),(1066,7),(1067,7),(1068,7),(1069,7),(1070,7),(1072,7),(1074,7),(1080,7),(1082,7),(1114,7),(1121,7),(1144,7),(1145,7),(1146,7),(1147,7),(1148,7),(1149,7),(1150,7),(1153,7),(1154,7),(1156,7),(1157,7),(1159,7),(1160,7),(1164,7),(1166,7),(1167,7),(1168,7),(1169,7),(1170,7),(1173,7),(1175,7),(1180,7),(1181,7),(1183,7),(1187,7),(1194,7),(1206,7),(1207,7),(1213,7),(1215,7),(1220,7),(1222,7),(1243,7),(1251,7),(1344,7),(1345,7),(1350,7),(1534,7),(1536,7),(1580,7),(1582,7),(1649,7),(1650,7),(1653,7),(1660,7),(1731,7),(1747,7),(1752,7),(1753,7),(1770,7),(1773,7),(1774,7),(1775,7),(1776,7),(1777,7),(1778,7),(1779,7),(1780,7),(1781,7),(1782,7),(1783,7),(1784,7),(1785,7),(1786,7),(1787,7),(1788,7),(1789,7),(1790,7),(1791,7),(1797,7),(1798,7),(1803,7),(1804,7),(1805,7),(1806,7),(1807,7),(1808,7),(1809,7),(1810,7),(1811,7),(1812,7),(1813,7),(1814,7),(1815,7),(1817,7),(1818,7),(1821,7),(1822,7),(1824,7),(1828,7),(1848,7),(1849,7),(1850,7),(1851,7),(1852,7),(1853,7),(1854,7),(1855,7),(1856,7),(1857,7),(1858,7),(1859,7),(1860,7),(1861,7),(1862,7),(1863,7),(1864,7),(1865,7),(1866,7),(1867,7),(1868,7),(1869,7),(1870,7),(1871,7),(1872,7),(1873,7),(1874,7),(1875,7),(1876,7),(1877,7),(1878,7),(1879,7),(1880,7),(1881,7),(1882,7),(1883,7),(1884,7),(1885,7),(1886,7),(1887,7),(1895,7),(2352,7),(2353,7),(2354,7),(2355,7),(2356,7),(2357,7),(2361,7),(2371,7),(2372,7),(2373,7),(2374,7),(2396,7),(2397,7),(2400,7),(2401,7),(2969,7),(2970,7),(2971,7),(2973,7),(2983,7),(2984,7),(2985,7),(3016,7),(3017,7),(3018,7),(3019,7),(3020,7),(3023,7),(3050,7),(3057,7),(3060,7),(3061,7),(3062,7),(4835,7),(4836,7),(4881,7),(4912,7),(4917,7),(5035,7),(5059,7),(5061,7),(5062,7),(5065,7),(5066,7),(5067,7),(5068,7),(5977,7),(5988,7),(5990,7),(5992,7),(5993,7),(5996,7),(5997,7),(6015,7),(6018,7),(6046,7),(6050,7),(6055,7),(6066,7),(6067,7),(6068,7),(6069,7),(6070,7),(6173,7),(6174,7),(6175,7),(6176,7),(6177,7),(6178,7),(6179,7),(6180,7),(6181,7),(6182,7),(6183,7),(6184,7),(6185,7),(6187,7),(6190,7),(6192,7),(6193,7),(6195,7),(6198,7),(6199,7),(6200,7),(6201,7),(6207,7),(6219,7),(6226,7),(6230,7),(6235,7),(6236,7),(6242,7),(6243,7),(6244,7),(6271,7),(6274,7),(6275,7),(6276,7),(6277,7),(6618,7),(6619,7),(6622,7),(6624,7),(6625,7),(6626,7),(6627,7),(6628,7),(6629,7),(6634,7),(6635,7),(6636,7),(6637,7),(6638,7),(6639,7),(6640,7),(6642,7),(6645,7),(6646,7),(6647,7),(6649,7),(6650,7),(6654,7),(6655,7),(6656,7),(6660,7),(6661,7),(6662,7),(6673,7),(6684,7),(6699,7),(6701,7),(6702,7),(6705,7),(6706,7),(6707,7),(6708,7),(6712,7),(6722,7),(6723,7),(6770,7),(6771,7),(6772,7),(6773,7),(6774,7),(6779,7),(6780,7),(6781,7),(6783,7),(6784,7),(6791,7),(6796,7),(6797,7),(6931,7),(6938,7),(6940,7),(6941,7),(6942,7),(6943,7),(6944,7),(6945,7),(6947,7),(6948,7),(6952,7),(6954,7),(6958,7),(6961,7),(6973,7),(6974,7),(8026,7),(1026,8),(3041,8),(3042,8),(3043,8),(3044,8),(3045,8),(3046,8),(3047,8),(3048,8),(3049,8),(3050,8),(3052,8),(3053,8),(3054,8),(3055,8),(3056,8),(3057,8),(4843,8),(5976,8),(6054,8),(6673,8),(6709,8),(6782,8),(6933,8),(6958,8),(8024,8),(748,9),(894,9),(4814,9),(4815,9),(4816,9),(4817,9),(4818,9),(4819,9),(4820,9),(4821,9),(4822,9),(4823,9),(4824,9),(4825,9),(4826,9),(4827,9),(4828,9),(4829,9),(4830,9),(4831,9),(4832,9),(4833,9),(4932,9),(4953,9),(4956,9),(4958,9),(4959,9),(5009,9),(5034,9),(5992,9),(5993,9),(5996,9),(5997,9),(6041,9),(6174,9),(6175,9),(6176,9),(6177,9),(6178,9),(6213,9),(6223,9),(6242,9),(6269,9),(6272,9),(6273,9),(6657,9),(6658,9),(6665,9),(19,10),(26,10),(27,10),(28,10),(354,10),(732,10),(788,10),(789,10),(790,10),(794,10),(932,10),(933,10),(934,10),(935,10),(996,10),(997,10),(1000,10),(1001,10),(1002,10),(1003,10),(1007,10),(1008,10),(1011,10),(1013,10),(1015,10),(1017,10),(1018,10),(1019,10),(1021,10),(1023,10),(1025,10),(1042,10),(1043,10),(1047,10),(1049,10),(1052,10),(1057,10),(1060,10),(1062,10),(1063,10),(1064,10),(1065,10),(1066,10),(1067,10),(1068,10),(1069,10),(1070,10),(1072,10),(1074,10),(1580,10),(1796,10),(1798,10),(1801,10),(1802,10),(2371,10),(2372,10),(2373,10),(2374,10),(2971,10),(2983,10),(2984,10),(2985,10),(3016,10),(3017,10),(3018,10),(3023,10),(3079,10),(4916,10),(4917,10),(4918,10),(5025,10),(5026,10),(5027,10),(5987,10),(5992,10),(5993,10),(5996,10),(5997,10),(6072,10),(6093,10),(6174,10),(6175,10),(6176,10),(6177,10),(6178,10),(6187,10),(6219,10),(6238,10),(6242,10),(6397,10),(6398,10),(6399,10),(6400,10),(6401,10),(6402,10),(6403,10),(6404,10),(6406,10),(6407,10),(6408,10),(6409,10),(6410,10),(6411,10),(6412,10),(6413,10),(6414,10),(6415,10),(6416,10),(6418,10),(6673,10),(6712,10),(6737,10),(6738,10),(6739,10),(6756,10),(6757,10),(6758,10),(6793,10),(6798,10),(6800,10),(6801,10),(6802,10),(6804,10),(6805,10),(6807,10),(6809,10),(6811,10),(6812,10),(6814,10),(6880,10),(6881,10),(6882,10),(6883,10),(6884,10),(6885,10),(6886,10),(6887,10),(6888,10),(6889,10),(6890,10),(6891,10),(6892,10),(6893,10),(6894,10),(6895,10),(6896,10),(6898,10),(6904,10),(6908,10),(6909,10),(6910,10),(6911,10),(6912,10),(6930,10),(6932,10),(6933,10),(6946,10),(6958,10),(6967,10),(6972,10),(8012,10),(8014,10),(8019,10),(8026,10),(8027,10),(8028,10),(8029,10),(6815,11),(6816,11),(6817,11),(6897,11),(6417,12),(6803,12),(6806,12),(6810,12),(6813,12),(6899,12),(6900,12),(6902,12),(6903,12),(6905,12),(19,100),(26,100),(27,100),(28,100),(641,100),(788,100),(789,100),(790,100),(794,100),(5993,100),(6019,100),(6020,100),(6021,100),(6022,100),(6023,100),(6024,100),(6025,100),(6026,100),(6027,100),(6028,100),(6029,100),(6030,100),(6032,100),(6033,100),(6034,100),(6035,100),(6036,100),(6037,100),(6044,100),(6046,100),(6050,100),(6072,100),(6233,100),(6234,100),(6235,100),(6236,100),(6245,100),(6246,100),(6684,100),(6685,100),(6703,100),(6704,100),(6795,100),(6939,100),(8026,100),(6741,101),(6742,101),(6743,101),(6744,101),(6745,101),(6746,101),(6747,101),(6748,101),(6749,101),(6750,101),(6751,101),(6752,101),(6753,101),(6754,101),(6755,101),(6767,101);
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_numbers`
--

DROP TABLE IF EXISTS `phone_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_phone_numbers_on_created_by` (`created_by`),
  KEY `index_phone_numbers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_numbers`
--

LOCK TABLES `phone_numbers` WRITE;
/*!40000 ALTER TABLE `phone_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_schema_info`
--

DROP TABLE IF EXISTS `plugin_schema_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_schema_info` (
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_schema_info`
--

LOCK TABLES `plugin_schema_info` WRITE;
/*!40000 ALTER TABLE `plugin_schema_info` DISABLE KEYS */;
INSERT INTO `plugin_schema_info` VALUES ('login_engine',1),('user_engine',3),('coupa_engine',75);
/*!40000 ALTER TABLE `plugin_schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policies`
--

DROP TABLE IF EXISTS `policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_policies_on_category_id` (`category_id`),
  KEY `index_policies_on_commodity_id` (`commodity_id`),
  KEY `index_policies_on_created_by` (`created_by`),
  KEY `index_policies_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policies`
--

LOCK TABLES `policies` WRITE;
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferred_commodities_suppliers`
--

DROP TABLE IF EXISTS `preferred_commodities_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferred_commodities_suppliers` (
  `commodity_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferred_commodities_suppliers`
--

LOCK TABLES `preferred_commodities_suppliers` WRITE;
/*!40000 ALTER TABLE `preferred_commodities_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferred_commodities_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_comparisons`
--

DROP TABLE IF EXISTS `price_comparisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_comparisons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requester` tinyint(1) DEFAULT NULL,
  `buyer` tinyint(1) DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_comparisons`
--

LOCK TABLES `price_comparisons` WRITE;
/*!40000 ALTER TABLE `price_comparisons` DISABLE KEYS */;
INSERT INTO `price_comparisons` VALUES (1,1,0,'http://www.google.com/products?q=$SEARCHKEY$','Google Product Search','/images/price_comparisons/google.png',NULL,NULL,'2009-04-14 00:52:20','2009-05-04 19:04:36',1,NULL,NULL),(2,1,0,'http://www.nextag.com/$SEARCHKEY$/search-html','Nextag','/images/price_comparisons/nextag.gif',NULL,NULL,'2009-04-14 00:52:52','2009-05-04 19:05:20',1,NULL,NULL),(3,1,0,'http://www.shopping.com/xFS?KW=$SEARCHKEY$','Shopping.com','/images/price_comparisons/shopping.ico',NULL,NULL,'2009-04-14 00:53:08','2009-05-04 19:05:01',1,NULL,NULL),(4,1,0,'http://www.amazon.com/s/?url=search-alias%3Daps&tag=coupsoft-20&field-keywords=$SEARCHKEY$','Amazon','/images/price_comparisons/amazon.png',NULL,NULL,'2009-04-14 00:53:08','2009-05-04 19:05:01',1,NULL,NULL);
/*!40000 ALTER TABLE `price_comparisons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_item_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `source_id` int(11) NOT NULL DEFAULT '0',
  `reviewer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_reviews_on_catalog_item_id` (`catalog_item_id`),
  KEY `index_product_reviews_on_created_by` (`created_by`),
  KEY `index_product_reviews_on_source_id` (`source_id`),
  KEY `index_product_reviews_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_created_by` (`created_by`),
  KEY `index_projects_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punchin_sessions`
--

DROP TABLE IF EXISTS `punchin_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punchin_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `buyer_cookie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkout_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_punchin_sessions_on_created_by` (`created_by`),
  KEY `index_punchin_sessions_on_updated_by` (`updated_by`),
  KEY `index_punchin_sessions_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punchin_sessions`
--

LOCK TABLES `punchin_sessions` WRITE;
/*!40000 ALTER TABLE `punchin_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `punchin_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punchout_sessions`
--

DROP TABLE IF EXISTS `punchout_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punchout_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `punchout_site_id` int(11) DEFAULT NULL,
  `buyer_cookie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_cookie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_punchout_sessions_on_created_by` (`created_by`),
  KEY `index_punchout_sessions_on_punchout_site_id` (`punchout_site_id`),
  KEY `index_punchout_sessions_on_updated_by` (`updated_by`),
  KEY `index_punchout_sessions_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punchout_sessions`
--

LOCK TABLES `punchout_sessions` WRITE;
/*!40000 ALTER TABLE `punchout_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `punchout_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punchout_sites`
--

DROP TABLE IF EXISTS `punchout_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punchout_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_identity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `enterprise_id` int(11) DEFAULT NULL,
  `is_from_coupa_checkout` tinyint(1) DEFAULT '0',
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_punchout_sites_on_created_by` (`created_by`),
  KEY `index_punchout_sites_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punchout_sites`
--

LOCK TABLES `punchout_sites` WRITE;
/*!40000 ALTER TABLE `punchout_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `punchout_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_document_maps`
--

DROP TABLE IF EXISTS `qb_document_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qb_document_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupa_document_id` int(11) DEFAULT NULL,
  `coupa_document_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quickbooks_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qb_doc_map_coupa_document_index` (`coupa_document_type`,`coupa_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_document_maps`
--

LOCK TABLES `qb_document_maps` WRITE;
/*!40000 ALTER TABLE `qb_document_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_document_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_document_transactions`
--

DROP TABLE IF EXISTS `qb_document_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qb_document_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupa_document_id` int(11) DEFAULT NULL,
  `coupa_document_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes_for_qbxml` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qb_doc_txn_coupa_document_index` (`coupa_document_type`,`coupa_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_document_transactions`
--

LOCK TABLES `qb_document_transactions` WRITE;
/*!40000 ALTER TABLE `qb_document_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_document_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_message_sets`
--

DROP TABLE IF EXISTS `qb_message_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qb_message_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attempts` int(11) DEFAULT '0',
  `session_id` int(11) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `received_response_at` datetime DEFAULT NULL,
  `sent_qbxml` text COLLATE utf8_unicode_ci,
  `response_qbxml` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_qb_message_sets_on_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_message_sets`
--

LOCK TABLES `qb_message_sets` WRITE;
/*!40000 ALTER TABLE `qb_message_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_message_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_requests`
--

DROP TABLE IF EXISTS `qb_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qb_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_message` text COLLATE utf8_unicode_ci,
  `coupa_message` text COLLATE utf8_unicode_ci,
  `operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ends_document_transaction` tinyint(1) DEFAULT NULL,
  `message_set_id` int(11) DEFAULT NULL,
  `document_transaction_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_qb_requests_on_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_requests`
--

LOCK TABLES `qb_requests` WRITE;
/*!40000 ALTER TABLE `qb_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_sessions`
--

DROP TABLE IF EXISTS `qb_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qb_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_store` text COLLATE utf8_unicode_ci,
  `progress` int(11) DEFAULT NULL,
  `last_error_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_error_message` text COLLATE utf8_unicode_ci,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_qb_sessions_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_sessions`
--

LOCK TABLES `qb_sessions` WRITE;
/*!40000 ALTER TABLE `qb_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_request_lines`
--

DROP TABLE IF EXISTS `quote_request_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_request_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `quote_request_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `price_amount` decimal(30,2) DEFAULT NULL,
  `price_currency_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `ship_to_address_id` int(11) DEFAULT NULL,
  `requisition_line_id` int(11) DEFAULT NULL,
  `reporting_price_amount` decimal(30,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_quote_request_lines_on_created_by` (`created_by`),
  KEY `index_quote_request_lines_on_form_id` (`form_id`),
  KEY `index_quote_request_lines_on_item_id` (`item_id`),
  KEY `index_quote_request_lines_on_price_currency_id` (`price_currency_id`),
  KEY `index_quote_request_lines_on_quote_request_id` (`quote_request_id`),
  KEY `index_quote_request_lines_on_requisition_line_id` (`requisition_line_id`),
  KEY `index_quote_request_lines_on_ship_to_address_id` (`ship_to_address_id`),
  KEY `index_quote_request_lines_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_request_lines`
--

LOCK TABLES `quote_request_lines` WRITE;
/*!40000 ALTER TABLE `quote_request_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_request_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_requests`
--

DROP TABLE IF EXISTS `quote_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `urgent` tinyint(1) DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `requisition_header_id` int(11) DEFAULT NULL,
  `supplier_view_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_quote_requests_on_created_by` (`created_by`),
  KEY `index_quote_requests_on_form_id` (`form_id`),
  KEY `index_quote_requests_on_requisition_header_id` (`requisition_header_id`),
  KEY `index_quote_requests_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_requests`
--

LOCK TABLES `quote_requests` WRITE;
/*!40000 ALTER TABLE `quote_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_requests_quote_suppliers`
--

DROP TABLE IF EXISTS `quote_requests_quote_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_requests_quote_suppliers` (
  `quote_request_id` int(11) DEFAULT NULL,
  `quote_supplier_id` int(11) DEFAULT NULL,
  KEY `index_quote_requests_quote_suppliers_on_quote_request_id` (`quote_request_id`),
  KEY `index_quote_requests_quote_suppliers_on_quote_supplier_id` (`quote_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_requests_quote_suppliers`
--

LOCK TABLES `quote_requests_quote_suppliers` WRITE;
/*!40000 ALTER TABLE `quote_requests_quote_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_requests_quote_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_response_lines`
--

DROP TABLE IF EXISTS `quote_response_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_response_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `quote_response_id` int(11) DEFAULT NULL,
  `quote_request_line_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `price_amount` decimal(30,2) DEFAULT NULL,
  `price_currency_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_response_id` int(11) DEFAULT NULL,
  `fob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `reporting_price_amount` decimal(30,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_quote_response_lines_on_created_by` (`created_by`),
  KEY `index_quote_response_lines_on_form_response_id` (`form_response_id`),
  KEY `index_quote_response_lines_on_item_id` (`item_id`),
  KEY `index_quote_response_lines_on_price_currency_id` (`price_currency_id`),
  KEY `index_quote_response_lines_on_quote_request_line_id` (`quote_request_line_id`),
  KEY `index_quote_response_lines_on_quote_response_id` (`quote_response_id`),
  KEY `index_quote_response_lines_on_uom_id` (`uom_id`),
  KEY `index_quote_response_lines_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_response_lines`
--

LOCK TABLES `quote_response_lines` WRITE;
/*!40000 ALTER TABLE `quote_response_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_response_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_responses`
--

DROP TABLE IF EXISTS `quote_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `quote_request_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `submitted_at` datetime DEFAULT NULL,
  `form_response_id` int(11) DEFAULT NULL,
  `quote_supplier_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_quote_responses_on_created_by` (`created_by`),
  KEY `index_quote_responses_on_form_response_id` (`form_response_id`),
  KEY `index_quote_responses_on_quote_request_id` (`quote_request_id`),
  KEY `index_quote_responses_on_quote_supplier_id` (`quote_supplier_id`),
  KEY `index_quote_responses_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_responses`
--

LOCK TABLES `quote_responses` WRITE;
/*!40000 ALTER TABLE `quote_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_suppliers`
--

DROP TABLE IF EXISTS `quote_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_quote_suppliers_on_created_by` (`created_by`),
  KEY `index_quote_suppliers_on_supplier_id` (`supplier_id`),
  KEY `index_quote_suppliers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_suppliers`
--

LOCK TABLES `quote_suppliers` WRITE;
/*!40000 ALTER TABLE `quote_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt_tolerances`
--

DROP TABLE IF EXISTS `receipt_tolerances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipt_tolerances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(11) DEFAULT NULL,
  `ss_qty_po_tolerance` decimal(10,0) DEFAULT NULL,
  `ss_amt_po_tolerance` decimal(10,0) DEFAULT NULL,
  `ss_qty_inv_tolerance` decimal(10,0) DEFAULT NULL,
  `ss_amt_inv_tolerance` decimal(10,0) DEFAULT NULL,
  `qty_po_tolerance` decimal(10,0) DEFAULT NULL,
  `amt_po_tolerance` decimal(10,0) DEFAULT NULL,
  `qty_inv_tolerance` decimal(10,0) DEFAULT NULL,
  `amt_inv_tolerance` decimal(10,0) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt_tolerances`
--

LOCK TABLES `receipt_tolerances` WRITE;
/*!40000 ALTER TABLE `receipt_tolerances` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt_tolerances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receivable_id` int(11) DEFAULT NULL,
  `receivable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_date` datetime DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit_price` decimal(30,4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `form_response_id` int(11) DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_receipts_on_created_by` (`created_by`),
  KEY `index_receipts_on_currency_id` (`currency_id`),
  KEY `index_receipts_on_form_response_id` (`form_response_id`),
  KEY `index_receipts_on_receivable_id` (`receivable_id`),
  KEY `index_receipts_on_receivable_type` (`receivable_type`),
  KEY `index_receipts_on_uom_id` (`uom_id`),
  KEY `index_receipts_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_commodities_policies`
--

DROP TABLE IF EXISTS `related_commodities_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `related_commodities_policies` (
  `commodity_id` int(11) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_commodities_policies`
--

LOCK TABLES `related_commodities_policies` WRITE;
/*!40000 ALTER TABLE `related_commodities_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_commodities_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_commodities_punchout_sites`
--

DROP TABLE IF EXISTS `related_commodities_punchout_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `related_commodities_punchout_sites` (
  `commodity_id` int(11) DEFAULT NULL,
  `punchout_site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_commodities_punchout_sites`
--

LOCK TABLES `related_commodities_punchout_sites` WRITE;
/*!40000 ALTER TABLE `related_commodities_punchout_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_commodities_punchout_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_commodities_requisition_line_templates`
--

DROP TABLE IF EXISTS `related_commodities_requisition_line_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `related_commodities_requisition_line_templates` (
  `commodity_id` int(11) DEFAULT NULL,
  `requisition_line_template_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_commodities_requisition_line_templates`
--

LOCK TABLES `related_commodities_requisition_line_templates` WRITE;
/*!40000 ALTER TABLE `related_commodities_requisition_line_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_commodities_requisition_line_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reorder_alerts`
--

DROP TABLE IF EXISTS `reorder_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reorder_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reorder_alerts_on_created_by` (`created_by`),
  KEY `index_reorder_alerts_on_item_id` (`item_id`),
  KEY `index_reorder_alerts_on_updated_by` (`updated_by`),
  KEY `index_reorder_alerts_on_warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reorder_alerts`
--

LOCK TABLES `reorder_alerts` WRITE;
/*!40000 ALTER TABLE `reorder_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `reorder_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_line_allocations`
--

DROP TABLE IF EXISTS `req_line_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `req_line_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requisition_header_id` int(11) DEFAULT NULL,
  `requisition_line_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `pct` decimal(8,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_req_line_allocations_on_account_id` (`account_id`),
  KEY `index_req_line_allocations_on_account_type_id` (`account_type_id`),
  KEY `index_req_line_allocations_on_requisition_header_id` (`requisition_header_id`),
  KEY `index_req_line_allocations_on_requisition_line_id` (`requisition_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_line_allocations`
--

LOCK TABLES `req_line_allocations` WRITE;
/*!40000 ALTER TABLE `req_line_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `req_line_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_event_history`
--

DROP TABLE IF EXISTS `requisition_event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_event_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `requisition_header_id` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_requisition_event_history_on_created_by` (`created_by`),
  KEY `index_requisition_event_history_on_requisition_header_id` (`requisition_header_id`),
  KEY `index_requisition_event_history_on_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_event_history`
--

LOCK TABLES `requisition_event_history` WRITE;
/*!40000 ALTER TABLE `requisition_event_history` DISABLE KEYS */;
INSERT INTO `requisition_event_history` VALUES (1,1,1,'2007-06-15 01:02:01','2007-06-15 01:02:01',1,'cart');
/*!40000 ALTER TABLE `requisition_event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_headers`
--

DROP TABLE IF EXISTS `requisition_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `requested_by` int(11) DEFAULT NULL,
  `need_by_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ship_to_address_id` int(11) DEFAULT NULL,
  `approval_id` int(11) DEFAULT NULL,
  `justification` text COLLATE utf8_unicode_ci,
  `deleted_at` datetime DEFAULT NULL,
  `buyer_note` text COLLATE utf8_unicode_ci,
  `pcard_id` int(11) DEFAULT NULL,
  `quote_response_id` int(11) DEFAULT NULL,
  `quote_requests_count` int(11) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  `ship_to_attention` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reject_reason_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_requisition_headers_on_account_type_id` (`account_type_id`),
  KEY `index_requisition_headers_on_approval_id` (`approval_id`),
  KEY `index_requisition_headers_on_created_by` (`created_by`),
  KEY `index_requisition_headers_on_department_id` (`department_id`),
  KEY `index_requisition_headers_on_pcard_id` (`pcard_id`),
  KEY `index_requisition_headers_on_quote_response_id` (`quote_response_id`),
  KEY `index_requisition_headers_on_ship_to_address_id` (`ship_to_address_id`),
  KEY `index_requisition_headers_on_status` (`status`),
  KEY `index_requisition_headers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_headers`
--

LOCK TABLES `requisition_headers` WRITE;
/*!40000 ALTER TABLE `requisition_headers` DISABLE KEYS */;
INSERT INTO `requisition_headers` VALUES (1,'cart',1,NULL,1,1,'2007-06-15 01:02:01','2007-06-15 01:02:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `requisition_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_line_templates`
--

DROP TABLE IF EXISTS `requisition_line_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_line_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `line_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `unit_price` decimal(30,4) DEFAULT NULL,
  `description_locked` tinyint(1) DEFAULT NULL,
  `quantity_locked` tinyint(1) DEFAULT NULL,
  `uom_locked` tinyint(1) DEFAULT NULL,
  `unit_price_locked` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier_locked` tinyint(1) DEFAULT NULL,
  `supplier_address_id` int(11) DEFAULT NULL,
  `supplier_address_locked` tinyint(1) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `contract_locked` tinyint(1) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_locked` tinyint(1) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_locked` tinyint(1) DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `commodity_locked` tinyint(1) DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_requisition_line_templates_on_account_id` (`account_id`),
  KEY `index_requisition_line_templates_on_commodity_id` (`commodity_id`),
  KEY `index_requisition_line_templates_on_contract_id` (`contract_id`),
  KEY `index_requisition_line_templates_on_created_by` (`created_by`),
  KEY `index_requisition_line_templates_on_currency_id` (`currency_id`),
  KEY `index_requisition_line_templates_on_form_id` (`form_id`),
  KEY `index_requisition_line_templates_on_status` (`status`),
  KEY `index_requisition_line_templates_on_supplier_address_id` (`supplier_address_id`),
  KEY `index_requisition_line_templates_on_supplier_id` (`supplier_id`),
  KEY `index_requisition_line_templates_on_uom_id` (`uom_id`),
  KEY `index_requisition_line_templates_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_line_templates`
--

LOCK TABLES `requisition_line_templates` WRITE;
/*!40000 ALTER TABLE `requisition_line_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_line_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_lines`
--

DROP TABLE IF EXISTS `requisition_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL DEFAULT '0',
  `line_num` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `unit_price` decimal(30,4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_line_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suggested_suppliers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requisition_line_template_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `form_response_id` int(11) DEFAULT NULL,
  `released_by_buyer` tinyint(1) DEFAULT NULL,
  `source_part_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `punchout_site_id` int(11) DEFAULT NULL,
  `need_by_date` datetime DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `sub_line_num` int(11) DEFAULT NULL,
  `quote_response_line_id` int(11) DEFAULT NULL,
  `supp_aux_part_num` text COLLATE utf8_unicode_ci,
  `account_id` int(11) DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `payment_term_id` int(11) DEFAULT NULL,
  `shipping_term_id` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `item_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `savings_pct` decimal(8,2) DEFAULT NULL,
  `reporting_total` decimal(30,2) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcard_id` int(11) DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unspsc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation_count` int(11) DEFAULT '0',
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_requisition_lines_on_account_id` (`account_id`),
  KEY `index_requisition_lines_on_account_type_id` (`account_type_id`),
  KEY `index_requisition_lines_on_allocation_count` (`allocation_count`),
  KEY `index_requisition_lines_on_commodity_id` (`commodity_id`),
  KEY `index_requisition_lines_on_contract_id` (`contract_id`),
  KEY `index_requisition_lines_on_created_by` (`created_by`),
  KEY `index_requisition_lines_on_currency_id` (`currency_id`),
  KEY `index_requisition_lines_on_form_response_id` (`form_response_id`),
  KEY `index_requisition_lines_on_header_id` (`header_id`),
  KEY `index_requisition_lines_on_item_id` (`item_id`),
  KEY `index_requisition_lines_on_milestone_id` (`milestone_id`),
  KEY `index_requisition_lines_on_order_line_id` (`order_line_id`),
  KEY `index_requisition_lines_on_payment_term_id` (`payment_term_id`),
  KEY `index_requisition_lines_on_punchout_site_id` (`punchout_site_id`),
  KEY `index_requisition_lines_on_quote_response_line_id` (`quote_response_line_id`),
  KEY `index_requisition_lines_on_requisition_line_template_id` (`requisition_line_template_id`),
  KEY `index_requisition_lines_on_shipping_term_id` (`shipping_term_id`),
  KEY `index_requisition_lines_on_status` (`status`),
  KEY `index_requisition_lines_on_supplier_id` (`supplier_id`),
  KEY `index_requisition_lines_on_uom_id` (`uom_id`),
  KEY `index_requisition_lines_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_lines`
--

LOCK TABLES `requisition_lines` WRITE;
/*!40000 ALTER TABLE `requisition_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_watchers`
--

DROP TABLE IF EXISTS `requisition_watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisition_watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_header_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_requisition_watchers_on_created_by` (`created_by`),
  KEY `index_requisition_watchers_on_req_header_id` (`req_header_id`),
  KEY `index_requisition_watchers_on_updated_by` (`updated_by`),
  KEY `index_requisition_watchers_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_watchers`
--

LOCK TABLES `requisition_watchers` WRITE;
/*!40000 ALTER TABLE `requisition_watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_records`
--

DROP TABLE IF EXISTS `revision_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revision_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `revisionable_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `data` mediumblob,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `revisionable` (`revisionable_type`,`revisionable_id`,`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_records`
--

LOCK TABLES `revision_records` WRITE;
/*!40000 ALTER TABLE `revision_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `revision_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `omnipotent` tinyint(1) NOT NULL DEFAULT '0',
  `system_role` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Guest','Implicit role for all accessors of the site',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(2,'Admin','Full system access to setup and maintain the application',1,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(3,'User','Standard role for all users who need to create and/or approve requisitions',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(4,'Buyer','Adds ability to manage requisitions, orders, RFQs, suppliers and items, plus access to purchase order reports',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(5,'Accounts Payable','Adds ability to manage suppliers, view orders and create invoices',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(6,'Central Receiving','Adds ability to create receipts and manage inventory',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(7,'Accounting Supervisor','Adds ability to manage suppliers, financial setup, budgets and approve on-hold invoices',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(8,'Edit as Approver','Adds ability to edit a requisition when you are approving it',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(9,'Inventory Manager','Adds ability to create items and view inventory reports',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(10,'Expense User','Standard role for all users who need to create and/or approve expense reports',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(11,'Expense Auditor','Adds ability to approve expense reports in accounting review',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(12,'Expense Processor','Adds ability to manage expense reports, except for audit',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(100,'Supplier','Access for supplier for invoicing capabilities',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01'),(101,'Dashboard','Access for executive dashboards',0,1,NULL,NULL,'2011-08-17 13:31:01','2011-08-17 13:31:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesforce_transactions`
--

DROP TABLE IF EXISTS `salesforce_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesforce_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `last_response` text COLLATE utf8_unicode_ci,
  `last_response_at` datetime DEFAULT NULL,
  `last_exported_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesforce_transactions`
--

LOCK TABLES `salesforce_transactions` WRITE;
/*!40000 ALTER TABLE `salesforce_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesforce_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('109'),('11'),('110'),('111'),('112'),('113'),('114'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20080925232628'),('20081007121847'),('20081014235140'),('20081023232115'),('20081025002557'),('20081029193040'),('20081029215351'),('20081030225436'),('20081103224700'),('20081106230022'),('20081107230313'),('20081110200133'),('20081114010843'),('20081118173336'),('20081120020610'),('20081125054040'),('20081203191642'),('20081203224439'),('20081205201323'),('20081208190628'),('20081210002350'),('20081210015446'),('20081210194718'),('20081211235447'),('20081213005005'),('20081216223103'),('20081229202023'),('20090106011413'),('20090106194037'),('20090114005253'),('20090115220411'),('20090120194033'),('20090121215356'),('20090122202207'),('20090127202546'),('20090128013542'),('20090203213902'),('20090204215726'),('20090204225344'),('20090209235106'),('20090211004908'),('20090211030153'),('20090212032356'),('20090212182811'),('20090216233806'),('20090217000838'),('20090220192254'),('20090221225030'),('20090223225030'),('20090224013431'),('20090225023344'),('20090225182224'),('20090311180740'),('20090311224750'),('20090312212042'),('20090312220754'),('20090312233450'),('20090313223824'),('20090320211800'),('20090324195601'),('20090325185120'),('20090325231221'),('20090326192512'),('20090327184051'),('20090328012044'),('20090330184543'),('20090401005142'),('20090406223356'),('20090407183736'),('20090407224205'),('20090408002404'),('20090408235117'),('20090409190253'),('20090410183425'),('20090414004448'),('20090414192600'),('20090414223651'),('20090415015337'),('20090420184422'),('20090423221247'),('20090502001447'),('20090519002132'),('20090519192038'),('20090519194122'),('20090521212030'),('20090526215319'),('20090603201523'),('20090603225854'),('20090604015403'),('20090608213409'),('20090611184822'),('20090611215827'),('20090625002423'),('20090701224627'),('20090707021400'),('20090707174015'),('20090708223338'),('20090713233707'),('20090714193608'),('20090716181804'),('20090723012702'),('20090727230452'),('20090730002540'),('20090805183346'),('20090818234846'),('20090819192524'),('20090826180953'),('20090826214757'),('20090925183558'),('20090929004238'),('20090929011007'),('20090929215336'),('20090930012619'),('20090930213514'),('20091002203934'),('20091005222551'),('20091006182204'),('20091007181342'),('20091007183806'),('20091007184606'),('20091008173817'),('20091009003616'),('20091013012050'),('20091016021323'),('20091021022523'),('20091023074030'),('20091023173730'),('20091026221118'),('20091026223634'),('20091027043546'),('20091027100733'),('20091027205912'),('20091027233602'),('20091027235328'),('20091028011211'),('20091028211657'),('20091029221030'),('20091030211858'),('20091103002817'),('20091111223041'),('20091111224922'),('20091112225740'),('20091113201624'),('20091210023850'),('20091228025114'),('20100111181726'),('20100111194524'),('20100119234301'),('20100204014447'),('20100209231133'),('20100217000246'),('20100219182146'),('20100223211647'),('20100227012710'),('20100308201814'),('20100315183634'),('20100315185000'),('20100315205136'),('20100317004148'),('20100317222810'),('20100318185207'),('20100322221040'),('20100408190929'),('20100412184355'),('20100414193813'),('20100426191203'),('20100426221314'),('20100505102948'),('20100506201851'),('20100506235527'),('20100510185855'),('20100514003452'),('20100519013605'),('20100527070437'),('20100605004733'),('20100611224122'),('20100621195305'),('20100623234449'),('20100630183859'),('20100630183943'),('20100630185202'),('20100630191302'),('20100702190109'),('20100703035601'),('20100708190102'),('20100710031038'),('20100713215020'),('20100720184525'),('20100721175202'),('20100722190724'),('20100722220318'),('20100726194841'),('20100726195622'),('20100727201013'),('20100727211618'),('20100727220536'),('20100803025619'),('20100803041022'),('20100803063435'),('20100803070000'),('20100805041158'),('20100806211636'),('20100807001633'),('20100812180925'),('20100816215913'),('20100817011938'),('20100819174537'),('20100901223904'),('20100907191730'),('20100921232620'),('20100923182000'),('20101019001804'),('20101104212317'),('20101108194423'),('20101108194804'),('20101111190014'),('20101119214926'),('20101203013214'),('20110103223323'),('20110104221559'),('20110114085938'),('20110118235650'),('20110127001951'),('20110201220516'),('20110203192759'),('20110204190830'),('20110207223603'),('20110215013903'),('20110225005730'),('20110302220646'),('20110303185712'),('20110303191210'),('20110308205009'),('20110310234903'),('20110404214745'),('20110406230048'),('20110406233210'),('20110407005643'),('20110407220826'),('20110414172838'),('20110420182020'),('20110531220053'),('20110602234401'),('20110615205448'),('20110616175946'),('20110707175029'),('20110707234720'),('20110718181827'),('20110804185205'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('29'),('3'),('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('4'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_session_id_index` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup`
--

DROP TABLE IF EXISTS `setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_setup_on_created_by` (`created_by`),
  KEY `index_setup_on_key` (`key`),
  KEY `index_setup_on_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup`
--

LOCK TABLES `setup` WRITE;
/*!40000 ALTER TABLE `setup` DISABLE KEYS */;
INSERT INTO `setup` VALUES (1,'ultimate approver','1',NULL,NULL,1,'2007-06-08 05:15:01'),(2,'company name','',1,'2006-09-14 04:18:21',1,'2007-05-21 20:51:03'),(3,'company logo','',1,'2006-09-14 04:18:21',1,'2006-09-16 19:24:03'),(4,'route_to_buyer_on_draft_supplier','1',1,'2006-10-19 22:22:54',1,'2007-05-21 20:51:03'),(5,'route_to_buyer_on_no_contract',NULL,1,'2006-10-19 22:22:54',1,'2007-05-21 20:51:03'),(6,'goto_setup_wizard','1',1,'2006-10-19 22:22:54',1,'2007-05-21 20:51:03'),(7,'allow_self_approval','1',NULL,'2007-05-16 07:31:16',1,'2008-12-09 19:54:00'),(8,'help url','http://support.coupa.com',1,'2007-05-21 20:51:03',1,'2007-05-21 20:51:03'),(9,'milestones',NULL,1,'2007-05-24 03:42:18',1,'2007-05-24 03:42:18'),(10,'approval_management_hierarchy','1',NULL,'2007-09-14 20:41:55',1,'2008-12-09 19:56:31'),(11,'approval_chains','1',NULL,'2007-09-14 20:41:55',1,'2008-12-09 19:53:59'),(12,'reporting_currency','USD',NULL,'2008-05-21 10:50:44',NULL,'2008-05-21 10:50:44'),(13,'enable_coupa_connect','false',NULL,'2008-11-06 00:37:31',NULL,'2008-11-06 00:37:31'),(18,'allow_mass_delete','1',NULL,'2007-10-09 08:27:04',NULL,'2007-10-09 08:27:04'),(25,'show_bookmarklet','1',NULL,'2008-11-18 22:25:35',NULL,'2008-11-18 22:25:41'),(31,'add_approver','1',1,'2008-12-09 19:53:34',1,'2008-12-09 19:54:04'),(32,'session_expiration',NULL,1,'2008-12-09 19:53:49',1,'2008-12-09 19:53:49'),(34,'users_override_terms','1',1,'2008-12-10 20:46:46',1,'2008-12-10 21:13:11'),(75,'min_num_expense_lines_for_average','25',NULL,'2008-11-18 22:25:35',NULL,'2009-11-29 22:25:41'),(76,'notification_on_approval_error','1',NULL,'2008-12-29 22:25:35',NULL,'2009-12-29 22:25:41'),(77,'expenses_missing_receipts_text','Note: All missing receipts should be submitted to the finance group.',NULL,'2008-12-29 22:25:35',NULL,'2009-12-29 22:25:41'),(78,'emailed_po_includes_attachment','1',NULL,'2008-12-29 22:25:35',NULL,'2010-03-15 12:25:41');
/*!40000 ALTER TABLE `setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_terms`
--

DROP TABLE IF EXISTS `shipping_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_terms`
--

LOCK TABLES `shipping_terms` WRITE;
/*!40000 ALTER TABLE `shipping_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_items`
--

DROP TABLE IF EXISTS `shopping_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopping_cart_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `quantity` float NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shopping_cart_items_on_created_by` (`created_by`),
  KEY `index_shopping_cart_items_on_item_id` (`item_id`),
  KEY `index_shopping_cart_items_on_shopping_cart_id` (`shopping_cart_id`),
  KEY `index_shopping_cart_items_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_items`
--

LOCK TABLES `shopping_cart_items` WRITE;
/*!40000 ALTER TABLE `shopping_cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_carts`
--

DROP TABLE IF EXISTS `shopping_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shopping_carts_on_created_by` (`created_by`),
  KEY `index_shopping_carts_on_updated_by` (`updated_by`),
  KEY `index_shopping_carts_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_carts`
--

LOCK TABLES `shopping_carts` WRITE;
/*!40000 ALTER TABLE `shopping_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_items`
--

DROP TABLE IF EXISTS `supplier_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `price` decimal(30,4) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `supplier_part_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `preferred_flag` tinyint(1) DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reporting_price` decimal(30,4) DEFAULT NULL,
  `connect_supplier_item_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `price_change` float DEFAULT NULL,
  `savings_pct` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_supplier_items_on_contract_id` (`contract_id`),
  KEY `index_supplier_items_on_created_by` (`created_by`),
  KEY `index_supplier_items_on_currency_id` (`currency_id`),
  KEY `index_supplier_items_on_item_id` (`item_id`),
  KEY `index_supplier_items_on_supplier_id` (`supplier_id`),
  KEY `index_supplier_items_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_items`
--

LOCK TABLES `supplier_items` WRITE;
/*!40000 ALTER TABLE `supplier_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_reviews`
--

DROP TABLE IF EXISTS `supplier_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_supplier_reviews_on_created_by` (`created_by`),
  KEY `index_supplier_reviews_on_supplier_id` (`supplier_id`),
  KEY `index_supplier_reviews_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_reviews`
--

LOCK TABLES `supplier_reviews` WRITE;
/*!40000 ALTER TABLE `supplier_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `corporate_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storefront_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `primary_contact_id` int(11) DEFAULT NULL,
  `primary_address_id` int(11) DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_matching_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on_hold` tinyint(1) DEFAULT NULL,
  `po_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_identity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_supplier_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_supplier_identity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commodity_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_term_id` int(11) DEFAULT NULL,
  `shipping_term_id` int(11) DEFAULT NULL,
  `po_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer_hold` tinyint(1) DEFAULT '0',
  `duns` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupa_connect_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Not Linked',
  `allow_buy_from_connect` tinyint(1) DEFAULT '0',
  `coupa_connect_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_invoice_supplier_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_invoice_supplier_identity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_invoice_buyer_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_invoice_buyer_identity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cxml_invoice_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_cxml_invoicing` tinyint(1) DEFAULT '0',
  `reviews_count` int(11) NOT NULL DEFAULT '0',
  `avg_rating` float NOT NULL DEFAULT '0',
  `savings_pct` decimal(8,2) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcard_id` int(11) DEFAULT NULL,
  `allow_inv_from_connect` tinyint(1) DEFAULT NULL,
  `last_quickbooks_sync` datetime DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `irequest_purchaser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_suppliers_on_commodity_id` (`commodity_id`),
  KEY `index_suppliers_on_created_by` (`created_by`),
  KEY `index_suppliers_on_parent_id` (`parent_id`),
  KEY `index_suppliers_on_payment_term_id` (`payment_term_id`),
  KEY `index_suppliers_on_primary_address_id` (`primary_address_id`),
  KEY `index_suppliers_on_primary_contact_id` (`primary_contact_id`),
  KEY `index_suppliers_on_shipping_term_id` (`shipping_term_id`),
  KEY `index_suppliers_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id` (`taggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tags_on_created_by` (`created_by`),
  KEY `tags_name_index` (`name`),
  KEY `index_tags_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tasks_on_created_by` (`created_by`),
  KEY `index_tasks_on_project_id` (`project_id`),
  KEY `index_tasks_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_codes`
--

DROP TABLE IF EXISTS `tax_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tax_codes_on_created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_codes`
--

LOCK TABLES `tax_codes` WRITE;
/*!40000 ALTER TABLE `tax_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unspsc_commodity_mappings`
--

DROP TABLE IF EXISTS `unspsc_commodity_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unspsc_commodity_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL,
  `unspsc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unspsc_commodity_mappings`
--

LOCK TABLES `unspsc_commodity_mappings` WRITE;
/*!40000 ALTER TABLE `unspsc_commodity_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `unspsc_commodity_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uoms`
--

DROP TABLE IF EXISTS `uoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allowable_precision` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uoms`
--

LOCK TABLES `uoms` WRITE;
/*!40000 ALTER TABLE `uoms` DISABLE KEYS */;
INSERT INTO `uoms` VALUES (1,'EA','Each',0,1,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(2,'BX','Box',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(3,'DZ','Dozen',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(4,'CS','Case',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(5,'PK','Pack',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(6,'HRS','Hours',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(7,'CT','Carton',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(8,'KT','Kit',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(9,'PD','Pad',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(10,'PR','Pair',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08'),(11,'RM','Ream',0,0,NULL,NULL,'2011-08-17 13:31:08','2011-08-17 13:31:08');
/*!40000 ALTER TABLE `uoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_errors`
--

DROP TABLE IF EXISTS `upload_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_source_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  `first_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_with_error` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_errors` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_errors`
--

LOCK TABLES `upload_errors` WRITE;
/*!40000 ALTER TABLE `upload_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_attributes`
--

DROP TABLE IF EXISTS `user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_attributes_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_attributes`
--

LOCK TABLES `user_attributes` WRITE;
/*!40000 ALTER TABLE `user_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salted_password` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `verified` tinyint(1) DEFAULT '0',
  `role` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_token` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `logged_in_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `delete_after` datetime DEFAULT NULL,
  `approval_limit_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `default_currency_id` int(11) DEFAULT NULL,
  `pcard_id` int(11) DEFAULT NULL,
  `phone_work` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_phone_id` int(11) DEFAULT NULL,
  `mobile_phone_id` int(11) DEFAULT NULL,
  `use_jabber` tinyint(1) DEFAULT NULL,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `custom_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_account_type_id` int(11) DEFAULT NULL,
  `receive_newsletters` tinyint(1) DEFAULT '0',
  `failed_login_attempts` int(11) DEFAULT '0',
  `locked_out_at` datetime DEFAULT NULL,
  `self_approval_limit_id` int(11) DEFAULT NULL,
  `custom_field_11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field_20` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchasing_user` tinyint(1) DEFAULT NULL,
  `expense_user` tinyint(1) DEFAULT NULL,
  `expense_rating` decimal(30,2) DEFAULT NULL,
  `account_security_type` int(11) DEFAULT NULL,
  `salesforce_enabled` tinyint(1) DEFAULT NULL,
  `salesforce_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sso_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `authentication_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'coupa_credentials',
  `yodlee_auth_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yodlee_login_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_approval_limit_id` (`approval_limit_id`),
  KEY `index_users_on_default_address_id` (`default_address_id`),
  KEY `index_users_on_default_currency_id` (`default_currency_id`),
  KEY `index_users_on_department_id` (`department_id`),
  KEY `index_users_on_manager_id` (`manager_id`),
  KEY `index_users_on_mobile_phone_id` (`mobile_phone_id`),
  KEY `index_users_on_pcard_id` (`pcard_id`),
  KEY `index_users_on_supplier_id` (`supplier_id`),
  KEY `index_users_on_work_phone_id` (`work_phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'coupasupport','3a01d1ebc09c7fc545c142a7ef147744c24d100a','coupasupport@coupa.com','Coupa','Support','68081782811612a969391a3d3c5514b7965f4b8a',1,NULL,'52fce556f62aae2abefdda0e0f2e5396eea46245','2006-02-17 14:01:34','2006-02-16 14:01:34','2007-09-14 20:41:44','2007-06-15 01:01:59',0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'active',NULL,'Coupa Support',0,0,NULL,NULL,'SupportUser',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'coupa_credentials',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_users_roles_on_role_id_and_user_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_locations`
--

DROP TABLE IF EXISTS `warehouse_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) DEFAULT NULL,
  `aisle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_warehouse_locations_on_created_by` (`created_by`),
  KEY `index_warehouse_locations_on_updated_by` (`updated_by`),
  KEY `index_warehouse_locations_on_warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_locations`
--

LOCK TABLES `warehouse_locations` WRITE;
/*!40000 ALTER TABLE `warehouse_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_types`
--

DROP TABLE IF EXISTS `warehouse_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_warehouse_types_on_created_by` (`created_by`),
  KEY `index_warehouse_types_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_types`
--

LOCK TABLES `warehouse_types` WRITE;
/*!40000 ALTER TABLE `warehouse_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warehouse_type_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `active_flag` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_warehouses_on_address_id` (`address_id`),
  KEY `index_warehouses_on_created_by` (`created_by`),
  KEY `index_warehouses_on_updated_by` (`updated_by`),
  KEY `index_warehouses_on_warehouse_type_id` (`warehouse_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `max_length` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `is_selected` tinyint(1) DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `first_is_blank` tinyint(1) DEFAULT NULL,
  `is_internal` tinyint(1) DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci,
  `min_length` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_widgets_on_created_by` (`created_by`),
  KEY `index_widgets_on_form_id` (`form_id`),
  KEY `index_widgets_on_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
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

-- Dump completed on 2011-08-17 14:09:33
