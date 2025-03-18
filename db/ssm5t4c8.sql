-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm5t4c8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm5t4c8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm5t4c8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm5t4c8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshi`
--

DROP TABLE IF EXISTS `laoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `suoshuyuanxi` varchar(200) DEFAULT NULL COMMENT '所属院系',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `gerentouxiang` varchar(200) DEFAULT NULL COMMENT '个人头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='老师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshi`
--

LOCK TABLES `laoshi` WRITE;
/*!40000 ALTER TABLE `laoshi` DISABLE KEYS */;
INSERT INTO `laoshi` VALUES (21,'2021-04-27 09:15:27','老师1','123456','老师姓名1','男','所属院系1','13823888881','http://localhost:8080/ssm5t4c8/upload/laoshi_gerentouxiang1.jpg'),(22,'2021-04-27 09:15:27','老师2','123456','老师姓名2','男','所属院系2','13823888882','http://localhost:8080/ssm5t4c8/upload/laoshi_gerentouxiang2.jpg'),(23,'2021-04-27 09:15:27','老师3','123456','老师姓名3','男','所属院系3','13823888883','http://localhost:8080/ssm5t4c8/upload/laoshi_gerentouxiang3.jpg'),(24,'2021-04-27 09:15:27','老师4','123456','老师姓名4','男','所属院系4','13823888884','http://localhost:8080/ssm5t4c8/upload/laoshi_gerentouxiang4.jpg'),(25,'2021-04-27 09:15:27','老师5','123456','老师姓名5','男','所属院系5','13823888885','http://localhost:8080/ssm5t4c8/upload/laoshi_gerentouxiang5.jpg'),(26,'2021-04-27 09:15:27','老师6','123456','老师姓名6','男','所属院系6','13823888886','http://localhost:8080/ssm5t4c8/upload/laoshi_gerentouxiang6.jpg');
/*!40000 ALTER TABLE `laoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','tlzj5313b8lda4eidlcye1xiqau94y83','2021-04-27 09:17:04','2021-04-27 10:17:05');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-27 09:15:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxibanji` varchar(200) DEFAULT NULL COMMENT '院系班级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gerentouxiang` varchar(200) DEFAULT NULL COMMENT '个人头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-04-27 09:15:27','学生1','123456','学生姓名1','男','院系班级1','13823888881','http://localhost:8080/ssm5t4c8/upload/xuesheng_gerentouxiang1.jpg'),(12,'2021-04-27 09:15:27','学生2','123456','学生姓名2','男','院系班级2','13823888882','http://localhost:8080/ssm5t4c8/upload/xuesheng_gerentouxiang2.jpg'),(13,'2021-04-27 09:15:27','学生3','123456','学生姓名3','男','院系班级3','13823888883','http://localhost:8080/ssm5t4c8/upload/xuesheng_gerentouxiang3.jpg'),(14,'2021-04-27 09:15:27','学生4','123456','学生姓名4','男','院系班级4','13823888884','http://localhost:8080/ssm5t4c8/upload/xuesheng_gerentouxiang4.jpg'),(15,'2021-04-27 09:15:27','学生5','123456','学生姓名5','男','院系班级5','13823888885','http://localhost:8080/ssm5t4c8/upload/xuesheng_gerentouxiang5.jpg'),(16,'2021-04-27 09:15:27','学生6','123456','学生姓名6','男','院系班级6','13823888886','http://localhost:8080/ssm5t4c8/upload/xuesheng_gerentouxiang6.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyepigai`
--

