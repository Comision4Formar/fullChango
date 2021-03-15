-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fullchango
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `order` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Reggae',NULL,'2021-03-14 03:16:16',NULL),(2,'Stage And Screen',NULL,'2021-03-14 03:16:16',NULL),(3,'Country',NULL,'2021-03-14 03:16:16',NULL),(4,'Pop',NULL,'2021-03-14 03:16:16',NULL),(5,'Reggae',NULL,'2021-03-14 03:16:16',NULL),(6,'World',NULL,'2021-03-14 03:16:16',NULL),(7,'Reggae',NULL,'2021-03-14 03:16:16',NULL),(8,'Soul',NULL,'2021-03-14 03:16:16',NULL),(9,'Jazz',NULL,'2021-03-14 03:16:16',NULL),(10,'Non Music',NULL,'2021-03-14 03:16:16',NULL),(11,'Rap',NULL,'2021-03-14 03:16:16',NULL),(12,'Rock',NULL,'2021-03-14 03:16:16',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Generic Plastic Chips','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/city',252.73,29,12,'2021-03-14 03:16:16',NULL),(2,'Practical Metal Chips','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/business',332.22,6,1,'2021-03-14 03:16:16',NULL),(3,'Handcrafted Metal Keyboard','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/city',770.82,24,3,'2021-03-14 03:16:16',NULL),(4,'Rustic Granite Pants','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/animals',628.01,18,10,'2021-03-14 03:16:16',NULL),(5,'Ergonomic Fresh Fish','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/people',869.00,22,10,'2021-03-14 03:16:16',NULL),(6,'Practical Rubber Car','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/sports',838.66,4,2,'2021-03-14 03:16:16',NULL),(7,'Sleek Plastic Ball','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/city',949.52,18,1,'2021-03-14 03:16:16',NULL),(8,'Intelligent Metal Sausages','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/transport',800.44,0,7,'2021-03-14 03:16:16',NULL),(9,'Gorgeous Granite Mouse','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/cats',354.25,28,7,'2021-03-14 03:16:16',NULL),(10,'Intelligent Steel Cheese','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/nightlife',171.62,30,4,'2021-03-14 03:16:16',NULL),(11,'Fantastic Cotton Soap','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/sports',173.76,14,10,'2021-03-14 03:16:16',NULL),(12,'Generic Plastic Car','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/abstract',926.89,21,4,'2021-03-14 03:16:16',NULL),(13,'Tasty Granite Tuna','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/technics',926.41,21,10,'2021-03-14 03:16:16',NULL),(14,'Awesome Rubber Chips','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/nightlife',919.91,3,10,'2021-03-14 03:16:16',NULL),(15,'Handmade Plastic Fish','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/people',548.88,10,2,'2021-03-14 03:16:16',NULL),(16,'Licensed Plastic Shoes','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/business',993.25,25,2,'2021-03-14 03:16:16',NULL),(17,'Gorgeous Rubber Soap','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/animals',923.59,19,2,'2021-03-14 03:16:16',NULL),(18,'Practical Metal Tuna','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/animals',750.04,9,6,'2021-03-14 03:16:16',NULL),(19,'Small Metal Chips','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/transport',998.46,29,9,'2021-03-14 03:16:16',NULL),(20,'Rustic Soft Keyboard','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/city',702.68,18,4,'2021-03-14 03:16:16',NULL),(21,'Licensed Cotton Hat','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/cats',463.82,21,11,'2021-03-14 03:16:16',NULL),(22,'Gorgeous Granite Mouse','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/city',377.27,14,4,'2021-03-14 03:16:16',NULL),(23,'Rustic Plastic Chips','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/food',960.50,4,3,'2021-03-14 03:16:16',NULL),(24,'Awesome Rubber Hat','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/transport',928.99,4,2,'2021-03-14 03:16:16',NULL),(25,'Practical Wooden Towels','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/people',636.32,26,6,'2021-03-14 03:16:16',NULL),(26,'Tasty Steel Pizza','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/people',438.17,0,11,'2021-03-14 03:16:16',NULL),(27,'Incredible Rubber Ball','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/food',160.19,17,2,'2021-03-14 03:16:16',NULL),(28,'Awesome Concrete Towels','The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','http://placeimg.com/640/480/technics',799.10,7,8,'2021-03-14 03:16:16',NULL),(29,'Unbranded Cotton Pants','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/business',468.86,29,9,'2021-03-14 03:16:16',NULL),(30,'Incredible Steel Mouse','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/nature',968.62,25,4,'2021-03-14 03:16:16',NULL),(31,'Tasty Cotton Hat','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/transport',520.03,2,6,'2021-03-14 03:16:16',NULL),(32,'Small Cotton Shirt','The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','http://placeimg.com/640/480/people',187.18,0,6,'2021-03-14 03:16:16',NULL),(33,'Tasty Cotton Hat','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/transport',111.76,24,1,'2021-03-14 03:16:16',NULL),(34,'Intelligent Fresh Bike','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/animals',288.58,5,1,'2021-03-14 03:16:16',NULL),(35,'Awesome Wooden Car','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/business',874.88,21,8,'2021-03-14 03:16:16',NULL),(36,'Unbranded Granite Tuna','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/animals',508.90,20,6,'2021-03-14 03:16:16',NULL),(37,'Small Fresh Pants','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/business',277.01,27,9,'2021-03-14 03:16:16',NULL),(38,'Ergonomic Fresh Bacon','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/fashion',277.72,27,8,'2021-03-14 03:16:16',NULL),(39,'Generic Soft Fish','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/fashion',460.95,24,6,'2021-03-14 03:16:16',NULL),(40,'Generic Metal Bike','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nature',736.25,11,12,'2021-03-14 03:16:16',NULL),(41,'Awesome Fresh Pants','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/people',499.04,0,2,'2021-03-14 03:16:16',NULL),(42,'Fantastic Fresh Shoes','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/business',538.28,23,7,'2021-03-14 03:16:16',NULL),(43,'Handcrafted Fresh Salad','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/transport',570.27,13,11,'2021-03-14 03:16:16',NULL),(44,'Handmade Concrete Gloves','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/transport',812.96,18,6,'2021-03-14 03:16:16',NULL),(45,'Sleek Soft Sausages','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/animals',690.76,11,11,'2021-03-14 03:16:16',NULL),(46,'Tasty Rubber Car','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/abstract',173.11,5,10,'2021-03-14 03:16:16',NULL),(47,'Practical Steel Chicken','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nature',910.04,16,1,'2021-03-14 03:16:16',NULL),(48,'Ergonomic Frozen Keyboard','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/city',654.31,30,8,'2021-03-14 03:16:16',NULL),(49,'Practical Metal Chips','Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support','http://placeimg.com/640/480/business',978.68,17,9,'2021-03-14 03:16:16',NULL),(50,'Small Frozen Sausages','The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J','http://placeimg.com/640/480/animals',235.77,0,11,'2021-03-14 03:16:16',NULL),(51,'Unbranded Fresh Pizza','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/business',207.62,6,1,'2021-03-14 03:16:16',NULL),(52,'Refined Plastic Bacon','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/food',305.02,8,8,'2021-03-14 03:16:16',NULL),(53,'Unbranded Concrete Fish','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/cats',676.57,3,5,'2021-03-14 03:16:16',NULL),(54,'Handcrafted Granite Bacon','The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','http://placeimg.com/640/480/food',822.63,28,8,'2021-03-14 03:16:16',NULL),(55,'Sleek Plastic Computer','Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support','http://placeimg.com/640/480/business',515.46,5,1,'2021-03-14 03:16:16',NULL),(56,'Generic Wooden Computer','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/business',229.46,22,5,'2021-03-14 03:16:16',NULL),(57,'Gorgeous Fresh Cheese','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nightlife',595.04,13,6,'2021-03-14 03:16:16',NULL),(58,'Rustic Rubber Fish','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/abstract',264.72,9,7,'2021-03-14 03:16:16',NULL),(59,'Incredible Steel Ball','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/transport',960.76,5,1,'2021-03-14 03:16:16',NULL),(60,'Awesome Steel Bacon','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nature',121.76,14,11,'2021-03-14 03:16:16',NULL),(61,'Practical Cotton Keyboard','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/nature',978.34,2,11,'2021-03-14 03:16:16',NULL),(62,'Practical Wooden Hat','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/technics',144.59,30,12,'2021-03-14 03:16:16',NULL),(63,'Refined Wooden Shirt','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/animals',102.63,25,5,'2021-03-14 03:16:16',NULL),(64,'Small Steel Towels','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/people',387.44,6,1,'2021-03-14 03:16:16',NULL),(65,'Handcrafted Wooden Chicken','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/people',936.21,28,1,'2021-03-14 03:16:16',NULL),(66,'Incredible Frozen Chips','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/fashion',865.51,1,11,'2021-03-14 03:16:16',NULL),(67,'Handcrafted Metal Keyboard','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/transport',602.88,23,4,'2021-03-14 03:16:16',NULL),(68,'Sleek Cotton Shoes','The Football Is Good For Training And Recreational Purposes','http://placeimg.com/640/480/transport',522.43,23,9,'2021-03-14 03:16:16',NULL),(69,'Practical Soft Soap','The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','http://placeimg.com/640/480/abstract',938.09,24,4,'2021-03-14 03:16:16',NULL),(70,'Fantastic Cotton Keyboard','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/fashion',131.79,13,7,'2021-03-14 03:16:16',NULL),(71,'Fantastic Granite Salad','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/food',245.59,6,4,'2021-03-14 03:16:16',NULL),(72,'Licensed Steel Keyboard','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/technics',338.28,28,6,'2021-03-14 03:16:16',NULL),(73,'Tasty Metal Pizza','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/nightlife',115.89,14,11,'2021-03-14 03:16:16',NULL),(74,'Unbranded Frozen Bacon','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/transport',272.66,20,9,'2021-03-14 03:16:16',NULL),(75,'Unbranded Soft Sausages','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/people',911.99,25,2,'2021-03-14 03:16:16',NULL),(76,'Handcrafted Fresh Chicken','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/nature',233.19,30,3,'2021-03-14 03:16:16',NULL),(77,'Handmade Cotton Chips','The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','http://placeimg.com/640/480/fashion',321.91,13,10,'2021-03-14 03:16:16',NULL),(78,'Unbranded Concrete Chicken','Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support','http://placeimg.com/640/480/abstract',253.06,19,12,'2021-03-14 03:16:16',NULL),(79,'Tasty Fresh Soap','The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J','http://placeimg.com/640/480/transport',697.32,6,10,'2021-03-14 03:16:16',NULL),(80,'Fantastic Steel Tuna','The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','http://placeimg.com/640/480/fashion',814.46,27,4,'2021-03-14 03:16:16',NULL),(81,'Gorgeous Concrete Pizza','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/nightlife',324.91,24,4,'2021-03-14 03:16:16',NULL),(82,'Refined Rubber Car','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nature',816.52,19,5,'2021-03-14 03:16:16',NULL),(83,'Practical Plastic Shoes','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nature',692.80,1,5,'2021-03-14 03:16:16',NULL),(84,'Practical Rubber Chips','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/animals',246.81,26,4,'2021-03-14 03:16:16',NULL),(85,'Unbranded Metal Sausages','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/city',529.11,9,12,'2021-03-14 03:16:16',NULL),(86,'Sleek Metal Shirt','The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J','http://placeimg.com/640/480/abstract',681.96,20,5,'2021-03-14 03:16:16',NULL),(87,'Awesome Steel Table','The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','http://placeimg.com/640/480/nature',203.80,17,1,'2021-03-14 03:16:16',NULL),(88,'Refined Cotton Bike','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/city',717.89,4,5,'2021-03-14 03:16:16',NULL),(89,'Rustic Frozen Bacon','Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','http://placeimg.com/640/480/people',495.29,30,4,'2021-03-14 03:16:16',NULL),(90,'Awesome Steel Soap','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/sports',337.05,6,4,'2021-03-14 03:16:16',NULL),(91,'Licensed Plastic Tuna','Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support','http://placeimg.com/640/480/people',568.45,15,1,'2021-03-14 03:16:16',NULL),(92,'Handcrafted Soft Car','Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','http://placeimg.com/640/480/city',979.92,24,10,'2021-03-14 03:16:16',NULL),(93,'Gorgeous Soft Towels','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/fashion',310.42,23,10,'2021-03-14 03:16:16',NULL),(94,'Practical Frozen Salad','New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','http://placeimg.com/640/480/abstract',995.01,28,11,'2021-03-14 03:16:16',NULL),(95,'Practical Granite Table','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/nightlife',420.81,22,11,'2021-03-14 03:16:16',NULL),(96,'Rustic Granite Sausages','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/fashion',675.10,15,12,'2021-03-14 03:16:16',NULL),(97,'Awesome Cotton Pants','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/city',533.62,8,12,'2021-03-14 03:16:16',NULL),(98,'Fantastic Rubber Soap','New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart','http://placeimg.com/640/480/animals',926.53,4,9,'2021-03-14 03:16:16',NULL),(99,'Handcrafted Frozen Chicken','The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','http://placeimg.com/640/480/sports',610.50,20,3,'2021-03-14 03:16:16',NULL),(100,'Rustic Concrete Tuna','Carbonite web goalkeeper gloves are ergonomically designed to give easy fit','http://placeimg.com/640/480/city',712.76,19,9,'2021-03-14 03:16:16',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20210314010901-create-category.js'),('20210314011023-create-product.js'),('20210314011245-create-user.js'),('20210314011537-create-cart.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tim Ward','test@fullchango.com','$2b$12$ZMh4CiYbRU2zlfmGPXup2OwzE94LSLHTGV79oLHrwi5q9.fCY/4ie','https://s3.amazonaws.com/uifaces/faces/twitter/isnifer/128.jpg','user','2021-03-14 03:16:17',NULL),(2,'Billie Treutel','test@fullchango.com','$2b$12$QnWMW63hYtqLsr2zzFtmG.ED.fBDNLTU9McCgqEUX8WX.akN.WFFi','https://s3.amazonaws.com/uifaces/faces/twitter/tjisousa/128.jpg','user','2021-03-14 03:16:17',NULL),(3,'Marcus Carter','test@fullchango.com','$2b$12$8jW/gZmLucljJarNK.HOLu/3QKgoXYnL9K2crQAgcRhUX0rIgaixW','https://s3.amazonaws.com/uifaces/faces/twitter/bassamology/128.jpg','user','2021-03-14 03:16:17',NULL),(4,'Homer King','test@fullchango.com','$2b$12$4J9.kbOs/c40OePl7KGieOEs6p4xrb.wkg.U0z1XhZ6QSsxMuCpdG','https://s3.amazonaws.com/uifaces/faces/twitter/klefue/128.jpg','user','2021-03-14 03:16:17',NULL),(5,'Margie Treutel I','test@fullchango.com','$2b$12$haLIjMgdSrrKADMsZXpF/ec7js6zrwdqGMprMv9TvcMpDtZjV/rv6','https://s3.amazonaws.com/uifaces/faces/twitter/_pedropinho/128.jpg','user','2021-03-14 03:16:18',NULL),(6,'Elijah Kling','test@fullchango.com','$2b$12$DYzBs2V4Rz8pHPoEiUNK.OhyKpJd8fcfJ/K./aajHNKbI/0b2Fapm','https://s3.amazonaws.com/uifaces/faces/twitter/aaroni/128.jpg','user','2021-03-14 03:16:18',NULL),(7,'Israel McCullough','test@fullchango.com','$2b$12$3tcSFmgz2Xsazra0dxrb2Oomgr4VBDL7mbCCMm4UPvN4JFuA9i4n.','https://s3.amazonaws.com/uifaces/faces/twitter/irae/128.jpg','user','2021-03-14 03:16:18',NULL),(8,'Dr. Rosemary Hudson','test@fullchango.com','$2b$12$SmCkaU/aWX2B2J0lHFnG7e3p2eJ7cakee6JYYoeUjkF6gMxOctxV.','https://s3.amazonaws.com/uifaces/faces/twitter/buryaknick/128.jpg','user','2021-03-14 03:16:18',NULL),(9,'Maryann Nicolas','test@fullchango.com','$2b$12$F4ncOc6XZ4W1ZDZ55uu8ZusP3ngj3Ceo80czQWKQmC/mq3mTUe8qS','https://s3.amazonaws.com/uifaces/faces/twitter/txcx/128.jpg','user','2021-03-14 03:16:19',NULL),(10,'Miss Ruben Bauch','test@fullchango.com','$2b$12$U7Hf6ly/xXdSJ0VNJdvZ0eqD.J/m8CWo6vVItfxmDlo0dWfkQF/ea','https://s3.amazonaws.com/uifaces/faces/twitter/karthipanraj/128.jpg','user','2021-03-14 03:16:19',NULL),(11,'Jesse Marks','test@fullchango.com','$2b$12$/AlAK/ZjXdKM//zZgI3YbeXkTU0qc/EHFU/B2UTmUPu0W51nAcn/q','https://s3.amazonaws.com/uifaces/faces/twitter/nellleo/128.jpg','user','2021-03-14 03:16:19',NULL),(12,'Thelma Romaguera','test@fullchango.com','$2b$12$XcEysOixSJ5RY.qVTqCDL.5OshE1s/KDCDm13V40KRGMnzg6BR9Fe','https://s3.amazonaws.com/uifaces/faces/twitter/madebybrenton/128.jpg','user','2021-03-14 03:16:19',NULL),(13,'Norma Ortiz','test@fullchango.com','$2b$12$gHuBMNl.3/rFW3AimwlLdOItUPtITsVzZrGZXdCC9Pwo2ctfrs40u','https://s3.amazonaws.com/uifaces/faces/twitter/solid_color/128.jpg','user','2021-03-14 03:16:20',NULL),(14,'Brandi Sipes','test@fullchango.com','$2b$12$JWrMCH1fzvTQQZH8MeKxvO5KBvbWUXGfrk6jSFW7xYWRfce70Xbmq','https://s3.amazonaws.com/uifaces/faces/twitter/ovall/128.jpg','user','2021-03-14 03:16:20',NULL),(15,'Arturo Mills','test@fullchango.com','$2b$12$.vkRSEm75w957bgzwTO1ReFpwV09Q1z7ER9k4dlc74uh7ZmUzgEQ2','https://s3.amazonaws.com/uifaces/faces/twitter/stephcoue/128.jpg','user','2021-03-14 03:16:20',NULL),(16,'Julius Bruen','test@fullchango.com','$2b$12$JgAII.150ulxkqNFHr3D/uNNQdq9YwH04swxBghGOe8TArGf0AN7m','https://s3.amazonaws.com/uifaces/faces/twitter/nellleo/128.jpg','user','2021-03-14 03:16:21',NULL),(17,'Miss Gary Kiehn','test@fullchango.com','$2b$12$AUVdykJTD60R1qDRTWaNrOLesY7FbpllXu7cpdEa56fHOnKUSUVKu','https://s3.amazonaws.com/uifaces/faces/twitter/nutzumi/128.jpg','user','2021-03-14 03:16:21',NULL),(18,'Misty Stehr MD','test@fullchango.com','$2b$12$5XuMZmL1S.su0/H5ZmnJPOkymNRcvjYRnD2xwF/zsRHtiB2ijPxMy','https://s3.amazonaws.com/uifaces/faces/twitter/falconerie/128.jpg','user','2021-03-14 03:16:21',NULL),(19,'Rick Gleichner','test@fullchango.com','$2b$12$ddkGkoKy6.SbC58Fp/Vpi.YAFOQJJviuJBNNxVB1ZneqsymQj0.XO','https://s3.amazonaws.com/uifaces/faces/twitter/dc_user/128.jpg','user','2021-03-14 03:16:21',NULL),(20,'Dr. Ralph Dach','test@fullchango.com','$2b$12$R6rCSiTnJRfJen4s2n8Z0Oq9oIM07D1OI0Au.50m3SOM35B5rVQ/m','https://s3.amazonaws.com/uifaces/faces/twitter/joeymurdah/128.jpg','user','2021-03-14 03:16:22',NULL),(21,'Admin','admin@fullchango.com','$2b$12$MUWA8n/L4uCzcAlcdzBvR.M8oLcZIY2K2a5zI3nEulnvGi4f7b8t2','https://s3.amazonaws.com/uifaces/faces/twitter/stevedesigner/128.jpg','admin','2021-03-14 03:16:22',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 11:12:18
