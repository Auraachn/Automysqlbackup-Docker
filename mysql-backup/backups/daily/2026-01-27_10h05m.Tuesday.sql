/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: host.docker.internal    Database: laundry
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `laundry`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laundry` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `laundry`;

--
-- Table structure for table `karyawan`
--

DROP TABLE IF EXISTS `karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_karyawan` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karyawan`
--

LOCK TABLES `karyawan` WRITE;
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` VALUES (1,'Nanda','admin@binato.com','+6285320357152','Ngujang - Tulungagung','Follow me, chuakss','2de5915d2693058ce89360fe34e9f0bb-c286f402aeea6a71d2ee6496cce78337.jpg','Admin'),(2,'Avi','avisibuk@gmail.com','08520357152','Brantas - Kediri','Saya adalah seorang Programmer','4e25a1e663d4ce2d646277f7f6a5b977-9985983696e6e969a115de6738bfe1c7.jpg','Karyawan'),(3,'Firstha','pistapare@gmail.con','08520357152','Kampung Inggris - Pare','Saya adalah seorang Polwan','25cd5d840b3a1cf5a2b7aa2d6fe8fd68-3b621fbb91543fbc0af911cec7b9b177.jpg','Karyawan'),(4,'Zalfa','zalfatuban@gmail.con','08520357000','Galagung - Tuban','Penguasa Pantai Tuban adalah saya','1934c096c9d704465bf4f49d120c25e3-bff45ef1755af32638afaa6adb79199d.jpg','Karyawan'),(5,'Annisa','anisatp@gmail.con','08520357662','TP6 - Surabaya','Suka menjelajah Tunjungan Plaza 1-6','58be3ab9e8db09242142d6812f4c8b1f-1b4ff0c5554bd73a46ede74a546ee810.jpg','Karyawan');
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket_cuci`
--

DROP TABLE IF EXISTS `paket_cuci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `paket_cuci` (
  `id_paket` varchar(10) NOT NULL,
  `paket` varchar(100) NOT NULL,
  `harga_kilo` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket_cuci`
--

