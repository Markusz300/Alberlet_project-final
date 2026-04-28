/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: alberlet
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `alberlet`
--

DROP TABLE IF EXISTS `alberlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alberlet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cim` varchar(255) NOT NULL,
  `tipus` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `meret` int(11) DEFAULT NULL,
  `szobak_szama` decimal(3,1) DEFAULT 1.0,
  `emelet` int(11) DEFAULT NULL,
  `lift` int(11) DEFAULT NULL,
  `butorozott` int(11) DEFAULT NULL,
  `leiras` text DEFAULT NULL,
  `hirdetes_datuma` date DEFAULT curdate(),
  `aktiv` int(11) DEFAULT 1,
  `varos_id` int(11) NOT NULL,
  `tulajdonos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alberlet_varos` (`varos_id`),
  KEY `fk_alberlet_tulajdonos` (`tulajdonos_id`),
  KEY `fk_alberlet_tipus` (`tipus`),
  CONSTRAINT `fk_alberlet_tipus` FOREIGN KEY (`tipus`) REFERENCES `alberlet_tipus` (`id`),
  CONSTRAINT `fk_alberlet_tulajdonos` FOREIGN KEY (`tulajdonos_id`) REFERENCES `tulajdonos` (`id`),
  CONSTRAINT `fk_alberlet_varos` FOREIGN KEY (`varos_id`) REFERENCES `varos` (`id`),
  CONSTRAINT `chk_alberlet_lift` CHECK (`lift` in (0,1)),
  CONSTRAINT `chk_alberlet_butorozott` CHECK (`butorozott` in (0,1)),
  CONSTRAINT `chk_alberlet_aktiv` CHECK (`aktiv` in (0,1))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alberlet`
--

LOCK TABLES `alberlet` WRITE;
/*!40000 ALTER TABLE `alberlet` DISABLE KEYS */;
INSERT INTO `alberlet` VALUES
(1,'8900 Zalaegerszeg, Arany János út 12.',1,150000,54,2.0,4,1,1,'Kiadó Zalagerszegen egy csendes, nagy térrel rendelkező, otthonos albérlet. A környezet kifogásolhatatlan, tiszta és modern.','2026-03-20',1,2,1),
(2,'8900 Zalaegerszeg, Kossuth Lajos utca 45.',1,145000,54,1.0,3,0,0,'Kiadó egy világos, jó elrendezésű lakás csendes környezetben, mégis jól megközelíthető helyen. Az ingatlan bútorozatlan és gépesített, azonnal költözhető.','2026-03-26',1,2,1),
(3,'8900 Zalaegerszeg, Petőfi Sándor utca 78.',1,185000,67,2.0,1,1,1,'Kiadó Zalaegerszegen, a Petőfi Sándor utcában egy 67 m²-es, 2 szobás, bútorozott lakás. A lakás 1. emeleti, liftes társasházban található, világos és jó elrendezésű. Ideális egyedülállóknak vagy pároknak. Azonnal költözhető.','2026-03-25',1,2,1),
(4,'8900 Zalaegerszeg, Ady Endre utca 3/A.',1,100000,43,2.0,7,1,1,'Kiadó Zalaegerszegen, az Ady Endre utcában egy 43 m²-es, 2 szobás, bútorozott lakás. A lakás 7. emeleti, liftes társasházban található, jó elrendezésű és világos. Ideális egyedülállóknak vagy pároknak. Azonnal költözhető.','2026-04-09',1,2,1),
(5,'8900 Zalaegerszeg, Széchenyi István út 156.',1,130000,54,2.0,3,1,0,'Kiadó Zalaegerszegen, a Széchenyi István úton egy 54 m²-es, 2 szobás lakás. A lakás 3. emeleti, liftes társasházban található, jó elrendezésű. Nem bútorozott, így saját ízlés szerint berendezhető. Ideális egyedülállóknak vagy pároknak, azonnal költözhető.','2026-04-22',1,2,2),
(6,'8360 Keszthely, Széchenyi István út 45.',1,180000,58,3.0,8,1,0,'Kiadó Keszthelyen, a Széchenyi István úton egy 58 m²-es, 3 szobás lakás. A lakás 8. emeleti, liftes társasházban található, jó elrendezésű. Nem bútorozott, így saját igény szerint berendezhető. Ideális családnak, pároknak vagy egyedülállóknak. Azonnal költözhető.','2026-03-11',1,3,2),
(7,'8360 Keszthely, Arany János utca 78.',1,120000,45,1.0,6,1,1,'Kiadó Keszthelyen, az Arany János utcában egy 45 m²-es, 1 szobás, bútorozott lakás. A lakás 6. emeleti, liftes társasházban található, jó elrendezésű és világos. Ideális egyedülállóknak, azonnal költözhető.','2026-04-11',1,3,2),
(8,'8360 Keszthely, Fő utca 112.',1,230000,69,2.0,1,0,1,'Kiadó Keszthelyen, a Fő utcában egy 69 m²-es, 2 szobás, bútorozott lakás. A lakás 1. emeleti, lift nélküli társasházban található, tágas és jól elrendezett. Ideális pároknak vagy kisebb családnak. Azonnal költözhető.','2026-04-12',1,3,2),
(9,'8360 Keszthely, Kazinczy Ferenc utca 19.',1,160000,35,1.0,3,0,1,'Kiadó Keszthelyen, a Kazinczy Ferenc utcában egy 35 m²-es, 1 szobás, bútorozott lakás. A lakás 3. emeleti, lift nélküli társasházban található, jó elrendezésű. Ideális egyedülállóknak, azonnal költözhető.','2026-03-03',1,3,3),
(10,'8360 Keszthely, Apát utca 34.',1,205000,54,2.0,2,1,1,'Kiadó Keszthelyen, az Apát utcában egy 54 m²-es, 2 szobás, bútorozott lakás. A lakás 2. emeleti, liftes társasházban található, jó elrendezésű és világos. Ideális pároknak vagy kisebb családnak, azonnal költözhető.','2026-04-03',1,3,3),
(11,'8800 Nagykanizsa, Ady Endre utca 14.',1,110000,54,2.0,9,1,1,'54 m²-es, 9. emeleti, 2 szobás, bútorozott lakás, azonnal költözhető állapotban. Világos nappali, külön hálószoba és felszerelt konyha biztosítja a kényelmet, a magas emelet pedig szép kilátást nyújt.','2026-03-14',1,1,3),
(12,'8800 Nagykanizsa, Zrínyi Miklós utca 9.',1,100000,47,2.0,2,0,0,'47 m²-es, 2. emeleti, 2 szobás, bútor nélküli lakás egy 4 emeletes házban. Praktikus elrendezésű, világos terek jellemzik, saját igény szerint berendezhető, kényelmes otthon alakítható ki benne.','2026-04-15',1,1,3),
(13,'8800 Nagykanizsa, Király utca 37.',1,110000,57,2.0,1,0,0,'57 m²-es, első emeleti, 2 szobás, bútorozatlan lakás. Tágas, jól kihasználható helyiségekkel rendelkezik, világos tereinek köszönhetően otthonos hangulatú, és saját igény szerint rendezhető be.','2026-03-07',1,1,4),
(14,'8800 Nagykanizsa, Hevesi Sándor utca 22.',1,100000,56,2.0,4,0,0,'56 m²-es, 2 szobás lakás a 4. emeleten. Jó elrendezésű, világos helyiségekkel rendelkezik, kényelmes életteret biztosít, és ideális választás lehet pároknak vagy kisebb családnak.','2026-03-30',1,1,4),
(15,'8800 Nagykanizsa, Csengery út 18.',1,85000,53,2.0,2,0,0,'53 m²-es, 2 szobás lakás a 2. emeleten. Átgondolt elrendezésű, világos helyiségei kellemes, otthonos hangulatot biztosítanak, ideális választás pároknak vagy kisebb családnak.','2026-03-20',1,1,4),
(16,'9022 Győr, Baross Gábor út 17.',1,170000,55,2.0,1,0,1,'Kiadó egy 55 nm-es, 2 szobás, bútorozott lakás egy 4 emeletes társasház 1. emeletén. Lift nincs, az ingatlan azonnal költözhető és praktikus elosztású.','2026-04-17',1,4,4),
(17,'9024 Győr, Tihanyi Árpád út 63.',1,200000,37,1.0,2,0,0,'Kiadó egy 37 nm-es, 1 szobás, nem bútorozott lakás egy 2025-ben épült társasház 2. emeletén. Lift nincs, modern kialakítású, azonnal költözhető ingatlan.','2026-04-10',1,4,5),
(18,'9023 Győr, Szigethy Attila út 112.',1,200000,56,2.0,2,1,1,'Kiadó egy 56 nm-es, 2 szobás, bútorozott lakás liftes társasházban, 200 000 Ft/hó bérleti díjért. Praktikus elosztású, kényelmes otthon pároknak vagy egyedülállóknak.','2026-04-05',1,4,5),
(19,'9021 Győr, Kazinczy utca 8.',1,250000,70,3.0,1,0,1,'Kiadó egy 70 nm-es, 3 szobás, bútorozott lakás egy 4 emeletes társasház 1. emeletén. Lift nincs, tágas és világos otthon, ideális családok vagy több fő részére is.','2026-03-25',1,4,5),
(20,'9026 Győr, Kálóczy tér 4.',1,425000,118,4.0,4,1,0,'Kiadó egy 118 nm-es, 4 szobás, bútorozatlan lakás liftes társasház 4. emeletén. Tágas, világos terekkel rendelkező ingatlan, ideális családok vagy irodai célra is.','2026-04-01',1,4,5),
(21,'9400 Sopron, Várkerület 12.',1,170000,53,2.0,3,0,0,'Kiadó egy 53 nm-es, 2 szobás, nem berendezett lakás a 3. emeleten, 170 000 Ft/hó bérleti díjért. Lift nincs, praktikus elosztású, saját igény szerint berendezhető otthon.','2026-04-02',1,5,6),
(22,'9400 Sopron, Deák tér 5.',1,220000,55,2.0,2,0,0,'Kiadó egy 55 nm-es, 2 szobás, bútorozatlan lakás a 2. emeleten, 220 000 Ft/hó bérleti díjért. Lift nincs, világos, jól alakítható terek jellemzik.','2026-03-18',1,5,6),
(23,'9400 Sopron, Erzsébet utca 18.',1,190000,42,2.5,2,0,1,'Kiadó egy 42 nm-es, 2,5 szobás, bútorozott lakás a 2. emeleten, 190 000 Ft/hó bérleti díjért. Lift nincs, praktikus elosztású, azonnal költözhető otthon.','2026-04-23',1,5,6),
(24,'9400 Sopron, Győri út 44.',0,380000,75,2.0,1,0,0,'Kiadó Sopron mellett, de közigazgatásilag Sopronban található, 75 nm-es, 2 szobás ház 380 000 Ft/hó bérleti díjért. Az ingatlanhoz betonozott udvar tartozik, ideális azoknak, akik nyugodt, kertkapcsolatos otthont keresnek.','2026-03-04',1,5,6),
(25,'9400 Sopron, Lackner Kristóf utca 27.',1,219000,58,2.5,1,0,1,'Kiadó egy 58 nm-es, 2,5 szobás, bútorozott lakás az 1. emeleten, 219 000 Ft/hó bérleti díjért. Lift nincs, praktikus elosztású, kényelmes otthon pároknak vagy kisebb családnak is.','2026-04-30',1,5,7),
(26,'7621 Pécs, Király utca 14.',1,155000,60,2.0,2,0,0,'Kiadó egy 2 szobás lakás a 2. emeleten, 155 000 Ft/hó bérleti díjért. Lift nincs, bútorozatlan, így saját igény szerint alakítható.','2026-03-17',1,6,7),
(27,'7623 Pécs, Rákóczi út 56.',1,160000,65,3.0,1,1,1,'Kiadó egy 65 nm-es, 3 szobás, bútorozott lakás liftes társasház 1. emeletén, 160 000 Ft/hó bérleti díjért. Tágas, kényelmes otthon családok vagy több fő részére is.','2026-03-31',1,6,7),
(28,'7632 Pécs, Aidinger János út 22.',1,135000,54,2.0,1,0,0,'Kiadó egy 54 nm-es, 2 szobás, bútorozatlan lakás az 1. emeleten, 135 000 Ft/hó bérleti díjért. Lift nincs, világos és praktikus elosztású otthon.','2026-03-11',1,6,7),
(29,'7624 Pécs, Hungária utca 9.',1,381000,80,3.0,1,0,1,'Kiadó egy 80 nm-es, 3 szobás, bútorozott lakás az 1. emeleten, 381 000 Ft/hó bérleti díjért. Lift nincs, tágas és világos, kényelmes családi otthon.','2026-04-22',1,6,8),
(30,'7633 Pécs, Megyeri út 41.',1,230000,64,3.0,4,1,1,'Kiadó egy 64 nm-es, 3 szobás, bútorozott lakás liftes társasház 4. emeletén, 230 000 Ft/hó bérleti díjért. Tágas, világos otthon, ideális családok vagy több fő részére.','2026-03-07',1,6,8),
(31,'9700 Szombathely, Kossuth Lajos utca 12.',0,380000,150,3.5,2,0,0,'Kiadó egy 2 emeletes, 3,5 szobás családi ház 380 000 Ft/hó bérleti díjért. A ház nem bútorozott, lift nincs, tágas elrendezésének köszönhetően kényelmes életteret biztosít. Ideális választás családoknak vagy nagyobb létszámú bérlőknek, akik hosszú távra keresnek otthont.','2026-03-17',1,7,8),
(32,'9700 Szombathely, Szent Márton utca 45.',1,150000,55,2.0,1,0,1,'Kiadó egy 55 nm-es, 2 szobás, bútorozott lakás az 1. emeleten, 150 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan praktikus elrendezésű, ideális egyedülállóknak vagy pároknak.','2026-03-30',1,7,8),
(33,'9700 Szombathely, Paragvári utca 7.',1,160000,43,2.0,2,0,1,'Kiadó egy 43 nm-es, 2 szobás, bútorozott lakás a 2. emeleten. A társasházban nincs lift, az ingatlan világos, praktikus elrendezésű, ideális egyedülállóknak vagy pároknak.','2026-04-23',1,7,9),
(34,'9700 Szombathely, Rohonci út 103.',1,99000,50,1.5,1,0,1,'Kiadó egy 50 nm-es, 1,5 szobás, bútorozott lakás 99 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan kompakt kialakítású, ideális egy fő részére.','2026-04-10',1,7,9),
(35,'9700 Szombathely, Hefele Menyhért utca 28.',1,150000,54,2.0,2,0,0,'Kiadó egy 54 nm-es, 2 szobás lakás a 2. emeleten, 150 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban nincs lift, praktikus elrendezése miatt ideális pároknak vagy kisebb családoknak.','2026-04-21',1,7,9),
(36,'1073 Budapest, Erzsébet körút 24.',0,590000,135,5.5,2,0,0,'Kiadó egy 135 nm-es, 5,5 szobás ház 590 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, lift nincs, tágas kialakításának köszönhetően ideális nagyobb családok vagy több együtt költöző bérlő számára.','2026-03-14',1,8,10),
(37,'1136 Budapest, Pannónia utca 15.',0,1400000,303,5.5,2,0,1,'Kiadó egy 303 nm-es, 5,5 szobás, 2 szintes ház 1 400 000 Ft/hó bérleti díjért. Az ingatlan bútorozott, lift nincs, tágas és exkluzív kialakításának köszönhetően ideális nagyobb családok vagy reprezentatív célra egyaránt.','2026-03-21',1,8,10),
(38,'1117 Budapest, Fehérvári út 89.',2,140000,17,1.0,1,0,1,'Kiadó egy 17 nm-es, bútorozott szoba 140 000 Ft/hó bérleti díjért. A lakásban nincs lift, a szobát 2 lakótárs használja, ideális egyedülállóknak vagy diákoknak, akik megosztott élettérben keresnek otthont.','2026-03-12',1,8,10),
(39,'1092 Budapest, Ráday utca 41.',1,772000,101,5.0,1,0,0,'Kiadó egy 101 nm-es, 5 szobás lakás az 1. emeleten, 772 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban nincs lift, tágas elrendezése ideális nagyobb családok vagy több együtt költöző bérlő számára.','2026-03-23',1,8,10),
(40,'1146 Budapest, Thököly út 76.',1,275000,72,1.0,2,1,0,'Kiadó egy 72 nm-es, 1 szobás lakás a 2. emeleten, 275 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban van lift, világos és tágas kialakítása ideális rendelőnek, irodának, kozmetikának.','2026-04-12',1,8,10),
(41,'6720 Szeged, Kárász utca 12.',1,200000,40,1.0,2,0,1,'Kiadó egy 40 nm-es, 1 szobás, bútorozott lakás a 2. emeleten, 200 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan kompakt és világos, ideális egyedülállóknak vagy pároknak.','2026-04-26',1,9,11),
(42,'6723 Szeged, Fő fasor 34.',1,140000,44,2.5,1,0,1,'Kiadó egy 44 nm-es, 2,5 szobás, bútorozott lakás az 1. emeleten, 140 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan praktikus elrendezésű, ideális egyedülállóknak vagy pároknak.','2026-03-01',1,9,11),
(43,'6724 Szeged, Tisza Lajos körút 56.',1,150000,45,2.0,2,0,0,'Kiadó egy 45 nm-es, 2 szobás, bútorozatlan lakás a 2. emeleten, 150 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan világos és praktikus elrendezésű, ideális egyedülállóknak vagy pároknak.','2026-04-01',1,9,11),
(44,'6722 Szeged, Klauzál tér 7.',1,180000,62,2.5,1,0,1,'Kiadó egy 62 nm-es, 2,5 szobás, bútorozott lakás az 1. emeleten, 180 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan tágas és világos, ideális pároknak vagy kisebb családoknak.','2026-04-04',1,9,11),
(45,'6721 Szeged, Rókusi körút 89.',1,235000,50,2.0,2,0,1,'Kiadó egy 50 nm-es, 2 szobás, bútorozott lakás a 2. emeleten, 235 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan világos és praktikus elrendezésű, ideális egyedülállóknak vagy pároknak.','2026-04-29',1,9,12),
(46,'6800 Hódmezővásárhely, Kossuth tér 10.',1,120000,53,3.0,2,0,0,'Kiadó egy 53 nm-es, 3 szobás lakás a 2. emeleten, 120 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban nincs lift, világos és praktikus elrendezése ideális családoknak vagy több együtt költöző bérlőnek.','2026-04-02',1,10,12),
(47,'6800 Hódmezővásárhely, Dózsa György utca 25.',1,115000,47,2.0,3,0,0,'Kiadó egy 47 nm-es, 2 szobás lakás a 3. emeleten, 115 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban nincs lift, praktikus elrendezése ideális egyedülállóknak vagy pároknak.','2026-03-02',1,10,13),
(48,'6800 Hódmezővásárhely, Ady Endre utca 44.',1,140000,55,2.0,4,0,0,'Kiadó egy 55 nm-es, 2 szobás lakás a 4. emeleten, 140 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban nincs lift, világos és praktikus elrendezése ideális egyedülállóknak vagy pároknak.','2026-03-05',1,10,14),
(49,'6800 Hódmezővásárhely, Bethlen Gábor utca 8.',1,130000,57,2.0,1,0,1,'Kiadó egy 57 nm-es, 2 szobás, bútorozott lakás az 1. emeleten, 130 000 Ft/hó bérleti díjért. A társasházban nincs lift, az ingatlan világos és praktikus elrendezésű, ideális egyedülállóknak vagy pároknak.','2026-03-10',1,10,15),
(50,'6800 Hódmezővásárhely, Széchenyi tér 19.',1,110000,43,1.5,0,0,0,'Kiadó egy 43 nm-es, 1,5 szobás lakás a földszinten, 110 000 Ft/hó bérleti díjért. Az ingatlan nem bútorozott, a társasházban nincs lift, kompakt és világos elrendezése ideális egyedülállóknak vagy pároknak.','2026-04-09',1,10,16);
/*!40000 ALTER TABLE `alberlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alberlet_tipus`
--

DROP TABLE IF EXISTS `alberlet_tipus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alberlet_tipus` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alberlet_tipus`
--

