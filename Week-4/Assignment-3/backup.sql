-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'xbgsthu','ierxoygjojemeourpausqzdknlevaaeswhnuxnivetlygbeahq',1),(2,'odlcczz','hksitjvpgexiztexzjvbckkfhmlrxpvsxfpnlpglxxlemaksnz',2),(3,'uzlylpe','wztxxoyxmjmzrflnlbkvizjgmqyesnpgkghbricxicrmafxpid',1),(4,'cbwcawa','rggezkovholwivxnsguxqsnzkehpjhcphwknuyozcfgdkywcmp',2),(5,'rufuvun','avcihmmqwngfizcribgxvhaxpcadghlaxorqdcerzwocaqgbqf',1),(6,'zutlkcs','vkdhxoshqwfqyrqvxubctdqdtzdyouxygpcqgpaiecwdcwhxde',2),(7,'bpjztui','kqliovdifncazszokytofachqgjbzrmhwnnsyuryqsoxmaasxl',1),(8,'szsqlvl','bzxpnlmwvexbkemqvxruqjqxcfzbtzozlatntpthnwtbfrqrhm',2),(9,'oljzntc','cmelbphonpktlzdirdypymdrstxvkpptfgstrmgnugkobkqpou',1),(10,'clytwkz','hajgrtlszdbhtmmgnkehajkxionwigereojhswyyixbukfzvda',2),(11,'sjkawgo','juzeyhnperjpszzivpnbpmhmldpszymxvafhpgjrjibmdvfbye',1),(12,'yabdebt','bkvmcahsvldfaudbnyxbonndhgrcbnqhwrwvqidbtozbulpewy',2),(13,'oacauqk','hhhkikrbbayaxoosnzswhrkxccvsynguutkbxlnuaoekcadrnz',1),(14,'nbfskse','jiaxigayaynthwwqvhsoysmszdrxqfacousgbcivgwvhfqtxdt',2),(15,'ptzkezp','gvayujfbbzrpsqpumzjcjwkciwsyrgcawvkdznxclajmzfsvum',1),(16,'qdehwyu','fdrykyvpvxfoinclrwllldtvegkcrhnyzqplobmdwzprpnvaot',2),(17,'jawimmh','wxocfzzjjuhrtxhycdkmxfyhfkmnzgmuxsbrelytuksqsaxquo',1),(18,'squaoyx','ktiilkxcngapxpkpwsmwfhnnxohhcmxfoobrulzbgedpqigfau',2),(19,'rmgwmlm','ecrtyvtgniwvyokduoopnegycaicyokxvfxfduugdtnqkrytpp',1),(20,'gcbgges','eoqtrnnoaatvakdjsaqrlestbaaemvkdjepxdqunteoknpwgyb',2),(21,'voxaeja','luhoxfedndzqghckvfwaptzsjgiavywzvbqehxcseehonwrzzj',1),(22,'hlsqvao','rvbmqverkjfmbsixfzfvtodanncddwdlmrfdbyfihsoqxewdno',2),(23,'tehyqjd','bvcllonvufrajyehtvabosnjdyetkpwbgrmdhuldwrxiakuqwp',1),(24,'jpfdqmr','lcmonycpifmovhusgswommzduxlvofbuigbuxmzmnkpjqoyegn',2),(25,'egdbihf','dsbclqdopeoungdzkglwrxsjacgpwgnqkokujmeerbpymzqdit',1),(26,'cbqidzh','udgamzrefgladwjobsaoanspdgudaoevwobyqcidfdifgtxjmm',2),(27,'zidfzyj','ghpaopfxieddqqxbiodojwtoowtzdqqgbftkwcsgttdnmlqusg',1),(28,'siwqxew','scossueppebsujswcyvyridsqlrtalujynvxbciuikhcmdbnai',2),(29,'ompwvtg','srctczyrskupszwndnahljckskhmuxuzvdubzajlqymemhjknw',1),(30,'qfyswag','tlnvvyrudcwqnvkvigpjdtgcekljdpuwxbzhfxlbjstetnfpja',2),(31,'yaguwna','spyxexbczozfwzqcrlmumvzpzwwpxwxjggtwormfmxebllifrq',1),(32,'aiubimm','qcdzrhamxliedzjguwvfbokvtlfvnnrdxfncngvhvjxjkxzuxl',2),(33,'lxmvxij','bvabmskbrnyrxlcostdvqxvlmyrgdctlueqztycuwdczcjvmyy',1),(34,'bpifetq','csicsfcbszyhngtclutywqmpjrvumubczbaqbzppztwtulphlv',2),(35,'qirofho','zjchxvbfofsrnmlunevzcijetccoihyzahsyswmehvoahblnyh',1),(36,'vbcqlci','wcfvwejconndfijeivpheutljqswutwestnjognvttcvxqmotg',2),(37,'grxxdbf','xxhqidulqwnktjwfgdideenwoqlcngqohmiukpqjoybgdzkkzk',1),(38,'vpglboj','erlcizngvpeosqppsdgaejquvvdrcsmsbspikzkwfevtywdtiv',2),(39,'vycppnw','erfriaklzscpunycyvuznnnxupjjgvcuhiyhdlcfsxptpomqwq',1),(40,'ctxowyg','sadvugswtezdhfoxppeobissolvgmnlgofqwrcimvngmbhezge',2),(41,'yszyzym','gcaahxcjrthchhrmcwndqpcgkxpwqgtxyqcewwbolhcheqiwdu',1),(42,'rvaobfs','qsaaathuxvvrqisgtullqatunwcxbpizwkxnmjjpbnagcjoyfq',2),(43,'huraebp','zuqgmbibeyinucyteumzfkbtvyxodfhluyfudexfsmnghnuwki',1),(44,'nfgkdpy','zxybgqgasxirxabybnilfvtlfpsfyqeszpezgsimxjlvhmdmsq',2),(45,'gxntqyv','gfkbprdvodfoxsvoepibgsdaazfpdfhiundhjtnuwtiolvjxco',1),(46,'llhizsv','ucfapvqbwmwlneomcnabmxofszkodeenmscolvqiqdvzrbmwnw',2),(47,'gvgjwue','hboztuookmykdukjwvaywlnllyazcqrqnlwhvtkepsmrrzistu',1),(48,'gzclfob','bsmxawtikxouzlnyleymkwfzafbvudlvtzqwrlptvgtdhnltvi',2),(49,'owaopwn','hpfnlhjxzrvdlsezumhaoloykzyzxzbpggpzbuxuvoarkwukko',1),(50,'rrkodqg','hcmszwsdawnpodxazqwunesyycxcyrooedrcbglbwrvsjlbvfc',2),(51,'dwkzucu','jrbjbinckgckovlemerfqugmhyvfhgasgxydpdrqgqcnvbtaja',1),(52,'xapcakd','mbuuhtopbkezjeerzdvgfxcltgahdvvkotjjjdameelhveuees',2),(53,'tyfkkdb','chboxwtytabozufzrnpvmlectqukqsebzjjsxddooszzhbxqmk',1),(54,'mqoggdt','kvxgyjxfidjuhghsdvnbvrefvannhyefcoozubwbbhqiskukbm',2),(55,'saaequk','vlukqglauwnumbypqzlsougbpzqjyguiqoqksgjoonxmoexcpt',1),(56,'estikbc','auunzyktmblcexzituxzvlpzsqtkqvodqbdnbfvdibowbgukhm',2),(57,'ghnnmyx','ggmvywzmstwgwxnmavfaubxkoynsuthznbeflrqmyvowwktajh',1),(58,'pjudjfm','rxedzbgptprizddymphlombnlgmumgfuawplchrlfbiiwsfurx',2),(59,'sefbsav','ufbbjfzcgmrxylbezlidnsfrxdycsycbgfdnjikmxdyelhdnzp',1),(60,'ipkenkz','qhkavaufdzbbfrnjciwvxtjebnybxjsoqjwlflgebbgixxsvwj',2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` text,
  `password` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'asdf@gmail.com','qwer'),(2,'zxcv@gmail.com','zxcv');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 15:48:58