LOCK TABLES `paket_cuci` WRITE;
/*!40000 ALTER TABLE `paket_cuci` DISABLE KEYS */;
INSERT INTO `paket_cuci` VALUES ('PKT001','Murah Meriah',5000,'Selesai 3 hari = Cuci + Kering Setrika'),('PKT002','Cuci Komplit',8000,'Selesai 1 hari = Cuci + Kering + Setrika'),('PKT003','Cuci Kering',5000,'Selesai 1 hari'),('PKT004','Cuci Basah',3500,'Selesai 1 hari'),('PKT005','Setrika',5000,'Selesai 1 hari'),('PKT006','Cuci Ekspres',15000,'Selesai 6 jam = Cuci + Kering + Setrika'),('PKT007','Cuci Kilat',25000,'Selesai 3 jam = Komplit + Bonus Kaus Laundry Ku'),('PKT008','VIP',75000,'Selesai 2 jam = Komplit + Bonus Kaus & Celana Laundry Ku + Antar langsung'),('PKT009','VVIP',120000,'Selesai 1 jam = Komplit + Bonus Kaus & Celana Laundru Ku + Tas Khusus Laundry Ku + Antar langsung '),('PKT001','Murah Meriah',5000,'Selesai 3 hari = Cuci + Kering Setrika'),('PKT002','Cuci Komplit',8000,'Selesai 1 hari = Cuci + Kering + Setrika'),('PKT003','Cuci Kering',5000,'Selesai 1 hari'),('PKT004','Cuci Basah',3500,'Selesai 1 hari'),('PKT005','Setrika',5000,'Selesai 1 hari'),('PKT006','Cuci Ekspres',15000,'Selesai 6 jam = Cuci + Kering + Setrika'),('PKT007','Cuci Kilat',25000,'Selesai 3 jam = Komplit + Bonus Kaus Laundry Ku'),('PKT008','VIP',75000,'Selesai 2 jam = Komplit + Bonus Kaus & Celana Laundry Ku + Antar langsung'),('PKT009','VVIP',120000,'Selesai 1 jam = Komplit + Bonus Kaus & Celana Laundru Ku + Tas Khusus Laundry Ku + Antar langsung '),('PKT001','Murah Meriah',5000,'Selesai 3 hari = Cuci + Kering Setrika'),('PKT002','Cuci Komplit',8000,'Selesai 1 hari = Cuci + Kering + Setrika'),('PKT003','Cuci Kering',5000,'Selesai 1 hari'),('PKT004','Cuci Basah',3500,'Selesai 1 hari'),('PKT005','Setrika',5000,'Selesai 1 hari'),('PKT006','Cuci Ekspres',15000,'Selesai 6 jam = Cuci + Kering + Setrika'),('PKT007','Cuci Kilat',25000,'Selesai 3 jam = Komplit + Bonus Kaus Laundry Ku'),('PKT008','VIP',75000,'Selesai 2 jam = Komplit + Bonus Kaus & Celana Laundry Ku + Antar langsung'),('PKT009','VVIP',120000,'Selesai 1 jam = Komplit + Bonus Kaus & Celana Laundru Ku + Tas Khusus Laundry Ku + Antar langsung ');
/*!40000 ALTER TABLE `paket_cuci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(5) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `no_hp_pelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES ('PLG001','Ahmad Kurniawan','ahmadkurniawan','$2y$1','Perlanaan','080000000000'),('PLG002','Aiki Brilian','aikibrilian','12345','Perdagangan Pasar I','080000001111'),('PLG003','Alviansyah','alviansyah','12345','Tempel Jaya','080000002222'),('PLG004','Anisha Catur Wulandari','anishacatur','12345','Mangkai Baru Dusun III','080000003333'),('PLG005','Anugrah Sang Putra','anugrahsang','12345','Toumoan','080000004444'),('PLG006','Ayu Andari','ayuandari','12345','Mangkai Baru Dusun IV','080000005555'),('PLG007','Bima Syahputra Purba','bimasyahputra','12345','-','080000006666'),('PLG008','Chairil Anwar','chairilanwar','12345','-','080000007777'),('PLG009','Deby Ridho Marauli Nasution','debyridho','12345','Perdagangan ','080000008888'),('PLG010','Dina Ira Pandini Purba','dinaira','12345','-','080000009999'),('PLG011','Dinda Aristi','dindaaristi','12345','Kucingan','080011110000'),('PLG012','Indah Irawati','indahirawati','12345','-','080022220000'),('PLG013','Iqbal Nur Adabi Nasution','iqbalnur','12345','-','080033330000'),('PLG014','Ivan Pramana','ivanpramana','12345','-','080044440000'),('PLG015','Melin Agus Triyanti','melinagus','12345','Tempel Jaya','080055550000'),('PLG016','Muhammad Hanafi','muhammadhanafi','12345','Perlanaan','080066660000'),('PLG017','Muhammad Iqbal','muhammadiqbal','12345','-','080077770000'),('PLG018','Muhammad Rizky Yudistio','muhammadrizky','12345','Mangkai Lama','080088880000'),('PLG019','Muhammad Nanda Kurniawan','muhammadnanda','12345','Perlanaan','080099990000'),('PLG020','Rehan Firnanda','rehanfirnanda','12345','Mangkai Baru Dusun I','080011111111'),('PLG021','Ridhana Fiska','ridhanafiska','12345','Mayang','080011112222'),('PLG022','Rizky Aidil','rizkyaidil','12345','Mangkai Baru Dusun IV','080011113333'),('PLG023','Siti Kharisma Fitriana','sitikharisma','12345','Mangkai Lama','080011114444'),('PLG024','Sri Romadhona','sriromadhona','12345','Bukit Lima','080011115555'),('PLG025','Sultan Nico Nur','Arsy','12345','Mangkai Lama','080011116666'),('PLG026','Tri Ayuni','triayuni','12345','-','080011117777'),('PLG027','Wahyu Fitrah','wahyufitrah','12345','Dosin','080011118888'),('PLG028','Wendy Riswana','wendyriswana','12345','-','080011119999'),('PLG029','Widya Mailani','widyamailani','12345','-','080022221111'),('PLG030','Wirandani Galih Kusuma','wirandanigalih','12345','Perlanaaan','080022222222'),('PLG031','Wisnu Falevi','wisnufalevi','12345','-','080022223333'),('PLG032','Aura','auranisa','$2y$1','-','-');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `id_paket` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES ('TRS001','24 Nov 2020','PLG001','PKT001',7,35000,50000,15000),('TRS002','24 Nov 2020','PLG002','PKT001',5,25000,50000,25000),('TRS003','25 Nov 2020','PLG005','PKT002',8,64000,70000,6000),('TRS004','25 Nov 2020','PLG022','PKT009',10,1200000,1200000,0),('TRS005','26 Nov 2020','PLG025','PKT008',5,375000,400000,25000),('TRS006','27 Nov 2020','PLG031','PKT007',2,50000,50000,0),('TRS007','27 Nov 2020','PLG018','PKT005',2,10000,10000,0),('TRS008','28 Nov 2020','PLG027','PKT006',3,45000,50000,5000),('TRS009','28 Nov 2020','PLG014','PKT006',5,75000,30000,-45000),('TRS010','29 Nov 2020','PLG003','PKT009',10,1200000,1200000,0),('TRS011','30 Nov 2020','PLG017','PKT007',5,125000,0,-125000);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'laundry'
--

--
-- Current Database: `web_laundry`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `web_laundry` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `web_laundry`;

--
-- Table structure for table `karyawan`
--

DROP TABLE IF EXISTS `karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_karyawan` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karyawan`
--

LOCK TABLES `karyawan` WRITE;
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` VALUES (1,'Rizky Aidil','admin','$2y$10$MTm15IHxkcTNGTMoPMRcaeMyYqGIc5U6UPk4PymX/sggGNSyT4hMe','admin@laundryku.com','+6285320357152','Mangkai Baru Dusun IV - Medan Sumatra Utara','Follow me\r\nInstagram : rizkyaidil.zaman\r\nGithub      : rizkyaidil.zaman\r\nWhatsapp : +6285320357152','165Rizky Aidil.png','Admin'),(2,'Rizky Aidil','rizkyaidil','$2y$10$0hgP/UKD5INwe38ad6p6se9gd0MdDvgXk.NLQ3JRhVPdcLbQyjT9e','rizkyaidil.zaman@gmail.com','08520357152','Mangkai Baru Dusun IV','Saya adalah seorang Programmer','255FB_IMG_1545569895276.jpg','Karyawan'),(3,'Bluesloveyou','bluesloveyou','$2y$10$mp5Uet8mXWCTKY9OIU7LyOUHXoXZMXMmE1bAHxjhFYHz/FOOPY1t6','info.bluesloveyou@gmail.con','08520357152','Mangkai Baru Dusun IV','Saya adalah seorang Designer','705Profil bluesloveyou.png','Karyawan');
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket_cuci`
--

DROP TABLE IF EXISTS `paket_cuci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `paket_cuci` (
  `id_paket` varchar(10) NOT NULL,
  `paket` varchar(100) NOT NULL,
  `harga_kilo` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket_cuci`
--

LOCK TABLES `paket_cuci` WRITE;
/*!40000 ALTER TABLE `paket_cuci` DISABLE KEYS */;
INSERT INTO `paket_cuci` VALUES ('PKT001','Murah Meriah',5000,'Selesai 3 hari = Cuci + Kering Setrika'),('PKT002','Cuci Komplit',8000,'Selesai 1 hari = Cuci + Kering + Setrika'),('PKT003','Cuci Kering',5000,'Selesai 1 hari'),('PKT004','Cuci Basah',3500,'Selesai 1 hari'),('PKT005','Setrika',5000,'Selesai 1 hari'),('PKT006','Cuci Ekspres',15000,'Selesai 6 jam = Cuci + Kering + Setrika'),('PKT007','Cuci Kilat',25000,'Selesai 3 jam = Komplit + Bonus Kaus Laundry Ku'),('PKT008','VIP',75000,'Selesai 2 jam = Komplit + Bonus Kaus & Celana Laundry Ku + Antar langsung'),('PKT009','VVIP',120000,'Selesai 1 jam = Komplit + Bonus Kaus & Celana Laundru Ku + Tas Khusus Laundry Ku + Antar langsung ');
/*!40000 ALTER TABLE `paket_cuci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `no_hp_pelanggan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES ('PLG001','Ahmad Kurniawan','Perlanaan','080000000000'),('PLG002','Aiki Brilian','Perdagangan Pasar I','080000001111'),('PLG003','Alviansyah','Tempel Jaya','080000002222'),('PLG004','Anisha Catur Wulandari','Mangkai Baru Dusun III','080000003333'),('PLG005','Anugrah Sang Putra','Toumoan','080000004444'),('PLG009','Deby Ridho Marauli Nasution','Perdagangan ','080000008888'),('PLG006','Ayu Andari','Mangkai Baru Dusun IV','080000005555'),('PLG007','Bima Syahputra Purba','-','080000006666'),('PLG008','Chairil Anwar','-','080000007777'),('PLG010','Dina Ira Pandini Purba','-','080000009999'),('PLG011','Dinda Aristi','Kucingan','080011110000'),('PLG012','Indah Irawati','-','080022220000'),('PLG013','Iqbal Nur Adabi Nasution','-','080033330000'),('PLG014','Ivan Pramana','-','080044440000'),('PLG015','Melin Agus Triyanti','Tempel Jaya','080055550000'),('PLG016','Muhammad Hanafi','Perlanaan','080066660000'),('PLG017','Muhammad Iqbal','-','080077770000'),('PLG018','Muhammad Rizky Yudistio','Mangkai Lama','080088880000'),('PLG019','Muhammad Nanda Kurniawan','Perlanaan','080099990000'),('PLG020','Rehan Firnanda','Mangkai Baru Dusun I','080011111111'),('PLG021','Ridhana Fiska','Mayang','080011112222'),('PLG022','Rizky Aidil','Mangkai Baru Dusun IV','080011113333'),('PLG023','Siti Kharisma Fitriana','Mangkai Lama','080011114444'),('PLG024','Sri Romadhona','Bukit Lima','080011115555'),('PLG025','Sultan Nico Nur \'Arsy','Mangkai Lama','080011116666'),('PLG026','Tri Ayuni','-','080011117777'),('PLG027','Wahyu Fitrah','Dosin','080011118888'),('PLG028','Wendy Riswana','-','080011119999'),('PLG029','Widya Mailani','-','080022221111'),('PLG030','Wirandani Galih Kusuma','Perlanaaan','080022222222'),('PLG031','Wisnu Falevi','-','080022223333');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `id_paket` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pelanggan` (`id_pelanggan`),
  KEY `kd_paket` (`id_paket`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES ('TRS001','24 Nov 2020','PLG001','PKT001',7,35000,50000,15000),('TRS002','24 Nov 2020','PLG002','PKT001',5,25000,50000,25000),('TRS003','24 Nov 2020','PLG005','PKT002',8,64000,70000,6000),('TRS004','25 Nov 2020','PLG022','PKT009',10,1200000,1200000,0),('TRS005','25 Nov 2020','PLG025','PKT008',5,375000,400000,25000),('TRS006','25 Nov 2020','PLG031','PKT007',2,50000,50000,0),('TRS007','25 Nov 2020','PLG018','PKT005',2,10000,10000,0),('TRS008','25 Nov 2020','PLG027','PKT006',3,45000,50000,5000),('TRS009','25 Nov 2020','PLG014','PKT006',5,75000,30000,-45000),('TRS010','25 Nov 2020','PLG003','PKT009',10,1200000,1200000,0),('TRS011','25 Nov 2020','PLG017','PKT007',5,125000,0,-125000);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'web_laundry'
--

--
-- Current Database: `transupn`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `transupn` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `transupn`;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `id_bus` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plat` varchar(10) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_bus`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'W 1234','1'),(2,'W 1235','1'),(3,'W 1236','1'),(4,'W 1237','1'),(5,'W 1238','1'),(6,'W 1239','1'),(7,'W 1240','1'),(8,'W 1241','1'),(9,'W 1242','1'),(10,'W 1243','1'),(11,'W 1244','1'),(12,'W 1245','1'),(13,'W 1246','1'),(14,'W 1247','1'),(15,'W 1248','1'),(16,'W 1249','1'),(17,'W 1250','1'),(18,'W 1251','1'),(19,'W 1252','1'),(20,'W 1253','1'),(21,'W 1254','1'),(22,'W 1255','1'),(23,'W 1256','2'),(24,'W 1257','2'),(25,'W 1258','2'),(26,'W 1259','2'),(27,'W 1260','0'),(28,'W 1261','0'),(29,'W 1262','0'),(30,'W 1263','0');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `id_driver` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) DEFAULT NULL,
  `no_sim` varchar(15) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_driver`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'DRIVER 1','1224590','SURABAYA'),(2,'DRIVER 2','1224591','SURABAYA'),(3,'DRIVER 3','1224592','SURABAYA'),(4,'DRIVER 4','1224593','SURABAYA'),(5,'DRIVER 5','1224594','SURABAYA'),(6,'DRIVER 6','1224595','GRESIK'),(7,'DRIVER 7','1224596','GRESIK'),(8,'DRIVER 8','1224597','GRESIK'),(9,'DRIVER 9','1224598','GRESIK'),(10,'DRIVER 10','1224599','SIDOARJO'),(11,'DRIVER 11','1224600','SIDOARJO'),(12,'DRIVER 12','1224601','SIDOARJO'),(13,'DRIVER 13','1224602','SURABAYA'),(14,'DRIVER 14','1224603','SURABAYA'),(15,'DRIVER 15','1224604','SURABAYA'),(16,'DRIVER 16','1224605','SURABAYA'),(17,'DRIVER 17','1224606','SURABAYA'),(18,'DRIVER 18','1224607','SIDOARJO'),(19,'DRIVER 19','1224608','SIDOARJO'),(20,'DRIVER 20','1224609','SIDOARJO'),(21,'DRIVER 21','1224610','GRESIK'),(22,'DRIVER 22','1224611','GRESIK'),(23,'DRIVER 23','1224612','SURABAYA'),(24,'DRIVER 24','1224613','SURABAYA'),(25,'DRIVER 25','1224614','SURABAYA'),(26,'DRIVER 26','1224615','SURABAYA'),(27,'DRIVER 27','1224616','SURABAYA'),(28,'DRIVER 28','1224617','SIDOARJO'),(29,'DRIVER 29','1224618','SIDOARJO'),(30,'DRIVER 30','1224619','SIDOARJO');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kondektur`
--

DROP TABLE IF EXISTS `kondektur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kondektur` (
  `id_kondektur` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_kondektur`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kondektur`
--

LOCK TABLES `kondektur` WRITE;
/*!40000 ALTER TABLE `kondektur` DISABLE KEYS */;
INSERT INTO `kondektur` VALUES (1,'KONDEKTUR 1'),(2,'KONDEKTUR 2'),(3,'KONDEKTUR 3'),(4,'KONDEKTUR 4'),(5,'KONDEKTUR 5'),(6,'KONDEKTUR 6'),(7,'KONDEKTUR 7'),(8,'KONDEKTUR 8'),(9,'KONDEKTUR 9'),(10,'KONDEKTUR 10'),(11,'KONDEKTUR 11'),(12,'KONDEKTUR 12'),(13,'KONDEKTUR 13'),(14,'KONDEKTUR 14'),(15,'KONDEKTUR 15'),(16,'KONDEKTUR 16'),(17,'KONDEKTUR 17'),(18,'KONDEKTUR 18'),(19,'KONDEKTUR 19'),(20,'KONDEKTUR 20'),(21,'KONDEKTUR 21'),(22,'KONDEKTUR 22'),(23,'KONDEKTUR 23'),(24,'KONDEKTUR 24'),(25,'KONDEKTUR 25'),(26,'KONDEKTUR 26'),(27,'KONDEKTUR 27'),(28,'KONDEKTUR 28'),(29,'KONDEKTUR 29'),(30,'KONDEKTUR 30');
/*!40000 ALTER TABLE `kondektur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_upn`
--

DROP TABLE IF EXISTS `trans_upn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_upn` (
  `id_trans_upn` int(10) unsigned NOT NULL,
  `id_kondektur` int(10) unsigned NOT NULL,
  `id_bus` int(10) unsigned NOT NULL,
  `id_driver` int(10) unsigned NOT NULL,
  `jumlah_km` int(10) unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_trans_upn`),
  KEY `id_bus` (`id_bus`),
  KEY `id_driver` (`id_driver`),
  KEY `id_kondektur` (`id_kondektur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_upn`
--

LOCK TABLES `trans_upn` WRITE;
/*!40000 ALTER TABLE `trans_upn` DISABLE KEYS */;
INSERT INTO `trans_upn` VALUES (1,3,16,19,102,'2023-04-01'),(2,18,16,4,100,'2023-04-02'),(3,22,16,7,103,'2023-04-03'),(4,30,19,20,111,'2023-04-04'),(5,15,1,25,106,'2023-04-05'),(6,11,20,16,100,'2023-04-06'),(7,14,13,5,110,'2023-04-07'),(8,10,13,7,112,'2023-04-08'),(9,16,20,22,105,'2023-04-09'),(10,7,17,29,118,'2023-04-10'),(11,6,14,16,105,'2023-04-11'),(12,21,9,10,112,'2023-04-12'),(13,5,10,17,100,'2023-04-13'),(14,24,14,18,114,'2023-04-14'),(15,1,6,7,112,'2023-04-15'),(16,19,11,7,117,'2023-04-16'),(17,29,2,21,111,'2023-04-17'),(18,17,3,16,117,'2023-04-18'),(19,16,14,11,109,'2023-04-19'),(20,18,16,7,111,'2023-04-20'),(21,4,3,19,116,'2023-04-21'),(22,4,2,6,107,'2023-04-22'),(23,1,18,12,100,'2023-04-23'),(24,18,6,24,120,'2023-04-24'),(25,19,11,6,112,'2023-04-25'),(26,27,11,22,104,'2023-04-26'),(27,28,2,18,101,'2023-04-27'),(28,26,12,7,118,'2023-04-28'),(29,25,8,6,101,'2023-04-29'),(30,20,2,13,105,'2023-04-30'),(31,3,21,1,105,'2023-05-01'),(32,3,13,18,118,'2023-05-02'),(33,11,16,26,115,'2023-05-03'),(34,20,7,4,100,'2023-05-04'),(35,12,17,12,110,'2023-05-05'),(36,4,8,22,109,'2023-05-06'),(37,27,1,12,103,'2023-05-07'),(38,1,15,26,107,'2023-05-08'),(39,30,11,18,114,'2023-05-09'),(40,21,20,13,112,'2023-05-10'),(41,9,18,11,109,'2023-05-11'),(42,22,18,29,115,'2023-05-12'),(43,3,18,7,119,'2023-05-13'),(44,29,12,26,120,'2023-05-14'),(45,15,15,29,111,'2023-05-15'),(46,10,22,25,100,'2023-05-16'),(47,15,10,4,120,'2023-05-17'),(48,19,13,19,102,'2023-05-18'),(49,7,21,13,119,'2023-05-19'),(50,11,19,1,104,'2023-05-20'),(51,28,2,18,100,'2023-05-21'),(52,27,10,21,108,'2023-05-22'),(53,5,19,30,106,'2023-05-23'),(54,26,19,15,102,'2023-05-24'),(55,21,2,17,120,'2023-05-25'),(56,2,2,6,109,'2023-05-26'),(57,6,10,15,119,'2023-05-27'),(58,26,17,29,104,'2023-05-28'),(59,19,7,16,101,'2023-05-29'),(60,15,7,22,109,'2023-05-30'),(61,4,3,13,107,'2023-05-31'),(62,1,2,23,103,'2023-06-01'),(63,18,13,7,109,'2023-06-02'),(64,16,6,14,116,'2023-06-03'),(65,8,18,18,120,'2023-06-04'),(66,21,19,25,107,'2023-06-05'),(67,12,2,16,114,'2023-06-06'),(68,18,9,11,117,'2023-06-07'),(69,10,4,8,116,'2023-06-08'),(70,21,22,20,115,'2023-06-09'),(71,23,12,13,117,'2023-06-10'),(72,20,8,15,120,'2023-06-11'),(73,22,18,3,109,'2023-06-12'),(74,25,18,6,109,'2023-06-13'),(75,10,6,28,119,'2023-06-14'),(76,10,6,17,118,'2023-06-15'),(77,4,17,28,102,'2023-06-16'),(78,12,6,30,106,'2023-06-17'),(79,10,16,1,105,'2023-06-18'),(80,15,5,18,107,'2023-06-19'),(81,19,19,9,107,'2023-06-20'),(82,18,14,27,102,'2023-06-21'),(83,26,20,8,105,'2023-06-22'),(84,25,20,21,106,'2023-06-23'),(85,27,12,2,112,'2023-06-24'),(86,27,11,9,112,'2023-06-25'),(87,30,4,30,120,'2023-06-26'),(88,11,22,19,105,'2023-06-27'),(89,2,16,12,113,'2023-06-28'),(90,6,11,24,113,'2023-06-29'),(91,30,17,17,111,'2023-06-30'),(92,17,22,22,106,'2023-07-01'),(93,12,13,26,119,'2023-07-02'),(94,3,13,24,119,'2023-07-03'),(95,1,13,10,101,'2023-07-04'),(96,5,19,21,114,'2023-07-05'),(97,13,11,30,111,'2023-07-06'),(98,11,7,21,102,'2023-07-07'),(99,23,4,6,104,'2023-07-08'),(100,3,21,23,110,'2023-07-09'),(101,1,9,14,105,'2023-07-10'),(102,13,20,14,117,'2023-07-11'),(103,26,13,12,116,'2023-07-12'),(104,10,15,20,108,'2023-07-13'),(105,5,12,16,107,'2023-07-14'),(106,4,14,20,109,'2023-07-15'),(107,13,5,18,104,'2023-07-16'),(108,6,3,25,120,'2023-07-17'),(109,26,2,19,103,'2023-07-18'),(110,16,8,26,107,'2023-07-19'),(111,5,15,28,105,'2023-07-20'),(112,7,14,2,115,'2023-07-21'),(113,22,17,13,111,'2023-07-22'),(114,25,18,25,118,'2023-07-23'),(115,10,15,24,110,'2023-07-24'),(116,12,15,24,120,'2023-07-25'),(117,15,21,17,117,'2023-07-26'),(118,7,4,21,111,'2023-07-27'),(119,30,19,5,106,'2023-07-28'),(120,2,17,21,103,'2023-07-29'),(121,26,7,14,114,'2023-07-30'),(122,18,4,17,103,'2023-07-31'),(123,1,14,23,103,'2023-08-01'),(124,10,21,20,115,'2023-08-02'),(125,12,12,20,112,'2023-08-03'),(126,5,15,20,109,'2023-08-04'),(127,28,17,20,101,'2023-08-05'),(128,24,2,1,114,'2023-08-06'),(129,15,12,13,116,'2023-08-07'),(130,21,2,4,102,'2023-08-08'),(131,21,4,18,103,'2023-08-09'),(132,10,16,3,104,'2023-08-10'),(133,4,5,29,101,'2023-08-11'),(134,19,6,14,118,'2023-08-12'),(135,9,17,9,112,'2023-08-13'),(136,7,16,18,113,'2023-08-14'),(137,22,19,4,111,'2023-08-15'),(138,23,17,7,112,'2023-08-16'),(139,7,22,19,111,'2023-08-17'),(140,16,22,10,100,'2023-08-18'),(141,27,8,5,108,'2023-08-19'),(142,2,3,29,106,'2023-08-20'),(143,23,6,2,111,'2023-08-21'),(144,10,1,12,105,'2023-08-22'),(145,5,11,23,113,'2023-08-23'),(146,26,22,27,104,'2023-08-24'),(147,15,15,2,104,'2023-08-25'),(148,12,13,27,112,'2023-08-26'),(149,24,18,26,113,'2023-08-27'),(150,21,19,10,114,'2023-08-28'),(151,24,6,13,108,'2023-08-29'),(152,13,11,6,119,'2023-08-30'),(153,22,2,26,109,'2023-08-31'),(154,15,3,2,113,'2023-09-01'),(155,6,10,2,110,'2023-09-02'),(156,26,12,7,120,'2023-09-03'),(157,4,11,19,112,'2023-09-04'),(158,24,9,10,105,'2023-09-05'),(159,13,10,9,107,'2023-09-06'),(160,26,1,4,111,'2023-09-07'),(161,25,7,22,113,'2023-09-08'),(162,2,2,7,112,'2023-09-09'),(163,19,20,24,112,'2023-09-10'),(164,21,14,28,114,'2023-09-11'),(165,21,22,19,100,'2023-09-12'),(166,29,17,14,115,'2023-09-13'),(167,28,10,19,100,'2023-09-14'),(168,24,6,30,109,'2023-09-15'),(169,20,10,23,109,'2023-09-16'),(170,2,6,12,114,'2023-09-17'),(171,15,8,9,110,'2023-09-18'),(172,26,12,21,118,'2023-09-19'),(173,13,12,26,103,'2023-09-20'),(174,12,9,20,118,'2023-09-21'),(175,3,22,6,102,'2023-09-22'),(176,8,15,12,112,'2023-09-23'),(177,28,1,2,119,'2023-09-24'),(178,27,6,3,105,'2023-09-25'),(179,25,19,12,112,'2023-09-26'),(180,13,10,27,110,'2023-09-27'),(181,18,9,29,113,'2023-09-28'),(182,28,17,27,116,'2023-09-29'),(183,29,19,2,118,'2023-09-30'),(184,15,11,3,107,'2023-10-01'),(185,3,1,28,120,'2023-10-02'),(186,20,4,30,100,'2023-10-03'),(187,19,5,23,117,'2023-10-04'),(188,25,22,24,118,'2023-10-05'),(189,22,10,8,114,'2023-10-06'),(190,30,4,15,120,'2023-10-07'),(191,29,18,5,119,'2023-10-08'),(192,19,10,18,116,'2023-10-09'),(193,1,17,4,113,'2023-10-10'),(194,3,16,24,103,'2023-10-11'),(195,26,21,2,107,'2023-10-12'),(196,16,5,3,104,'2023-10-13'),(197,14,13,23,111,'2023-10-14'),(198,9,5,26,114,'2023-10-15'),(199,14,21,15,109,'2023-10-16'),(200,7,9,19,101,'2023-10-17');
/*!40000 ALTER TABLE `trans_upn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'transupn'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-27 10:05:02