DROP TABLE IF EXISTS `zuoyepigai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyepigai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `suoshukemu` varchar(200) DEFAULT NULL COMMENT '所属科目',
  `xueshengzuoye` varchar(200) DEFAULT NULL COMMENT '学生作业',
  `pingfen` int(11) NOT NULL COMMENT '评分',
  `pingyu` longtext COMMENT '评语',
  `pigairiqi` datetime DEFAULT NULL COMMENT '批改日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuanxibanji` varchar(200) DEFAULT NULL COMMENT '院系班级',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='作业批改';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyepigai`
--

LOCK TABLES `zuoyepigai` WRITE;
/*!40000 ALTER TABLE `zuoyepigai` DISABLE KEYS */;
INSERT INTO `zuoyepigai` VALUES (51,'2021-04-27 09:15:27','作业名称1','所属科目1','',1,'评语1','2021-04-27 17:15:27','学号1','学生姓名1','院系班级1','工号1','老师姓名1'),(52,'2021-04-27 09:15:27','作业名称2','所属科目2','',2,'评语2','2021-04-27 17:15:27','学号2','学生姓名2','院系班级2','工号2','老师姓名2'),(53,'2021-04-27 09:15:27','作业名称3','所属科目3','',3,'评语3','2021-04-27 17:15:27','学号3','学生姓名3','院系班级3','工号3','老师姓名3'),(54,'2021-04-27 09:15:27','作业名称4','所属科目4','',4,'评语4','2021-04-27 17:15:27','学号4','学生姓名4','院系班级4','工号4','老师姓名4'),(55,'2021-04-27 09:15:27','作业名称5','所属科目5','',5,'评语5','2021-04-27 17:15:27','学号5','学生姓名5','院系班级5','工号5','老师姓名5'),(56,'2021-04-27 09:15:27','作业名称6','所属科目6','',6,'评语6','2021-04-27 17:15:27','学号6','学生姓名6','院系班级6','工号6','老师姓名6');
/*!40000 ALTER TABLE `zuoyepigai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyetijiao`
--

DROP TABLE IF EXISTS `zuoyetijiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `suoshukemu` varchar(200) DEFAULT NULL COMMENT '所属科目',
  `xueshengzuoye` varchar(200) DEFAULT NULL COMMENT '学生作业',
  `tijiaoriqi` datetime DEFAULT NULL COMMENT '提交日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuanxibanji` varchar(200) DEFAULT NULL COMMENT '院系班级',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='作业提交';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyetijiao`
--

LOCK TABLES `zuoyetijiao` WRITE;
/*!40000 ALTER TABLE `zuoyetijiao` DISABLE KEYS */;
INSERT INTO `zuoyetijiao` VALUES (41,'2021-04-27 09:15:27','作业名称1','所属科目1','','2021-04-27 17:15:27','学号1','学生姓名1','院系班级1','工号1','老师姓名1'),(42,'2021-04-27 09:15:27','作业名称2','所属科目2','','2021-04-27 17:15:27','学号2','学生姓名2','院系班级2','工号2','老师姓名2'),(43,'2021-04-27 09:15:27','作业名称3','所属科目3','','2021-04-27 17:15:27','学号3','学生姓名3','院系班级3','工号3','老师姓名3'),(44,'2021-04-27 09:15:27','作业名称4','所属科目4','','2021-04-27 17:15:27','学号4','学生姓名4','院系班级4','工号4','老师姓名4'),(45,'2021-04-27 09:15:27','作业名称5','所属科目5','','2021-04-27 17:15:27','学号5','学生姓名5','院系班级5','工号5','老师姓名5'),(46,'2021-04-27 09:15:27','作业名称6','所属科目6','','2021-04-27 17:15:27','学号6','学生姓名6','院系班级6','工号6','老师姓名6');
/*!40000 ALTER TABLE `zuoyetijiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyexinxi`
--

DROP TABLE IF EXISTS `zuoyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) NOT NULL COMMENT '作业名称',
  `suoshukemu` varchar(200) DEFAULT NULL COMMENT '所属科目',
  `zuoyewenjian` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `wanchengriqi` datetime DEFAULT NULL COMMENT '完成日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='作业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyexinxi`
--

LOCK TABLES `zuoyexinxi` WRITE;
/*!40000 ALTER TABLE `zuoyexinxi` DISABLE KEYS */;
INSERT INTO `zuoyexinxi` VALUES (31,'2021-04-27 09:15:27','作业名称1','所属科目1','','2021-04-27 17:15:27','2021-04-27 17:15:27','工号1','老师姓名1'),(32,'2021-04-27 09:15:27','作业名称2','所属科目2','','2021-04-27 17:15:27','2021-04-27 17:15:27','工号2','老师姓名2'),(33,'2021-04-27 09:15:27','作业名称3','所属科目3','','2021-04-27 17:15:27','2021-04-27 17:15:27','工号3','老师姓名3'),(34,'2021-04-27 09:15:27','作业名称4','所属科目4','','2021-04-27 17:15:27','2021-04-27 17:15:27','工号4','老师姓名4'),(35,'2021-04-27 09:15:27','作业名称5','所属科目5','','2021-04-27 17:15:27','2021-04-27 17:15:27','工号5','老师姓名5'),(36,'2021-04-27 09:15:27','作业名称6','所属科目6','','2021-04-27 17:15:27','2021-04-27 17:15:27','工号6','老师姓名6');
/*!40000 ALTER TABLE `zuoyexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 15:10:29
