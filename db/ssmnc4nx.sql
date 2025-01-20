-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmnc4nx
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
-- Current Database: `ssmnc4nx`
--

/*!40000 DROP DATABASE IF EXISTS `ssmnc4nx`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmnc4nx` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmnc4nx`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (51,'2022-03-28 11:34:08','班级1'),(52,'2022-03-28 11:34:08','班级2'),(53,'2022-03-28 11:34:08','班级3'),(54,'2022-03-28 11:34:08','班级4'),(55,'2022-03-28 11:34:08','班级5'),(56,'2022-03-28 11:34:08','班级6');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (61,'2022-03-28 11:34:08','教师工号1','123456','教师姓名1','男','院系1','专业1','职称1','13823888881','773890001@qq.com'),(62,'2022-03-28 11:34:08','教师工号2','123456','教师姓名2','男','院系2','专业2','职称2','13823888882','773890002@qq.com'),(63,'2022-03-28 11:34:08','教师工号3','123456','教师姓名3','男','院系3','专业3','职称3','13823888883','773890003@qq.com'),(64,'2022-03-28 11:34:08','教师工号4','123456','教师姓名4','男','院系4','专业4','职称4','13823888884','773890004@qq.com'),(65,'2022-03-28 11:34:08','教师工号5','123456','教师姓名5','男','院系5','专业5','职称5','13823888885','773890005@qq.com'),(66,'2022-03-28 11:34:08','教师工号6','123456','教师姓名6','男','院系6','专业6','职称6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshiziping`
--

DROP TABLE IF EXISTS `jiaoshiziping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshiziping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `quweixing` varchar(200) NOT NULL COMMENT '趣味性',
  `hudongxing` varchar(200) NOT NULL COMMENT '互动性',
  `kechengpingfen` int(11) NOT NULL COMMENT '课程评分',
  `zongtipingjia` varchar(200) NOT NULL COMMENT '总体评价',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='教师自评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshiziping`
--

LOCK TABLES `jiaoshiziping` WRITE;
/*!40000 ALTER TABLE `jiaoshiziping` DISABLE KEYS */;
INSERT INTO `jiaoshiziping` VALUES (101,'2022-03-28 11:34:08','课程1','1','1',1,'优秀','评价内容1','2022-03-28','教师工号1',1,1),(102,'2022-03-28 11:34:08','课程2','1','1',2,'优秀','评价内容2','2022-03-28','教师工号2',2,2),(103,'2022-03-28 11:34:08','课程3','1','1',3,'优秀','评价内容3','2022-03-28','教师工号3',3,3),(104,'2022-03-28 11:34:08','课程4','1','1',4,'优秀','评价内容4','2022-03-28','教师工号4',4,4),(105,'2022-03-28 11:34:08','课程5','1','1',5,'优秀','评价内容5','2022-03-28','教师工号5',5,5),(106,'2022-03-28 11:34:08','课程6','1','1',6,'优秀','评价内容6','2022-03-28','教师工号6',6,6);
/*!40000 ALTER TABLE `jiaoshiziping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecheng`
--

DROP TABLE IF EXISTS `kecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kecheng` varchar(200) NOT NULL COMMENT '课程',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kecheng` (`kecheng`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecheng`
--

LOCK TABLES `kecheng` WRITE;
/*!40000 ALTER TABLE `kecheng` DISABLE KEYS */;
INSERT INTO `kecheng` VALUES (21,'2022-03-28 11:34:08','课程1'),(22,'2022-03-28 11:34:08','课程2'),(23,'2022-03-28 11:34:08','课程3'),(24,'2022-03-28 11:34:08','课程4'),(25,'2022-03-28 11:34:08','课程5'),(26,'2022-03-28 11:34:08','课程6');
/*!40000 ALTER TABLE `kecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaoxuedagang` varchar(200) DEFAULT NULL COMMENT '教学大纲',
  `kechengjindu` varchar(200) DEFAULT NULL COMMENT '课程进度',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (91,'2022-03-28 11:34:08','名称1','课程1','班级1','upload/kechengxinxi_kechengtupian1.jpg','教学大纲1','进行中','','课程详情1','教师工号1','教师姓名1','13823888881'),(92,'2022-03-28 11:34:08','名称2','课程2','班级2','upload/kechengxinxi_kechengtupian2.jpg','教学大纲2','进行中','','课程详情2','教师工号2','教师姓名2','13823888882'),(93,'2022-03-28 11:34:08','名称3','课程3','班级3','upload/kechengxinxi_kechengtupian3.jpg','教学大纲3','进行中','','课程详情3','教师工号3','教师姓名3','13823888883'),(94,'2022-03-28 11:34:08','名称4','课程4','班级4','upload/kechengxinxi_kechengtupian4.jpg','教学大纲4','进行中','','课程详情4','教师工号4','教师姓名4','13823888884'),(95,'2022-03-28 11:34:08','名称5','课程5','班级5','upload/kechengxinxi_kechengtupian5.jpg','教学大纲5','进行中','','课程详情5','教师工号5','教师姓名5','13823888885'),(96,'2022-03-28 11:34:08','名称6','课程6','班级6','upload/kechengxinxi_kechengtupian6.jpg','教学大纲6','进行中','','课程详情6','教师工号6','教师姓名6','13823888886');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,61,'教师工号1','jiaoshi','管理员','vpmgcrg9serfzovx026ga0ovj86o5kox','2022-03-28 11:37:49','2022-03-28 12:37:50');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-28 11:34:08');
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
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (81,'2022-03-28 11:34:08','学号1','123456','姓名1','男','13823888881','院系1','专业1','班级1','773890001@qq.com'),(82,'2022-03-28 11:34:08','学号2','123456','姓名2','男','13823888882','院系2','专业2','班级2','773890002@qq.com'),(83,'2022-03-28 11:34:08','学号3','123456','姓名3','男','13823888883','院系3','专业3','班级3','773890003@qq.com'),(84,'2022-03-28 11:34:08','学号4','123456','姓名4','男','13823888884','院系4','专业4','班级4','773890004@qq.com'),(85,'2022-03-28 11:34:08','学号5','123456','姓名5','男','13823888885','院系5','专业5','班级5','773890005@qq.com'),(86,'2022-03-28 11:34:08','学号6','123456','姓名6','男','13823888886','院系6','专业6','班级6','773890006@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengpingjia`
--

DROP TABLE IF EXISTS `xueshengpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoxuenengli` varchar(200) NOT NULL COMMENT '教学能力',
  `jiaoxuexiaoguo` varchar(200) NOT NULL COMMENT '教学效果',
  `quweixing` varchar(200) NOT NULL COMMENT '趣味性',
  `hudongxing` varchar(200) NOT NULL COMMENT '互动性',
  `jiaoxuepingfen` int(11) NOT NULL COMMENT '教学评分',
  `jiaoxuepingji` varchar(200) NOT NULL COMMENT '教学评级',
  `jiaoxuepingjia` longtext COMMENT '教学评价',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='学生评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengpingjia`
--

LOCK TABLES `xueshengpingjia` WRITE;
/*!40000 ALTER TABLE `xueshengpingjia` DISABLE KEYS */;
INSERT INTO `xueshengpingjia` VALUES (121,'2022-03-28 11:34:08','课程1','班级1','1','1','1','1',1,'优秀','教学评价1','教师工号1','学号1','姓名1',1,1),(122,'2022-03-28 11:34:08','课程2','班级2','1','1','1','1',2,'优秀','教学评价2','教师工号2','学号2','姓名2',2,2),(123,'2022-03-28 11:34:08','课程3','班级3','1','1','1','1',3,'优秀','教学评价3','教师工号3','学号3','姓名3',3,3),(124,'2022-03-28 11:34:08','课程4','班级4','1','1','1','1',4,'优秀','教学评价4','教师工号4','学号4','姓名4',4,4),(125,'2022-03-28 11:34:08','课程5','班级5','1','1','1','1',5,'优秀','教学评价5','教师工号5','学号5','姓名5',5,5),(126,'2022-03-28 11:34:08','课程6','班级6','1','1','1','1',6,'优秀','教学评价6','教师工号6','学号6','姓名6',6,6);
/*!40000 ALTER TABLE `xueshengpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuanxi`
--

DROP TABLE IF EXISTS `yuanxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuanxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxi` varchar(200) NOT NULL COMMENT '院系',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanxi` (`yuanxi`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='院系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuanxi`
--

LOCK TABLES `yuanxi` WRITE;
/*!40000 ALTER TABLE `yuanxi` DISABLE KEYS */;
INSERT INTO `yuanxi` VALUES (31,'2022-03-28 11:34:08','院系1'),(32,'2022-03-28 11:34:08','院系2'),(33,'2022-03-28 11:34:08','院系3'),(34,'2022-03-28 11:34:08','院系4'),(35,'2022-03-28 11:34:08','院系5'),(36,'2022-03-28 11:34:08','院系6');
/*!40000 ALTER TABLE `yuanxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhibiaoxinxi`
--

DROP TABLE IF EXISTS `zhibiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhibiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhibiaohao` varchar(200) DEFAULT NULL COMMENT '指标号',
  `zhibiaomingcheng` varchar(200) DEFAULT NULL COMMENT '指标名称',
  `zhibiaoquanzhong` varchar(200) DEFAULT NULL COMMENT '指标权重',
  `zhibiaoneirong` longtext COMMENT '指标内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhibiaohao` (`zhibiaohao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='指标信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhibiaoxinxi`
--

LOCK TABLES `zhibiaoxinxi` WRITE;
/*!40000 ALTER TABLE `zhibiaoxinxi` DISABLE KEYS */;
INSERT INTO `zhibiaoxinxi` VALUES (11,'2022-03-28 11:34:08','1111111111','指标名称1','指标权重1','指标内容1'),(12,'2022-03-28 11:34:08','2222222222','指标名称2','指标权重2','指标内容2'),(13,'2022-03-28 11:34:08','3333333333','指标名称3','指标权重3','指标内容3'),(14,'2022-03-28 11:34:08','4444444444','指标名称4','指标权重4','指标内容4'),(15,'2022-03-28 11:34:08','5555555555','指标名称5','指标权重5','指标内容5'),(16,'2022-03-28 11:34:08','6666666666','指标名称6','指标权重6','指标内容6');
/*!40000 ALTER TABLE `zhibiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanjia`
--

DROP TABLE IF EXISTS `zhuanjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanjiazhanghao` varchar(200) NOT NULL COMMENT '专家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanjiazhanghao` (`zhuanjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='专家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanjia`
--

LOCK TABLES `zhuanjia` WRITE;
/*!40000 ALTER TABLE `zhuanjia` DISABLE KEYS */;
INSERT INTO `zhuanjia` VALUES (71,'2022-03-28 11:34:08','专家账号1','123456','专家姓名1','男','职称1','13823888881'),(72,'2022-03-28 11:34:08','专家账号2','123456','专家姓名2','男','职称2','13823888882'),(73,'2022-03-28 11:34:08','专家账号3','123456','专家姓名3','男','职称3','13823888883'),(74,'2022-03-28 11:34:08','专家账号4','123456','专家姓名4','男','职称4','13823888884'),(75,'2022-03-28 11:34:08','专家账号5','123456','专家姓名5','男','职称5','13823888885'),(76,'2022-03-28 11:34:08','专家账号6','123456','专家姓名6','男','职称6','13823888886');
/*!40000 ALTER TABLE `zhuanjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanjiapingjia`
--

DROP TABLE IF EXISTS `zhuanjiapingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanjiapingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `jiaoxuenengli` varchar(200) NOT NULL COMMENT '教学能力',
  `jiaoxuexiaoguo` varchar(200) NOT NULL COMMENT '教学效果',
  `xueshengzhuangtai` varchar(200) NOT NULL COMMENT '学生状态',
  `jiaoxuepingfen` int(11) NOT NULL COMMENT '教学评分',
  `jiaoxuepingji` varchar(200) NOT NULL COMMENT '教学评级',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `zhuanjiazhanghao` varchar(200) DEFAULT NULL COMMENT '专家账号',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='专家评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanjiapingjia`
--

LOCK TABLES `zhuanjiapingjia` WRITE;
/*!40000 ALTER TABLE `zhuanjiapingjia` DISABLE KEYS */;
INSERT INTO `zhuanjiapingjia` VALUES (111,'2022-03-28 11:34:08','课程1','1','1','1',1,'优秀','评价内容1','教师工号1','教师姓名1','2022-03-28','专家账号1','专家姓名1',1,1),(112,'2022-03-28 11:34:08','课程2','1','1','1',2,'优秀','评价内容2','教师工号2','教师姓名2','2022-03-28','专家账号2','专家姓名2',2,2),(113,'2022-03-28 11:34:08','课程3','1','1','1',3,'优秀','评价内容3','教师工号3','教师姓名3','2022-03-28','专家账号3','专家姓名3',3,3),(114,'2022-03-28 11:34:08','课程4','1','1','1',4,'优秀','评价内容4','教师工号4','教师姓名4','2022-03-28','专家账号4','专家姓名4',4,4),(115,'2022-03-28 11:34:08','课程5','1','1','1',5,'优秀','评价内容5','教师工号5','教师姓名5','2022-03-28','专家账号5','专家姓名5',5,5),(116,'2022-03-28 11:34:08','课程6','1','1','1',6,'优秀','评价内容6','教师工号6','教师姓名6','2022-03-28','专家账号6','专家姓名6',6,6);
/*!40000 ALTER TABLE `zhuanjiapingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanye`
--

DROP TABLE IF EXISTS `zhuanye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanye` (`zhuanye`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanye`
--

LOCK TABLES `zhuanye` WRITE;
/*!40000 ALTER TABLE `zhuanye` DISABLE KEYS */;
INSERT INTO `zhuanye` VALUES (41,'2022-03-28 11:34:08','专业1'),(42,'2022-03-28 11:34:08','专业2'),(43,'2022-03-28 11:34:08','专业3'),(44,'2022-03-28 11:34:08','专业4'),(45,'2022-03-28 11:34:08','专业5'),(46,'2022-03-28 11:34:08','专业6');
/*!40000 ALTER TABLE `zhuanye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 21:20:45
