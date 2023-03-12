-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prime_holding_crud_assignment
-- ------------------------------------------------------
-- Server version	8.0.32
DROP SCHEMA IF EXISTS `prime_holding_crud_assignment` ;

-- -----------------------------------------------------
-- Schema prime_holding_crud_assignment
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prime_holding_crud_assignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `prime_holding_crud_assignment` ;

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jacky Koch','jacky.koch@example.org','+381312423652','1997-04-12',1786.55),
(2,'Russell Schmitt','russell.schmitt@example.org','+381312423653','1930-12-03',1286.85),
(3,'Hulda Torp','hulda.torp@example.net','+381312423654','1960-01-25',998.23),
(4,'Jany Walsh','jany.walsh@example.org','+381312423655','1996-09-18',521.49),
(5,'Keegan Quitzon','america.mayert@example.com','+381312423656','1999-05-12',323.30),
(6,'Ignacio Herzog','ignacio.herzog@example.com','+381312423657','1989-09-09',119.26),
(7,'Shayna Simonis','shayna.simonis@example.com','+381312423658','1988-07-07',6910.03),
(8,'Sienna Maggio','sienna.maggio@example.net','+381312423659','2004-05-19',999.99),
(9,'Nikola Stankov','nikola.stankov13@gmail.com','+381655456583','1997-05-13',5325.24),
(10,'Steven Micheal','steven.michael@gmail.com','+381312423660','1997-05-13',223),
(11,'John Doe','john.doe@gmail.com','+381655456561','1997-05-13',1234),
(12,'Jane Doe','jane.doe@gmail.com','+381655456562','1997-05-13',23123),
(13,'Dummy Dummyst','dummy.dummyst@gmail.com','+381655456563','1997-05-13',2223),
(14,'Elizabeth James','elizabeth.james@gmail.com','+381655456564','1997-05-13',765),
(15,'Mary Public','mary.public@gmail.com','+381655456565','1997-05-13',543),
(16,'Chad Insrt','chad.insrt@gmail.com','+381655456566','1997-05-13',867);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_feedback`
--

DROP TABLE IF EXISTS `employee_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `positive_description` varchar(255) NOT NULL,
  `negative_description` varchar(255) NOT NULL,
  `assigneeF_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_EmployeeFeedback` (`assigneeF_id`),
  CONSTRAINT `FK_EmployeeFeedback` FOREIGN KEY (`assigneeF_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_feedback`
--

LOCK TABLES `employee_feedback` WRITE;
/*!40000 ALTER TABLE `employee_feedback` DISABLE KEYS */;
INSERT INTO `employee_feedback` VALUES (1,'Test Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries','placerat nulla at lorem euismod, nec tristique enim molestie. Vivamus id ligula tortor. Cras est ante, scelerisque a tortor',1),
(2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu enim malesuada, lobortis quam at, malesuada augue. Aliquam varius maximus sem eget tristique',' Praesent non felis ac nisi auctor ultrices. Duis vitae egestas nulla. Aliquam placerat nulla at lorem',2),
(3,'Aliquam est nulla, porttitor ut felis eget, feugiat elementum purus. Nullam mollis consequat purus, ut posuere nisl ultricies ut',' euismod, nec tristique enim molestie. Vivamus id ligula tortor. Cras est ante, scelerisque a tortor vel',3),
(4,'Cras sollicitudin ultricies sem a convallis. Sed porta commodo laoreet. Praesent ut justo facilisis odio venenatis ultrices ut ut lorem',' Lorem ut mi ullamcorper malesuada. Mauris sed pellentesque libero, at ullamcorper neque. Pellentesque tempus lacinia',4),
(5,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it',' Commodo. Integer tristique consequat feugiat. Vivamus faucibus dapibus risus dapibus semper. Nam hendrerit',5),
(6,'Vestibulum pulvinar aliquam rhoncus. Quisque auctor mi at dolor rhoncus, ac rutrum dui elementum. Praesent elit libero, venenatis id sem a',' Leo vulputate sollicitudin. Ut porta purus et blandit egestas',6),
(7,'Vehicula ultrices ex. Suspendisse elementum suscipit iaculis. Vivamus dignissim, massa et dapibus pellentesque, neque ligula ullamcorper',' Curabitur purus sapien, lacinia non dui ac, porta tristique mauris. Donec',7),
(8,'Leo, sit amet venenatis metus diam ut mi. Mauris ultricies bibendum volutpat.',' From a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable',8);
/*!40000 ALTER TABLE `employee_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--
 
DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `assignee_id` int DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_EmployeeTask` (`assignee_id`),
  CONSTRAINT `FK_EmployeeTask` FOREIGN KEY (`assignee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Title 1','Es1t possimus quod beatae nihil perspiciatis amet voluptatem tempore. Quod et omnis qui in. Est vero dolorem et mollitia qui illo. Soluta soluta dolorem quia omnis harum.',9,'2023-02-26'),
(2,'Title 2','Consequatur blanditiis pariatur veritatis ut. Aut cum illo quia facere amet vel ex. Nesciunt voluptatum repellat consequatur veritatis. Quia ratione quia laborum voluptatem. Corrupti illum dignissimos quidem doloribus voluptate ullam iste.',9,'2023-10-12'),
(3,'Title 3','Et accusantium dolor porro. Perferendis nihil aspernatur iste est. Nostrum dolores natus iusto aut animi.',9,'2023-02-27'),
(4,'Title 4','Odit provident explicabo necessitatibus et veritatis. Qui iste eaque doloribus molestiae temporibus quo. Incidunt aut autem dolores asperiores.',9,'2023-02-26'),
(5,'Title 5','Quia suscipit sunt totam laudantium. Minus alias consequatur debitis nisi quidem commodi iusto. Perferendis non sed exercitationem. Asperiores est perspiciatis illo quaerat.',9,'2023-02-25'),
(6,'Title 6','Inventore libero voluptas consectetur eos ea quia quia. Rerum debitis quisquam ullam maiores commodi. Culpa neque ad voluptas adipisci. Fugit ullam quaerat et numquam.',7,'2023-02-24'),
(7,'Title 7','Sed nulla ea unde et. Quia asperiores ipsa in ratione. Debitis nihil reiciendis optio cupiditate in corporis.',7,'2023-02-28'),
(8,'Title 8','Aut magni tempora harum eum animi quia tempore ut. Dolorem voluptates velit nesciunt esse temporibus. Dolorum asperiores reprehenderit facere ex id rerum. Et facere pariatur ullam eum voluptatibus consequatur vel.',7,'2023-02-27'),
(9,'Title 9','Magnam aliquam sint nemo facere rerum sit. Aliquam rerum cum similique quia optio sequi. Voluptas sed omnis laboriosam aliquid voluptates voluptas fugiat rerum.',7,'2023-02-27'),
(10,'Title 10','Aut cum adipisci repudiandae delectus veniam quasi. Tempora doloribus in eaque voluptas expedita et. Inventore dolorem dolorum quae et. Ex sit sed dignissimos veniam corrupti porro.',10,'2023-02-28'),
(11,'Title 11','Nihil expedita voluptatem occaecati natus porro velit. Cupiditate voluptatibus est magnam est voluptas vitae. Nam enim perferendis sapiente consequatur qui qui vel.',10,'2023-02-28'),
(12,'Title 12','Est eveniet sint non nam occaecati. Ut natus nobis est quibusdam. Quisquam reiciendis quod distinctio illo.',10,'2023-02-27'),
(13,'Title 13','Repudiandae excepturi ducimus tempora esse occaecati et. Perferendis enim iste voluptas dignissimos. Unde at saepe omnis maiores deleniti sit est. Et provident consequatur natus nisi rem explicabo.',5,'2023-02-22'),
(14,'Title 14','Beatae inventore provident quod incidunt voluptatibus. Molestiae sapiente error ipsa incidunt. Commodi recusandae aut dolores temporibus nostrum voluptatem quaerat.',5,'2023-02-27'),
(15,'Title 15','Dolor debitis aut animi sint. Excepturi laborum praesentium ea quia. Adipisci dicta aperiam consectetur saepe eius sint odit facere. Et rem repellendus ea sed qui omnis dolorem.',5,'2023-02-27');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 19:03:58