LOCK TABLES `alberlet_tipus` WRITE;
/*!40000 ALTER TABLE `alberlet_tipus` DISABLE KEYS */;
INSERT INTO `alberlet_tipus` VALUES
(0,'ház'),
(1,'lakás'),
(2,'szoba');
/*!40000 ALTER TABLE `alberlet_tipus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kep`
--

DROP TABLE IF EXISTS `kep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alberlet_id` int(11) NOT NULL,
  `kep_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kep_alberlet` (`alberlet_id`),
  CONSTRAINT `fk_kep_alberlet` FOREIGN KEY (`alberlet_id`) REFERENCES `alberlet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kep`
--

LOCK TABLES `kep` WRITE;
/*!40000 ALTER TABLE `kep` DISABLE KEYS */;
INSERT INTO `kep` VALUES
(1,1,'/storage/Kepek/zalaegerszeg_01_01.png'),
(2,1,'/storage/Kepek/zalaegerszeg_01_02.png'),
(3,1,'/storage/Kepek/zalaegerszeg_01_03.png'),
(4,1,'/storage/Kepek/zalaegerszeg_01_04.png'),
(5,2,'/storage/Kepek/zalaegerszeg_02_01.png'),
(6,2,'/storage/Kepek/zalaegerszeg_02_02.png'),
(7,2,'/storage/Kepek/zalaegerszeg_02_03.png'),
(8,2,'/storage/Kepek/zalaegerszeg_02_04.png'),
(9,2,'/storage/Kepek/zalaegerszeg_02_05.png'),
(10,3,'/storage/Kepek/zalaegerszeg_03_01.png'),
(11,3,'/storage/Kepek/zalaegerszeg_03_02.png'),
(12,3,'/storage/Kepek/zalaegerszeg_03_03.png'),
(13,3,'/storage/Kepek/zalaegerszeg_03_04.png'),
(14,4,'/storage/Kepek/zalaegerszeg_04_01.png'),
(15,4,'/storage/Kepek/zalaegerszeg_04_02.png'),
(16,4,'/storage/Kepek/zalaegerszeg_04_03.png'),
(17,4,'/storage/Kepek/zalaegerszeg_04_04.png'),
(18,4,'/storage/Kepek/zalaegerszeg_04_05.png'),
(19,5,'/storage/Kepek/zalaegerszeg_05_01.png'),
(20,5,'/storage/Kepek/zalaegerszeg_05_02.png'),
(21,5,'/storage/Kepek/zalaegerszeg_05_03.png'),
(22,5,'/storage/Kepek/zalaegerszeg_05_04.png'),
(23,6,'/storage/Kepek/keszthely_01_01.png'),
(24,6,'/storage/Kepek/keszthely_01_02.png'),
(25,6,'/storage/Kepek/keszthely_01_03.png'),
(26,6,'/storage/Kepek/keszthely_01_04.png'),
(27,6,'/storage/Kepek/keszthely_01_05.png'),
(28,7,'/storage/Kepek/keszthely_02_01.png'),
(29,7,'/storage/Kepek/keszthely_02_02.png'),
(30,7,'/storage/Kepek/keszthely_02_03.png'),
(31,7,'/storage/Kepek/keszthely_02_04.png'),
(32,8,'/storage/Kepek/keszthely_03_01.png'),
(33,8,'/storage/Kepek/keszthely_03_02.png'),
(34,8,'/storage/Kepek/keszthely_03_03.png'),
(35,8,'/storage/Kepek/keszthely_03_04.png'),
(36,9,'/storage/Kepek/keszthely_04_01.png'),
(37,9,'/storage/Kepek/keszthely_04_02.png'),
(38,9,'/storage/Kepek/keszthely_04_03.png'),
(39,9,'/storage/Kepek/keszthely_04_04.png'),
(40,9,'/storage/Kepek/keszthely_04_05.png'),
(41,10,'/storage/Kepek/keszthely_05_01.png'),
(42,10,'/storage/Kepek/keszthely_05_02.png'),
(43,10,'/storage/Kepek/keszthely_05_03.png'),
(44,10,'/storage/Kepek/keszthely_05_04.png'),
(45,10,'/storage/Kepek/keszthely_05_05.png'),
(46,11,'/storage/Kepek/nagykanizsa_01_01.png'),
(47,11,'/storage/Kepek/nagykanizsa_01_02.png'),
(48,11,'/storage/Kepek/nagykanizsa_01_03.png'),
(49,11,'/storage/Kepek/nagykanizsa_01_04.png'),
(50,11,'/storage/Kepek/nagykanizsa_01_05.png'),
(51,11,'/storage/Kepek/nagykanizsa_01_06.png'),
(52,12,'/storage/Kepek/nagykanizsa_02_01.png'),
(53,12,'/storage/Kepek/nagykanizsa_02_02.png'),
(54,12,'/storage/Kepek/nagykanizsa_02_03.png'),
(55,12,'/storage/Kepek/nagykanizsa_02_04.png'),
(56,12,'/storage/Kepek/nagykanizsa_02_05.png'),
(57,13,'/storage/Kepek/nagykanizsa_03_01.png'),
(58,13,'/storage/Kepek/nagykanizsa_03_02.png'),
(59,13,'/storage/Kepek/nagykanizsa_03_03.png'),
(60,13,'/storage/Kepek/nagykanizsa_03_04.png'),
(61,13,'/storage/Kepek/nagykanizsa_03_05.png'),
(62,13,'/storage/Kepek/nagykanizsa_03_06.png'),
(63,14,'/storage/Kepek/nagykanizsa_04_01.png'),
(64,14,'/storage/Kepek/nagykanizsa_04_02.png'),
(65,14,'/storage/Kepek/nagykanizsa_04_03.png'),
(66,14,'/storage/Kepek/nagykanizsa_04_04.png'),
(67,15,'/storage/Kepek/nagykanizsa_05_01.png'),
(68,15,'/storage/Kepek/nagykanizsa_05_02.png'),
(69,15,'/storage/Kepek/nagykanizsa_05_03.png'),
(70,15,'/storage/Kepek/nagykanizsa_05_04.png'),
(71,15,'/storage/Kepek/nagykanizsa_05_05.png'),
(72,15,'/storage/Kepek/nagykanizsa_05_06.png'),
(73,16,'/storage/Kepek/gyor_01_01.png'),
(74,16,'/storage/Kepek/gyor_01_02.png'),
(75,16,'/storage/Kepek/gyor_01_03.png'),
(76,16,'/storage/Kepek/gyor_01_04.png'),
(77,16,'/storage/Kepek/gyor_01_05.png'),
(78,16,'/storage/Kepek/gyor_01_06.png'),
(79,17,'/storage/Kepek/gyor_02_01.png'),
(80,17,'/storage/Kepek/gyor_02_02.png'),
(81,17,'/storage/Kepek/gyor_02_03.png'),
(82,17,'/storage/Kepek/gyor_02_04.png'),
(83,18,'/storage/Kepek/gyor_03_01.png'),
(84,18,'/storage/Kepek/gyor_03_02.png'),
(85,18,'/storage/Kepek/gyor_03_03.png'),
(86,18,'/storage/Kepek/gyor_03_04.png'),
(87,18,'/storage/Kepek/gyor_03_05.png'),
(88,18,'/storage/Kepek/gyor_03_06.png'),
(89,19,'/storage/Kepek/gyor_04_01.png'),
(90,19,'/storage/Kepek/gyor_04_02.png'),
(91,19,'/storage/Kepek/gyor_04_03.png'),
(92,19,'/storage/Kepek/gyor_04_04.png'),
(93,19,'/storage/Kepek/gyor_04_05.png'),
(94,19,'/storage/Kepek/gyor_04_06.png'),
(95,20,'/storage/Kepek/gyor_05_01.png'),
(96,20,'/storage/Kepek/gyor_05_02.png'),
(97,20,'/storage/Kepek/gyor_05_03.png'),
(98,20,'/storage/Kepek/gyor_05_04.png'),
(99,20,'/storage/Kepek/gyor_05_05.png'),
(100,20,'/storage/Kepek/gyor_05_06.png'),
(101,20,'/storage/Kepek/gyor_05_07.png'),
(102,21,'/storage/Kepek/sopron_01_01.png'),
(103,21,'/storage/Kepek/sopron_01_02.png'),
(104,21,'/storage/Kepek/sopron_01_03.png'),
(105,21,'/storage/Kepek/sopron_01_04.png'),
(106,22,'/storage/Kepek/sopron_02_01.png'),
(107,22,'/storage/Kepek/sopron_02_02.png'),
(108,22,'/storage/Kepek/sopron_02_03.png'),
(109,22,'/storage/Kepek/sopron_02_04.png'),
(110,22,'/storage/Kepek/sopron_02_05.png'),
(111,22,'/storage/Kepek/sopron_02_06.png'),
(112,23,'/storage/Kepek/sopron_03_01.png'),
(113,23,'/storage/Kepek/sopron_03_02.png'),
(114,23,'/storage/Kepek/sopron_03_03.png'),
(115,23,'/storage/Kepek/sopron_03_04.png'),
(116,23,'/storage/Kepek/sopron_03_05.png'),
(117,24,'/storage/Kepek/sopron_04_01.png'),
(118,24,'/storage/Kepek/sopron_04_02.png'),
(119,24,'/storage/Kepek/sopron_04_03.png'),
(120,24,'/storage/Kepek/sopron_04_04.png'),
(121,24,'/storage/Kepek/sopron_04_05.png'),
(122,24,'/storage/Kepek/sopron_04_06.png'),
(123,25,'/storage/Kepek/sopron_05_01.png'),
(124,25,'/storage/Kepek/sopron_05_02.png'),
(125,25,'/storage/Kepek/sopron_05_03.png'),
(126,25,'/storage/Kepek/sopron_05_04.png'),
(127,26,'/storage/Kepek/pecs_01_01.png'),
(128,26,'/storage/Kepek/pecs_01_02.png'),
(129,26,'/storage/Kepek/pecs_01_03.png'),
(130,26,'/storage/Kepek/pecs_01_04.png'),
(131,27,'/storage/Kepek/pecs_02_01.png'),
(132,27,'/storage/Kepek/pecs_02_02.png'),
(133,27,'/storage/Kepek/pecs_02_03.png'),
(134,27,'/storage/Kepek/pecs_02_04.png'),
(135,27,'/storage/Kepek/pecs_02_05.png'),
(136,28,'/storage/Kepek/pecs_03_01.png'),
(137,28,'/storage/Kepek/pecs_03_02.png'),
(138,28,'/storage/Kepek/pecs_03_03.png'),
(139,28,'/storage/Kepek/pecs_03_04.png'),
(140,28,'/storage/Kepek/pecs_03_05.png'),
(141,29,'/storage/Kepek/pecs_04_01.png'),
(142,29,'/storage/Kepek/pecs_04_02.png'),
(143,29,'/storage/Kepek/pecs_04_03.png'),
(144,29,'/storage/Kepek/pecs_04_04.png'),
(145,29,'/storage/Kepek/pecs_04_05.png'),
(146,30,'/storage/Kepek/pecs_05_01.png'),
(147,30,'/storage/Kepek/pecs_05_02.png'),
(148,30,'/storage/Kepek/pecs_05_03.png'),
(149,30,'/storage/Kepek/pecs_05_04.png'),
(150,30,'/storage/Kepek/pecs_05_05.png'),
(151,30,'/storage/Kepek/pecs_05_06.png'),
(152,31,'/storage/Kepek/szombathely_01_01.png'),
(153,31,'/storage/Kepek/szombathely_01_02.png'),
(154,31,'/storage/Kepek/szombathely_01_03.png'),
(155,31,'/storage/Kepek/szombathely_01_04.png'),
(156,31,'/storage/Kepek/szombathely_01_05.png'),
(157,31,'/storage/Kepek/szombathely_01_06.png'),
(158,31,'/storage/Kepek/szombathely_01_07.png'),
(159,31,'/storage/Kepek/szombathely_01_08.png'),
(160,31,'/storage/Kepek/szombathely_01_09.png'),
(161,31,'/storage/Kepek/szombathely_01_10.png'),
(162,32,'/storage/Kepek/szombathely_02_01.png'),
(163,32,'/storage/Kepek/szombathely_02_02.png'),
(164,32,'/storage/Kepek/szombathely_02_03.png'),
(165,32,'/storage/Kepek/szombathely_02_04.png'),
(166,32,'/storage/Kepek/szombathely_02_05.png'),
(167,32,'/storage/Kepek/szombathely_02_06.png'),
(168,33,'/storage/Kepek/szombathely_03_01.png'),
(169,33,'/storage/Kepek/szombathely_03_02.png'),
(170,33,'/storage/Kepek/szombathely_03_03.png'),
(171,33,'/storage/Kepek/szombathely_03_04.png'),
(172,33,'/storage/Kepek/szombathely_03_05.png'),
(173,33,'/storage/Kepek/szombathely_03_06.png'),
(174,33,'/storage/Kepek/szombathely_03_07.png'),
(175,33,'/storage/Kepek/szombathely_03_08.png'),
(176,34,'/storage/Kepek/szombathely_04_01.png'),
(177,34,'/storage/Kepek/szombathely_04_02.png'),
(178,34,'/storage/Kepek/szombathely_04_03.png'),
(179,34,'/storage/Kepek/szombathely_04_04.png'),
(180,34,'/storage/Kepek/szombathely_04_05.png'),
(181,35,'/storage/Kepek/szombathely_05_01.png'),
(182,35,'/storage/Kepek/szombathely_05_02.png'),
(183,35,'/storage/Kepek/szombathely_05_03.png'),
(184,35,'/storage/Kepek/szombathely_05_04.png'),
(185,35,'/storage/Kepek/szombathely_05_05.png'),
(186,35,'/storage/Kepek/szombathely_05_06.png'),
(187,36,'/storage/Kepek/budapest_01_01.png'),
(188,36,'/storage/Kepek/budapest_01_02.png'),
(189,36,'/storage/Kepek/budapest_01_03.png'),
(190,36,'/storage/Kepek/budapest_01_04.png'),
(191,36,'/storage/Kepek/budapest_01_05.png'),
(192,36,'/storage/Kepek/budapest_01_06.png'),
(193,36,'/storage/Kepek/budapest_01_07.png'),
(194,36,'/storage/Kepek/budapest_01_08.png'),
(195,36,'/storage/Kepek/budapest_01_09.png'),
(196,36,'/storage/Kepek/budapest_01_10.png'),
(197,37,'/storage/Kepek/budapest_02_01.png'),
(198,37,'/storage/Kepek/budapest_02_02.png'),
(199,37,'/storage/Kepek/budapest_02_03.png'),
(200,37,'/storage/Kepek/budapest_02_04.png'),
(201,37,'/storage/Kepek/budapest_02_05.png'),
(202,37,'/storage/Kepek/budapest_02_06.png'),
(203,37,'/storage/Kepek/budapest_02_07.png'),
(204,37,'/storage/Kepek/budapest_02_08.png'),
(205,37,'/storage/Kepek/budapest_02_09.png'),
(206,37,'/storage/Kepek/budapest_02_10.png'),
(207,37,'/storage/Kepek/budapest_02_11.png'),
(208,37,'/storage/Kepek/budapest_02_12.png'),
(209,37,'/storage/Kepek/budapest_02_13.png'),
(210,37,'/storage/Kepek/budapest_02_14.png'),
(211,38,'/storage/Kepek/budapest_03_01.png'),
(212,38,'/storage/Kepek/budapest_03_02.png'),
(213,38,'/storage/Kepek/budapest_03_03.png'),
(214,38,'/storage/Kepek/budapest_03_04.png'),
(215,38,'/storage/Kepek/budapest_03_05.png'),
(216,38,'/storage/Kepek/budapest_03_06.png'),
(217,38,'/storage/Kepek/budapest_03_07.png'),
(218,39,'/storage/Kepek/budapest_04_01.png'),
(219,39,'/storage/Kepek/budapest_04_02.png'),
(220,39,'/storage/Kepek/budapest_04_03.png'),
(221,39,'/storage/Kepek/budapest_04_04.png'),
(222,39,'/storage/Kepek/budapest_04_05.png'),
(223,39,'/storage/Kepek/budapest_04_06.png'),
(224,39,'/storage/Kepek/budapest_04_07.png'),
(225,40,'/storage/Kepek/budapest_05_01.png'),
(226,40,'/storage/Kepek/budapest_05_02.png'),
(227,40,'/storage/Kepek/budapest_05_03.png'),
(228,40,'/storage/Kepek/budapest_05_04.png'),
(229,40,'/storage/Kepek/budapest_05_05.png'),
(230,40,'/storage/Kepek/budapest_05_06.png'),
(231,40,'/storage/Kepek/budapest_05_07.png'),
(232,41,'/storage/Kepek/szeged_01_01.png'),
(233,41,'/storage/Kepek/szeged_01_02.png'),
(234,41,'/storage/Kepek/szeged_01_03.png'),
(235,41,'/storage/Kepek/szeged_01_04.png'),
(236,41,'/storage/Kepek/szeged_01_05.png'),
(237,42,'/storage/Kepek/szeged_02_01.png'),
(238,42,'/storage/Kepek/szeged_02_02.png'),
(239,42,'/storage/Kepek/szeged_02_03.png'),
(240,42,'/storage/Kepek/szeged_02_04.png'),
(241,42,'/storage/Kepek/szeged_02_05.png'),
(242,42,'/storage/Kepek/szeged_02_06.png'),
(243,43,'/storage/Kepek/szeged_03_01.png'),
(244,43,'/storage/Kepek/szeged_03_02.png'),
(245,43,'/storage/Kepek/szeged_03_03.png'),
(246,43,'/storage/Kepek/szeged_03_04.png'),
(247,43,'/storage/Kepek/szeged_03_05.png'),
(248,43,'/storage/Kepek/szeged_03_06.png'),
(249,43,'/storage/Kepek/szeged_03_07.png'),
(250,43,'/storage/Kepek/szeged_03_08.png'),
(251,44,'/storage/Kepek/szeged_04_01.png'),
(252,44,'/storage/Kepek/szeged_04_02.png'),
(253,44,'/storage/Kepek/szeged_04_03.png'),
(254,44,'/storage/Kepek/szeged_04_04.png'),
(255,44,'/storage/Kepek/szeged_04_05.png'),
(256,45,'/storage/Kepek/szeged_05_01.png'),
(257,45,'/storage/Kepek/szeged_05_02.png'),
(258,45,'/storage/Kepek/szeged_05_03.png'),
(259,45,'/storage/Kepek/szeged_05_04.png'),
(260,45,'/storage/Kepek/szeged_05_05.png'),
(261,45,'/storage/Kepek/szeged_05_06.png'),
(262,45,'/storage/Kepek/szeged_05_07.png'),
(263,45,'/storage/Kepek/szeged_05_08.png'),
(264,46,'/storage/Kepek/hodmezovasarhely_01_01.png'),
(265,46,'/storage/Kepek/hodmezovasarhely_01_02.png'),
(266,46,'/storage/Kepek/hodmezovasarhely_01_03.png'),
(267,46,'/storage/Kepek/hodmezovasarhely_01_04.png'),
(268,46,'/storage/Kepek/hodmezovasarhely_01_05.png'),
(269,46,'/storage/Kepek/hodmezovasarhely_01_06.png'),
(270,47,'/storage/Kepek/hodmezovasarhely_02_01.png'),
(271,47,'/storage/Kepek/hodmezovasarhely_02_02.png'),
(272,47,'/storage/Kepek/hodmezovasarhely_02_03.png'),
(273,47,'/storage/Kepek/hodmezovasarhely_02_04.png'),
(274,47,'/storage/Kepek/hodmezovasarhely_02_05.png'),
(275,48,'/storage/Kepek/hodmezovasarhely_03_01.png'),
(276,48,'/storage/Kepek/hodmezovasarhely_03_02.png'),
(277,48,'/storage/Kepek/hodmezovasarhely_03_03.png'),
(278,48,'/storage/Kepek/hodmezovasarhely_03_04.png'),
(279,49,'/storage/Kepek/hodmezovasarhely_04_01.png'),
(280,49,'/storage/Kepek/hodmezovasarhely_04_02.png'),
(281,49,'/storage/Kepek/hodmezovasarhely_04_03.png'),
(282,49,'/storage/Kepek/hodmezovasarhely_04_04.png'),
(283,49,'/storage/Kepek/hodmezovasarhely_04_05.png'),
(284,49,'/storage/Kepek/hodmezovasarhely_04_06.png'),
(285,50,'/storage/Kepek/hodmezovasarhely_05_01.png'),
(286,50,'/storage/Kepek/hodmezovasarhely_05_02.png'),
(287,50,'/storage/Kepek/hodmezovasarhely_05_03.png'),
(288,50,'/storage/Kepek/hodmezovasarhely_05_04.png'),
(289,50,'/storage/Kepek/hodmezovasarhely_05_05.png');
/*!40000 ALTER TABLE `kep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `megye`
--

DROP TABLE IF EXISTS `megye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `megye` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `megye`
--

LOCK TABLES `megye` WRITE;
/*!40000 ALTER TABLE `megye` DISABLE KEYS */;
INSERT INTO `megye` VALUES
(1,'Zala'),
(2,'Győr-moson-sopron'),
(3,'Baranya'),
(4,'Vas'),
(5,'Pest'),
(6,'Csongrád');
/*!40000 ALTER TABLE `megye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tulajdonos`
--

DROP TABLE IF EXISTS `tulajdonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tulajdonos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefon` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tulajdonos`
--

LOCK TABLES `tulajdonos` WRITE;
/*!40000 ALTER TABLE `tulajdonos` DISABLE KEYS */;
INSERT INTO `tulajdonos` VALUES
(1,'Molnár Tímea','moltimi1995@businessmail.hu','+36 70 670 6767'),
(2,'Kovács Béla','belakovacs@businessmail.hu','+36 20 234 8632'),
(3,'Kolompos József','bolondosjoe@promail.com','+36 30 506 8015'),
(4,'Tamás András','tateandrew@promail.com','+36 20 500 3936'),
(5,'Takács Emese','temese93@promail.com','+36 70 287 3247'),
(6,'Dudás Péter','hornpeti26@promail.com','+36 70 763 2877'),
(7,'Szőke Barna','blondbrown83@promail.com','+36 30 187 1562'),
(8,'Horváth Kinga','kingahorvath@businessmail.hu','+36 30 692 9375'),
(9,'Fazekas Kálmán','kalman620221@businessmail.hu','+36 20 329 8496'),
(10,'Antal Jázmin','thejasmin03@promail.com','+36 20 581 3234'),
(11,'Csonka Csongor','csocso85@businessmail.hu','+36 30 832 6421'),
(12,'Illés Márk','illesmarkusz20@promail.com','+36 70 232 3782'),
(13,'Mezei Bálint','fieldivalentin@promail.com','+36 20 942 8642'),
(14,'Hegedűs Enikő','violin74@businessmail.com','+36 30 347 9873'),
(15,'Bognár Vendel','vendelbognar@promail.com','+36 30 125 5237'),
(16,'Keretes Erika','erikakeretes@promail.com','+36 20 921 3424');
/*!40000 ALTER TABLE `tulajdonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varos`
--

DROP TABLE IF EXISTS `varos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `varos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `megye_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_varos_megye` (`megye_id`),
  CONSTRAINT `fk_varos_megye` FOREIGN KEY (`megye_id`) REFERENCES `megye` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varos`
--

LOCK TABLES `varos` WRITE;
/*!40000 ALTER TABLE `varos` DISABLE KEYS */;
INSERT INTO `varos` VALUES
(1,'Nagykanizsa',1),
(2,'Zalaegerszeg',1),
(3,'Keszthely',1),
(4,'Győr',2),
(5,'Sopron',2),
(6,'Pécs',3),
(7,'Szombathely',4),
(8,'Budapest',5),
(9,'Szeged',6),
(10,'Hódmezővásárhely',6);
/*!40000 ALTER TABLE `varos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'alberlet'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-04-28  8:37:35
