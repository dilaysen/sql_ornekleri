-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: kutuphane
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.4-MariaDB

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
-- Table structure for table `calisma_odalari`
--

DROP TABLE IF EXISTS `calisma_odalari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calisma_odalari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Oda_No` int(11) DEFAULT NULL,
  `Oda_Kat` text DEFAULT NULL,
  `Maksimum_Kapasite` int(11) DEFAULT NULL,
  `Minimum_Kapasite` int(11) DEFAULT NULL,
  `Oda_Durumu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calisma_odalari`
--

LOCK TABLES `calisma_odalari` WRITE;
/*!40000 ALTER TABLE `calisma_odalari` DISABLE KEYS */;
INSERT INTO `calisma_odalari` VALUES (1,101,'Kat 1',6,3,'Normal'),(2,102,'Kat 1',6,3,'Normal'),(3,103,'Kat 1',6,3,'Normal'),(4,104,'Kat 1',6,3,'Normal'),(5,201,'Kat 2',12,6,'Normal'),(6,202,'Kat 2',12,6,'Normal'),(7,301,'Kat 3',8,1,'Özel'),(8,302,'Kat 3',8,1,'Özel');
/*!40000 ALTER TABLE `calisma_odalari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekipmanlar`
--

DROP TABLE IF EXISTS `ekipmanlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekipmanlar` (
  `Oda_no` int(11) DEFAULT NULL,
  `Ekipman_adi` varchar(100) DEFAULT NULL,
  `Ekipman_Adedi` int(11) DEFAULT NULL,
  `Ekipman_Fiyatlari` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekipmanlar`
--

LOCK TABLES `ekipmanlar` WRITE;
/*!40000 ALTER TABLE `ekipmanlar` DISABLE KEYS */;
INSERT INTO `ekipmanlar` VALUES (101,'Projeksiyon Cihazı',1,3299),(101,'Perde',1,943),(101,'Dizüstü Bilgisayar',3,11500),(101,'Yazı Tahtası',1,300),(101,'Doküman Kamera',1,7131),(102,'Projeksiyon Cihazı',1,3299),(102,'Perde',1,943),(102,'Dizüstü Biligsayar',1,11500),(102,'Yazı Tahtası',3,300),(102,'Doküman Kamera',1,7131),(103,'Projeksiyon Cihazı',1,3299),(103,'Perde',1,943),(103,'Doküman Kamera',1,7131),(103,'Dizüstü Bilgisayar',3,11500),(103,'Yazı Tahtası',1,300),(104,'Projeksiyon Cihazı',1,3299),(104,'Perde',1,943),(104,'Dizüstü Bilgisayar',3,11500),(104,'Yazı Tahtası',1,300),(201,'Projeksiyon Cihazı',1,3299),(201,'Perde',1,943),(201,'Doküman Kamera',1,7131),(201,'Dizüstü Bilgisayar',6,11500),(201,'Yazı Tahtası',1,300),(202,'Dizüstü Bilgisayar',6,11500),(202,'Yazı Tahtası',1,300),(301,'Masaüstü Bilgisayar',8,6045),(301,'Doküman Okuyucu',8,5145),(301,'Kulaklık',8,325),(302,'Masaüstü Bilgisayar',8,6045),(302,'Doküman Okuyucu',8,5145),(302,'Kulaklık',8,325);
/*!40000 ALTER TABLE `ekipmanlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oda_durumu`
--

DROP TABLE IF EXISTS `oda_durumu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oda_durumu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ogr_id` int(11) DEFAULT NULL,
  `Oda_No` int(11) DEFAULT NULL,
  `Tarih` date DEFAULT NULL,
  `Giris_Saati` time DEFAULT NULL,
  `Cikis_Saati` time DEFAULT NULL,
  `Randevu_Saati` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oda_durumu`
--

LOCK TABLES `oda_durumu` WRITE;
/*!40000 ALTER TABLE `oda_durumu` DISABLE KEYS */;
INSERT INTO `oda_durumu` VALUES (1,3,101,'2021-10-14','09:20:00','10:20:00','09:20:00'),(2,4,101,'2021-10-14','09:20:00','10:50:00','09:20:00'),(3,21,101,'2021-10-14','09:20:00','10:50:00','09:20:00'),(4,9,201,'2021-10-15','10:15:00','11:15:00','10:15:00'),(5,12,201,'2021-10-15','10:15:00','11:15:00','10:15:00'),(6,17,201,'2021-10-15','10:15:00','11:45:00','10:15:00'),(7,20,201,'2021-10-15','10:15:00','11:45:00','10:15:00'),(8,24,201,'2021-10-15','10:15:00','11:15:00','10:15:00'),(9,25,201,'2021-10-15','10:15:00','11:45:00','10:15:00'),(10,14,302,'2021-10-15','15:30:00','17:00:00','15:30:00'),(11,15,103,'2021-10-15','09:08:00','09:38:00','09:08:00'),(12,23,103,'2021-10-15','09:08:00','10:08:00','09:08:00'),(13,34,103,'2021-10-15','09:08:00','10:08:00','09:08:00'),(14,6,103,'2021-10-15','09:38:00','10:08:00','09:08:00'),(15,22,101,'2021-10-16','16:15:00','17:12:00','16:00:00'),(16,28,101,'2021-10-16','16:15:00','17:12:00','16:00:00'),(17,32,101,'2021-10-16','16:15:00','17:12:00','16:00:00'),(18,10,302,'2021-10-16','11:00:00','12:19:00','10:45:00'),(19,18,302,'2021-10-16','11:00:00','12:30:00','10:45:00'),(20,33,302,'2021-10-16','11:00:00','11:25:00','10:45:00'),(21,8,104,'2021-10-16','12:05:00','12:50:00','12:05:00'),(22,16,104,'2021-10-16','12:05:00','12:50:00','12:05:00'),(23,30,104,'2021-10-16','12:05:00','12:50:00','12:05:00'),(24,35,104,'2021-10-16','12:05:00','13:35:00','12:05:00'),(25,2,104,'2021-10-16','12:50:00','13:35:00','12:50:00'),(26,26,104,'2021-10-16','12:50:00','13:35:00','12:50:00'),(27,5,301,'2021-10-16','13:03:00','14:33:00','13:03:00'),(28,31,301,'2021-10-16','13:03:00','14:25:00','13:03:00'),(29,6,101,'2021-10-17','09:00:00','10:30:00','09:00:00'),(30,22,101,'2021-10-17','09:00:00','11:00:00','09:00:00'),(31,28,101,'2021-10-17','09:00:00','11:00:00','09:00:00'),(32,32,101,'2021-10-17','10:30:00','11:00:00','10:30:00'),(33,7,101,'2021-10-17','10:30:00','11:00:00','10:30:00'),(34,5,301,'2021-10-17','16:05:00','17:17:00','16:05:00'),(35,14,301,'2021-10-17','16:05:00','17:35:00','16:05:00'),(36,11,101,'2021-10-18','11:12:00','12:12:00','11:12:00'),(37,27,101,'2021-10-18','11:12:00','12:12:00','11:12:00'),(38,19,101,'2021-10-18','11:12:00','12:12:00','11:12:00'),(39,1,101,'2021-10-18','12:29:00','13:59:00','12:12:00'),(40,13,101,'2021-10-18','12:29:00','13:59:00','12:12:00'),(41,30,101,'2021-10-18','12:29:00','13:59:00','12:12:00'),(42,35,101,'2021-10-18','12:29:00','13:59:00','12:12:00'),(43,18,302,'2021-10-19',NULL,NULL,'16:16:00'),(44,3,104,'2021-10-19','14:20:00','15:45:00','14:15:00'),(45,4,104,'2021-10-19',NULL,NULL,'14:15:00'),(46,21,104,'2021-10-19','14:20:00','15:40:00','14:15:00'),(47,20,104,'2021-10-19','14:15:00','15:40:00','14:15:00'),(48,14,301,'2021-10-20','11:20:00','13:50:00','11:20:00'),(49,31,301,'2021-10-20',NULL,NULL,'12:50:00'),(50,10,301,'2021-10-20',NULL,NULL,'12:50:00');
/*!40000 ALTER TABLE `oda_durumu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrenciler`
--

DROP TABLE IF EXISTS `ogrenciler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogrenciler` (
  `Ogr_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ad_Soyad` varchar(100) DEFAULT NULL,
  `Bolum` varchar(100) DEFAULT NULL,
  `Ogr_Durum` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Ogr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenciler`
--

LOCK TABLES `ogrenciler` WRITE;
/*!40000 ALTER TABLE `ogrenciler` DISABLE KEYS */;
INSERT INTO `ogrenciler` VALUES (1,'Handan ERSOY','Kimya Mühendisliği','Normal '),(2,'Ali YURTSEVEN ','Biyokimya Bölümü ','Normal '),(3,'Gülcan Selin AKKAYA','İktisat Bölümü','Normal '),(4,'Onur AKIN','İktisat Bölümü','Normal '),(5,'Erol OHTAMIŞ','Beslenme ve Diyetik Bölümü','Özel'),(6,'Bartu KULBİLGE','Tıp','Normal '),(7,'Kılıçhan KAYNAK ','Diş Hekimliği','Normal '),(8,'Pars POLAT ','Eczacılık','Normal '),(9,'Mehdi BİRBARA','Elektrik-Elektronik Mühendisliği','Normal '),(10,'Cenay DESTAN','Görsel Sanatlar','Özel '),(11,'Duygu DENİZERİ','Mimarlık','Normal '),(12,'Esma DURNAOĞLU','Bilgisayar Mühendisliği','Normal '),(13,'Gizem YURTGULU','Matematik Bölümü','Normal '),(14,'Ali VEFA','Tıp','Özel'),(15,'Ilgaz KAYA','Hukuk ','Normal'),(16,'Çınar KAYA','Eczacılık','Normal '),(17,'Zeynep MADEN ','Bilgisayar  Mühendisliği','Normal'),(18,'Emine ALTIPARMAK','Aktüerya','Özel'),(19,'Umut Can KARA','Mimarlık','Normal'),(20,'Berat GÜRLEYEN ','İstatistik ve Bilgisayar Bilimleri','Normal'),(21,'Ayşe YILMAZ','İktisat Bölümü','Normal'),(22,'Enes AK','Tıp','Normal'),(23,'Ertuğrul ÖZTÜRK','Hukuk','Normal '),(24,'Dilay ŞEN','İstatistik Bölümü ','Normal '),(25,'Arzu ARIK','Bilgisayar Mühendisliği','Normal '),(26,'Zeynep BAKICI ','Biyoloji Bölümü ','Normal '),(27,'Kaan YILDIRIM ','Güzel Sanatlar','Normal '),(28,'Funda ERYILMAZ','Tıp','Normal '),(29,'Aslı KAYA','İngiliz Dili ve Edebiyatı','Özel '),(30,'Yasemin DEMİRBAŞ','Hemşirelik ','Normal '),(31,'Ulualp SEZİŞ','Beslenme ve Diyetik Bölümü ','Özel'),(32,'Mehmet Emir ASAF','Tıp','Normal'),(33,'Mehmet Can KEMAL ','Güzel Sanatlar','Özel '),(34,'Ali Demir ASAF ','Hukuk','Normal'),(35,'Melis Öz','Ebelik Bölümü ','Normal');
/*!40000 ALTER TABLE `ogrenciler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kutuphane'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-17 17:27:36
