-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 64.20.36.19    Database: s32759_proyectoweb
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.10-MariaDB-1:10.6.10+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `ID_usuario` varchar(40) DEFAULT NULL,
  `ID_producto` int(11) DEFAULT NULL,
  `comentario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_producto` varchar(255) NOT NULL,
  `Nombre_producto` varchar(40) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `categoria` varchar(40) DEFAULT NULL,
  `precio` double(10,3) NOT NULL,
  `Stock` int(11) NOT NULL,
  PRIMARY KEY (`ID_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('1','SSD 1TB','https://i5.walmartimages.com.mx/mg/gm/3pp/asr/7e847c55-768a-45fb-98ba-62333195801f.451f713f9709cf12969b10e48d249b0b.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF','Disco duro mecanico','almacenamiento.ssd',2000.000,50),('2','Ram 16gb','https://www.lacasadelascomputadoras.com.mx/productos/big/1674492238-49.jpg','mejorado XD','componentes.ram',2500.000,20),('3RXnKLvdBYSVOM2s95ze','hdd 1tb','https://m.media-amazon.com/images/I/81IybldJkrL.jpg','almacenamiento grande','almacenamiento.hdd',800.000,10),('Bfy8Vg9qMrdjAnXmUiHp','monitor 120 hz','https://m.media-amazon.com/images/I/71rxYMM5xXL.jpg','soporte 4k','dispositivos.monitor',2500.000,10),('dDby64x2LR9F3wlenAgc','Teclado mecanico rosa','https://m.media-amazon.com/images/I/61VUjhqK6fL._AC_UF894,1000_QL80_.jpg','bonita esta','dispositivos.teclado',2150.000,10),('Dg7surIN52AjctZnLw6M','motherboard asus-prime','https://m.media-amazon.com/images/I/81UCyHa+BKL._AC_UF894,1000_QL80_.jpg','soporte amd ryzen 5600','componentes.motherboard',3600.000,10),('obpMZirNSG0dOuTcWVEs','rtx 2060 6gb','https://m.media-amazon.com/images/I/61sdqFNRdwL.jpg','grafica poderosa papa','componentes.grafica',3200.000,10),('PVybJIjU7O2r0FEClYWo','mouse gamer','https://www.steren.com.mx/media/catalog/product/cache/295a12aacdcb0329a521cbf9876b29e7/image/22331c7bc/mouse-usb-para-gamers-1200-2400-3200-dpi.jpg','comodo','dispositivos.mouse',560.000,20),('pwk73LIUDnJKsbX4fBTP','ssd Kingston','https://i5.walmartimages.com.mx/mg/gm/3pp/asr/d6763936-d74c-4dee-89bb-9b3de3cd8ff9.8c6ecc38964cfe716faac3b039cfc39e.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF','velocidades altas','almacenamiento.ssd',4000.000,2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id_ticket` varchar(255) NOT NULL,
  `id_client` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `monto` double NOT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  KEY `tiket_ibfk_1` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('0EJ37932TS068923R','JTR93LL4EHP8W','fabiola@gmail.com','Ram 8gb',1,991,'COMPLETED','2023-11-20 04:30:57','sb-sh1ji27450968@business.example.com'),('1LJ9343068504971T','JTR93LL4EHP8W','fabiola@gmail.com','Ram 8gb',1,991,'COMPLETED','2023-11-20 04:30:21','sb-sh1ji27450968@business.example.com'),('2WU941172L7776457','JTR93LL4EHP8W','fabiola@gmail.com','SSD 1tb',1,891,'COMPLETED','2023-11-20 04:29:07','sb-sh1ji27450968@business.example.com'),('66G50540BV2853944','JTR93LL4EHP8W','fabiola@gmail.com','SSD 1tb',1,891,'COMPLETED','2023-11-20 04:21:27','sb-sh1ji27450968@business.example.com'),('6VF32700X1432270T','JTR93LL4EHP8W','fabiola@gmail.com','SSD 1tb',1,891,'COMPLETED','2023-11-20 04:17:06','sb-sh1ji27450968@business.example.com'),('0WX48785X8204663D','JTR93LL4EHP8W','fabiola@gmail.com','Ram 8gb',1,991,'COMPLETED','2023-11-20 04:34:57','sb-sh1ji27450968@business.example.com'),('0WX48785X8204663D','JTR93LL4EHP8W','fabiola@gmail.com','teclado mecanico',1,1350,'COMPLETED','2023-11-20 04:34:57','sb-sh1ji27450968@business.example.com'),('1N42282751276650H','JTR93LL4EHP8W','fabian@gmail.com','SSD 1tb',1,891,'COMPLETED','2023-11-20 04:38:14','sb-sh1ji27450968@business.example.com'),('27Y62196XY759290P','JTR93LL4EHP8W','fabiola@gmail.com','monitor 120 hz',1,2500,'COMPLETED','2023-11-24 22:40:57','sb-sh1ji27450968@business.example.com'),('27Y62196XY759290P','JTR93LL4EHP8W','fabiola@gmail.com','rtx 2060 6gb',1,3200,'COMPLETED','2023-11-24 22:40:57','sb-sh1ji27450968@business.example.com'),('37D39312R90006354','JTR93LL4EHP8W','fabiola@gmail.com','rtx 2060 6gb',1,3200,'COMPLETED','2023-11-25 01:07:48','sb-sh1ji27450968@business.example.com'),('37D39312R90006354','JTR93LL4EHP8W','fabiola@gmail.com','Teclado mecanico rosa',1,2150,'COMPLETED','2023-11-25 01:07:48','sb-sh1ji27450968@business.example.com'),('9X6560772B435824S','JTR93LL4EHP8W','pendejo@gmail.com','monitor 120 hz',1,2500,'COMPLETED','2023-11-25 02:34:28','sb-sh1ji27450968@business.example.com'),('6K902956RM998672X','JTR93LL4EHP8W','fabiola@gmail.com','SSD 1tb',1,891,'COMPLETED','2023-11-28 19:27:01','sb-sh1ji27450968@business.example.com'),('5GB009081R405161G','JTR93LL4EHP8W','arnolfabian0@gmail.com','Ram 16gb',1,2500,'COMPLETED','2023-11-30 03:21:50','sb-sh1ji27450968@business.example.com');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID_usuario` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `Tipo_usuario` int(11) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('62ueEg7LdYxcZ4fnNaDG','3@gmail.com',1,'$2y$10$2r8q3hlkYdXfMOQMMZe1muMNofvl2/r3xjnBsQ1uNaDEjltajO5nS'),('DXu4pLIr5jqoUYilOCyg','eliasissacescribanosotoarreola@gmail.com',1,'$2y$10$pE3hc9.UXODC/p79HD3wHOwIWhz9ME575rx.RqXVTLaTRVFlk1vhS'),('fAEw4oRliHg1mUKMjyph','arnolfabian0@gmail.com',1,'$2y$10$qWLri.wLnNKqALEvfyxfN.HZ.SBmLcxKdS5ghxuw5.O2HWHuwoWES'),('hSKRWg9Jr50F2dxET8HI','12@gmail.com',1,'$2y$10$vDLf4iElsMLYqnhrW4rJ.uctXZVabC1889iSngDmYbXzphm.9l03m'),('lO1duQceKiM7mARbN24t','gali@gmail.com',1,'$2y$10$3bQulCslaUnBHp3Afc.wee2Me5KulefHGAkyWoh7AUxXyJz./jofW'),('ni7UMDLfH4jOBqgS0Z9F','pancho@gmail.com',1,'$2y$10$LPVBHsmzL93nCYpicPvqX.5BOtBPS7BZFf3IfEpRNHXZ6u8Auq6e2'),('PKcU7VTjvBlMCqgI4FxN','chayo@gmail.com',1,'$2y$10$irg4lvQbOQKtweMHJcQ.FeBYYvcG1keft2lhQq1H50sJ9375DiKTy'),('PWQTJU9MvA7y8cHpKg2h','2@gmail.com',1,'$2y$10$On4qgb68XGrzBhU77hBDquMLVHhVgJ0lq7f/FQohlljbUk8DonZXe'),('raC0DMlsvTcO3VQBpHWN','pendejo@gmail.com',1,'$2y$10$3Ozy7cs3.Rs9cQr6TPxbEudzGsujyFrEqyxA///5GeMxfRXmv6cYC'),('SNBRb2MC7JhQDeXxdsr0','1@gmail.com',1,'$2y$10$a6DrpTEhfb/zLuxGjj08Kuw7eACukS59bC5d98CrzK1piNjDWGglW'),('tH5Tcz76bAvwYFQCpisM','arnoldofabian@gmail.com',1,'$2y$10$g41/dfQiKfPzXNwo5avvL.R.ra90qgduB4v0F272qzdWOOQj6HLMu'),('UC09lNp1FuT2k4wOnPKY','fabiola@gmail.com',1,'$2y$10$UuUD9331a4xbcB1WHZgGSeHpTG6ElHy.5MsmfFqwtwxnIcNGRF3dS'),('w8rxdL6GBieE4Q9q21uy','diegoivansotoarreola@gmail.com',2,'$2y$10$d0mvrE2kPXD0SJglyv3RfeHtqNA7l4Auy3/1sBajJVv1ymEUy6Kpq'),('YWLbMpO0loy58wGPt6Sx','fabian@gmail.com',1,'$2y$10$lOOOnuPNNNCZ6ilLFoLoY.3EyzuEVzHGpZqAM/JeMdgy8sdeadIIe'),('zNB8oC4hOTyWnHeMsxRw','ruben@gmail.com',1,'$2y$10$uVWGdJf7ZPTcc349742.0ObxArDRhsxnVDVvZ0hj7BFjTb/KZj1ny');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 's32759_proyectoweb'
--

--
-- Dumping routines for database 's32759_proyectoweb'
--
/*!50003 DROP FUNCTION IF EXISTS `total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u32759_xXJdiuUD1m`@`%` FUNCTION `total`(tiket int) RETURNS double(10,3)
    DETERMINISTIC
begin
declare total double(10,3);
select sum(producto.precio * compra.cantidad)
into total from(producto inner join compra)
where producto.ID_producto=compra.ID_producto
and compra.id_tiket=tiket;
return total;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02  9:44:25
