-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: TelReh
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `birimler`
--

DROP TABLE IF EXISTS `birimler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birimler` (
  `birimNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `birimAdi` varchar(120) NOT NULL,
  `birimTel` varchar(15) DEFAULT NULL,
  `birimFaks` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`birimNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birimler`
--

LOCK TABLES `birimler` WRITE;
/*!40000 ALTER TABLE `birimler` DISABLE KEYS */;
INSERT INTO `birimler` VALUES (1,'rektörlük','294 00 00','294 00 37'),(2,'basımevi müdürlüğü','294 05 32','294 05 31'),(3,'bilgi işlem daire başkanlığı','294 05 00','294 05 01'),(4,'döner sermaye işletme müdürlüğü','295 39 84','295 39 85'),(5,'hukuk müşavirliği','294 05 90',NULL);
/*!40000 ALTER TABLE `birimler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kisiler`
--

DROP TABLE IF EXISTS `kisiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kisiler` (
  `kisiNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kisiAdi` varchar(150) NOT NULL,
  `gorev` varchar(150) NOT NULL,
  `birim` int(10) unsigned NOT NULL,
  `telNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kisiNo`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kisiler`
--

LOCK TABLES `kisiler` WRITE;
/*!40000 ALTER TABLE `kisiler` DISABLE KEYS */;
INSERT INTO `kisiler` VALUES (1,'B. Yıldızhan','Rektör Sekreteri',1,'294 00 11'),(2,'E. Yıldız','Özel Kalem Müdürü',1,'294 00 10'),(3,'Tevfik Yücedoğru','Rektör Yardımcısı',1,'294 00 22'),(4,'N. Şen','Rektör Yardımcısı Sekreteri',1,'294 00 22'),(5,'Mehmet Yüce','Rektör Yardımcısı',1,'294 00 18'),(6,'D. Gezici','Rektör Yardımcısı Sekreteri',1,'294 00 18'),(7,'Eray Alper','Rektör Yardımcısı',1,'294 00 20'),(8,'Ç. Uca','Rektör Yardımcısı Sekreteri',1,'294 00 20'),(9,'Aslı Hockenberger','Rektör Yardımcısı',1,'294 00 53'),(10,'Mehmet Yüce ','Genel Sekreter',1,'294 00 42'),(11,'N. Şen','Sekreter',1,'294 00 42'),(12,'Çiğdem Şenol','Yazı İşleri Birimi Şefi',1,'294 00 38'),(13,'Nilfer Şahbaz','Yazı İşleri Birimi',1,'294 00 85'),(14,'Şafak Özmen','Yazı İşleri Birimi',1,'294 00 44'),(15,'Özge Abiç','Yazı İşleri Birimi (Etik Kurul)',1,'294 00 86'),(16,'Aslıhan Karagöz','Rektörlük Giden Evrak',1,'294 00 90'),(17,'Nimet Erdoğan','Rektörlük Giden Evrak',1,'294 00 90'),(18,'Erdem Tufan','Rektörlük Giden Evrak',1,'294 00 91'),(19,'Hasan Kurt','Rektörlük Gelen Evrak',1,'294 00 91'),(20,'Selçuk Ayas','Rektörlük Gelen Evrak',1,'294 00 91'),(21,'Çiğdem Coşkun','Bilgi Edinme Birimi',1,'294 00 77'),(22,'Mehmet Aydemir','Mete Cengiz Kültür Merkezi (Yönetim)',1,'40677'),(23,'Adem Kocaman','Mete Cengiz Kültür Merkezi (Büro)',1,'40678'),(24,'Veysel İnal','Mete Cengiz Kültür Merkezi (Büro)',1,'40678'),(25,'Serhat Budak','Mete Cengiz Kültür Merkezi (Büro)',1,'40678'),(26,'Fikri Pala','Rektör Danışmanı',1,'294 00 71'),(27,'Tayyar Arı','Rektör Danışmanı',1,'294 00 71'),(28,'Adem Doğangün','Rektör Danışmanı',1,'294 00 52'),(29,'Adem Doğangün','Rektör Danışmanı',1,'294 00 52'),(30,'Mehmet Karadağ','Rektör Danışmanı',1,'294 00 52'),(31,'Osman Tüysüz','Rektör Danışmanı',1,'294 00 71'),(32,'Mustafa Tayyar','MEYOK Koordinatörü',1,'294 00 71'),(33,'Serpil Aytaç','UKAM',1,'294 00 52'),(34,'Ömer Kaynaklı','Uluslar Arası İlişkiler Koordinatörlüğü',1,'294 00 52'),(35,'Fatih Karpat','Uluslar Arası İlişkiler Koordinatörlüğü',1,'294 00 52'),(36,'Fadıl Tunçel','İç Denetim Birimi Başkanı',1,'294 01 62'),(37,'Hüznü Genç','İç Denetçi',1,'294 04 08'),(38,'Osman Metindoğan','İç Denetçi',1,'294 01 63'),(39,'Ercan Songur','İç Denetçi',1,'291 01 64'),(40,'Zübeyde Soğucak','İç Denetim Birimi Başkanlık Sekreterliği',1,'294 24 90'),(41,'Figen Atan','Halkla İlişkiler Müdürü',1,'294 00 57'),(42,'Figen Atan','Halkla İlişkiler Müdürü',1,'294 00 60'),(43,'Sevinç Baysal','Basın',1,'294 00 68'),(44,'S. Kars','Proje Yönetim Merkezi Sekreteri ',1,'294 00 53'),(45,'Şehnaz Baltacı Göktalay','Proje Yönetim Merkezi Koordinatörü',1,'294 00 53'),(46,'Ömer Kaynaklı','Uluslar Arası İlişkiler Birimi Erasmus Koordinatörü',1,'294 19 84'),(47,'Volkan Kahraman','Erasmus Öğrenim Hareketliliği',1,'294 00 72'),(48,'Yıldız Çuvaş','Erasmus Öğrenim ve Staj Hareketliliği',1,'294 05 46'),(49,'Damla Eldeleklioğlu','Erasmus Öğrenim Hareketliliği',1,'294 05 34'),(50,'Evren Doğru','Erasmus Personel Hareketliliği ve Mevlana Programı',1,'294 05 30'),(51,'Ali Yılmaz','Mali İşler (Erasmus)',1,'294 05 36'),(52,'Şükrü Dokur','Usem Müdür',1,'42906'),(53,'Mehtap Tuban','Usem Sekreter',1,'42902'),(54,'Ayşe Emetullah Ak','Usem Satınalma Muhasebe',1,'42905'),(55,'Belkıs Turgut','Sekreter',2,'40532'),(56,'Sakine Özel','Şube Müdür V.',2,'40532'),(57,'Murat Özçiçek','Atölye Birim Sorumlusu',2,'40539'),(58,'Berna Bayram ','Grafik Tasarım',2,'40533'),(59,'Emel Hatipoğlu','Baskı Öncesi / Sayfa Tasarım',2,'40535'),(60,'Ülkü Çetin','Atölye / Kırım Katlama - Amerikan Cilt',2,'40538'),(61,'Ömer Kütüklü','Atölye / Kırım Katlama - Amerikan Cilt',2,'40538'),(62,'Murat Düz','Atölye / Dijital Baskı',2,'40541');
/*!40000 ALTER TABLE `kisiler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28  0:25:37
