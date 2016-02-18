# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.46)
# Database: jeecg-weixin
# Generation Time: 2016-01-10 23:32:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cgform_button
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_button`;

CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `button_icon` varchar(20) DEFAULT NULL,
  `BUTTON_NAME` varchar(50) DEFAULT NULL,
  `BUTTON_STATUS` varchar(2) DEFAULT NULL,
  `BUTTON_STYLE` varchar(20) DEFAULT NULL,
  `EXP` varchar(255) DEFAULT NULL,
  `FORM_ID` varchar(32) DEFAULT NULL,
  `OPT_TYPE` varchar(20) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cgform_button_sql
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_button_sql`;

CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cgform_enhance_js
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_enhance_js`;

CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cgform_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_field`;

CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `dict_field` varchar(100) DEFAULT NULL,
  `dict_table` varchar(100) DEFAULT NULL,
  `dict_text` varchar(100) DEFAULT NULL,
  `field_default` varchar(20) DEFAULT NULL,
  `field_href` varchar(200) DEFAULT NULL,
  `field_length` int(11) DEFAULT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) DEFAULT NULL,
  `is_key` varchar(2) DEFAULT NULL,
  `is_null` varchar(5) DEFAULT NULL,
  `is_query` varchar(5) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT NULL,
  `is_show_list` varchar(5) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) DEFAULT NULL,
  `main_table` varchar(100) DEFAULT NULL,
  `old_field_name` varchar(32) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `point_length` int(11) DEFAULT NULL,
  `query_mode` varchar(10) DEFAULT NULL,
  `show_type` varchar(10) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iwtkke1oigq9ukafldrovslx6` (`table_id`),
  CONSTRAINT `FK_iwtkke1oigq9ukafldrovslx6` FOREIGN KEY (`table_id`) REFERENCES `cgform_head` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cgform_field` WRITE;
/*!40000 ALTER TABLE `cgform_field` DISABLE KEYS */;

INSERT INTO `cgform_field` (`id`, `content`, `create_by`, `create_date`, `create_name`, `dict_field`, `dict_table`, `dict_text`, `field_default`, `field_href`, `field_length`, `field_name`, `field_valid_type`, `is_key`, `is_null`, `is_query`, `is_show`, `is_show_list`, `length`, `main_field`, `main_table`, `old_field_name`, `order_num`, `point_length`, `query_mode`, `show_type`, `type`, `update_by`, `update_date`, `update_name`, `table_id`)
VALUES
	('402880ee511f742501511f7a40ac0001','订单商品ID','4028d881436d514601436d5215ac0043','2015-11-19 19:21:24','admin','','','','','',120,'id_order_goods','','N','Y','N','Y','Y',36,'','','id_order_goods',19,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('402880ee511f742501511f7f0d610003','快递名称','4028d881436d514601436d5215ac0043','2015-11-19 19:26:38','admin','','','','','',120,'express_name','','N','Y','N','Y','Y',100,'','','express_name',20,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('402880ee511f742501511f7f0d630004','运单号','4028d881436d514601436d5215ac0043','2015-11-19 19:26:38','admin','','','','','',120,'express_num','','N','Y','N','Y','Y',36,'','','express_num',21,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('402880ee511f742501511f83341f0009','主键','4028d881436d514601436d5215ac0043','2015-11-19 19:31:11','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f833422000a','创建人名称','4028d881436d514601436d5215ac0043','2015-11-19 19:31:11','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f833424000b','创建日期','4028d881436d514601436d5215ac0043','2015-11-19 19:31:11','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f833426000c','修改人名称','4028d881436d514601436d5215ac0043','2015-11-19 19:31:11','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f833428000d','修改日期','4028d881436d514601436d5215ac0043','2015-11-19 19:31:11','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f850595000f','订单ID','4028d881436d514601436d5215ac0043','2015-11-19 19:33:10','admin','','','','','',120,'id_order','','N','Y','N','Y','Y',36,'','','id_order',6,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f85059c0010','商品ID','4028d881436d514601436d5215ac0043','2015-11-19 19:33:10','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',7,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f897bff0012','原价','4028d881436d514601436d5215ac0043','2015-11-19 19:38:02','admin','','','','','',120,'original_price','','N','Y','N','Y','Y',13,'','','original_price',8,2,'single','text','double',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f897c020013','现价','4028d881436d514601436d5215ac0043','2015-11-19 19:38:02','admin','','','','','',120,'real_price','','N','Y','N','Y','Y',13,'','','real_price',9,2,'single','text','double',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee511f742501511f897c040014','数量','4028d881436d514601436d5215ac0043','2015-11-19 19:38:02','admin','','','','','',120,'count','','N','Y','N','Y','Y',11,'','','count',10,0,'single','text','int',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('402880ee5120024a015120038ad00002','主键','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','','','','','',120,'id','','Y','N','N','N','N',20,'','','id',1,0,'single','text','int',NULL,NULL,NULL,'402880ee5120024a015120038ace0001'),
	('402880ee5120024a015120038add0003','创建人名称','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402880ee5120024a015120038ace0001'),
	('402880ee5120024a015120038ae10004','创建日期','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402880ee5120024a015120038ace0001'),
	('402880ee5120024a015120038ae40005','修改人名称','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402880ee5120024a015120038ace0001'),
	('402880ee5120024a015120038aec0006','修改日期','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402880ee5120024a015120038ace0001'),
	('402880ee5120024a015120038afe0007','rrrr','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','','','','','',120,'qwe','','N','Y','N','Y','Y',13,'','','qwe',6,0,'single','text','string',NULL,NULL,NULL,'402880ee5120024a015120038ace0001'),
	('402880ee51203d6d0151203e849e0001','address','4028d881436d514601436d5215ac0043','2015-11-19 22:55:46','admin','','','','','',120,'address','','N','Y','N','Y','Y',200,'','','address',14,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('402880ee512d184b01512d2449440001','真实姓名','4028d881436d514601436d5215ac0043','2015-11-22 11:02:11','admin','','','','','',120,'real_name','','N','Y','N','Y','Y',32,'','','real_name',15,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('402880ee512d184b01512d24494d0002','手机号','4028d881436d514601436d5215ac0043','2015-11-22 11:02:11','admin','','','','','',120,'phone','','N','Y','N','Y','Y',32,'','','phone',16,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('402880ee512d4cd201512f2b6fb40003','主键','4028d881436d514601436d5215ac0043','2015-11-22 20:29:14','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402880ee512d4cd201512f2b6faf0002'),
	('402880ee512d4cd201512f2b6fea0004','创建人名称','4028d881436d514601436d5215ac0043','2015-11-22 20:29:14','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402880ee512d4cd201512f2b6faf0002'),
	('402880ee512d4cd201512f2b6fec0005','创建日期','4028d881436d514601436d5215ac0043','2015-11-22 20:29:14','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402880ee512d4cd201512f2b6faf0002'),
	('402880ee512d4cd201512f2b6fee0006','修改人名称','4028d881436d514601436d5215ac0043','2015-11-22 20:29:14','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402880ee512d4cd201512f2b6faf0002'),
	('402880ee512d4cd201512f2b6ff10007','修改日期','4028d881436d514601436d5215ac0043','2015-11-22 20:29:14','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402880ee512d4cd201512f2b6faf0002'),
	('402880ee51585a5301515871c3910001','商品图片','4028d881436d514601436d5215ac0043','2015-11-30 20:50:29','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',200,'','','imgurl',12,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('4028813a4fd47208014fd585e2f50030','主键','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd47208014fd585e2ec002f'),
	('4028813a4fd47208014fd585e3160031','创建人名称','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd47208014fd585e2ec002f'),
	('4028813a4fd47208014fd585e3170032','创建日期','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd47208014fd585e2ec002f'),
	('4028813a4fd47208014fd585e3180033','修改人名称','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd47208014fd585e2ec002f'),
	('4028813a4fd47208014fd585e31a0034','修改日期','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd47208014fd585e2ec002f'),
	('4028813a4fd47208014fd585e3200035','测试','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','','','','','',120,'test','','N','Y','Y','Y','Y',32,'','','test',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd47208014fd585e2ec002f'),
	('4028813a4fd59205014fd59936f90002','主键','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd59205014fd59936f70001'),
	('4028813a4fd59205014fd59937080003','创建人名称','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd59205014fd59936f70001'),
	('4028813a4fd59205014fd599370b0004','创建日期','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd59205014fd59936f70001'),
	('4028813a4fd59205014fd599370d0005','修改人名称','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd59205014fd59936f70001'),
	('4028813a4fd59205014fd599370f0006','修改日期','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd59205014fd59936f70001'),
	('4028813a4fd59205014fd59937110007','test','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','','','','','',120,'test','','N','Y','N','Y','Y',32,'','','test',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd59205014fd59936f70001'),
	('4028813a4fd93dd5014fd96c02630003','主键','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c02740004','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c02760005','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c027b0006','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c027d0007','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c027e0008','微信昵称','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'nickname','','N','Y','Y','Y','Y',100,'','','nickname',6,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-17 18:10:16','admin','4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c02800009','微信用户唯一标识','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'openid','','N','Y','N','Y','Y',100,'','','openid',7,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-17 18:10:16','admin','4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c0282000a','头像链接','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'headimgurl','','N','Y','N','Y','Y',200,'','','headimgurl',8,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-24 16:25:21','admin','4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd93dd5014fd96c0283000b','所属公众号ID','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','','','','','',120,'accountid','','N','Y','N','N','N',36,'id','weixin_account','id_account',9,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-21 10:36:38','admin','4028813a4fd93dd5014fd96c02620002'),
	('4028813a4fd9ca45014fd9efcf9f0002','主键','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfad0003','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfae0004','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfe30005','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfe50006','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfe60007','商品名称','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'name','','N','Y','N','Y','Y',200,'','','name',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfe80008','商品图片链接','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',100,'','','img',7,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-17 14:29:00','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfeb0009','商品详情','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'descriptions','','N','Y','N','Y','Y',5000,'','','descriptions',8,0,'single','text','Text',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfed000a','商品原价','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'original_price','','N','Y','N','Y','Y',18,'','','original_price',9,2,'single','text','double',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfee000b','商品现价','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'real_price','','N','Y','N','Y','Y',18,'','','real_price',10,2,'single','text','double',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcff0000c','折扣','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'sale','','N','Y','N','Y','Y',18,'','','sale',11,2,'single','text','double',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcff2000d','销售数量','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'sell_count','','N','Y','N','Y','Y',11,'','','sell_count',12,0,'single','text','int',NULL,NULL,NULL,'4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcff4000e','评价数量','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'discuss_count','','N','Y','N','N','Y',11,'','','discuss_count',13,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-09-17 14:16:21','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcff6000f','好评数量','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'good_count','','N','Y','N','N','Y',11,'','','good_count',14,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-09-17 14:16:21','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcff80010','差评数量','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'bad_count','','N','Y','N','N','Y',11,'','','bad_count',15,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-09-17 14:16:21','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcffa0011','中评数量','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'neutral_count','','N','Y','N','N','Y',11,'','','neutral_count',16,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-09-17 14:16:21','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcffd0012','状态','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'statement','','N','Y','N','N','Y',32,'','','statement',17,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-17 14:16:55','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efcfff0013','上架时间','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'shelve_time','','N','Y','N','N','Y',32,'','','shelve_time',19,0,'single','text','Date','4028d881436d514601436d5215ac0043','2015-09-17 14:48:13','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efd0000014','下架时间','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'remove_time','','N','Y','N','N','Y',32,'','','remove_time',18,0,'single','text','Date','4028d881436d514601436d5215ac0043','2015-09-17 14:48:13','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efd0040016','快递费用','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'express_price','','N','Y','N','Y','Y',18,'','','express_price',20,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-09-17 14:48:13','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fd9efd0060017','所属公众号ID','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','','','','','',120,'accountid','','N','Y','N','N','Y',36,'','','id_account',21,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-21 16:08:02','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fda0f7feb001e','所属类别','4028d881436d514601436d5215ac0043','2015-09-17 14:48:13','admin','id','weixin_shop_category','name','','',120,'id_category','','N','Y','N','Y','Y',36,'','','id_category',22,0,'single','list','string','4028d881436d514601436d5215ac0043','2015-09-21 16:26:34','admin','4028813a4fd9ca45014fd9efcf9e0001'),
	('4028813a4fd9ca45014fda1380360021','主键','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda1380390022','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda13803b0023','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda13803c0024','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda13803e0025','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda13803f0026','分类名称','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'name','s','N','Y','N','Y','Y',50,'','','name',6,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-21 09:14:11','admin','4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda1380410027','图片路径','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'imgurl','','N','Y','N','N','N',200,'','','imgurl',7,0,'single','file','string','4028d881436d514601436d5215ac0043','2015-09-21 09:27:45','admin','4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda1380430028','分类上级ID','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'parentid','','N','Y','N','N','N',36,'','','parentid',8,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-21 09:05:58','admin','4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda1380440029','所属公众号ID','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','','','','','',120,'accountid','','N','Y','N','N','N',36,'','','id_account',9,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-21 10:18:23','admin','4028813a4fd9ca45014fda1380360020'),
	('4028813a4fd9ca45014fda1ea4b3002c','主键','4028d881436d514601436d5215ac0043','2015-09-17 15:04:45','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4b8002d','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 15:04:45','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4b9002e','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 15:04:45','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4bb002f','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 15:04:45','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4bc0030','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 15:04:46','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4be0031','商品ID','4028d881436d514601436d5215ac0043','2015-09-17 15:04:46','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4c60032','买家ID','4028d881436d514601436d5215ac0043','2015-09-17 15:04:46','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'','','id_customer',7,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda1ea4c80033','商品数量','4028d881436d514601436d5215ac0043','2015-09-17 15:04:46','admin','','','','','',120,'count','','N','Y','N','Y','Y',11,'','','count',8,0,'single','text','int',NULL,NULL,NULL,'4028813a4fd9ca45014fda1ea4b3002b'),
	('4028813a4fd9ca45014fda28747f0036','主键','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda2874820037','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda2874830038','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda2874850039','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda287486003a','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda287488003b','订单号','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'orderid','','N','Y','N','Y','Y',32,'','','orderid',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda287489003c','买家ID','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'','','id_customer',7,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda287491003d','收件人','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'receiver','','N','Y','N','Y','Y',32,'','','receiver',8,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fd9ca45014fda287493003e','订单状态','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','','','','','',120,'statement','','N','Y','N','Y','Y',32,'','','statement',9,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9c24ab0002','配送信息','4028d881436d514601436d5215ac0043','2015-09-17 17:21:50','admin','','','','','',120,'distribut_info','','N','Y','N','Y','Y',5000,'','','distribut_info',10,0,'single','text','Text',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9c24af0003','买家留言','4028d881436d514601436d5215ac0043','2015-09-17 17:21:50','admin','','','','','',120,'message','','N','Y','N','Y','Y',5000,'','','message',11,0,'single','text','Text',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f233d0005','联系电话','4028d881436d514601436d5215ac0043','2015-09-17 17:25:06','admin','','','','','',120,'phone','','N','Y','N','Y','Y',32,'','','phone',12,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f233f0006','邮编','4028d881436d514601436d5215ac0043','2015-09-17 17:25:06','admin','','','','','',120,'postcode','','N','Y','N','Y','Y',32,'','','postcode',13,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f23410007','详细地址','4028d881436d514601436d5215ac0043','2015-09-17 17:25:06','admin','','','','','',120,'address','','N','Y','N','Y','Y',100,'','','address',14,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f23430008','省份','4028d881436d514601436d5215ac0043','2015-09-17 17:25:06','admin','','','','','',120,'province','','N','Y','N','Y','Y',100,'','','province',15,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f23450009','城市','4028d881436d514601436d5215ac0043','2015-09-17 17:25:07','admin','','','','','',120,'city','','N','Y','N','Y','Y',100,'','','city',16,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f2346000a','区县','4028d881436d514601436d5215ac0043','2015-09-17 17:25:07','admin','','','','','',120,'county','','N','Y','N','Y','Y',100,'','','county',17,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f2348000b','运费','4028d881436d514601436d5215ac0043','2015-09-17 17:25:07','admin','','','','','',120,'freight','','N','Y','N','Y','Y',11,'','','freight',18,2,'single','text','double',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f2349000c','商品总数量','4028d881436d514601436d5215ac0043','2015-09-17 17:25:07','admin','','','','','',120,'total_count','','N','Y','N','Y','Y',11,'','','total_count',19,0,'single','text','int',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9f234b000d','商品总价','4028d881436d514601436d5215ac0043','2015-09-17 17:25:07','admin','','','','','',120,'total_price','','N','Y','N','Y','Y',18,'','','total_price',20,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-09-17 18:13:14','admin','4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fda6ad3014fda9fdf38000f','所属公众号ID','4028d881436d514601436d5215ac0043','2015-09-17 17:25:55','admin','','','','','',120,'id_account','','N','Y','N','Y','Y',36,'','','id_account',21,0,'single','text','string',NULL,NULL,NULL,'4028813a4fd9ca45014fda28747e0035'),
	('4028813a4fdaa866014fdab920a30018','主键','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920a60019','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920a8001a','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920a9001b','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920ab001c','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920ac001d','价格','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'price','','N','Y','N','Y','Y',18,'','','price',6,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-09-17 18:13:38','admin','4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920ae001e','数量','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'count','','N','Y','N','Y','Y',11,'','','count',7,0,'single','text','int',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920af001f','是否评价','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'is_discuss','','N','Y','N','Y','Y',11,'','','is_discuss',8,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920b10020','订单ID','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'id_order','','N','Y','N','Y','Y',36,'','','id_order',9,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920b20021','商品ID','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',10,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdab920b30022','买家ID','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'','','id_customer',11,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdab920a30017'),
	('4028813a4fdaa866014fdac217920026','主键','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac2179c0027','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac2179e0028','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac217a00029','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac217a2002a','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac217a3002b','评论级别','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'level','','N','Y','N','Y','Y',12,'','','level',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac217a5002c','评论内容','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'content','','N','Y','N','Y','Y',5000,'','','content',7,0,'single','text','Text',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac217a7002d','买家ID','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'id','weixin_shop_customer','id_customer',8,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-17 18:21:49','admin','4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac217a9002e','商品ID','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',9,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac217910025'),
	('4028813a4fdaa866014fdac758f20031','主键','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac758f10030'),
	('4028813a4fdaa866014fdac758f40032','创建人名称','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac758f10030'),
	('4028813a4fdaa866014fdac758f50033','创建日期','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fdaa866014fdac758f10030'),
	('4028813a4fdaa866014fdac758f60034','修改人名称','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac758f10030'),
	('4028813a4fdaa866014fdac758f80035','修改日期','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a4fdaa866014fdac758f10030'),
	('4028813a4fdaa866014fdac758fa0036','商品ID','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',6,0,'single','text','string',NULL,NULL,NULL,'4028813a4fdaa866014fdac758f10030'),
	('4028813a4fdaa866014fdac758fc0037','买家ID','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'id','weixin_shop_customer','id_customer',7,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-18 09:18:42','admin','4028813a4fdaa866014fdac758f10030'),
	('4028813a4ffe4405014ffe47c0ab0001','原始ID冗余','4028d881436d514601436d5215ac0043','2015-09-24 15:35:59','admin','','','','','',120,'weixin_accountid','','N','Y','N','Y','Y',36,'','','weixin_accountid',10,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-24 15:36:15','admin','4028813a4fd93dd5014fd96c02620002'),
	('4028813a500247fa0150028944dd0008','主键','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944eb0009','创建人名称','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944ed000a','创建日期','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944f0000b','修改人名称','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944f5000c','修改日期','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944f9000d','广告标题','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'title','','N','Y','N','Y','Y',200,'','','title',6,0,'single','text','string',NULL,NULL,NULL,'4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944fb000e','图片链接','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'imgurl','','N','Y','N','Y','N',200,'','','imgurl',7,0,'single','file','string','4028d881436d514601436d5215ac0043','2015-09-25 11:28:41','admin','4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944fc000f','所属公众号ID','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'accountid','','N','Y','N','N','N',36,'','','accountid',8,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-25 11:28:41','admin','4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028944fe0010','原始ID冗余','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'weixin_accountid','','N','Y','N','N','N',36,'','','weixin_accountid',9,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-25 11:28:41','admin','4028813a500247fa0150028944db0007'),
	('4028813a500247fa0150028945000011','图片大小类别','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','','','','','',120,'type','','N','Y','N','Y','Y',100,'','','type',10,0,'single','list','string','4028d881436d514601436d5215ac0043','2015-09-25 11:28:41','admin','4028813a500247fa0150028944db0007'),
	('4028813a500247fa015002929a110014','所链接的商品ID','4028d881436d514601436d5215ac0043','2015-09-25 11:36:14','admin','id','weixin_shop_good','name','','',120,'id_good','','N','Y','N','N','N',36,'','','id_good',11,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-25 12:06:32','admin','4028813a500247fa0150028944db0007'),
	('4028813a500247fa015002929a130015','商品名称冗余','4028d881436d514601436d5215ac0043','2015-09-25 11:36:14','admin','','','','','',120,'good_name','','N','Y','N','N','Y',200,'','','good_name',12,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-09-25 11:38:11','admin','4028813a500247fa0150028944db0007'),
	('4028813a505645b50150564b7f970005','主键','4028d881436d514601436d5215ac0043','2015-10-11 17:46:40','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564b7f9d0006','创建人名称','4028d881436d514601436d5215ac0043','2015-10-11 17:46:40','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564b7f9f0007','创建日期','4028d881436d514601436d5215ac0043','2015-10-11 17:46:40','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564b7fa80008','修改人名称','4028d881436d514601436d5215ac0043','2015-10-11 17:46:40','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564b7fac0009','修改日期','4028d881436d514601436d5215ac0043','2015-10-11 17:46:40','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564de254000c','手机号码','4028d881436d514601436d5215ac0043','2015-10-11 17:49:16','admin','','','','','',120,'mobile_phone','','N','Y','N','Y','Y',30,'','','mobile_phone',6,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564de256000d','电话号码','4028d881436d514601436d5215ac0043','2015-10-11 17:49:16','admin','','','','','',120,'office_phone','','N','Y','N','Y','Y',20,'','','office_phone',7,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564ed94f000f','店铺名称','4028d881436d514601436d5215ac0043','2015-10-11 17:50:19','admin','','','','','',120,'store_name','','N','Y','N','Y','Y',100,'','','store_name',8,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564ed9520010','用户名','4028d881436d514601436d5215ac0043','2015-10-11 17:50:19','admin','','','','','',120,'username','','N','Y','N','Y','Y',10,'','','username',9,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b50150564ed9550011','密码','4028d881436d514601436d5215ac0043','2015-10-11 17:50:19','admin','','','','','',120,'password','','N','Y','N','Y','Y',100,'','','password',10,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b5015056500fa30013','邮箱','4028d881436d514601436d5215ac0043','2015-10-11 17:51:39','admin','','','','','',120,'email','','N','Y','N','Y','Y',50,'','','email',11,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b5015056500fa60014','店铺简介','4028d881436d514601436d5215ac0043','2015-10-11 17:51:39','admin','','','','','',120,'descriptions','','N','Y','N','Y','Y',5000,'','','descriptions',12,0,'single','text','Text','4028d881436d514601436d5215ac0043','2015-10-12 10:42:01','admin','4028813a505645b50150564b7f960004'),
	('4028813a505645b5015056500faa0015','店铺状态','4028d881436d514601436d5215ac0043','2015-10-11 17:51:39','admin','','','','','',120,'status','','N','Y','N','N','Y',6,'','','status',13,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-10-12 10:40:49','admin','4028813a505645b50150564b7f960004'),
	('4028813a505645b5015056500fac0016','类别ID','4028d881436d514601436d5215ac0043','2015-10-11 17:51:39','admin','','','','','',120,'id_type','','N','Y','N','Y','Y',36,'','','id_type',14,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b501505650ef230018','营业开始时间','4028d881436d514601436d5215ac0043','2015-10-11 17:52:36','admin','','','','','',120,'start_time','','N','Y','N','Y','Y',20,'','','start_time',15,0,'single','text','Date',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b501505650ef260019','营业结束时间','4028d881436d514601436d5215ac0043','2015-10-11 17:52:36','admin','','','','','',120,'end_time','','N','Y','N','Y','Y',20,'','','end_time',16,0,'single','text','Date',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505645b501505651ec45001b','微信账户ID','4028d881436d514601436d5215ac0043','2015-10-11 17:53:41','admin','','','','','',120,'accountid','','N','Y','N','N','Y',36,'','','accountid',17,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-12 10:40:49','admin','4028813a505645b50150564b7f960004'),
	('4028813a505645b501505652e8fb001d','原始ID冗余','4028d881436d514601436d5215ac0043','2015-10-11 17:54:46','admin','','','','','',120,'weixin_accountid','','N','Y','N','N','Y',36,'','','weixin_accountid',18,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-12 10:40:49','admin','4028813a505645b50150564b7f960004'),
	('4028813a505645b5015056550a220020','用户ID','4028d881436d514601436d5215ac0043','2015-10-11 17:57:05','admin','','','','','',120,'id_user','','N','Y','N','N','Y',36,'','','id_user',19,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-12 10:40:49','admin','4028813a505645b50150564b7f960004'),
	('4028813a505b0eb201505b1d00680005','主键','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a505b0eb201505b1d00680004'),
	('4028813a505b0eb201505b1d006d0006','创建人名称','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a505b0eb201505b1d00680004'),
	('4028813a505b0eb201505b1d006e0007','创建日期','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a505b0eb201505b1d00680004'),
	('4028813a505b0eb201505b1d00750008','修改人名称','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a505b0eb201505b1d00680004'),
	('4028813a505b0eb201505b1d00770009','修改日期','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a505b0eb201505b1d00680004'),
	('4028813a505b0eb201505b1d0079000a','类别名称','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','','','','','',120,'name','','N','Y','N','Y','Y',100,'','','name',6,0,'single','text','string',NULL,NULL,NULL,'4028813a505b0eb201505b1d00680004'),
	('4028813a505b239c01505b2b6d760005','顺序','4028d881436d514601436d5215ac0043','2015-10-12 16:29:44','admin','','','','','',120,'orders','','N','Y','N','Y','Y',11,'','','orders',20,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a505b746701505b8e89450002','主键','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e89520003','创建人名称','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e89540004','创建日期','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e89550005','修改人名称','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e895a0006','修改日期','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e895e0007','标题','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'title','','N','Y','N','Y','Y',200,'','','title',6,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e89600008','图片链接','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',200,'','','imgurl',7,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e89610009','链接地址','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'url','','N','Y','N','Y','Y',200,'','','url',8,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e8963000a','微信账号ID','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'accountid','','N','Y','N','Y','Y',36,'','','accountid',9,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505b746701505b8e8965000b','原始ID','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','','','','','',120,'weixin_accountid','','N','Y','N','Y','Y',36,'','','weixin_accountid',10,0,'single','text','string',NULL,NULL,NULL,'4028813a505b746701505b8e89440001'),
	('4028813a505ed5de01506005f3cc0009','主键','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a505ed5de01506005f3cc0008'),
	('4028813a505ed5de01506005f3dd000a','创建人名称','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a505ed5de01506005f3cc0008'),
	('4028813a505ed5de01506005f3df000b','创建日期','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a505ed5de01506005f3cc0008'),
	('4028813a505ed5de01506005f3e2000c','修改人名称','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a505ed5de01506005f3cc0008'),
	('4028813a505ed5de01506005f3eb000d','修改日期','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a505ed5de01506005f3cc0008'),
	('4028813a505ed5de01506005f3ed000e','运费','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'express_price','','N','Y','N','Y','Y',12,'','','freight',6,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-10-13 16:11:00','admin','4028813a505ed5de01506005f3cc0008'),
	('4028813a505ed5de01506005f3ef000f','包邮限制','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','','','','','',120,'limit_money','','N','Y','N','Y','Y',12,'','','limit',7,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-10-13 15:48:58','admin','4028813a505ed5de01506005f3cc0008'),
	('4028813a506036ec01506040a3a60006','微信账号ID','4028d881436d514601436d5215ac0043','2015-10-13 16:11:00','admin','','','','','',120,'accountid','','N','Y','N','Y','Y',36,'','','accountid',8,0,'single','text','string',NULL,NULL,NULL,'4028813a505ed5de01506005f3cc0008'),
	('4028813a506051fd015060790b470003','主键','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b580004','创建人名称','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b590005','创建日期','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b5b0006','修改人名称','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b5f0007','修改日期','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b640008','商品名称','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'name','*1-20','N','Y','Y','Y','Y',200,'','','name',6,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-13 18:20:48','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b660009','图片链接','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'imgurl','*','N','Y','N','Y','N',100,'','','imgurl',7,0,'single','file','string','4028d881436d514601436d5215ac0043','2015-10-13 18:20:48','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd015060790b67000a','商品详情','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','','','','','',120,'description','','N','Y','N','N','N',5000,'','','description',8,0,'single','text','Text','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150607b3af9000c','原价','4028d881436d514601436d5215ac0043','2015-10-13 17:15:00','admin','','','','','',120,'original_price','','N','Y','N','N','N',32,'','','original_price',9,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150607b3afb000d','现价','4028d881436d514601436d5215ac0043','2015-10-13 17:15:00','admin','','','','','',120,'real_price','','N','Y','N','Y','Y',32,'','','real_price',10,2,'single','text','double',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a506051fd0150607b3afd000e','折扣','4028d881436d514601436d5215ac0043','2015-10-13 17:15:00','admin','','','','','',120,'sale','','N','Y','N','N','N',32,'','','sale',11,2,'single','text','double','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150607b3aff000f','销售数量','4028d881436d514601436d5215ac0043','2015-10-13 17:15:00','admin','','','','','',120,'sell_count','','N','Y','N','N','Y',11,'','','sell_count',12,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd01506080619f0011','评论数量','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'discuss_count','','N','Y','N','N','Y',11,'','','discuss_count',13,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150608061a10012','好评数量','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'good_count','','N','Y','N','N','Y',11,'','','good_count',14,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150608061a30013','差评数量','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'bad_count','','N','Y','N','N','Y',11,'','','bad_count',15,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150608061a40014','中评数量','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'neutral_count','','N','Y','N','N','Y',11,'','','neutral_count',16,0,'single','text','int','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150608061a60015','状态','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'statement','','N','Y','Y','N','Y',32,'','','statement',17,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-13 18:09:55','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150608061a80016','下架时间','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'remove_time','','N','Y','N','N','Y',32,'','','remove_time',18,0,'single','date','Date','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd0150608061a90017','上架时间','4028d881436d514601436d5215ac0043','2015-10-13 17:20:38','admin','','','','','',120,'shelve_time','','N','Y','N','N','Y',32,'','','shelve_time',19,0,'single','date','Date','4028d881436d514601436d5215ac0043','2015-10-13 18:08:11','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd01506084f2b10019','所属类别','4028d881436d514601436d5215ac0043','2015-10-13 17:25:37','admin','id','wx_mshop_goodtype','name','','',120,'id_category','*','N','Y','Y','Y','Y',36,'','','id_category',20,0,'single','list','string','4028d881436d514601436d5215ac0043','2015-10-14 09:28:48','admin','4028813a506051fd015060790b460002'),
	('4028813a506051fd01506084f2b4001a','所属店铺','4028d881436d514601436d5215ac0043','2015-10-13 17:25:37','admin','id','weixin_mshop_store','store_name','','',120,'id_store','*','N','Y','N','N','Y',36,'','','id_store',21,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-14 10:02:37','admin','4028813a506051fd015060790b460002'),
	('4028813a50608ae101506095a7ca0001','是否秒杀','4028d881436d514601436d5215ac0043','2015-10-13 17:43:52','admin','','','','','',120,'is_seckill','*','N','Y','Y','Y','Y',2,'','','is_seckill',22,0,'single','radio','int','4028d881436d514601436d5215ac0043','2015-10-13 18:20:48','admin','4028813a506051fd015060790b460002'),
	('4028813a50608ae101506095a7ca0002','是否特价','4028d881436d514601436d5215ac0043','2015-10-13 17:43:52','admin','','','','','',120,'is_special','*','N','Y','Y','Y','Y',2,'','','is_special',23,0,'single','radio','int','4028d881436d514601436d5215ac0043','2015-10-13 18:20:48','admin','4028813a506051fd015060790b460002'),
	('4028813a50608ae10150609eee110004','所有规格','4028d881436d514601436d5215ac0043','2015-10-13 17:54:00','admin','','','','','',120,'all_specs','','N','Y','N','Y','Y',500,'','','all_specs',24,0,'single','text','string',NULL,NULL,NULL,'4028813a506051fd015060790b460002'),
	('4028813a50608ae1015060a510940009','是否自营','4028d881436d514601436d5215ac0043','2015-10-13 18:00:42','admin','','','','','',120,'is_selfsupport','*','N','Y','N','Y','Y',2,'','','is_selfsupport',25,0,'single','radio','int','4028d881436d514601436d5215ac0043','2015-10-13 18:20:48','admin','4028813a506051fd015060790b460002'),
	('4028813a5063c70f015063def0c50004','主键','4028d881436d514601436d5215ac0043','2015-10-14 09:02:46','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063def0d20005','创建人名称','4028d881436d514601436d5215ac0043','2015-10-14 09:02:46','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063def0d40006','创建日期','4028d881436d514601436d5215ac0043','2015-10-14 09:02:46','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063def0d60007','修改人名称','4028d881436d514601436d5215ac0043','2015-10-14 09:02:46','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063def0d70008','修改日期','4028d881436d514601436d5215ac0043','2015-10-14 09:02:46','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063e057a0000a','分类名称','4028d881436d514601436d5215ac0043','2015-10-14 09:04:18','admin','','','','','',120,'name','','N','Y','Y','Y','Y',100,'','','name',6,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-14 09:25:07','admin','4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063e057af000b','所属店铺ID','4028d881436d514601436d5215ac0043','2015-10-14 09:04:18','admin','','','','','',120,'id_store','','N','Y','N','N','N',36,'','','id_store',7,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-14 09:25:07','admin','4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063e29a74000d','父分类ID','4028d881436d514601436d5215ac0043','2015-10-14 09:06:47','admin','','','','','',120,'parentid','','N','Y','N','N','N',36,'','','parentid',8,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-10-14 09:25:07','admin','4028813a5063c70f015063def0c20003'),
	('4028813a5063c70f015063f44d7b0012','图片链接','4028d881436d514601436d5215ac0043','2015-10-14 09:26:06','admin','','','','','',120,'imgurl','','N','Y','N','N','N',200,'','','imgurl',9,0,'single','text','string',NULL,NULL,NULL,'4028813a5063c70f015063def0c20003'),
	('4028813a50844593015084501a710009','主键','4028d881436d514601436d5215ac0043','2015-10-20 16:14:14','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a50844593015084501a8d000a','创建人名称','4028d881436d514601436d5215ac0043','2015-10-20 16:14:14','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a50844593015084501a8f000b','创建日期','4028d881436d514601436d5215ac0043','2015-10-20 16:14:14','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a50844593015084501a99000c','修改人名称','4028d881436d514601436d5215ac0043','2015-10-20 16:14:14','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a50844593015084501a9b000d','修改日期','4028d881436d514601436d5215ac0043','2015-10-20 16:14:14','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5087de64015087e97f710001','商品数量','4028d881436d514601436d5215ac0043','2015-10-21 09:00:38','admin','','','','','',120,'count','','N','Y','N','Y','Y',11,'','','count',6,0,'single','text','int',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5087de64015087eb7c360003','商品名称','4028d881436d514601436d5215ac0043','2015-10-21 09:02:48','admin','','','','','',120,'goods_name','','N','Y','N','Y','Y',200,'','','goods_name',7,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5087de64015087eb7c380004','商品价格','4028d881436d514601436d5215ac0043','2015-10-21 09:02:48','admin','','','','','',120,'price','','N','Y','N','Y','Y',13,'','','price',8,2,'single','text','double',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5087de64015087ecba470006','商品ID','4028d881436d514601436d5215ac0043','2015-10-21 09:04:10','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',9,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5087de64015087ecba490007','客户表','4028d881436d514601436d5215ac0043','2015-10-21 09:04:10','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'','','id_customer',10,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5087de64015087f04653000a','主键','4028d881436d514601436d5215ac0043','2015-10-21 09:08:02','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de64015087f04656000b','创建人名称','4028d881436d514601436d5215ac0043','2015-10-21 09:08:02','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de64015087f04657000c','创建日期','4028d881436d514601436d5215ac0043','2015-10-21 09:08:02','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de64015087f04659000d','修改人名称','4028d881436d514601436d5215ac0043','2015-10-21 09:08:02','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de64015087f0465a000e','修改日期','4028d881436d514601436d5215ac0043','2015-10-21 09:08:02','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de640150884b60390011','用户唯一标识','4028d881436d514601436d5215ac0043','2015-10-21 10:47:33','admin','','','','','',120,'openid','','N','Y','N','Y','Y',36,'','','openid',6,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de640150884c7c3b0013','昵称','4028d881436d514601436d5215ac0043','2015-10-21 10:48:45','admin','','','','','',120,'nickname','','N','Y','N','Y','Y',200,'','','nickname',7,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de6401508850884a0015','性别','4028d881436d514601436d5215ac0043','2015-10-21 10:53:11','admin','','','','','',120,'sex','','N','Y','N','Y','Y',2,'','','sex',8,0,'single','text','int',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de6401508850884d0016','城市','4028d881436d514601436d5215ac0043','2015-10-21 10:53:11','admin','','','','','',120,'city','','N','Y','N','Y','Y',100,'','','city',9,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de6401508850884e0017','省份','4028d881436d514601436d5215ac0043','2015-10-21 10:53:11','admin','','','','','',120,'province','','N','Y','N','Y','Y',100,'','','province',10,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de640150885088500018','头像链接','4028d881436d514601436d5215ac0043','2015-10-21 10:53:11','admin','','','','','',120,'headimgurl','','N','Y','N','Y','Y',200,'','','headimgurl',11,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de6401508851af38001a','微信账号ID','4028d881436d514601436d5215ac0043','2015-10-21 10:54:26','admin','','','','','',120,'accountid','','N','Y','N','Y','Y',36,'','','accountid',12,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a5087de6401508851af3a001b','原始ID','4028d881436d514601436d5215ac0043','2015-10-21 10:54:26','admin','','','','','',120,'weixin_accountid','','N','Y','N','Y','Y',36,'','','weixin_accountid',13,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a508d2e7401508d4015fd000f','是否是推荐店铺','4028d881436d514601436d5215ac0043','2015-10-22 09:53:19','admin','','','','','',120,'is_recommend','','N','Y','N','Y','Y',2,'','','is_recommend',22,0,'single','text','int',NULL,NULL,NULL,'4028813a505645b50150564b7f960004'),
	('4028813a50faa03d0150fac31cbc0004','主键','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac31cbb0003'),
	('4028813a50faa03d0150fac31cc20005','创建人名称','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac31cbb0003'),
	('4028813a50faa03d0150fac31cc40006','创建日期','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a50faa03d0150fac31cbb0003'),
	('4028813a50faa03d0150fac31cc60007','修改人名称','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac31cbb0003'),
	('4028813a50faa03d0150fac31ccb0008','修改日期','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a50faa03d0150fac31cbb0003'),
	('4028813a50faa03d0150fac31cce0009','name','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','','','','','',120,'name','','N','Y','N','Y','Y',444,'','','name',6,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac31cbb0003'),
	('4028813a50faa03d0150fac4e6a1000c','主键','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a50faa03d0150fac4e6a5000d','创建人名称','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a50faa03d0150fac4e6a6000e','创建日期','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a50faa03d0150fac4e6a8000f','修改人名称','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a50faa03d0150fac4e6aa0010','修改日期','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a50faa03d0150fac4e6ac0011','ddd','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'name','','N','Y','N','Y','Y',32,'','','name',6,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a50faa03d0150fac4e6ae0012','rrrrr','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','','','','','',120,'id_one','','N','Y','N','Y','Y',36,'id','test_one','id_one',7,0,'single','text','string',NULL,NULL,NULL,'4028813a50faa03d0150fac4e6a1000b'),
	('4028813a5112f584015112f78b8d0001','规格','4028d881436d514601436d5215ac0043','2015-11-17 09:03:12','admin','','','','','',120,'spec','','N','Y','N','Y','Y',200,'','','spec',11,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a5112f584015112f78b940002','商店ID','4028d881436d514601436d5215ac0043','2015-11-17 09:03:12','admin','','','','','',120,'id_store','','N','Y','N','Y','Y',36,'','','id_store',12,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a51134ee30151134fd2f20001','商品图片','4028d881436d514601436d5215ac0043','2015-11-17 10:39:37','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',200,'','','imgurl',13,0,'single','text','string',NULL,NULL,NULL,'4028813a50844593015084501a6d0008'),
	('4028813a511f27c701511f30905f0002','主键','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3090740003','创建人名称','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3090770004','创建日期','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3090790005','修改人名称','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f30907e0006','修改日期','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3090820007','订单号','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','','','','','',120,'code','','N','Y','N','Y','Y',36,'','','code',6,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f390ad90009','状态','4028d881436d514601436d5215ac0043','2015-11-19 18:10:11','admin','','','','','',120,'status','','N','Y','N','Y','Y',4,'','','status',7,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f390add000a','地址','4028d881436d514601436d5215ac0043','2015-11-19 18:10:11','admin','','','','','',120,'address','','N','Y','N','Y','Y',200,'','','address',8,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f390adf000b','收件人','4028d881436d514601436d5215ac0043','2015-11-19 18:10:11','admin','','','','','',120,'receiver_name','','N','Y','N','Y','Y',32,'','','receiver_name',9,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f390ae1000c','收件人手机号','4028d881436d514601436d5215ac0043','2015-11-19 18:10:11','admin','','','','','',120,'phone','','N','Y','N','Y','Y',32,'','','phone',10,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f390ae2000d','客户ID','4028d881436d514601436d5215ac0043','2015-11-19 18:10:11','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'','','id_customer',11,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f390ae4000e','总商品数','4028d881436d514601436d5215ac0043','2015-11-19 18:10:11','admin','','','','','',120,'total_count','','N','Y','N','Y','Y',11,'','','total_count',12,0,'single','text','int',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3b64840010','总价格 含邮费','4028d881436d514601436d5215ac0043','2015-11-19 18:12:45','admin','','','','','',120,'total_price','','N','Y','N','Y','Y',13,'','','total_price',13,2,'single','text','double',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3b648c0011','邮费','4028d881436d514601436d5215ac0043','2015-11-19 18:12:45','admin','','','','','',120,'freight','','N','Y','N','Y','Y',13,'','','freight',14,2,'single','text','double',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3ee4070013','买家留言','4028d881436d514601436d5215ac0043','2015-11-19 18:16:34','admin','','','','','',120,'message','','N','Y','N','Y','Y',5000,'','','message',15,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3ee40a0014','店铺ID','4028d881436d514601436d5215ac0043','2015-11-19 18:16:34','admin','','','','','',120,'id_store','','N','Y','N','Y','Y',32,'','','id_store',16,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3ee40c0015','微信账号ID','4028d881436d514601436d5215ac0043','2015-11-19 18:16:34','admin','','','','','',120,'accountid','','N','Y','N','Y','Y',36,'','','accountid',17,0,'single','text','string','4028d881436d514601436d5215ac0043','2015-11-19 18:17:25','admin','4028813a511f27c701511f30905c0001'),
	('4028813a511f27c701511f3fab420017','原始ID','4028d881436d514601436d5215ac0043','2015-11-19 18:17:25','admin','','','','','',120,'weixin_accountid','','N','Y','N','Y','Y',36,'','','weixin_accountid',18,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a5127a71f015127b26bb10002','主键','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26ce40003','创建人名称','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26ce70004','创建日期','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26ce90005','修改人名称','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26ced0006','修改日期','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26cf10007','评价星级','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'level','','N','Y','N','Y','Y',10,'','','level',6,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26cf30008','内容','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'content','','N','Y','N','Y','Y',2000,'','','content',7,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26cf50009','客户ID','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'id_customer','','N','Y','N','Y','Y',36,'','','id_customer',8,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26cf7000a','商店ID','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'id_store','','N','Y','N','Y','Y',36,'','','id_store',9,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127a71f015127b26cf8000b','商品ID','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','','','','','',120,'id_goods','','N','Y','N','Y','Y',36,'','','id_goods',10,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5127e017015127e26ca40001','订单ID','4028d881436d514601436d5215ac0043','2015-11-21 10:32:09','admin','','','','','',120,'id_order','','N','Y','N','Y','Y',36,'','','id_order',11,0,'single','text','string',NULL,NULL,NULL,'4028813a5127a71f015127b26baf0001'),
	('4028813a5132e503015132f6a3480008','微信昵称','4028d881436d514601436d5215ac0043','2015-11-23 14:10:03','admin','','','','','',120,'nickname','','N','Y','N','Y','Y',200,'','','nickname',22,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a5133427e01513343ce400001','商品名称','4028d881436d514601436d5215ac0043','2015-11-23 15:34:20','admin','','','','','',120,'goods_name','','N','Y','N','Y','Y',100,'','','goods_name',11,0,'single','text','string',NULL,NULL,NULL,'402880ee511f742501511f83341e0008'),
	('4028813a5133cdaf015133d49a980001','配送方式','4028d881436d514601436d5215ac0043','2015-11-23 18:12:30','admin','','','','','',120,'distribution_mode','','N','Y','N','Y','Y',100,'','','distribution_mode',23,0,'single','text','string',NULL,NULL,NULL,'4028813a511f27c701511f30905c0001'),
	('4028813a51426c1b0151426d4c510001','详细地址','4028d881436d514601436d5215ac0043','2015-11-26 14:13:58','admin','','','','','',120,'address_detail','','N','Y','N','Y','Y',200,'','','address_detail',17,0,'single','text','string',NULL,NULL,NULL,'4028813a5087de64015087f046530009'),
	('4028813a52161e7801521628916b0002','主键','4028d881436d514601436d5215bc0046','2016-01-06 16:58:23','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e7801521628917e0003','创建人名称','4028d881436d514601436d5215bc0046','2016-01-06 16:58:23','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e780152162891810004','创建日期','4028d881436d514601436d5215bc0046','2016-01-06 16:58:23','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e780152162891830005','修改人名称','4028d881436d514601436d5215bc0046','2016-01-06 16:58:23','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e780152162891880006','修改日期','4028d881436d514601436d5215bc0046','2016-01-06 16:58:23','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e7801521628918c0007','用户唯一标识','4028d881436d514601436d5215bc0046','2016-01-06 16:58:24','admin','','','','','',120,'openid','','N','Y','N','Y','Y',200,'','','openid',6,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e7801521628918e0008','店铺ID','4028d881436d514601436d5215bc0046','2016-01-06 16:58:24','admin','','','','','',120,'id_store','','N','Y','N','Y','Y',36,'','','id_store',7,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a52161e780152162891900009','姓名','4028d881436d514601436d5215bc0046','2016-01-06 16:58:24','admin','','','','','',120,'name','','N','Y','N','Y','Y',32,'','','name',8,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('4028813a521637e301521639cb530001','是否是总店','4028d881436d514601436d5215bc0046','2016-01-06 17:17:12','admin','','','','','',120,'is_head','','N','Y','N','Y','Y',32,'','','is_head',9,0,'single','text','string',NULL,NULL,NULL,'4028813a52161e780152162891690001'),
	('402881e446676a0601466770878c0002','主键','admin','2014-06-04 23:12:46','管理员','','','','','',0,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),
	('402881e446676a060146677087df0003','关键字','admin','2014-06-04 23:12:47','管理员','','','','','',120,'keyword','','N','N','N','Y','Y',100,'','','key',2,0,'single','text','string','admin','2014-06-04 23:18:27','管理员','402881e446676a060146677087880001'),
	('402881e446676a060146677087e20004','类长名','admin','2014-06-04 23:12:47','管理员','','','','','',120,'classname','','N','N','N','Y','Y',100,'','','classname',3,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),
	('402881e446676a060146677087e50005','微信公众帐号','admin','2014-06-04 23:12:47','管理员','','','','','',120,'accountid','','N','Y','N','Y','Y',200,'','','accountid',4,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),
	('402881e446676a0601466775b8fc0007','功能名称','admin','2014-06-04 23:18:27','管理员','','','','','',120,'name','','N','Y','N','Y','Y',100,'','','name',5,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),
	('402881e446676a0601466775b9000008','功能描述','admin','2014-06-04 23:18:27','管理员','','','','','',120,'content','','N','Y','N','Y','Y',300,'','','content',6,0,'single','text','string',NULL,NULL,NULL,'402881e446676a060146677087880001'),
	('402881e845c73cb00145c75445120008','主键','admin','2014-05-04 21:02:39','管理员','','','','','',0,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),
	('402881e845c73cb00145c75445ae0009','公众帐号名称','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountname','','N','Y','N','Y','Y',200,'','','accountname',2,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),
	('402881e845c73cb00145c75445b5000b','公众帐号TOKEN','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accounttoken','','N','Y','N','Y','Y',200,'','','accounttoken',3,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),
	('402881e845c73cb00145c75445b8000c','公众微信号','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountnumber','','N','Y','N','Y','Y',200,'','','accountnumber',4,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),
	('402881e845c73cb00145c75445c3000d','公众号类型','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accounttype','','N','Y','N','Y','Y',50,'','','accounttype',5,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),
	('402881e845c73cb00145c75445c7000e','电子邮箱','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountemail','','N','Y','N','Y','Y',200,'','','accountemail',6,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),
	('402881e845c73cb00145c75445cb000f','公众帐号描述','admin','2014-05-04 21:02:40','管理员','','','','','',120,'accountdesc','','N','Y','N','Y','Y',500,'','','accountdesc',7,0,'single','text','string','admin','2014-05-06 20:10:22','管理员','402881e845c73cb00145c754450c0007'),
	('402881e845d16cb10145d1711e730002','公众帐号APPID','admin','2014-05-06 20:10:22','管理员','','','','','',120,'accountappid','','N','Y','N','Y','Y',200,'','','accountappid',8,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),
	('402881e845d16cb10145d1711e790003','公众帐号APPSECRET','admin','2014-05-06 20:10:22','管理员','','','','','',120,'accountappsecret','','N','Y','N','Y','Y',500,'','','accountappsecret',9,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),
	('402881e845d16cb10145d1711e7e0004','ACCESS_TOKEN','admin','2014-05-06 20:10:22','管理员','','','','','',120,'accountaccesstoken','','N','Y','N','Y','Y',1000,'','','accountaccesstoken',10,0,'single','text','string',NULL,NULL,NULL,'402881e845c73cb00145c754450c0007'),
	('402881e946f72f8e0146f74632020009','主键','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f7463216000a','创建人名称','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f746321c000b','创建日期','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'create_date','','N','Y','N','N','Y',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f7463224000c','修改人名称','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f7463246000d','修改日期','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f7463250000e','分类名称','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'name','','N','Y','N','Y','Y',50,'','','name',6,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f746326b000f','图片路径','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',200,'','','imgurl',7,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f74632720010','分类上级ID','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'parentid','','N','Y','N','Y','Y',36,'','','parentid',8,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e946f72f8e0146f746327b0011','卖家ID','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','','','','','',120,'seller_id','','N','Y','N','N','N',36,'','','seller_id',9,0,'single','text','string',NULL,NULL,NULL,'402881e946f72f8e0146f74632010008'),
	('402881e94701b0bc014701b6ed3c0002','主键','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'id','','Y','N','N','N','N',36,'','','id',1,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ed620003','创建人名称','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'create_name','','N','Y','N','N','N',50,'','','create_name',2,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ed6a0004','创建日期','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'create_date','','N','Y','N','N','N',20,'','','create_date',3,0,'single','text','Date',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ed880005','修改人名称','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'update_name','','N','Y','N','N','N',50,'','','update_name',4,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ed920006','修改日期','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'update_date','','N','Y','N','N','N',20,'','','update_date',5,0,'single','text','Date',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ed9c0007','标题信息','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'title','','N','Y','N','Y','Y',200,'','','title',6,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6eda50008','标题图片','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'title_img','','N','Y','N','Y','Y',100,'','','title_img',7,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edbd0009','商品详情','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'descriptions','','N','Y','N','Y','Y',5000,'','','descriptions',8,0,'single','text','Text','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edc5000a','商品原价','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'price','','N','Y','N','Y','Y',18,'','','price',9,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edcc000b','商品现价','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'real_price','','N','Y','N','Y','Y',18,'','','real_price',10,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edd4000c','折扣','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'sale','','N','Y','N','Y','Y',18,'','','sale',11,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edde000d','销售数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'sell_count','','N','Y','N','Y','Y',11,'','','sell_count',12,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ede5000e','评价数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'discuss_count','','N','Y','N','N','Y',11,'','','discuss_count',13,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edec000f','好评数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'good_count','','N','Y','N','N','Y',11,'','','good_count',14,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edf40010','差评数量','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'bad_count','','N','Y','N','N','Y',11,'','','bad_count',15,0,'single','text','int','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6edff0011','状态','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'statement','','N','Y','N','N','Y',32,'','','statement',16,0,'single','text','string','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ee1a0012','上架时间','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'shelve_time','','N','Y','N','N','Y',32,'','','shelve_time',17,0,'single','text','Date','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ee220013','下架时间','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'remove_time','','N','Y','N','N','Y',32,'','','remove_time',18,0,'single','text','Date','4028d881436d514601436d5215ac0043','2014-07-04 22:16:50','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ee280014','快递名称','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'express_name','','N','Y','N','Y','Y',32,'','','express_name',19,0,'single','text','string',NULL,NULL,NULL,'402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ee2f0015','快递费用','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'express_price','','N','Y','N','Y','Y',18,'','','express_price',20,2,'single','text','double','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('402881e94701b0bc014701b6ee360016','卖家ID','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','','','','','',120,'seller_id','','N','Y','N','Y','Y',36,'','','seller_id',21,0,'single','text','string','4028d881436d514601436d5215ac0043','2014-07-04 22:14:48','admin','402881e94701b0bc014701b6ed380001'),
	('4028d881436d514601436d52193b012f','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),
	('4028d881436d514601436d5219410130','订单号','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'order_code',NULL,'N','Y','Y','Y','Y',50,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),
	('4028d881436d514601436d5219460131','订单日期','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'order_date',NULL,'N','Y','Y','Y','Y',20,'','',NULL,2,0,'single','date','Date',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),
	('4028d881436d514601436d5219480132','订单金额','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'order_money',NULL,'N','Y','Y','Y','Y',10,'','',NULL,3,3,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),
	('4028d881436d514601436d52194a0133','备注','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'content',NULL,'N','Y','Y','Y','Y',255,'','',NULL,4,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521928012a'),
	('4028d881436d514601436d5219520134','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d5219550135','请假标题','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'title',NULL,'N','N','N','Y','Y',50,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d5219570136','请假人','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'people',NULL,'N','N','Y','Y','Y',20,'','',NULL,2,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d5219580137','性别','admin','2014-01-07 23:28:53','管理员','sex','',NULL,NULL,NULL,0,'sex',NULL,'N','N','Y','Y','Y',10,'','',NULL,3,0,'single','list','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d52195a0138','请假开始时间','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'begindate',NULL,'N','N','N','Y','Y',0,'','',NULL,4,0,'group','date','Date',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d52195b0139','请假结束时间','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'enddate',NULL,'N','N','N','Y','Y',0,'','',NULL,5,0,'group','datetime','Date',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d52195d013a','所属部门','admin','2014-01-07 23:28:53','管理员','id','t_s_depart','departname',NULL,NULL,0,'hol_dept',NULL,'N','N','N','Y','Y',32,'','',NULL,7,0,'single','list','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d52195e013b','请假原因','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'hol_reson',NULL,'N','N','N','Y','Y',255,'','',NULL,8,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d521960013c','部门审批人','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'dep_leader',NULL,'N','N','N','Y','Y',20,'','',NULL,9,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d521961013d','部门审批意见','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'content',NULL,'N','N','N','Y','Y',255,'','',NULL,10,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d521963013e','请假天数','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'day_num',NULL,'N','Y','N','Y','Y',10,'','',NULL,6,0,'single','text','int',NULL,NULL,NULL,'4028d881436d514601436d52192d012b'),
	('4028d881436d514601436d52196e013f','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),
	('4028d881436d514601436d5219700140','客户名','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'name',NULL,'N','Y','Y','Y','Y',32,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),
	('4028d881436d514601436d5219720141','单价','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'money',NULL,'N','Y','Y','Y','Y',10,'','',NULL,2,2,'group','text','double',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),
	('4028d881436d514601436d5219740142','外键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'fk_id',NULL,'N','N','Y','N','N',36,'id','jform_order_main',NULL,5,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),
	('4028d881436d514601436d5219750143','电话','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'telphone',NULL,'N','Y','Y','Y','Y',32,'','',NULL,4,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),
	('4028d881436d514601436d5219770144','性别','admin','2014-01-07 23:28:53','管理员','sex','',NULL,NULL,NULL,120,'sex',NULL,'N','Y','Y','Y','Y',4,'','',NULL,3,0,'single','radio','string',NULL,NULL,NULL,'4028d881436d514601436d52192f012c'),
	('4028d881436d514601436d52197b0145','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','checkbox','string',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),
	('4028d881436d514601436d52197d0146','航班号','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'ticket_code',NULL,'N','N','Y','Y','Y',100,'','',NULL,1,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),
	('4028d881436d514601436d52197f0147','航班时间','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'tickect_date',NULL,'N','N','Y','Y','Y',10,'','',NULL,2,0,'single','datetime','Date',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),
	('4028d881436d514601436d5219810148','外键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,120,'fck_id',NULL,'N','N','N','N','N',36,'id','jform_order_main',NULL,3,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521931012d'),
	('4028d881436d514601436d5219860149','主键','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'id',NULL,'Y','N','N','N','N',36,'','',NULL,0,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d521989014a','机构合计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'a',NULL,'N','N','Y','Y','Y',10,'','',NULL,1,2,'group','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d52198a014b','行政小计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b1',NULL,'N','N','N','Y','Y',10,'','',NULL,2,2,'group','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d52198d014c','行政省','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b11',NULL,'N','N','N','Y','Y',100,'','',NULL,3,0,'group','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d52198f014d','行政市','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b12',NULL,'N','N','N','Y','Y',100,'','',NULL,4,0,'group','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d521991014e','行政县','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b13',NULL,'N','N','N','Y','Y',100,'','',NULL,5,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d521994014f','事业合计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b2',NULL,'N','N','N','Y','Y',10,'','',NULL,6,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219970150','参公小计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b3',NULL,'N','N','N','Y','Y',10,'','',NULL,7,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219990151','参公省','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b31',NULL,'N','N','N','Y','Y',100,'','',NULL,8,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d52199c0152','参公市','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b32',NULL,'N','N','N','Y','Y',100,'','',NULL,9,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d52199e0153','参公县','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'b33',NULL,'N','N','N','Y','Y',100,'','',NULL,10,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219a00154','全额拨款','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'c1',NULL,'N','N','N','Y','Y',10,'','',NULL,11,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219a30155','差额拨款','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'c2',NULL,'N','N','N','Y','Y',10,'','',NULL,12,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219a60156','自收自支','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'c3',NULL,'N','N','N','Y','Y',10,'','',NULL,13,2,'single','text','double',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219a80157','经费合计','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'d',NULL,'N','N','Y','Y','Y',10,'','',NULL,14,2,'single','text','int',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('4028d881436d514601436d5219aa0158','机构资质','admin','2014-01-07 23:28:53','管理员','','',NULL,NULL,NULL,0,'d1',NULL,'N','N','N','Y','Y',1000,'','',NULL,15,0,'single','text','string',NULL,NULL,NULL,'4028d881436d514601436d521933012e'),
	('ff808081508408690150842ebe72000b','店铺LOGO','4028d881436d514601436d5215ac0043','2015-10-20 15:37:47','admin','','','','','',120,'imgurl','','N','Y','N','Y','Y',200,'','','imgurl',21,0,'single','text','string',NULL,NULL,NULL,'4028813a505645b50150564b7f960004');

/*!40000 ALTER TABLE `cgform_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cgform_ftl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_ftl`;

CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) DEFAULT NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) DEFAULT NULL,
  `UPDATE_BY` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cgform_head
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_head`;

CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `sub_table_str` longtext,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `jform_pk_sequence` varchar(200) DEFAULT NULL,
  `jform_pk_type` varchar(100) DEFAULT NULL,
  `tab_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cgform_head` WRITE;
/*!40000 ALTER TABLE `cgform_head` DISABLE KEYS */;

INSERT INTO `cgform_head` (`id`, `content`, `create_by`, `create_date`, `create_name`, `is_checkbox`, `is_dbsynch`, `is_pagination`, `is_tree`, `jform_type`, `jform_version`, `querymode`, `relation_type`, `sub_table_str`, `table_name`, `update_by`, `update_date`, `update_name`, `jform_pk_sequence`, `jform_pk_type`, `tab_order`)
VALUES
	('402880ee511f742501511f83341e0008','多店订单商品表','4028d881436d514601436d5215ac0043','2015-11-19 19:31:11','admin','N','Y','Y','N',1,'5','single',0,NULL,'wx_mshop_ordergoods','4028d881436d514601436d5215ac0043','2015-11-30 20:50:32','admin','','UUID',NULL),
	('402880ee5120024a015120038ace0001','www','4028d881436d514601436d5215ac0043','2015-11-19 21:51:21','admin','N','Y','Y','N',1,'2','single',0,NULL,'test_uuid','4028d881436d514601436d5215ac0043','2015-11-19 21:54:11','admin','123','SEQUENCE',NULL),
	('402880ee512d4cd201512f2b6faf0002','test','4028d881436d514601436d5215ac0043','2015-11-22 20:29:14','admin','N','Y','N','N',1,'1','single',0,NULL,'test','4028d881436d514601436d5215ac0043','2015-11-22 20:29:26','admin','','UUID',NULL),
	('4028813a4fd47208014fd585e2ec002f','测试表','4028d881436d514601436d5215ac0043','2015-09-16 17:39:26','admin','Y','Y','Y','Y',1,'1','group',0,NULL,'xxxtest','4028d881436d514601436d5215ac0043','2015-09-16 17:39:39','admin','','UUID',NULL),
	('4028813a4fd59205014fd59936f70001','测试','4028d881436d514601436d5215ac0043','2015-09-16 18:00:32','admin','N','Y','Y','N',1,'1','single',0,NULL,'xxxOrder','4028d881436d514601436d5215ac0043','2015-09-16 18:00:51','admin','','UUID',NULL),
	('4028813a4fd93dd5014fd96c02620002','微商城客户表','4028d881436d514601436d5215ac0043','2015-09-17 11:49:39','admin','Y','Y','Y','N',2,'25','group',0,'weixin_shop_love,weixin_shop_discuss','weixin_shop_customer','4028d881436d514601436d5215ac0043','2015-09-24 16:25:26','admin','','UUID',1),
	('4028813a4fd9ca45014fd9efcf9e0001','微信商城商品信息','4028d881436d514601436d5215ac0043','2015-09-17 14:13:36','admin','Y','Y','Y','N',3,'13','group',0,NULL,'weixin_shop_good','4028d881436d514601436d5215ac0043','2015-09-25 11:58:54','admin','','UUID',NULL),
	('4028813a4fd9ca45014fda1380360020','微商城商品类别','4028d881436d514601436d5215ac0043','2015-09-17 14:52:35','admin','N','Y','Y','Y',1,'7','single',0,NULL,'weixin_shop_category','4028d881436d514601436d5215ac0043','2015-09-21 10:18:30','admin','','UUID',NULL),
	('4028813a4fd9ca45014fda1ea4b3002b','微商城购物车','4028d881436d514601436d5215ac0043','2015-09-17 15:04:45','admin','Y','Y','Y','N',1,'1','single',0,NULL,'weixin_shop_cart','4028d881436d514601436d5215ac0043','2015-09-17 18:15:31','admin','','UUID',NULL),
	('4028813a4fd9ca45014fda28747e0035','微商城订单信息','4028d881436d514601436d5215ac0043','2015-09-17 15:15:29','admin','Y','Y','Y','N',1,'5','single',0,NULL,'weixin_shop_order','4028d881436d514601436d5215ac0043','2015-09-17 18:15:24','admin','','UUID',NULL),
	('4028813a4fdaa866014fdab920a30017','微商城订单商品','4028d881436d514601436d5215ac0043','2015-09-17 17:53:30','admin','Y','Y','Y','N',1,'2','single',0,NULL,'weixin_shop_odgoods','4028d881436d514601436d5215ac0043','2015-09-17 18:15:16','admin','','UUID',NULL),
	('4028813a4fdaa866014fdac217910025','微商城用户评论信息','4028d881436d514601436d5215ac0043','2015-09-17 18:03:17','admin','Y','Y','Y','N',3,'5','single',0,NULL,'weixin_shop_discuss','4028d881436d514601436d5215ac0043','2015-09-18 09:23:19','admin','','UUID',2),
	('4028813a4fdaa866014fdac758f10030','微商城收藏表','4028d881436d514601436d5215ac0043','2015-09-17 18:09:02','admin','Y','Y','Y','N',3,'6','single',0,NULL,'weixin_shop_love','4028d881436d514601436d5215ac0043','2015-09-18 09:18:49','admin','','UUID',1),
	('4028813a500247fa0150028944db0007','微商城广告','4028d881436d514601436d5215ac0043','2015-09-25 11:26:02','admin','N','Y','Y','N',1,'9','single',0,NULL,'weixin_shop_ad','4028d881436d514601436d5215ac0043','2015-09-25 12:06:32','admin','','UUID',NULL),
	('4028813a505645b50150564b7f960004','微商城多店版店铺','4028d881436d514601436d5215ac0043','2015-10-11 17:46:40','admin','N','Y','Y','N',1,'15','single',0,NULL,'weixin_mshop_store','4028d881436d514601436d5215ac0043','2015-10-22 09:53:26','admin','','UUID',NULL),
	('4028813a505b0eb201505b1d00680004','店铺类型','4028d881436d514601436d5215ac0043','2015-10-12 16:13:59','admin','Y','Y','Y','N',1,'1','single',0,NULL,'weixin_mshop_type','4028d881436d514601436d5215ac0043','2015-10-12 16:14:13','admin','','UUID',NULL),
	('4028813a505b746701505b8e89440001','微商城多店版广告','4028d881436d514601436d5215ac0043','2015-10-12 18:17:59','admin','N','Y','Y','N',1,'1','single',0,NULL,'weixin_mshop_ad','4028d881436d514601436d5215ac0043','2015-10-12 18:19:36','admin','','UUID',NULL),
	('4028813a505ed5de01506005f3cc0008','微信','4028d881436d514601436d5215ac0043','2015-10-13 15:06:54','admin','N','Y','Y','N',1,'5','single',0,NULL,'weixin_dispatch','4028d881436d514601436d5215ac0043','2015-10-13 16:11:17','admin','','UUID',NULL),
	('4028813a506051fd015060790b460002','微商城多店版商品表','4028d881436d514601436d5215ac0043','2015-10-13 17:12:37','admin','N','Y','Y','N',1,'14','single',0,NULL,'weixin_mshop_goods','4028d881436d514601436d5215ac0043','2015-10-14 10:02:37','admin','','UUID',NULL),
	('4028813a5063c70f015063def0c20003','微商城多店商品分类','4028d881436d514601436d5215ac0043','2015-10-14 09:02:46','admin','N','Y','Y','N',1,'5','single',0,NULL,'wx_mshop_goodtype','4028d881436d514601436d5215ac0043','2015-10-14 09:27:48','admin','','UUID',NULL),
	('4028813a50844593015084501a6d0008','微商城多店版购物车','4028d881436d514601436d5215ac0043','2015-10-20 16:14:14','admin','N','Y','Y','N',1,'7','single',0,NULL,'weixin_mshop_cart','4028d881436d514601436d5215ac0043','2015-11-17 10:39:41','admin','','UUID',NULL),
	('4028813a5087de64015087f046530009','微商城多店版客户表','4028d881436d514601436d5215ac0043','2015-10-21 09:08:02','admin','N','Y','Y','N',1,'8','single',0,NULL,'wx_mshop_customer','4028d881436d514601436d5215ac0043','2015-11-26 14:14:00','admin','','UUID',NULL),
	('4028813a50faa03d0150fac31cbb0003','4444','4028d881436d514601436d5215ac0043','2015-11-12 16:15:02','admin','N','Y','Y','N',2,'3','single',0,'test_many','test_one','4028d881436d514601436d5215ac0043','2015-11-12 16:20:42','admin','','UUID',NULL),
	('4028813a50faa03d0150fac4e6a1000b','dddd','4028d881436d514601436d5215ac0043','2015-11-12 16:17:00','admin','N','Y','Y','N',3,'1','single',0,NULL,'test_many','4028d881436d514601436d5215ac0043','2015-11-12 16:20:40','admin','','UUID',NULL),
	('4028813a511f27c701511f30905c0001','多店版订单表','4028d881436d514601436d5215ac0043','2015-11-19 18:00:55','admin','N','Y','Y','N',1,'9','single',0,NULL,'weixin_mshop_order','4028d881436d514601436d5215ac0043','2015-11-23 18:12:33','admin','','UUID',NULL),
	('4028813a5127a71f015127b26baf0001','多店版评价表','4028d881436d514601436d5215ac0043','2015-11-21 09:39:43','admin','N','Y','Y','N',1,'2','single',0,NULL,'wx_mshop_evaluate','4028d881436d514601436d5215ac0043','2015-11-21 10:32:47','admin','','UUID',NULL),
	('4028813a52161e780152162891690001','店铺管理员','4028d881436d514601436d5215bc0046','2016-01-06 16:58:23','admin','N','Y','Y','N',1,'2','single',0,NULL,'wx_mshop_storeadmin','4028d881436d514601436d5215bc0046','2016-01-06 17:17:15','admin','','UUID',NULL),
	('402881e446676a060146677087880001','扩展接口管理','admin','2014-06-04 23:12:46','管理员','N','Y','Y','N',1,'2','single',0,NULL,'weixin_expandconfig','admin','2014-06-04 23:18:31','管理员',NULL,NULL,NULL),
	('402881e845c73cb00145c754450c0007','微信公众帐号信息','admin','2014-05-04 21:02:39','管理员','Y','Y','Y','N',1,'12','single',0,'weixin_shop_customer','weixin_account','4028d881436d514601436d5215ac0043','2015-09-24 16:25:26','admin',NULL,NULL,NULL),
	('402881e946f72f8e0146f74632010008','商品分类','4028d881436d514601436d5215ac0043','2014-07-02 21:31:51','admin','N','Y','Y','Y',1,'1','single',0,NULL,'WEIXIN_MALL_CATEGORY','4028d881436d514601436d5215ac0043','2014-07-02 21:45:35','admin','','UUID',NULL),
	('402881e94701b0bc014701b6ed380001','商品信息','4028d881436d514601436d5215ac0043','2014-07-04 22:11:11','admin','Y','Y','Y','N',1,'3','group',0,NULL,'weixin_shop_goods','4028d881436d514601436d5215ac0043','2014-07-04 22:23:37','admin','','UUID',NULL),
	('4028d881436d514601436d521928012a','订单主信息','admin','2014-01-07 23:28:53','管理员','N','Y','Y','N',2,'58','group',0,'jform_order_ticket,jform_order_customer','jform_order_main','4028d881436d514601436d5215ac0043','2015-09-17 11:58:49','admin',NULL,NULL,NULL),
	('4028d881436d514601436d52192d012b','请假单','admin','2014-01-07 23:28:53','管理员','N','Y','Y','N',1,'51','group',0,NULL,'jform_leave','admin','2014-01-19 10:08:17','管理员',NULL,NULL,NULL),
	('4028d881436d514601436d52192f012c','订单客户信息','admin','2014-01-07 23:28:53','管理员','Y','Y','Y','N',3,'16','single',0,NULL,'jform_order_customer','4028d881436d514601436d5215ac0043','2015-09-17 11:58:49','admin',NULL,NULL,NULL),
	('4028d881436d514601436d521931012d','订单机票信息','admin','2014-01-07 23:28:53','管理员','N','N','Y','N',3,'20','single',0,NULL,'jform_order_ticket',NULL,NULL,NULL,NULL,NULL,NULL),
	('4028d881436d514601436d521933012e','价格认证机构统计表','admin','2014-01-07 23:28:53','管理员','N','N','Y','N',1,'3','group',0,NULL,'jform_price1',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `cgform_head` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cgform_uploadfiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cgform_uploadfiles`;

CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ck_editor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ck_editor`;

CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ck_editor` WRITE;
/*!40000 ALTER TABLE `ck_editor` DISABLE KEYS */;

INSERT INTO `ck_editor` (`ID`, `CONTENTS`)
VALUES
	('4028d881436d514601436d5219250129',X'3C68746D6C3E3C686561643E3C7469746C653E3C2F7469746C653E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373272069643D276561737975695468656D65272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C7374796C6520747970653D27746578742F637373273E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A20D0C2CBCECCE53B636F6C6F723A20233333333B3C2F7374796C653E3C2F686561643E3C626F64793E3C6469763E3C703EB8BDBCFE32A3BA3C2F703E3C6831207374796C653D27746578742D616C69676E3A63656E746572273E3C7370616E207374796C653D27666F6E742D73697A653A32347078273E3C7374726F6E673EBCDBB8F1C8CFD6A4C8CBD4B1CDB3BCC6B1ED3C2F7374726F6E673E3C2F7370616E3E3C2F68313E3C703ECCEEB1A8B5A5CEBBA3A8B8C7D5C2A3A9A3BA3C696E707574206E616D653D276F72675F6E616D652720747970653D2774657874272076616C75653D27247B6F72675F6E616D653F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C703EB5A5CEBBB4FAC2EBBAC5A3BA3C696E707574206E616D653D276E756D2720747970653D2774657874272076616C75653D27247B6E756D3F69665F6578697374733F68746D6C7D27202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703BB5A5CEBBA3BAC8CBCCEE266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20B1A8C8D5C6DAA3BA266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20C4EA266E6273703B266E6273703B20D4C2266E6273703B266E6273703B20C8D53C2F703E3C666F726D20616374696F6E3D276367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465272069643D27666F726D6F626A27206D6574686F643D27706F737427206E616D653D27666F726D6F626A273E3C696E707574206E616D653D277461626C654E616D652720747970653D2768696464656E272076616C75653D27247B7461626C654E616D653F69665F6578697374733F68746D6C7D27202F3E203C696E707574206E616D653D2769642720747970653D2768696464656E272076616C75653D27247B69643F69665F6578697374733F68746D6C7D27202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2768696464656E27202F3E3C703E266E6273703B3C2F703E3C7461626C6520626F726465723D2731272063656C6C70616464696E673D2730272063656C6C73706163696E673D273027207374796C653D2777696474683A313031367078273E3C74626F64793E3C74723E3C746420726F777370616E3D2734273E3C703E266E6273703B3C2F703E3C703E266E6273703B3C2F703E3C703EBACFBCC63C2F703E3C703E266E6273703B3C2F703E3C2F74643E3C746420636F6C7370616E3D27362720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8CBCAFD3C2F703E3C2F74643E3C746420636F6C7370616E3D27352720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703ED1A7C0FA3C2F703E3C2F74643E3C746420636F6C7370616E3D27342720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8A1B5C3B5C4A3A8C9CFB8DAA3A9D6B4D2B5D7CAB8F13C2F703E3C2F74643E3C746420636F6C7370616E3D2734273E3C703ED7A8D2B5BCBCCAF5D6B0B3C63C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2734273E3C703EA3A8BEADBCC3CFB5C1D0A1A2B9A4B3CCCFB5C1D0A3A93C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2733273E3C703ED4DAB1E0C8CBD4B13C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6B8D3C3C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC1D9CAB128BDE8D3C329C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFD6D03C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB4F3D7A83C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB1BEBFC63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED1D0BEBFC9FA3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4CAA63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8B4BACB3C2F703E3C703EB2C3B6A8D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB3F5BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED6D0BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFBCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703EB1BEB5A5CEBB3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C74643E3C703EB3A4C6DA3C2F703E3C2F74643E3C74643E3C703EB6CCC6DA3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E41313C2F703E3C2F74643E3C74643E3C703E42313C2F703E3C2F74643E3C74643E3C703E42323C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E42333C2F703E3C2F74643E3C74643E3C703E42343C2F703E3C2F74643E3C74643E3C703E42353C2F703E3C2F74643E3C74643E3C703E43313C2F703E3C2F74643E3C74643E3C703E43323C2F703E3C2F74643E3C74643E3C703E43333C2F703E3C2F74643E3C74643E3C703E43343C2F703E3C2F74643E3C74643E3C703E43353C2F703E3C2F74643E3C74643E3C703E44313C2F703E3C2F74643E3C74643E3C703E44323C2F703E3C2F74643E3C74643E3C703E44333C2F703E3C2F74643E3C74643E3C703E44343C2F703E3C2F74643E3C74643E3C703E45313C2F703E3C2F74643E3C74643E3C703E45323C2F703E3C2F74643E3C74643E3C703E45333C2F703E3C2F74643E3C74643E3C703E45343C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E3C696E707574206E616D653D276131272073697A653D27342720747970653D2774657874272076616C75653D27247B61313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276231272073697A653D27342720747970653D2774657874272076616C75653D27247B62313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276232272073697A653D27342720747970653D2774657874272076616C75653D27247B62323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E3C696E707574206E616D653D276233272073697A653D27342720747970653D2774657874272076616C75653D27247B62333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276234272073697A653D27342720747970653D2774657874272076616C75653D27247B62343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276235272073697A653D27342720747970653D2774657874272076616C75653D27247B62353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276331272073697A653D27342720747970653D2774657874272076616C75653D27247B63313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276332272073697A653D27342720747970653D2774657874272076616C75653D27247B63323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276333272073697A653D27342720747970653D2774657874272076616C75653D27247B63333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276334272073697A653D27342720747970653D2774657874272076616C75653D27247B63343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276335272073697A653D27342720747970653D2774657874272076616C75653D27247B63353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276431272073697A653D27342720747970653D2774657874272076616C75653D27247B64313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276432272073697A653D27342720747970653D2774657874272076616C75653D27247B64323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276433272073697A653D27342720747970653D2774657874272076616C75653D27247B64333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276434272073697A653D27342720747970653D2774657874272076616C75653D27247B64343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276531272073697A653D27342720747970653D2774657874272076616C75653D27247B65313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276532272073697A653D27342720747970653D2774657874272076616C75653D27247B65323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276533272073697A653D27342720747970653D2774657874272076616C75653D27247B65333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276534272073697A653D27342720747970653D2774657874272076616C75653D27247B65343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D273230273E3C703E266E6273703B3C2F703E3C703ECCEEB1A8CBB5C3F7A3BA3C2F703E3C703ED2BBA1A2BACFBCC6A3A841A3A9A3BACCEEB1A8D6C1CDB3BCC6BDD8D6B9C6DAB5C4B1BEBBFAB9B9B5C4C8CBD4B1D7DCCAFDA1A33C2F703E3C703EB6FEA1A2C8CBCAFDA3BA3C2F703E3C703ED4DAB1E0C8CBD4B1A3BAB7D6B1F0B0B4D5D5BCDBB8F1C8CFD6A4BBFAB9B9B1E0D6C6C4DABCB0C6E4CBFCBEDFD3D0BCDBB8F1D6F7B9DCB2BFC3C5B1E0D6C6B5C4CAB5D3D0C8CBCAFDCCEEB1A8D4DA4231A1A24232C0B8C4DAA1A33C2F703E3C703EC6B8D3C3C8CBD4B1A3BAB0B4D5D5BEADBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4B2A2C7A9B6A9C8FDC4EAD2D4C9CFB5C4B9A4D7F7BACFCDACB5C4C8CBD4B1A3A84233A3A9A3BBD2D4BCB0C3BBD3D0BEADB9FDBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4C7A9B6A9BACFCDACC9D9D3DAC8FDC4EAB5C4C8CBD4B1A3A84234A3A9B7D6B1F0C0B4BDF8D0D0CDB3BCC6A1A33C2F703E3C703EC1D9CAB1A3A8BDE8D3C3A3A9C8CBD4B1A3A84235A3A9A3BACCD8D6B8CDE2C6B8B5C4C1D9CAB1B9A4A3ACBBF2D5DFB9A4D7F7B9D8CFB5B2BBD4DAB1BEB5A5CEBBC7D2CEDEB3A4C6DAC6B8D3C3BACFCDACB5C4BDE8B5F7C8CBD4B1B5C8A1A33C2F703E3C703EC8FDA1A2B1EDC4DAB8F7C0B8C4BFB9D8CFB53C2F703E3C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C2F666F726D3E3C2F6469763E3C2F626F64793E3C2F68746D6C3E');

/*!40000 ALTER TABLE `ck_editor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ck_finder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ck_finder`;

CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table doc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `doc`;

CREATE TABLE `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table jeecg_demo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_demo`;

CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_demo` WRITE;
/*!40000 ALTER TABLE `jeecg_demo` DISABLE KEYS */;

INSERT INTO `jeecg_demo` (`ID`, `AGE`, `BIRTHDAY`, `content`, `CREATE_TIME`, `DEP_ID`, `EMAIL`, `MOBILE_PHONE`, `OFFICE_PHONE`, `SALARY`, `SEX`, `status`, `USER_NAME`, `create_date`)
VALUES
	('4028d881436d514601436d521ad4015e',12,'2014-01-07 23:28:53',NULL,NULL,'123','demo@jeecg.com','13111111111','66666666',111111.00,'1',NULL,'小明',NULL);

/*!40000 ALTER TABLE `jeecg_demo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_demo_course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_demo_course`;

CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `teacher_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_demo_course` WRITE;
/*!40000 ALTER TABLE `jeecg_demo_course` DISABLE KEYS */;

INSERT INTO `jeecg_demo_course` (`ID`, `NAME`, `teacher_ID`)
VALUES
	('4028d881436d514601436d5219b0015b','海贼王','4028d881436d514601436d5219ae015a');

/*!40000 ALTER TABLE `jeecg_demo_course` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_demo_student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_demo_student`;

CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `COURSE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_demo_student` WRITE;
/*!40000 ALTER TABLE `jeecg_demo_student` DISABLE KEYS */;

INSERT INTO `jeecg_demo_student` (`ID`, `BIRTHDAY`, `NAME`, `SEX`, `COURSE_ID`)
VALUES
	('4028d881436d514601436d5219b4015c',NULL,'卓洛','0','4028d881436d514601436d5219b0015b'),
	('4028d881436d514601436d5219b7015d',NULL,'山治 ','0','4028d881436d514601436d5219b0015b');

/*!40000 ALTER TABLE `jeecg_demo_student` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_demo_teacher
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_demo_teacher`;

CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_demo_teacher` WRITE;
/*!40000 ALTER TABLE `jeecg_demo_teacher` DISABLE KEYS */;

INSERT INTO `jeecg_demo_teacher` (`ID`, `NAME`, `pic`)
VALUES
	('4028d881436d514601436d5219ae015a','路飞','upload/Teacher/pic3345280233.PNG');

/*!40000 ALTER TABLE `jeecg_demo_teacher` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_matter_bom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_matter_bom`;

CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `parent_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_matter_bom` WRITE;
/*!40000 ALTER TABLE `jeecg_matter_bom` DISABLE KEYS */;

INSERT INTO `jeecg_matter_bom` (`ID`, `address`, `code`, `name`, `price`, `productionDate`, `quantity`, `stock`, `unit`, `weight`, `parent_ID`)
VALUES
	('4028d881436d514601436d521ae40163','广东深圳','001','电脑',5000.000000,'2014-01-07 23:28:53',5,10,'台','100',NULL),
	('4028d881436d514601436d521ae70164','上海','001001','主板',800.000000,'2014-01-07 23:28:53',6,18,'个','60','4028d881436d514601436d521ae40163');

/*!40000 ALTER TABLE `jeecg_matter_bom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_minidao
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_minidao`;

CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table jeecg_order_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_order_custom`;

CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) DEFAULT NULL,
  `GOC_CONTENT` varchar(66) DEFAULT NULL,
  `GOC_CUS_NAME` varchar(16) DEFAULT NULL,
  `GOC_IDCARD` varchar(18) DEFAULT NULL,
  `GOC_PASSPORT_CODE` varchar(10) DEFAULT NULL,
  `GOC_SEX` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_order_custom` WRITE;
/*!40000 ALTER TABLE `jeecg_order_custom` DISABLE KEYS */;

INSERT INTO `jeecg_order_custom` (`ID`, `CREATE_DT`, `CRTUSER`, `CRTUSER_NAME`, `DEL_DT`, `DELFLAG`, `GO_ORDER_CODE`, `GOC_BUSS_CONTENT`, `GOC_CONTENT`, `GOC_CUS_NAME`, `GOC_IDCARD`, `GOC_PASSPORT_CODE`, `GOC_SEX`, `MODIFIER`, `MODIFIER_NAME`, `MODIFY_DT`)
VALUES
	('4028d881436d514601436d521ae20162',NULL,NULL,NULL,NULL,NULL,'11111AAA',NULL,NULL,'小明',NULL,NULL,'1',NULL,NULL,NULL);

/*!40000 ALTER TABLE `jeecg_order_custom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_order_main
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_order_main`;

CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ALL_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_CONTACT_NAME` varchar(16) DEFAULT NULL,
  `GO_CONTENT` varchar(66) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) DEFAULT NULL,
  `GO_RETURN_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_TELPHONE` varchar(11) DEFAULT NULL,
  `GODER_TYPE` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_order_main` WRITE;
/*!40000 ALTER TABLE `jeecg_order_main` DISABLE KEYS */;

INSERT INTO `jeecg_order_main` (`ID`, `CREATE_DT`, `CRTUSER`, `CRTUSER_NAME`, `DEL_DT`, `DELFLAG`, `GO_ALL_PRICE`, `GO_CONTACT_NAME`, `GO_CONTENT`, `GO_ORDER_CODE`, `GO_ORDER_COUNT`, `GO_RETURN_PRICE`, `GO_TELPHONE`, `GODER_TYPE`, `MODIFIER`, `MODIFIER_NAME`, `MODIFY_DT`, `USERTYPE`)
VALUES
	('4028d881436d514601436d521adb0160',NULL,NULL,NULL,NULL,NULL,1111111.00,'alex','别放辣椒','11111AAA',1,100.00,NULL,'1',NULL,NULL,NULL,'1');

/*!40000 ALTER TABLE `jeecg_order_main` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jeecg_order_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jeecg_order_product`;

CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) DEFAULT NULL,
  `GOP_COUNT` int(11) DEFAULT NULL,
  `GOP_ONE_PRICE` decimal(10,2) DEFAULT NULL,
  `GOP_PRODUCT_NAME` varchar(33) DEFAULT NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jeecg_order_product` WRITE;
/*!40000 ALTER TABLE `jeecg_order_product` DISABLE KEYS */;

INSERT INTO `jeecg_order_product` (`ID`, `CREATE_DT`, `CRTUSER`, `CRTUSER_NAME`, `DEL_DT`, `DELFLAG`, `GO_ORDER_CODE`, `GOP_CONTENT`, `GOP_COUNT`, `GOP_ONE_PRICE`, `GOP_PRODUCT_NAME`, `GOP_PRODUCT_TYPE`, `GOP_SUM_PRICE`, `MODIFIER`, `MODIFIER_NAME`, `MODIFY_DT`)
VALUES
	('4028d881436d514601436d521adf0161',NULL,NULL,NULL,NULL,NULL,'11111AAA',NULL,1,100.00,'最最美味的地锅鸡','1',100.00,NULL,NULL,NULL);

/*!40000 ALTER TABLE `jeecg_order_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jform_cgreport_head
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jform_cgreport_head`;

CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jform_cgreport_head` WRITE;
/*!40000 ALTER TABLE `jform_cgreport_head` DISABLE KEYS */;

INSERT INTO `jform_cgreport_head` (`ID`, `CGR_SQL`, `CODE`, `CONTENT`, `NAME`)
VALUES
	('402889f847666ae401476670bb72000a','select * from  weixin_cms_menu','A001','查询微网站栏目','查询栏目');

/*!40000 ALTER TABLE `jform_cgreport_head` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jform_cgreport_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jform_cgreport_item`;

CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) DEFAULT NULL,
  `S_MODE` varchar(10) DEFAULT NULL,
  `CGRHEAD_ID` varchar(36) DEFAULT NULL,
  `DICT_CODE` varchar(36) DEFAULT NULL,
  `FIELD_HREF` varchar(120) DEFAULT NULL,
  `FIELD_NAME` varchar(36) DEFAULT NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) DEFAULT NULL,
  `IS_SHOW` varchar(5) DEFAULT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `REPLACE_VA` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jform_cgreport_item` WRITE;
/*!40000 ALTER TABLE `jform_cgreport_item` DISABLE KEYS */;

INSERT INTO `jform_cgreport_item` (`ID`, `S_FLAG`, `S_MODE`, `CGRHEAD_ID`, `DICT_CODE`, `FIELD_HREF`, `FIELD_NAME`, `FIELD_TXT`, `FIELD_TYPE`, `IS_SHOW`, `ORDER_NUM`, `REPLACE_VA`)
VALUES
	('402889f847666ae401476670bb74000b','Y','single','402889f847666ae401476670bb72000a','','','ID','ID','String','Y',0,''),
	('402889f847666ae401476670bb78000c','Y','single','402889f847666ae401476670bb72000a','','','ACCOUNTID','ACCOUNTID','String','Y',1,''),
	('402889f847666ae401476670bb79000d','Y','single','402889f847666ae401476670bb72000a','','','CREATE_BY','CREATE_BY','String','Y',2,''),
	('402889f847666ae401476670bb7a000e','Y','single','402889f847666ae401476670bb72000a','','','CREATE_DATE','CREATE_DATE','String','Y',3,''),
	('402889f847666ae401476670bb7b000f','Y','single','402889f847666ae401476670bb72000a','','','CREATE_NAME','CREATE_NAME','String','Y',4,''),
	('402889f847666ae401476670bb7e0010','Y','single','402889f847666ae401476670bb72000a','','','IMAGE_HREF','IMAGE_HREF','String','Y',5,''),
	('402889f847666ae401476670bb7f0011','Y','single','402889f847666ae401476670bb72000a','','','IMAGE_NAME','IMAGE_NAME','String','Y',6,''),
	('402889f847666ae401476670bb800012','Y','single','402889f847666ae401476670bb72000a','','','NAME','NAME','String','Y',7,''),
	('402889f847666ae401476670bb810013','Y','single','402889f847666ae401476670bb72000a','','','TYPE','TYPE','String','Y',8,'');

/*!40000 ALTER TABLE `jform_cgreport_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jform_leave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jform_leave`;

CREATE TABLE `jform_leave` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '请假标题',
  `people` varchar(20) NOT NULL COMMENT '请假人',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `begindate` datetime NOT NULL COMMENT '请假开始时间',
  `enddate` datetime NOT NULL COMMENT '请假结束时间',
  `day_num` int(11) DEFAULT NULL COMMENT '请假天数',
  `hol_dept` varchar(32) NOT NULL COMMENT '所属部门',
  `hol_reson` varchar(255) NOT NULL COMMENT '请假原因',
  `dep_leader` varchar(20) NOT NULL COMMENT '部门审批人',
  `content` varchar(255) NOT NULL COMMENT '部门审批意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table jform_order_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jform_order_customer`;

CREATE TABLE `jform_order_customer` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '客户名',
  `money` double DEFAULT NULL COMMENT '单价',
  `sex` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `telphone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `fk_id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table jform_order_main
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jform_order_main`;

CREATE TABLE `jform_order_main` (
  `id` varchar(36) NOT NULL,
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double DEFAULT NULL COMMENT '订单金额',
  `content` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table jg_person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jg_person`;

CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CREATEDT` datetime DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jg_person` WRITE;
/*!40000 ALTER TABLE `jg_person` DISABLE KEYS */;

INSERT INTO `jg_person` (`ID`, `AGE`, `BIRTHDAY`, `CREATEDT`, `NAME`, `SALARY`)
VALUES
	('4028d881436d514601436d521ad9015f',10,'2014-01-07 23:28:53','2014-01-07 23:28:53','小红',1000.00);

/*!40000 ALTER TABLE `jg_person` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table optimistic_locking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `optimistic_locking`;

CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table t_finance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_finance`;

CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) DEFAULT NULL,
  `BUYMONEY` float DEFAULT NULL,
  `BUYPROJECTNO` varchar(255) DEFAULT NULL,
  `BUYPROJECTORG` varchar(255) DEFAULT NULL,
  `BUYUSE` varchar(255) DEFAULT NULL,
  `BUYYEAR` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COLLECTORG` varchar(255) DEFAULT NULL,
  `EXPENSEACCOUNT` varchar(255) DEFAULT NULL,
  `HAPPENYEAR` int(11) DEFAULT NULL,
  `MONEYAREA` varchar(255) DEFAULT NULL,
  `MONEYSOURCE` varchar(255) DEFAULT NULL,
  `MONEYTOTAL` float DEFAULT NULL,
  `MONEYUSE` varchar(255) DEFAULT NULL,
  `PAYTIME` datetime DEFAULT NULL,
  `ZBWNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_finance` WRITE;
/*!40000 ALTER TABLE `t_finance` DISABLE KEYS */;

INSERT INTO `t_finance` (`ID`, `APPROFILETYPE`, `BUYMONEY`, `BUYPROJECTNO`, `BUYPROJECTORG`, `BUYUSE`, `BUYYEAR`, `CATEGORY`, `COLLECTORG`, `EXPENSEACCOUNT`, `HAPPENYEAR`, `MONEYAREA`, `MONEYSOURCE`, `MONEYTOTAL`, `MONEYUSE`, `PAYTIME`, `ZBWNO`)
VALUES
	('402880e6478c6d8201478c72e8ff0008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('402880e6478c6d8201478c74a6000010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4028813a4ff30a9d014ff31bc2660004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('402881e547bb946e0147bb9834db0013',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `t_finance` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_finance_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_finance_files`;

CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table t_s_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_attachment`;

CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) DEFAULT NULL,
  `businesskey` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `extend` varchar(32) DEFAULT NULL,
  `note` longtext,
  `realpath` varchar(100) DEFAULT NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) DEFAULT NULL,
  `INFOTYPEID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_attachment` WRITE;
/*!40000 ALTER TABLE `t_s_attachment` DISABLE KEYS */;

INSERT INTO `t_s_attachment` (`ID`, `attachmentcontent`, `attachmenttitle`, `businesskey`, `createdate`, `extend`, `note`, `realpath`, `subclassname`, `swfpath`, `BUSENTITYNAME`, `INFOTYPEID`, `USERID`)
VALUES
	('297e7eb6469a4a8901469a5d96ea000d',NULL,'19343396_845725',NULL,'2014-06-14 20:32:43','jpg',NULL,'upload/files/20140614203243Hk6qikWt.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140614203243Hk6qikWt.swf',NULL,NULL,NULL),
	('297e7eb6469a4a8901469a5ebac20010',NULL,'1384480985636',NULL,'2014-06-14 20:33:57','jpg',NULL,'upload/files/20140614203357CLkYJbzQ.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140614203357CLkYJbzQ.swf',NULL,NULL,NULL),
	('297e7eb6469a9a0f01469a9b59d30001',NULL,'1384480985636',NULL,'2014-06-14 21:40:10','jpg',NULL,'upload/files/20140614214010COJ3srhx.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140614214010COJ3srhx.swf',NULL,NULL,NULL),
	('297e7eb6469a9a0f01469a9bc74b0003',NULL,'19343396_845725',NULL,'2014-06-14 21:40:38','jpg',NULL,'upload/files/20140614214038YRSIWjjs.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140614214038YRSIWjjs.swf',NULL,NULL,NULL),
	('402880e6477d04e001477d0a31040002',NULL,'jeecg_scott',NULL,'2014-07-28 20:55:25','jpg',NULL,'upload/files/20140728205525rUa7itrm.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728205525rUa7itrm.swf',NULL,NULL,NULL),
	('402880e6477d04e001477d0a53150005',NULL,'default',NULL,'2014-07-28 20:55:34','zip',NULL,'upload/files/20140728205534UfBLupzK.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728205534UfBLupzK.swf',NULL,NULL,NULL),
	('402880e6477d04e001477d0dfcd80009',NULL,'default',NULL,'2014-07-28 20:59:34','zip',NULL,'upload/files/20140728205934YVSrqmg8.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728205934YVSrqmg8.swf',NULL,NULL,NULL),
	('402880e6477d04e001477d0e143d000a',NULL,'jeecg_scott',NULL,'2014-07-28 20:59:40','jpg',NULL,'upload/files/20140728205940Y6Ly8de0.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728205940Y6Ly8de0.swf',NULL,NULL,NULL),
	('402880e6477d04e001477d0e1d31000d',NULL,'default',NULL,'2014-07-28 20:59:42','zip',NULL,'upload/files/20140728205942vS1giD8f.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728205942vS1giD8f.swf',NULL,NULL,NULL),
	('402880e6477d5c2601477d5d81de0001',NULL,'jeecg_scott',NULL,'2014-07-28 22:26:25','jpg',NULL,'upload/files/20140728222625KXeCCRAG.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728222625KXeCCRAG.swf',NULL,NULL,NULL),
	('402880ef51bd66070151bd79a85a0002',NULL,'27b1OOOPICcc',NULL,'2015-12-20 11:40:45','jpg',NULL,'upload/files/20151220114045Qp8jBzAE.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151220114045Qp8jBzAE.swf',NULL,NULL,NULL),
	('402880ef51e3e4080151e3e60e810001',NULL,'572b5943gx6CTIPa74438&690',NULL,'2015-12-27 22:44:43','jpeg',NULL,'upload/files/20151227224443ahBQsXi4.jpeg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151227224443ahBQsXi4.swf',NULL,NULL,NULL),
	('402880ef51e3fbc40151e3fd4f700001',NULL,'7af40ad162d9f2d36769e747a9ec8a136327cc1a',NULL,'2015-12-27 23:10:07','jpg',NULL,'upload/files/20151227231007tA2ZfSip.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151227231007tA2ZfSip.swf',NULL,NULL,NULL),
	('402880ef5221934f015221b30879000b',NULL,'示例图片_01',NULL,'2016-01-08 22:45:27','jpg',NULL,'upload/files/20160108224527mLvJVRui.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160108224527mLvJVRui.swf',NULL,NULL,NULL),
	('402880ef5229b448015229c587310007',NULL,'1355971003',NULL,'2016-01-10 12:22:37','jpg',NULL,'upload/files/20160110122237cwceLHm3.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110122237cwceLHm3.swf',NULL,NULL,NULL),
	('402880ef5229b448015229c5a2120008',NULL,'572b5943gx6CTIPa74438&690',NULL,'2016-01-10 12:22:43','jpeg',NULL,'upload/files/20160110122243wx7wHOiM.jpeg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110122243wx7wHOiM.swf',NULL,NULL,NULL),
	('402880ef5229b448015229d01bb5000c',NULL,'1e367fc24f2e063ded285ecfcacbbe81',NULL,'2016-01-10 12:34:10','jpg',NULL,'upload/files/20160110123410zZiRQxW8.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110123410zZiRQxW8.swf',NULL,NULL,NULL),
	('402880ef5229b448015229d97abd0015',NULL,'Bluehills',NULL,'2016-01-10 12:44:24','jpg',NULL,'upload/files/20160110124424Dj1wjHxg.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110124424Dj1wjHxg.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522a099aa3000a',NULL,'Bluehills',NULL,'2016-01-10 13:36:58','jpg',NULL,'upload/files/20160110133658jBavaDeu.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110133658jBavaDeu.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522a12b155001d',NULL,'Sunset',NULL,'2016-01-10 13:46:54','jpg',NULL,'upload/files/20160110134654ykZiPSTO.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110134654ykZiPSTO.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522a42247f004b',NULL,'Sunset',NULL,'2016-01-10 14:38:43','jpg',NULL,'upload/files/20160110143843SJqf9Qj4.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110143843SJqf9Qj4.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522a8e0def0050',NULL,'Sunset',NULL,'2016-01-10 16:01:38','jpg',NULL,'upload/files/20160110160138rBabEDCR.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110160138rBabEDCR.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522a92b7090055',NULL,'Sunset',NULL,'2016-01-10 16:06:44','jpg',NULL,'upload/files/20160110160644iccvPyIK.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110160644iccvPyIK.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522a945fc90059',NULL,'Sunset',NULL,'2016-01-10 16:08:32','jpg',NULL,'upload/files/20160110160832ahnWL1wQ.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110160832ahnWL1wQ.swf',NULL,NULL,NULL),
	('402880ef5229f49a01522aa11fc1005f',NULL,'Waterlilies',NULL,'2016-01-10 16:22:28','jpg',NULL,'upload/files/20160110162228BqKyzpNr.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20160110162228BqKyzpNr.swf',NULL,NULL,NULL),
	('4028813a4fed79b8014fed7aea1f0002',NULL,'示例图片_03',NULL,'2015-09-21 09:18:19','jpg',NULL,'upload/files/20150921091819OxLVvrfI.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150921091819OxLVvrfI.swf',NULL,NULL,NULL),
	('4028813a4ff30a9d014ff30e374e0001',NULL,'示例图片_01',NULL,'2015-09-22 11:17:19','jpg',NULL,'upload/files/20150922111719B1UfGqVk.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922111719B1UfGqVk.swf',NULL,NULL,NULL),
	('4028813a4ff30a9d014ff30e53a90002',NULL,'示例图片_02',NULL,'2015-09-22 11:17:26','jpg',NULL,'upload/files/20150922111726weUNskEi.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922111726weUNskEi.swf',NULL,NULL,NULL),
	('4028813a4ff30a9d014ff30e7d230003',NULL,'示例图片_03',NULL,'2015-09-22 11:17:37','jpg',NULL,'upload/files/20150922111737yfpST2HU.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922111737yfpST2HU.swf',NULL,NULL,NULL),
	('4028813a4ff30a9d014ff31bc2a90006',NULL,'示例图片_01',NULL,NULL,'jpg',NULL,'upload/files/201509221132061AIWTJPY.jpg',NULL,'upload/files/201509221132061AIWTJPY.swf',NULL,NULL,NULL),
	('4028813a4ff30a9d014ff31bc2e90007',NULL,'示例图片_02',NULL,NULL,'jpg',NULL,'upload/files/20150922113207mSCkg29v.jpg',NULL,'upload/files/20150922113207mSCkg29v.swf',NULL,NULL,NULL),
	('4028813a4ff30a9d014ff31bc3440008',NULL,'示例图片_03',NULL,NULL,'jpg',NULL,'upload/files/20150922113207xtQWdWGg.jpg',NULL,'upload/files/20150922113207xtQWdWGg.swf',NULL,NULL,NULL),
	('4028813a4ff3c659014ff3dbb9710001',NULL,'示例图片_01',NULL,'2015-09-22 15:01:47','jpg',NULL,'upload/files/20150922150147wYKEhQkz.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922150147wYKEhQkz.swf',NULL,NULL,NULL),
	('4028813a4ff3dc88014ff3e0698c0001',NULL,'示例图片_01',NULL,'2015-09-22 15:06:54','jpg',NULL,'upload/files/20150922150654kUsgVuGy.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922150654kUsgVuGy.swf',NULL,NULL,NULL),
	('4028813a4ff3e4a8014ff3e7e0620001',NULL,'示例图片_03',NULL,'2015-09-22 15:15:03','jpg',NULL,'upload/files/20150922151503dAOg3BJp.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922151503dAOg3BJp.swf',NULL,NULL,NULL),
	('4028813a4ff3e4a8014ff3eb17e40002',NULL,'示例图片_01',NULL,'2015-09-22 15:18:34','jpg',NULL,'upload/files/20150922151834ghN8eYpn.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922151834ghN8eYpn.swf',NULL,NULL,NULL),
	('4028813a4ff3e4a8014ff3ee3b440003',NULL,'示例图片_03',NULL,'2015-09-22 15:22:00','jpg',NULL,'upload/files/20150922152200CmTNevEi.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922152200CmTNevEi.swf',NULL,NULL,NULL),
	('4028813a4ff3ff72014ff3ffff130001',NULL,'示例图片_03',NULL,'2015-09-22 15:41:24','jpg',NULL,'upload/files/20150922154124KNDgqc4t.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922154124KNDgqc4t.swf',NULL,NULL,NULL),
	('4028813a4ff3ff72014ff40482dd0004',NULL,'示例图片_01',NULL,'2015-09-22 15:46:20','jpg',NULL,'upload/files/20150922154620dF5pJ61v.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922154620dF5pJ61v.swf',NULL,NULL,NULL),
	('4028813a4ff40908014ff409951a0001',NULL,'示例图片_03',NULL,'2015-09-22 15:51:52','jpg',NULL,'upload/files/20150922155152zWEn7kEP.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922155152zWEn7kEP.swf',NULL,NULL,NULL),
	('4028813a4ff40cd9014ff40d64280001',NULL,'示例图片_03',NULL,'2015-09-22 15:56:02','jpg',NULL,'upload/files/20150922155602bRNWweNq.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922155602bRNWweNq.swf',NULL,NULL,NULL),
	('4028813a4ff41006014ff4107b6b0001',NULL,'示例图片_02',NULL,'2015-09-22 15:59:25','jpg',NULL,'upload/files/20150922155925uCA557qU.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150922155925uCA557qU.swf',NULL,NULL,NULL),
	('4028813a4ff42bd0014ff42ccc720001',NULL,'示例图片_02',NULL,'2015-09-22 16:30:20','jpg',NULL,'upload/files/201509221630203gMR8ajC.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201509221630203gMR8ajC.swf',NULL,NULL,NULL),
	('4028813a4ff8ac4b014ff8f198ec0006',NULL,'示例图片_02',NULL,'2015-09-23 14:43:47','jpg',NULL,'upload/files/20150923144347WhWiPCk2.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150923144347WhWiPCk2.swf',NULL,NULL,NULL),
	('4028813a4ff8ac4b014ff8f2f0d4000a',NULL,'示例图片_02',NULL,'2015-09-23 14:45:15','jpg',NULL,'upload/files/201509231445153jsLaAIr.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201509231445153jsLaAIr.swf',NULL,NULL,NULL),
	('4028813a4ff8ac4b014ff90b357a0019',NULL,'示例图片_03',NULL,'2015-09-23 15:11:45','jpg',NULL,'upload/files/20150923151145zRyiU33w.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150923151145zRyiU33w.swf',NULL,NULL,NULL),
	('4028813a500247fa0150027d95c00006',NULL,'示例图片_03',NULL,'2015-09-25 11:13:16','jpg',NULL,'upload/files/20150925111316JGa6faua.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925111316JGa6faua.swf',NULL,NULL,NULL),
	('4028813a5002afe9015002bad4f70001',NULL,'示例图片_03',NULL,'2015-09-25 12:20:10','jpg',NULL,'upload/files/20150925122010DsAHC72Z.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925122010DsAHC72Z.swf',NULL,NULL,NULL),
	('4028813a5002afe9015002c188df0002',NULL,'示例图片_01',NULL,'2015-09-25 12:27:29','jpg',NULL,'upload/files/20150925122729JLTzkWH9.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925122729JLTzkWH9.swf',NULL,NULL,NULL),
	('4028813a5002cc78015002defc140004',NULL,'示例图片_03',NULL,'2015-09-25 12:59:39','jpg',NULL,'upload/files/201509251259392QUuDE4E.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201509251259392QUuDE4E.swf',NULL,NULL,NULL),
	('4028813a500335d101500336afd60003',NULL,'示例图片_03',NULL,'2015-09-25 14:35:27','jpg',NULL,'upload/files/20150925143527REr6Z9be.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925143527REr6Z9be.swf',NULL,NULL,NULL),
	('4028813a500335d101500336eea60006',NULL,'示例图片_03',NULL,'2015-09-25 14:35:43','jpg',NULL,'upload/files/20150925143543M5zQAFHe.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925143543M5zQAFHe.swf',NULL,NULL,NULL),
	('4028813a500349510150034b92ac0006',NULL,'ad1',NULL,'2015-09-25 14:58:15','jpg',NULL,'upload/files/20150925145815fx5SBCmG.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925145815fx5SBCmG.swf',NULL,NULL,NULL),
	('4028813a500349510150034c068c0009',NULL,'ad2',NULL,'2015-09-25 14:58:45','jpg',NULL,'upload/files/201509251458459rTdCrqP.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201509251458459rTdCrqP.swf',NULL,NULL,NULL),
	('4028813a500349510150034c5e1c000c',NULL,'ad3',NULL,'2015-09-25 14:59:07','jpg',NULL,'upload/files/20150925145907fikans5O.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925145907fikans5O.swf',NULL,NULL,NULL),
	('4028813a500349510150034ccab5000f',NULL,'ad4',NULL,'2015-09-25 14:59:35','jpg',NULL,'upload/files/20150925145935v09wZLOY.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925145935v09wZLOY.swf',NULL,NULL,NULL),
	('4028813a500349510150034d0cc90012',NULL,'ad5',NULL,'2015-09-25 14:59:52','jpg',NULL,'upload/files/20150925145952Zhuk3CQI.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150925145952Zhuk3CQI.swf',NULL,NULL,NULL),
	('4028813a500742e801500744a1880006',NULL,'20150925145815fx5SBCmG',NULL,'2015-09-26 09:29:09','jpg',NULL,'upload/files/20150926092909XDEYizXe.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150926092909XDEYizXe.swf',NULL,NULL,NULL),
	('4028813a500746280150074697c20001',NULL,'20150925145815fx5SBCmG',NULL,'2015-09-26 09:31:18','jpg',NULL,'upload/files/2015092609311805gJmUYg.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/2015092609311805gJmUYg.swf',NULL,NULL,NULL),
	('4028813a5007462801500746c78b0004',NULL,'20150925145815fx5SBCmG',NULL,'2015-09-26 09:31:30','jpg',NULL,'upload/files/20150926093130Ur7Dz3Km.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150926093130Ur7Dz3Km.swf',NULL,NULL,NULL),
	('4028813a501177bb0150117d7c120002',NULL,'20150925145815fx5SBCmG',NULL,'2015-09-28 09:07:27','jpg',NULL,'upload/files/20150928090727j8v7UASa.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150928090727j8v7UASa.swf',NULL,NULL,NULL),
	('4028813a501177bb0150117dda9d0005',NULL,'20150925145907fikans5O',NULL,'2015-09-28 09:07:52','jpg',NULL,'upload/files/20150928090752xyYVkDS7.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150928090752xyYVkDS7.swf',NULL,NULL,NULL),
	('4028813a501177bb0150117e2f880008',NULL,'20150925145935v09wZLOY',NULL,'2015-09-28 09:08:13','jpg',NULL,'upload/files/20150928090813HG2e6CSb.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150928090813HG2e6CSb.swf',NULL,NULL,NULL),
	('4028813a501177bb0150117e68cb000b',NULL,'20150925145952Zhuk3CQI',NULL,'2015-09-28 09:08:28','jpg',NULL,'upload/files/20150928090828pS0gGIOj.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150928090828pS0gGIOj.swf',NULL,NULL,NULL),
	('4028813a501177bb0150117ea080000e',NULL,'201509251458459rTdCrqP',NULL,'2015-09-28 09:08:42','jpg',NULL,'upload/files/20150928090842cUGFqggO.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150928090842cUGFqggO.swf',NULL,NULL,NULL),
	('4028813a501c336101501c3975fd0001',NULL,'6_thumb_G_1381081160153',NULL,'2015-09-30 11:08:59','jpg',NULL,'upload/files/20150930110859awdC4pxS.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150930110859awdC4pxS.swf',NULL,NULL,NULL),
	('4028813a501cdbc101501cdf21da0001',NULL,'8_P_1381081330534',NULL,'2015-09-30 14:09:56','jpg',NULL,'upload/files/20150930140956ViRtx9OV.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20150930140956ViRtx9OV.swf',NULL,NULL,NULL),
	('4028813a505ba13d01505ba813880001',NULL,'20150928090727j8v7UASa',NULL,'2015-10-12 18:45:53','jpg',NULL,'upload/files/201510121845531WUH0LVx.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201510121845531WUH0LVx.swf',NULL,NULL,NULL),
	('4028813a505ba13d01505baa7e170002',NULL,'20150928090828pS0gGIOj',NULL,'2015-10-12 18:48:31','jpg',NULL,'upload/files/20151012184831NgsGZcJF.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151012184831NgsGZcJF.swf',NULL,NULL,NULL),
	('4028813a505ba13d01505bad1aaa0004',NULL,'20150928090842cUGFqggO',NULL,'2015-10-12 18:51:22','jpg',NULL,'upload/files/20151012185122LG9gUnE3.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151012185122LG9gUnE3.swf',NULL,NULL,NULL),
	('4028813a505bb38d01505bb947390001',NULL,'20150928090828pS0gGIOj',NULL,'2015-10-12 19:04:40','jpg',NULL,'upload/files/20151012190440PGVJRaAZ.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151012190440PGVJRaAZ.swf',NULL,NULL,NULL),
	('4028813a505bb38d01505bba13f40002',NULL,'20150928090842cUGFqggO',NULL,'2015-10-12 19:05:32','jpg',NULL,'upload/files/20151012190532bz2rBPeF.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151012190532bz2rBPeF.swf',NULL,NULL,NULL),
	('4028813a505bbd2a01505bbd90d10001',NULL,'20150928090842cUGFqggO',NULL,'2015-10-12 19:09:21','jpg',NULL,'upload/files/20151012190921hRsE72T2.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151012190921hRsE72T2.swf',NULL,NULL,NULL),
	('4028813a505ea96701505eaf054e0001',NULL,'20150928090813HG2e6CSb',NULL,'2015-10-13 08:52:19','jpg',NULL,'upload/files/20151013085219Hg6hDp1T.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013085219Hg6hDp1T.swf',NULL,NULL,NULL),
	('4028813a505ea96701505eb70f640004',NULL,'20150928090828pS0gGIOj',NULL,'2015-10-13 09:01:06','jpg',NULL,'upload/files/20151013090106fHVfcypM.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013090106fHVfcypM.swf',NULL,NULL,NULL),
	('4028813a505ea96701505eb85ba70007',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:02:31','jpg',NULL,'upload/files/201510130902319DIbMLCM.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201510130902319DIbMLCM.swf',NULL,NULL,NULL),
	('4028813a505ea96701505eba0f89000d',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:04:23','jpg',NULL,'upload/files/201510130904239uxmMyWF.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201510130904239uxmMyWF.swf',NULL,NULL,NULL),
	('4028813a505ea96701505eba4013000f',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:04:35','jpg',NULL,'upload/files/20151013090435kAvEjrbQ.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013090435kAvEjrbQ.swf',NULL,NULL,NULL),
	('4028813a505ec38701505ec3efc70001',NULL,'20150928090828pS0gGIOj',NULL,'2015-10-13 09:15:10','jpg',NULL,'upload/files/20151013091510UjD5EDp7.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091510UjD5EDp7.swf',NULL,NULL,NULL),
	('4028813a505ec48801505ec4f3490001',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:16:17','jpg',NULL,'upload/files/20151013091617cUIsLGME.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091617cUIsLGME.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec650bd0001',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:17:46','jpg',NULL,'upload/files/20151013091746iuTLswr0.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091746iuTLswr0.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec674db0004',NULL,'20150928090813HG2e6CSb',NULL,'2015-10-13 09:17:55','jpg',NULL,'upload/files/20151013091755Kj86NEpQ.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091755Kj86NEpQ.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec690530007',NULL,'20150928090828pS0gGIOj',NULL,'2015-10-13 09:18:02','jpg',NULL,'upload/files/20151013091802uzqp5hOY.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091802uzqp5hOY.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec6a9c5000a',NULL,'20150928090813HG2e6CSb',NULL,'2015-10-13 09:18:09','jpg',NULL,'upload/files/2015101309180979QAZiAT.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/2015101309180979QAZiAT.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec6c098000d',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:18:15','jpg',NULL,'upload/files/20151013091815GBuWsBSV.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091815GBuWsBSV.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec6e7050010',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:18:25','jpg',NULL,'upload/files/20151013091825tqK6uZRp.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013091825tqK6uZRp.swf',NULL,NULL,NULL),
	('4028813a505ec5c801505ec70c900012',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:18:34','jpg',NULL,'upload/files/201510130918344BLKtNiK.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201510130918344BLKtNiK.swf',NULL,NULL,NULL),
	('4028813a505ec85301505ec8db3d0001',NULL,'20150928090842cUGFqggO',NULL,'2015-10-13 09:20:33','jpg',NULL,'upload/files/20151013092033AC1QJwd8.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151013092033AC1QJwd8.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ec370330005',NULL,'IMG_0503',NULL,'2015-10-19 14:22:28','jpg',NULL,'upload/files/20151019142228J0ZNaPS3.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019142228J0ZNaPS3.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ecaccae0006',NULL,'IMG_0503',NULL,'2015-10-19 14:30:31','jpg',NULL,'upload/files/20151019143031I8H1weWY.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019143031I8H1weWY.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ecbf5f10007',NULL,'IMG_0503',NULL,'2015-10-19 14:31:47','jpg',NULL,'upload/files/20151019143147taXCWnYq.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019143147taXCWnYq.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ece0a730008',NULL,'0',NULL,'2015-10-19 14:34:03','png',NULL,'upload/files/20151019143403grWatbx6.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019143403grWatbx6.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ecfa0d40009',NULL,'IMG_0503',NULL,'2015-10-19 14:35:47','jpg',NULL,'upload/files/20151019143547hmHatTND.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019143547hmHatTND.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ed0840d000a',NULL,'0',NULL,'2015-10-19 14:36:45','png',NULL,'upload/files/20151019143645kczDzX7D.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019143645kczDzX7D.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ed30110000b',NULL,'0',NULL,'2015-10-19 14:39:29','png',NULL,'upload/files/20151019143929xMFpIS0z.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019143929xMFpIS0z.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507ed93b9f000c',NULL,'IMG_0503',NULL,'2015-10-19 14:46:17','jpg',NULL,'upload/files/20151019144617EU7u6i87.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019144617EU7u6i87.swf',NULL,NULL,NULL),
	('4028813a507df2bb01507eeeb589000d',NULL,'0',NULL,'2015-10-19 15:09:44','png',NULL,'upload/files/20151019150944WBhIaqIU.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019150944WBhIaqIU.swf',NULL,NULL,NULL),
	('4028813a507f235f01507f24642c0001',NULL,'IMG_0503',NULL,'2015-10-19 16:08:22','jpg',NULL,'upload/files/20151019160822BVFfFix9.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151019160822BVFfFix9.swf',NULL,NULL,NULL),
	('4028813a508445930150844aab3d0001',NULL,'IMG_0503',NULL,'2015-10-20 16:08:17','jpg',NULL,'upload/files/20151020160817tb2S2WZi.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151020160817tb2S2WZi.swf',NULL,NULL,NULL),
	('4028813a508d2e7401508d2f66450006',NULL,'20150928090752xyYVkDS7',NULL,'2015-10-22 09:35:05','jpg',NULL,'upload/files/201510220935055jnkUwmx.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201510220935055jnkUwmx.swf',NULL,NULL,NULL),
	('4028813a508d2e7401508d2fb3ae0009',NULL,'20150928090828pS0gGIOj',NULL,'2015-10-22 09:35:25','jpg',NULL,'upload/files/20151022093525jV3rAC4s.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022093525jV3rAC4s.swf',NULL,NULL,NULL),
	('4028813a508d2e7401508d2fee23000c',NULL,'20150928090842cUGFqggO',NULL,'2015-10-22 09:35:40','jpg',NULL,'upload/files/20151022093540EnrK0wtj.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022093540EnrK0wtj.swf',NULL,NULL,NULL),
	('4028813a508d983201508da20e760004',NULL,'u=3712350963,1434452764&fm=58&s=527410D7DCB4BA90408A6FEE0300502E',NULL,'2015-10-22 11:40:19','jpg',NULL,'upload/files/2015102211401985fwTjhu.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/2015102211401985fwTjhu.swf',NULL,NULL,NULL),
	('4028813a508da3e301508da673450001',NULL,'u=3712350963,1434452764&fm=58&s=527410D7DCB4BA90408A6FEE0300502E',NULL,'2015-10-22 11:45:07','jpg',NULL,'upload/files/20151022114507BeA2SKr0.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022114507BeA2SKr0.swf',NULL,NULL,NULL),
	('4028813a508da3e301508da92bc20004',NULL,'e46fb860c31553eee65575196b63eff1',NULL,'2015-10-22 11:48:05','jpg',NULL,'upload/files/20151022114805YO37dDLc.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022114805YO37dDLc.swf',NULL,NULL,NULL),
	('4028813a508da3e301508da9f4c00009',NULL,'thumb',NULL,'2015-10-22 11:48:57','jpg',NULL,'upload/files/20151022114857EIwgyLUv.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022114857EIwgyLUv.swf',NULL,NULL,NULL),
	('4028813a508da3e301508dac36d7000e',NULL,'7205c66bf023c379e29ee5bff87d54ac',NULL,'2015-10-22 11:51:25','png',NULL,'upload/files/20151022115125NC99VF6Y.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022115125NC99VF6Y.swf',NULL,NULL,NULL),
	('4028813a508da3e301508dadab780011',NULL,'u=4187453959,2145820359&fm=15&gp=0',NULL,'2015-10-22 11:53:00','jpg',NULL,'upload/files/20151022115300RmXBWKGh.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151022115300RmXBWKGh.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd0ab500007',NULL,'icon05',NULL,'2015-11-25 16:44:24','png',NULL,'upload/files/20151125164424mXGkUgVj.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125164424mXGkUgVj.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd14796000a',NULL,'icon06',NULL,'2015-11-25 16:45:04','png',NULL,'upload/files/20151125164504gstsSRiU.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125164504gstsSRiU.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd1dfc1000d',NULL,'icon07',NULL,'2015-11-25 16:45:43','png',NULL,'upload/files/20151125164543P1Ny78Mt.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125164543P1Ny78Mt.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd25e740010',NULL,'icon08',NULL,'2015-11-25 16:46:15','png',NULL,'upload/files/20151125164615P7a4yey4.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125164615P7a4yey4.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd44a500013',NULL,'icon09',NULL,'2015-11-25 16:48:21','png',NULL,'upload/files/20151125164821LfM5eR4J.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125164821LfM5eR4J.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd4dfc50016',NULL,'icon14',NULL,'2015-11-25 16:48:59','png',NULL,'upload/files/201511251648593U3LseT5.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201511251648593U3LseT5.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd5bb620019',NULL,'icon15',NULL,'2015-11-25 16:49:56','png',NULL,'upload/files/20151125164956P2zetqOs.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125164956P2zetqOs.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd62118001c',NULL,'icon07',NULL,'2015-11-25 16:50:22','png',NULL,'upload/files/20151125165022eHHbgf8B.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125165022eHHbgf8B.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd7005d001f',NULL,'icon06',NULL,'2015-11-25 16:51:19','png',NULL,'upload/files/20151125165119FsT5YveT.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151125165119FsT5YveT.swf',NULL,NULL,NULL),
	('4028813a513dbb7f01513dd7c0290022',NULL,'icon05',NULL,'2015-11-25 16:52:08','png',NULL,'upload/files/201511251652088F3G9DUK.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201511251652088F3G9DUK.swf',NULL,NULL,NULL),
	('4028813a51f6d1b80151f77bca0b0007',NULL,'banner2',NULL,'2015-12-31 18:01:03','jpg',NULL,'upload/files/20151231180103PaeTPhu7.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20151231180103PaeTPhu7.swf',NULL,NULL,NULL),
	('402881e446394419014639453ce90002',NULL,'19343396_845725',NULL,'2014-05-27 00:02:57','jpg',NULL,'upload/files/20140527000257Q4m5Y6eh.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140527000257Q4m5Y6eh.swf',NULL,NULL,NULL),
	('402881e4463cc88701463ccef5340001',NULL,'19343396_845725',NULL,'2014-05-27 16:32:14','jpg',NULL,'upload/files/20140527163214CKTFLZIC.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140527163214CKTFLZIC.swf',NULL,NULL,NULL),
	('402881e44643207c01464333b1f9000c',NULL,'1384480985636',NULL,'2014-05-28 22:19:59','jpg',NULL,'upload/files/20140528221959CZ99E1i2.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140528221959CZ99E1i2.swf',NULL,NULL,NULL),
	('402881e4464381350146438691940002',NULL,'1384480985636',NULL,'2014-05-28 23:50:30','jpg',NULL,'upload/files/20140528235031DMUhg2PP.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140528235031DMUhg2PP.swf',NULL,NULL,NULL),
	('402881e44643813501464389b02a000b',NULL,'1384480985636',NULL,'2014-05-28 23:53:55','jpg',NULL,'upload/files/20140528235355miw0YqCA.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140528235355miw0YqCA.swf',NULL,NULL,NULL),
	('402881e44643a1cd014643a510060003',NULL,'19343396_845725',NULL,'2014-05-29 00:23:49','jpg',NULL,'upload/files/20140529002349G6XE4cA2.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140529002349G6XE4cA2.swf',NULL,NULL,NULL),
	('402881e44643a1cd014643a55d6f0006',NULL,'1384480985636',NULL,'2014-05-29 00:24:09','jpg',NULL,'upload/files/20140529002409iN0ffyA8.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140529002409iN0ffyA8.swf',NULL,NULL,NULL),
	('402881e44695183a014695210478000f',NULL,'6e061d950a7b020896cc3c1162d9f2d3572cc83d',NULL,'2014-06-13 20:08:27','jpg',NULL,'upload/files/20140613200827S3Ft6XCD.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613200827S3Ft6XCD.swf',NULL,NULL,NULL),
	('402881e44695183a0146952144320012',NULL,'d1f3d003big',NULL,'2014-06-13 20:08:43','jpg',NULL,'upload/files/20140613200843IviG7AmD.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613200843IviG7AmD.swf',NULL,NULL,NULL),
	('402881e44695183a0146952187bc0015',NULL,'1253192_135516023956_2',NULL,'2014-06-13 20:09:01','jpg',NULL,'upload/files/20140613200901Ojk0MGav.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613200901Ojk0MGav.swf',NULL,NULL,NULL),
	('402881e44695183a01469522f1ed0018',NULL,'d1f3d003big',NULL,'2014-06-13 20:10:33','jpg',NULL,'upload/files/20140613201033crByRcxc.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613201033crByRcxc.swf',NULL,NULL,NULL),
	('402881e44695183a01469523431e001b',NULL,'6e061d950a7b020896cc3c1162d9f2d3572cc83d',NULL,'2014-06-13 20:10:54','jpg',NULL,'upload/files/20140613201054g0kYQE93.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613201054g0kYQE93.swf',NULL,NULL,NULL),
	('402881e44695183a01469523eb7f001e',NULL,'1253192_135516023956_2',NULL,'2014-06-13 20:11:37','jpg',NULL,'upload/files/20140613201137iG8QIvk5.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613201137iG8QIvk5.swf',NULL,NULL,NULL),
	('402881e44695183a0146952422130021',NULL,'ADIDAS',NULL,'2014-06-13 20:11:51','jpg',NULL,'upload/files/201406132011519hkg5QtC.jpg','jeecg.system.pojo.base.TSDocument','upload/files/201406132011519hkg5QtC.swf',NULL,NULL,NULL),
	('402881e446955c7c014695970aeb0014',NULL,'duote_07_10-55-22',NULL,'2014-06-13 22:17:22','jpg',NULL,'upload/files/20140613221722NSivMHPF.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613221722NSivMHPF.swf',NULL,NULL,NULL),
	('402881e446955c7c01469597394f0016',NULL,'duote_07_10-55-22',NULL,'2014-06-13 22:17:34','jpg',NULL,'upload/files/20140613221734ZEujKDpc.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613221734ZEujKDpc.swf',NULL,NULL,NULL),
	('402881e446955c7c0146959757810018',NULL,'duote_07_10-55-22',NULL,'2014-06-13 22:17:42','jpg',NULL,'upload/files/20140613221742gfNHuIR8.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613221742gfNHuIR8.swf',NULL,NULL,NULL),
	('402881e446955c7c014695977560001a',NULL,'duote_07_10-55-22',NULL,'2014-06-13 22:17:49','jpg',NULL,'upload/files/20140613221749dsYZWnuE.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613221749dsYZWnuE.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a1de0a001d',NULL,'537f1f63dd1c9',NULL,'2014-06-13 22:29:11','jpg',NULL,'upload/files/20140613222911w09Nh7qi.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613222911w09Nh7qi.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a38b470020',NULL,'537f1f74d031c',NULL,'2014-06-13 22:31:01','jpg',NULL,'upload/files/2014061322310112yaMHm6.jpg','jeecg.system.pojo.base.TSDocument','upload/files/2014061322310112yaMHm6.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a3cdea0022',NULL,'537f1f86602b3',NULL,'2014-06-13 22:31:18','jpg',NULL,'upload/files/20140613223118fWHj2S0v.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613223118fWHj2S0v.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a4383a0024',NULL,'537f1f98d6f42',NULL,'2014-06-13 22:31:45','jpg',NULL,'upload/files/201406132231453VVP7RXR.jpg','jeecg.system.pojo.base.TSDocument','upload/files/201406132231453VVP7RXR.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a4913b0026',NULL,'537f1faf595dd',NULL,'2014-06-13 22:32:08','jpg',NULL,'upload/files/20140613223208gwvPwwpZ.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613223208gwvPwwpZ.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a4dda10027',NULL,'537f1faf595dd',NULL,'2014-06-13 22:32:28','jpg',NULL,'upload/files/201406132232281L92gsCP.jpg','jeecg.system.pojo.base.TSDocument','upload/files/201406132232281L92gsCP.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a726df0028',NULL,'537f1faf595dd',NULL,'2014-06-13 22:34:58','jpg',NULL,'upload/files/201406132234583cgLyGHg.jpg','jeecg.system.pojo.base.TSDocument','upload/files/201406132234583cgLyGHg.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a7705a002b',NULL,'537f1ca3cd562',NULL,'2014-06-13 22:35:16','jpg',NULL,'upload/files/20140613223516i3wMpi1u.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613223516i3wMpi1u.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a7b814002e',NULL,'537f1cb75c597',NULL,'2014-06-13 22:35:35','jpg',NULL,'upload/files/20140613223535gu4iUrA4.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613223535gu4iUrA4.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a7ecf10031',NULL,'537f1fc8d750b',NULL,'2014-06-13 22:35:48','jpg',NULL,'upload/files/20140613223548eQq5swwP.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613223548eQq5swwP.swf',NULL,NULL,NULL),
	('402881e446955c7c014695a831d70034',NULL,'537f1fdba507f',NULL,'2014-06-13 22:36:06','jpg',NULL,'upload/files/20140613223606Lfh0WaQd.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613223606Lfh0WaQd.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695ed3bdc0001',NULL,'2385844_083138053_2',NULL,'2014-06-13 23:51:30','jpg',NULL,'upload/files/20140613235131snYOuQDL.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235131snYOuQDL.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695ed79fa0003',NULL,'1384480985636',NULL,'2014-06-13 23:51:46','jpg',NULL,'upload/files/20140613235146eEgyESpy.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235146eEgyESpy.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695ef476c0005',NULL,'19343396_845725',NULL,'2014-06-13 23:53:45','jpg',NULL,'upload/files/20140613235345vGK3pfjC.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235345vGK3pfjC.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f2c6280007',NULL,'537f1f63dd1c9',NULL,'2014-06-13 23:57:34','jpg',NULL,'upload/files/201406132357343zuaHgX4.jpg','jeecg.system.pojo.base.TSDocument','upload/files/201406132357343zuaHgX4.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f3176d0009',NULL,'537f1f86602b3',NULL,'2014-06-13 23:57:54','jpg',NULL,'upload/files/20140613235754hLRC87rF.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235754hLRC87rF.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f339a7000b',NULL,'537f1f74d031c',NULL,'2014-06-13 23:58:03','jpg',NULL,'upload/files/201406132358039IpFSyet.jpg','jeecg.system.pojo.base.TSDocument','upload/files/201406132358039IpFSyet.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f3a3b3000d',NULL,'537f1f98d6f42',NULL,'2014-06-13 23:58:30','jpg',NULL,'upload/files/20140613235830M96wj4Lr.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235830M96wj4Lr.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f3f89f000f',NULL,'537f1faf595dd',NULL,'2014-06-13 23:58:52','jpg',NULL,'upload/files/20140613235852gBTueAWO.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235852gBTueAWO.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f443990011',NULL,'537f1ca3cd562',NULL,'2014-06-13 23:59:11','jpg',NULL,'upload/files/20140613235911chsAs0Md.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235911chsAs0Md.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f45e1a0013',NULL,'537f1cb75c597',NULL,'2014-06-13 23:59:18','jpg',NULL,'upload/files/20140613235918OA8vt546.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235918OA8vt546.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f494290015',NULL,'537f1fc8d750b',NULL,'2014-06-13 23:59:32','jpg',NULL,'upload/files/20140613235932htqZFtCs.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235932htqZFtCs.swf',NULL,NULL,NULL),
	('402881e44695ebe3014695f4d5570017',NULL,'537f1fdba507f',NULL,'2014-06-13 23:59:49','jpg',NULL,'upload/files/20140613235949UuUHp1Bs.jpg','jeecg.system.pojo.base.TSDocument','upload/files/20140613235949UuUHp1Bs.swf',NULL,NULL,NULL),
	('402881e547bb946e0147bb98361a0015',NULL,'772607',NULL,NULL,'jpg',NULL,'upload/files/201408100027008becjgnn.jpg',NULL,'upload/files/201408100027008becjgnn.swf',NULL,NULL,NULL),
	('402881e845d1723e0145d18fef940019',NULL,'svn',NULL,'2014-05-06 20:44:02','txt',NULL,'upload/files/20140506204402BgVrby8Q.txt','jeecg.system.pojo.base.TSDocument','upload/files/20140506204402BgVrby8Q.swf',NULL,NULL,NULL),
	('402881e946ddea480146ddf061b50001',NULL,'634490825089531250',NULL,'2014-06-27 23:27:36','jpg',NULL,'upload/files/20140627232736z3SvfVEj.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627232736z3SvfVEj.swf',NULL,NULL,NULL),
	('402881e946ddea480146ddf730350003',NULL,'19300001024098134717639977056',NULL,'2014-06-27 23:35:02','jpg',NULL,'upload/files/20140627233502FEzyc38j.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627233502FEzyc38j.swf',NULL,NULL,NULL),
	('402881e946ddea480146ddf991610005',NULL,'20120823024251636',NULL,'2014-06-27 23:37:38','jpg',NULL,'upload/files/20140627233738xqDsNzfy.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627233738xqDsNzfy.swf',NULL,NULL,NULL),
	('402881e946ddea480146de02f8ba0008',NULL,'Img305735292',NULL,'2014-06-27 23:47:55','jpg',NULL,'upload/files/20140627234755MS58ckJV.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627234755MS58ckJV.swf',NULL,NULL,NULL),
	('402881e946ddea480146de0522e3000a',NULL,'30_1i$1JxIOB',NULL,'2014-06-27 23:50:17','jpg',NULL,'upload/files/20140627235017KDQfXcBu.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627235017KDQfXcBu.swf',NULL,NULL,NULL),
	('402881e946ddea480146de09f959000e',NULL,'Img305735292',NULL,'2014-06-27 23:55:34','jpg',NULL,'upload/files/20140627235534VJM1pkx3.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627235534VJM1pkx3.swf',NULL,NULL,NULL),
	('402881e946ddea480146de0f340b0010',NULL,'30_1i$1JxIOB',NULL,'2014-06-28 00:01:16','jpg',NULL,'upload/files/20140628000116OF07rm7E.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140628000116OF07rm7E.swf',NULL,NULL,NULL),
	('402881e947015a7001470160f9290001',NULL,'1384480985636',NULL,'2014-07-04 20:37:18','jpg',NULL,'upload/files/201407042037189rPp00ZT.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407042037189rPp00ZT.swf',NULL,NULL,NULL),
	('402881e947015a70014701619f490004',NULL,'19343396_845725',NULL,'2014-07-04 20:38:00','jpg',NULL,'upload/files/20140704203800Q6g5eVpd.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140704203800Q6g5eVpd.swf',NULL,NULL,NULL),
	('402881e947015a700147016449650007',NULL,'1384480985636',NULL,'2014-07-04 20:40:55','jpg',NULL,'upload/files/20140704204055j06raaJy.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140704204055j06raaJy.swf',NULL,NULL,NULL),
	('402881e94701df96014701eb22d30006',NULL,'1384480985636',NULL,'2014-07-04 23:08:12','jpg',NULL,'upload/files/201407042308121vLOUuSc.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407042308121vLOUuSc.swf',NULL,NULL,NULL),
	('402881e94701df96014701f3f7160007',NULL,'634490825089531250',NULL,'2014-07-04 23:17:51','jpg',NULL,'upload/files/20140704231751jgyEMUFt.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140704231751jgyEMUFt.swf',NULL,NULL,NULL),
	('402881e94701df960147020b82d1000d',NULL,'1384480985636',NULL,'2014-07-04 23:43:34','jpg',NULL,'upload/files/20140704234334Vhfk9mYp.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140704234334Vhfk9mYp.swf',NULL,NULL,NULL),
	('402881e9470273d20147028adf830019',NULL,'634490825089531250',NULL,'2014-07-05 02:02:41','jpg',NULL,'upload/files/201407050202416ZCRAJjr.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407050202416ZCRAJjr.swf',NULL,NULL,NULL),
	('402881e9470273d20147028afde6001a',NULL,'634490825089531250',NULL,'2014-07-05 02:02:49','jpg',NULL,'upload/files/201407050202490ByJscnc.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407050202490ByJscnc.swf',NULL,NULL,NULL),
	('402881e94702c764014702ceee2e0004',NULL,'19343396_845725',NULL,'2014-07-05 03:17:01','jpg',NULL,'upload/files/20140705031701QWDPG07Q.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140705031701QWDPG07Q.swf',NULL,NULL,NULL),
	('402889ed472e852301472eaee6f80009',NULL,'1348502748_9205',NULL,'2014-07-13 15:45:19','gif',NULL,'upload/files/20140713154520vkFUZy23.gif','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713154520vkFUZy23.swf',NULL,NULL,NULL),
	('402889ed472e852301472eb0270b000d',NULL,'1348502732_4991',NULL,'2014-07-13 15:46:42','gif',NULL,'upload/files/20140713154642E71rUQGZ.gif','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713154642E71rUQGZ.swf',NULL,NULL,NULL),
	('402889ed472ec2a801472ec3997c0001',NULL,'1348502772_8826',NULL,'2014-07-13 16:07:56','gif',NULL,'upload/files/20140713160756wTrr5Zn3.gif','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713160756wTrr5Zn3.swf',NULL,NULL,NULL),
	('402889ed472ee23401472ee59ccf0001',NULL,'13840528444553',NULL,'2014-07-13 16:45:05','png',NULL,'upload/files/20140713164505QAtOSSSm.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713164505QAtOSSSm.swf',NULL,NULL,NULL),
	('402889f346dc66c30146dc7c11630001',NULL,'1348502732_4991',NULL,'2014-06-27 16:40:56','gif',NULL,'upload/files/20140627164056wwWqB80c.gif','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627164056wwWqB80c.swf',NULL,NULL,NULL),
	('402889f346dc66c30146dc7ccb410005',NULL,'13840528444553',NULL,'2014-06-27 16:41:44','png',NULL,'upload/files/20140627164144bzcSvQNs.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627164144bzcSvQNs.swf',NULL,NULL,NULL),
	('402889f346dc66c30146dc7cf66b0008',NULL,'1348502748_9205',NULL,'2014-06-27 16:41:55','gif',NULL,'upload/files/20140627164155hUT3hMVJ.gif','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627164155hUT3hMVJ.swf',NULL,NULL,NULL),
	('402889f346dc8a220146dc933f720007',NULL,'fdfb6e9cb6103298f5497760962ebbf7',NULL,'2014-06-27 17:06:15','png',NULL,'upload/files/20140627170616I8PtmI3X.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140627170616I8PtmI3X.swf',NULL,NULL,NULL),
	('402889f64747048401474709372d0009',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:14:52','jpg',NULL,'upload/files/20140718091452MW70kigU.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718091452MW70kigU.swf',NULL,NULL,NULL),
	('402889f6474704840147470a1ca7000e',NULL,'Desktop',NULL,'2014-07-18 09:15:50','zip',NULL,'upload/files/20140718091550rbnPw893.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718091550rbnPw893.swf',NULL,NULL,NULL),
	('402889f6474704840147470d48ab000f',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:19:18','jpg',NULL,'upload/files/20140718091918Vmd5RP48.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718091918Vmd5RP48.swf',NULL,NULL,NULL),
	('402889f6474704840147470d62570012',NULL,'Desktop',NULL,'2014-07-18 09:19:25','zip',NULL,'upload/files/20140718091925pEgAued6.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718091925pEgAued6.swf',NULL,NULL,NULL),
	('402889f6474704840147470e7b920014',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:20:37','jpg',NULL,'upload/files/20140718092037mgTjUY0W.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718092037mgTjUY0W.swf',NULL,NULL,NULL),
	('402889f64747048401474710097e0017',NULL,'Desktop',NULL,'2014-07-18 09:22:19','zip',NULL,'upload/files/20140718092219HhQXuKxn.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718092219HhQXuKxn.swf',NULL,NULL,NULL),
	('402889f647470484014747108feb001a',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:22:53','jpg',NULL,'upload/files/20140718092253Hk6Q64Rz.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718092253Hk6Q64Rz.swf',NULL,NULL,NULL),
	('402889f647470484014747129c15001d',NULL,'Desktop',NULL,'2014-07-18 09:25:07','zip',NULL,'upload/files/20140718092507XT4r9A7J.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718092507XT4r9A7J.swf',NULL,NULL,NULL),
	('402889f647470484014747133201001f',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:25:46','jpg',NULL,'upload/files/201407180925466IUsX7FW.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407180925466IUsX7FW.swf',NULL,NULL,NULL),
	('402889f647470484014747137f230022',NULL,'Desktop',NULL,'2014-07-18 09:26:05','zip',NULL,'upload/files/20140718092605f3N8z6h7.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718092605f3N8z6h7.swf',NULL,NULL,NULL),
	('402889f64747182f01474718ed750001',NULL,'LOGO',NULL,'2014-07-18 09:32:01','jpg',NULL,'upload/files/20140718093201bbpEq64r.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718093201bbpEq64r.swf',NULL,NULL,NULL),
	('402889f64747182f01474719193e0004',NULL,'Desktop',NULL,'2014-07-18 09:32:12','zip',NULL,'upload/files/20140718093212D3R2wWX8.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718093212D3R2wWX8.swf',NULL,NULL,NULL),
	('402889f64747182f01474719c42b0007',NULL,'Desktop',NULL,'2014-07-18 09:32:56','zip',NULL,'upload/files/201407180932564NiTCHsL.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407180932564NiTCHsL.swf',NULL,NULL,NULL),
	('402889f64747182f01474720ef4c000c',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:40:46','jpg',NULL,'upload/files/20140718094046tpfYNITQ.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718094046tpfYNITQ.swf',NULL,NULL,NULL),
	('402889f64747182f014747211b11000f',NULL,'Desktop',NULL,'2014-07-18 09:40:57','zip',NULL,'upload/files/2014071809405739bzRcEb.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/2014071809405739bzRcEb.swf',NULL,NULL,NULL),
	('402889f6474722ad01474723d3400001',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:43:55','jpg',NULL,'upload/files/20140718094355twCIOKEZ.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718094355twCIOKEZ.swf',NULL,NULL,NULL),
	('402889f6474722ad01474723f78e0004',NULL,'Desktop',NULL,'2014-07-18 09:44:05','zip',NULL,'upload/files/201407180944059hUL3euv.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407180944059hUL3euv.swf',NULL,NULL,NULL),
	('402889f6474722ad014747248d0f0007',NULL,'LOGO-副本副本',NULL,'2014-07-18 09:44:43','jpg',NULL,'upload/files/20140718094443ye4QrEVf.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718094443ye4QrEVf.swf',NULL,NULL,NULL),
	('402889f6474722ad01474724bdc2000a',NULL,'Desktop',NULL,'2014-07-18 09:44:56','zip',NULL,'upload/files/20140718094456XgxaVLOr.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140718094456XgxaVLOr.swf',NULL,NULL,NULL),
	('402889f847666ae40147666df6eb0002',NULL,'jeecg_scott',NULL,'2014-07-24 11:33:08','jpg',NULL,'upload/files/20140724113308R9yRv2hj.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724113308R9yRv2hj.swf',NULL,NULL,NULL),
	('402889f847666ae40147666e16ff0003',NULL,'jeecg_scott',NULL,'2014-07-24 11:33:16','jpg',NULL,'upload/files/201407241133168ezfMs40.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407241133168ezfMs40.swf',NULL,NULL,NULL),
	('402889f847666ae40147671e80cf0017',NULL,'LOGO',NULL,'2014-07-24 14:45:58','jpg',NULL,'upload/files/20140724144558XmkQL4Zs.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724144558XmkQL4Zs.swf',NULL,NULL,NULL),
	('402889f847666ae401476729806f0018',NULL,'LOGO',NULL,'2014-07-24 14:57:58','jpg',NULL,'upload/files/20140724145758jWIbQ6sv.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724145758jWIbQ6sv.swf',NULL,NULL,NULL),
	('402889f847666ae401476729c6df001b',NULL,'default',NULL,'2014-07-24 14:58:16','zip',NULL,'upload/files/20140724145816LX1bxIBf.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724145816LX1bxIBf.swf',NULL,NULL,NULL),
	('402889f847666ae401476730b187001e',NULL,'LOGO',NULL,'2014-07-24 15:05:50','jpg',NULL,'upload/files/20140724150550qiXF3fMC.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724150550qiXF3fMC.swf',NULL,NULL,NULL),
	('402889f847666ae401476730f1240021',NULL,'root',NULL,'2014-07-24 15:06:06','zip',NULL,'upload/files/20140724150606bwWmIb9y.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724150606bwWmIb9y.swf',NULL,NULL,NULL),
	('402889f84767413b0147674352d30001',NULL,'jeecg_scott',NULL,'2014-07-24 15:26:11','jpg',NULL,'upload/files/20140724152611YCkPnNNe.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140724152611YCkPnNNe.swf',NULL,NULL,NULL),
	('402889f8477ad29d01477ad8e51b0004',NULL,'default',NULL,'2014-07-28 10:42:20','zip',NULL,'upload/files/20140728104220s9ne9Xg1.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728104220s9ne9Xg1.swf',NULL,NULL,NULL),
	('402889f8477b0c1f01477b0e31e30003',NULL,'LOGO',NULL,'2014-07-28 11:40:33','jpg',NULL,'upload/files/20140728114033QsfvsemU.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728114033QsfvsemU.swf',NULL,NULL,NULL),
	('402889f8477b0c1f01477b0e44790006',NULL,'12',NULL,'2014-07-28 11:40:38','zip',NULL,'upload/files/20140728114038qnWchMMc.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728114038qnWchMMc.swf',NULL,NULL,NULL),
	('402889f8477b5b5b01477b5cb2c40002',NULL,'12',NULL,'2014-07-28 13:06:18','zip',NULL,'upload/files/20140728130618DtPUFGuA.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728130618DtPUFGuA.swf',NULL,NULL,NULL),
	('402889f8477b5b5b01477b5cc3e50003',NULL,'LOGO',NULL,'2014-07-28 13:06:22','jpg',NULL,'upload/files/20140728130622IwHTMQ8A.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728130622IwHTMQ8A.swf',NULL,NULL,NULL),
	('402889f8477b5b5b01477b5d02730006',NULL,'12',NULL,'2014-07-28 13:06:38','zip',NULL,'upload/files/20140728130638snqMiJ14.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728130638snqMiJ14.swf',NULL,NULL,NULL),
	('402889f8477b5b5b01477b5ef0a90009',NULL,'LOGO',NULL,'2014-07-28 13:08:45','jpg',NULL,'upload/files/20140728130845H1ns0FfD.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728130845H1ns0FfD.swf',NULL,NULL,NULL),
	('402889f8477b5b5b01477b5efd31000c',NULL,'12',NULL,'2014-07-28 13:08:48','zip',NULL,'upload/files/20140728130848mCc0YxYQ.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728130848mCc0YxYQ.swf',NULL,NULL,NULL),
	('402889f8477b681801477b69179c0002',NULL,'LOGO',NULL,'2014-07-28 13:19:50','jpg',NULL,'upload/files/20140728131950wN5iFSPb.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728131950wN5iFSPb.swf',NULL,NULL,NULL),
	('402889f8477b681801477b692d7b0005',NULL,'saas-plugin-web-master-shiro-mybatis',NULL,'2014-07-28 13:19:56','zip',NULL,'upload/files/20140728131956xAYGxZkb.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728131956xAYGxZkb.swf',NULL,NULL,NULL),
	('402889f8477b6c5401477b6d39dc0002',NULL,'LOGO',NULL,'2014-07-28 13:24:21','jpg',NULL,'upload/files/20140728132421aK4DQMYc.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728132421aK4DQMYc.swf',NULL,NULL,NULL),
	('402889f8477b6c5401477b6d4ee40005',NULL,'12',NULL,'2014-07-28 13:24:26','zip',NULL,'upload/files/20140728132426Jjjm71ce.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728132426Jjjm71ce.swf',NULL,NULL,NULL),
	('402889f8477b6e4e01477b6efba10001',NULL,'LOGO',NULL,'2014-07-28 13:26:16','jpg',NULL,'upload/files/20140728132616YIujfrwM.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728132616YIujfrwM.swf',NULL,NULL,NULL),
	('402889f8477b6e4e01477b6f0ae10004',NULL,'12',NULL,'2014-07-28 13:26:20','zip',NULL,'upload/files/20140728132620zgrSq1Lg.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728132620zgrSq1Lg.swf',NULL,NULL,NULL),
	('402889f8477b70aa01477b71e16e0003',NULL,'LOGO',NULL,'2014-07-28 13:29:26','jpg',NULL,'upload/files/201407281329268P4veRz7.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407281329268P4veRz7.swf',NULL,NULL,NULL),
	('402889f8477b70aa01477b71ee4a0006',NULL,'12',NULL,'2014-07-28 13:29:29','zip',NULL,'upload/files/20140728132929AexU7BwG.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728132929AexU7BwG.swf',NULL,NULL,NULL),
	('402889f8477b70aa01477b75b3200009',NULL,'LOGO',NULL,'2014-07-28 13:33:36','jpg',NULL,'upload/files/20140728133336yGqI8ds0.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728133336yGqI8ds0.swf',NULL,NULL,NULL),
	('402889f8477b70aa01477b75c54a000c',NULL,'12',NULL,'2014-07-28 13:33:41','zip',NULL,'upload/files/20140728133341NY9jq8uK.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728133341NY9jq8uK.swf',NULL,NULL,NULL),
	('402889f8477c283701477c29665c0002',NULL,'jeecg_scott',NULL,'2014-07-28 16:49:53','jpg',NULL,'upload/files/20140728164953P9e67L9P.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728164953P9e67L9P.swf',NULL,NULL,NULL),
	('402889f8477c283701477c298a7e0005',NULL,'jeewx_default(1)',NULL,'2014-07-28 16:50:03','zip',NULL,'upload/files/20140728165003FePN5O3T.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728165003FePN5O3T.swf',NULL,NULL,NULL),
	('402889f8477c283701477c2a71d10007',NULL,'jeecg_scott',NULL,'2014-07-28 16:51:02','jpg',NULL,'upload/files/20140728165102pX4UL9q5.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728165102pX4UL9q5.swf',NULL,NULL,NULL),
	('402889f8477c283701477c2a81de000a',NULL,'jeewx_default(1)',NULL,'2014-07-28 16:51:06','zip',NULL,'upload/files/20140728165106e4gjNVNS.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728165106e4gjNVNS.swf',NULL,NULL,NULL),
	('402889f8477c283701477c2b8bb4000b',NULL,'LOGO',NULL,'2014-07-28 16:52:14','jpg',NULL,'upload/files/20140728165214sZ5XLBUL.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728165214sZ5XLBUL.swf',NULL,NULL,NULL),
	('402889f8477c283701477c2b9bfd000e',NULL,'jeewx_default(1)',NULL,'2014-07-28 16:52:18','zip',NULL,'upload/files/20140728165218pc1G2SaG.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728165218pc1G2SaG.swf',NULL,NULL,NULL),
	('402889f8477c283701477c2e96f50012',NULL,'jeecg_scott',NULL,'2014-07-28 16:55:33','jpg',NULL,'upload/files/20140728165533cOAxPIj2.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140728165533cOAxPIj2.swf',NULL,NULL,NULL),
	('402889f8477c283701477c2eb1300015',NULL,'default',NULL,'2014-07-28 16:55:40','zip',NULL,'upload/files/201407281655408Wv6aztF.zip','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407281655408Wv6aztF.swf',NULL,NULL,NULL),
	('4028bc064763571d0147635828440003',NULL,'LOGO',NULL,'2014-07-23 21:10:27','jpg',NULL,'upload/files/20140723211027iPYMKOfy.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140723211027iPYMKOfy.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214bb0008',NULL,'JR079839867R90000001000',NULL,NULL,'doc',NULL,'JR079839867R90000001000',NULL,'upload/files/20130719201109hDr31jP1.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214c00009',NULL,'JEECG平台协议',NULL,NULL,'docx',NULL,'JEECG平台协议',NULL,'upload/files/20130719201156sYHjSFJj.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214c2000a',NULL,'分析JEECG与其他的开源项目的不足和优势',NULL,NULL,'docx',NULL,'分析JEECG与其他的开源项目的不足和优势',NULL,'upload/files/20130719201727ZLEX1OSf.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214c4000b',NULL,'DMS-T3第三方租赁业务接口开发说明',NULL,NULL,'docx',NULL,'DMS-T3第三方租赁业务接口开发说明',NULL,'upload/files/20130719201841LzcgqUek.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214c5000c',NULL,'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发',NULL,NULL,'doc',NULL,'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发',NULL,'upload/files/20130719201925mkCrU47P.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214ca000d',NULL,'JEECG团队开发规范',NULL,NULL,'txt',NULL,'JEECG团队开发规范',NULL,'upload/files/20130724103633fvOTwNSV.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214cb000e',NULL,'第一模板',NULL,NULL,'doc',NULL,'第一模板',NULL,'upload/files/20130724104603pHDw4QUT.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214cd000f',NULL,'github入门使用教程',NULL,NULL,'doc',NULL,'github入门使用教程',NULL,'upload/files/20130704200345EakUH3WB.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214cf0010',NULL,'github入门使用教程',NULL,NULL,'doc',NULL,'github入门使用教程',NULL,'upload/files/20130704200651IE8wPdZ4.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214d10011',NULL,'（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）',NULL,NULL,'xlsx',NULL,'（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）',NULL,'upload/files/20130704201022KhdRW1Gd.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214d30012',NULL,'EIM201_CN',NULL,NULL,'pdf',NULL,'EIM201_CN',NULL,'upload/files/20130704201046JVAkvvOt.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214d40013',NULL,'github入门使用教程',NULL,NULL,'doc',NULL,'github入门使用教程',NULL,'upload/files/20130704201116Z8NhEK57.swf',NULL,NULL,NULL),
	('4028d881436d514601436d5214d60014',NULL,'JEECGUI标签库帮助文档v3.2',NULL,NULL,'pdf',NULL,'JEECGUI标签库帮助文档v3.2',NULL,'upload/files/20130704201125DQg8hi2x.swf',NULL,NULL,NULL),
	('4028d881472f0d8101472f14e0010002',NULL,'13840528444553',NULL,'2014-07-13 17:36:42','png',NULL,'upload/files/20140713173643LtfDgtJW.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713173643LtfDgtJW.swf',NULL,NULL,NULL),
	('4028d881472f0d8101472f1ff82a0005',NULL,'2501216q581a_434673',NULL,'2014-07-13 17:48:50','jpg',NULL,'upload/files/201407131748505X4diOvz.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407131748505X4diOvz.swf',NULL,NULL,NULL),
	('4028d881472f0d8101472f218b350008',NULL,'fdfb6e9cb6103298f5497760962ebbf7',NULL,'2014-07-13 17:50:33','png',NULL,'upload/files/20140713175033jbqSMvgC.png','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713175033jbqSMvgC.swf',NULL,NULL,NULL),
	('4028d881472f356e01472f3695840002',NULL,'Penguins',NULL,'2014-07-13 18:13:32','jpg',NULL,'upload/files/20140713181332KAu3isS8.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713181332KAu3isS8.swf',NULL,NULL,NULL),
	('4028d881472f356e01472f3f428e0006',NULL,'Hydrangeas',NULL,'2014-07-13 18:23:00','jpg',NULL,'upload/files/20140713182300VpK2yVH4.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713182300VpK2yVH4.swf',NULL,NULL,NULL),
	('4028d881472f356e01472f4256e00007',NULL,'Hydrangeas',NULL,'2014-07-13 18:26:22','jpg',NULL,'upload/files/201407131826228RgGqLTc.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/201407131826228RgGqLTc.swf',NULL,NULL,NULL),
	('4028d881472f356e01472f42fcc40009',NULL,'Tulips',NULL,'2014-07-13 18:27:05','jpg',NULL,'upload/files/20140713182705cUaiEj8S.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713182705cUaiEj8S.swf',NULL,NULL,NULL),
	('4028d881472f451c01472f481df30001',NULL,'Koala',NULL,'2014-07-13 18:32:41','jpg',NULL,'upload/files/20140713183241G0MwnKGS.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713183241G0MwnKGS.swf',NULL,NULL,NULL),
	('4028d881472f451c01472f4cd0dc0003',NULL,'Desert',NULL,'2014-07-13 18:37:49','jpg',NULL,'upload/files/20140713183749DFYsvVqm.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713183749DFYsvVqm.swf',NULL,NULL,NULL),
	('4028d881472f451c01472f4d0a920004',NULL,'Jellyfish',NULL,'2014-07-13 18:38:03','jpg',NULL,'upload/files/20140713183803rrJwDiBz.jpg','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140713183803rrJwDiBz.swf',NULL,NULL,NULL),
	('4028d8814734ee0d0147351e604e0001',NULL,'淘学网DB设计',NULL,'2014-07-14 21:44:48','xls',NULL,'upload/files/20140714214448nnhIGNXP.xls','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140714214448nnhIGNXP.swf',NULL,NULL,NULL),
	('4028d88147359f51014735a006fc0001',NULL,'1348502732_4991',NULL,'2014-07-15 00:06:25','gif',NULL,'upload/files/20140715000625jz067Iqi.gif','org.jeecgframework.web.system.pojo.base.TSDocument','upload/files/20140715000625jz067Iqi.swf',NULL,NULL,NULL);

/*!40000 ALTER TABLE `t_s_attachment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_base_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_base_user`;

CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `signature` blob,
  `status` smallint(6) DEFAULT NULL,
  `userkey` varchar(200) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_base_user` WRITE;
/*!40000 ALTER TABLE `t_s_base_user` DISABLE KEYS */;

INSERT INTO `t_s_base_user` (`ID`, `activitiSync`, `browser`, `password`, `realname`, `signature`, `status`, `userkey`, `username`, `departid`)
VALUES
	('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	('402880ef51bd66070151bd7a0b1d0003',NULL,NULL,'50e47b8b25e514d8f1d670700a94db51','龙腾古夜',NULL,1,NULL,'2689766486','4028813a5050e3a3015050fc55080002'),
	('402880ef51e3e4080151e3e63f880002',NULL,NULL,'463408fdf59bb9d9',NULL,NULL,1,NULL,'098765','4028813a5050e3a3015050fc55080002'),
	('402880ef5221934f015221b36001000c',NULL,NULL,'2185c4d2ca8538526de4ea28f9bf4aa7','驿马便利',NULL,1,NULL,'zhuyanrong','4028813a5050e3a3015050fc55080002'),
	('402880ef5229b448015229d03fdd000d',NULL,NULL,NULL,'家和超市',NULL,1,NULL,'xiaowanzi','4028813a5050e3a3015050fc55080002'),
	('402880ef5229f49a01522a09cc71000b',NULL,NULL,'1c0caf36e99b3556e9c644ef48a582d5','888烟酒店',NULL,1,NULL,'yanjiudian','4028813a5050e3a3015050fc55080002'),
	('4028813a504c151c01504c15ba340002',NULL,NULL,'c98e756ed53c9151',NULL,NULL,0,NULL,'1234567','4028d881436d514601436d5214d70015'),
	('4028813a504c1c9901504c1d0d250002',NULL,NULL,'c055a045250867a1ab59a5077d670b7c',NULL,NULL,1,NULL,'12345678','4028d881436d514601436d5214d70015'),
	('4028813a505109d7015051179d170001',NULL,NULL,'2824e771d275863d018482f1b409b3d0','果品源',NULL,1,NULL,'123456789','4028813a5050e3a3015050fc55080002'),
	('4028813a5055d3e9015055d48aec0001',NULL,NULL,'ede1217013f489b3','4321',NULL,1,NULL,'4321','4028813a5050e3a3015050fc55080002'),
	('4028813a505a6d5801505a6e80fa0001',NULL,NULL,'e9a957b5fda8c8bb64f53a1c5c89232c',NULL,NULL,1,NULL,'775747758','4028813a5050e3a3015050fc55080002'),
	('4028813a505a70d901505a721ae80001',NULL,NULL,'368ac3f242658ef9','炫魅春色',NULL,1,NULL,'265865','4028813a5050e3a3015050fc55080002'),
	('4028813a508d983201508da23ba80005',NULL,NULL,'ba47af00f8410060','肯德基',NULL,1,NULL,'123','4028813a5050e3a3015050fc55080002'),
	('4028813a508da3e301508da935360005',NULL,NULL,'775160d9dacdffe8','草呆之本',NULL,1,NULL,'1234','4028813a5050e3a3015050fc55080002'),
	('4028813a508da3e301508da9feb0000a',NULL,NULL,'090538c934f40c4d','安安烘焙',NULL,1,NULL,'12345','4028813a5050e3a3015050fc55080002'),
	('402881e4461f9c6401461fa2e6f50002',NULL,NULL,'4be1dd049390623054515c6d433c4e3c','tingfeng',NULL,1,NULL,'tingfeng','4028d881436d514601436d5214d70015'),
	('402881e44648134a014648174a45000c',NULL,NULL,'e0d5cae5376f58ac','jeecg测试',NULL,1,NULL,'ceshi','4028d881436d514601436d5214d70015'),
	('4028d881436d514601436d5215ac0043',1,NULL,'463408fdf59bb9d9','驿马生活',NULL,1,NULL,'123456','4028d881436d514601436d5214d70015'),
	('4028d881436d514601436d5215b80000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	('4028d881436d514601436d5215b80045',0,NULL,'f2322ec2fb9f40d1','采购员',NULL,1,NULL,'cgy','4028d881436d514601436d5214d70015'),
	('4028d881436d514601436d5215bc0046',1,NULL,'c44b01947c9e6e3f','文杰',NULL,1,NULL,'admin','4028d881436d514601436d5214d70015');

/*!40000 ALTER TABLE `t_s_base_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_config`;

CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table t_s_demo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_demo`;

CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) DEFAULT NULL,
  `demotitle` varchar(200) DEFAULT NULL,
  `demourl` varchar(200) DEFAULT NULL,
  `demopid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_demo` WRITE;
/*!40000 ALTER TABLE `t_s_demo` DISABLE KEYS */;

INSERT INTO `t_s_demo` (`ID`, `democode`, `demoorder`, `demotitle`, `demourl`, `demopid`)
VALUES
	('4028d881436d514601436d52186900c4','<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>',NULL,'表单验证',NULL,NULL);

/*!40000 ALTER TABLE `t_s_demo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_depart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_depart`;

CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_depart` WRITE;
/*!40000 ALTER TABLE `t_s_depart` DISABLE KEYS */;

INSERT INTO `t_s_depart` (`ID`, `departname`, `description`, `parentdepartid`)
VALUES
	('4028813a5050e3a3015050fc55080002','微商城商户','微商城多店版商户',NULL),
	('4028d881436d514601436d5214d70015','信息部','12',NULL),
	('4028d881436d514601436d5214ef0016','设计部',NULL,NULL),
	('4028d881436d514601436d5214f30017','研发室','研发技术难题','4028d881436d514601436d5214ef0016');

/*!40000 ALTER TABLE `t_s_depart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_document
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_document`;

CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_document` WRITE;
/*!40000 ALTER TABLE `t_s_document` DISABLE KEYS */;

INSERT INTO `t_s_document` (`documentstate`, `documenttitle`, `pictureindex`, `showhome`, `id`, `typeid`)
VALUES
	(NULL,NULL,NULL,NULL,'297e7eb6469a4a8901469a5d96ea000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'297e7eb6469a4a8901469a5ebac20010','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'297e7eb6469a9a0f01469a9b59d30001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'297e7eb6469a9a0f01469a9bc74b0003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0a31040002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0a53150005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0dfcd80009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0e143d000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880e6477d04e001477d0e1d31000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880e6477d5c2601477d5d81de0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef51bd66070151bd79a85a0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef51e3e4080151e3e60e810001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef51e3fbc40151e3fd4f700001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5221934f015221b30879000b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229b448015229c587310007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229b448015229c5a2120008','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229b448015229d01bb5000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229b448015229d97abd0015','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522a099aa3000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522a12b155001d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522a42247f004b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522a8e0def0050','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522a92b7090055','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522a945fc90059','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402880ef5229f49a01522aa11fc1005f','4028d881436d514601436d5216190053'),
	(NULL,'blank',NULL,NULL,'4028813a4fed79b8014fed7aea1f0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff30a9d014ff30e374e0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff30a9d014ff30e53a90002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff30a9d014ff30e7d230003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3c659014ff3dbb9710001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3dc88014ff3e0698c0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3e4a8014ff3e7e0620001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3e4a8014ff3eb17e40002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3e4a8014ff3ee3b440003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3ff72014ff3ffff130001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff3ff72014ff40482dd0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff40908014ff409951a0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff40cd9014ff40d64280001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff41006014ff4107b6b0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff42bd0014ff42ccc720001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff8ac4b014ff8f198ec0006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff8ac4b014ff8f2f0d4000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a4ff8ac4b014ff90b357a0019','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500247fa0150027d95c00006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a5002afe9015002bad4f70001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a5002afe9015002c188df0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a5002cc78015002defc140004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500335d101500336afd60003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500335d101500336eea60006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500349510150034b92ac0006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500349510150034c068c0009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500349510150034c5e1c000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500349510150034ccab5000f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500349510150034d0cc90012','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500742e801500744a1880006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a500746280150074697c20001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a5007462801500746c78b0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501177bb0150117d7c120002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501177bb0150117dda9d0005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501177bb0150117e2f880008','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501177bb0150117e68cb000b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501177bb0150117ea080000e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501c336101501c3975fd0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a501cdbc101501cdf21da0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ba13d01505ba813880001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ba13d01505baa7e170002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ba13d01505bad1aaa0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505bb38d01505bb947390001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505bb38d01505bba13f40002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505bbd2a01505bbd90d10001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ea96701505eaf054e0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ea96701505eb70f640004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ea96701505eb85ba70007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ea96701505eba0f89000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ea96701505eba4013000f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec38701505ec3efc70001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec48801505ec4f3490001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec650bd0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec674db0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec690530007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec6a9c5000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec6c098000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec6e7050010','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec5c801505ec70c900012','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a505ec85301505ec8db3d0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ec370330005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ecaccae0006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ecbf5f10007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ece0a730008','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ecfa0d40009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ed0840d000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ed30110000b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507ed93b9f000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507df2bb01507eeeb589000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a507f235f01507f24642c0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508445930150844aab3d0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508d2e7401508d2f66450006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508d2e7401508d2fb3ae0009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508d2e7401508d2fee23000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508d983201508da20e760004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508da3e301508da673450001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508da3e301508da92bc20004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508da3e301508da9f4c00009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508da3e301508dac36d7000e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a508da3e301508dadab780011','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd0ab500007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd14796000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd1dfc1000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd25e740010','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd44a500013','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd4dfc50016','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd5bb620019','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd62118001c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd7005d001f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a513dbb7f01513dd7c0290022','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028813a51f6d1b80151f77bca0b0007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446394419014639453ce90002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e4463cc88701463ccef5340001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44643207c01464333b1f9000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e4464381350146438691940002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44643813501464389b02a000b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44643a1cd014643a510060003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44643a1cd014643a55d6f0006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a014695210478000f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a0146952144320012','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a0146952187bc0015','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a01469522f1ed0018','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a01469523431e001b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a01469523eb7f001e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695183a0146952422130021','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695970aeb0014','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c01469597394f0016','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c0146959757810018','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695977560001a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a1de0a001d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a38b470020','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a3cdea0022','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a4383a0024','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a4913b0026','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a4dda10027','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a726df0028','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a7705a002b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a7b814002e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a7ecf10031','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e446955c7c014695a831d70034','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695ed3bdc0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695ed79fa0003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695ef476c0005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f2c6280007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f3176d0009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f339a7000b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f3a3b3000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f3f89f000f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f443990011','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f45e1a0013','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f494290015','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e44695ebe3014695f4d5570017','4028d881436d514601436d5216190053'),
	(NULL,'11111',NULL,NULL,'402881e845d1723e0145d18fef940019','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146ddf061b50001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146ddf730350003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146ddf991610005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146de02f8ba0008','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146de0522e3000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146de09f959000e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e946ddea480146de0f340b0010','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e947015a7001470160f9290001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e947015a70014701619f490004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e947015a700147016449650007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e94701df96014701eb22d30006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e94701df96014701f3f7160007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e94701df960147020b82d1000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e9470273d20147028adf830019','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e9470273d20147028afde6001a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402881e94702c764014702ceee2e0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889ed472e852301472eaee6f80009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889ed472e852301472eb0270b000d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889ed472ec2a801472ec3997c0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889ed472ee23401472ee59ccf0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f346dc66c30146dc7c11630001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f346dc66c30146dc7ccb410005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f346dc66c30146dc7cf66b0008','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f346dc8a220146dc933f720007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747048401474709372d0009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474704840147470a1ca7000e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474704840147470d48ab000f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474704840147470d62570012','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474704840147470e7b920014','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747048401474710097e0017','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f647470484014747108feb001a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f647470484014747129c15001d','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f647470484014747133201001f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f647470484014747137f230022','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747182f01474718ed750001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747182f01474719193e0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747182f01474719c42b0007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747182f01474720ef4c000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f64747182f014747211b11000f','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474722ad01474723d3400001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474722ad01474723f78e0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474722ad014747248d0f0007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f6474722ad01474724bdc2000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae40147666df6eb0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae40147666e16ff0003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae40147671e80cf0017','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae401476729806f0018','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae401476729c6df001b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae401476730b187001e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f847666ae401476730f1240021','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f84767413b0147674352d30001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477ad29d01477ad8e51b0004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b0c1f01477b0e31e30003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b0c1f01477b0e44790006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5cb2c40002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5cc3e50003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5d02730006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5ef0a90009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b5b5b01477b5efd31000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b681801477b69179c0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b681801477b692d7b0005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b6c5401477b6d39dc0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b6c5401477b6d4ee40005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b6e4e01477b6efba10001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b6e4e01477b6f0ae10004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b71e16e0003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b71ee4a0006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b75b3200009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477b70aa01477b75c54a000c','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c29665c0002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c298a7e0005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c2a71d10007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c2a81de000a','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c2b8bb4000b','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c2b9bfd000e','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c2e96f50012','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'402889f8477c283701477c2eb1300015','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028bc064763571d0147635828440003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f0d8101472f14e0010002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f0d8101472f1ff82a0005','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f0d8101472f218b350008','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f356e01472f3695840002','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f356e01472f3f428e0006','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f356e01472f4256e00007','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f356e01472f42fcc40009','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f451c01472f481df30001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f451c01472f4cd0dc0003','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d881472f451c01472f4d0a920004','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d8814734ee0d0147351e604e0001','4028d881436d514601436d5216190053'),
	(NULL,NULL,NULL,NULL,'4028d88147359f51014735a006fc0001','4028d881436d514601436d5216190053');

/*!40000 ALTER TABLE `t_s_document` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_fileno
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_fileno`;

CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) DEFAULT NULL,
  `filenonum` int(11) DEFAULT NULL,
  `filenotype` varchar(32) DEFAULT NULL,
  `filenoYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table t_s_function
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_function`;

CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) DEFAULT NULL,
  `functionlevel` smallint(6) DEFAULT NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) DEFAULT NULL,
  `functionurl` varchar(100) DEFAULT NULL,
  `parentfunctionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  `desk_iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_function` WRITE;
/*!40000 ALTER TABLE `t_s_function` DISABLE KEYS */;

INSERT INTO `t_s_function` (`ID`, `functioniframe`, `functionlevel`, `functionname`, `functionorder`, `functionurl`, `parentfunctionid`, `iconid`, `desk_iconid`)
VALUES
	('297e7eb6469a4a8901469a54eff60006',NULL,1,'文章管理','3','cmsArticleController.do?cmsArticle','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),
	('402880e6477d61da01477d71430f001a',NULL,1,'JqueryFile示例','10','fileUploadController.do?fileUploadSample','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('402880e6478c6d8201478c71c5460001',NULL,1,'微相册','3','weixinPhotoAlbumController.do?weixinPhotoAlbum','4028d881436d514601436d5449330189','4028d881436d514601436d5214b30002',NULL),
	('402880ee512d4cd201512f39d5d00009',NULL,1,'统计信息','6','countController.do?countVoList','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('402880ef521c7dcd01521c8c06030003',NULL,1,'管理员','5','mshopStoreadminController.do?mshopStoreadmin','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('402880ef52297ea00152298d474e000d',NULL,1,'客户管理','3','wxMshopCustomerController.do?wxMshopCustomer','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('4028813a4fed542b014fed680b380002',NULL,1,'商品分类','1','shopCategoryController.do?shopCategory','402881fb4fde2163014fde27b7e20001','4028d881436d514601436d5214b30002',NULL),
	('4028813a4feede52014feee2a7620003',NULL,1,'商品信息','2','shopGoodsController.do?shopGoods','402881fb4fde2163014fde27b7e20001','4028d881436d514601436d5214b30002',NULL),
	('4028813a50029e570150029faebd0001',NULL,1,'广告管理','3','shopAdvertisementController.do?shopAdvertisement','402881fb4fde2163014fde27b7e20001','4028d881436d514601436d5214b30002',NULL),
	('4028813a504fd76f015050047e110007',NULL,0,'微商城多店版','0','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028813a504fd76f015050055f150009',NULL,1,'店铺管理','0','mshopStoreController.do?mshopStore','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('4028813a505b0eb201505b20499d000d',NULL,1,'类型管理','1','mshopTypeController.do?mshopType','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('4028813a505b746701505b9a2c29000d',NULL,1,'广告管理','2','mshopAdvertisementController.do?mshopAdvertisement','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('4028813a506036ec0150603b3ceb0001',NULL,1,'配送管理','4','weixinDispatchController.do?weixinDispatch','4028813a504fd76f015050047e110007','4028d881436d514601436d5214b30002',NULL),
	('4028813a5063c70f015063ea8fd7000f',NULL,0,'多店商户','0','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028813a5063c70f0150640566b50016',NULL,1,'商品分类','1','mshopGoodtypeController.do?mshopGoodtype','4028813a5063c70f015063ea8fd7000f','4028d881436d514601436d5214b30002',NULL),
	('4028813a5063c70f015064096129001a',NULL,1,'商品管理','2','mshopGoodsController.do?mshopGoods','4028813a5063c70f015063ea8fd7000f','4028d881436d514601436d5214b30002',NULL),
	('4028813a5083519b015083533b3f0001',NULL,1,'店铺信息','0','mshopStoreController.do?mshopStoreList','4028813a5063c70f015063ea8fd7000f','4028d881436d514601436d5214b30002',NULL),
	('4028813a5132e503015132e60ef90001',NULL,1,'订单管理','3','mshopOrderController.do?mshopOrderShop','4028813a5063c70f015063ea8fd7000f','4028d881436d514601436d5214b30002',NULL),
	('402881e446677b700146677d7b600001',NULL,1,'扩展接口管理','03','weixinExpandconfigController.do?weixinExpandconfig','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),
	('402881e44695183a0146951af2b70004',NULL,0,'微信网站','4','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('402881e44695183a0146951b66050006',NULL,1,'广告管理','0','adController.do?ad','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),
	('402881e44695183a0146951ed79e0008',NULL,1,'栏目管理','1','cmsMenuController.do?menu','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),
	('402881e545f5dd1a0145f5de9bb60001',NULL,0,'消息管理','2','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('402881e545f5dd1a0145f5f32cf00005',NULL,1,'文本消息','1','textTemplateController.do?list','402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d5214b30002',NULL),
	('402881e545f5f4780145f61198810004',NULL,1,'图文消息','2','newsTemplateController.do?list','402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d5214b30002',NULL),
	('402881e8460d7e5301460d81c7a60001',NULL,1,'关键字管理','2','autoResponseController.do?list','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),
	('402881fb4fde2163014fde27b7e20001',NULL,0,'微商城','0','',NULL,'4028d881436d514601436d5214ba0007',NULL),
	('402881fb4fde2bea014fde2f64770001',NULL,1,'客户信息','0','shopCustomerController.do?shopCustomer','402881fb4fde2163014fde27b7e20001','4028d881436d514601436d5214b30002',NULL),
	('402889f64747048401474706d2a50001',NULL,1,'网站信息','5','weixinCmsSiteController.do?weixinCmsSite','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),
	('402889f64747048401474707902e0003',NULL,1,'网站模板','6','weixinCmsStyleController.do?weixinCmsStyle','402881e44695183a0146951af2b70004','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215070018',NULL,0,'Online 开发','11','',NULL,'4028d881436d514601436d5214ba0007',NULL),
	('4028d881436d514601436d52150a0019',NULL,0,'系统管理','11','',NULL,'4028d881436d514601436d5214b80005',NULL),
	('4028d881436d514601436d52150b001a',NULL,0,'统计查询','3','',NULL,'4028d881436d514601436d5214ba0007',NULL),
	('4028d881436d514601436d52150d001b',NULL,0,'常用示例','8','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52150f001c',NULL,0,'系统监控','11','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521513001d',NULL,1,'用户管理','5','userController.do?user','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521516001e',NULL,1,'角色管理','6','roleController.do?role','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52151a001f',NULL,1,'菜单管理','7','functionController.do?function','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52151f0020',NULL,1,'数据字典','6','systemController.do?typeGroupList','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215220021',NULL,1,'图标管理','18','iconController.do?icon','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215260023',NULL,1,'部门管理','22','departController.do?depart','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215290024',NULL,1,'地域管理','22','territoryController.do?territory','4028d881436d514601436d52150a0019','4028d881436d514601436d5214b10001',NULL),
	('4028d881436d514601436d52152c0025',NULL,1,'用户分析','17','logController.do?statisticTabs&isIframe','4028d881436d514601436d52150b001a','4028d881436d514601436d5214b10001',NULL),
	('4028d881436d514601436d5215300026',NULL,1,'表单配置','1','cgFormHeadController.do?cgFormHeadList','4028d881436d514601436d5215070018','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215340027',NULL,1,'动态报表配置','2','cgreportConfigHeadController.do?cgreportConfigHead','4028d881436d514601436d5215070018','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215380028',NULL,1,'数据监控','11','dataSourceController.do?goDruid&isIframe','4028d881436d514601436d52150f001c','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52153b0029',NULL,1,'系统日志','21','logController.do?log','4028d881436d514601436d52150f001c','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521540002a',NULL,1,'定时任务','21','timeTaskController.do?timeTask','4028d881436d514601436d52150f001c','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521545002b',NULL,1,'表单验证','1','demoController.do?formTabs','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521549002c',NULL,1,'Demo示例','2','jeecgDemoController.do?jeecgDemo','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52154d002d',NULL,1,'单表模型','3','jeecgNoteController.do?jeecgNote','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521552002e',NULL,1,'一对多模型','4','jeecgOrderMainController.do?jeecgOrderMain','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521557002f',NULL,1,'Excel导入导出','5','courseController.do?course','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52155a0030',NULL,1,'上传下载','6','commonController.do?listTurn&turn=system/document/filesList','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52155f0031',NULL,1,'无分页列表','7','userNoPageController.do?user','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215640032',NULL,1,'jdbc示例','8','jeecgJdbcController.do?jeecgJdbc','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215670033',NULL,1,'SQL分离','9','jeecgJdbcController.do?dictParameter','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52156b0034',NULL,1,'字典标签','10','demoController.do?dictSelect','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52156f0035',NULL,1,'表单弹出风格','11','demoController.do?demoList','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215730036',NULL,1,'特殊布局','12','demoController.do?demoIframe','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5215770037',NULL,1,'单表例子(无Tag)','13','jeecgEasyUIController.do?jeecgEasyUI','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52157a0038',NULL,1,'一对多例子(无Tag)','14','jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52157e0039',NULL,1,'HTML编辑器','15','jeecgDemoController.do?ckeditor&isIframe','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521581003a',NULL,1,'在线word(IE)','16','webOfficeController.do?webOffice','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521584003b',NULL,1,'WebOffice官方例子','17','webOfficeController.do?webOfficeSample&isIframe','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521587003c',NULL,1,'多附件管理','18','tFinanceController.do?tFinance','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52158a003d',NULL,1,'Datagrid手工Html','19','userController.do?userDemo','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52158f003e',NULL,1,'物料Bom','20','jeecgMatterBomController.do?goList','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d521593003f',NULL,1,'报表示例','21','reportDemoController.do?studentStatisticTabs&isIframe','4028d881436d514601436d52150b001a','4028d881436d514601436d5214b10001',NULL),
	('4028d881436d514601436d5215990040',NULL,1,'ckfinder例子','100','jeecgDemoCkfinderController.do?jeecgDemoCkfinder','4028d881436d514601436d52150d001b','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d52c2fb0181',NULL,0,'基础设置','1','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d539c530183',NULL,0,'菜单管理','3','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d53fee50187',NULL,0,'发送消息','04','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5449330189',NULL,0,'微活动','5','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d54b1bf018d',NULL,0,'统计分析','07','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d54e0ba018f',NULL,0,'账号管理','6','',NULL,'4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5618400191',NULL,1,'关注欢迎语','01','subscribeController.do?list','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d56555e0193',NULL,1,'未识别回复语','02','','4028d881436d514601436d52c2fb0181','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5884be019d',NULL,1,'自定义菜单','02','menuManagerController.do?list','4028d881436d514601436d539c530183','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d58ff5e01a1',NULL,1,'群发消息','01','','4028d881436d514601436d53fee50187','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d592bef01a3',NULL,1,'单发消息','02','','4028d881436d514601436d53fee50187','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d59984601a5',NULL,1,'微大转盘','01','huodongController.do?list&type=2','4028d881436d514601436d5449330189','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d59d6d901a7',NULL,1,'微信刮刮乐','02','huodongController.do?list&type=1','4028d881436d514601436d5449330189','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5a18e601a9',NULL,1,'数据统计','01','','4028d881436d514601436d54b1bf018d','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5af95501b1',NULL,1,'公众帐号管理','01','weixinAccountController.do?weixinAccount','4028d881436d514601436d54e0ba018f','4028d881436d514601436d5214b30002',NULL),
	('4028d881436d514601436d5b3b7001b3',NULL,1,'企业资料','02','','4028d881436d514601436d54e0ba018f','4028d881436d514601436d5214b30002',NULL);

/*!40000 ALTER TABLE `t_s_function` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_icon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_icon`;

CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `iconclas` varchar(200) DEFAULT NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_icon` WRITE;
/*!40000 ALTER TABLE `t_s_icon` DISABLE KEYS */;

INSERT INTO `t_s_icon` (`ID`, `extend`, `iconclas`, `content`, `name`, `path`, `type`)
VALUES
	('4028d881436d514601436d5214650000','png','back',NULL,'返回','plug-in/accordion/images/back.png',1),
	('4028d881436d514601436d5214b10001','png','pie',NULL,'饼图','plug-in/accordion/images/pie.png',1),
	('4028d881436d514601436d5214b30002','png','pictures',NULL,'图片','plug-in/accordion/images/pictures.png',1),
	('4028d881436d514601436d5214b40003','png','pencil',NULL,'笔','plug-in/accordion/images/pencil.png',1),
	('4028d881436d514601436d5214b50004','png','map',NULL,'地图','plug-in/accordion/images/map.png',1),
	('4028d881436d514601436d5214b80005','png','group_add',NULL,'组','plug-in/accordion/images/group_add.png',1),
	('4028d881436d514601436d5214b90006','png','calculator',NULL,'计算器','plug-in/accordion/images/calculator.png',1),
	('4028d881436d514601436d5214ba0007','png','folder',NULL,'文件夹','plug-in/accordion/images/folder.png',1);

/*!40000 ALTER TABLE `t_s_icon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_log`;

CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) DEFAULT NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_log` WRITE;
/*!40000 ALTER TABLE `t_s_log` DISABLE KEYS */;

INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`)
VALUES
	('297e7eb6469a4a8901469a4b008b0000','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:12:25',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a4b9c400001','Chrome','权限: 微大转盘被更新成功',5,'169.254.254.54','2014-06-14 20:13:04',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a4c0c810002','Chrome','权限: 微信刮刮乐被更新成功',5,'169.254.254.54','2014-06-14 20:13:33',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a4c1d6a0003','Chrome','用户admin已退出',2,'169.254.254.54','2014-06-14 20:13:38',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a4c6e2f0004','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:13:58',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a4ebff20005','Chrome','权限: 广告管理被更新成功',5,'169.254.254.54','2014-06-14 20:16:30',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a54f0740007','Chrome','权限: 信息管理被添加成功',3,'169.254.254.54','2014-06-14 20:23:16',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a5596b80009','Chrome','用户admin已退出',2,'169.254.254.54','2014-06-14 20:23:58',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a55a8fa000a','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:24:03',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a562832000b','Chrome','用户admin已退出',2,'169.254.254.54','2014-06-14 20:24:36',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a59947b000c','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:28:20',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a5e5939000f','Chrome','信息添加成功',3,'169.254.254.54','2014-06-14 20:33:32',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a4a8901469a5ef9c80012','Chrome','信息添加成功',3,'169.254.254.54','2014-06-14 20:34:14',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a5fcc01469a60c51e0001','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:36:11',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a5fcc01469a6229a40002','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:37:42',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a728901469a7315830000','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 20:56:11',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a9a0f01469a9a79210000','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 21:39:13',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a9a0f01469a9b5fe10002','Chrome','信息更新成功',5,'169.254.254.54','2014-06-14 21:40:12',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469a9a0f01469a9bcd080004','Chrome','信息更新成功',5,'169.254.254.54','2014-06-14 21:40:40',1,'4028d881436d514601436d5215ac0043'),
	('297e7eb6469ad01a01469ad0915d0000','Chrome','用户: admin[信息部]登录成功',1,'169.254.254.54','2014-06-14 22:38:18',1,'4028d881436d514601436d5215ac0043'),
	('402880a945fef8250145fefbd4c20000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.0.41','2014-05-15 16:24:48',1,'4028d881436d514601436d5215ac0043'),
	('402880a945ff058c0145ff05c6fd0000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.0.41','2014-05-15 16:35:39',1,'4028d881436d514601436d5215ac0043'),
	('402880a945ff058c0145ff08ca8b0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.41','2014-05-15 16:38:57',1,'4028d881436d514601436d5215ac0043'),
	('402880a945ff058c0145ff0b9bea0002','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.0.41','2014-05-15 16:42:02',1,'4028d881436d514601436d5215ac0043'),
	('402880e6475e8cc801475e9117020000','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-22 22:54:32',1,'4028d881436d514601436d5215ac0043'),
	('402880e64763f59c014763f61b110000','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 00:02:58',1,'4028d881436d514601436d5215ac0043'),
	('402880e64763f59c014763f70c870002','Firefox','权限: 订单管理被添加成功',3,'192.168.0.102','2014-07-24 00:04:00',1,'4028d881436d514601436d5215ac0043'),
	('402880e64763f59c014763f7dab70004','Firefox','用户admin已退出',2,'192.168.0.102','2014-07-24 00:04:53',1,'4028d881436d514601436d5215ac0043'),
	('402880e64763f59c014763f7fa0a0005','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 00:05:01',1,'4028d881436d514601436d5215ac0043'),
	('402880e6476832b20147683308170000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 19:48:00',1,'4028d881436d514601436d5215ac0043'),
	('402880e6476832b201476834b5480001','Chrome','用户admin已退出',2,'192.168.0.102','2014-07-24 19:49:50',1,'4028d881436d514601436d5215ac0043'),
	('402880e6476832b201476834d0bf0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 19:49:57',1,'4028d881436d514601436d5215ac0043'),
	('402880e647684471014768452cbd0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 20:07:49',1,'4028d881436d514601436d5215ac0043'),
	('402880e6476844710147684ca6550001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 20:15:59',1,'4028d881436d514601436d5215ac0043'),
	('402880e647685ab10147685b063e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 20:31:41',1,'4028d881436d514601436d5215ac0043'),
	('402880e647687a270147687a94830000','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-24 21:06:09',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0820000000','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 20:53:10',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d09f9a00001','Firefox','微站点模板删除成功',4,'192.168.0.102','2014-07-28 20:55:11',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0a52110004','Firefox','微站点模板添加成功',3,'192.168.0.102','2014-07-28 20:55:34',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0b3b0c0006','Firefox','微站点信息更新成功',5,'192.168.0.102','2014-07-28 20:56:33',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0cb8a50007','Firefox','微站点模板更新成功',5,'192.168.0.102','2014-07-28 20:58:11',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0dc4ca0008','Firefox','微站点模板删除成功',4,'192.168.0.102','2014-07-28 20:59:20',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0e1c9b000c','Firefox','微站点模板添加成功',3,'192.168.0.102','2014-07-28 20:59:42',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d0e644b000e','Firefox','微站点信息更新成功',5,'192.168.0.102','2014-07-28 21:00:00',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d04e001477d1254da000f','Firefox','微站点信息更新成功',5,'192.168.0.102','2014-07-28 21:04:19',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d5c2601477d5d11d60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 22:25:57',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d5c2601477d5d8f4f0003','Chrome','信息添加成功',3,'192.168.0.102','2014-07-28 22:26:29',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d5f7601477d5febb70000','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 22:29:04',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d637e370000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 22:32:58',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d6a70730001','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 22:40:33',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d6ba9ac0018','Firefox','用户admin已退出',2,'192.168.0.102','2014-07-28 22:41:53',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d6bc2680019','Firefox','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 22:41:59',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d71437b001b','Chrome','权限: JqueryFile示例被添加成功',3,'192.168.0.102','2014-07-28 22:48:00',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d71bbf5001d','Chrome','用户admin已退出',2,'192.168.0.102','2014-07-28 22:48:31',1,'4028d881436d514601436d5215ac0043'),
	('402880e6477d61da01477d7248f8001e','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-28 22:49:07',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c6ecb850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-31 20:39:37',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c71c5a70002','Chrome','权限: 微相册被添加成功',3,'192.168.0.102','2014-07-31 20:42:52',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c7227d20004','Chrome','用户admin已退出',2,'192.168.0.102','2014-07-31 20:43:17',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c7245c40005','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-07-31 20:43:24',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c72a7350007','Chrome','微相册添加成功',3,'192.168.0.102','2014-07-31 20:43:49',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c72e9510009','Chrome','添加成功',3,'192.168.0.102','2014-07-31 20:44:06',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c738eea000c','Chrome','相片更新成功',5,'192.168.0.102','2014-07-31 20:44:49',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c73abb9000d','Chrome','相片更新成功',5,'192.168.0.102','2014-07-31 20:44:56',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c7454cd000f','Chrome','微相册添加成功',3,'192.168.0.102','2014-07-31 20:45:39',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478c6d8201478c74a63f0011','Chrome','添加成功',3,'192.168.0.102','2014-07-31 20:46:00',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478d3e0501478d3ea6610000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-08-01 00:26:39',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478d418101478d4232170000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-08-01 00:30:31',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478d48ea01478d4965960000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-08-01 00:38:23',1,'4028d881436d514601436d5215ac0043'),
	('402880e6478d527e01478d52dc8e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.102','2014-08-01 00:48:43',1,'4028d881436d514601436d5215ac0043'),
	('402880eb44ce3b0f0144ce684ba30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.107','2014-03-17 12:59:05',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5115b4a2015115b50aeb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-17 21:49:25',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511f742501511f74e93d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-19 19:15:34',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511f742501511f7a40e80002','Chrome','修改成功',5,'192.168.0.110','2015-11-19 19:21:24',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511f742501511f7f0d6d0005','Chrome','修改成功',5,'192.168.0.110','2015-11-19 19:26:38',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511f742501511f833438000e','Chrome','创建成功',3,'192.168.0.110','2015-11-19 19:31:11',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511f742501511f8505a90011','Chrome','修改成功',5,'192.168.0.110','2015-11-19 19:33:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511f742501511f897d2d0015','Chrome','修改成功',5,'192.168.0.110','2015-11-19 19:38:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ee511fd36501511fd3ae430000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-19 20:59:05',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5120024a01512002ac010000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-19 21:50:24',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5120024a015120038b130008','Chrome','创建成功',3,'192.168.0.110','2015-11-19 21:51:21',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5120024a0151200623960009','Chrome','修改成功',5,'192.168.0.110','2015-11-19 21:54:11',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51203d6d0151203dec020000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-19 22:55:07',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51203d6d0151203e84c00002','Chrome','修改成功',5,'192.168.0.110','2015-11-19 22:55:46',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5129b494015129b5486f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-21 19:02:05',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5129b49401512c941ff20001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 08:24:43',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512cc4c201512cc53eee0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 09:18:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512cd5e101512cd7468a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 09:38:04',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512d184b01512d1885550000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 10:49:20',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512d184b01512d2449720003','Chrome','修改成功',5,'192.168.0.110','2015-11-22 11:02:11',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512d4cd201512d4d26c20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 11:46:49',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512d4cd201512f2a65740001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 20:28:06',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512d4cd201512f2b700f0008','Chrome','创建成功',3,'192.168.0.110','2015-11-22 20:29:14',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512d4cd201512f39d5d9000a','Chrome','权限: 统计信息被添加成功',3,'192.168.0.110','2015-11-22 20:44:58',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f3bee01512f3cc5850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 20:48:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f3ef501512f3f50220000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 20:50:57',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f4a0601512f4a78170000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:03:08',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f4ada01512f4e69330000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:07:26',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f537201512f53c7640000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:13:18',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f57f301512f5840010000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:18:11',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f5fcd01512f601deb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:26:47',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f6b4d01512f6ba71f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:39:23',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f71e001512f726ae90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:46:46',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f756f01512f75c0cf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:50:24',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f77c801512f7815b60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:52:57',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512f7dac01512f7dffdd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 21:59:25',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fa8e301512fa940630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 22:46:39',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fab1c01512fab744e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 22:49:04',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fb20001512fb2515c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 22:56:34',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fbd7901512fbdc36c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:09:04',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fc1dd01512fc2291f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:13:52',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fc5f001512fc63d910000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:18:19',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fca0901512fca553a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:22:47',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fcc3601512fcc818e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:25:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fd2ca01512fd31ec20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:32:23',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fdb4901512fdbc0730000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:41:49',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fe2f501512fe347df0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:50:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fe45001512fe4aa4a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:51:33',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fe6cb01512fe71d2d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:54:14',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fe91c01512fe970820000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-22 23:56:46',1,'4028d881436d514601436d5215ac0043'),
	('402880ee512fed0701512fed5cd10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 00:01:03',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134406201513441e0170000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 20:11:51',1,'4028813a508d983201508da23ba80005'),
	('402880ee513455f8015134564aaf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 20:34:09',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513455f8015134566c010001','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 20:34:17',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513455f80151345696d20002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 20:34:28',1,'4028813a508d983201508da23ba80005'),
	('402880ee513458270151345887520000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 20:36:35',1,'4028813a508d983201508da23ba80005'),
	('402880ee51345b930151345bf2760000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 20:40:19',1,'4028813a508d983201508da23ba80005'),
	('402880ee51345e080151345e8d920000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 20:43:10',1,'4028813a508d983201508da23ba80005'),
	('402880ee51346adf0151346bae090000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 20:57:30',1,'4028813a508d983201508da23ba80005'),
	('402880ee513486eb01513487760a0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:27:51',1,'4028813a508d983201508da23ba80005'),
	('402880ee51348dd90151348e28610000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 21:35:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51348dd90151348e405b0001','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 21:35:16',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51348dd90151348e57820002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 21:35:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51348dd90151348e72140003','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 21:35:29',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51348dd90151348e92380004','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:35:37',1,'4028813a508d983201508da23ba80005'),
	('402880ee51348f4b0151348fbb900000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:36:53',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134915e01513491ce2a0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:39:09',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134938f01513493e0bc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 21:41:25',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134938f01513493f8bc0001','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 21:41:31',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134938f015134941b490002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:41:40',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134956301513495d3cd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 21:43:33',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134956301513495ec670001','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 21:43:39',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513495630151349610cf0002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:43:48',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d01513497e3380000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:45:48',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d01513499d9d60001','Chrome','用户123已退出',2,'192.168.0.110','2015-11-23 21:47:56',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d01513499fb530002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:48:05',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d0151349a11190003','Chrome','用户123已退出',2,'192.168.0.110','2015-11-23 21:48:10',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d0151349aa6d70004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 21:48:49',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349d8e930006','Chrome','权限: 客户管理被添加成功',3,'192.168.0.110','2015-11-23 21:51:59',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349db3480007','Chrome','权限: 客户管理被删除成功',4,'192.168.0.110','2015-11-23 21:52:09',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349e25630009','Chrome','权限: 客户管理被添加成功',3,'192.168.0.110','2015-11-23 21:52:38',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349e6ab3000a','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 21:52:55',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349e8f99000b','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:53:05',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d0151349f16f8000c','Chrome','用户123已退出',2,'192.168.0.110','2015-11-23 21:53:40',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134979d0151349f2d70000d','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-23 21:53:45',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349fa70e000f','Chrome','用户admin已退出',2,'192.168.0.110','2015-11-23 21:54:16',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5134979d0151349ff1a20010','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 21:54:36',1,'4028813a508d983201508da23ba80005'),
	('402880ee5134b13a015134b1f7680000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-11-23 22:14:17',1,'4028813a508d983201508da23ba80005'),
	('402880ee513969270151396986330000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 20:13:15',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513969270151396aaba60001','Chrome','删除开源项目菜单信息数据',4,'192.168.0.110','2015-11-24 20:14:30',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513969270151396ab75e0002','Chrome','删除微活动菜单信息数据',4,'192.168.0.110','2015-11-24 20:14:33',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513969270151396ac02e0003','Chrome','删除关于我们菜单信息数据',4,'192.168.0.110','2015-11-24 20:14:36',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513969270151396c686c0005','Chrome','添加商城的信息成功！',3,'192.168.0.110','2015-11-24 20:16:24',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51396927015139711b1a0006','Chrome','更新商城的菜单信息信息成功！',5,'192.168.0.110','2015-11-24 20:21:32',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51396927015139712de20007','Chrome','同步菜单信息数据成功！',4,'192.168.0.110','2015-11-24 20:21:37',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5139792f0151398c6c6c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 20:51:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5139792f0151398eef180001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 20:54:07',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5139792f01513991e6c30002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 20:57:21',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5139954401513996e5620000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 21:02:49',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5139954401513997bafd0001','Safari','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 21:03:43',1,'4028d881436d514601436d5215ac0043'),
	('402880ee513995440151399b0bce0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-24 21:07:21',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51399544015139a1cd320003','Chrome','同步菜单信息数据成功！',4,'192.168.0.110','2015-11-24 21:14:43',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51585a530151587129e00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-11-30 20:49:50',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51585a5301515871c4600002','Chrome','修改成功',5,'192.168.0.110','2015-11-30 20:50:29',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51705ba50151705c30bb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-12-05 12:17:48',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51705ba50151705dd88b0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.110','2015-12-05 12:19:37',1,'4028d881436d514601436d5215ac0043'),
	('402880ee51705ba50151706246680002','Chrome','微信更新成功',5,'192.168.0.110','2015-12-05 12:24:27',1,'4028d881436d514601436d5215ac0043'),
	('402880ee5170ca5f015170cb56e40000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-12-05 14:19:12',1,'4028813a508d983201508da23ba80005'),
	('402880ee5170ca5f015170cd08050001','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.110','2015-12-05 14:21:03',1,'4028813a508d983201508da23ba80005'),
	('402880ef51bd66070151bd6663120000','Safari','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-20 11:19:42',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bd69206d0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-20 11:22:42',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bd7a0b340006','Chrome','添加成功',3,'192.168.0.111','2015-12-20 11:41:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bda253050008','Chrome','更新成功',5,'192.168.0.111','2015-12-20 12:25:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bda2da5d000a','Chrome','更新成功',5,'192.168.0.111','2015-12-20 12:25:45',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bda71c7a000b','Chrome','推荐店铺成功',5,'192.168.0.111','2015-12-20 12:30:24',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bda72594000c','Chrome','取消推荐成功',5,'192.168.0.111','2015-12-20 12:30:26',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bdab4267000d','Chrome','用户admin已退出',2,'192.168.0.111','2015-12-20 12:34:56',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51bd66070151bdb78176000e','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-20 12:48:18',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4c32b0151c4c3ac7c0000','Safari','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-21 21:38:56',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4c32b0151c4c430a40001','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2015-12-21 21:39:30',1,'4028813a508d983201508da23ba80005'),
	('402880ef51c4c32b0151c4c965a60002','Chrome','暂停营业成功',5,'192.168.0.111','2015-12-21 21:45:11',1,'4028813a508d983201508da23ba80005'),
	('402880ef51c4c32b0151c4cb19140003','Chrome','用户123已退出',2,'192.168.0.111','2015-12-21 21:47:03',1,'4028813a508d983201508da23ba80005'),
	('402880ef51c4c32b0151c4cb4e7a0004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-21 21:47:16',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4dc6b0151c4dd11ad0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-21 22:06:41',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4dc6b0151c4e6e12c0016','Chrome','用户admin已退出',2,'192.168.0.111','2015-12-21 22:17:24',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4dc6b0151c4e778d80017','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-21 22:18:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4dc6b0151c4eb20710018','Chrome','用户admin已退出',2,'192.168.0.111','2015-12-21 22:22:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4dc6b0151c4eb514d0019','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-21 22:22:14',1,'4028d881436d514601436d5215bc0046'),
	('402880ef51c4dc6b0151c4eb64e9001a','Chrome','用户admin已退出',2,'192.168.0.111','2015-12-21 22:22:19',1,'4028d881436d514601436d5215bc0046'),
	('402880ef51c4dc6b0151c4ee5095001b','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2015-12-21 22:25:31',1,'4028d881436d514601436d5215bc0046'),
	('402880ef51c4dc6b0151c4ee6c56001c','Chrome','用户admin已退出',2,'192.168.0.111','2015-12-21 22:25:38',1,'4028d881436d514601436d5215bc0046'),
	('402880ef51c4fa650151c4ffb8700000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2015-12-21 22:44:31',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51c4fa650151c500080c0001','Chrome','用户123456已退出',2,'192.168.0.111','2015-12-21 22:44:52',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51e3e4080151e3e4bc900000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2015-12-27 22:43:17',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51e3e4080151e3e9eff60005','Chrome','添加成功',3,'192.168.0.111','2015-12-27 22:48:58',1,'4028d881436d514601436d5215ac0043'),
	('402880ef51e3fbc40151e3fc3f150000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2015-12-27 23:08:58',1,'4028d881436d514601436d5215ac0043'),
	('402880ef521c7dcd01521c86a6440000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-07 22:38:52',1,'4028d881436d514601436d5215ac0043'),
	('402880ef521c7dcd01521c86cc4e0001','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-07 22:39:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef521c7dcd01521c872c860002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2016-01-07 22:39:26',1,'4028d881436d514601436d5215bc0046'),
	('402880ef521c7dcd01521c8c06230004','Chrome','权限: 管理员设置被添加成功',3,'192.168.0.111','2016-01-07 22:44:44',1,'4028d881436d514601436d5215bc0046'),
	('402880ef521c7dcd01521c8cb3390006','Chrome','用户admin已退出',2,'192.168.0.111','2016-01-07 22:45:29',1,'4028d881436d514601436d5215bc0046'),
	('402880ef521c7dcd01521c8cdc3f0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2016-01-07 22:45:39',1,'4028d881436d514601436d5215bc0046'),
	('402880ef521c7dcd01521c8cf63b0008','Chrome','用户admin已退出',2,'192.168.0.111','2016-01-07 22:45:46',1,'4028d881436d514601436d5215bc0046'),
	('402880ef521c8e0001521c8e63dd0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-07 22:47:19',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221934f01522198bf3d0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-08 22:16:44',1,'4028813a508d983201508da23ba80005'),
	('402880ef5221934f0152219a2fc30002','Chrome','更新成功',5,'192.168.0.111','2016-01-08 22:18:18',1,'4028813a508d983201508da23ba80005'),
	('402880ef5221934f015221ace05b0009','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-08 22:38:43',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221934f015221b3600d000f','Chrome','添加成功',3,'192.168.0.111','2016-01-08 22:45:49',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221934f015221b576e90010','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-08 22:48:06',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221934f015221b5dd690011','Chrome','用户: zhuyanrong[微商城商户]登录成功',1,'192.168.0.111','2016-01-08 22:48:32',1,'402880ef5221934f015221b36001000c'),
	('402880ef5221934f015221b6b1940012','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-08 22:49:27',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221934f015221b7e0f50014','Chrome','微商城多店商品分类添加成功',3,'192.168.0.111','2016-01-08 22:50:44',1,'402880ef5221934f015221b36001000c'),
	('402880ef5221934f015221b80d5d0016','Chrome','微商城多店商品分类添加成功',3,'192.168.0.111','2016-01-08 22:50:56',1,'402880ef5221934f015221b36001000c'),
	('402880ef5221b8c5015221bbffca0001','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-08 22:55:14',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221b8c5015221bc2f270002','Chrome','店铺管理员删除成功',4,'192.168.0.111','2016-01-08 22:55:27',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5221b8c5015221be29380007','Chrome','微信更新成功',5,'192.168.0.111','2016-01-08 22:57:36',1,'4028d881436d514601436d5215ac0043'),
	('402880ef52253b1b0152253b84840000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-09 15:13:23',1,'4028d881436d514601436d5215ac0043'),
	('402880ef52253b1b0152253f05610001','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-09 15:17:13',1,'4028d881436d514601436d5215ac0043'),
	('402880ef52253b1b01522547201f0002','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-09 15:26:04',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5225900c015225987f480000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 16:54:57',1,'4028813a508d983201508da23ba80005'),
	('402880ef52259e800152259ed1c70000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:01:51',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225a069015225a0b6c80000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:03:55',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225a25b015225a2ba800000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:06:07',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225a6fb015225a77b0d0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:11:19',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225a80a015225a85ba70000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:12:16',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225a9d6015225aa76c90000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:14:34',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225ad38015225ae455c0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:18:44',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225b0b3015225b101ab0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:21:43',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225b47c015225b4eeda0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:26:00',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225b677015225b6f4c40000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:28:13',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225bdbd015225be1b2e0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:36:01',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225c185015225c202360000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:40:17',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225c35c015225c3ced50000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:42:15',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225c735015225c77f4e0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:46:17',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225c8d1015225c91e430000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:48:03',1,'4028813a508d983201508da23ba80005'),
	('402880ef5225cdc1015225ce27610000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 17:53:33',1,'4028813a508d983201508da23ba80005'),
	('402880ef5226e68f015226e832f30000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 23:01:37',1,'4028813a508d983201508da23ba80005'),
	('402880ef5226f41f015226f646380000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 23:17:00',1,'4028813a508d983201508da23ba80005'),
	('402880ef5226fc5d015226fe13590000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-09 23:25:31',1,'4028813a508d983201508da23ba80005'),
	('402880ef52292ce601522930022d0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 09:39:18',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229347f01522934f9110000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 09:44:43',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229347f0152293a985f0001','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 09:50:51',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229347f0152293ad1cb0002','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 09:51:06',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229347f01522940a6e90003','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 09:57:28',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229347f01522940da2f0004','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 09:57:42',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229347f01522954ca5c0005','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 10:19:28',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229347f0152296065f60006','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 10:32:09',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229347f01522960a67b0007','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 10:32:25',1,'4028813a508d983201508da23ba80005'),
	('402880ef522965d30152296623c90000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 10:38:25',1,'4028813a508d983201508da23ba80005'),
	('402880ef522965d3015229668a970001','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 10:38:52',1,'4028813a508d983201508da23ba80005'),
	('402880ef522965d30152296779840002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 10:39:53',1,'4028813a508d983201508da23ba80005'),
	('402880ef52296827015229696f610000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 10:42:01',1,'4028d881436d514601436d5215ac0043'),
	('402880ef522968270152296a5eac0001','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 10:43:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef522968270152296a9ba10002','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 10:43:18',1,'4028d881436d514601436d5215ac0043'),
	('402880ef522968270152296bb56a0004','Chrome','更新成功',5,'192.168.0.111','2016-01-10 10:44:30',1,'4028d881436d514601436d5215ac0043'),
	('402880ef522968270152296bd8f00005','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 10:44:39',1,'4028d881436d514601436d5215ac0043'),
	('402880ef522968270152296c42d80006','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 10:45:06',1,'4028813a508d983201508da23ba80005'),
	('402880ef52297ea00152297fa7bb0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 11:06:17',1,'4028813a508d983201508da23ba80005'),
	('402880ef52297ea001522985803f0001','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 11:12:41',1,'4028813a508d983201508da23ba80005'),
	('402880ef52297ea001522985cb4f0002','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:13:00',1,'4028d881436d514601436d5215ac0043'),
	('402880ef52297ea00152298639ea0003','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 11:13:28',1,'4028d881436d514601436d5215ac0043'),
	('402880ef52297ea001522986e0100004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:14:11',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea001522987ea650005','Chrome','用户admin已退出',2,'192.168.0.111','2016-01-10 11:15:19',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298823760006','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 11:15:33',1,'4028813a508d983201508da23ba80005'),
	('402880ef52297ea001522989494f0007','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 11:16:49',1,'4028813a508d983201508da23ba80005'),
	('402880ef52297ea0015229897b1e0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:17:01',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298a1b2c0009','Chrome','权限: 商品分类被更新成功',5,'192.168.0.111','2016-01-10 11:17:42',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298a64e5000a','Chrome','权限: 商品管理被更新成功',5,'192.168.0.111','2016-01-10 11:18:01',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298ba8ee000b','Chrome','权限: 订单管理被更新成功',5,'192.168.0.111','2016-01-10 11:19:24',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298bf0c8000c','Chrome','权限: 客户管理被删除成功',4,'192.168.0.111','2016-01-10 11:19:43',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298d4755000e','Chrome','权限: 客户管理被添加成功',3,'192.168.0.111','2016-01-10 11:21:10',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298dd4b6000f','Chrome','权限: 配送管理被更新成功',5,'192.168.0.111','2016-01-10 11:21:46',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298e11300010','Chrome','权限: 统计信息被更新成功',5,'192.168.0.111','2016-01-10 11:22:02',1,'4028d881436d514601436d5215bc0046'),
	('402880ef52297ea00152298e5c290011','Chrome','权限: 管理员被更新成功',5,'192.168.0.111','2016-01-10 11:22:21',1,'4028d881436d514601436d5215bc0046'),
	('402880ef5229913d01522991d7520000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:26:09',1,'4028d881436d514601436d5215bc0046'),
	('402880ef5229913d01522992230e0001','Chrome','用户admin已退出',2,'192.168.0.111','2016-01-10 11:26:29',1,'4028d881436d514601436d5215bc0046'),
	('402880ef5229913d0152299258290002','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:26:42',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229ac1f015229acc9750000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:55:35',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229aef5015229af3a590000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 11:58:15',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229b6e0280000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:06:36',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229be0dac0001','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 12:14:27',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229be2f3a0002','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:14:35',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229be42d40003','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 12:14:40',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229be7bbb0004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:14:55',1,'4028d881436d514601436d5215bc0046'),
	('402880ef5229b448015229c079220005','Chrome','用户admin已退出',2,'192.168.0.111','2016-01-10 12:17:05',1,'4028d881436d514601436d5215bc0046'),
	('402880ef5229b448015229c0af2b0006','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:17:19',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229c5afa5000a','Chrome','更新成功',5,'192.168.0.111','2016-01-10 12:22:47',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229ce6b28000b','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:32:19',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229d040080010','Chrome','添加成功',3,'192.168.0.111','2016-01-10 12:34:19',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229d336730012','Chrome','更新成功',5,'192.168.0.111','2016-01-10 12:37:33',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229d4dbe70013','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:39:21',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229b448015229d562ae0014','Chrome','用户: zhuyanrong[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 12:39:56',1,'402880ef5221934f015221b36001000c'),
	('402880ef5229b448015229dba23f0016','Chrome','用户zhuyanrong已退出',2,'192.168.0.111','2016-01-10 12:46:45',1,'402880ef5221934f015221b36001000c'),
	('402880ef5229e0b5015229e243ae0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 12:54:00',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229ebf6015229ec70760000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:05:07',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229efaa015229f004980000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:09:01',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f1db015229f227ec0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:11:21',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f2bc015229f32ac60000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:12:28',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a015229f509fa0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:14:30',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a015229f592010002','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:15:05',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a015229f6df5b0004','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:16:30',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a015229f76bdb0006','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:17:06',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a06b0db0007','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 13:33:47',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a06d1bd0008','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:33:56',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a071a9b0009','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:34:14',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a09cc8c000e','Chrome','添加成功',3,'192.168.0.111','2016-01-10 13:37:11',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a0b730b000f','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:38:59',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a0bbd7d0010','Chrome','用户: yanjiudian[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 13:39:18',1,'402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522a0c593b0011','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 13:39:58',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a11a3410012','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:45:45',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a11d1bd0014','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:45:56',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a120d390016','Chrome','微商城多店商品分类添加成功',3,'192.168.0.111','2016-01-10 13:46:12',1,'402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522a1232410018','Chrome','微商城多店商品分类添加成功',3,'192.168.0.111','2016-01-10 13:46:21',1,'402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522a1236870019','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 13:46:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a127f16001a','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 13:46:41',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229f49a01522a129dac001c','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:46:49',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229f49a01522a12c701001f','Chrome','微信商城商品信息添加成功',3,'192.168.0.111','2016-01-10 13:46:59',1,'402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522a1573360021','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:49:54',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a15feda0023','Chrome','更新成功',5,'192.168.0.111','2016-01-10 13:50:30',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a1729230024','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 13:51:46',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a27dac20029','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:10:01',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a281979002a','Chrome','暂停营业成功',5,'192.168.0.111','2016-01-10 14:10:17',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a28a782002b','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 14:10:53',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229f49a01522a28b89f002c','Chrome','恢复营业成功',5,'192.168.0.111','2016-01-10 14:10:57',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a28fb0c002d','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 14:11:14',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a2b21b3002f','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:13:35',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a2d12840031','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:15:42',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a2ecb150034','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:17:35',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a2f32180035','Chrome','暂停营业成功',5,'192.168.0.111','2016-01-10 14:18:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a30b6560037','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:19:41',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a3214280039','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:21:11',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a323edb003b','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:21:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a325497003d','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:21:27',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a326a32003f','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:21:33',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a32a3460041','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:21:47',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a32cf680043','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:21:59',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a32f6370045','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:22:08',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a33205f0047','Chrome','更新成功',5,'192.168.0.111','2016-01-10 14:22:19',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a3b195c0048','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 14:31:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a3b685d0049','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 14:31:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a3ceeaf004a','Chrome','恢复营业成功',5,'192.168.0.111','2016-01-10 14:33:02',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a42316f004d','Chrome','广告添加成功',3,'192.168.0.111','2016-01-10 14:38:47',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a8305da004e','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 15:49:35',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a8d9eb1004f','Chrome','微商城多店版广告删除成功',4,'192.168.0.111','2016-01-10 16:01:10',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a8e4b1b0052','Chrome','广告添加成功',3,'192.168.0.111','2016-01-10 16:01:54',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a908f2d0053','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 16:04:22',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a922ffe0054','Chrome','微商城多店版广告删除成功',4,'192.168.0.111','2016-01-10 16:06:09',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a92c65d0057','Chrome','广告添加成功',3,'192.168.0.111','2016-01-10 16:06:48',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a9397b40058','Chrome','微商城多店版广告删除成功',4,'192.168.0.111','2016-01-10 16:07:41',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a94acf9005b','Chrome','广告添加成功',3,'192.168.0.111','2016-01-10 16:08:52',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a9db832005c','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 16:18:45',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522a9def06005d','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 16:18:59',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229f49a01522a9f388a005e','Chrome','用户: yanjiudian[微商城商户]登录成功',1,'192.168.0.111','2016-01-10 16:20:23',1,'402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522aa255f10061','Chrome','微信商城商品信息添加成功',3,'192.168.0.111','2016-01-10 16:23:47',1,'402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522aab8df50062','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 16:33:52',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522aac25340063','Chrome','微信更新成功',5,'192.168.0.111','2016-01-10 16:34:30',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522ab10ddd0067','Chrome','用户123已退出',2,'192.168.0.111','2016-01-10 16:39:52',1,'4028813a508d983201508da23ba80005'),
	('402880ef5229f49a01522ab1371f0068','Chrome','用户: 123456[信息部]登录成功',1,'192.168.0.111','2016-01-10 16:40:03',1,'4028d881436d514601436d5215ac0043'),
	('402880ef5229f49a01522ab43be3006c','Chrome','用户123456已退出',2,'192.168.0.111','2016-01-10 16:43:20',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d19f3710000','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2014-04-26 16:14:54',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d1b7a360001','Chrome','用户admin已退出',2,'192.168.0.115','2014-04-26 16:16:34',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d1ba61c0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2014-04-26 16:16:46',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d1c5b250003','Chrome','用户admin已退出',2,'192.168.0.115','2014-04-26 16:17:32',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d25a4ef0004','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2014-04-26 16:27:41',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d26ce2c0005','Chrome','用户admin已退出',2,'192.168.0.115','2014-04-26 16:28:57',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d26e6870006','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2014-04-26 16:29:03',1,'4028d881436d514601436d5215ac0043'),
	('402880f3459d14a101459d2dae670007','Chrome','用户: admin[信息部]登录成功',1,'192.168.0.115','2014-04-26 16:36:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fcf34d6014fcf3b1dd10000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-15 12:20:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fcf34d6014fcf7960b70001','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-15 13:28:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fcfd949014fcfd9df610000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-15 15:13:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd3d707014fd3d79d790000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 09:49:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd467eb014fd469b48c0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 12:29:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd47208014fd4c537650000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 14:08:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd47208014fd50fdf230001','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 15:30:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd47208014fd512ff3a002c','MSIE 8.0','用户admin已退出',2,'192.168.1.186','2015-09-16 15:33:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd47208014fd5134acc002d','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 15:34:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd47208014fd5819341002e','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 17:34:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd47208014fd585e3240036','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-16 17:39:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd58de8014fd58e72820000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 17:48:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd59205014fd5926bc10000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-16 17:53:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd59205014fd599371f0008','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-16 18:00:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd93e6ecb0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 10:59:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd96672eb0001','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 11:43:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd96c0287000c','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 11:49:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd96d399e000d','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 11:50:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd96dbbfa000e','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 11:51:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd971a929000f','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 11:55:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd97231340010','MSIE 8.0','删除成功',4,'192.168.1.186','2015-09-17 11:56:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd93dd5014fd976815e0011','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 12:01:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fd9cba4e40000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 13:34:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fd9efd00a0018','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 14:13:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fd9f101420019','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 14:14:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fd9f25502001a','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 14:16:21',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fd9f2d858001b','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 14:16:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fd9fde822001c','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 14:29:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fda0f7f34001d','MSIE 8.0','express_name删除成功',4,'192.168.1.186','2015-09-17 14:48:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fda0f7ff1001f','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 14:48:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fda138048002a','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 14:52:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fda1ea4cd0034','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 15:04:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fd9ca45014fda287498003f','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 15:15:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fda6ad3014fda6b9b850000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 16:28:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fda6ad3014fda9a7b230001','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 17:20:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fda6ad3014fda9c24be0004','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 17:21:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fda6ad3014fda9f2354000e','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 17:25:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fda6ad3014fda9fdf430010','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 17:25:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdaa8cb220000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 17:35:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdaab2991000b','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 17:38:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdaac7d430014','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 17:39:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdab125b00015','MSIE 8.0','删除成功',4,'192.168.1.186','2015-09-17 17:44:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdab135e90016','MSIE 8.0','删除成功',4,'192.168.1.186','2015-09-17 17:44:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdab920bc0023','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 17:53:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdabede590024','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-17 17:59:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdac217ad002f','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 18:03:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdac759020038','MSIE 8.0','创建成功',3,'192.168.1.186','2015-09-17 18:09:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdac87b630039','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:10:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdacb341b003a','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:13:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdacb9030003b','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:13:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdacbf62b003c','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:14:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdad068d2003d','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:18:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdad0e775003e','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:19:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdad2c004003f','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:21:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdad30fc50040','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:21:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdad3c7e20041','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:22:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdadc5fad0042','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:31:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fdaa866014fdade77800043','MSIE 8.0','修改成功',5,'192.168.1.186','2015-09-17 18:34:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed5551c00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 08:37:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed5a8e690001','Chrome','修改成功',5,'192.168.1.186','2015-09-21 08:42:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed680b460003','Chrome','权限: 商品分类被添加成功',3,'192.168.1.186','2015-09-21 08:57:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed6855710004','Chrome','用户admin已退出',2,'192.168.1.186','2015-09-21 08:58:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed68a05b0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 08:58:21',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed6959db0007','Chrome','用户admin已退出',2,'192.168.1.186','2015-09-21 08:59:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed542b014fed697e9d0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 08:59:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed69e8014fed6a4ad70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 09:00:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed69e8014fed6f97aa0001','Chrome','修改成功',5,'192.168.1.186','2015-09-21 09:05:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed715c014fed71b78b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 09:08:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed715c014fed759d900001','Chrome','修改成功',5,'192.168.1.186','2015-09-21 09:12:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed715c014fed771f350002','Chrome','修改成功',5,'192.168.1.186','2015-09-21 09:14:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed79b8014fed7a18460000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 09:17:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed79b8014fed7a39550001','Chrome','微商城商品类别删除成功',4,'192.168.1.186','2015-09-21 09:17:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed79b8014fed7b01190004','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-21 09:18:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed79b8014fed838af00005','Chrome','修改成功',5,'192.168.1.186','2015-09-21 09:27:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed8538014fed859eab0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 09:30:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed8538014fed8a66bb0001','Chrome','相片更新成功',5,'192.168.1.186','2015-09-21 09:35:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed8538014fed8c3c8f0002','Chrome','活动删除成功',4,'192.168.1.186','2015-09-21 09:37:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed8538014fed8cb6c80004','Chrome','活动添加成功',3,'192.168.1.186','2015-09-21 09:37:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed8538014fed93c2220005','Chrome','活动删除成功',4,'192.168.1.186','2015-09-21 09:45:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed9448014fed94f6b40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 09:46:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed9448014fed95578b0001','Chrome','活动删除成功',4,'192.168.1.186','2015-09-21 09:47:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed9bfb014fed9d4c510000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 09:55:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed9bfb014fed9fae910002','Chrome','活动添加成功',3,'192.168.1.186','2015-09-21 09:58:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fed9bfb014fed9fe2550003','Chrome','活动更新成功',5,'192.168.1.186','2015-09-21 09:58:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feda251014feda30bbf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 10:01:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedadd4014fedae21930000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 10:14:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedb0a4014fedb0ff300000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 10:17:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedb0a4014fedb1e42b0001','Chrome','修改成功',5,'192.168.1.186','2015-09-21 10:18:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedb3a4014fedb3ff740000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 10:20:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedb3a4014fedb46a2e0002','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-21 10:21:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedb3a4014fedbb887b0003','Chrome','微信公众帐号信息更新成功',5,'192.168.1.186','2015-09-21 10:28:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedb3a4014fedc29b300004','Chrome','修改成功',5,'192.168.1.186','2015-09-21 10:36:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedc6c6014fedcfe7500000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 10:51:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedc6c6014fedd5414e0001','Chrome','修改关文本模板成功！',5,'192.168.1.186','2015-09-21 10:57:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedc6c6014fee688e020002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 13:37:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedc6c6014fee8d1aad0003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 14:17:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fedc6c6014fee9998cc0004','Chrome','同步菜单信息数据成功！',4,'192.168.1.186','2015-09-21 14:31:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feea64a014feea9b0600000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 14:49:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feeb17a014feeb1d8ab0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 14:57:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feeb17a014feed742570001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 15:38:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feedea6dc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 15:46:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feee151970001','Chrome','权限: 微商城被更新成功',5,'192.168.1.186','2015-09-21 15:49:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feee256fa0002','Chrome','权限: 微商城被更新成功',5,'192.168.1.186','2015-09-21 15:50:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feee2a76e0004','Chrome','权限: 商品信息被添加成功',3,'192.168.1.186','2015-09-21 15:51:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feee2f4030006','Chrome','用户admin已退出',2,'192.168.1.186','2015-09-21 15:51:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feee419aa0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 15:52:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feef2048a0009','Chrome','修改成功',5,'192.168.1.186','2015-09-21 16:08:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feef99f2e000a','Chrome','修改成功',5,'192.168.1.186','2015-09-21 16:16:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feefd2833000b','Chrome','修改成功',5,'192.168.1.186','2015-09-21 16:20:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014feeffb35e000c','Chrome','修改成功',5,'192.168.1.186','2015-09-21 16:22:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4feede52014fef009c9f000d','Chrome','修改成功',5,'192.168.1.186','2015-09-21 16:23:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef0237014fef028eb60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:26:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef0237014fef02fa4a0001','Chrome','修改成功',5,'192.168.1.186','2015-09-21 16:26:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef04ec014fef054e870000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:29:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef0972014fef09f9610000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:34:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef0f60014fef0fd9890000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:40:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1912014fef19cf1a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:51:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1912014fef1b5cd00001','Chrome','权限: 商品信息被更新成功',5,'192.168.1.186','2015-09-21 16:53:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1912014fef1b8f220002','Chrome','用户admin已退出',2,'192.168.1.186','2015-09-21 16:53:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1912014fef1bbbdb0003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:53:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1e59014fef1ea77e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:56:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1e59014fef1ef6990001','Chrome','权限: 商品信息被更新成功',5,'192.168.1.186','2015-09-21 16:57:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1e59014fef1f0b790002','Chrome','用户admin已退出',2,'192.168.1.186','2015-09-21 16:57:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1e59014fef1f5aa30003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 16:57:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef1e59014fef46b14d0004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 17:40:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4fef6e51014fef6ec0e10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-21 18:24:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff27ac0c10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 08:36:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff2e571fa0002','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-22 10:32:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff2e7ba320004','Chrome','信息添加成功',3,'192.168.1.186','2015-09-22 10:35:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff2f12b8f0006','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-22 10:45:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff2f138f70008','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-22 10:45:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff2f1fc47000a','Chrome','栏目管理添加成功',3,'192.168.1.186','2015-09-22 10:46:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff279d7014ff2f20c9e000b','Chrome','栏目管理删除成功',4,'192.168.1.186','2015-09-22 10:46:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff2fb16014ff2fb69000000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 10:56:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff30a9d014ff30aeb5c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 11:13:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff30a9d014ff31bc2810005','Chrome','添加成功',3,'192.168.1.186','2015-09-22 11:32:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff30a9d014ff324e8e4000a','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-22 11:42:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3c659014ff3c6ad5c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 14:38:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3dc88014ff3dd1ada0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:03:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3e4a8014ff3e50be10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:11:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3e4a8014ff3ee41f20005','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-22 15:22:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3f5d1014ff3f620ef0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:30:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3ff72014ff3ffdbcf0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:41:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3ff72014ff40019590003','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-22 15:41:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff3ff72014ff40489d70006','Chrome','信息添加成功',3,'192.168.1.186','2015-09-22 15:46:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff40908014ff409536f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:51:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff40908014ff409aa6c0003','Chrome','信息添加成功',3,'192.168.1.186','2015-09-22 15:51:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff40cd9014ff40d354a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:55:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff41006014ff41058350000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 15:59:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff41006014ff410af260003','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-22 15:59:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff42bd0014ff42c207c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 16:29:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff42bd0014ff42cd5900003','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-22 16:30:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff454b5014ff45502730000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 17:14:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff454b5014ff4559b980001','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-22 17:14:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff4617d014ff461d2aa0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-22 17:28:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff7effa014ff7f0a51a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 10:03:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff7effa014ff7f2609f0001','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 10:05:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff7f345014ff7f4cf760000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 10:07:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff7f345014ff7f4f5170001','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 10:07:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff7fee5014ff7ff51eb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 10:19:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff7fee5014ff7ff724e0001','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 10:19:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff800d7014ff8012c6a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 10:21:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff800d7014ff801466a0001','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 10:21:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff80ec5014ff80f11860000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 10:36:21',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff84c14014ff84c65720000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 11:43:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff85917014ff8596e0d0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 11:57:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8695c014ff869a8c80000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:15:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff86be4014ff86c30f00000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:18:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff87909014ff87954d60000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:32:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff87a96014ff87aede70000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:34:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff87cc3014ff87d16b20000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:36:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff887ac014ff8881f8e0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:48:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff88c9a014ff88ce8f00000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 12:53:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff897f9014ff89853240000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 13:06:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8a4c7014ff8a54baa0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 13:20:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8a4c7014ff8a5657b0001','Chrome','下架商品成功',4,'192.168.1.186','2015-09-23 13:20:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8a64a014ff8a694e60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 13:21:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8ac93680000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 13:28:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8acc6610001','Chrome','上架成功',4,'192.168.1.186','2015-09-23 13:28:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8ace96f0002','Chrome','上架成功',4,'192.168.1.186','2015-09-23 13:28:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8acee810003','Chrome','上架成功',4,'192.168.1.186','2015-09-23 13:28:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8acf3050004','Chrome','上架成功',4,'192.168.1.186','2015-09-23 13:28:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8acfc170005','Chrome','下架成功',4,'192.168.1.186','2015-09-23 13:28:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f1a1060008','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-23 14:43:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f1d45c0009','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:44:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f339dc000c','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-23 14:45:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f34fe1000d','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:45:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f38f16000e','Chrome','上架成功',4,'192.168.1.186','2015-09-23 14:45:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f39961000f','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:45:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f39d000010','Chrome','上架成功',4,'192.168.1.186','2015-09-23 14:45:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f3a0020011','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:45:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f3c8930012','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 14:46:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f5a0d10014','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-23 14:48:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f802230015','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:50:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f804ee0016','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:50:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f808f50017','Chrome','上架成功',4,'192.168.1.186','2015-09-23 14:50:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff8f80c290018','Chrome','下架成功',4,'192.168.1.186','2015-09-23 14:50:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff8ac4b014ff90bbf38001b','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-23 15:12:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff91338014ff91391a30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 15:20:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff91338014ff913f2ba0002','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-23 15:21:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff91338014ff91457d50004','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-23 15:21:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff9271d660000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-23 15:42:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff927a8130001','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-23 15:42:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff927f0cd0002','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-23 15:43:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff9285a950003','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 15:43:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff92864000004','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 15:43:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff928756b0005','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-23 15:43:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ff926c4014ff92d65880007','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-23 15:49:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffd06d5014ffd1103360000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-24 09:56:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffd34f4014ffd36682f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-24 10:37:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffdd39c014ffdd412090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-24 13:29:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffdd39c014ffdd4481c0001','Chrome','同步菜单信息数据成功！',4,'192.168.1.186','2015-09-24 13:29:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffe4405014ffe44812a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-24 15:32:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffe4405014ffe47c0e40002','Chrome','修改成功',5,'192.168.1.186','2015-09-24 15:35:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffe4405014ffe47fe940003','Chrome','修改成功',5,'192.168.1.186','2015-09-24 15:36:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffe6a87014ffe7095870002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-24 16:20:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffe6a87014ffe74f0830004','Chrome','修改成功',5,'192.168.1.186','2015-09-24 16:25:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a4ffe9399014ffe945e090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-24 16:59:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa015002484d8e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 10:15:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa0150024a2fe50002','Chrome','活动添加成功',3,'192.168.1.186','2015-09-25 10:17:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa0150027ab7390005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 11:10:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa01500289450a0012','Chrome','创建成功',3,'192.168.1.186','2015-09-25 11:26:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa0150028bb2130013','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:28:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa015002929a200016','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:36:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa0150029466290017','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:38:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500247fa01500295bc1f0018','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:39:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50029e570150029ea3820000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 11:49:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50029e570150029faec70002','Chrome','权限: 广告管理被添加成功',3,'192.168.1.186','2015-09-25 11:50:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50029e57015002a0189c0004','Chrome','用户admin已退出',2,'192.168.1.186','2015-09-25 11:50:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50029e57015002a02f730005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 11:51:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002a09d015002a0f8120000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 11:51:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002a09d015002a6a5630001','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:58:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002a09d015002a75adb0002','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:58:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002a09d015002a836f50003','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:59:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002a09d015002a8575a0004','Chrome','修改成功',5,'192.168.1.186','2015-09-25 11:59:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002aa26015002aab2db0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 12:02:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002ad77015002adbfd20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 12:05:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002ad77015002ae58ad0001','Chrome','修改成功',5,'192.168.1.186','2015-09-25 12:06:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002afe9015002b05e9d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 12:08:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002afe9015002c192d60004','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 12:27:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002cc78015002ccbf340000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 12:39:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002cc78015002cce5a30001','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 12:39:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002cc78015002cded400003','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 12:41:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5002cc78015002df0b610006','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 12:59:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d1015003364c680000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 14:35:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d1015003366d220001','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:35:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d101500336758e0002','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:35:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d101500336bb370005','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:35:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d101500336f6d60007','Chrome','微商城广告添加失败:大图片广告最多只能有一个！',3,'192.168.1.186','2015-09-25 14:35:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d10150033755da0009','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:36:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d101500337757e000b','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:36:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d1015003379313000d','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:36:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d101500337aded000f','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:36:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500335d101500337cc860010','Chrome','微商城广告添加失败:小图片广告最多有4个！',3,'192.168.1.186','2015-09-25 14:36:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034995cc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-25 14:56:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034a5caa0001','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:56:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034a65550002','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:56:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034a70f50003','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:57:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034a7b5e0004','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:57:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034a84df0005','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-25 14:57:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034bbbda0008','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:58:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034c0e83000b','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:58:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034c7d8c000e','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:59:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034cd3d80011','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:59:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500349510150034d149e0014','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-25 14:59:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50072a130150072a63c50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-26 09:00:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500742e801500743352f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-26 09:27:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500742e8015007434a780001','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-26 09:27:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500742e801500743536f0002','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-26 09:27:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500742e80150074359770003','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-26 09:27:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500742e8015007435f330004','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-26 09:27:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a500742e80150074365f10005','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-26 09:27:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50074628015007466c5f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-26 09:31:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50074628015007469e300003','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-26 09:31:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5007462801500746cd310005','Chrome','微商城广告添加失败:大图片广告最多只能有一个！',3,'192.168.1.186','2015-09-26 09:31:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117ad3b50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-28 09:04:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117cffdd0001','Chrome','微商城广告删除成功',4,'192.168.1.186','2015-09-28 09:06:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117d834a0004','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-28 09:07:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117df2630007','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-28 09:07:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117e36d0000a','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-28 09:08:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117e7793000d','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-28 09:08:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501177bb0150117eab5e0010','Chrome','微商城广告添加成功',3,'192.168.1.186','2015-09-28 09:08:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5018673201501867a3f60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-29 17:20:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bb17901501bd918480000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-30 09:23:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bf4bb01501bf50a170000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-30 09:54:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bf4bb01501c0234ae0001','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 10:08:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bf4bb01501c071c6f0002','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 10:13:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bf4bb01501c07533f0003','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 10:14:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bf4bb01501c09b07a0004','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 10:16:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501bf4bb01501c0f06160005','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 10:22:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501c201101501c204feb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-30 10:41:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501c336101501c3433610000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-30 11:03:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501c336101501c39911d0003','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-30 11:09:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501cdbc101501cdc20360000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-30 14:06:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501cdbc101501cdf3ecc0003','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-09-30 14:10:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501cdbc101501ce1c57d0004','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 14:12:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501cdbc101501ce1dadf0005','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-09-30 14:12:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501cdbc101501ce273a50006','Chrome','微信商城商品信息删除成功',4,'192.168.1.186','2015-09-30 14:13:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4a90ef0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-09-30 16:07:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4acfa80001','Chrome','微商城商品类别更新成功',5,'192.168.1.186','2015-09-30 16:07:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4af0fb0002','Chrome','微商城商品类别更新成功',5,'192.168.1.186','2015-09-30 16:07:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4b482b0003','Chrome','微商城商品类别更新成功',5,'192.168.1.186','2015-09-30 16:08:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4b85660004','Chrome','微商城商品类别更新成功',5,'192.168.1.186','2015-09-30 16:08:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4ba03b0005','Chrome','微商城商品类别更新成功',5,'192.168.1.186','2015-09-30 16:08:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4bce000007','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-30 16:08:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a501d493401501d4be4ca0009','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-09-30 16:08:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5046473101504647d9ee0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-08 15:08:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504bea7401504beac5a60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 17:24:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504bea7401504bf3c7e70002','Chrome','角色: 商户被添加成功',3,'192.168.1.186','2015-10-09 17:34:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c040001504c0463a50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 17:52:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c060301504c064ca50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 17:54:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c086a01504c08ac8d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 17:57:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c0c6701504c0cac320000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:01:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c0e2b01504c0e6e0a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:03:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c0e2b01504c0e8a750004','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-10-09 18:03:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c0e2b01504c0ed8470005','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-09 18:04:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c123b01504c12aa490000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:08:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c123b01504c12cb3f0004','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-10-09 18:08:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c123b01504c12dbc50005','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-09 18:08:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c151c01504c159ef30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:11:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c151c01504c15ba510004','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-10-09 18:11:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c151c01504c15d34a0005','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-09 18:11:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c151c01504c1606a90006','Chrome','用户: 1234567[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:12:03',1,'4028813a504c151c01504c15ba340002'),
	('4028813a504c1c9901504c1cf1f70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:19:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c1c9901504c1d0d3e0004','Chrome','微商城商品类别添加成功',3,'192.168.1.186','2015-10-09 18:19:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c1c9901504c1d1eff0005','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-09 18:19:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504c1c9901504c1d4fa10006','Chrome','用户: 12345678[信息部]登录成功',1,'192.168.1.186','2015-10-09 18:20:00',1,'4028813a504c1c9901504c1d0d250002'),
	('4028813a504fab9f01504fbfac490000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 11:16:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f01504fe79f7a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 11:59:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f01504fe9057d0001','Chrome','用户：123456删除成功',4,'192.168.1.186','2015-10-10 12:01:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f01504fe90c760002','Chrome','用户：123456删除成功',4,'192.168.1.186','2015-10-10 12:01:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f01504feafe480003','Chrome','用户：1234567锁定成功',5,'192.168.1.186','2015-10-10 12:03:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f01505003db550005','Chrome','权限: 微商城多店版被添加成功',3,'192.168.1.186','2015-10-10 12:30:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f0150500416130006','Chrome','权限: 微商城多店版被删除成功',4,'192.168.1.186','2015-10-10 12:30:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f015050047e1b0008','Chrome','权限: 微商城多店版被添加成功',3,'192.168.1.186','2015-10-10 12:31:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a504fd76f015050055f1d000a','Chrome','权限: 店铺管理被添加成功',3,'192.168.1.186','2015-10-10 12:32:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5050c0df015050c13f1b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 15:57:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5050c0df015050cc75980003','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-10 16:09:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5050c0df015050cc8c900004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 16:09:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5050e3a3015050e3e4d20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 16:35:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5050e3a3015050e6cf630001','Chrome','用户：scott删除成功',4,'192.168.1.186','2015-10-10 16:38:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5050e3a3015050fc55160003','Chrome','部门: 微商城商户被添加成功',3,'192.168.1.186','2015-10-10 17:02:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5051028001505102bf220000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 17:09:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505109d70150510ea30d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 17:22:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505109d7015051179d400003','Chrome','用户: 123456789添加成功',3,'192.168.1.186','2015-10-10 17:31:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505131b101505131f2bc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:00:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5051384701505138b7ef0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:08:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50513c890150513cc93a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:12:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50513fee015051402c7c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:16:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5051425101505142938c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:18:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5051436d01505143ab8f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:20:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5051454f015051458ba40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:22:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50514b8b0150514c051e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:29:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50514d0e0150514d4e790000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:30:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50514f0a0150514f4d6a0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-10 18:32:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50557d640150557db7b90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:01:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50557d640150557eab700001','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-11 14:02:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50557d640150557ee08d0002','Chrome','用户: 123456789[微商城商户]登录成功',1,'192.168.1.186','2015-10-11 14:03:09',1,'4028813a505109d7015051179d170001'),
	('4028813a50557d640150557efdb50003','Chrome','用户123456789已退出',2,'192.168.1.186','2015-10-11 14:03:17',1,'4028813a505109d7015051179d170001'),
	('4028813a50557d640150557f15080004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:03:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50558fd301505590207e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:22:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50558fd301505590427e0001','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:22:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a015055928bca0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:24:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592a1630001','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592a8490002','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:24:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592ae020003','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592b2960004','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:24:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592b5d60005','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592b8d30006','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:24:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592bb5c0007','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592be3b0008','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:24:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592c19c0009','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592c59e000a','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:24:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592c8a6000b','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592cd2d000c','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:24:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592d287000d','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:24:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505592f5ab000e','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 14:25:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a015055930764000f','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-11 14:25:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a0150559366720010','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:25:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a015055937b880011','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 14:25:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a015055938aa50012','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-11 14:25:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055924a01505593bdec0013','Chrome','用户: 123456789[微商城商户]登录成功',1,'192.168.1.186','2015-10-11 14:25:57',1,'4028813a505109d7015051179d170001'),
	('4028813a5055924a01505593cf690014','Chrome','用户123456789已退出',2,'192.168.1.186','2015-10-11 14:26:01',1,'4028813a505109d7015051179d170001'),
	('4028813a5055924a01505593eaf90015','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:26:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055a4ea015055a52f920000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:45:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055a78a015055a7cc790000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:47:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055a78a015055ac3c170003','Chrome','用户: 7654321添加成功',3,'192.168.1.186','2015-10-11 14:52:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055afcd015055b00b320000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:56:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055b1a1015055b1f9790000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:58:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055b1a1015055b25e040001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 14:59:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055b34f015055b38c9d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:00:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055b4aa015055b4e9fa0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:02:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055b88b015055b8d1400000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:06:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055bc91015055bcd15a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:10:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055bc91015055bd2ec40002','Chrome','用户: 7654321更新成功',5,'192.168.1.186','2015-10-11 15:11:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055bc91015055bd72be0004','Chrome','用户: 7654321更新成功',5,'192.168.1.186','2015-10-11 15:11:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055bc91015055bd90ed0005','Chrome','用户：7654321删除成功',4,'192.168.1.186','2015-10-11 15:11:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055c59e015055c5eac30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:20:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055c59e015055c88d840001','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-11 15:23:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055c59e015055c8c11e0002','Chrome','用户: 123456789[微商城商户]登录成功',1,'192.168.1.186','2015-10-11 15:23:51',1,'4028813a505109d7015051179d170001'),
	('4028813a5055c59e015055c9190b0003','Chrome','用户123456789已退出',2,'192.168.1.186','2015-10-11 15:24:13',1,'4028813a505109d7015051179d170001'),
	('4028813a5055c59e015055c932140004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:24:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055d42c330000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 15:36:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055d48afc0003','Chrome','用户: 4321添加成功',3,'192.168.1.186','2015-10-11 15:36:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055d68fb60004','Chrome','用户：123456789暂停营业成功',5,'192.168.1.186','2015-10-11 15:38:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055d69bd30005','Chrome','用户：123456789恢复营业成功',5,'192.168.1.186','2015-10-11 15:38:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055ebd439000c','Chrome','创建成功',3,'192.168.1.186','2015-10-11 16:02:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055ec323e000d','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:02:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055f4362f0010','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:11:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055f71fe50014','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:14:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055fa2b4b0016','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:17:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055fb8c220018','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:19:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055ff184f001b','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:23:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015055fffc0f001c','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:24:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015056003de9001d','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:24:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e9015056077eb90020','Chrome','修改成功',5,'192.168.1.186','2015-10-11 16:32:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5055d3e901505644b03e0021','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 17:39:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564623690000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 17:40:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b501505646bf220001','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:41:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564930e20002','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:44:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564a738b0003','Chrome','移除成功',4,'192.168.1.186','2015-10-11 17:45:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564b7fb1000a','Chrome','创建成功',3,'192.168.1.186','2015-10-11 17:46:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564bb177000b','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:46:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564de267000e','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:49:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b50150564ed95f0012','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:50:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b5015056500fb70017','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:51:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b501505650ef38001a','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:52:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b501505651ec4f001c','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:53:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b501505652e903001e','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:54:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b5015056535d02001f','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:55:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505645b5015056550a340021','Chrome','修改成功',5,'192.168.1.186','2015-10-11 17:57:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50565d4e0150565da9870000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-11 18:06:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059cc5c015059ccb69f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 10:06:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059cc5c015059ceb0dd0001','Chrome','权限: 店铺管理被更新成功',5,'192.168.1.186','2015-10-12 10:08:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059cc5c015059cf8f470002','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-12 10:09:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059cc5c015059cfa6440003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 10:09:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059cc5c015059ebfb070004','Chrome','修改成功',5,'192.168.1.186','2015-10-12 10:40:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059cc5c015059ed169e0005','Chrome','修改成功',5,'192.168.1.186','2015-10-12 10:42:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5059fe18015059fe57ca0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 11:00:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a4bca01505a4c0d750000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 12:25:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a4e1101505a4e4f610000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 12:28:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a525801505a5336560000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 12:33:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a6d5801505a6d9bc60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 13:02:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a6d5801505a6e81190003','Chrome','用户: 775747758添加成功',3,'192.168.1.186','2015-10-12 13:03:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a70d901505a7151fb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 13:06:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a70d901505a721b1e0004','Chrome','用户: 265865添加成功',3,'192.168.1.186','2015-10-12 13:07:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a7eeb01505a7f31360000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 13:21:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a7eeb01505a7f46b00001','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-12 13:21:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505a7eeb01505a7f79bf0002','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-12 13:21:55',1,'4028813a505a70d901505a721ae80001'),
	('4028813a505a7eeb01505a7f8d9d0003','Chrome','用户265865已退出',2,'192.168.1.186','2015-10-12 13:22:00',1,'4028813a505a70d901505a721ae80001'),
	('4028813a505a7eeb01505aa7e9930004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:06:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aa9c801505aaa38490000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:08:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ab43801505ab4af850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:20:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ab43801505abb55e30002','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 14:27:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ac3db01505ac423400000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:36:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505accd401505acd1da50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:46:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ad02a01505ad06a420000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:50:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ad2e501505ad325760000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 14:53:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ad2e501505ad349610002','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 14:53:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505adbc001505adc013b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:02:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505adbc001505adcc6b10002','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 15:03:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505adbc001505ade8e4d0004','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 15:05:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505adbc001505adebbd50006','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 15:05:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ae84c01505ae88cdc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:16:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aebf001505aec2c780000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:20:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aed6101505aedabc90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:22:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505aefd2790000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:24:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505aefecda0001','Chrome','用户：265865恢复营业成功',5,'192.168.1.186','2015-10-12 15:24:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505aeff22e0002','Chrome','用户：265865暂停营业成功',5,'192.168.1.186','2015-10-12 15:24:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505aeff85c0003','Chrome','用户：265865恢复营业成功',5,'192.168.1.186','2015-10-12 15:24:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505aeffbb30004','Chrome','用户：265865暂停营业成功',5,'192.168.1.186','2015-10-12 15:24:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505af2d8800005','Chrome','用户：265865恢复营业成功',5,'192.168.1.186','2015-10-12 15:27:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505aef9001505af2e4fb0006','Chrome','用户：265865暂停营业成功',5,'192.168.1.186','2015-10-12 15:27:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505af94e01505af99fc90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:35:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b0eb201505b0ef7550000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 15:58:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b0eb201505b1338be0001','Chrome','用户：265865恢复营业成功',5,'192.168.1.186','2015-10-12 16:03:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b0eb201505b1d0083000b','Chrome','创建成功',3,'192.168.1.186','2015-10-12 16:13:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b0eb201505b1d5e7a000c','Chrome','删除成功',4,'192.168.1.186','2015-10-12 16:14:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b0eb201505b2049aa000e','Chrome','权限: 店铺类型管理被添加成功',3,'192.168.1.186','2015-10-12 16:17:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b0eb201505b20d51a000f','Chrome','权限: 类型管理被更新成功',5,'192.168.1.186','2015-10-12 16:18:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b239c01505b23e1420000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 16:21:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b239c01505b24399c0002','Chrome','店铺类型添加成功',3,'192.168.1.186','2015-10-12 16:21:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b239c01505b253a580004','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 16:22:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b239c01505b2b6d860006','Chrome','修改成功',5,'192.168.1.186','2015-10-12 16:29:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b36bf01505b3732890000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 16:42:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b36bf01505b378c040002','Chrome','用户: 265865更新成功',5,'192.168.1.186','2015-10-12 16:42:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b746701505b86809c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 18:09:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b746701505b8e896f000c','Chrome','创建成功',3,'192.168.1.186','2015-10-12 18:17:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505b746701505b9a2c36000e','Chrome','权限: 广告管理被添加成功',3,'192.168.1.186','2015-10-12 18:30:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ba13d01505ba1800c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 18:38:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505bb38d01505bb3da9c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 18:58:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505bbd2a01505bbd68a90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-12 19:09:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505bbd2a01505bbdb94e0003','Chrome','微商城多店版广告添加成功',3,'192.168.1.186','2015-10-12 19:09:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eaa109f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 08:46:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eaf0bc10003','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 08:52:21',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eb714360006','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:01:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eb860e70009','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:02:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eb9ead5000a','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-13 09:04:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eb9f097000b','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-13 09:04:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eb9f5db000c','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-13 09:04:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ea96701505eba14c2000e','Chrome','广告更新成功',3,'192.168.1.186','2015-10-13 09:04:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec38701505ec3c4900000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 09:14:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec48801505ec4c6630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 09:16:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec607010000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 09:17:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec6579f0003','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:17:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec679070006','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:17:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec695110009','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:18:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec6ad58000c','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:18:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec6c478000f','Chrome','广告添加成功',3,'192.168.1.186','2015-10-13 09:18:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec6ea5d0011','Chrome','微商城广告添加失败，最多只能有5个！',3,'192.168.1.186','2015-10-13 09:18:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec5c801505ec710b40013','Chrome','微商城广告添加失败，最多只能有5个！',3,'192.168.1.186','2015-10-13 09:18:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ec85301505ec89b050000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 09:20:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ed5de01505ed623de0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 09:35:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ed5de01505ff779c70001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 14:51:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ed5de01506005f3f40010','Chrome','创建成功',3,'192.168.1.186','2015-10-13 15:06:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a505ed5de01506009895a0011','Chrome','修改成功',5,'192.168.1.186','2015-10-13 15:10:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150600af48c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 15:12:22',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150600e15780001','Chrome','修改成功',5,'192.168.1.186','2015-10-13 15:15:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150600e55ef0008','Chrome','创建成功',3,'192.168.1.186','2015-10-13 15:16:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150600ef712000a','Chrome','修改成功',5,'192.168.1.186','2015-10-13 15:16:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150602bf6a3000b','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 15:48:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150602c7548000c','Chrome','修改成功',5,'192.168.1.186','2015-10-13 15:48:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50600aa90150602cfcd2000d','Chrome','删除成功',4,'192.168.1.186','2015-10-13 15:49:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506036ec015060374a390000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 16:00:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506036ec0150603b3d0e0002','Chrome','权限: 配送管理被添加成功',3,'192.168.1.186','2015-10-13 16:05:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506036ec0150603d10090004','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-13 16:07:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506036ec0150603d27690005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 16:07:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506036ec01506040a3b30007','Chrome','修改成功',5,'192.168.1.186','2015-10-13 16:11:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506044050150604470460000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 16:15:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506044050150604a8aa90002','Chrome','微信添加成功',3,'192.168.1.186','2015-10-13 16:21:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506051fd015060523d700000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 16:30:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506051fd01506052925e0001','Chrome','微信更新成功',5,'192.168.1.186','2015-10-13 16:30:35',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506051fd015060790b6b000b','Chrome','创建成功',3,'192.168.1.186','2015-10-13 17:12:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506051fd0150607b3b0b0010','Chrome','修改成功',5,'192.168.1.186','2015-10-13 17:15:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506051fd0150608061b30018','Chrome','修改成功',5,'192.168.1.186','2015-10-13 17:20:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506051fd01506084f2c0001b','Chrome','修改成功',5,'192.168.1.186','2015-10-13 17:25:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae10150608c03d40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-13 17:33:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae101506095a7f90003','Chrome','修改成功',5,'192.168.1.186','2015-10-13 17:43:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae10150609eee220006','Chrome','修改成功',5,'192.168.1.186','2015-10-13 17:53:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae10150609fe6c10007','Chrome','specs删除成功',4,'192.168.1.186','2015-10-13 17:55:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae10150609fe7530008','Chrome','修改成功',5,'192.168.1.186','2015-10-13 17:55:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae1015060a510a1000a','Chrome','修改成功',5,'192.168.1.186','2015-10-13 18:00:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae1015060abec8d000b','Chrome','修改成功',5,'192.168.1.186','2015-10-13 18:08:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae1015060ad8209000c','Chrome','修改成功',5,'192.168.1.186','2015-10-13 18:09:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae1015060b7782d000d','Chrome','修改成功',5,'192.168.1.186','2015-10-13 18:20:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50608ae1015060bc5424000e','Chrome','修改成功',5,'192.168.1.186','2015-10-13 18:26:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063dca8d20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 09:00:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063def0dc0009','Chrome','创建成功',3,'192.168.1.186','2015-10-14 09:02:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063e057d1000c','Chrome','修改成功',5,'192.168.1.186','2015-10-14 09:04:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063e29a81000e','Chrome','修改成功',5,'192.168.1.186','2015-10-14 09:06:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063ea8fe20010','Chrome','权限: 多店商户被添加成功',3,'192.168.1.186','2015-10-14 09:15:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063f365390011','Chrome','修改成功',5,'192.168.1.186','2015-10-14 09:25:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063f44d8c0013','Chrome','修改成功',5,'192.168.1.186','2015-10-14 09:26:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015063f6c3480014','Chrome','修改成功',5,'192.168.1.186','2015-10-14 09:28:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015064046d730015','Chrome','权限: 多店商户被更新成功',5,'192.168.1.186','2015-10-14 09:43:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f0150640566c30017','Chrome','权限: 商品类型管理被添加成功',3,'192.168.1.186','2015-10-14 09:44:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015064063e1d0018','Chrome','权限: 多店商户被更新成功',5,'192.168.1.186','2015-10-14 09:45:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f01506408d14e0019','Chrome','权限: 多店商户被更新成功',5,'192.168.1.186','2015-10-14 09:48:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f015064096134001b','Chrome','权限: 商品管理被添加成功',3,'192.168.1.186','2015-10-14 09:49:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f01506409bdf0001c','Chrome','权限: 商品分类被更新成功',5,'192.168.1.186','2015-10-14 09:49:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f0150640a1ab9001d','Chrome','权限: 商品分类被更新成功',5,'192.168.1.186','2015-10-14 09:49:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f0150640c11bc0021','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-14 09:52:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5063c70f0150640c290f0022','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 09:52:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064105a01506411f2e40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 09:58:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064105a01506415bacd0001','Chrome','修改成功',5,'192.168.1.186','2015-10-14 10:02:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506426d30150642716b90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 10:21:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50642c990150642e104a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 10:29:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064327801506432e6520000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 10:34:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a506435a801506436113e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 10:37:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064483d015064487b2a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 10:58:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50648c4d0150648c9f960000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 12:12:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50648c4d0150649083200001','Chrome','微商城多店商品分类删除成功',4,'192.168.1.186','2015-10-14 12:16:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50649aa30150649b0ee60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 12:28:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50649aa3015064ae21fe0001','Chrome','微商城多店商品分类删除成功',4,'192.168.1.186','2015-10-14 12:49:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064aedf015064af27bb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 12:50:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064aedf015064af4ab70001','Chrome','微商城多店商品分类删除成功',4,'192.168.1.186','2015-10-14 12:50:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064b229015064b26b800000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-14 12:53:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5064b229015064b28b7e0001','Chrome','微商城多店商品分类删除成功',4,'192.168.1.186','2015-10-14 12:53:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507df2bb01507df4cd240000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 10:36:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507df2bb01507df688100002','Chrome','微商城多店商品分类添加成功',3,'192.168.1.186','2015-10-19 10:38:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507df2bb01507e1581e90003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 11:12:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507df2bb01507ebc6af90004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 14:14:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f235f01507f23a5180000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 16:07:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f235f01507f246be20003','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-10-19 16:08:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f235f01507f2a7dac0004','Chrome','微信商城商品信息更新成功',5,'192.168.1.186','2015-10-19 16:15:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f48a401507f48e82f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 16:48:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f48a401507f4904be0001','Chrome','下架成功',4,'192.168.1.186','2015-10-19 16:48:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4a1401507f4a51dc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 16:49:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4a1401507f4a71730001','Chrome','上架成功',4,'192.168.1.186','2015-10-19 16:49:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b3fa80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-19 16:50:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b63470001','Chrome','下架成功',4,'192.168.1.186','2015-10-19 16:50:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b677e0002','Chrome','上架成功',4,'192.168.1.186','2015-10-19 16:50:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b6c3e0003','Chrome','下架成功',4,'192.168.1.186','2015-10-19 16:51:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b6fef0004','Chrome','上架成功',4,'192.168.1.186','2015-10-19 16:51:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b73610005','Chrome','下架成功',4,'192.168.1.186','2015-10-19 16:51:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b768f0006','Chrome','上架成功',4,'192.168.1.186','2015-10-19 16:51:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b7a1d0007','Chrome','下架成功',4,'192.168.1.186','2015-10-19 16:51:04',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b7cb00008','Chrome','上架成功',4,'192.168.1.186','2015-10-19 16:51:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b844b0009','Chrome','下架成功',4,'192.168.1.186','2015-10-19 16:51:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a507f4aff01507f4b8ca1000a','Chrome','上架成功',4,'192.168.1.186','2015-10-19 16:51:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5082b081015082b2cabe0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 08:42:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5082b08101508317c2bb0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 10:33:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083519b01508351e7920000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 11:36:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083519b015083533b4b0002','Chrome','权限: 店铺信息被添加成功',3,'192.168.1.186','2015-10-20 11:38:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083541d01508354cb1e0000','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 11:39:43',1,'4028813a505a70d901505a721ae80001'),
	('4028813a5083541d0150835534b20001','Chrome','用户265865已退出',2,'192.168.1.186','2015-10-20 11:40:10',1,'4028813a505a70d901505a721ae80001'),
	('4028813a5083541d015083554b6b0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 11:40:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083541d015083563c2a0007','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-20 11:41:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083541d0150835653140008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 11:41:24',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083541d0150835665a50009','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-20 11:41:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083541d015083569c33000a','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 11:41:42',1,'4028813a505a70d901505a721ae80001'),
	('4028813a5083586001508358d1a60000','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 11:44:07',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508360420150836086590000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 11:52:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083604201508360d6050001','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-20 11:52:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508360420150836114160002','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 11:53:08',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508371b40150837226910000','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 12:11:47',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508371b401508372fed00001','Chrome','用户265865已退出',2,'192.168.1.186','2015-10-20 12:12:43',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508371b40150837333d50002','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 12:12:56',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508371b4015083de44150003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 14:09:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5083dee1015083df2bb40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 14:10:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5084459301508445dc710000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 16:03:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508445930150844ab4a30003','Chrome','更新成功',5,'192.168.1.186','2015-10-20 16:08:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508445930150844c641c0004','Chrome','用户admin已退出',2,'192.168.1.186','2015-10-20 16:10:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508445930150844cb89f0005','Chrome','用户: 265865[微商城商户]登录成功',1,'192.168.1.186','2015-10-20 16:10:31',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508445930150844cf5e90006','Chrome','用户265865已退出',2,'192.168.1.186','2015-10-20 16:10:47',1,'4028813a505a70d901505a721ae80001'),
	('4028813a508445930150844d0ea10007','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 16:10:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50844593015084501a9f000e','Chrome','创建成功',3,'192.168.1.186','2015-10-20 16:14:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de64015087deba2a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-21 08:48:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de64015087e97f930002','Chrome','修改成功',5,'192.168.1.186','2015-10-21 09:00:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de64015087eb7c450005','Chrome','修改成功',5,'192.168.1.186','2015-10-21 09:02:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de64015087ecba560008','Chrome','修改成功',5,'192.168.1.186','2015-10-21 09:04:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de64015087f0465f000f','Chrome','创建成功',3,'192.168.1.186','2015-10-21 09:08:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de640150883e75f40010','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-21 10:33:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de640150884b60460012','Chrome','修改成功',5,'192.168.1.186','2015-10-21 10:47:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de640150884c7c440014','Chrome','修改成功',5,'192.168.1.186','2015-10-21 10:48:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de6401508850885e0019','Chrome','修改成功',5,'192.168.1.186','2015-10-21 10:53:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5087de6401508851af49001c','Chrome','修改成功',5,'192.168.1.186','2015-10-21 10:54:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50893ab50150893b07b40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-21 15:09:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50893ab50150895edb570001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-21 15:48:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50893ab5015089606f230002','Chrome','微信公众帐号信息更新成功',5,'192.168.1.186','2015-10-21 15:50:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50893ab50150896100de0003','Chrome','同步菜单信息数据成功！',4,'192.168.1.186','2015-10-21 15:50:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5089715201508975301a0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-21 16:12:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508971520150897d321f0003','Chrome','扩展接口管理添加成功',3,'192.168.1.186','2015-10-21 16:21:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508971520150897e97b70005','Chrome','添加微商城多店版的信息成功！',3,'192.168.1.186','2015-10-21 16:23:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508971520150897ea7d20006','Chrome','同步菜单信息数据成功！',4,'192.168.1.186','2015-10-21 16:23:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2ecaef0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-22 09:34:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2f084c0001','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-22 09:34:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2f0f320002','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-22 09:34:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2f1d240003','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-22 09:34:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2f25d30004','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-22 09:34:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2f2bb10005','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-10-22 09:34:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2f94bd0008','Chrome','广告添加成功',3,'192.168.1.186','2015-10-22 09:35:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d2fd017000b','Chrome','广告添加成功',3,'192.168.1.186','2015-10-22 09:35:32',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d300d93000e','Chrome','广告添加成功',3,'192.168.1.186','2015-10-22 09:35:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d2e7401508d40160c0010','Chrome','修改成功',5,'192.168.1.186','2015-10-22 09:53:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d983201508d9876540000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-22 11:29:50',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d983201508d99e7df0001','Chrome','推荐店铺成功',5,'192.168.1.186','2015-10-22 11:31:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d983201508d9a36ae0002','Chrome','取消推荐成功',5,'192.168.1.186','2015-10-22 11:31:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508d983201508d9a3b290003','Chrome','推荐店铺成功',5,'192.168.1.186','2015-10-22 11:31:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508da3e301508da434480000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-22 11:42:40',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508da3e301508da6785b0003','Chrome','更新成功',5,'192.168.1.186','2015-10-22 11:45:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508da3e301508da9354a0008','Chrome','添加成功',3,'192.168.1.186','2015-10-22 11:48:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508da3e301508da9febf000d','Chrome','添加成功',3,'192.168.1.186','2015-10-22 11:48:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508da3e301508dac41700010','Chrome','更新成功',5,'192.168.1.186','2015-10-22 11:51:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508da3e301508dadb3ce0013','Chrome','更新成功',5,'192.168.1.186','2015-10-22 11:53:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ebaa201508ebe53d10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-22 16:50:49',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ecba9e10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-22 17:05:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ecbdebe0002','Chrome','更新成功',5,'192.168.1.186','2015-10-22 17:05:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ecbf1cc0004','Chrome','更新成功',5,'192.168.1.186','2015-10-22 17:05:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ecc071e0006','Chrome','更新成功',5,'192.168.1.186','2015-10-22 17:05:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ece449c0008','Chrome','更新成功',5,'192.168.1.186','2015-10-22 17:08:14',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ecec6f0000a','Chrome','更新成功',5,'192.168.1.186','2015-10-22 17:08:47',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ed0f4c5000b','Chrome','推荐店铺成功',5,'192.168.1.186','2015-10-22 17:11:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ec93701508ed127cc000c','Chrome','取消推荐成功',5,'192.168.1.186','2015-10-22 17:11:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ed89d01508eda03250000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-22 17:21:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ed89d01508eda78650001','Chrome','暂停营业成功',5,'192.168.1.186','2015-10-22 17:21:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ed89d01508edac0aa0002','Chrome','恢复营业成功',5,'192.168.1.186','2015-10-22 17:21:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a508ed89d01508edacb0d0003','Chrome','推荐店铺成功',5,'192.168.1.186','2015-10-22 17:21:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5093b9c3015093baacb60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-23 16:04:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50f5234f0150f52730cb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-11 14:06:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50f5234f0150f52947500001','Chrome','同步菜单信息数据成功！',4,'192.168.1.186','2015-11-11 14:08:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50f554340150f55499b10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-11 14:56:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50fa90fb0150fa91ea630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-12 15:21:18',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50fa90fb0150fa938cf50001','Chrome','修改成功',5,'192.168.1.186','2015-11-12 15:23:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50faa03d0150faa08ad20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-12 15:37:16',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50faa03d0150faa0debd0002','Chrome','店铺类型添加成功',3,'192.168.1.186','2015-11-12 15:37:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50faa03d0150fac31cd4000a','Chrome','创建成功',3,'192.168.1.186','2015-11-12 16:15:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50faa03d0150fac4e6b70013','Chrome','创建成功',3,'192.168.1.186','2015-11-12 16:16:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50faa03d0150fac834320014','Chrome','修改成功',5,'192.168.1.186','2015-11-12 16:20:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50fad9530150fad99dcc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-12 16:39:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a50fae0da0150fae11c850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-12 16:47:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5112f584015112f62ce30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-17 09:01:41',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5112f584015112f78ba60003','Chrome','修改成功',5,'192.168.1.186','2015-11-17 09:03:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51131225015113127c5e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-17 09:32:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51134ee30151134f37520000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-17 10:38:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51134ee30151134fd33f0002','Chrome','修改成功',5,'192.168.1.186','2015-11-17 10:39:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5114eb81015114ebe5ee0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-17 18:09:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a511f27c701511f282d590000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-19 17:51:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a511f27c701511f3090870008','Chrome','创建成功',3,'192.168.1.186','2015-11-19 18:00:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a511f27c701511f390af1000f','Chrome','修改成功',5,'192.168.1.186','2015-11-19 18:10:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a511f27c701511f3b64940012','Chrome','修改成功',5,'192.168.1.186','2015-11-19 18:12:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a511f27c701511f3ee41a0016','Chrome','修改成功',5,'192.168.1.186','2015-11-19 18:16:34',1,'4028d881436d514601436d5215ac0043'),
	('4028813a511f27c701511f3fab720018','Chrome','修改成功',5,'192.168.1.186','2015-11-19 18:17:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5127a71f015127adab890000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-21 09:34:31',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5127a71f015127b26cfc000c','Chrome','创建成功',3,'192.168.1.186','2015-11-21 09:39:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5127cf9d015127d053720000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-21 10:12:23',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5127e017015127e20e830000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-21 10:31:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5127e017015127e26cbd0002','Chrome','修改成功',5,'192.168.1.186','2015-11-21 10:32:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51323e7d0151323ebffd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 10:49:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5132552701513255680e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 11:13:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513257dd015132581d090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 11:16:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513261cd0151326212c60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 11:27:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51328a050151328a4a5a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 12:11:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51328a05015132e3e9470001','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 13:49:35',1,'4028813a508d983201508da23ba80005'),
	('4028813a51328a05015132e463860002','Chrome','用户123已退出',2,'192.168.1.186','2015-11-23 13:50:07',1,'4028813a508d983201508da23ba80005'),
	('4028813a5132e503015132e549cb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 13:51:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5132e503015132e60f080002','Chrome','权限: 订单管理被添加成功',3,'192.168.1.186','2015-11-23 13:51:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5132e503015132e6580d0004','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 13:52:15',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5132e503015132e691090005','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 13:52:29',1,'4028813a508d983201508da23ba80005'),
	('4028813a5132e503015132f30a480006','Chrome','用户123已退出',2,'192.168.1.186','2015-11-23 14:06:07',1,'4028813a508d983201508da23ba80005'),
	('4028813a5132e503015132f3213f0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 14:06:13',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5132e503015132f6a35c0009','Chrome','修改成功',5,'192.168.1.186','2015-11-23 14:10:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133125801513312a4630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 14:40:38',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133125801513312cbf30001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 14:40:48',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133125801513312fb970002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 14:41:00',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133157e01513315c0090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 14:44:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133157e01513315e1060001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 14:44:10',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133157e015133160fd60002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 14:44:22',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133157e0151331bf3db0003','Chrome','用户123已退出',2,'192.168.1.186','2015-11-23 14:50:48',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133157e0151331c0af20004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 14:50:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133157e0151332511960005','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 15:00:46',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133157e0151332538050006','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 15:00:55',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133427e01513342f6420000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 15:33:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133427e01513343ce570002','Chrome','修改成功',5,'192.168.1.186','2015-11-23 15:34:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51334fd101513350128f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 15:47:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51334fd1015133503ac70001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 15:47:54',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51334fd101513350649e0002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 15:48:05',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133593b0151335990c10000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 15:58:06',1,'4028813a508d983201508da23ba80005'),
	('4028813a51335e2c0151335e7bea0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 16:03:28',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51335e2c0151335e98e80001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 16:03:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51335e2c0151335ebc8a0002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:03:45',1,'4028813a508d983201508da23ba80005'),
	('4028813a513369fe0151336a40eb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 16:16:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513369fe0151336a588b0001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 16:16:26',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513369fe0151336a7da80002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:16:35',1,'4028813a508d983201508da23ba80005'),
	('4028813a51336d290151336d7b260000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:19:51',1,'4028813a508d983201508da23ba80005'),
	('4028813a51337019015133706e480000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:23:05',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133728301513372dd990000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:25:44',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133786801513379188b0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:32:32',1,'4028813a508d983201508da23ba80005'),
	('4028813a51338e500151338e95d90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 16:56:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51338e500151338eaf750001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 16:56:07',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51338e500151338ed5520002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 16:56:17',1,'4028813a508d983201508da23ba80005'),
	('4028813a513394a701513394f5b40000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:02:58',1,'4028813a508d983201508da23ba80005'),
	('4028813a513394a7015133967b2f0001','Chrome','用户123已退出',2,'192.168.1.186','2015-11-23 17:04:38',1,'4028813a508d983201508da23ba80005'),
	('4028813a513394a70151339691230002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 17:04:44',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513394a701513397c84c0004','Chrome','操作: 查看订单商品被添加成功',3,'192.168.1.186','2015-11-23 17:06:03',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513394a70151339851b80005','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 17:06:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513394a7015133988d390006','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:06:54',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133996301513399a5460000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 17:08:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133996301513399be180001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 17:08:12',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133996301513399e3e00002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:08:22',1,'4028813a508d983201508da23ba80005'),
	('4028813a513399630151339a24a60003','Chrome','用户123已退出',2,'192.168.1.186','2015-11-23 17:08:38',1,'4028813a508d983201508da23ba80005'),
	('4028813a513399630151339a3de80004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 17:08:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513399630151339a800e0005','Chrome','操作: 查看订单商品被删除成功',4,'192.168.1.186','2015-11-23 17:09:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51339c630151339ccf9e0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:11:33',1,'4028813a508d983201508da23ba80005'),
	('4028813a51339dfe0151339e4d6f0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:13:11',1,'4028813a508d983201508da23ba80005'),
	('4028813a51339dfe015133a19b1c0001','Chrome','多店版订单表更新成功',5,'192.168.1.186','2015-11-23 17:16:47',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133a287015133a3742e0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:18:48',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133a761015133a7c48a0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:23:31',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133ac30015133aca93c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 17:28:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133ac30015133acc4570001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 17:28:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133ac30015133aceb740002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:29:09',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133be36015133be8dad0000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:48:24',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133c0cd015133c120860000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:51:13',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133c318015133c359290000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 17:53:39',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133c318015133c36be00001','Chrome','用户admin已退出',2,'192.168.1.186','2015-11-23 17:53:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133c318015133c390590002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-23 17:53:53',1,'4028813a508d983201508da23ba80005'),
	('4028813a5133cdaf015133d387080000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-23 18:11:19',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5133cdaf015133d49aaa0002','Chrome','修改成功',5,'192.168.1.186','2015-11-23 18:12:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a513db30e01513db3db220000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-25 16:12:55',1,'4028813a508d983201508da23ba80005'),
	('4028813a513db30e01513db3f32e0001','Chrome','微商城多店商品分类删除成功',4,'192.168.1.186','2015-11-25 16:13:02',1,'4028813a508d983201508da23ba80005'),
	('4028813a513db6da01513db724d50000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-25 16:16:31',1,'4028813a508d983201508da23ba80005'),
	('4028813a513db6da01513db75c890002','Chrome','微商城多店商品分类添加成功',3,'192.168.1.186','2015-11-25 16:16:45',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dcf1c900000','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-11-25 16:42:42',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dcf70350001','Chrome','微商城多店版商品表删除成功',4,'192.168.1.186','2015-11-25 16:43:03',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dcf786d0002','Chrome','微商城多店版商品表删除成功',4,'192.168.1.186','2015-11-25 16:43:05',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dcfd2680004','Chrome','微商城多店商品分类添加成功',3,'192.168.1.186','2015-11-25 16:43:28',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dcff2dd0006','Chrome','微商城多店商品分类添加成功',3,'192.168.1.186','2015-11-25 16:43:37',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd0b0240009','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:44:25',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd14d8b000c','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:45:05',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd1e47a000f','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:45:44',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd2639c0012','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:46:16',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd44ea50015','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:48:22',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd4e48d0018','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:49:01',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd5bfb7001b','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:49:57',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd6254e001e','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:50:23',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd704070021','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:51:20',1,'4028813a508d983201508da23ba80005'),
	('4028813a513dbb7f01513dd7c4790024','Chrome','微信商城商品信息添加成功',3,'192.168.1.186','2015-11-25 16:52:09',1,'4028813a508d983201508da23ba80005'),
	('4028813a51426c1b0151426c89270000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-26 14:13:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51426c1b0151426d4c600002','Chrome','修改成功',5,'192.168.1.186','2015-11-26 14:13:57',1,'4028d881436d514601436d5215ac0043'),
	('4028813a5146f6c2015146faf91c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-11-27 11:27:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7430b0151c7500eac0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 09:31:31',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7430b0151c750287f0001','Chrome','用户admin已退出',2,'192.168.1.186','2015-12-22 09:31:37',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7430b0151c75071140002','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-22 09:31:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7430b0151c7a1f7100003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 11:00:59',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7d0d70151c7d19f070000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-22 11:53:02',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7d0d70151c7d36d500001','Chrome','恢复营业成功',5,'192.168.1.186','2015-12-22 11:55:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7d4c40151c7d5406b0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-22 11:57:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7d4c40151c7d592c80001','Chrome','暂停营业成功',5,'192.168.1.186','2015-12-22 11:57:21',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7da800151c7daf6a10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 12:03:14',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7de7b0151c7dedb010000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 12:07:29',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7e1140151c7e194e50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 12:10:28',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7e27e0151c7e2fea50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 12:12:01',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7e69c0151c7e6f7230000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 12:16:21',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c7e69c0151c84645f00001','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-22 14:00:27',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7e69c0151c846f2280002','Chrome','恢复营业成功',5,'192.168.1.186','2015-12-22 14:01:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7e69c0151c84a6e7a0003','Chrome','用户123456已退出',2,'192.168.1.186','2015-12-22 14:04:59',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51c7e69c0151c84a90360004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 14:05:08',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c854fb0151c85961f90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-22 14:21:19',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c854fb0151c85bc1690001','Chrome','用户admin已退出',2,'192.168.1.186','2015-12-22 14:23:55',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51c854fb0151c85bf2210002','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-12-22 14:24:07',1,'4028813a508d983201508da23ba80005'),
	('4028813a51f092570151f09319a80000','Chrome','用户: 2689766486[微商城商户]登录成功',1,'192.168.1.186','2015-12-30 09:49:10',1,'402880ef51bd66070151bd7a0b1d0003'),
	('4028813a51f092570151f09585fd0001','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-30 09:51:49',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f098000151f098db290000','Chrome','用户: 2689766486[微商城商户]登录成功',1,'192.168.1.186','2015-12-30 09:55:28',1,'402880ef51bd66070151bd7a0b1d0003'),
	('4028813a51f098000151f09959330001','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-30 09:56:00',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f09c490151f09cfcfb0000','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-30 09:59:58',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f09e7e0151f09ecbae0000','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-30 10:01:57',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f58c320151f590fb540000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 09:04:58',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f59d980151f59e605c0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 09:19:36',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f5a23a0151f5a288600000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 09:24:08',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f5b77a0151f5b7c5ed0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 09:47:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f5c0250151f5c07b7e0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 09:56:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f5c9b20151f5cab28c0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 10:08:00',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f5e0c00151f5e2429f0000','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 10:33:44',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f5e7ef0151f5e8ae7d0000','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 10:40:45',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f5ea8b0151f5ead1e00000','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 10:43:05',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f61f2a0151f61f9a7f0000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 11:40:45',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f61f2a0151f61fb35c0001','Chrome','暂停营业成功',5,'192.168.1.186','2015-12-31 11:40:51',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f61f2a0151f61fb7df0002','Chrome','恢复营业成功',5,'192.168.1.186','2015-12-31 11:40:52',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f61f2a0151f61fc19e0003','Chrome','取消推荐成功',5,'192.168.1.186','2015-12-31 11:40:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f61f2a0151f61fc5670004','Chrome','推荐店铺成功',5,'192.168.1.186','2015-12-31 11:40:56',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f61f2a0151f620ed180005','Chrome','微信更新成功',5,'192.168.1.186','2015-12-31 11:42:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f63de80151f63e75630000','Chrome','用户: 654321[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 12:14:27',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f6b20a0151f6b342130000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 14:22:01',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6b20a0151f6b361db0001','Chrome','取消推荐成功',5,'192.168.1.186','2015-12-31 14:22:09',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6b20a0151f6b369ce0002','Chrome','推荐店铺成功',5,'192.168.1.186','2015-12-31 14:22:11',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6b20a0151f6b38ba30003','Chrome','店铺删除成功',4,'192.168.1.186','2015-12-31 14:22:20',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6b20a0151f6b412d00004','Chrome','用户123456已退出',2,'192.168.1.186','2015-12-31 14:22:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6b20a0151f6bb67bb0005','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 14:30:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6c70a0151f6c9800e0000','Chrome','用户: 098765[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 14:46:19',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f6c70a0151f6ca5f150001','Chrome','用户098765已退出',2,'192.168.1.186','2015-12-31 14:47:16',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f6cafa0151f6cb81840000','Chrome','用户: 098765[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 14:48:30',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f6cafa0151f6cbb0550001','Chrome','用户098765已退出',2,'192.168.1.186','2015-12-31 14:48:42',1,'402880ef51e3e4080151e3e63f880002'),
	('4028813a51f6d1b80151f6d21d300000','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 14:55:43',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f76ba5120001','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 17:43:25',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f76cfc670002','Chrome','用户123456已退出',2,'192.168.1.186','2015-12-31 17:44:53',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f76d3bec0003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-12-31 17:45:09',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51f6d1b80151f770f0e60004','Chrome','用户admin已退出',2,'192.168.1.186','2015-12-31 17:49:12',1,'4028d881436d514601436d5215bc0046'),
	('4028813a51f6d1b80151f771422c0005','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 17:49:33',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f77b14750006','Chrome','微商城多店版广告删除成功',4,'192.168.1.186','2015-12-31 18:00:17',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f77bd2a10009','Chrome','广告添加成功',3,'192.168.1.186','2015-12-31 18:01:05',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f78bc36b000a','Chrome','用户123456已退出',2,'192.168.1.186','2015-12-31 18:18:30',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f78bdfd2000b','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 18:18:37',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f78bf145000c','Chrome','用户123456已退出',2,'192.168.1.186','2015-12-31 18:18:42',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f7922988000d','Chrome','用户: 123456[信息部]登录成功',1,'192.168.1.186','2015-12-31 18:25:29',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f7928e2c000f','Chrome','更新成功',5,'192.168.1.186','2015-12-31 18:25:55',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f792b7110010','Chrome','用户123456已退出',2,'192.168.1.186','2015-12-31 18:26:06',1,'4028d881436d514601436d5215ac0043'),
	('4028813a51f6d1b80151f792f0c10011','Chrome','用户: 123[微商城商户]登录成功',1,'192.168.1.186','2015-12-31 18:26:20',1,'4028813a508d983201508da23ba80005'),
	('4028813a52161e780152161fea930000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2016-01-06 16:48:56',1,'4028d881436d514601436d5215bc0046'),
	('4028813a52161e78015216289194000a','Chrome','创建成功',3,'192.168.1.186','2016-01-06 16:58:23',1,'4028d881436d514601436d5215bc0046'),
	('4028813a521637e30152163842950000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2016-01-06 17:15:31',1,'4028d881436d514601436d5215bc0046'),
	('4028813a521637e301521639cb620002','Chrome','修改成功',5,'192.168.1.186','2016-01-06 17:17:12',1,'4028d881436d514601436d5215bc0046'),
	('402881e445a3b2fe0145a3b45ede0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-04-27 23:01:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f927c01461f9361480000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-22 00:18:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f927c01461f94a26d0001','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-22 00:19:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f927c01461f94b44b0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-22 00:19:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461f9cc0830000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-22 00:28:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461fa2e79f0004','Chrome','用户: tingfeng添加成功',3,'192.168.1.100','2014-05-22 00:35:08',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461fa2f9910005','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-22 00:35:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461fa31a820006','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-22 00:35:21',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e4461f9c6401461fa349030007','Chrome','用户tingfeng已退出',2,'192.168.1.100','2014-05-22 00:35:33',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e4461f9c6401461fa35a540008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-22 00:35:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461fa395a4000a','Chrome','用户: tingfeng更新成功',5,'192.168.1.100','2014-05-22 00:35:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461fa3a099000b','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-22 00:35:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e4461f9c6401461fa3bc08000c','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-22 00:36:02',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44639441901463944c01a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-27 00:02:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e4463cc88701463cc95b6a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-27 16:26:07',1,'4028d881436d514601436d5215ac0043'),
	('402881e4463cc88701463ccf1d2d0003','Chrome','微信单图消息添加成功',3,'192.168.1.100','2014-05-27 16:32:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c014643224c250000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-28 22:00:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c01464322e2000001','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-28 22:01:38',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c0146432330d80002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-28 22:01:58',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c0146432382b10003','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-28 22:02:19',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c0146432399a60004','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-28 22:02:25',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643207c014643293b310005','Chrome','用户tingfeng已退出',2,'192.168.1.100','2014-05-28 22:08:34',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643207c0146432950350006','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-28 22:08:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c014643328d3b0008','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-28 22:18:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643207c01464332a3e90009','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-28 22:18:50',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643207c01464333f86e000e','Chrome','微信单图消息添加成功',3,'192.168.1.100','2014-05-28 22:20:17',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643207c0146435b9f6c0011','Chrome','微信公众帐号信息添加成功',3,'192.168.1.100','2014-05-28 23:03:36',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643207c0146436e5e770013','Chrome','用户tingfeng已退出',2,'192.168.1.100','2014-05-28 23:24:05',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643207c01464373c3b60014','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-28 23:29:58',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643813501464381e9700000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-28 23:45:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643813501464386a7090004','Chrome','微信单图消息添加成功',3,'192.168.1.100','2014-05-28 23:50:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643813501464388b4950008','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-28 23:52:51',1,'4028d881436d514601436d5215ac0043'),
	('402881e44643813501464388d43a0009','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-28 23:52:59',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643813501464389b876000d','Chrome','微信单图消息添加成功',3,'192.168.1.100','2014-05-28 23:53:57',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643a1cd014643a3c2d80001','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.100','2014-05-29 00:22:24',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643a1cd014643a536680005','Chrome','微信单图消息添加成功',3,'192.168.1.100','2014-05-29 00:23:59',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44643a1cd014643a579b20008','Chrome','微信单图消息添加成功',3,'192.168.1.100','2014-05-29 00:24:16',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e44648134a014648146e7b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:03:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a014648163ab80002','Chrome','角色: 测试角色被添加成功',3,'192.168.1.100','2014-05-29 21:05:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146481669b90003','Chrome','角色: 测试角色被更新成功',5,'192.168.1.100','2014-05-29 21:06:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a014648174aeb000e','Chrome','用户: ceshi添加成功',3,'192.168.1.100','2014-05-29 21:07:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146481772be000f','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:07:14',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146481791ac0010','Chrome','用户: ceshi[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:07:22',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a01464817e7da0011','Chrome','用户ceshi已退出',2,'192.168.1.100','2014-05-29 21:07:44',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a01464817fd8a0012','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:07:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a01464818dfee0029','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:08:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a01464818f9bd002a','Chrome','用户: ceshi[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:08:54',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a014648193f99002b','Chrome','用户ceshi已退出',2,'192.168.1.100','2014-05-29 21:09:12',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a01464819557f002c','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:09:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a01464819f229002d','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:09:58',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146481a78d3002e','Chrome','用户: ceshi[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:10:32',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a0146481ad284002f','Chrome','用户ceshi已退出',2,'192.168.1.100','2014-05-29 21:10:55',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a0146481aed9e0030','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:11:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146481d4a370047','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:13:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146481d5d860048','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:13:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a014648209402004a','Chrome','操作: 新增被添加成功',3,'192.168.1.100','2014-05-29 21:17:13',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146482152fc004c','Chrome','操作: 编辑被添加成功',3,'192.168.1.100','2014-05-29 21:18:01',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a01464821b64b004d','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:18:27',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a01464821ea56004e','Chrome','用户: ceshi[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:18:40',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a0146482288a6004f','Chrome','用户ceshi已退出',2,'192.168.1.100','2014-05-29 21:19:21',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a014648229acc0050','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:19:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a014648254cbb0051','Firefox','用户: ceshi[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:22:22',1,'402881e44648134a014648174a45000c'),
	('402881e44648134a01464827a5de0052','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:24:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146482c4e0f0053','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:30:01',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146482e24850054','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:32:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146482e37b90055','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:32:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146483162bf0056','Chrome','用户admin已退出',2,'192.168.1.100','2014-05-29 21:35:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e44648134a0146483184de0057','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-29 21:35:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464d026901464d036aa40000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-30 20:03:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464d026901464d05ab920002','Chrome','添加1的信息成功！',3,'192.168.1.100','2014-05-30 20:05:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464db22d01464db4a1870000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-30 23:17:01',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464db22d01464db6ccfa0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-30 23:19:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464db22d01464db785860003','Chrome','添加大转盘的信息成功！',3,'192.168.1.100','2014-05-30 23:20:11',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464dd29901464dd5dd1a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-30 23:53:19',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464ddec701464ddf57fd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-31 00:03:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464de1b501464de86fc10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-31 00:13:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464de1b501464dedae2e0001','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:19:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464de1b501464defa1a40002','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:21:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464de1b501464df091cd0003','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:22:30',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464de1b501464df315720004','Chrome','更新大转盘的菜单信息信息成功！',5,'192.168.1.100','2014-05-31 00:25:14',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df500090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-05-31 00:27:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df5476e0001','Chrome','删除大转盘菜单信息数据',4,'192.168.1.100','2014-05-31 00:27:38',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df5cc4c0002','Chrome','更新1的菜单信息信息成功！',5,'192.168.1.100','2014-05-31 00:28:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df66e280003','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:28:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df707b20005','Chrome','添加我的大转盘的信息成功！',3,'192.168.1.100','2014-05-31 00:29:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df718220006','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:29:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df7525a0007','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:29:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df7931c0008','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:30:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e4464df45f01464df9087b0009','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-05-31 00:31:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e446672a080146672aa03a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 21:56:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e446675fc801466761ea850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 22:56:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e446676a060146676b66c90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 23:07:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e446676a060146677088340006','Chrome','创建成功',3,'192.168.1.100','2014-06-04 23:12:46',1,'4028d881436d514601436d5215ac0043'),
	('402881e446676a0601466775b94c0009','Chrome','修改成功',5,'192.168.1.100','2014-06-04 23:18:26',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146677c3e140000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 23:25:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146677d7bc20002','Chrome','权限: 扩展接口管理被添加成功',3,'192.168.1.100','2014-06-04 23:26:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146677d9e290003','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-04 23:27:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146677db0a00004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 23:27:08',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146678c66690006','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-04 23:43:13',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146678c795a0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 23:43:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146678d6a810008','Chrome','权限: 扩展接口管理被更新成功',5,'192.168.1.100','2014-06-04 23:44:19',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146678d8d210009','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-04 23:44:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e446677b700146678d9e64000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 23:44:32',1,'4028d881436d514601436d5215ac0043'),
	('402881e44667912a01466793387a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-04 23:50:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e44667912a0146679390b60002','Chrome','扩展接口管理添加成功',3,'192.168.1.100','2014-06-04 23:51:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e44667912a014667947aaa0004','Chrome','扩展接口管理添加成功',3,'192.168.1.100','2014-06-04 23:52:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e44667a05e014667a104aa0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-05 00:05:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e4466c8d9801466c92e8a00006','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-05 23:08:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e446950f860146951146380000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-13 19:51:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e446950f86014695120fc30002','Chrome','扩展接口管理添加成功',3,'192.168.1.100','2014-06-13 19:52:07',1,'4028d881436d514601436d5215ac0043'),
	('402881e446950f8601469513ecde0004','Chrome','扩展接口管理添加成功',3,'192.168.1.100','2014-06-13 19:54:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146951a33a60002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-13 20:01:00',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146951af32f0005','Chrome','权限: 微信CMS被添加成功',3,'192.168.1.100','2014-06-13 20:01:49',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146951b66cb0007','Chrome','权限: 首页广告管理被添加成功',3,'192.168.1.100','2014-06-13 20:02:19',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146951ed81f0009','Chrome','权限: 栏目管理被添加成功',3,'192.168.1.100','2014-06-13 20:06:05',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146951f35f7000d','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-13 20:06:29',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146951f470e000e','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-13 20:06:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146952114830011','Chrome','首页广告添加成功',3,'192.168.1.100','2014-06-13 20:08:31',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a014695214ad30014','Chrome','首页广告添加成功',3,'192.168.1.100','2014-06-13 20:08:45',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a01469521a0200017','Chrome','首页广告添加成功',3,'192.168.1.100','2014-06-13 20:09:07',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a01469522f83f001a','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 20:10:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a0146952348ec001d','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 20:10:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a01469523f1300020','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 20:11:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695183a01469524270e0023','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 20:11:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e446952fde0146953087580001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-13 20:25:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c0146955d19850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-13 21:14:05',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c01469581929e0005','Chrome','扩展接口管理更新成功',5,'192.168.1.100','2014-06-13 21:53:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c0146958917930010','Chrome','扩展接口管理更新成功',5,'192.168.1.100','2014-06-13 22:02:08',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c01469597116a0015','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:17:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695973dbd0017','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:17:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695975c130019','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:17:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c0146959779d6001b','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:17:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a1e45f001e','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:29:13',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a36e56001f','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:30:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a390f50021','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:31:03',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a3d2fb0023','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:31:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a4526f0025','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 22:31:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a72ae4002a','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 22:34:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a77541002d','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 22:35:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a7bcb80030','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 22:35:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a7f0f70033','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 22:35:49',1,'4028d881436d514601436d5215ac0043'),
	('402881e446955c7c014695a8374e0036','Chrome','栏目管理添加成功',3,'192.168.1.100','2014-06-13 22:36:07',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695ec69a30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-13 23:50:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695ed424a0002','Chrome','首页广告更新成功',5,'192.168.1.100','2014-06-13 23:51:32',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695ed811b0004','Chrome','首页广告更新成功',5,'192.168.1.100','2014-06-13 23:51:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695ef4c060006','Chrome','首页广告更新成功',5,'192.168.1.100','2014-06-13 23:53:46',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f2e0010008','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:57:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f31d02000a','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:57:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f33e67000c','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:58:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f3aa80000e','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:58:32',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f3ff9d0010','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:58:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f447550012','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:59:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f465280014','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:59:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f499930016','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:59:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e44695ebe3014695f4dac10018','Chrome','栏目管理更新成功',5,'192.168.1.100','2014-06-13 23:59:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e4469ffe7a01469fff48cb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-15 22:47:26',1,'4028d881436d514601436d5215ac0043'),
	('402881e4469ffe7a0146a000097e0002','Chrome','扩展接口管理添加成功',3,'192.168.1.100','2014-06-15 22:48:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e4469ffe7a0146a005dbda0008','Chrome','更新我的大转盘的菜单信息信息成功！',5,'192.168.1.100','2014-06-15 22:54:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e4469ffe7a0146a0060ecf0009','Chrome','更新我的大转盘的菜单信息信息成功！',5,'192.168.1.100','2014-06-15 22:54:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a009740146a00a89c50000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-15 22:59:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4d4eb280000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:19:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4eb87dd0001','Chrome','权限: 栏目管理被更新成功',5,'192.168.1.100','2014-06-16 21:43:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4ebbfee0002','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-16 21:44:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4ebd7360003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:44:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4ec895c0004','Chrome','权限: 栏目管理被更新成功',5,'192.168.1.100','2014-06-16 21:45:03',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4ec97da0005','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-16 21:45:07',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4ecab460006','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:45:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4f0380b0007','Firefox','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:49:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4d1cc0146a4f1a2290008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:50:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f60d0146a4f671ad0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:55:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a4fa2beb0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 21:59:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a500c7460007','Chrome','更新测试菜单的菜单信息信息成功！',5,'192.168.1.100','2014-06-16 22:07:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a50183d00009','Chrome','添加微CMS的信息成功！',3,'192.168.1.100','2014-06-16 22:07:58',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a5019b9b000a','Chrome','同步菜单信息数据成功！',4,'192.168.1.100','2014-06-16 22:08:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a5028775000b','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 22:09:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a503d7a6000c','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 22:10:30',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a503e6bc000d','Safari','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 22:10:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a506c908000f','Safari','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 22:13:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a52c2e240010','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.100','2014-06-16 22:54:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e446a4f9400146a52ccb7d0011','Chrome','用户admin已退出',2,'192.168.1.100','2014-06-16 22:55:14',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5ddb2850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 21:55:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5de9bdb0002','Chrome','权限: 消息管理被添加成功',3,'192.168.1.101','2014-05-13 21:56:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5f0b5ab0004','Chrome','权限: 文本模板被添加成功',3,'192.168.1.101','2014-05-13 22:16:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5f32d4f0006','Chrome','权限: 文本模板被添加成功',3,'192.168.1.101','2014-05-13 22:18:45',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5f33dc60007','Chrome','权限: 文本模板被删除成功',4,'192.168.1.101','2014-05-13 22:18:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5f37693000a','Chrome','用户admin已退出',2,'192.168.1.101','2014-05-13 22:19:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5dd1a0145f5f387d1000b','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 22:19:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5f4780145f5f4debd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 22:20:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5f4780145f5f55fb30002','Chrome','删除信息数据成功！',4,'192.168.1.101','2014-05-13 22:21:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5f4780145f6112aa30003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 22:51:31',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5f4780145f61198cf0005','Chrome','权限: 图文模板被添加成功',3,'192.168.1.101','2014-05-13 22:51:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5f4780145f611ed960007','Chrome','用户admin已退出',2,'192.168.1.101','2014-05-13 22:52:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f5f4780145f611feae0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 22:52:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f612570145f61311400000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 22:53:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f61b4d0145f61c39a60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 23:03:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e545f61f110145f61f54460000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-13 23:06:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e545fb0fdb0145fb1027e40000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-14 22:08:31',1,'4028d881436d514601436d5215ac0043'),
	('402881e545fb0fdb0145fb1123c30001','MSIE 7.0','权限: 自定义菜单被更新成功',5,'192.168.1.101','2014-05-14 22:09:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e545fb0fdb0145fb1178920002','MSIE 7.0','用户admin已退出',2,'192.168.1.101','2014-05-14 22:09:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e545fb0fdb0145fb118a2a0003','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-05-14 22:10:01',1,'4028d881436d514601436d5215ac0043'),
	('402881e545fb0fdb0145fb174b050006','MSIE 7.0','添加第一个菜单的信息成功！',3,'192.168.1.101','2014-05-14 22:16:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e545fb0fdb0145fb206d840008','MSIE 7.0','添加子菜单的信息成功！',3,'192.168.1.101','2014-05-14 22:26:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e54705957f0147059acf3e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-05 16:18:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e54705f629014705f6963f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-05 17:59:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e54705f629014705f7d62b0002','Chrome','权限: 会员管理被添加成功',3,'192.168.1.101','2014-07-05 18:00:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e54705f629014705f81e150004','Chrome','用户admin已退出',2,'192.168.1.101','2014-07-05 18:00:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e54705f629014705f83d730005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-05 18:01:00',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470601b7014706020d7a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-05 18:11:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a4033150000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 13:58:05',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a4159b60002','Chrome','权限: 会员管理被添加成功',3,'192.168.1.101','2014-07-06 13:59:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a41e1700004','Chrome','用户admin已退出',2,'192.168.1.101','2014-07-06 13:59:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a42034d0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:00:04',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a42c71f0006','Chrome','权限: 会员管理被删除成功',4,'192.168.1.101','2014-07-06 14:00:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a43019c0007','Chrome','用户admin已退出',2,'192.168.1.101','2014-07-06 14:01:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a3f7701470a4321dd0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:01:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a44ed01470a458b630000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:03:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a467f01470a46dc3a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:05:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a467f01470a4809cf0001','Chrome','用户admin已退出',2,'192.168.1.101','2014-07-06 14:06:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a467f01470a482c630002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:06:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a467f01470a48d4a10003','Chrome','权限: 会员管理被更新成功',5,'192.168.1.101','2014-07-06 14:07:30',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a4f9b01470a5083540000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:15:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a4f9b01470a5155040001','Chrome','权限: 会员管理被更新成功',5,'192.168.1.101','2014-07-06 14:16:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a559701470a5644850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:22:11',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a6e9a01470a6f33d20000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 14:49:25',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a6e9a01470a855a1e0002','Chrome','商城会员添加成功',3,'192.168.1.101','2014-07-06 15:13:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a6e9a01470a90101f0004','Chrome','商城会员添加成功',3,'192.168.1.101','2014-07-06 15:25:19',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470a6e9a01470ad0483d0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 16:35:27',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470ae66801470ae727db0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 17:00:26',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470aeaa301470aeb76cb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 17:05:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470aeaa301470bb508930001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 20:45:19',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470bc37201470bd0699a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 21:15:13',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470bc37201470bd137200002','Chrome','权限: 购物车管理被添加成功',3,'192.168.1.101','2014-07-06 21:16:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470bd23901470bd46bbd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 21:19:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470c1b5901470c1bf4ae0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-07-06 22:37:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e5470c28a701470c2a94e80000','Chrome','购物车 删除成功',4,'192.168.1.101','2014-07-06 22:53:43',1,NULL),
	('402881e5470c28a701470c2c97540001','Chrome','购物车 删除成功',4,'192.168.1.101','2014-07-06 22:55:54',1,NULL),
	('402881e5470c28a701470c2e24de0003','Chrome','购物车 删除成功',4,'192.168.1.101','2014-07-06 22:57:36',1,NULL),
	('402881e5470c28a701470c2e4e6c0007','Chrome','购物车 删除成功',4,'192.168.1.101','2014-07-06 22:57:47',1,NULL),
	('402881e5470c28a701470c2ecc6a0009','Chrome','购物车 删除成功',4,'192.168.1.101','2014-07-06 22:58:19',1,NULL),
	('402881e5470c28a701470c2f5933000a','Chrome','购物车 删除成功',4,'192.168.1.101','2014-07-06 22:58:55',1,NULL),
	('402881e5479d04cc01479d051f600000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-04 01:57:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0635480002','Chrome','权限: 会员卡被添加成功',3,'192.168.1.101','2014-08-04 01:58:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0675f80004','Chrome','权限: 会员卡信息被添加成功',3,'192.168.1.101','2014-08-04 01:59:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0777a80007','Chrome','用户admin已退出',2,'192.168.1.101','2014-08-04 02:00:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d07915f0008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-04 02:00:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d08ceeb0009','Chrome','权限: 会员卡信息被更新成功',5,'192.168.1.101','2014-08-04 02:01:45',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0ab6be000a','Chrome','权限: 会员卡信息被更新成功',5,'192.168.1.101','2014-08-04 02:03:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0def2b000b','Chrome','权限: 会员卡信息被更新成功',5,'192.168.1.101','2014-08-04 02:07:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0e9f37000c','Chrome','权限: 会员卡信息被更新成功',5,'192.168.1.101','2014-08-04 02:08:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0ef21c000d','Chrome','权限: 会员卡信息被更新成功',5,'192.168.1.101','2014-08-04 02:08:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e5479d04cc01479d0f336f000e','Chrome','权限: 会员卡被更新成功',5,'192.168.1.101','2014-08-04 02:08:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb953cf10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-10 00:23:45',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb960b4f0001','Chrome','微站点信息删除成功',4,'192.168.1.101','2014-08-10 00:24:38',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9618150002','Chrome','微站点模板删除成功',4,'192.168.1.101','2014-08-10 00:24:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9650220003','Chrome','权限: 商品分类被删除成功',4,'192.168.1.101','2014-08-10 00:24:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb965d670004','Chrome','权限: 商品信息被删除成功',4,'192.168.1.101','2014-08-10 00:24:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9668690005','Chrome','权限: 会员管理被删除成功',4,'192.168.1.101','2014-08-10 00:25:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9676310006','Chrome','权限: 购物车管理被删除成功',4,'192.168.1.101','2014-08-10 00:25:05',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb96833e0007','Chrome','权限: 订单管理被删除成功',4,'192.168.1.101','2014-08-10 00:25:09',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb968d420008','Chrome','权限: 微信商城被删除成功',4,'192.168.1.101','2014-08-10 00:25:11',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb969b860009','Chrome','权限: 会员卡信息被删除成功',4,'192.168.1.101','2014-08-10 00:25:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb96a3eb000a','Chrome','权限: 会员卡被删除成功',4,'192.168.1.101','2014-08-10 00:25:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb96cd72000b','Chrome','权限: 用户概况被删除成功',4,'192.168.1.101','2014-08-10 00:25:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb96ddf7000c','Chrome','权限: 用户分组被删除成功',4,'192.168.1.101','2014-08-10 00:25:32',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb96ea93000d','Chrome','权限: 会话记录被删除成功',4,'192.168.1.101','2014-08-10 00:25:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb974661000e','Chrome','用户admin已退出',2,'192.168.1.101','2014-08-10 00:25:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb977118000f','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-10 00:26:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9809cf0010','Chrome','相片更新成功',5,'192.168.1.101','2014-08-10 00:26:49',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9813240011','Chrome','相片删除成功',4,'192.168.1.101','2014-08-10 00:26:51',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb981b440012','Chrome','相片删除成功',4,'192.168.1.101','2014-08-10 00:26:53',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9835480014','Chrome','添加成功',3,'192.168.1.101','2014-08-10 00:27:00',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb989ba10016','Chrome','相片删除成功',4,'192.168.1.101','2014-08-10 00:27:26',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb98aa9c0017','Chrome','相片删除成功',4,'192.168.1.101','2014-08-10 00:27:30',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb98b2830018','Chrome','相片删除成功',4,'192.168.1.101','2014-08-10 00:27:32',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb98c7b20019','Chrome','微相册删除成功',4,'192.168.1.101','2014-08-10 00:27:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9a1494001a','Chrome','权限: 会员管理被删除成功',4,'192.168.1.101','2014-08-10 00:29:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9a3385001b','Chrome','权限: 基础设置被更新成功',5,'192.168.1.101','2014-08-10 00:29:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9aa12f001c','Chrome','权限: 消息管理被更新成功',5,'192.168.1.101','2014-08-10 00:29:38',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9ae710001d','Chrome','权限: 菜单管理被更新成功',5,'192.168.1.101','2014-08-10 00:29:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9b23bf001e','Chrome','权限: 微信网站被更新成功',5,'192.168.1.101','2014-08-10 00:30:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9b60c4001f','Chrome','权限: 微活动被更新成功',5,'192.168.1.101','2014-08-10 00:30:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9b81710020','Chrome','权限: 账号管理被更新成功',5,'192.168.1.101','2014-08-10 00:30:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9b8e1d0021','Chrome','用户admin已退出',2,'192.168.1.101','2014-08-10 00:30:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9ba56d0022','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-10 00:30:45',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9c796e0023','Chrome','用户admin已退出',2,'192.168.1.101','2014-08-10 00:31:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e547bb946e0147bb9c98ad0024','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-10 00:31:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e647962b48014796e03c450000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-02 21:19:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e647970fbd014797105e5e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-02 22:12:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e64799449b014799452ac80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 08:29:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e64799449b0147994cf3c60001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 08:37:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e64799449b0147994d95a20002','Chrome','权限: 订单管理被更新成功',5,'192.168.1.102','2014-08-03 08:38:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e64799449b0147994dd6280003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 08:38:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e647994e690147994f10680000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 08:40:01',1,'4028d881436d514601436d5215ac0043'),
	('402881e647994e6901479986a1d50001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 09:40:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e64799f7e4014799f870300000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 11:45:01',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479a921401479a928f0f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 14:33:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479ac39801479ac5a04a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 15:29:08',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479ace8d01479acf061e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 15:39:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479ace8d01479aecadaa0004','Chrome','购物车 删除成功',4,'192.168.1.102','2014-08-03 16:11:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479af7d201479af843d80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 16:24:27',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479af9a001479affc7fc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 16:32:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b3b3301479b3b8f6d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 17:37:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b3d9e01479b3dfcc60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 17:40:36',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b4e8c01479b5294d10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 18:03:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b619c01479b6244f90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 18:20:14',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b662101479b69e3110000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 18:28:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b6c8601479b6cf0950000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 18:31:53',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b6c8601479b6e7d7c0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.102','2014-08-03 18:33:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b6c8601479b7002910002','Chrome','商城地址信息删除成功',4,'192.168.1.102','2014-08-03 18:35:14',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b6c8601479b700b550003','Chrome','商城地址信息删除成功',4,'192.168.1.102','2014-08-03 18:35:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e6479b6c8601479b7092220005','Chrome','商城地址信息添加成功',3,'192.168.1.102','2014-08-03 18:35:51',1,'4028d881436d514601436d5215ac0043'),
	('402881e745e6735b0145e676015f0000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.103','2014-05-10 22:07:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e745e67ca70145e67d2ef90000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.103','2014-05-10 22:15:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e747bae9ac0147baea2c810000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.103','2014-08-09 21:16:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e747baf1ea0147baf2403d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.103','2014-08-09 21:25:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e747baf1ea0147baf4c6a40001','Chrome','用户admin已退出',2,'192.168.1.103','2014-08-09 21:28:29',1,'4028d881436d514601436d5215ac0043'),
	('402881e747baf1ea0147baf4e7e50002','Chrome','用户: tingfeng[信息部]登录成功',1,'192.168.1.103','2014-08-09 21:28:38',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e747baf1ea0147bb0a90340003','Chrome','用户tingfeng已退出',2,'192.168.1.101','2014-08-09 21:52:17',1,'402881e4461f9c6401461fa2e6f50002'),
	('402881e747baf1ea0147bb0aa6030004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-09 21:52:23',1,'4028d881436d514601436d5215ac0043'),
	('402881e747baf1ea0147bb51f7ea0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-09 23:10:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e747baf1ea0147bb750b9a0006','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.101','2014-08-09 23:48:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e747baf1ea0147bb79d29f0008','Chrome','扩展接口管理添加成功',3,'192.168.1.101','2014-08-09 23:53:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c297860145c29981dd0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-03 23:00:11',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c2d12b0145c2d303490000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 00:03:00',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c2d12b0145c2d38b680001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 00:03:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c2d12b0145c2d473600002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 00:04:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c2d88e0145c2d9159a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 00:09:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c6f1430145c7043fa80000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 19:35:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c6f1430145c704a6230001','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 19:35:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c6f1430145c705a9480002','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 19:36:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c7090d0145c709a93b0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 19:41:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c732a20145c737394d0000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 20:30:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c73cb00145c746c9240000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 20:47:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c73cb00145c74893910001','MSIE 9.0','权限: 公众帐号管理被更新成功',5,'192.168.1.104','2014-05-04 20:49:53',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c73cb00145c74976440005','MSIE 9.0','用户admin已退出',2,'192.168.1.104','2014-05-04 20:50:51',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c73cb00145c74988570006','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-04 20:50:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e845c73cb00145c75445eb0010','MSIE 9.0','创建成功',3,'192.168.1.104','2014-05-04 21:02:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc520a0145cc535a580000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 20:19:45',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc520a0145cc5520730001','MSIE 9.0','权限: 公众帐号管理被更新成功',5,'192.168.1.104','2014-05-05 20:21:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc520a0145cc55585c0002','MSIE 9.0','用户admin已退出',2,'192.168.1.104','2014-05-05 20:21:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc520a0145cc5569f20003','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 20:22:00',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc520a0145cc62d2900004','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 20:36:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc65050145cc659b8d0000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 20:39:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc8bf40145cc8cb0750000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 21:22:23',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc8bf40145cc8cfdcd0001','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 21:22:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e845cc8bf40145cc8e41100002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-05 21:24:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1456d0145d14949e90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 19:26:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1698f0145d16a1d380000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 20:02:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d16aef0145d16b87370000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 20:04:16',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d16cb10145d16d0af40000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 20:05:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d16cb10145d1711cc60001','MSIE 9.0','accountid删除成功',4,'192.168.1.104','2014-05-06 20:10:22',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d16cb10145d1711eb90005','MSIE 9.0','修改成功',5,'192.168.1.104','2014-05-06 20:10:22',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1723e0145d172b10f0000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 20:12:05',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1723e0145d18f52a70017','MSIE 9.0','用户admin已退出',2,'192.168.1.104','2014-05-06 20:43:22',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1723e0145d18f649e0018','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 20:43:26',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1723e0145d199f2b7001a','MSIE 9.0','用户admin已退出',2,'192.168.1.104','2014-05-06 20:54:58',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d1723e0145d19a0626001b','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-06 20:55:03',1,'4028d881436d514601436d5215ac0043'),
	('402881e845d6fbb90145d6fe287f0000','MSIE 9.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-07 22:02:31',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d7e5301460d7f42d70000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 12:03:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d7e5301460d81c7d60002','MSIE 7.0','权限: 关键字管理被添加成功',3,'192.168.1.104','2014-05-18 12:05:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d7e5301460d8341ce0004','MSIE 7.0','用户admin已退出',2,'192.168.1.104','2014-05-18 12:07:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d7e5301460d83568b0005','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 12:07:29',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d83c701460d85afbd0000','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 12:10:03',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d83c701460d89f1580001','MSIE 7.0','修改关文本模板成功！',5,'192.168.1.104','2014-05-18 12:14:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d83c701460e06cd630002','MSIE 7.0','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 14:31:05',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d83c701460e075e2f0003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 14:31:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460d83c701460e08fc770005','Chrome','权限: 关注欢迎语被更新成功',5,'192.168.1.104','2014-05-18 14:33:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460e097d01460e0b37850000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 14:35:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460e097d01460e0be28c0001','Chrome','用户admin已退出',2,'192.168.1.104','2014-05-18 14:36:38',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460e097d01460e0c00cf0002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 14:36:46',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460e097d01460e0f35f50003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 14:40:16',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460e102a01460e107e860000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 14:41:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e8460f865501460f8c923d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-18 21:36:49',1,'4028d881436d514601436d5215ac0043'),
	('402881e84617910601461791f8fe0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 10:59:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e846181e710146182023a70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 13:34:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e84618d367014618d3f08e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 16:51:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e84618da56014618dacb830000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 16:58:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e84618e0e5014618e146e80000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 17:05:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e84618e481014618e4ef4d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 17:09:55',1,'4028d881436d514601436d5215ac0043'),
	('402881e84619037b01461903dc000000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 17:43:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e846190c670146190ce4670000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 17:53:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461911f00146191305010000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:00:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461919800146191a5a070000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:08:15',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461921b80146192242490000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:16:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461926590146192744fc0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:22:22',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461931a3014619328a900000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:34:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e846193d530146193db2b90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:46:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e846194295014619430b350000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 18:52:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e846194a3a0146194a96b10000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 19:00:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e846194ec30146194fb3000000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 19:06:32',1,'4028d881436d514601436d5215ac0043'),
	('402881e84619622701461962f69c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 19:27:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e84619666e01461966e3eb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-20 19:31:51',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c3dbb7f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-21 08:45:46',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c3e522f0001','Chrome','权限: 取消关注回复语被删除成功',4,'192.168.1.104','2014-05-21 08:46:24',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c3e93b90002','Chrome','权限: 素材管理被删除成功',4,'192.168.1.104','2014-05-21 08:46:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c3f2b950003','Chrome','权限: 关键字应答被删除成功',4,'192.168.1.104','2014-05-21 08:47:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c3f386f0004','Chrome','权限: 关键字应答被删除成功',4,'192.168.1.104','2014-05-21 08:47:23',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c3f63830005','Chrome','权限: 自动应答菜单被删除成功',4,'192.168.1.104','2014-05-21 08:47:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c4221ca0006','Chrome','用户admin已退出',2,'192.168.1.104','2014-05-21 08:50:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e8461c3ba101461c42339b0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.104','2014-05-21 08:50:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e946dd8ecc0146dd8f7e9c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-27 21:41:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddc9450146ddcae3540000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-27 22:46:39',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146ddefa0bb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-27 23:26:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146ddf07b620002','Chrome','首页广告更新成功',5,'192.168.1.105','2014-06-27 23:27:43',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146ddf741ac0004','Chrome','首页广告更新成功',5,'192.168.1.105','2014-06-27 23:35:07',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146ddf99c4c0006','Chrome','首页广告更新成功',5,'192.168.1.105','2014-06-27 23:37:41',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146ddf9b7370007','Chrome','首页广告更新成功',5,'192.168.1.105','2014-06-27 23:37:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146de0300b30009','Chrome','首页广告更新成功',5,'192.168.1.105','2014-06-27 23:47:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146de05329b000c','Chrome','首页广告添加成功',3,'192.168.1.105','2014-06-27 23:50:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146de099ce5000d','Chrome','首页广告删除成功',4,'192.168.1.105','2014-06-27 23:55:10',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146de09fe7c000f','Chrome','首页广告更新成功',5,'192.168.1.105','2014-06-27 23:55:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ddea480146de0f3ab60012','Chrome','首页广告添加成功',3,'192.168.1.105','2014-06-28 00:01:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e946e2a2360146e2a404f30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-28 21:22:18',1,'4028d881436d514601436d5215ac0043'),
	('402881e946e2a2360146e2af4be30001','Chrome','用户admin已退出',2,'192.168.1.105','2014-06-28 21:34:37',1,'4028d881436d514601436d5215ac0043'),
	('402881e946e2a2360146e2af66d80002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-28 21:34:44',1,'4028d881436d514601436d5215ac0043'),
	('402881e946e2a2360146e2ca1bc00003','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-28 22:03:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e946e2a2360146e2caeb950005','Chrome','修改图文模板成功！',5,'192.168.1.105','2014-06-28 22:04:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ecbe530146ecc60c9d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-30 20:35:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e946ecbe530146ecc6149a0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-06-30 20:35:42',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f72f8e0146f73230170000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-02 21:09:59',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f72f8e0146f7403e600004','Chrome','用户admin已退出',2,'192.168.1.105','2014-07-02 21:25:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f72f8e0146f7406e8d0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-02 21:25:33',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f72f8e0146f74632e60012','Chrome','创建成功',3,'192.168.1.105','2014-07-02 21:31:51',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f749a30146f752151d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-02 21:44:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f755ae0146f758cf830000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-02 21:52:11',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f7bcb20146f7c69ad30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-02 23:52:06',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f7bcb20146f7c763c10002','Chrome','权限: 微信商城被添加成功',3,'192.168.1.105','2014-07-02 23:52:58',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f7bcb20146f7c8c0380004','Chrome','权限: 商品类别被添加成功',3,'192.168.1.105','2014-07-02 23:54:27',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f7bcb20146f7c9992d0007','Chrome','用户admin已退出',2,'192.168.1.105','2014-07-02 23:55:22',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f7bcb20146f7c9c6580008','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-02 23:55:34',1,'4028d881436d514601436d5215ac0043'),
	('402881e946f7bcb20146f7ceb045000b','Chrome','商品分类添加成功',3,'192.168.1.105','2014-07-03 00:00:56',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470133a7014701375b910000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-04 19:51:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470133a70147013872f00002','Chrome','商品分类添加成功',3,'192.168.1.105','2014-07-04 19:53:02',1,'4028d881436d514601436d5215ac0043'),
	('402881e947015a700147015b65830000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-04 20:31:12',1,'4028d881436d514601436d5215ac0043'),
	('402881e947015a700147016148ac0003','Chrome','商品分类添加成功',3,'192.168.1.105','2014-07-04 20:37:38',1,'4028d881436d514601436d5215ac0043'),
	('402881e947015a7001470161a84c0006','Chrome','商品分类添加成功',3,'192.168.1.105','2014-07-04 20:38:03',1,'4028d881436d514601436d5215ac0043'),
	('402881e947015a7001470164504b0009','Chrome','商品分类添加成功',3,'192.168.1.105','2014-07-04 20:40:57',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701b0bc014701b1982e0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-04 22:05:21',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701b0bc014701b6eeaa0017','Chrome','创建成功',3,'192.168.1.105','2014-07-04 22:11:11',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701b0bc014701ba3eb80018','Chrome','修改成功',5,'192.168.1.105','2014-07-04 22:14:48',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701b0bc014701bc19440019','Chrome','修改成功',5,'192.168.1.105','2014-07-04 22:16:50',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014701e43b290000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-04 23:00:40',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014701e5fec20002','Chrome','权限: 商品信息管理被添加成功',3,'192.168.1.105','2014-07-04 23:02:35',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014701e69fe70004','Chrome','用户admin已退出',2,'192.168.1.105','2014-07-04 23:03:17',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014701e6b86e0005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-04 23:03:23',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014701f48cee0009','Chrome','商品信息添加成功',3,'192.168.1.105','2014-07-04 23:18:29',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014701fcbfc7000b','Chrome','商品信息添加成功',3,'192.168.1.105','2014-07-04 23:27:27',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df96014702080ac0000c','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-04 23:39:47',1,'4028d881436d514601436d5215ac0043'),
	('402881e94701df960147020c27b30011','Chrome','商品信息添加成功',3,'192.168.1.105','2014-07-04 23:44:16',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470273d2014702840d3a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-05 01:55:14',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470273d201470285fa1a0017','Chrome','用户admin已退出',2,'192.168.1.105','2014-07-05 01:57:20',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470273d20147028610cf0018','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-05 01:57:26',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470273d201470297db5e001b','Chrome','用户admin已退出',2,'192.168.1.105','2014-07-05 02:16:52',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470273d201470297fccb001c','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-05 02:17:00',1,'4028d881436d514601436d5215ac0043'),
	('402881e9470273d2014702a94a9f001e','Chrome','扩展接口管理添加成功',3,'192.168.1.105','2014-07-05 02:35:54',1,'4028d881436d514601436d5215ac0043'),
	('402881e94702c764014702cd82f20002','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.105','2014-07-05 03:15:28',1,'4028d881436d514601436d5215ac0043'),
	('402881e94702c764014702ce59e90003','Chrome','商品信息更新成功',5,'192.168.1.105','2014-07-05 03:16:23',1,'4028d881436d514601436d5215ac0043'),
	('402881e94702c764014702cf04d50005','Chrome','商品信息更新成功',5,'192.168.1.105','2014-07-05 03:17:07',1,'4028d881436d514601436d5215ac0043'),
	('402881ea47c904ee0147c905cf7f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.106','2014-08-12 15:01:47',1,'4028d881436d514601436d5215ac0043'),
	('402881eb47ce1c130147ce1dc7f40001','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.107','2014-08-13 14:46:04',1,'4028d881436d514601436d5215ac0043'),
	('402881eb47ce1c130147ce45bfb10005','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.107','2014-08-13 15:29:43',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fddf98c290000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 09:02:43',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde00ccdd0001','MSIE 8.0','修改成功',5,'192.168.1.123','2015-09-18 09:10:38',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde024b070002','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 09:12:16',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde0340520003','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 09:13:19',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde040a1f0004','MSIE 8.0','修改成功',5,'192.168.1.123','2015-09-18 09:14:10',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde082cd10005','MSIE 8.0','修改成功',5,'192.168.1.123','2015-09-18 09:18:41',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde08d7460006','MSIE 8.0','修改成功',5,'192.168.1.123','2015-09-18 09:19:25',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fddf892014fde0c67ed0007','MSIE 8.0','修改成功',5,'192.168.1.123','2015-09-18 09:23:19',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde1713014fde1782910000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 09:35:26',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde2163014fde21e27b0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 09:46:46',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde2163014fde27b7f20002','MSIE 8.0','权限: 微商城被添加成功',3,'192.168.1.123','2015-09-18 09:53:09',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde2bea014fde2c634b0000','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 09:58:15',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde2bea014fde2f64780002','MSIE 8.0','权限: 客户信息被添加成功',3,'192.168.1.123','2015-09-18 10:01:32',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde2bea014fde3029700005','MSIE 8.0','用户admin已退出',2,'192.168.1.123','2015-09-18 10:02:22',1,'4028d881436d514601436d5215ac0043'),
	('402881fb4fde2bea014fde3063d80006','MSIE 8.0','用户: admin[信息部]登录成功',1,'192.168.1.123','2015-09-18 10:02:37',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a1d8301471a1e409b0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.132','2014-07-09 15:54:56',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a20e301471a21ef3d0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.132','2014-07-09 15:58:57',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a25aefb0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.132','2014-07-09 16:03:03',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a25e0680001','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.132','2014-07-09 16:03:15',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a2abcc20002','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.132','2014-07-09 16:08:34',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a2d1e390003','Chrome','商品分类删除成功',4,'192.168.9.132','2014-07-09 16:11:10',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a2fbd720004','Chrome','商品分类更新成功',5,'192.168.9.132','2014-07-09 16:14:02',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a2fe1830005','Chrome','商品分类更新成功',5,'192.168.9.132','2014-07-09 16:14:11',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a3013160006','Chrome','商品分类更新成功',5,'192.168.9.132','2014-07-09 16:14:24',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a30db7e0008','Chrome','商城会员添加成功',3,'192.168.9.132','2014-07-09 16:15:15',1,'4028d881436d514601436d5215ac0043'),
	('40288904471a240e01471a34036e0009','Chrome','商品信息删除成功',4,'192.168.9.132','2014-07-09 16:18:42',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472e852301472e85f8ea0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.109','2014-07-13 15:00:37',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472e852301472e8a050c0001','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.109','2014-07-13 15:05:02',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472e852301472e90a3080006','Firefox','活动删除成功',4,'192.168.9.109','2014-07-13 15:12:16',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472e852301472eae6cef0007','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.109','2014-07-13 15:44:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472e852301472eb0d6bd000f','Chrome','微信单图消息添加成功',3,'192.168.9.109','2014-07-13 15:47:27',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472e852301472eb1b2c30010','Chrome','微信单图消息更新成功',5,'192.168.9.109','2014-07-13 15:48:23',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472ec2a801472ec328f50000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.109','2014-07-13 16:07:27',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472ec2a801472ec39f680003','Firefox','微信单图消息添加成功',3,'192.168.9.109','2014-07-13 16:07:58',1,'4028d881436d514601436d5215ac0043'),
	('402889ed472ee23401472ee48a410000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.109','2014-07-13 16:43:55',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc66c30146dc778e9a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 16:36:01',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc66c30146dc7c1c450003','Chrome','信息添加成功',3,'192.168.9.115','2014-06-27 16:40:59',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc66c30146dc7cd4510007','Chrome','微信单图消息添加成功',3,'192.168.9.115','2014-06-27 16:41:46',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc66c30146dc7cfb05000a','Chrome','微信单图消息添加成功',3,'192.168.9.115','2014-06-27 16:41:56',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc8ac3190000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 16:56:59',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc8b16a60001','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 16:57:21',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc8d69990002','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 16:59:53',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc8d92dd0003','Chrome','用户admin已退出',2,'192.168.9.115','2014-06-27 17:00:04',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc8ea8cc0004','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 17:01:15',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc8fec310005','Chrome','用户admin已退出',2,'192.168.9.115','2014-06-27 17:02:38',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc90209a0006','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 17:02:51',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dc9520650008','Chrome','用户admin已退出',2,'192.168.9.115','2014-06-27 17:08:19',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dca372870009','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 17:23:57',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dc8a220146dca3c44f000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 17:24:18',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dcad7f0146dcade99f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.115','2014-06-27 17:35:23',1,'4028d881436d514601436d5215ac0043'),
	('402889f346dcad7f0146dcb414f50001','Chrome','用户admin已退出',2,'192.168.9.115','2014-06-27 17:42:07',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474704840147470593110000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.118','2014-07-18 09:10:53',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747048401474706d41f0002','Chrome','权限: 微站点信息被添加成功',3,'192.168.9.118','2014-07-18 09:12:15',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474704840147470790740004','Chrome','权限: 微站点模板被添加成功',3,'192.168.9.118','2014-07-18 09:13:03',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747048401474708189c0007','Chrome','用户admin已退出',2,'192.168.9.118','2014-07-18 09:13:38',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747048401474708b0170008','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.118','2014-07-18 09:14:17',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747048401474709458e000b','Chrome','微站点信息添加成功',3,'192.168.9.118','2014-07-18 09:14:55',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474704840147470a1bf2000d','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:15:50',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474704840147470d620a0011','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:19:25',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474704840147470e56d50013','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:20:27',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474704840147471009460016','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:22:19',1,'4028d881436d514601436d5215ac0043'),
	('402889f647470484014747106a810018','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:22:43',1,'4028d881436d514601436d5215ac0043'),
	('402889f647470484014747106ad30019','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:22:44',1,'4028d881436d514601436d5215ac0043'),
	('402889f647470484014747129bc6001c','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:25:07',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747048401474713109a001e','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:25:37',1,'4028d881436d514601436d5215ac0043'),
	('402889f647470484014747137eeb0021','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:26:05',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f01474718a70d0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.118','2014-07-18 09:31:43',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f0147471918ba0003','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:32:12',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f01474719c3e00006','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:32:56',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f01474720a1500008','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.118','2014-07-18 09:40:26',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f01474720c6010009','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:40:35',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f01474720c65a000a','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:40:36',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f01474720c6be000b','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:40:36',1,'4028d881436d514601436d5215ac0043'),
	('402889f64747182f014747211adc000e','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:40:57',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474722ad0147472395130000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.118','2014-07-18 09:43:40',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474722ad01474723f6e50003','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:44:05',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474722ad0147472469ff0005','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:44:34',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474722ad014747246a530006','Chrome','微站点模板删除成功',4,'192.168.9.118','2014-07-18 09:44:34',1,'4028d881436d514601436d5215ac0043'),
	('402889f6474722ad01474724bd6f0009','Chrome','微站点模板添加成功',3,'192.168.9.118','2014-07-18 09:44:55',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de0147665143220000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 11:01:47',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de014766568e6c0001','Chrome','用户: ceshi[信息部]登录成功',1,'192.168.9.120','2014-07-24 11:07:34',1,'402881e44648134a014648174a45000c'),
	('402889f8476650de01476665e0360003','Firefox','类型分组: 12被添加成功',3,'192.168.9.120','2014-07-24 11:24:18',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de014766662a910004','Firefox','类型分组: CMS菜单类型被更新成功',5,'192.168.9.120','2014-07-24 11:24:37',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de01476666acfe0006','Firefox','类型: 单文被添加成功',3,'192.168.9.120','2014-07-24 11:25:10',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de01476666d5f20008','Firefox','类型: 02被添加成功',3,'192.168.9.120','2014-07-24 11:25:21',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de014766670a2f0009','Firefox','类型: 多文章被更新成功',5,'192.168.9.120','2014-07-24 11:25:34',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de014766672fdb000a','Firefox','类型: 单文章被更新成功',5,'192.168.9.120','2014-07-24 11:25:44',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de01476668df3f000b','Firefox','类型: 多文章被更新成功',5,'192.168.9.120','2014-07-24 11:27:34',1,'4028d881436d514601436d5215ac0043'),
	('402889f8476650de01476668faaf000c','Firefox','类型: 单文章被更新成功',5,'192.168.9.120','2014-07-24 11:27:41',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147666c2fd70000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 11:31:11',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147666c8b3c0001','Firefox','栏目管理更新成功',5,'192.168.9.120','2014-07-24 11:31:35',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147666e1c530004','Firefox','栏目管理更新成功',5,'192.168.9.120','2014-07-24 11:33:18',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147666f81db0008','Firefox','用户admin已退出',2,'192.168.9.120','2014-07-24 11:34:49',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147666f9c060009','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 11:34:56',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae401476670bbc70014','Firefox','添加成功',3,'192.168.9.120','2014-07-24 11:36:09',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae4014766daefc80015','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 13:32:10',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147670ad1f30016','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 14:24:28',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae401476729c58b001a','Firefox','微站点模板添加成功',3,'192.168.9.120','2014-07-24 14:58:16',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147672f3e19001c','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 15:04:15',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae401476730779a001d','Firefox','微站点模板删除成功',4,'192.168.9.120','2014-07-24 15:05:35',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae401476730f0870020','Firefox','微站点模板添加成功',3,'192.168.9.120','2014-07-24 15:06:06',1,'4028d881436d514601436d5215ac0043'),
	('402889f847666ae40147673af4bd0022','Firefox','微站点信息更新成功',5,'192.168.9.120','2014-07-24 15:17:02',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b0147674303790000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 15:25:50',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b01476743586f0003','Firefox','栏目管理添加成功',3,'192.168.9.120','2014-07-24 15:26:12',1,'4028d881436d514601436d5215ac0043');

INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`)
VALUES
	('402889f84767413b0147674375a50004','Firefox','栏目管理更新成功',5,'192.168.9.120','2014-07-24 15:26:20',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b014767472de60005','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 15:30:23',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b0147674b45130008','Chrome','用户admin已退出',2,'192.168.9.120','2014-07-24 15:34:51',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b0147674b61a20009','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 15:34:59',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b0147674ba7f2000a','Chrome','用户admin已退出',2,'192.168.9.120','2014-07-24 15:35:17',1,'4028d881436d514601436d5215ac0043'),
	('402889f84767413b0147674c0407000b','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-24 15:35:40',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ab1ad01477ab2859d0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:00:25',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ac5b901477ac638de0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:21:56',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ac5b901477ac6ea2f0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:22:42',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ac5b901477acfe6460002','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:32:31',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ad29d01477ad7c1830000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:41:05',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ad29d01477ad88f8d0001','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:41:58',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477ad29d01477ad8e3c70003','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 10:42:20',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477adacf01477addfd2f0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 10:47:54',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477adacf01477ade1a860001','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 10:48:01',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477aea1d01477aea8c990000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:01:37',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477afa0601477afa80070000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:19:02',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b065001477b06cd560000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:32:29',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b08ad01477b0908670000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:34:55',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b0c1f01477b0ca6ae0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:38:52',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b0c1f01477b0ded290001','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:40:16',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b0c1f01477b0e084a0002','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 11:40:22',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b0c1f01477b0e43cb0005','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 11:40:38',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b0fc001477b101c450000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 11:42:39',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b5b5b01477b5c03060000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:05:33',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b5b5b01477b5c93980001','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:06:10',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b5b5b01477b5d01af0005','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:06:38',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b5b5b01477b5e68790007','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:08:10',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b5b5b01477b5ec8360008','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:08:34',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b5b5b01477b5efcf3000b','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:08:48',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b66e201477b67504a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:17:54',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b66e201477b678dea0001','Chrome','微站点模板更新成功',5,'192.168.9.120','2014-07-28 13:18:09',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b681801477b68a1ce0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:19:20',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b681801477b68c3960001','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:19:29',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b681801477b692cf90004','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:19:56',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b6c5401477b6cf5b70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:24:04',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b6c5401477b6d1c880001','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:24:14',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b6c5401477b6d4e880004','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:24:26',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b6e4e01477b6ebcc00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:26:00',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b6e4e01477b6f0a720003','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:26:20',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b7196420000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 13:29:07',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b71b6460001','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:29:15',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b71bede0002','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:29:17',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b71edd70005','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:29:29',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b7264fb0007','Chrome','微站点模板更新成功',5,'192.168.9.120','2014-07-28 13:30:00',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b729a7f0008','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 13:30:14',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477b70aa01477b75c50c000b','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 13:33:41',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c28cc230000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.120','2014-07-28 16:49:14',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c28ea980001','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 16:49:22',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2989d70004','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 16:50:02',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2a4e0b0006','Chrome','微站点模板更新成功',5,'192.168.9.120','2014-07-28 16:50:53',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2a81970009','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 16:51:06',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2b9bc0000d','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 16:52:18',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2e7144000f','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 16:55:24',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2e76b70010','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 16:55:25',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2e7dbf0011','Chrome','微站点模板删除成功',4,'192.168.9.120','2014-07-28 16:55:27',1,'4028d881436d514601436d5215ac0043'),
	('402889f8477c283701477c2eb0f20014','Chrome','微站点模板添加成功',3,'192.168.9.120','2014-07-28 16:55:40',1,'4028d881436d514601436d5215ac0043'),
	('402889fc4734103e01473411c0c40000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.124','2014-07-14 16:51:24',1,'4028d881436d514601436d5215ac0043'),
	('402889fc4734103e0147341478940003','Firefox','删除信息数据成功',4,'192.168.9.124','2014-07-14 16:54:22',1,'4028d881436d514601436d5215ac0043'),
	('402889fc4734103e0147341479dc0004','Firefox','删除信息数据成功',4,'192.168.9.124','2014-07-14 16:54:22',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728a3d1c90000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 11:35:30',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728a46c520001','Chrome','权限: 文本消息被更新成功',5,'192.168.9.127','2014-07-12 11:36:10',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728a48b0c0002','Chrome','权限: 图文消息被更新成功',5,'192.168.9.127','2014-07-12 11:36:17',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728a4a7b50003','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:36:25',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728ab3dbe0006','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:43:36',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728ab47f30007','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:43:39',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728ab72600008','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:43:50',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728ab9d040009','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:44:01',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728abc608000a','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:44:11',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728abd265000b','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:44:14',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728af52b3000c','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:04',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728af6535000d','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:09',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728af7a82000e','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:14',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728af8734000f','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:17',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728af8eda0010','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:19',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728afa4dd0011','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:25',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728afe92f0012','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:42',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728aff7370013','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:46',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728afff480014','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b00a100015','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:51',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b01a710016','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:48:55',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b0415b0017','Chrome','修改关键字回复成功！',5,'192.168.9.127','2014-07-12 11:49:05',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b05a0d0018','Chrome','修改关键字回复成功！',5,'192.168.9.127','2014-07-12 11:49:11',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b0663e0019','Chrome','修改关键字回复成功！',5,'192.168.9.127','2014-07-12 11:49:14',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b0708e001a','Chrome','修改关键字回复成功！',5,'192.168.9.127','2014-07-12 11:49:17',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b20122001d','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:51:00',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b2088c001e','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:51:02',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b20f7b001f','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:51:03',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b436990022','Chrome','权限: 微信商城被更新成功',5,'192.168.9.127','2014-07-12 11:53:24',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b455730023','Chrome','权限: 微信CMS被更新成功',5,'192.168.9.127','2014-07-12 11:53:32',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b47d3c0024','Chrome','用户admin已退出',2,'192.168.9.127','2014-07-12 11:53:42',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b497bc0025','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 11:53:49',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b4d76f0026','Chrome','权限: 基础设置被更新成功',5,'192.168.9.127','2014-07-12 11:54:06',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b4eb280027','Chrome','权限: 菜单管理被更新成功',5,'192.168.9.127','2014-07-12 11:54:11',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b58db10028','Chrome','权限: Online 开发被更新成功',5,'192.168.9.127','2014-07-12 11:54:52',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b5cf500029','Chrome','权限: 微信网站被更新成功',5,'192.168.9.127','2014-07-12 11:55:09',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b5df56002a','Chrome','用户admin已退出',2,'192.168.9.127','2014-07-12 11:55:13',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b68b9d002b','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 11:55:57',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b8aeb6002c','Chrome','修改关文本模板成功！',5,'192.168.9.127','2014-07-12 11:58:17',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728b8be01002d','Chrome','删除信息数据成功！',4,'192.168.9.127','2014-07-12 11:58:21',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728baa5300030','Chrome','更新我的大转盘的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 12:00:26',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728bace3a0031','Chrome','更新微CMS的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 12:00:36',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728bafe2c0032','Chrome','更新微活动的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 12:00:49',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728bb20160033','Chrome','更新微商城的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 12:00:57',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728bbb73f0035','Chrome','添加查天气的信息成功！',3,'192.168.9.127','2014-07-12 12:01:36',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728bc62680037','Chrome','添加联系我们的信息成功！',3,'192.168.9.127','2014-07-12 12:02:20',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728bcb34c0039','Chrome','添加联系我们的信息成功！',3,'192.168.9.127','2014-07-12 12:02:41',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728e02c65003a','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 12:41:25',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728a293014728e55ce2003b','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 12:47:05',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728e9ee014728ea82d90000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 12:52:43',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728ebee014728ec763c0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 12:54:51',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728ee6b014728f0025e0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 12:58:43',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f283db0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 13:01:27',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f2d3fd0002','Firefox','添加开源项目的信息成功！',3,'192.168.9.127','2014-07-12 13:01:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f3015b0003','Firefox','更新开源项目的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 13:02:00',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f314560004','Firefox','更新微活动的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 13:02:04',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f324df0005','Firefox','更新联系我们的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 13:02:09',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f4ba310007','Firefox','添加捷微jeeWX的信息成功！',3,'192.168.9.127','2014-07-12 13:03:52',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f52c640009','Firefox','添加企业快速开发平台的信息成功！',3,'192.168.9.127','2014-07-12 13:04:22',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f5a95a000a','Firefox','更新联系我们的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 13:04:54',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f60f56000c','Firefox','添加社区培训的信息成功！',3,'192.168.9.127','2014-07-12 13:05:20',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f61bde000d','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 13:05:23',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014728f8e092000f','Firefox','扩展接口管理添加成功',3,'192.168.9.127','2014-07-12 13:08:24',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014729029dd30011','Firefox','添加刮刮乐的信息成功！',3,'192.168.9.127','2014-07-12 13:19:03',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f23701472903092a0012','Firefox','删除查天气菜单信息数据',4,'192.168.9.127','2014-07-12 13:19:30',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f2370147290349b50013','Firefox','更新大转盘的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 13:19:47',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f237014729039ccb0015','Firefox','添加营销工具的信息成功！',3,'192.168.9.127','2014-07-12 13:20:08',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f23701472906878f0016','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 13:23:19',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f23701472908756c0017','Firefox','微信公众帐号信息更新成功',5,'192.168.9.127','2014-07-12 13:25:25',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f23701472909966e0019','Firefox','类型分组: 微信公众账号类型被添加成功',3,'192.168.9.127','2014-07-12 13:26:39',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f23701472909d8a8001b','Firefox','类型分组: 服务号被添加成功',3,'192.168.9.127','2014-07-12 13:26:56',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f23701472909ee60001c','Firefox','数据字典分组: 服务号被删除 成功',4,'192.168.9.127','2014-07-12 13:27:02',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f2370147290a0fb6001e','Firefox','类型: 1被添加成功',3,'192.168.9.127','2014-07-12 13:27:11',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f2370147290a2d9f0020','Firefox','类型: 2被添加成功',3,'192.168.9.127','2014-07-12 13:27:18',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f2370147290ac9190021','Firefox','类型: 服务号被更新成功',5,'192.168.9.127','2014-07-12 13:27:58',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f2370147290ae8500022','Firefox','类型: 订阅号被更新成功',5,'192.168.9.127','2014-07-12 13:28:06',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4728f2370147290b08140023','Firefox','微信公众帐号信息更新成功',5,'192.168.9.127','2014-07-12 13:28:14',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47290bbf0147290c5a780000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 13:29:41',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472928ab01472928fce50000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:00:57',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47292ef10147292f5bcc0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:07:55',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729328401472933d1900000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:12:47',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729376601472937d0e60000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:17:09',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472939aa0147293a00060000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:19:32',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47293de30147293e633a0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:24:20',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47294b5c0147294bc2df0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:38:56',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47294cb20147294d0fb90000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:40:21',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729505d01472950c6810000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:44:25',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472953b401472954cc520000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:48:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47295aa80147295af83c0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:55:33',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47295db40147295e20af0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 14:59:00',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47295db40147295e7fc40002','Firefox','活动添加成功',3,'192.168.9.127','2014-07-12 14:59:24',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729668a01472966d77a0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 15:08:31',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47296a4f0147296ac2a40000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 15:12:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47297515014729759d050000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 15:24:39',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472975150147297654c70003','Firefox','删除信息数据成功！',4,'192.168.9.127','2014-07-12 15:25:26',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472978290147297893f20000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 15:27:53',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729782901472979ed520002','Firefox','删除信息数据成功！',4,'192.168.9.127','2014-07-12 15:29:22',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472978290147297d66970005','Firefox','删除信息数据成功！',4,'192.168.9.127','2014-07-12 15:33:09',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472978290147297d7fa50006','Firefox','删除信息数据成功！',4,'192.168.9.127','2014-07-12 15:33:16',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472978290147297d93990007','Firefox','删除信息数据成功！',4,'192.168.9.127','2014-07-12 15:33:21',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472978290147297da7d80008','Firefox','删除信息数据成功！',4,'192.168.9.127','2014-07-12 15:33:26',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729834501472983d7e00000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 15:40:12',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729929c014729931f250000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 15:56:53',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729929c0147299360340001','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 15:57:10',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a0147299b51420000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 16:05:50',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a0147299bb2570001','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 16:06:15',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a0147299e45970002','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 16:09:04',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a141620003','Firefox','更新开源项目的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:12:19',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a169390004','Firefox','更新捷微jeeWX的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:12:29',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a185df0005','Firefox','更新企业快速开发平台的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:12:37',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a1a2f80006','Firefox','更新微活动的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:12:44',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a1c0bb0007','Firefox','更新营销工具的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:12:52',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a1daf50008','Firefox','更新微商城的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:12:58',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a201060009','Firefox','更新微网站的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:13:08',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a21894000a','Firefox','更新刮刮乐的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:13:14',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a23350000b','Firefox','更新关于我们的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:13:21',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a2518e000c','Firefox','更新社区培训的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:13:29',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a27006000d','Firefox','更新联系我们的菜单信息信息成功！',5,'192.168.9.127','2014-07-12 16:13:37',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a279b8000e','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 16:13:39',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a2c176000f','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 16:13:58',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a33fa90010','Firefox','同步菜单信息数据失败！',4,'192.168.9.127','2014-07-12 16:14:30',1,'4028d881436d514601436d5215ac0043'),
	('402889ff47299a8a014729a3556b0011','Firefox','同步菜单信息数据成功！',4,'192.168.9.127','2014-07-12 16:14:35',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729fcdc014729fe78740000','Chrome','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 17:54:08',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729fcdc01472a06d89a0001','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 18:03:17',1,'4028d881436d514601436d5215ac0043'),
	('402889ff4729fcdc01472a07536e0002','Firefox','微信公众帐号信息更新成功',5,'192.168.9.127','2014-07-12 18:03:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472a277501472a2800180000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 18:39:30',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472a2e7601472a2ede9c0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 18:47:00',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac4989f0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 21:30:32',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac581010001','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:31:32',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac592270002','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:31:36',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac5a8340003','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:31:42',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac5bec20004','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:31:48',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac5cfc80005','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:31:52',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac5f9060006','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:32:03',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac626fc0007','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:32:14',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac654d10008','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:32:26',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac675e40009','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:32:35',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac43501472ac68a3b000a','Firefox','扩展接口管理更新成功',5,'192.168.9.127','2014-07-12 21:32:40',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ac90001472aca175a0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 21:36:33',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ad38401472ad3fc5f0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 21:47:21',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472ad38401472ae7258f0001','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 22:08:17',1,'4028d881436d514601436d5215ac0043'),
	('402889ff472b0f1c01472b0fdd640000','Firefox','用户: admin[信息部]登录成功',1,'192.168.9.127','2014-07-12 22:52:45',1,'4028d881436d514601436d5215ac0043'),
	('4028bc064763323001476332f4130000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 20:29:49',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a790147633afa130000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 20:38:35',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476344ed290006','Firefox','删除信息数据成功！',4,'192.168.60.134','2014-07-23 20:49:27',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476344f8ae0007','Firefox','删除信息数据成功！',4,'192.168.60.134','2014-07-23 20:49:30',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a790147634529d00009','Firefox','修改关键字回复成功！',5,'192.168.60.134','2014-07-23 20:49:42',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a79014763453777000a','Firefox','删除信息数据成功！',4,'192.168.60.134','2014-07-23 20:49:46',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a79014763455d03000c','Firefox','扩展接口管理添加成功',3,'192.168.60.134','2014-07-23 20:49:55',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a79014763457026000d','Firefox','扩展接口管理更新成功',5,'192.168.60.134','2014-07-23 20:50:00',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a79014763458628000e','Firefox','扩展接口管理删除成功',4,'192.168.60.134','2014-07-23 20:50:06',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476345bd530010','Firefox','修改关文本模板成功！',5,'192.168.60.134','2014-07-23 20:50:20',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476345c7630011','Firefox','删除信息数据成功！',4,'192.168.60.134','2014-07-23 20:50:23',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476345fd250013','Firefox','添加1221的信息成功！',3,'192.168.60.134','2014-07-23 20:50:36',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476346349a0014','Firefox','更新1221的菜单信息信息成功！',5,'192.168.60.134','2014-07-23 20:50:51',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a7901476346ea220015','Firefox','删除1221菜单信息数据',4,'192.168.60.134','2014-07-23 20:51:37',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a790147634749f40017','Firefox','修改关文本模板成功！',5,'192.168.60.134','2014-07-23 20:52:02',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647633a790147634753770018','Firefox','删除信息数据成功！',4,'192.168.60.134','2014-07-23 20:52:04',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476349dc0147634a7b4d0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 20:55:31',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647634d250147634de3cd0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 20:59:14',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476353c00147635427a40000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:06:05',1,'4028d881436d514601436d5215ac0043'),
	('4028bc064763571d0147635779670000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:09:42',1,'4028d881436d514601436d5215ac0043'),
	('4028bc064763571d01476357d5430002','Firefox','修改图文模板成功！',5,'192.168.60.134','2014-07-23 21:10:06',1,'4028d881436d514601436d5215ac0043'),
	('4028bc064763571d01476358bc6c0005','Firefox','微信单图消息添加成功',3,'192.168.60.134','2014-07-23 21:11:05',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647635da50147635e2e9f0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:17:02',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647635da50147636036890001','Firefox','购物车 删除成功',4,'192.168.60.134','2014-07-23 21:19:15',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647635da5014763603f7a0002','Firefox','购物车 删除成功',4,'192.168.60.134','2014-07-23 21:19:17',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647635da50147636049f70003','Firefox','购物车 删除成功',4,'192.168.60.134','2014-07-23 21:19:20',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636343fc0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:22:35',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636429280001','Firefox','权限: 购物车管理被更新成功',5,'192.168.60.134','2014-07-23 21:23:34',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636443760002','Firefox','用户admin已退出',2,'192.168.60.134','2014-07-23 21:23:41',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636462930003','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:23:49',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636578720004','Firefox','权限: 微网站配置被更新成功',5,'192.168.60.134','2014-07-23 21:25:00',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476365b5240005','Firefox','权限: 微网站模板被更新成功',5,'192.168.60.134','2014-07-23 21:25:15',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476365da9e0006','Firefox','权限: 微网站信息被更新成功',5,'192.168.60.134','2014-07-23 21:25:25',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476365faae0007','Firefox','用户admin已退出',2,'192.168.60.134','2014-07-23 21:25:33',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476366257b0008','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:25:44',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476366db320009','Firefox','权限: 微网站信息被更新成功',5,'192.168.60.134','2014-07-23 21:26:30',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd014763674561000a','Firefox','权限: 文章管理被更新成功',5,'192.168.60.134','2014-07-23 21:26:58',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476367a228000b','Firefox','权限: 微网站模板被更新成功',5,'192.168.60.134','2014-07-23 21:27:21',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd014763680c3a000c','Firefox','用户admin已退出',2,'192.168.60.134','2014-07-23 21:27:49',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd014763683635000d','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:27:59',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd014763697ee5000e','Firefox','用户admin已退出',2,'192.168.60.134','2014-07-23 21:29:23',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476369a4a6000f','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:29:33',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636b0e450010','Firefox','微站点模板删除成功',4,'192.168.60.134','2014-07-23 21:31:06',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636b30310011','Firefox','微站点信息更新成功',5,'192.168.60.134','2014-07-23 21:31:14',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636ceb710012','Firefox','权限: 商品分类被更新成功',5,'192.168.60.134','2014-07-23 21:33:08',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636d2e180013','Firefox','权限: 商品信息被更新成功',5,'192.168.60.134','2014-07-23 21:33:25',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147636f66420014','Firefox','权限: 购物车管理被更新成功',5,'192.168.60.134','2014-07-23 21:35:50',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476372abdc0015','Firefox','用户admin已退出',2,'192.168.60.134','2014-07-23 21:39:25',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd01476372d50c0016','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:39:35',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147637352850017','Firefox','权限: 网站信息被更新成功',5,'192.168.60.134','2014-07-23 21:40:07',1,'4028d881436d514601436d5215ac0043'),
	('4028bc06476362cd0147637379410018','Firefox','权限: 网站模板被更新成功',5,'192.168.60.134','2014-07-23 21:40:17',1,'4028d881436d514601436d5215ac0043'),
	('4028bc0647637a8d014763808f2a0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.60.134','2014-07-23 21:54:35',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52187300c5','Chrome','用户: admin登录成功',1,'169.254.200.136','2013-04-24 16:22:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52187c00c6','Chrome','用户: admin登录成功',1,'10.10.10.1','2013-04-24 17:12:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52187d00c7','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-10 15:37:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52187f00c8','Chrome','用户admin已退出',2,'169.254.218.201','2013-03-10 15:38:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188000c9','MSIE 9.0','用户: admin登录成功',1,'169.254.218.201','2013-03-10 15:38:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188200ca','MSIE 9.0','JeecgDemo例子: 12被删除 成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188400cb','MSIE 9.0','JeecgDemo例子: 12被删除 成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188600cc','Chrome','JeecgDemo例子: 12被删除 成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188700cd','MSIE 9.0','权限: 单表模型被更新成功',5,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188800ce','Chrome','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188900cf','MSIE 9.0','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188b00d0','Chrome','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188c00d1','Firefox','删除成功',4,'169.254.218.201','2013-03-10 15:39:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188e00d2','Chrome','添加成功',3,'169.254.218.201','2013-03-10 15:40:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52188f00d3','Chrome','更新成功',5,'169.254.218.201','2013-03-10 15:40:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189100d4','Chrome','JeecgDemo例子: 12被添加成功',3,'169.254.218.201','2013-03-10 15:40:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189400d5','Chrome','部门: 信息部被更新成功',5,'169.254.218.201','2013-03-10 15:41:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189600d6','Chrome','部门: 设计部被更新成功',5,'169.254.218.201','2013-03-10 15:41:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189800d7','Chrome','类型: 信息部流程被更新成功',5,'169.254.218.201','2013-03-10 15:46:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189a00d8','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-10 15:48:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189c00d9','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-21 23:23:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189d00da','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-21 23:26:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52189f00db','Chrome','权限: 一对多实例被添加成功',3,'169.254.218.201','2013-03-21 23:28:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218a100dc','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 08:25:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218a300dd','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 09:05:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218a500de','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 09:09:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218a600df','MSIE 8.0','用户: admin登录成功',1,'169.254.218.201','2013-03-22 09:28:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218a700e0','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 10:32:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218a900e1','Chrome','物品: 笔记本添加成功',3,'169.254.218.201','2013-03-22 10:35:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218aa00e2','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 10:41:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ab00e3','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-22 16:11:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ac00e4','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 21:49:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ae00e5','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 23:17:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218af00e6','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-22 23:27:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218b100e7','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-23 00:16:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218b200e8','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-23 00:22:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218b300e9','Firefox','用户: admin登录成功',1,'169.254.218.201','2013-03-23 00:31:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218b400ea','Chrome','用户: admin登录成功',1,'169.254.218.201','2013-03-23 14:23:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218b600eb','Chrome','流程参数: 主任审批被添加成功',3,'169.254.218.201','2013-03-23 15:05:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218b800ec','Firefox','业务参数: 入职申请被添加成功',3,'169.254.218.201','2013-03-23 15:05:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218bb00ed','Chrome','权限: 入职申请被添加成功',3,'169.254.218.201','2013-03-23 15:12:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218bc00ee','Firefox','权限: 入职办理被添加成功',3,'169.254.218.201','2013-03-23 15:13:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218be00ef','Chrome','用户: admin登录成功',1,'10.10.10.1','2013-05-06 15:27:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218c000f0','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 15:16:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218c200f1','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:02:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218c400f2','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:07:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218c600f3','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:09:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218c800f4','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:11:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ca00f5','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:13:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218cc00f6','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:16:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218cd00f7','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:19:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ce00f8','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:27:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d100f9','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:42:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d200fa','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:44:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d300fb','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:49:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d500fc','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:50:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d600fd','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:53:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d700fe','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 16:56:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218d900ff','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 16:59:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218da0100','MSIE 8.0','创建成功',3,'192.168.197.1','2013-07-07 17:22:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218dc0101','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 17:26:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218de0102','MSIE 8.0','删除成功',4,'192.168.197.1','2013-07-07 17:31:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218df0103','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 17:35:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e00104','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 17:46:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e20105','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 17:55:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e30106','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 18:08:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e40107','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 18:13:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e60108','MSIE 8.0','用户: admin登录成功',1,'192.168.197.1','2013-07-07 18:15:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e70109','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:28:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218e9010a','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:29:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ed010b','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:30:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218f0010c','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:31:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218f3010d','MSIE 8.0','修改成功',5,'192.168.197.1','2013-07-07 18:31:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218f5010e','MSIE 9.0','物品: 555添加成功',3,'192.168.1.103','2013-03-20 23:03:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218f7010f','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-20 23:19:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218f80110','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:09:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218fa0111','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:27:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218fb0112','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:44:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218fc0113','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 20:54:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218fe0114','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:01:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5218ff0115','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:13:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219010116','MSIE 9.0','物品: 55添加成功',3,'192.168.1.103','2013-03-21 21:15:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219040117','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:22:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219060118','MSIE 9.0','物品: 55添加成功',3,'192.168.1.103','2013-03-21 21:23:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219080119','MSIE 9.0','物品: 33添加成功',3,'192.168.1.103','2013-03-21 21:23:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d521909011a','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:25:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52190b011b','MSIE 9.0','用户: admin登录成功',1,'192.168.1.103','2013-03-21 21:27:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52190c011c','MSIE 9.0','权限: 采购审批被添加成功',3,'192.168.1.103','2013-03-21 21:29:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52190d011d','MSIE 9.0','权限: 采购审批被更新成功',5,'192.168.1.103','2013-03-21 21:29:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52190f011e','MSIE 9.0','权限: 采购审批被更新成功',5,'192.168.1.103','2013-03-21 21:30:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d521910011f','MSIE 9.0','用户: admin更新成功',5,'192.168.1.103','2013-03-21 21:31:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219130120','MSIE 9.0','流程参数: 采购审批员审批被添加成功',3,'192.168.1.103','2013-03-21 21:36:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219150121','MSIE 9.0','流程参数: 采购审批员审批被更新成功',5,'192.168.1.103','2013-03-21 21:36:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219170122','MSIE 9.0','流程参数: 采购审批员审批被更新成功',5,'192.168.1.103','2013-03-21 21:37:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219190123','MSIE 9.0','流程类别: 采购审批员审批被删除 成功',4,'192.168.1.103','2013-03-21 21:38:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52191c0124','MSIE 9.0','物品: 44添加成功',3,'192.168.1.103','2013-03-21 21:43:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52191e0125','MSIE 9.0','用户: admin登录成功',1,'192.168.1.105','2013-02-07 10:10:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219200126','MSIE 9.0','权限: 上传下载被添加成功',3,'192.168.1.105','2013-02-07 11:07:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219210127','MSIE 9.0','权限: 插件演示被删除成功',4,'192.168.1.105','2013-02-07 11:07:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5219230128','MSIE 9.0','用户: admin登录成功',1,'192.168.1.105','2013-02-07 11:07:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d522e440180','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-07 23:28:58',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d52c3440182','Chrome','权限: 基础设置被添加成功',3,'192.168.88.1','2014-01-07 23:29:37',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d539c950184','Chrome','权限: 菜单管理被添加成功',3,'192.168.88.1','2014-01-07 23:30:32',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d53cfd20186','Chrome','权限: 关键字应答被添加成功',3,'192.168.88.1','2014-01-07 23:30:45',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d53ff2f0188','Chrome','权限: 发送消息被添加成功',3,'192.168.88.1','2014-01-07 23:30:57',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d544978018a','Chrome','权限: 微活动1被添加成功',3,'192.168.88.1','2014-01-07 23:31:16',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5485f3018c','Chrome','权限: 会员管理被添加成功',3,'192.168.88.1','2014-01-07 23:31:32',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d54b207018e','Chrome','权限: 统计分析被添加成功',3,'192.168.88.1','2014-01-07 23:31:43',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d54e1080190','Chrome','权限: 账号管理被添加成功',3,'192.168.88.1','2014-01-07 23:31:55',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5619b80192','Chrome','权限: 关注欢迎语被添加成功',3,'192.168.88.1','2014-01-07 23:33:15',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d56559f0194','Chrome','权限: 未识别回复语被添加成功',3,'192.168.88.1','2014-01-07 23:33:31',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d569e610195','Chrome','权限: 关注欢迎语被更新成功',5,'192.168.88.1','2014-01-07 23:33:49',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d56c7540196','Chrome','权限: 未识别回复语被更新成功',5,'192.168.88.1','2014-01-07 23:34:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d571b010198','Chrome','权限: 内容库管理被添加成功',3,'192.168.88.1','2014-01-07 23:34:21',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d574c5f019a','Chrome','权限: 取消关注回复语被添加成功',3,'192.168.88.1','2014-01-07 23:34:34',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d585d05019c','Chrome','权限: 自动应答菜单被添加成功',3,'192.168.88.1','2014-01-07 23:35:44',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d588500019e','Chrome','权限: 自定义菜单被添加成功',3,'192.168.88.1','2014-01-07 23:35:54',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d58cfd801a0','Chrome','权限: 关键字应答被添加成功',3,'192.168.88.1','2014-01-07 23:36:13',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d58ff9e01a2','Chrome','权限: 群发消息被添加成功',3,'192.168.88.1','2014-01-07 23:36:25',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d592c4301a4','Chrome','权限: 单发消息被添加成功',3,'192.168.88.1','2014-01-07 23:36:37',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d59987501a6','Chrome','权限: 微大转盘被添加成功',3,'192.168.88.1','2014-01-07 23:37:04',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d59d73801a8','Chrome','权限: 微信刮刮乐被添加成功',3,'192.168.88.1','2014-01-07 23:37:20',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5a192c01aa','Chrome','权限: 数据统计被添加成功',3,'192.168.88.1','2014-01-07 23:37:37',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5a5c8501ac','Chrome','权限: 用户概况被添加成功',3,'192.168.88.1','2014-01-07 23:37:55',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5a872001ae','Chrome','权限: 用户分组被添加成功',3,'192.168.88.1','2014-01-07 23:38:05',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5ac02801b0','Chrome','权限: 会话记录被添加成功',3,'192.168.88.1','2014-01-07 23:38:20',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5af99501b2','Chrome','权限: 接口配置被添加成功',3,'192.168.88.1','2014-01-07 23:38:35',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5b3bb401b4','Chrome','权限: 企业资料被添加成功',3,'192.168.88.1','2014-01-07 23:38:52',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5ce5f601ce','Chrome','用户admin已退出',2,'192.168.88.1','2014-01-07 23:40:41',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5d276a01cf','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-07 23:40:58',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5dfdb701d0','Chrome','权限: 微活动被更新成功',5,'192.168.88.1','2014-01-07 23:41:52',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5e419901d1','Chrome','权限: 系统管理被更新成功',5,'192.168.88.1','2014-01-07 23:42:10',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5e5c3c01d2','Chrome','用户admin已退出',2,'192.168.88.1','2014-01-07 23:42:17',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5e6dfa01d3','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-07 23:42:21',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d61ad3701d4','Chrome','权限: 自动应答菜单被更新成功',5,'192.168.88.1','2014-01-07 23:45:54',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d61c65901d5','Chrome','权限: 自定义菜单被更新成功',5,'192.168.88.1','2014-01-07 23:46:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7bbd01436d7c3ba70000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-08 00:14:54',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7bbd01436d7cad630001','Chrome','权限: 微信菜单被删除成功',4,'192.168.88.1','2014-01-08 00:15:24',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7bbd01436d7d344a0003','Chrome','权限: 素材管理被添加成功',3,'192.168.88.1','2014-01-08 00:15:58',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7bbd01436d7d81fe0004','Chrome','权限: 素材管理被更新成功',5,'192.168.88.1','2014-01-08 00:16:18',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7bbd01436d7dc4910006','Chrome','用户admin已退出',2,'192.168.88.1','2014-01-08 00:16:35',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7bbd01436d7dd6840007','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-08 00:16:40',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7f5a01436d7f9fa60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-08 00:18:37',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7f5a01436d8003090001','Chrome','权限: 内容库管理被删除成功',4,'192.168.88.1','2014-01-08 00:19:02',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7f5a01436d80ef0c0002','Chrome','权限: 素材管理被更新成功',5,'192.168.88.1','2014-01-08 00:20:02',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7f5a01436d81011e0003','Chrome','用户admin已退出',2,'192.168.88.1','2014-01-08 00:20:07',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d7f5a01436d8112660004','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-08 00:20:12',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d823c01436d827dc60000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-08 00:21:45',1,'4028d881436d514601436d5215ac0043'),
	('4028d881436d823c01436d8481b30002','Chrome','微信素材添加成功',3,'192.168.88.1','2014-01-08 00:23:57',1,'4028d881436d514601436d5215ac0043'),
	('4028d881439b285601439b296cb30000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-16 21:06:59',1,'4028d881436d514601436d5215ac0043'),
	('4028d881439b285601439b2d8c830001','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-16 21:11:30',1,'4028d881436d514601436d5215ac0043'),
	('4028d881439b389601439b39332c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-16 21:24:13',1,'4028d881436d514601436d5215ac0043'),
	('4028d881439b3a1601439b3a5deb0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-16 21:25:30',1,'4028d881436d514601436d5215ac0043'),
	('4028d881439b3a1601439b3b9fe50001','Chrome','微信单图消息删除成功',4,'192.168.88.1','2014-01-16 21:26:52',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a83cad0143a83d55b00000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-19 10:03:48',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a83cad0143a83d7ba10001','Chrome','微信单图消息删除成功',4,'192.168.88.1','2014-01-19 10:03:58',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a83cad0143a84123050005','Chrome','用户admin已退出',2,'192.168.88.1','2014-01-19 10:07:57',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a83cad0143a84135f40006','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-19 10:08:02',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a83cad0143a842884b0009','Chrome','用户admin已退出',2,'192.168.88.1','2014-01-19 10:09:29',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a83cad0143a842995f000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-19 10:09:33',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143a904ff0143a905b6090000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-19 13:42:40',1,'4028d881436d514601436d5215ac0043'),
	('4028d88143bc9a910143bc9af4130000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-01-23 08:58:28',1,'4028d881436d514601436d5215ac0043'),
	('4028d881448cf61c01448cf6e6ed0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-03-04 19:59:55',1,'4028d881436d514601436d5215ac0043'),
	('4028d88146dce1940146dce1e75c0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-06-27 18:32:10',1,'4028d881436d514601436d5215ac0043'),
	('4028d88146dce1940146dcebf6710001','Chrome','用户admin已退出',2,'192.168.88.1','2014-06-27 18:43:10',1,'4028d881436d514601436d5215ac0043'),
	('4028d88146dd21330146dd21856a0000','Chrome','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-06-27 19:41:40',1,'4028d881436d514601436d5215ac0043'),
	('4028d8814710f69f014710f77c450000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-07 21:16:00',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472b634601472b63b9c50000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 00:24:21',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472b679501472b67fd580000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 00:29:01',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472b8aaf01472b8bd7280000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 01:08:10',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f0d8101472f13ea1b0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 17:35:40',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f0d8101472f14a4650001','Firefox','删除信息数据成功！',4,'192.168.88.1','2014-07-13 17:36:27',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f0d8101472f154b520004','Firefox','微信单图消息添加成功',3,'192.168.88.1','2014-07-13 17:37:10',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f0d8101472f200b4f0007','Firefox','微信单图消息添加成功',3,'192.168.88.1','2014-07-13 17:48:54',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f0d8101472f219e1b000a','Firefox','微信单图消息添加成功',3,'192.168.88.1','2014-07-13 17:50:38',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f2eb101472f2f492b0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 18:05:33',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f356e01472f35e58f0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 18:12:47',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f356e01472f36d1aa0004','Firefox','微信单图消息添加成功',3,'192.168.88.1','2014-07-13 18:13:47',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f356e01472f3a1a3b0005','Firefox','微信单图消息删除成功',4,'192.168.88.1','2014-07-13 18:17:22',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f356e01472f4289960008','Firefox','微信单图消息更新成功',5,'192.168.88.1','2014-07-13 18:26:35',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f356e01472f431322000a','Firefox','微信单图消息更新成功',5,'192.168.88.1','2014-07-13 18:27:10',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f451c01472f459c790000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 18:29:56',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f451c01472f495eee0002','Firefox','微信单图消息更新成功',5,'192.168.88.1','2014-07-13 18:34:03',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f674b01472f67ba5e0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 19:07:12',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f6b2001472f6b818f0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 19:11:20',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f712001472f71b7840000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 19:18:07',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f712001472f71f60e0001','Firefox','微信单图消息删除成功',4,'192.168.88.1','2014-07-13 19:18:23',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f712001472f7201550002','Firefox','微信单图消息删除成功',4,'192.168.88.1','2014-07-13 19:18:26',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f84d101472fb41e900000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 20:30:39',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f84d101472fb4aea30001','Firefox','商城会员删除成功',4,'192.168.88.1','2014-07-13 20:31:16',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f84d101472fb4bf5d0002','Firefox','商城会员删除成功',4,'192.168.88.1','2014-07-13 20:31:20',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f84d101472fb549b70003','Firefox','更新捷微jeeWX的菜单信息信息成功！',5,'192.168.88.1','2014-07-13 20:31:55',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472f84d101472fb57ad70004','Firefox','更新企业快速开发平台的菜单信息信息成功！',5,'192.168.88.1','2014-07-13 20:32:08',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472fbd4401472fbdb5e60000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 20:41:07',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472fbd4401472fbde7670002','Firefox','添加joa123的信息成功！',3,'192.168.88.1','2014-07-13 20:41:20',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472fbd4401472fbdfb560004','Firefox','添加333的信息成功！',3,'192.168.88.1','2014-07-13 20:41:25',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472fbd4401472fbe186a0005','Firefox','更新333的菜单信息信息成功！',5,'192.168.88.1','2014-07-13 20:41:33',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472fbd4401472fbe28430006','Firefox','删除joa123菜单信息数据',4,'192.168.88.1','2014-07-13 20:41:37',1,'4028d881436d514601436d5215ac0043'),
	('4028d881472fbd4401472fbe50fb0007','Firefox','同步菜单信息数据成功！',4,'192.168.88.1','2014-07-13 20:41:47',1,'4028d881436d514601436d5215ac0043'),
	('4028d88147301fa50147302271f20000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 22:31:09',1,'4028d881436d514601436d5215ac0043'),
	('4028d881473027c7014730283f0c0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-13 22:37:29',1,'4028d881436d514601436d5215ac0043'),
	('4028d8814734ee0d0147351707bd0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-14 21:36:47',1,'4028d881436d514601436d5215ac0043'),
	('4028d8814734ee0d014735670b820006','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-14 23:04:11',1,'4028d881436d514601436d5215ac0043'),
	('4028d8814734ee0d0147356b6b600011','Firefox','修改关键字回复成功！',5,'192.168.88.1','2014-07-14 23:08:58',1,'4028d881436d514601436d5215ac0043'),
	('4028d8814734ee0d0147357de8000013','Firefox','修改关键字回复成功！',5,'192.168.88.1','2014-07-14 23:29:09',1,'4028d881436d514601436d5215ac0043'),
	('4028d88147359f510147359fa7950000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-15 00:06:01',1,'4028d881436d514601436d5215ac0043'),
	('4028d88147359f51014735a020630002','Firefox','微信单图消息更新成功',5,'192.168.88.1','2014-07-15 00:06:32',1,'4028d881436d514601436d5215ac0043'),
	('4028d88147359f51014735a02cbf0003','Firefox','微信单图消息更新成功',5,'192.168.88.1','2014-07-15 00:06:35',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d70147448bcaab0000','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:38:37',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d701474494f70c0001','Firefox','用户admin已退出',2,'192.168.88.1','2014-07-17 21:48:39',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d7014744955dfb0002','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:49:05',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d701474495b5bf0003','Firefox','用户: ceshi密码重置成功',5,'192.168.88.1','2014-07-17 21:49:27',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d701474495c3940004','Firefox','用户admin已退出',2,'192.168.88.1','2014-07-17 21:49:31',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d701474495de470005','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:49:38',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d701474495f5b00006','Firefox','用户admin已退出',2,'192.168.88.1','2014-07-17 21:49:44',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d7014744966c3a0007','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:50:14',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d7014744969efe0008','Firefox','用户admin已退出',2,'192.168.88.1','2014-07-17 21:50:27',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d701474496cad00009','Firefox','用户: ceshi[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:50:38',1,'402881e44648134a014648174a45000c'),
	('4028d881474489d7014744971411000a','Firefox','用户ceshi已退出',2,'192.168.88.1','2014-07-17 21:50:57',1,'402881e44648134a014648174a45000c'),
	('4028d881474489d70147449733e2000b','Firefox','用户: admin[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:51:05',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d70147449868fc0023','Firefox','用户admin已退出',2,'192.168.88.1','2014-07-17 21:52:24',1,'4028d881436d514601436d5215ac0043'),
	('4028d881474489d7014744989cca0024','Firefox','用户: ceshi[信息部]登录成功',1,'192.168.88.1','2014-07-17 21:52:38',1,'402881e44648134a014648174a45000c'),
	('4028d881474489d701474499892d0026','Firefox','微信公众帐号信息添加成功',3,'192.168.88.1','2014-07-17 21:53:38',1,'402881e44648134a014648174a45000c'),
	('ff8080815084086901508408af710000','Chrome','用户: admin[信息部]登录成功',1,'127.0.0.1','2015-10-20 14:56:13',1,'4028d881436d514601436d5215ac0043'),
	('ff8080815084086901508408d4d20001','Chrome','用户admin已退出',2,'127.0.0.1','2015-10-20 14:56:22',1,'4028d881436d514601436d5215ac0043'),
	('ff808081508408690150840909220002','Chrome','用户: 265865[微商城商户]登录成功',1,'127.0.0.1','2015-10-20 14:56:36',1,'4028813a505a70d901505a721ae80001'),
	('ff808081508408690150840997540004','Chrome','更新成功',5,'127.0.0.1','2015-10-20 14:57:12',1,'4028813a505a70d901505a721ae80001'),
	('ff8080815084086901508409cce20006','Chrome','更新成功',5,'127.0.0.1','2015-10-20 14:57:26',1,'4028813a505a70d901505a721ae80001'),
	('ff808081508408690150840a28300008','Chrome','更新成功',5,'127.0.0.1','2015-10-20 14:57:49',1,'4028813a505a70d901505a721ae80001'),
	('ff8080815084086901508424b6090009','Chrome','用户265865已退出',2,'192.168.1.186','2015-10-20 15:26:49',1,'4028813a505a70d901505a721ae80001'),
	('ff8080815084086901508424cc21000a','Chrome','用户: admin[信息部]登录成功',1,'192.168.1.186','2015-10-20 15:26:55',1,'4028d881436d514601436d5215ac0043'),
	('ff808081508408690150842ebe81000c','Chrome','修改成功',5,'192.168.1.186','2015-10-20 15:37:47',1,'4028d881436d514601436d5215ac0043');

/*!40000 ALTER TABLE `t_s_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_operation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_operation`;

CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) DEFAULT NULL,
  `operationicon` varchar(100) DEFAULT NULL,
  `operationname` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_operation` WRITE;
/*!40000 ALTER TABLE `t_s_operation` DISABLE KEYS */;

INSERT INTO `t_s_operation` (`ID`, `operationcode`, `operationicon`, `operationname`, `status`, `functionid`, `iconid`)
VALUES
	('402881e44648134a0146482093940049','add',NULL,'新增',NULL,'4028d881436d514601436d52154d002d','4028d881436d514601436d5214650000'),
	('402881e44648134a0146482152c2004b','edit',NULL,'编辑',NULL,'4028d881436d514601436d52154d002d','4028d881436d514601436d5214650000'),
	('4028d881436d514601436d5216730069','add',NULL,'录入',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000'),
	('4028d881436d514601436d521678006a','edit',NULL,'编辑',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000'),
	('4028d881436d514601436d52167c006b','del',NULL,'删除',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000'),
	('4028d881436d514601436d52167f006c','szqm',NULL,'审核',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d5214650000');

/*!40000 ALTER TABLE `t_s_operation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_opintemplate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_opintemplate`;

CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table t_s_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_role`;

CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) DEFAULT NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_role` WRITE;
/*!40000 ALTER TABLE `t_s_role` DISABLE KEYS */;

INSERT INTO `t_s_role` (`ID`, `rolecode`, `rolename`)
VALUES
	('4028813a504bea7401504bf3c7e20001','storeAdmin','商户'),
	('402881e44648134a014648163a6d0001','ceshi','测试角色'),
	('4028d881436d514601436d52159c0041','admin','管理员'),
	('4028d881436d514601436d5215a00042','manager','普通用户');

/*!40000 ALTER TABLE `t_s_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_role_function
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_role_function`;

CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_role_function` WRITE;
/*!40000 ALTER TABLE `t_s_role_function` DISABLE KEYS */;

INSERT INTO `t_s_role_function` (`ID`, `operation`, `functionid`, `roleid`)
VALUES
	('297e7eb6469a4a8901469a55889e0008',NULL,'297e7eb6469a4a8901469a54eff60006','4028d881436d514601436d52159c0041'),
	('402880e6478c6d8201478c7210f40003',NULL,'402880e6478c6d8201478c71c5460001','4028d881436d514601436d52159c0041'),
	('402880ee512d4cd201512f3a0aeb000b',NULL,'402880ee512d4cd201512f39d5d00009','4028d881436d514601436d52159c0041'),
	('402880ef51c4dc6b0151c4e6c73b0001',NULL,'4028d881436d514601436d5884be019d','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73e0003',NULL,'4028813a506036ec0150603b3ceb0001','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73e0004',NULL,'4028813a504fd76f015050055f150009','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73e0005',NULL,'4028813a505b746701505b9a2c29000d','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73e0006',NULL,'4028d881436d514601436d5618400191','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73e0007',NULL,'4028d881436d514601436d592bef01a3','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f0008',NULL,'402881e545f5dd1a0145f5f32cf00005','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f0009',NULL,'402881e545f5f4780145f61198810004','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f000a',NULL,'4028d881436d514601436d56555e0193','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f000b',NULL,'402881e8460d7e5301460d81c7a60001','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f000d',NULL,'4028d881436d514601436d52c2fb0181','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f000f',NULL,'4028813a504fd76f015050047e110007','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f0010',NULL,'402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f0012',NULL,'4028d881436d514601436d53fee50187','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c73f0013',NULL,'4028d881436d514601436d539c530183','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c7400014',NULL,'402880ee512d4cd201512f39d5d00009','4028d881436d514601436d5215a00042'),
	('402880ef51c4dc6b0151c4e6c7400015',NULL,'4028d881436d514601436d58ff5e01a1','4028d881436d514601436d5215a00042'),
	('402880ef521c7dcd01521c8ca3160005',NULL,'402880ef521c7dcd01521c8c06030003','4028d881436d514601436d5215a00042'),
	('402880ef52297ea00152298ec1c60012',NULL,'402880ef52297ea00152298d474e000d','4028d881436d514601436d5215a00042'),
	('4028813a4fd47208014fd512970f0002',NULL,'4028d881436d514601436d52153b0029','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297130003',NULL,'4028d881436d514601436d52155a0030','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297130004',NULL,'4028d881436d514601436d5215730036','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297130005',NULL,'4028d881436d514601436d521587003c','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297130006',NULL,'4028d881436d514601436d54b1bf018d','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297130007',NULL,'4028d881436d514601436d521552002e','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140008',NULL,'4028d881436d514601436d521545002b','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140009',NULL,'4028d881436d514601436d5215340027','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129714000a',NULL,'4028d881436d514601436d521540002a','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129714000b',NULL,'4028d881436d514601436d521593003f','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129714000c',NULL,'4028d881436d514601436d521557002f','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129714000d',NULL,'4028d881436d514601436d52150d001b','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129714000e',NULL,'4028d881436d514601436d5215290024','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129714000f',NULL,'4028d881436d514601436d52158f003e','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140010',NULL,'4028d881436d514601436d521584003b','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140011',NULL,'4028d881436d514601436d5215990040','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140012',NULL,'4028d881436d514601436d521549002c','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140013',NULL,'4028d881436d514601436d52154d002d','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140014',NULL,'4028d881436d514601436d5215300026','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297140015',NULL,'4028d881436d514601436d52150b001a','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297150016',NULL,'4028d881436d514601436d58ff5e01a1','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297270017',NULL,'4028d881436d514601436d52157e0039','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297270018',NULL,'4028d881436d514601436d52156b0034','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297270019',NULL,'4028d881436d514601436d521581003a','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129727001a',NULL,'4028d881436d514601436d592bef01a3','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129727001b',NULL,'402880e6477d61da01477d71430f001a','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129727001c',NULL,'4028d881436d514601436d56555e0193','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129727001d',NULL,'4028d881436d514601436d5215260023','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129727001e',NULL,'4028d881436d514601436d52150f001c','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129727001f',NULL,'4028d881436d514601436d52158a003d','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280020',NULL,'4028d881436d514601436d5215380028','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280021',NULL,'4028d881436d514601436d52155f0031','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280022',NULL,'4028d881436d514601436d52156f0035','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280023',NULL,'4028d881436d514601436d52152c0025','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280024',NULL,'4028d881436d514601436d5215670033','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280025',NULL,'4028d881436d514601436d5215770037','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280026',NULL,'4028d881436d514601436d5215070018','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280027',NULL,'4028d881436d514601436d5215640032','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280028',NULL,'4028d881436d514601436d5b3b7001b3','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd51297280029',NULL,'4028d881436d514601436d5a18e601a9','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129728002a',NULL,'4028d881436d514601436d52157a0038','4028d881436d514601436d52159c0041'),
	('4028813a4fd47208014fd5129734002b',NULL,'4028d881436d514601436d53fee50187','4028d881436d514601436d52159c0041'),
	('4028813a4fed542b014fed691d4a0006',NULL,'4028813a4fed542b014fed680b380002','4028d881436d514601436d52159c0041'),
	('4028813a4feede52014feee2ccc30005',NULL,'4028813a4feede52014feee2a7620003','4028d881436d514601436d52159c0041'),
	('4028813a50029e570150029fda580003',NULL,'4028813a50029e570150029faebd0001','4028d881436d514601436d52159c0041'),
	('4028813a5050c0df015050cc64690001',NULL,'4028813a504fd76f015050055f150009','4028d881436d514601436d52159c0041'),
	('4028813a5050c0df015050cc646b0002',NULL,'4028813a504fd76f015050047e110007','4028d881436d514601436d52159c0041'),
	('4028813a505b0eb201505b20fad60010',NULL,'4028813a505b0eb201505b20499d000d','4028d881436d514601436d52159c0041'),
	('4028813a505b746701505b9a5285000f',NULL,'4028813a505b746701505b9a2c29000d','4028d881436d514601436d52159c0041'),
	('4028813a506036ec0150603ba1a90003',NULL,'4028813a506036ec0150603b3ceb0001','4028d881436d514601436d52159c0041'),
	('4028813a5063c70f0150640b9dea001e',NULL,'4028813a5063c70f015064096129001a','4028d881436d514601436d52159c0041'),
	('4028813a5063c70f0150640b9dec001f',NULL,'4028813a5063c70f015063ea8fd7000f','4028d881436d514601436d52159c0041'),
	('4028813a5063c70f0150640b9dec0020',NULL,'4028813a5063c70f0150640566b50016','4028d881436d514601436d52159c0041'),
	('4028813a5083519b015083536af90003',NULL,'4028813a5083519b015083533b3f0001','4028d881436d514601436d52159c0041'),
	('4028813a5083541d015083562b4a0003',NULL,'4028813a5063c70f0150640566b50016','4028813a504bea7401504bf3c7e20001'),
	('4028813a5083541d015083562b4c0004',NULL,'4028813a5083519b015083533b3f0001','4028813a504bea7401504bf3c7e20001'),
	('4028813a5083541d015083562b4c0005',NULL,'4028813a5063c70f015064096129001a','4028813a504bea7401504bf3c7e20001'),
	('4028813a5083541d015083562b4c0006',NULL,'4028813a5063c70f015063ea8fd7000f','4028813a504bea7401504bf3c7e20001'),
	('4028813a5132e503015132e646020003',NULL,'4028813a5132e503015132e60ef90001','4028813a504bea7401504bf3c7e20001'),
	('402881e446677b700146678c59d70005',NULL,'402881e446677b700146677d7b600001','4028d881436d514601436d52159c0041'),
	('402881e44695183a0146951f18f0000a',NULL,'402881e44695183a0146951b66050006','4028d881436d514601436d52159c0041'),
	('402881e44695183a0146951f18f3000b',NULL,'402881e44695183a0146951ed79e0008','4028d881436d514601436d52159c0041'),
	('402881e44695183a0146951f18f3000c',NULL,'402881e44695183a0146951af2b70004','4028d881436d514601436d52159c0041'),
	('402881e545f5dd1a0145f5f35a240008',NULL,'402881e545f5dd1a0145f5f32cf00005','4028d881436d514601436d52159c0041'),
	('402881e545f5dd1a0145f5f35a260009',NULL,'402881e545f5dd1a0145f5de9bb60001','4028d881436d514601436d52159c0041'),
	('402881e545f5f4780145f611e26e0006',NULL,'402881e545f5f4780145f61198810004','4028d881436d514601436d52159c0041'),
	('402881e8460d7e5301460d8310230003',NULL,'402881e8460d7e5301460d81c7a60001','4028d881436d514601436d52159c0041'),
	('402881fb4fde2bea014fde2fc7fb0003',NULL,'402881fb4fde2163014fde27b7e20001','4028d881436d514601436d52159c0041'),
	('402881fb4fde2bea014fde2fc7fb0004',NULL,'402881fb4fde2bea014fde2f64770001','4028d881436d514601436d52159c0041'),
	('402889f6474704840147470805a40005',NULL,'402889f64747048401474707902e0003','4028d881436d514601436d52159c0041'),
	('402889f6474704840147470805a60006',NULL,'402889f64747048401474706d2a50001','4028d881436d514601436d52159c0041'),
	('402889ff4728a293014728b3fab70021',NULL,'4028d881436d514601436d52151f0020','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d521699006f',NULL,'4028d881436d514601436d52150a0019','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5216bb0077',NULL,'4028d881436d514601436d521513001d','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5216c30079',NULL,'4028d881436d514601436d521516001e','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5216ca007b',NULL,'4028d881436d514601436d52151a001f','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5216d7007f',NULL,'4028d881436d514601436d5215220021','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6a901b5',NULL,'4028d881436d514601436d54e0ba018f','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01b7',NULL,'4028d881436d514601436d5618400191','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01bc',NULL,'4028d881436d514601436d5af95501b1','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01bd',NULL,'4028d881436d514601436d52c2fb0181','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01bf',NULL,'4028d881436d514601436d539c530183','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01c0',NULL,'4028d881436d514601436d5884be019d','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01c2',NULL,'4028d881436d514601436d59984601a5','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01c3',NULL,'4028d881436d514601436d59d6d901a7','4028d881436d514601436d52159c0041'),
	('4028d881436d514601436d5cd6ac01c6',NULL,'4028d881436d514601436d5449330189','4028d881436d514601436d52159c0041'),
	('4028d881474489d7014744985904000c',NULL,'4028d881436d514601436d59984601a5','402881e44648134a014648163a6d0001'),
	('4028d881474489d7014744985904000d',NULL,'4028d881436d514601436d5884be019d','402881e44648134a014648163a6d0001'),
	('4028d881474489d7014744985904000e',NULL,'4028d881436d514601436d59d6d901a7','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040010',NULL,'4028d881436d514601436d54e0ba018f','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040011',NULL,'402881e446677b700146677d7b600001','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040012',NULL,'297e7eb6469a4a8901469a54eff60006','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040013',NULL,'4028d881436d514601436d5618400191','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040014',NULL,'402881e545f5dd1a0145f5f32cf00005','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040015',NULL,'402881e545f5f4780145f61198810004','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040016',NULL,'4028d881436d514601436d5449330189','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040017',NULL,'402881e44695183a0146951ed79e0008','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040018',NULL,'402881e8460d7e5301460d81c7a60001','402881e44648134a014648163a6d0001'),
	('4028d881474489d7014744985904001b',NULL,'4028d881436d514601436d52c2fb0181','402881e44648134a014648163a6d0001'),
	('4028d881474489d7014744985904001c',NULL,'4028d881436d514601436d5af95501b1','402881e44648134a014648163a6d0001'),
	('4028d881474489d7014744985904001d',NULL,'402881e545f5dd1a0145f5de9bb60001','402881e44648134a014648163a6d0001'),
	('4028d881474489d7014744985904001f',NULL,'402881e44695183a0146951af2b70004','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859040020',NULL,'4028d881436d514601436d539c530183','402881e44648134a014648163a6d0001'),
	('4028d881474489d70147449859140021',NULL,'402881e44695183a0146951b66050006','402881e44648134a014648163a6d0001');

/*!40000 ALTER TABLE `t_s_role_function` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_role_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_role_user`;

CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_role_user` WRITE;
/*!40000 ALTER TABLE `t_s_role_user` DISABLE KEYS */;

INSERT INTO `t_s_role_user` (`ID`, `roleid`, `userid`)
VALUES
	('402880ef51e3e4080151e3e9eff00004','4028813a504bea7401504bf3c7e20001','402880ef51e3e4080151e3e63f880002'),
	('402880ef5229f49a01522a3214250038','4028813a504bea7401504bf3c7e20001','402880ef51bd66070151bd7a0b1d0003'),
	('402880ef5229f49a01522a323e20003a','4028813a504bea7401504bf3c7e20001','402880ef5221934f015221b36001000c'),
	('402880ef5229f49a01522a325495003c','4028813a504bea7401504bf3c7e20001','402880ef5229f49a01522a09cc71000b'),
	('402880ef5229f49a01522a326a29003e','4028813a504bea7401504bf3c7e20001','402880ef5229b448015229d03fdd000d'),
	('402880ef5229f49a01522a32a3430040','4028813a504bea7401504bf3c7e20001','4028813a505a70d901505a721ae80001'),
	('402880ef5229f49a01522a32cf650042','4028813a504bea7401504bf3c7e20001','4028813a508d983201508da23ba80005'),
	('402880ef5229f49a01522a32f6260044','4028813a504bea7401504bf3c7e20001','4028813a508da3e301508da935360005'),
	('402880ef5229f49a01522a33205d0046','4028813a504bea7401504bf3c7e20001','4028813a508da3e301508da9feb0000a'),
	('4028813a505109d7015051179d3c0002','4028813a504bea7401504bf3c7e20001','4028813a505109d7015051179d170001'),
	('4028813a5055d3e9015055d48af80002','4028813a504bea7401504bf3c7e20001','4028813a5055d3e9015055d48aec0001'),
	('4028813a505a6d5801505a6e81080002','4028813a504bea7401504bf3c7e20001','4028813a505a6d5801505a6e80fa0001'),
	('4028d881436d514601436d52179f00bf','4028d881436d514601436d5215a00042','4028d881436d514601436d5215ac0043'),
	('4028d881436d514601436d5217aa00c2','4028d881436d514601436d52159c0041','4028d881436d514601436d5215b80045'),
	('4028d881436d514601436d5217ad00c3','4028d881436d514601436d52159c0041','4028d881436d514601436d5215bc0046');

/*!40000 ALTER TABLE `t_s_role_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_student`;

CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_student` WRITE;
/*!40000 ALTER TABLE `t_s_student` DISABLE KEYS */;

INSERT INTO `t_s_student` (`ID`, `classname`, `name`, `sex`)
VALUES
	('4028d881436d514601436d521ae80165','1班','张三','f'),
	('4028d881436d514601436d521aea0166','1班','李四','f'),
	('4028d881436d514601436d521aeb0167','1班','王五','m'),
	('4028d881436d514601436d521aec0168','1班','赵六','f'),
	('4028d881436d514601436d521aec0169','2班','张三','f'),
	('4028d881436d514601436d521aee016a','2班','李四','f'),
	('4028d881436d514601436d521af0016b','2班','王五','m'),
	('4028d881436d514601436d521af1016c','2班','赵六','f'),
	('4028d881436d514601436d521af3016d','3班','张三','f'),
	('4028d881436d514601436d521af4016e','3班','李四','f'),
	('4028d881436d514601436d521af7016f','3班','王五','m'),
	('4028d881436d514601436d521afa0170','3班','李四','f'),
	('4028d881436d514601436d521afe0171','3班','王五','m'),
	('4028d881436d514601436d521aff0172','3班','赵六','f'),
	('4028d881436d514601436d521b000173','4班','张三','f'),
	('4028d881436d514601436d521b010174','4班','李四','f'),
	('4028d881436d514601436d521b030175','4班','王五','m'),
	('4028d881436d514601436d521b040176','4班','赵六','f'),
	('4028d881436d514601436d521b040177','5班','张三','m'),
	('4028d881436d514601436d521b050178','5班','李四','f'),
	('4028d881436d514601436d521b060179','5班','王五','m'),
	('4028d881436d514601436d521b07017a','5班','赵六','m'),
	('4028d881436d514601436d521b08017b','5班','赵六','m'),
	('4028d881436d514601436d521b09017c','5班','李四','f'),
	('4028d881436d514601436d521b0a017d','5班','王五','m'),
	('4028d881436d514601436d521b0b017e','5班','赵六','m'),
	('4028d881436d514601436d521b0c017f','5班','赵六','m');

/*!40000 ALTER TABLE `t_s_student` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_territory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_territory`;

CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) DEFAULT NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_territory` WRITE;
/*!40000 ALTER TABLE `t_s_territory` DISABLE KEYS */;

INSERT INTO `t_s_territory` (`ID`, `territorycode`, `territorylevel`, `territoryname`, `territory_pinyin`, `territorysort`, `x_wgs84`, `y_wgs84`, `territoryparentid`)
VALUES
	('1','100',1,'全国','qg','0',106.258754,38.471318,'0'),
	('10','00000016',2,'河南省','HNS','0',113.687228,34.76819,'1'),
	('100','371300',3,'临沂市','LYS','0',118.356448,35.104672,'18'),
	('1000','370903',4,'岱岳区','DYQ','0',117.041582,36.18799,'96'),
	('1001','370921',4,'宁阳县','NYX','0',116.805797,35.758787,'96'),
	('1002','370923',4,'东平县','DPX','0',116.470304,35.937102,'96'),
	('1003','370982',4,'新泰市','XTS','0',117.767953,35.909032,'96'),
	('1004','370983',4,'肥城市','FCS','0',116.768358,36.182571,'96'),
	('1005','371002',4,'环翠区','HCQ','0',122.123444,37.501991,'97'),
	('1006','371081',4,'文登市','WDS','0',122.058128,37.1939129,'97'),
	('1007','371082',4,'荣成市','RCS','0',122.486676,37.165249,'97'),
	('1008','371083',4,'乳山市','RSS','0',121.539764,36.919816,'97'),
	('1009','371102',4,'东港区','DGQ','0',119.462228,35.425475,'98'),
	('101','371400',3,'德州市','DZS','0',116.357465,37.434093,'18'),
	('1010','371103',4,'岚山区','LSQ','0',119.318813,35.121816,'98'),
	('1011','371121',4,'五莲县','WLX','0',119.208744,35.750095,'98'),
	('1012','371122',4,'莒县','JX','0',118.837131,35.579868,'98'),
	('1013','371202',4,'莱城区','LCQ','0',117.659864,36.203208,'99'),
	('1014','371203',4,'钢城区','GCQ','0',117.811355,36.058572,'99'),
	('1015','371302',4,'兰山区','LSQ','0',118.347707,35.051729,'100'),
	('1016','371311',4,'罗庄区','LZQ','0',118.284786,34.996741,'100'),
	('1017','371312',4,'河东区','HDQ','0',118.402893,35.089917,'100'),
	('1018','371321',4,'沂南县','YNX','0',118.465213,35.549976,'100'),
	('1019','371322',4,'郯城县','TCX','0',118.367263,34.613557,'100'),
	('102','371500',3,'聊城市','LCS','0',115.985371,36.4567039,'18'),
	('1020','371323',4,'沂水县','YSX','0',118.627918,35.79045,'100'),
	('1021','371324',4,'苍山县','CSX','0',118.07065,34.857149,'100'),
	('1022','371325',4,'费县','FX','0',117.977868,35.26634,'100'),
	('1023','371326',4,'平邑县','PYX','0',117.640352,35.5059429,'100'),
	('1024','371327',4,'莒南县','JNX','0',118.835163,35.174846,'100'),
	('1025','371328',4,'蒙阴县','MYX','0',117.945085,35.710032,'100'),
	('1026','371329',4,'临沭县','LSX','0',118.650782,34.919852,'100'),
	('1027','371402',4,'德城区','DCQ','0',116.299434,37.451272,'101'),
	('1028','371421',4,'陵县','LX','0',116.576176,37.33579,'101'),
	('1029','371422',4,'宁津县','NJX','0',116.800324,37.652329,'101'),
	('103','371600',3,'滨州市','BZS','0',117.970703,37.38199,'18'),
	('1030','371423',4,'庆云县','QYX','0',117.385123,37.77539,'101'),
	('1031','371424',4,'临邑县','LYX','0',116.86665,37.189864,'101'),
	('1032','371425',4,'齐河县','QHX','0',116.758917,36.795011,'101'),
	('1033','371426',4,'平原县','PYX','0',116.434187,37.165419,'101'),
	('1034','371427',4,'夏津县','XJX','0',116.001726,36.948371,'101'),
	('1035','371428',4,'武城县','WCX','0',116.069302,37.213311,'101'),
	('1036','371481',4,'乐陵市','LLS','0',117.231935,37.729907,'101'),
	('1037','371482',4,'禹城市','YCS','0',116.638387,36.934259,'101'),
	('1038','371502',4,'东昌府区','DCFQ','0',115.988484,36.434697,'102'),
	('1039','371521',4,'阳谷县','YGX','0',115.79182,36.114392,'102'),
	('104','371700',3,'菏泽市','HZS','0',115.480656,35.23375,'18'),
	('1040','371522',4,'莘县','SX','0',115.671191,36.233599,'102'),
	('1041','371523',4,'茌平县','CPX','0',116.255282,36.5807639,'102'),
	('1042','371524',4,'东阿县','DAX','0',116.24758,36.334917,'102'),
	('1043','371525',4,'冠县','GX','0',115.44274,36.484009,'102'),
	('1044','371526',4,'高唐县','GTX','0',116.231478,36.866062,'102'),
	('1045','371581',4,'临清市','LQS','0',115.704881,36.838277,'102'),
	('1046','371602',4,'滨城区','BCQ','0',118.019146,37.43206,'103'),
	('1047','371621',4,'惠民县','HMX','0',117.510451,37.489769,'103'),
	('1048','371622',4,'阳信县','YXX','0',117.578262,37.641106,'103'),
	('1049','371623',4,'无棣县','WDX','0',117.625696,37.770261,'103'),
	('1050','371624',4,'沾化县','ZHX','0',118.132199,37.698281,'103'),
	('1051','371625',4,'博兴县','BXX','0',118.131815,37.150226,'103'),
	('1052','371626',4,'邹平县','ZPX','0',117.743109,36.862989,'103'),
	('1053','371702',4,'牡丹区','MDQ','0',115.417827,35.252512,'104'),
	('1054','371721',4,'曹县','CX','0',115.542328,34.825508,'104'),
	('1055','371722',4,'单县','DX','0',116.107428,34.778808,'104'),
	('1056','371723',4,'成武县','CWX','0',115.889765,34.952459,'104'),
	('1057','371724',4,'巨野县','JYX','0',116.094674,35.396261,'104'),
	('1058','371725',4,'郓城县','YCX','0',115.943613,35.599758,'104'),
	('1059','371726',4,'鄄城县','JCX','0',115.510193,35.563408,'104'),
	('1060','371727',4,'定陶县','DTX','0',115.573094,35.071,'104'),
	('1061','371728',4,'东明县','DMX','0',115.089905,35.289368,'104'),
	('11','00000008',2,'黑龙江省','HLJS','0',126.662507,45.7421699,'1'),
	('12','20000000',2,'上海市','SHS','0',121.473704,31.230393,'1'),
	('13','00000010',2,'江苏省','JSS','0',118.763232,32.061707,'1'),
	('14','00000011',2,'浙江省','ZJS','0',120.153676,30.26586,'1'),
	('15','00000012',2,'安徽省','AHS','0',117.284923,31.861184,'1'),
	('16','00000013',2,'福建省','FJS','0',119.296506,26.099933,'1'),
	('17','00000014',2,'江西省','JXS','0',115.909175,28.674424,'1'),
	('1739','360102',4,'东湖区','DHQ','0',115.89901,28.6849159,'184'),
	('1740','360103',4,'西湖区','XHQ','0',115.877287,28.656887,'184'),
	('1741','360104',4,'青云谱区','QYPQ','0',115.925749,28.621169,'184'),
	('1742','360105',4,'湾里区','WLQ','0',115.730994,28.714869,'184'),
	('1743','360111',4,'青山湖区','QSHQ','0',115.962144,28.682985,'184'),
	('1744','360121',4,'南昌县','NCX','0',115.944162,28.545459,'184'),
	('1745','360122',4,'新建县','XJX','0',115.815233,28.692437,'184'),
	('1746','360123',4,'安义县','AYX','0',115.549199,28.844429,'184'),
	('1747','360124',4,'进贤县','JXX','0',116.240924,28.376918,'184'),
	('1748','360202',4,'昌江区','CJQ','0',117.183688,29.27342,'185'),
	('1749','360203',4,'珠山区','ZSQ','0',117.202336,29.301272,'185'),
	('1750','360222',4,'浮梁县','FLX','0',117.215061,29.351739,'185'),
	('1751','360281',4,'乐平市','LPS','0',117.129169,28.961902,'185'),
	('1752','360302',4,'安源区','AYQ','0',113.87073,27.615202,'186'),
	('1753','360313',4,'湘东区','XDQ','0',113.733059,27.640075,'186'),
	('1754','360321',4,'莲花县','LHX','0',113.961465,27.127669,'186'),
	('1755','360322',4,'上栗县','SLX','0',113.795219,27.880567,'186'),
	('1756','360323',4,'芦溪县','LXX','0',114.029595,27.631145,'186'),
	('1757','360402',4,'庐山区','LSQ','0',115.989212,29.671775,'187'),
	('1758','360403',4,'浔阳区','XYQ','0',115.990399,29.72746,'187'),
	('1759','360421',4,'九江县','JJX','0',115.911314,29.608456,'187'),
	('1760','360423',4,'武宁县','WNX','0',115.100579,29.256323,'187'),
	('1761','360424',4,'修水县','XSX','0',114.547356,29.025707,'187'),
	('1762','360425',4,'永修县','YXX','0',115.809111,29.021824,'187'),
	('1763','360426',4,'德安县','DAX','0',115.756883,29.314348,'187'),
	('1764','360427',4,'星子县','XZX','0',116.044893,29.448037,'187'),
	('1765','360428',4,'都昌县','DCX','0',116.204099,29.273194,'187'),
	('1766','360429',4,'湖口县','HKX','0',116.220266,29.73944,'187'),
	('1767','360430',4,'彭泽县','PZX','0',116.549359,29.896061,'187'),
	('1768','360481',4,'瑞昌市','RCS','0',115.681504,29.673795,'187'),
	('1769','360499',4,'共青城','GQC','0',115.774,29.2417,'187'),
	('1770','360502',4,'渝水区','YSQ','0',114.944574,27.80038,'188'),
	('1771','360521',4,'分宜县','FYX','0',114.692039,27.814628,'188'),
	('1772','360602',4,'月湖区','YHQ','0',117.036676,28.238797,'189'),
	('1773','360622',4,'余江县','YJX','0',116.818871,28.204174,'189'),
	('1774','360681',4,'贵溪市','GXS','0',117.245497,28.292519,'189'),
	('1775','360702',4,'章贡区','ZGQ','0',114.941826,25.862827,'190'),
	('1776','360721',4,'赣县','GX','0',115.011561,25.860691,'190'),
	('1777','360722',4,'信丰县','XFX','0',114.922963,25.386278,'190'),
	('1778','360723',4,'大余县','DYX','0',114.362094,25.401283,'190'),
	('1779','360724',4,'上犹县','SYX','0',114.551371,25.784978,'190'),
	('1780','360725',4,'崇义县','CYX','0',114.308273,25.681879,'190'),
	('1781','360726',4,'安远县','AYX','0',115.393922,25.136925,'190'),
	('1782','360727',4,'龙南县','LNX','0',114.789811,24.911107,'190'),
	('1783','360728',4,'定南县','DNX','0',115.027845,24.78441,'190'),
	('1784','360729',4,'全南县','QNX','0',114.530125,24.742401,'190'),
	('1785','360730',4,'宁都县','NDX','0',116.009472,26.470116,'190'),
	('1786','360731',4,'于都县','YDX','0',115.41551,25.952066,'190'),
	('1787','360732',4,'兴国县','XGX','0',115.36319,26.337937,'190'),
	('1788','360733',4,'会昌县','HCX','0',115.786057,25.600272,'190'),
	('1789','360734',4,'寻乌县','YWX','0',115.646525,24.963322,'190'),
	('1790','360735',4,'石城县','SCX','0',116.354201,26.32686,'190'),
	('1791','360781',4,'瑞金市','RJS','0',116.02713,25.885561,'190'),
	('1792','360782',4,'南康市','NKS','0',114.765238,25.661356,'190'),
	('1793','360802',4,'吉州区','JZQ','0',114.994307,27.129975,'191'),
	('1794','360803',4,'青原区','QYQ','0',115.01424,27.081719,'191'),
	('1795','360821',4,'吉安县','JAX','0',114.907659,27.040142,'191'),
	('1796','360822',4,'吉水县','JSX','0',115.135507,27.229632,'191'),
	('1797','360823',4,'峡江县','XJX','0',115.316566,27.582901,'191'),
	('1798','360824',4,'新干县','XGX','0',115.393043,27.740809,'191'),
	('1799','360825',4,'永丰县','YFX','0',115.441477,27.317869,'191'),
	('18','00000015',2,'山东省','SDS','0',117.020411,36.668627,'1'),
	('1800','360826',4,'泰和县','THX','0',114.908861,26.790231,'191'),
	('1801','360827',4,'遂川县','SCX','0',114.52098,26.311894,'191'),
	('1802','360828',4,'万安县','WAX','0',114.786256,26.458257,'191'),
	('1803','360829',4,'安福县','AFX','0',114.619893,27.392874,'191'),
	('1804','360830',4,'永新县','YXX','0',114.242675,26.945233,'191'),
	('1805','360881',4,'井冈山市','JGSS','0',114.289182,26.748186,'191'),
	('1806','360902',4,'袁州区','YZQ','0',114.424657,27.798846,'192'),
	('1807','360921',4,'奉新县','FXX','0',115.384904,28.700806,'192'),
	('1808','360922',4,'万载县','WZX','0',114.447551,28.10455,'192'),
	('1809','360923',4,'上高县','SGX','0',114.924494,28.232827,'192'),
	('1810','360924',4,'宜丰县','YFX','0',114.803542,28.393613,'192'),
	('1811','360925',4,'靖安县','JAX','0',115.362629,28.861475,'192'),
	('1812','360926',4,'铜鼓县','TGX','0',114.37098,28.520747,'192'),
	('1813','360981',4,'丰城市','FCS','0',115.771195,28.159325,'192'),
	('1814','360982',4,'樟树市','ZSS','0',115.546063,28.055796,'192'),
	('1815','360983',4,'高安市','GAS','0',115.375618,28.417261,'192'),
	('1816','361002',4,'临川区','LCQ','0',116.31136,27.934529,'193'),
	('1817','361021',4,'南城县','NCX','0',116.644658,27.552748,'193'),
	('1818','361022',4,'黎川县','LCX','0',116.907508,27.282382,'193'),
	('1819','361023',4,'南丰县','NFX','0',116.525725,27.218445,'193'),
	('1820','361024',4,'崇仁县','CRX','0',116.061164,27.764681,'193'),
	('1821','361025',4,'乐安县','LAX','0',115.837895,27.420441,'193'),
	('1822','361026',4,'宜黄县','YHX','0',116.222128,27.546146,'193'),
	('1823','361027',4,'金溪县','JXX','0',116.775435,27.908337,'193'),
	('1824','361028',4,'资溪县','ZXX','0',117.060264,27.706102,'193'),
	('1825','361029',4,'东乡县','DXX','0',116.590465,28.236118,'193'),
	('1826','361030',4,'广昌县','GCX','0',116.325757,26.837267,'193'),
	('1827','361102',4,'信州区','XZQ','0',117.966823,28.43121,'194'),
	('1828','361121',4,'上饶县','SRX','0',117.90785,28.448983,'194'),
	('1829','361122',4,'广丰县','GFX','0',118.19124,28.436286,'194'),
	('1830','361123',4,'玉山县','YSX','0',118.245124,28.682055,'194'),
	('1831','361124',4,'铅山县','QSX','0',117.709451,28.315217,'194'),
	('1832','361125',4,'横峰县','HFX','0',117.596452,28.407118,'194'),
	('1833','361126',4,'弋阳县','YYX','0',117.449588,28.378044,'194'),
	('1834','361127',4,'余干县','YGX','0',116.695647,28.702302,'194'),
	('1835','361128',4,'鄱阳县','PYX','0',116.699746,29.011699,'194'),
	('1836','361129',4,'万年县','WNX','0',117.058445,28.694582,'194'),
	('1837','361130',4,'婺源县','WYX','0',117.861911,29.2480249,'194'),
	('1838','361181',4,'德兴市','DXS','0',117.578713,28.946464,'194'),
	('1839','370102',4,'历下区','LXQ','0',117.07653,36.666344,'195'),
	('184','360100',3,'南昌市','NCS','0',115.858089,28.68316,'17'),
	('1840','370103',4,'市中区','SZQ','0',116.997475,36.6511749,'195'),
	('1841','370104',4,'槐荫区','HYQ','0',116.90113,36.651301,'195'),
	('1842','370105',4,'天桥区','TQQ','0',116.987492,36.678016,'195'),
	('1843','370112',4,'历城区','LCQ','0',117.065222,36.680171,'195'),
	('185','360200',3,'景德镇市','JDZS','0',117.17842,29.268836,'17'),
	('186','360300',3,'萍乡市','PXS','0',113.854676,27.622865,'17'),
	('187','360400',3,'九江市','JJS','0',116.001951,29.705103,'17'),
	('188','360500',3,'新余市','XYS','0',114.91741,27.817819,'17'),
	('189','360600',3,'鹰潭市','YTS','0',117.069202,28.260189,'17'),
	('19','00000017',2,'湖北省','HBS','0',114.341921,30.545861,'1'),
	('190','360700',3,'赣州市','GZS','0',114.935025,25.831925,'17'),
	('191','360800',3,'吉安市','JAS','0',114.992912,27.113039,'17'),
	('192','360900',3,'宜春市','YCS','0',114.416778,27.815619,'17'),
	('193','361000',3,'抚州市','FZS','0',116.358176,27.9492,'17'),
	('194','361100',3,'上饶市','SRS','0',117.943433,28.454863,'17'),
	('195','370100',3,'济南市','JNS','0',116.994917,36.665282,'18'),
	('20','00000018',2,'湖南省','HNS','0',112.98381,28.112444,'1'),
	('21','40000000',2,'重庆市','ZQS','0',106.551557,29.56301,'1'),
	('22','00000022',2,'四川省','SCS','0',104.075931,30.651652,'1'),
	('23','00000019',2,'广东省','GDS','0',113.266531,23.132191,'1'),
	('24','00000020',2,'广西壮族自治区','GXZZZZQ','0',108.327546,22.815478,'1'),
	('25','00000021',2,'海南省','HNS','0',110.349229,20.017378,'1'),
	('26','810000',2,'香港特别行政区','XGTBXZQ','0',114.109497,22.396428,'1'),
	('27','820000',2,'澳门特别行政区','AMTBXZQ','0',113.543873,22.198745,'1'),
	('28','00000023',2,'贵州省','GZS','0',106.707116,26.598026,'1'),
	('29','00000024',2,'云南省','YNS','0',102.709812,25.045359,'1'),
	('3','00000006',2,'辽宁省','LNS','0',123.42944,41.835441,'1'),
	('30','00000025',2,'西藏自治区','XCZZQ','0',91.1170059,29.647951,'1'),
	('31','00000026',2,'陕西省','SXS','0',108.954239,34.265472,'1'),
	('32','00000027',2,'甘肃省','GSS','0',103.826308,36.059421,'1'),
	('33','00000028',2,'青海省','QHS','0',101.780199,36.620901,'1'),
	('34','00000029',2,'宁夏回族自治区','NXHZZZQ','0',106.258754,38.471318,'1'),
	('35','00000030',2,'新疆维吾尔自治区','XJWWEZZQ','0',87.6278119,43.793028,'1'),
	('4','00000007',2,'吉林省','JLS','0',125.326065,43.896082,'1'),
	('5','10000000',2,'北京市','BJS','0',116.407413,39.904214,'1'),
	('6','30000000',2,'天津市','TJS','0',117.200983,39.084158,'1'),
	('7','00000003',2,'河北省','HBS','0',114.468665,38.037057,'1'),
	('8','00000004',2,'山西省','SXS','0',112.562569,37.873376,'1'),
	('89','370200',3,'青岛市','QDS','0',120.382504,36.06722,'18'),
	('9','00000005',2,'内蒙古自治区','NMGZZQ','0',111.765618,40.817498,'1'),
	('90','370300',3,'淄博市','ZBS','0',118.055007,36.813497,'18'),
	('91','370400',3,'枣庄市','ZZS','0',117.323725,34.810488,'18'),
	('92','370500',3,'东营市','DYS','0',118.674767,37.434751,'18'),
	('926','370113',4,'长清区','CQQ','0',116.751959,36.553691,'195'),
	('927','370124',4,'平阴县','PYX','0',116.456187,36.289265,'195'),
	('928','370125',4,'济阳县','JYX','0',117.173529,36.978547,'195'),
	('929','370126',4,'商河县','SHX','0',117.157183,37.309045,'195'),
	('93','370600',3,'烟台市','YTS','0',121.447926,37.463819,'18'),
	('930','370181',4,'章丘市','ZQS','0',117.534326,36.714015,'195'),
	('931','370202',4,'市南区','SNQ','0',120.412392,36.075651,'89'),
	('932','370203',4,'市北区','SBQ','0',120.374801,36.087661,'89'),
	('933','370205',4,'四方区','SFQ','0',120.366454,36.103993,'89'),
	('934','370211',4,'黄岛区','HDQ','0',120.198054,35.960935,'89'),
	('935','370212',4,'崂山区','LSQ','0',120.468956,36.107538,'89'),
	('936','370213',4,'李沧区','LCQ','0',120.432864,36.145476,'89'),
	('937','370214',4,'城阳区','CYQ','0',120.396529,36.307061,'89'),
	('938','370281',4,'胶州市','JZS','0',120.033345,36.264664,'89'),
	('939','370282',4,'即墨市','JMS','0',120.447162,36.389401,'89'),
	('94','370700',3,'潍坊市','WFS','0',119.16193,36.706691,'18'),
	('940','370283',4,'平度市','PDS','0',119.960014,36.7867,'89'),
	('941','370284',4,'胶南市','JNS','0',120.04643,35.8725,'89'),
	('942','370285',4,'莱西市','LXS','0',120.51769,36.889084,'89'),
	('943','370302',4,'淄川区','ZCQ','0',117.966842,36.643449,'90'),
	('944','370303',4,'张店区','ZDQ','0',118.017656,36.806773,'90'),
	('945','370304',4,'博山区','BSQ','0',117.861698,36.494752,'90'),
	('946','370305',4,'临淄区','LZQ','0',118.308977,36.827343,'90'),
	('947','370306',4,'周村区','ZCQ','0',117.869877,36.803109,'90'),
	('948','370321',4,'桓台县','HTX','0',118.097955,36.959623,'90'),
	('949','370322',4,'高青县','GQX','0',117.826916,37.171063,'90'),
	('95','370800',3,'济宁市','JNS','0',116.587099,35.414921,'18'),
	('950','370323',4,'沂源县','YYX','0',118.170979,36.184827,'90'),
	('951','370402',4,'市中区','SZQ','0',117.556124,34.864114,'91'),
	('952','370403',4,'薛城区','YCQ','0',117.263157,34.795206,'91'),
	('953','370404',4,'峄城区','YCQ','0',117.590819,34.772236,'91'),
	('954','370405',4,'台儿庄区','TEZQ','0',117.733832,34.562528,'91'),
	('955','370406',4,'山亭区','STQ','0',117.461343,35.099549,'91'),
	('956','370481',4,'滕州市','TZS','0',117.164388,35.084021,'91'),
	('957','370502',4,'东营区','DYQ','0',118.582184,37.448964,'92'),
	('958','370503',4,'河口区','HKQ','0',118.525579,37.886138,'92'),
	('959','370521',4,'垦利县','KLX','0',118.547627,37.58754,'92'),
	('960','370522',4,'利津县','LJX','0',118.255273,37.49026,'92'),
	('961','370523',4,'广饶县','GRX','0',118.407045,37.0537,'92'),
	('962','370602',4,'芝罘区','ZFQ','0',121.400031,37.540687,'93'),
	('963','370611',4,'福山区','FSQ','0',121.267697,37.498051,'93'),
	('964','370612',4,'牟平区','MPQ','0',121.600512,37.386901,'93'),
	('965','370613',4,'莱山区','LSQ','0',121.445304,37.511305,'93'),
	('966','370614',4,'开发区','KFQ','0',121.251001,37.554683,'93'),
	('967','370634',4,'长岛县','CDX','0',120.736584,37.921417,'93'),
	('968','370681',4,'龙口市','LKS','0',120.477836,37.646064,'93'),
	('969','370682',4,'莱阳市','LYS','0',120.711607,36.97891,'93'),
	('970','370683',4,'莱州市','LZS','0',119.942327,37.177017,'93'),
	('971','370684',4,'蓬莱市','PLS','0',120.758848,37.810661,'93'),
	('972','370685',4,'招远市','ZYS','0',120.434072,37.355469,'93'),
	('973','370686',4,'栖霞市','QXS','0',120.849675,37.335123,'93'),
	('974','370687',4,'海阳市','HYS','0',121.158477,36.776425,'93'),
	('975','370702',4,'潍城区','WCQ','0',119.024836,36.7281,'94'),
	('976','370703',4,'寒亭区','HTQ','0',119.219734,36.775491,'94'),
	('977','370704',4,'坊子区','FZQ','0',119.166485,36.654448,'94'),
	('978','370705',4,'奎文区','KWQ','0',119.132486,36.707676,'94'),
	('979','370724',4,'临朐县','LQX','0',118.542982,36.5125059,'94'),
	('980','370725',4,'昌乐县','CLX','0',118.829914,36.706945,'94'),
	('981','370781',4,'青州市','QZS','0',118.479622,36.684528,'94'),
	('982','370782',4,'诸城市','ZCS','0',119.410103,35.995654,'94'),
	('983','370783',4,'寿光市','SGS','0',118.790652,36.85548,'94'),
	('984','370784',4,'安丘市','AQS','0',119.218978,36.478494,'94'),
	('985','370785',4,'高密市','GMS','0',119.755597,36.3825949,'94'),
	('986','370786',4,'昌邑市','CYS','0',119.398525,36.85882,'94'),
	('987','370802',4,'市中区','SZQ','0',116.596614,35.40819,'95'),
	('988','370811',4,'任城区','RCQ','0',116.628562,35.433727,'95'),
	('989','370826',4,'微山县','WSX','0',117.128946,34.8071,'95'),
	('990','370827',4,'鱼台县','YTX','0',116.650608,35.012749,'95'),
	('991','370828',4,'金乡县','JXX','0',116.311532,35.06662,'95'),
	('992','370829',4,'嘉祥县','JXX','0',116.342442,35.407829,'95'),
	('993','370830',4,'汶上县','WSX','0',116.489043,35.732799,'95'),
	('994','370831',4,'泗水县','SSX','0',117.251195,35.664323,'95'),
	('995','370832',4,'梁山县','LSX','0',116.096044,35.802306,'95'),
	('996','370881',4,'曲阜市','QFS','0',116.986532,35.581137,'95'),
	('997','370882',4,'兖州市','YZS','0',116.783834,35.553144,'95'),
	('998','370883',4,'邹城市','ZCS','0',117.003743,35.405185,'95'),
	('999','370902',4,'泰山区','TSQ','0',117.135354,36.192084,'96');

/*!40000 ALTER TABLE `t_s_territory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_timetask
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_timetask`;

CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_timetask` WRITE;
/*!40000 ALTER TABLE `t_s_timetask` DISABLE KEYS */;

INSERT INTO `t_s_timetask` (`ID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `CRON_EXPRESSION`, `IS_EFFECT`, `IS_START`, `TASK_DESCRIBE`, `TASK_ID`, `UPDATE_BY`, `UPDATE_DATE`, `UPDATE_NAME`)
VALUES
	('4028d881436d514601436d5219ab0159',NULL,NULL,NULL,'0 0/1 * * * ?','0','0','测试Demo','taskDemoServiceTaskCronTrigger',NULL,NULL,NULL);

/*!40000 ALTER TABLE `t_s_timetask` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_type`;

CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `typepid` varchar(32) DEFAULT NULL,
  `typegroupid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_type` WRITE;
/*!40000 ALTER TABLE `t_s_type` DISABLE KEYS */;

INSERT INTO `t_s_type` (`ID`, `typecode`, `typename`, `typepid`, `typegroupid`)
VALUES
	('402889f8476650de01476666acbf0005','01','多文章',NULL,'402889f8476650de01476665dfe70002'),
	('402889f8476650de01476666d5c30007','02','单文章',NULL,'402889f8476650de01476665dfe70002'),
	('402889ff4728f2370147290a0f82001d','1','服务号',NULL,'402889ff4728f2370147290995f80018'),
	('402889ff4728f2370147290a2d63001f','2','订阅号',NULL,'402889ff4728f2370147290995f80018'),
	('4028d881436d514601436d5216130051','2','菜单图标',NULL,'4028d881436d514601436d5215c30047'),
	('4028d881436d514601436d5216160052','1','系统图标',NULL,'4028d881436d514601436d5215c30047'),
	('4028d881436d514601436d5216190053','files','附件',NULL,'4028d881436d514601436d5215e4004f'),
	('4028d881436d514601436d52161c0054','1','优质订单',NULL,'4028d881436d514601436d5215c90048'),
	('4028d881436d514601436d52161f0055','2','普通订单',NULL,'4028d881436d514601436d5215c90048'),
	('4028d881436d514601436d5216220056','1','签约客户',NULL,'4028d881436d514601436d5215cc0049'),
	('4028d881436d514601436d5216250057','2','普通客户',NULL,'4028d881436d514601436d5215cc0049'),
	('4028d881436d514601436d5216290058','1','特殊服务',NULL,'4028d881436d514601436d5215cf004a'),
	('4028d881436d514601436d52162e0059','2','普通服务',NULL,'4028d881436d514601436d5215cf004a'),
	('4028d881436d514601436d521633005a','single','单条件查询',NULL,'4028d881436d514601436d5215d4004b'),
	('4028d881436d514601436d521638005b','group','范围查询',NULL,'4028d881436d514601436d5215d4004b'),
	('4028d881436d514601436d52163d005c','Y','是',NULL,'4028d881436d514601436d5215d7004c'),
	('4028d881436d514601436d521640005d','N','否',NULL,'4028d881436d514601436d5215d7004c'),
	('4028d881436d514601436d521643005e','Integer','Integer',NULL,'4028d881436d514601436d5215db004d'),
	('4028d881436d514601436d521646005f','Date','Date',NULL,'4028d881436d514601436d5215db004d'),
	('4028d881436d514601436d52164b0060','String','String',NULL,'4028d881436d514601436d5215db004d'),
	('4028d881436d514601436d52164f0061','Long','Long',NULL,'4028d881436d514601436d5215db004d'),
	('4028d881436d514601436d5216530062','act','工作流引擎表',NULL,'4028d881436d514601436d5215df004e'),
	('4028d881436d514601436d5216570063','t_s','系统基础表',NULL,'4028d881436d514601436d5215df004e'),
	('4028d881436d514601436d52165c0064','t_b','业务表',NULL,'4028d881436d514601436d5215df004e'),
	('4028d881436d514601436d5216600065','t_p','自定义引擎表',NULL,'4028d881436d514601436d5215df004e'),
	('4028d881436d514601436d5216640066','news','新闻',NULL,'4028d881436d514601436d5215e4004f'),
	('4028d881436d514601436d5216670067','0','男性',NULL,'4028d881436d514601436d5215e90050'),
	('4028d881436d514601436d52166a0068','1','女性',NULL,'4028d881436d514601436d5215e90050');

/*!40000 ALTER TABLE `t_s_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_typegroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_typegroup`;

CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) DEFAULT NULL,
  `typegroupname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_typegroup` WRITE;
/*!40000 ALTER TABLE `t_s_typegroup` DISABLE KEYS */;

INSERT INTO `t_s_typegroup` (`ID`, `typegroupcode`, `typegroupname`)
VALUES
	('402889f8476650de01476665dfe70002','cms_menu','CMS菜单类型'),
	('402889ff4728f2370147290995f80018','weixintype','微信公众账号类型'),
	('4028d881436d514601436d5215c30047','icontype','图标类型'),
	('4028d881436d514601436d5215c90048','order','订单类型'),
	('4028d881436d514601436d5215cc0049','custom','客户类型'),
	('4028d881436d514601436d5215cf004a','service','服务项目类型'),
	('4028d881436d514601436d5215d4004b','searchmode','查询模式'),
	('4028d881436d514601436d5215d7004c','yesorno','逻辑条件'),
	('4028d881436d514601436d5215db004d','fieldtype','字段类型'),
	('4028d881436d514601436d5215df004e','database','数据表'),
	('4028d881436d514601436d5215e4004f','fieltype','文档分类'),
	('4028d881436d514601436d5215e90050','sex','性别类');

/*!40000 ALTER TABLE `t_s_typegroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_user`;

CREATE TABLE `t_s_user` (
  `email` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `signatureFile` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  `type` varchar(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_s_user` WRITE;
/*!40000 ALTER TABLE `t_s_user` DISABLE KEYS */;

INSERT INTO `t_s_user` (`email`, `mobilePhone`, `officePhone`, `signatureFile`, `id`, `accountid`, `type`)
VALUES
	('775747758@qq.co','13684722359','55577',NULL,'402880ef51bd66070151bd7a0b1d0003','402881e8461795c201461795c2e90000',NULL),
	('','18868831696','1233',NULL,'402880ef51e3e4080151e3e63f880002','-1',NULL),
	('958655443@qq.com','15849259309','',NULL,'402880ef5221934f015221b36001000c','402881e8461795c201461795c2e90000',NULL),
	('','15949259309','',NULL,'402880ef5229b448015229d03fdd000d','402881e8461795c201461795c2e90000',NULL),
	('958655443@qq.com','15849259309','666',NULL,'402880ef5229f49a01522a09cc71000b','402881e8461795c201461795c2e90000',NULL),
	(NULL,NULL,NULL,NULL,'4028813a504c151c01504c15ba340002',NULL,NULL),
	(NULL,NULL,NULL,NULL,'4028813a504c1c9901504c1d0d250002',NULL,NULL),
	('','','',NULL,'4028813a505109d7015051179d170001',NULL,NULL),
	('','','',NULL,'4028813a5055d3e9015055d48aec0001','402881e8461795c201461795c2e90000',NULL),
	('775747758@qq.com','13684722359','111',NULL,'4028813a505a6d5801505a6e80fa0001','402881e8461795c201461795c2e90000',NULL),
	('7757@qq.com','13757364859','',NULL,'4028813a505a70d901505a721ae80001','402881e8461795c201461795c2e90000',NULL),
	('','','444',NULL,'4028813a508d983201508da23ba80005','402881e8461795c201461795c2e90000',NULL),
	('','13757364859','',NULL,'4028813a508da3e301508da935360005','402881e8461795c201461795c2e90000',NULL),
	('','13757364859','44444',NULL,'4028813a508da3e301508da9feb0000a','402881e8461795c201461795c2e90000',NULL),
	('','','',NULL,'402881e4461f9c6401461fa2e6f50002','',NULL),
	('','','',NULL,'402881e44648134a014648174a45000c','',NULL),
	(NULL,NULL,NULL,'images/renfang/qm/licf.gif','4028d881436d514601436d5215ac0043','402881e8461795c201461795c2e90000',NULL),
	(NULL,NULL,NULL,NULL,'4028d881436d514601436d5215b80045','',NULL),
	(NULL,NULL,NULL,NULL,'4028d881436d514601436d5215bc0046','',NULL);

/*!40000 ALTER TABLE `t_s_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_s_version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_s_version`;

CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) DEFAULT NULL,
  `versioncode` varchar(50) DEFAULT NULL,
  `versionname` varchar(30) DEFAULT NULL,
  `versionnum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table test_many
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_many`;

CREATE TABLE `test_many` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ddd',
  `id_one` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT 'rrrrr',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table test_one
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_one`;

CREATE TABLE `test_one` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` longtext COLLATE utf8_bin COMMENT 'name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table test_uuid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_uuid`;

CREATE TABLE `test_uuid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `qwe` varchar(13) COLLATE utf8_bin DEFAULT NULL COMMENT 'rrrr',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `test_uuid` WRITE;
/*!40000 ALTER TABLE `test_uuid` DISABLE KEYS */;

INSERT INTO `test_uuid` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `qwe`)
VALUES
	(1,X'61646D696E',NULL,NULL,NULL,NULL),
	(2,X'61646D696E',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `test_uuid` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_accesstoken
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_accesstoken`;

CREATE TABLE `weixin_accesstoken` (
  `ID` varchar(32) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `expires_ib` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table weixin_account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_account`;

CREATE TABLE `weixin_account` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `accountname` varchar(200) DEFAULT NULL COMMENT '公众帐号名称',
  `accounttoken` varchar(200) DEFAULT NULL COMMENT '公众帐号TOKEN',
  `accountnumber` varchar(200) DEFAULT NULL COMMENT '公众微信号',
  `accounttype` varchar(50) DEFAULT NULL COMMENT '公众号类型',
  `accountemail` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `accountdesc` varchar(500) DEFAULT NULL COMMENT '公众帐号描述',
  `accountaccesstoken` varchar(1000) DEFAULT NULL COMMENT 'ACCESS_TOKEN',
  `accountappid` varchar(200) DEFAULT NULL COMMENT '公众帐号APPID',
  `accountappsecret` varchar(500) DEFAULT NULL COMMENT '公众帐号APPSECRET',
  `ADDTOEKNTIME` datetime DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `WEIXIN_ACCOUNTID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_account` WRITE;
/*!40000 ALTER TABLE `weixin_account` DISABLE KEYS */;

INSERT INTO `weixin_account` (`id`, `accountname`, `accounttoken`, `accountnumber`, `accounttype`, `accountemail`, `accountdesc`, `accountaccesstoken`, `accountappid`, `accountappsecret`, `ADDTOEKNTIME`, `USERNAME`, `WEIXIN_ACCOUNTID`)
VALUES
	('402881e8461795c201461795c2e90000','驿马生活','weixin','yimadianzi@sina.com','1','yuntu_lwt@163.com','无','tqEheSNoz5g7lgSYvMWZUaZl8VPjMNtNze-evFPSRko2jARa1ESJtCYrn-5FHcitL8BWkVSOKs5CUIOgglAu3xS9nBplSNaqLUdM1YR3338GFYbADAKJC','wx80834504ba92893b','0931d248c36015fe76da56508f35f03a','2016-01-10 16:29:04','123456','gh_fa5214e8f012');

/*!40000 ALTER TABLE `weixin_account` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_autoresponse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_autoresponse`;

CREATE TABLE `weixin_autoresponse` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_autoresponse` WRITE;
/*!40000 ALTER TABLE `weixin_autoresponse` DISABLE KEYS */;

INSERT INTO `weixin_autoresponse` (`ID`, `addtime`, `keyword`, `msgtype`, `rescontent`, `templatename`, `accountid`)
VALUES
	('4028813a4fef1e59014fef47584a0005','2015-09-21 17:41:14','test','text','f7a8a3a946e55a940146e5a53e6b0051','大转盘指南','402881e8461795c201461795c2e90000'),
	('402889ff4728a293014728b0c7da001b','2014-07-12 11:49:39','01','text','f7a8a3a946e55a940146e5a3e498004d','微译使用指南','402881e8461795c201461795c2e90000'),
	('402889ff4728a293014728b155c8001c','2014-07-12 11:50:16','你好','text','4028d8814734ee0d0147356b4c730010','你好','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e249c20146e26a10ca0019','2014-06-28 20:19:00','?','text','f7a8a3a946e249c20146e25c4dc7000c','欢迎关注语','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a47b890050','2014-06-29 11:21:40','02','text','f7a8a3a946e55a940146e5a429cf004e','天气使用指南','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a632220054','2014-06-29 11:23:32','03','text','f7a8a3a946e55a940146e5a53e6b0051','大转盘指南','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a656150055','2014-06-29 11:23:41','04','text','f7a8a3a946e55a940146e5a584da0052','刮刮乐指南','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_autoresponse` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_cms_ad
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_cms_ad`;

CREATE TABLE `weixin_cms_ad` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_cms_ad` WRITE;
/*!40000 ALTER TABLE `weixin_cms_ad` DISABLE KEYS */;

INSERT INTO `weixin_cms_ad` (`ID`, `ACCOUNTID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `IMAGE_HREF`, `IMAGE_NAME`, `TITLE`)
VALUES
	('402881e44695183a014695214a510013','402881e8461795c201461795c2e90000','admin','2014-06-13 20:08:45','管理员','upload/files/20140627233502FEzyc38j.jpg','19300001024098134717639977056.jpg','IPHONE7'),
	('402881e44695183a014695219fe70016','402881e8461795c201461795c2e90000','admin','2014-06-13 20:09:07','管理员','upload/files/20140627232736z3SvfVEj.jpg','634490825089531250.jpg','IPHONE'),
	('402881e946ddea480146de053265000b','402881e8461795c201461795c2e90000','4028d881436d514601436d5215ac0043','2014-06-27 23:50:21','admin','upload/files/20140627235534VJM1pkx3.jpg','Img305735292.jpg','黑莓'),
	('402881e946ddea480146de0f3a810011','402881e8461795c201461795c2e90000','4028d881436d514601436d5215ac0043','2014-06-28 00:01:18','admin','upload/files/20140628000116OF07rm7E.jpg','30_1i$1JxIOB.jpg','Lumia930 王者归来');

/*!40000 ALTER TABLE `weixin_cms_ad` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_cms_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_cms_article`;

CREATE TABLE `weixin_cms_article` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `image_name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `image_href` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `summary` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL COMMENT '内容',
  `column_id` varchar(36) DEFAULT NULL COMMENT '栏目id',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账户',
  `create_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_cms_article` WRITE;
/*!40000 ALTER TABLE `weixin_cms_article` DISABLE KEYS */;

INSERT INTO `weixin_cms_article` (`id`, `title`, `image_name`, `image_href`, `summary`, `content`, `column_id`, `accountid`, `create_name`, `create_by`, `create_date`)
VALUES
	('297e7eb6469a4a8901469a5e58c0000e','测试一个小黄人的图片','19343396_845725.jpg','upload/files/20140613235146eEgyESpy.jpg','你看看这个小黄人美不美？','<p><strong>我的小黄人是不是很好看啊</strong></p><p><strong><br/></strong></p><p><strong><br/></strong></p><p><span style=\"background-color: rgb(255, 255, 0);\"><strong>这个颜色怎么样啊。</strong></span></p>','402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','管理员','admin','2014-06-14 20:33:33'),
	('297e7eb6469a4a8901469a5ef95c0011','这个杀手帅不帅？','1384480985636.jpg','upload/files/20140613235146eEgyESpy.jpg','这个杀手帅不帅？','<p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p><p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p>','402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','管理员','admin','2014-06-14 20:34:14'),
	('402880e6477d5c2601477d5d8f260002','123123','jeecg_scott.jpg','upload/files/20140728222625KXeCCRAG.jpg','123123','<p>123123123123</p>','402889f84767413b0147674358370002','402881e8461795c201461795c2e90000','admin','4028d881436d514601436d5215ac0043','2014-07-28 22:26:29'),
	('4028813a4ff279d7014ff2e7ba260003','66','','','666','<p>666</p>','','402881e8461795c201461795c2e90000','admin','4028d881436d514601436d5215ac0043','2015-09-22 10:35:17'),
	('4028813a4ff3ff72014ff40489cb0005','55','示例图片_01.jpg','upload/files/20150922154620dF5pJ61v.jpg','55','<p>55</p>','402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','admin','4028d881436d514601436d5215ac0043','2015-09-22 15:46:22'),
	('4028813a4ff40908014ff409aa600002','66','示例图片_03.jpg','upload/files/20150922155152zWEn7kEP.jpg','66','<p>66</p>','402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','admin','4028d881436d514601436d5215ac0043','2015-09-22 15:51:58'),
	('402889f346dc66c30146dc7c1c120002','12','1348502732_4991.gif','upload/files/20140613235146eEgyESpy.jpg','12','12','402881e44695183a0146952426ce0022','402881e8461795c201461795c2e90000','admin','4028d881436d514601436d5215ac0043','2014-06-27 16:40:59');

/*!40000 ALTER TABLE `weixin_cms_article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_cms_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_cms_menu`;

CREATE TABLE `weixin_cms_menu` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_cms_menu` WRITE;
/*!40000 ALTER TABLE `weixin_cms_menu` DISABLE KEYS */;

INSERT INTO `weixin_cms_menu` (`ID`, `ACCOUNTID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `IMAGE_HREF`, `IMAGE_NAME`, `NAME`, `TYPE`)
VALUES
	('402881e44695183a01469522f7d20019','402881e8461795c201461795c2e90000','admin','2014-06-13 20:10:35','管理员','upload/files/201406132357343zuaHgX4.jpg','537f1f63dd1c9.jpg','关于JEECG','01'),
	('402881e44695183a014695234880001c','402881e8461795c201461795c2e90000','admin','2014-06-13 20:10:56','管理员','upload/files/20140613235754hLRC87rF.jpg','537f1f86602b3.jpg','渠道代理','01'),
	('402881e44695183a01469523f03a001f','402881e8461795c201461795c2e90000','admin','2014-06-13 20:11:39','管理员','upload/files/201406132358039IpFSyet.jpg','537f1f74d031c.jpg','功能说明','01'),
	('402881e44695183a0146952426ce0022','402881e8461795c201461795c2e90000','admin','2014-06-13 20:11:53','管理员','upload/files/20140613235830M96wj4Lr.jpg','537f1f98d6f42.jpg','企业文化','01'),
	('402881e446955c7c014695a72a610029','402881e8461795c201461795c2e90000','admin','2014-06-13 22:34:59','管理员','upload/files/20140613235852gBTueAWO.jpg','537f1faf595dd.jpg','案例分享','01'),
	('402881e446955c7c014695a774f9002c','402881e8461795c201461795c2e90000','admin','2014-06-13 22:35:18','管理员','upload/files/20140613235911chsAs0Md.jpg','537f1ca3cd562.jpg','联系我们','01'),
	('402881e446955c7c014695a7bc45002f','402881e8461795c201461795c2e90000','admin','2014-06-13 22:35:36','管理员','upload/files/20140613235918OA8vt546.jpg','537f1cb75c597.jpg','轻松一刻','01'),
	('402881e446955c7c014695a7f08b0032','402881e8461795c201461795c2e90000','admin','2014-06-13 22:35:50','管理员','upload/files/20140613235932htqZFtCs.jpg','537f1fc8d750b.jpg','互动推广','01'),
	('402881e446955c7c014695a836da0035','402881e8461795c201461795c2e90000','admin','2014-06-13 22:36:08','管理员','upload/files/201407241133168ezfMs40.jpg','jeecg_scott.jpg','升级公告','01'),
	('402889f84767413b0147674358370002','402881e8461795c201461795c2e90000','4028d881436d514601436d5215ac0043','2014-07-24 15:26:12','admin','upload/files/20140724152611YCkPnNNe.jpg','jeecg_scott.jpg','123123','02');

/*!40000 ALTER TABLE `weixin_cms_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_cms_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_cms_site`;

CREATE TABLE `weixin_cms_site` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(32) DEFAULT NULL,
  `COMPANY_TEL` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `SITE_LOGO` varchar(200) DEFAULT NULL,
  `SITE_NAME` varchar(100) DEFAULT NULL,
  `SITE_TEMPLATE_STYLE` varchar(50) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table weixin_cms_style
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_cms_style`;

CREATE TABLE `weixin_cms_style` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `REVIEW_IMG_URL` varchar(100) DEFAULT NULL,
  `TEMPLATE_NAME` varchar(100) DEFAULT NULL,
  `TEMPLATE_URL` varchar(200) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table weixin_dispatch
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_dispatch`;

CREATE TABLE `weixin_dispatch` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `express_price` double DEFAULT NULL COMMENT '运费',
  `limit_money` double DEFAULT NULL COMMENT '包邮限制',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '微信账号ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_dispatch` WRITE;
/*!40000 ALTER TABLE `weixin_dispatch` DISABLE KEYS */;

INSERT INTO `weixin_dispatch` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `express_price`, `limit_money`, `accountid`)
VALUES
	(X'3430323838313361353036303434303530313530363034613861383230303031',X'61646D696E','2015-10-13 16:21:49',X'313233343536','2016-01-10 16:34:30',5,58.8,X'3430323838316538343631373935633230313436313739356332653930303030');

/*!40000 ALTER TABLE `weixin_dispatch` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_expandconfig
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_expandconfig`;

CREATE TABLE `weixin_expandconfig` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(200) DEFAULT NULL,
  `CLASSNAME` varchar(100) NOT NULL,
  `CONTENT` longtext,
  `KEYWORD` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_expandconfig` WRITE;
/*!40000 ALTER TABLE `weixin_expandconfig` DISABLE KEYS */;

INSERT INTO `weixin_expandconfig` (`ID`, `ACCOUNTID`, `CLASSNAME`, `CONTENT`, `KEYWORD`, `NAME`)
VALUES
	('4028813a508971520150897d32180002','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.WeiXinMshopService','微商城多店版','微商城多店版','微商城多店版'),
	('402881e44667912a0146679390450001','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.FanYiKeyService','翻译','翻译','翻译'),
	('402881e44667912a014667947a3a0003','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.TianQiKeyService','天气预报','天气','天气预报'),
	('402881e446950f86014695120f810001','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.DaZhuanPanService','大转盘','大转盘','大转盘'),
	('402881e446950f8601469513ec670003','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.CmsService','CMS','cms','CMS,cms'),
	('402881e4469ffe7a0146a000090d0001','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.GuagualeService','刮刮乐','刮刮乐','刮刮乐'),
	('402881e747baf1ea0147bb79d2330007','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.WeixinPhotoService','微相册','微相册,相册','微相册'),
	('402881e9470273d2014702a94a1b001d','402881e8461795c201461795c2e90000','weixin.idea.extend.function.impl.WeixinShopService','微信商城','微商城,商城','微商城');

/*!40000 ALTER TABLE `weixin_expandconfig` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_group`;

CREATE TABLE `weixin_group` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '分组名称',
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table weixin_gzuserinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_gzuserinfo`;

CREATE TABLE `weixin_gzuserinfo` (
  `id` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '主键',
  `subscribe` varchar(100) DEFAULT NULL COMMENT '是否关注',
  `openid` varchar(100) DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(200) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `country` varchar(100) DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(400) DEFAULT NULL COMMENT '用户头像',
  `bzName` varchar(100) DEFAULT NULL COMMENT '备注名称',
  `groupId` varchar(100) DEFAULT NULL,
  `subscribe_time` varchar(100) DEFAULT NULL COMMENT '关注时间',
  `addtime` datetime DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table weixin_hdrecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_hdrecord`;

CREATE TABLE `weixin_hdrecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `NICKNAME` varchar(200) DEFAULT NULL,
  `OPENDID` varchar(100) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_hdrecord` WRITE;
/*!40000 ALTER TABLE `weixin_hdrecord` DISABLE KEYS */;

INSERT INTO `weixin_hdrecord` (`ID`, `ADDTIME`, `HDID`, `NICKNAME`, `OPENDID`, `TOTAL`, `accountid`)
VALUES
	('402889ed472e852301472e8d20090002','2014-07-13 15:08:26','402880a9468a0bef01468a0e72840001','','oGCDRjvr9L1NoqxbyXLReCVYVyV0',2,NULL),
	('402889ed472e852301472e8e0b7e0003','2014-07-13 15:09:26','402881e6469a13b901469a1e9e420001','','oGCDRjvr9L1NoqxbyXLReCVYVyV0',2,NULL),
	('4028bc0647633a790147633d5ab10001','2014-07-23 20:41:11','402881e6469a13b901469a1e9e420001','','oGCDRjvr9L1NoqxbyXLReCVYVyV0',3,'402881e8461795c201461795c2e90000'),
	('4028bc0647633a790147633ee1f50002','2014-07-23 20:42:51','402880a9468a0bef01468a0e72840001','','oGCDRjvr9L1NoqxbyXLReCVYVyV0',1,'402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_hdrecord` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_huodong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_huodong`;

CREATE TABLE `weixin_huodong` (
  `id` varchar(100) NOT NULL COMMENT '键主',
  `title` varchar(400) DEFAULT NULL COMMENT '活动名称',
  `description` text COMMENT '活动描述',
  `priceone` varchar(400) DEFAULT NULL COMMENT '一等奖奖品',
  `onetotal` int(4) DEFAULT NULL COMMENT '一等奖数量',
  `pricetwo` varchar(400) DEFAULT NULL COMMENT '二等奖奖品',
  `twototal` int(4) DEFAULT NULL COMMENT '二等奖数量',
  `pricethree` varchar(400) DEFAULT NULL COMMENT '三等奖奖品',
  `threetotal` int(4) DEFAULT NULL COMMENT '三等奖数量',
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `type` varchar(100) DEFAULT NULL COMMENT '活动类型',
  `gl` varchar(100) DEFAULT NULL,
  `count` varchar(10) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_huodong` WRITE;
/*!40000 ALTER TABLE `weixin_huodong` DISABLE KEYS */;

INSERT INTO `weixin_huodong` (`id`, `title`, `description`, `priceone`, `onetotal`, `pricetwo`, `twototal`, `pricethree`, `threetotal`, `starttime`, `endtime`, `type`, `gl`, `count`, `accountid`)
VALUES
	('4028813a500247fa0150024a2fd50001','云图','云图','300元',1,'200元',2,'100元',3,'2015-09-25 10:16:26','2015-09-30 10:16:35','1','50%','1','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_huodong` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_menuentity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_menuentity`;

CREATE TABLE `weixin_menuentity` (
  `ID` varchar(32) NOT NULL,
  `menukey` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orders` varchar(11) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `fatherid` varchar(32) DEFAULT NULL,
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_astulwpsla864at9igbas3eic` (`fatherid`),
  CONSTRAINT `FK_astulwpsla864at9igbas3eic` FOREIGN KEY (`fatherid`) REFERENCES `weixin_menuentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_menuentity` WRITE;
/*!40000 ALTER TABLE `weixin_menuentity` DISABLE KEYS */;

INSERT INTO `weixin_menuentity` (`ID`, `menukey`, `msgtype`, `name`, `orders`, `templateid`, `type`, `url`, `fatherid`, `accountid`)
VALUES
	('402880ee513969270151396c68660004','shop','expand','商城','0','402881e9470273d2014702a94a1b001d','click','',NULL,'402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_menuentity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_mshop_ad
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_mshop_ad`;

CREATE TABLE `weixin_mshop_ad` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '链接地址',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '微信账号ID',
  `weixin_accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '原始ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_mshop_ad` WRITE;
/*!40000 ALTER TABLE `weixin_mshop_ad` DISABLE KEYS */;

INSERT INTO `weixin_mshop_ad` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `title`, `imgurl`, `url`, `accountid`, `weixin_accountid`)
VALUES
	(X'3430323838306566353232396634396130313532326139346163663530303561',X'313233343536','2016-01-10 16:08:52',X'313233343536','2016-01-10 16:13:37',X'E58FAFE58FA3E58FAFE4B9903530306D6C',X'75706C6F61642F66696C65732F323031363031313031363038333261686E574C3177512E6A7067',X'687474703A2F2F6D702E77656978696E2E71712E636F6D2F733F5F5F62697A3D4D7A49784E4441304E4441314E413D3D266D69643D323039333838353834266964783D3126736E3D6232323236323464353766633661633633613539666563383035386538366663237264',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132'),
	(X'3430323838313361353038643265373430313530386432663934623630303037',X'61646D696E','2015-10-22 09:35:17',X'313233343536','2015-12-31 11:42:50',X'E7BAA2E7B1B3E6898BE69CBA',X'75706C6F61642F66696C65732F3230313531303232303933353035356A6E6B55776D782E6A7067',X'353636',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132'),
	(X'3430323838313361353038643265373430313530386433303064383630303064',X'61646D696E','2015-10-22 09:35:48',X'',NULL,X'E5B08FE7B1B3E6898BE69CBA',X'75706C6F61642F66696C65732F3230313531303232303933353430456E724B3077746A2E6A7067',X'313233',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132'),
	(X'3430323838313361353166366431623830313531663737626432396130303038',X'313233343536','2015-12-31 18:01:06',X'',NULL,X'313233',X'75706C6F61642F66696C65732F323031353132333131383031303350616554506875372E6A7067',NULL,X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132');

/*!40000 ALTER TABLE `weixin_mshop_ad` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_mshop_cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_mshop_cart`;

CREATE TABLE `weixin_mshop_cart` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `price` double(13,2) DEFAULT NULL COMMENT '商品价格',
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '客户表',
  `goods_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  `spec` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  `id_store` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商店ID',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_mshop_cart` WRITE;
/*!40000 ALTER TABLE `weixin_mshop_cart` DISABLE KEYS */;

INSERT INTO `weixin_mshop_cart` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `price`, `count`, `id_customer`, `goods_name`, `id_goods`, `spec`, `id_store`, `imgurl`)
VALUES
	(X'3430323838306566353232396634396130313532326132656261393030303332',NULL,'2016-01-10 14:17:31',NULL,NULL,0.01,1,X'3430323838306566353232313933346630313532323161643762313330303061',X'E58FAFE58FA3E58FAFE4B9903530306D6C',X'3430323838306566353232396634396130313532326131326336653230303165',NULL,X'3430323838306566353232396634396130313532326130396363373330303063',X'75706C6F61642F66696C65732F3230313630313130313334363534796B5A695053544F2E6A7067');

/*!40000 ALTER TABLE `weixin_mshop_cart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_mshop_goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_mshop_goods`;

CREATE TABLE `weixin_mshop_goods` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `imgurl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `description` longtext COLLATE utf8_bin COMMENT '商品详情',
  `original_price` double DEFAULT NULL COMMENT '原价',
  `real_price` double DEFAULT NULL COMMENT '现价',
  `sale` double DEFAULT NULL COMMENT '折扣',
  `sell_count` int(11) DEFAULT NULL COMMENT '销售数量',
  `discuss_count` int(11) DEFAULT NULL COMMENT '评论数量',
  `good_count` int(11) DEFAULT NULL COMMENT '好评数量',
  `bad_count` int(11) DEFAULT NULL COMMENT '差评数量',
  `neutral_count` int(11) DEFAULT NULL COMMENT '中评数量',
  `statement` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `remove_time` datetime DEFAULT NULL COMMENT '下架时间',
  `shelve_time` datetime DEFAULT NULL COMMENT '上架时间',
  `id_category` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属类别',
  `id_store` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属店铺',
  `is_seckill` int(11) DEFAULT NULL COMMENT '是否秒杀',
  `is_special` int(11) DEFAULT NULL COMMENT '是否特价',
  `all_specs` longtext COLLATE utf8_bin COMMENT '所有规格',
  `is_selfsupport` int(11) DEFAULT NULL COMMENT '是否自营',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_mshop_goods` WRITE;
/*!40000 ALTER TABLE `weixin_mshop_goods` DISABLE KEYS */;

INSERT INTO `weixin_mshop_goods` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `name`, `imgurl`, `description`, `original_price`, `real_price`, `sale`, `sell_count`, `discuss_count`, `good_count`, `bad_count`, `neutral_count`, `statement`, `remove_time`, `shelve_time`, `id_category`, `id_store`, `is_seckill`, `is_special`, `all_specs`, `is_selfsupport`)
VALUES
	(X'3430323838306566353232396634396130313532326131326336653230303165',X'79616E6A69756469616E','2016-01-10 13:46:59',X'',NULL,X'E58FAFE58FA3E58FAFE4B9903530306D6C',X'75706C6F61642F66696C65732F3230313630313130313334363534796B5A695053544F2E6A7067','',NULL,0.01,NULL,1,NULL,NULL,NULL,NULL,X'30',NULL,'2016-01-10 13:46:59',X'3430323838306566353232396634396130313532326131323064333430303135',X'3430323838306566353232396634396130313532326130396363373330303063',0,0,X'2B',0),
	(X'3430323838306566353232396634396130313532326161323535656530303630',X'79616E6A69756469616E','2016-01-10 16:23:47',X'',NULL,X'E8B7B3E8B7B3E9B1BC',X'75706C6F61642F66696C65732F323031363031313031363232323842714B797A704E722E6A7067','',NULL,0.01,NULL,NULL,NULL,NULL,NULL,NULL,X'30',NULL,'2016-01-10 16:23:47',X'3430323838306566353232396634396130313532326131323332316430303137',X'3430323838306566353232396634396130313532326130396363373330303063',0,0,X'2B',0),
	(X'3430323838313361353133646262376630313531336464306230313230303038',X'313233','2015-11-25 16:44:25',X'',NULL,X'E8B186E5A5B6',X'75706C6F61642F66696C65732F32303135313132353136343432346D58476B5567566A2E706E67','',NULL,15.67,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:44:25',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E88D89E88E93E591B32BE891A1E89084E591B32BE985B8E5A5B6E591B3',0),
	(X'3430323838313361353133646262376630313531336464313464373130303062',X'313233','2015-11-25 16:45:06',X'',NULL,X'E8B186E5A5B632E58FB7',X'75706C6F61642F66696C65732F323031353131323531363435303467737473535269552E706E67','',NULL,17,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:45:06',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E698AF2BE590A62BE5819A',0),
	(X'3430323838313361353133646262376630313531336464316534366630303065',X'313233','2015-11-25 16:45:44',X'',NULL,X'E8B186E5A5B6E4B889E58FB7',X'75706C6F61642F66696C65732F323031353131323531363435343350314E7937384D742E706E67','',NULL,18,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:45:44',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E4B8802BE4BA8C2BE4B889',0),
	(X'3430323838313361353133646262376630313531336464323633393230303131',X'313233','2015-11-25 16:46:17',X'',NULL,X'E8B186E5A5B634E58FB7',X'75706C6F61642F66696C65732F323031353131323531363436313550376134796579342E706E67','',NULL,19,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:46:17',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E4BA942BE585AD2BE4B883',0),
	(X'3430323838313361353133646262376630313531336464343465613030303134',X'313233','2015-11-25 16:48:23',X'',NULL,X'E8B186E5A5B6E59B9BE58FB7',X'75706C6F61642F66696C65732F32303135313132353136343832314C664D356552344A2E706E67','',NULL,21,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:48:23',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E590A72BE689932BE79A84',0),
	(X'3430323838313361353133646262376630313531336464346534383530303137',X'313233','2015-11-25 16:49:01',X'',NULL,X'E8B186E5A5B6E585ADE58FB7',X'75706C6F61642F66696C65732F32303135313132353136343835393355334C736554352E706E67','',NULL,23,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:49:01',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E7BAA72BE5858BE5A4A7E891B12BE587A0E58D81E59D97E992B1',0),
	(X'3430323838313361353133646262376630313531336464356266616530303161',X'313233','2015-11-25 16:49:57',X'',NULL,X'E9A39FE59381E4B880E58FB7',X'75706C6F61642F66696C65732F323031353131323531363439353650327A6574714F732E706E67','',NULL,16,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:49:57',X'3430323838313361353133646262376630313531336463666432353630303033',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E593AAE4B8AAE8A18CE4B89A2BE8A781E8B081E983BD2BE789B2E58FA3',0),
	(X'3430323838313361353133646262376630313531336464363235343630303164',X'313233','2015-11-25 16:50:23',X'',NULL,X'E794A8E59381E4B880E58FB7',X'75706C6F61642F66696C65732F323031353131323531363530323265484862676638422E706E67','',NULL,55,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:50:23',X'3430323838313361353133646262376630313531336463666632636530303035',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E5A5A5E5BEB7E8B59B2BE59D87E696B9E6A0B92BE9A9BDE9929D',0),
	(X'3430323838313361353133646262376630313531336464373033666630303230',X'313233','2015-11-25 16:51:20',X'',NULL,X'E794A8E59381E4BA8CE58FB7',X'75706C6F61642F66696C65732F323031353131323531363531313946735435597665542E706E67','',NULL,22,NULL,0,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:51:20',X'3430323838313361353133646262376630313531336463666632636530303035',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'E4BB8EE8849AE5BA95E4B88A2BE8A792E5BAA6E79C8B2BE79A84E5B0B1E6ADBBE593A6',0),
	(X'3430323838313361353133646262376630313531336464376334366530303233',X'313233','2015-11-25 16:52:09',X'',NULL,X'E8B186E5A5B6E4B883E58FB7',X'75706C6F61642F66696C65732F3230313531313235313635323038384633473944554B2E706E67','',NULL,0.01,NULL,31,NULL,NULL,NULL,NULL,X'30',NULL,'2015-11-25 16:52:09',X'3430323838313361353133646236646130313531336462373563376530303031',X'3430323838313361353038643938333230313530386461323362616630303036',0,0,X'2B',0);

/*!40000 ALTER TABLE `weixin_mshop_goods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_mshop_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_mshop_order`;

CREATE TABLE `weixin_mshop_order` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `code` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '订单号',
  `status` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `receiver_name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人',
  `phone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人手机号',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '客户ID',
  `total_count` int(11) DEFAULT NULL COMMENT '总商品数',
  `total_price` double(13,2) DEFAULT NULL COMMENT '总价格 含邮费',
  `freight` double(13,2) DEFAULT NULL COMMENT '邮费',
  `message` varchar(5000) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `id_store` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺ID',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '微信账号ID',
  `weixin_accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '原始ID',
  `id_order_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '订单商品ID',
  `express_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '快递名称',
  `express_num` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '运单号',
  `nickname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '微信昵称',
  `distribution_mode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '配送方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_mshop_order` WRITE;
/*!40000 ALTER TABLE `weixin_mshop_order` DISABLE KEYS */;

INSERT INTO `weixin_mshop_order` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `code`, `status`, `address`, `receiver_name`, `phone`, `id_customer`, `total_count`, `total_price`, `freight`, `message`, `id_store`, `accountid`, `weixin_accountid`, `id_order_goods`, `express_name`, `express_num`, `nickname`, `distribution_mode`)
VALUES
	(X'3430323838306566353232356338643130313532323563616337643130303032',NULL,'2016-01-09 17:49:52',NULL,NULL,X'31363031303931373439353231',X'34',X'E58C85E5A4B4E5B88220E99D92E5B1B1E58CBA2020E78FADE5B9B2E983A8',X'E7AD893131',X'3133363834373232333539',X'3430323838306565353133393935343430313531333961333032393730303035',1,0.01,0.00,X'',X'3430323838313361353038643938333230313530386461323362616630303036',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E696872020E69DB0',X'30'),
	(X'3430323838306566353232366536386630313532323665643133353430303032',NULL,'2016-01-09 23:06:57',NULL,NULL,X'31363031303932333036353731',X'32',X'E58C85E5A4B4E5B88220E4B89CE6B2B3E58CBA2020E58C85E5A4B4E5B882E4B89CE6B2B3E58CBAE5928CE5B9B3E8B7AFE4B89CE59B9BE58CBAE4B880E58FB7E5BA95E5BA97',X'E983ADE69993E7A38A',X'3133393437323737303333',X'3430323838306566353232313933346630313532323161643762313330303061',1,0.01,0.00,X'E595A6E59294E59294',X'3430323838313361353038643938333230313530386461323362616630303036',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E595B8E69E97',X'30'),
	(X'3430323838306566353232396634396130313532326131623966636330303236',NULL,'2016-01-10 13:56:39',NULL,NULL,X'31363031313031333536333931',X'32',X'E58C85E5A4B4E5B88220E4B89CE6B2B3E58CBA2020E58C85E5A4B4E5B882E4B89CE6B2B3E58CBAE5928CE5B9B3E8B7AFE4B89CE59B9BE58CBAE4B880E58FB7E5BA95E5BA97',X'E983ADE69993E7A38A',X'3133393437323737303333',X'3430323838306566353232313933346630313532323161643762313330303061',1,0.01,0.00,X'',X'3430323838306566353232396634396130313532326130396363373330303063',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E595B8E69E97',X'30'),
	(X'3430323838306566353232396634396130313532326161643162373930303634',NULL,'2016-01-10 16:35:33',NULL,NULL,X'31363031313031363335333331',X'30',X'6E756C6C20206E756C6C',NULL,NULL,X'3430323838306566353232316238633530313532323163313137333030303134',0,5.00,5.00,X'',X'3430323838306566353232396634396130313532326130396363373330303063',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E78CAAE5A4B4E5B08FE4B8B8E5AD90',X'30'),
	(X'3430323838306566353232396634396130313532326161643238643730303635',NULL,'2016-01-10 16:35:37',NULL,NULL,X'31363031313031363335333732',X'30',X'6E756C6C20206E756C6C',NULL,NULL,X'3430323838306566353232316238633530313532323163313137333030303134',0,5.00,5.00,X'',X'3430323838306566353232396634396130313532326130396363373330303063',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E78CAAE5A4B4E5B08FE4B8B8E5AD90',X'30'),
	(X'3430323838306566353232396634396130313532326161646463323330303636',NULL,'2016-01-10 16:36:23',NULL,NULL,X'31363031313031363336323333',X'30',X'E58C85E5A4B4E5B88220E4B89CE6B2B3E58CBA2020E5928CE5B9B3E8B7AFE4B89CE59B9BE58CBAE58D81E59B9BE58FB731E58FB7E5BA95E5BA97',X'E69CB1E78795E88DA3',X'3135383439323539333039',X'3430323838306566353232316238633530313532323163313137333030303134',0,5.00,5.00,X'',X'3430323838306566353232396634396130313532326130396363373330303063',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E78CAAE5A4B4E5B08FE4B8B8E5AD90',X'30'),
	(X'3430323838306566353232396634396130313532326162316566383030303661',NULL,'2016-01-10 16:40:50',NULL,NULL,X'31363031313031363430353031',X'30',X'E58C85E5A4B4E5B88220E99D92E5B1B1E58CBA2020E78FADE5B9B2E983A8',X'E7AD893131',X'3133363834373232333539',X'3430323838306565353133393935343430313531333961333032393730303035',1,5.01,5.00,X'',X'3430323838313361353038643938333230313530386461323362616630303036',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,X'E696872020E69DB0',X'30');

/*!40000 ALTER TABLE `weixin_mshop_order` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_mshop_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_mshop_store`;

CREATE TABLE `weixin_mshop_store` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `mobile_phone` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `office_phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `store_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺名称',
  `username` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `descriptions` text COLLATE utf8_bin COMMENT '店铺简介',
  `status` int(6) DEFAULT NULL COMMENT '店铺状态',
  `id_type` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '类别ID',
  `start_time` datetime DEFAULT NULL COMMENT '营业开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '营业结束时间',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '微信账户ID',
  `weixin_accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '原始ID冗余',
  `id_user` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ID',
  `orders` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '顺序',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺LOGO',
  `is_recommend` int(2) DEFAULT NULL COMMENT '是否是推荐店铺',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_mshop_store` WRITE;
/*!40000 ALTER TABLE `weixin_mshop_store` DISABLE KEYS */;

INSERT INTO `weixin_mshop_store` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `mobile_phone`, `office_phone`, `store_name`, `username`, `password`, `email`, `descriptions`, `status`, `id_type`, `start_time`, `end_time`, `accountid`, `weixin_accountid`, `id_user`, `orders`, `imgurl`, `is_recommend`)
VALUES
	(X'3430323838306566353162643636303730313531626437613062323230303034',X'61646D696E',NULL,X'313233343536','2016-01-10 14:21:11',X'3133363834373232333539',X'3535353737',X'E9BE99E885BEE58FA4E5A49C',X'32363839373636343836',X'',X'3737353734373735384071712E636F',X'E59CB0E59D80EFBC9AE99D92E5B1B1E58CBAE69687E58C96E8B7AF333939E58FB7',1,X'3430323838313361353035623233396330313530356232343339393130303031','1970-01-01 07:39:00','1970-01-01 23:41:00',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838306566353162643636303730313531626437613062316430303033',X'35',X'75706C6F61642F66696C65732F32303135313232303131343034355170386A427A41452E6A7067',0),
	(X'3430323838306566353165336534303830313531653365396566643730303033',X'313233343536','2015-12-27 22:48:58',X'313233343536','2015-12-31 14:22:21',X'3138383638383331363936',X'31323333',X'E6B58BE8AF95E8A784E58892',X'303938373635',X'363534333231',X'',X'313233323332',100,X'3430323838313361353066616130336430313530666161306465616630303032','1970-01-01 09:43:00','1970-01-01 22:44:30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838306566353165336534303830313531653365363366383830303032',X'35',X'75706C6F61642F66696C65732F323031353132323732323434343361684251735869342E6A706567',1),
	(X'3430323838306566353232313933346630313532323162333630303530303064',X'313233343536',NULL,X'313233343536','2016-01-10 14:21:21',X'3135383439323539333039',X'',X'E9A9BFE9A9ACE4BEBFE588A9',X'7A687579616E726F6E67',X'',X'3935383635353434334071712E636F6D',X'7A6869797075',1,X'3430323838313361353066616130336430313530666161306465616630303032','1970-01-01 08:45:05','1970-01-01 23:45:15',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838306566353232313933346630313532323162333630303130303063',X'31',X'75706C6F61642F66696C65732F323031363031313031323232343377783777484F694D2E6A706567',1),
	(X'3430323838306566353232396234343830313532323964303366653230303065',X'313233343536',NULL,X'313233343536','2016-01-10 14:21:33',X'3135393439323539333039',X'',X'E5AEB6E5928CE8B685E5B882',X'7869616F77616E7A69',X'',X'',X'313233343536',1,X'3430323838313361353035623233396330313530356232343339393130303031','1970-01-01 07:34:11','1970-01-01 23:34:18',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838306566353232396234343830313532323964303366646430303064',X'33',X'75706C6F61642F66696C65732F32303136303131303132333431307A5A6952517857382E6A7067',0),
	(X'3430323838306566353232396634396130313532326130396363373330303063',X'313233343536',NULL,X'313233343536','2016-01-10 14:33:02',X'3135383439323539333039',X'363636',X'383838E7839FE98592E5BA97',X'79616E6A69756469616E',X'796A64313233',X'3935383635353434334071712E636F6D',X'313233343536',1,X'3430323838313361353066616130336430313530666161306465616630303032','1970-01-01 07:36:40','1970-01-01 23:36:45',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838306566353232396634396130313532326130396363373130303062',X'31',X'75706C6F61642F66696C65732F32303136303131303133333635386A426176614465752E6A7067',0),
	(X'3430323838313361353035613730643930313530356137323162303030303032',X'61646D696E',NULL,X'313233343536','2016-01-10 14:21:47',X'3133373537333634383539',X'',X'E782ABE9AD85E698A5E889B2',X'323635383635',X'323635383635',X'373735374071712E636F6D',X'3C703E353636363C2F703E',1,X'3430323838313361353035623233396330313530356232343339393130303031','1970-01-01 01:04:00','1970-01-01 23:07:00',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838313361353035613730643930313530356137323161653830303031',X'32',X'75706C6F61642F66696C65732F3230313531303232313135333030526D5842574B47682E6A7067',1),
	(X'3430323838313361353038643938333230313530386461323362616630303036',X'61646D696E',NULL,X'313233343536','2016-01-10 14:21:59',X'',X'343434',X'E882AFE5BEB7E59FBA',X'313233',X'313233343536',X'',X'3C703E353636363C2F703E',1,X'3430323838313361353035623233396330313530356232343339393130303031','1970-01-01 06:37:00','1970-01-01 23:37:30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838313361353038643938333230313530386461323362613830303035',X'31',X'75706C6F61642F66696C65732F323031353130323231313435303742654132534B72302E6A7067',1),
	(X'3430323838313361353038646133653330313530386461393335336430303036',X'61646D696E',NULL,X'313233343536','2016-01-10 14:22:08',X'3133373537333634383539',X'',X'E88D89E59186E4B98BE69CAC',X'31323334',X'313233343536',X'',X'353535',1,X'3430323838313361353035623233396330313530356232343339393130303031','1970-01-01 11:46:00','1970-01-01 23:47:30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838313361353038646133653330313530386461393335333630303035',X'33',X'75706C6F61642F66696C65732F3230313531303232313134383035594F333764444C632E6A7067',1),
	(X'3430323838313361353038646133653330313530386461396665623530303062',X'61646D696E',NULL,X'313233343536','2016-01-10 14:22:19',X'3133373537333634383539',X'3434343434',X'E5AE89E5AE89E78398E78499',X'3132333435',X'',X'',X'373737',1,X'3430323838313361353035623233396330313530356232343339393130303031','1970-01-01 11:47:00','1970-01-01 23:48:00',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'3430323838313361353038646133653330313530386461396665623030303061',X'34',X'75706C6F61642F66696C65732F323031353130323231313438353745497767794C55762E6A7067',1);

/*!40000 ALTER TABLE `weixin_mshop_store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_mshop_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_mshop_type`;

CREATE TABLE `weixin_mshop_type` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_mshop_type` WRITE;
/*!40000 ALTER TABLE `weixin_mshop_type` DISABLE KEYS */;

INSERT INTO `weixin_mshop_type` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `name`)
VALUES
	(X'3430323838313361353035623233396330313530356232343339393130303031',X'61646D696E','2015-10-12 16:21:52',X'',NULL,X'E6B0B4E69E9C'),
	(X'3430323838313361353066616130336430313530666161306465616630303031',X'61646D696E','2015-11-12 15:37:38',X'',NULL,X'E5A496E58D96'),
	(X'3430323838313361353066616130336430313530666161306465616630303032',X'61646D696E','2015-12-02 09:06:11',NULL,NULL,X'E8B685E5B882');

/*!40000 ALTER TABLE `weixin_mshop_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_newsitem
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_newsitem`;

CREATE TABLE `weixin_newsitem` (
  `ID` varchar(32) NOT NULL,
  `new_type` varchar(255) DEFAULT NULL COMMENT '图文类型：图文还是外部url',
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `templateid` varchar(32) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '外部URL',
  `create_date` date DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m8qs8ufeqkk5cx17budto66r0` (`templateid`),
  CONSTRAINT `FK_m8qs8ufeqkk5cx17budto66r0` FOREIGN KEY (`templateid`) REFERENCES `weixin_newstemplate` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_newsitem` WRITE;
/*!40000 ALTER TABLE `weixin_newsitem` DISABLE KEYS */;

INSERT INTO `weixin_newsitem` (`ID`, `new_type`, `author`, `content`, `description`, `imagepath`, `orders`, `title`, `templateid`, `url`, `create_date`, `accountid`)
VALUES
	('402889ed472e852301472eb0d680000e',NULL,'google','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \"><strong><strong>JeeWx,&nbsp;</strong>敏捷微信开发，简称&quot;</strong><strong style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; font-size: xx-large; line-height: 48px;\">捷微</strong><strong style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; font-size: xx-large; line-height: 1.5;\">&quot;.</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \"><strong>捷微是一款免费开源的JAVA微信公众账号</strong></span><strong style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; font-size: 16px; line-height: 1.5;\">开发平台.</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/><img src=\"http://dl2.iteye.com/upload/attachment/0098/8103/2bd30f19-2af5-368f-ba38-b3a5b37327a0.png\" alt=\"\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; \"/></p><p><span style=\"font-size: 16px; \"><strong>平台介绍：</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">一、简介</span></strong></p><p><span style=\"font-size: 16px; \">jeewx是一个开源，高效，敏捷的微信开发平台 ，&nbsp;采用JAVA语言它是基于<a target=\"_blank\" href=\"http://zhangdaiscott.github.io/jeecg/\" style=\"color: rgb(51, 102, 153);\">jeecg</a>这个企业级快速开发框架实现的。</span></p><p><span style=\"font-size: 16px; \">jeewx的目的是最大化的简化微信开发的流程，使用开发者能把最好的精力放到微信具体业务开发，并能以最快的时间完成。把一些常规而频繁的工作交由jeewx来处理即可，平台兼备的代码生成器，在线开发，可以快速的完成企业应用。为此jeewx提供了详细的二次开发文档，关键代码里还是相关的注释说明。jeewx采用插件的方式实现微信功能，不同的插件实现不同的微信功能。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">主要特性</span></strong></p><p><span style=\"font-size: 16px; \">1、基于快速开发平台<a target=\"_blank\" href=\"http://zhangdaiscott.github.io/jeecg/\" style=\"color: rgb(51, 102, 153);\">jeecg 3.4.4</a>最新版本，采用SpringMVC+Hibernate4+UI库+代码生成器+Jquery+Ehcache等主流架构技术</span></p><p><span style=\"font-size: 16px; \">2、支持企业快速开发，完善的用户组织机构，报表，强大的代码生成器快速有效的提高开发效率</span></p><p><span style=\"font-size: 16px; \">2、开源免费，jeewx遵循Apache2开源协议,免费提供使用。</span></p><p><span style=\"font-size: 16px; \">3、支持多用户多公众号管理</span></p><p><span style=\"font-size: 16px; \">4、详细的二次开发文档，并不断更新增加相关开发案例提供学习参考</span></p><p><span style=\"font-size: 16px; \">5、微信功能插件化开发，更易于定制和二次开发</span></p><p><span style=\"font-size: 16px; \">6、提供丰富的微信插件下载安装使用，总有一些是符合或接近你的需求</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">主要功能</span></strong></p><p><span style=\"font-size: 16px; \">1、微信接口认证</span></p><p><span style=\"font-size: 16px; \">2、菜单自定义</span></p><p><span style=\"font-size: 16px; \">3、文本管理和回复</span></p><p><span style=\"font-size: 16px; \">4</span><span style=\"font-size: 16px; \">、关注欢迎语</span></p><p><span style=\"font-size: 16px; \">5、关键字管理</span></p><p><span style=\"font-size: 16px; \">6、文本消息管理</span></p><p><span style=\"font-size: 16px; \">7、图文 消息管理</span></p><p><span style=\"font-size: 16px; \">8、微信账号管理</span></p><p><span style=\"font-size: 16px; \">9、用户管理</span></p><p><span style=\"font-size: 16px; \">10、角色管理</span></p><p><span style=\"font-size: 16px; \">11、菜单管理</span></p><p><span style=\"font-size: 16px; \">12、微信支持多用户多公众号</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong>后续发布功能：</strong></p><p><span style=\"font-size: 16px; \">1、微信大转盘</span></p><p><span style=\"font-size: 16px; \">2</span><span style=\"font-size: 16px; \">、微信刮刮乐</span></p><p><span style=\"font-size: 16px; \">3、微信CMS</span></p><p><span style=\"font-size: 16px; \">4</span><span style=\"font-size: 16px; \">、周边</span></p><p><span style=\"font-size: 16px; \">5、&nbsp;微信群发</span></p><p><span style=\"font-size: 16px; \">6</span><span style=\"font-size: 16px; \">、&nbsp;微信关注用户分组</span></p><p><span style=\"font-size: 16px; \">7、微信关注用户、</span></p><p><span style=\"font-size: 16px; \">8</span><span style=\"font-size: 16px; \">、微信扫描登录</span></p><p><span style=\"font-size: 16px; \">9</span><span style=\"font-size: 16px; \">、会员管理</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">最低系统需求</span></strong></p><p><span style=\"font-size: 16px; \">Tomcat6.0 或更高版本。</span></p><p><span style=\"font-size: 16px; \">MySQL 5.0 或更高版本。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \">MyEclipse8.5或其他版本。</span><span style=\"font-size: 16px; \">&nbsp;</span><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><span style=\"font-size: 16px; \"><strong>源码下载地址：</strong></span><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><span style=\"font-size: 16px; \">&nbsp; &nbsp; &nbsp;</span><a href=\"https://code.csdn.net/zhangdaiscott/jeewx\" style=\"color: rgb(0, 102, 153);\"><span style=\"font-size: 16px; \">https://code.csdn.net/zhangdaiscott/jeewx</span></a><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><strong style=\"color: rgb(68, 68, 68); font-family: 黑体; font-size: large; line-height: 27px;\">文档下载地址：</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp; &nbsp;链接: http://pan.baidu.com/s/1i3LxLmH 密码: j3co&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">系统安装</span></strong></p><p><span style=\"font-size: 16px; \">1、将jeewx压缩包解压并上传到服务器。</span></p><p><span style=\"font-size: 16px; \">2、首次在浏览器中访问&nbsp;http://localhost:8080/jeewx/</span><span style=\"font-size: 16px; \">，默认admin登录，一个账号只能配置一个微信公众账号。</span></p><p><span style=\"font-size: 16px; \">3、按照安技术文档完成安装，如果有问题请访问官网讨论区寻求帮助。</span></p><p><span style=\"font-size: 16px; \">4、服务器配置&nbsp; &nbsp;&nbsp; &nbsp;</span></p><p><span style=\"font-size: 16px; \">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;URL:&nbsp; &nbsp;<a target=\"_blank\" href=\"http://xn--%2A%2A-r20k9d/jeewx/wechatController.do?wechat\" style=\"color: rgb(51, 102, 153);\">http://*地址*/jeewx/wechatController.do?wechat</a></span></p><p><span style=\"font-size: 16px; \">&nbsp; &nbsp;&nbsp; &nbsp;Token:&nbsp;&nbsp;jeecg<br/>5.云服务平台建议，可以采用<a target=\"_blank\" href=\"http://www.mopaas.com/\" style=\"color: rgb(51, 102, 153);\">MoPaaS</a></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><strong><span style=\"font-size: 16px; \">联系方式：</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">QQ &nbsp;群 : 287090836，129190229，175449166</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">官网: &nbsp; &nbsp;<a target=\"_blank\" href=\"http://www.jeewx.com/\" style=\"color: rgb(51, 102, 153);\">http://www.jeewx.com</a><br/>邮箱： &nbsp; jeecg@sina.com</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \">系统首页展示：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/><img src=\"http://dl2.iteye.com/upload/attachment/0098/8101/e537f9a2-60dd-3b47-8294-21f3e4efa6cd.jpg\" alt=\"\" title=\"点击查看原始大小图片\" class=\"magplus\" style=\"border: 0px; cursor: url(http://www.iteye.com/images/magplus.gif), pointer; \" height=\"406\" width=\"650\"/><br/>&nbsp;<span style=\"font-size: 16px; \"><br/><img src=\"http://dl2.iteye.com/upload/attachment/0098/8099/cf2026b3-2cf6-3577-a37d-293c3e27def6.jpg\" alt=\"\" title=\"点击查看原始大小图片\" class=\"magplus\" style=\"border: 0px; cursor: url(http://www.iteye.com/images/magplus.gif), pointer; \" height=\"426\" width=\"650\"/><br/>&nbsp;</span></p><p><br/></p>','google','upload/files/20140713154642E71rUQGZ.gif','1','google','402889ed472e852301472eae90680008','',NULL,'402881e8461795c201461795c2e90000'),
	('4028bc064763571d01476358bc210004',NULL,'zhangsan','<h1 style=\"margin: 0px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 30px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG 智能开发平台</h1><h2 style=\"margin: 0px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">前言：</h2><p style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">随着 WEB UI 框架 ( EasyUI/Jquery UI/Ext/DWZ) 等的逐渐成熟,系统界面逐渐实现统一化，代码生成器也可以生成统一规范的界面！ 代码生成+手工MERGE半智能开发将是新的趋势，单表数据模型和一对多数据模型的增删改查功能直接生成使用,可节省60%工作量，快速提高开发效率！！！</p><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">简介</h2><p style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG（J2EE Code Generation）是一款基于代码生成器的智能开发平台。引领新的开发模式(Online Coding模式-&gt;代码生成器模式-&gt;手工MERGE智能开发)， 可以帮助解决Java项目60%的重复工作，让开发更多关注业务逻辑。既能快速提高开发效率，帮助公司节省人力成本，同时又不失灵活性。</p><p style=\"margin: 15px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG宗旨是: 简单功能由代Online Coding配置出功能;复杂功能由代码生成器生成进行手工Merge; 复杂流程业务采用表单自定义，业务流程使用工作流来实现、扩展出任务接口，供开发编写业务逻辑。实现了流程任务节点和任务接口的灵活配置，既保证了公司流程的保密行，又减少了开发人员的工作量。</p><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">为什么选择JEECG?</h2><ul class=\" list-paddingleft-2\" style=\"margin: 15px 0px; padding: 0px 0px 0px 30px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \"><li><p>1.采用主流框架，容易上手; 代码生成器依赖性低,很方便的扩展能力，可完全实现二次开发;</p></li><li><p>2.开发效率很高,采用代码生成器，单表数据模型和一对多(父子表)数据模型，增删改查功能自动生成，菜单配置直接使用；</p></li><li><p>3.页面校验自动生成(必须输入、数字校验、金额校验、时间空间等);</p></li><li><p>4.封装完善的用户基础权限和数据字典等基础功能，直接使用无需修改</p></li><li><p>5.常用共通封装，各种工具类(定时任务,短信接口,邮件发送,Excel导出等),基本满足80%项目需求</p></li><li><p>6.集成简易报表工具，图像报表和数据导出非常方便，可极其方便的生成pdf、excel、word等报表；</p></li><li><p>7.集成工作流activiti，并实现了只需在页面配置流程转向，可极大的简化jbpm工作流的开发；用jbpm的流程设计器画出了流程走向，一个工作流基本就完成了，只需写很少量的java代码；</p></li><li><p>8.UI快速开发库，针对WEB UI进行标准式封装，页面统一采用自定义标签实现功能：列表数据展现、页面校验等,标签使用简单清晰且便于维护</p></li><li><p>9.在线流程设计，采用开源Activiti流程引擎，实现在线画流程,自定义表单,表单挂靠,业务流转</p></li><li><p>10.查询条件生成器：查询功能自动生成，后台动态拼SQL追加查询条件；支持多种匹配方式（全匹配/模糊查询/包含查询/不匹配查询）；</p></li></ul><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG 适用范围</h2><p style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG智能开发平台，可以应用在任何J2EE项目的开发中，尤其适合企业信息管理系统（MIS）、内部办公系统（OA）、企业资源计划系统（ERP） 、客户关系管理系统（CRM）等，其半智能手工Merge的开发方式，可以显著提高开发效率60%以上，极大降低开发成本。</p><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG 功能特点</h2><ul class=\" list-paddingleft-2\" style=\"margin: 15px 0px; padding: 0px 0px 0px 30px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \"><li><p>JEECG V3.0版本采用SpringMVC+Hibernate+UI快速开发库+Spring jdbc+ freemarker+ Highcharts+ bootstrap+Ehcache 的基础架构<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">采用面向声明的开发模式， 基于泛型编写极少代码即可实现复杂的数据展示、数据编辑、 表单处理等功能，再配合Online Coding在线开发与代码生成器的使用,将J2EE的开发效率提高6倍以上，可以将代码减少80%以上。<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">JEECG V3.0版本六大技术点: 1.Online Coding (通过在线配置实现一个表模型的增删改查功能，无需一行代码，支持用户自定义表单布局)2.代码生成器 3.UI快速开发库 4.在线流程设计 5.系统日志记录 6.Web GIS支持 7.移动平台支持Bootstrap(兼容Html5) 8.动态报表9.查询过滤器<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点一：</strong>Online Coding开发模式（通过配置实现单表模型和一对多数据模型的增删改查功能,No 代码,支持用户自定义表单布局）<span class=\"Apple-converted-space\">&nbsp;</span><br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点二：</strong>代码生成器，支持多种数据模型,根据表生成对应的Entity,Service,Dao,Action,JSP等,增删改查功能生成直接使用<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点三：</strong>UI快速开发库，针对WEB UI进行标准封装，页面统一采用UI标签实现功能：数据datagrid,表单校验,Popup,Tab等，实现JSP页面零JS，开发维护非常高效<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点四：</strong>在线流程定义，采用开源Activiti流程引擎，实现在线画流程,自定义表单,表单挂接,业务流转，流程监控，流程跟踪，流程委托等<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点五：</strong>系统日志记录 (详细记录操作日志)<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点六：</strong>Web GIS支持 （基础技术GIS的支持）<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点七：</strong>移动平台支持，对Bootstrap(兼容Html5)进行标准封装<span class=\"Apple-converted-space\">&nbsp;</span><br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点八：</strong>动态报表功能（用户输入一个sql，系统自动解析生成报表）<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">JEECG V3.0,经过了专业压力测试,性能测试，保证后台数据的准确性和页面访问速度<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">支持多种浏览器: IE, 火狐, Google 等<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">支持数据库: Mysql,Oracle10g,Postgre,SqlServer等<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">基础权限: 用户，角色，菜单权限，按钮权限，数据权限<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">智能报表集成: 简易的图像报表工具和Excel导入导出<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">Web容器测试通过的有Jetty和Tomcat6,Weblogic<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">即将推出功能：分布式部署，云平台，移动平台开发，规则引擎<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">要求JDK1.6+<br style=\"margin: 0px; padding: 0px; \"/></p></li></ul><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">系统演示</h2><p><br/></p>','zhangsan','upload/files/20140723211027iPYMKOfy.jpg','1','zhangsan','4028bc064763571d01476357b2f10001','','2014-07-23','402881e8461795c201461795c2e90000'),
	('4028d881472f0d8101472f154b120003',NULL,'张三','<p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><strong><span style=\"font-size: 18px; \">初步设想：</span></strong></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">通过中间件配置，将一个在用的业务系统转化为简版的移动应用。</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>实现方法：</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">当前移动应用解决方案很多：app?html5？微信</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">采用何种方法来实现？对于一个企业来讲，app分andriod和ios开发，维护成本很高，采用html5是一个不错的选择！</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">这里我们选择html5来实现移动的应用转换，采用微信作为中间平台，来实现便捷的移动端，因为他已经实现了多平台的兼容性，这块的技术问题，我们不需要再处理；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">只需要保证我们开发的页面兼容微信网页即可；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>如何实现一个应用系统的轻量级转化呢？而不用重新开发代码</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">最好的方法就是通过配置方式，讲应用功能转化为移动的功能，既可以在PC段使用，也可以在移动端使用；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>移动端主要功能点：</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">1. 首页（菜单页面）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">2. 数据列表</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">3. 表单录入页面</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">通过这么一种配置方式，可以配置列表需要展示的字段，另外表单配置，配置表单展示的字段和字段的校验规则；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">这样的话，功能需要的配置已经OK，下面我们采用模板语言freemarker写一套通用的模板兼容手机，pad，pc段即可（用户想要不同的效果，只需要改模板即可）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>具体实现方法：</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">1. 一个微信注册器（为什么需要这个，通过这个可以与微信服务器做很多交流，比如大转盘，推送信息等等）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">2. &nbsp;手机端的登录页面（与后台业务系统的交互）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">3. 移动端的首页（功能菜单展示）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">4. 移动的数据列表</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">5. 移动表单（复杂的功能采用java增强+表单的模式）</p><p><br/></p>','张三是简历','upload/files/20140713173643LtfDgtJW.png','1','个人简历','402889ed472e852301472eae90680008',NULL,'2014-07-13','402881e8461795c201461795c2e90000'),
	('4028d881472f356e01472f36d0a00003',NULL,'中央广播电台1','<p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴2</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p><br/></p>','金融风暴2','upload/files/20140715000625jz067Iqi.gif','1','新闻联播1','4028d881472f356e01472f36461b0001','','2014-07-13','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_newsitem` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_newstemplate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_newstemplate`;

CREATE TABLE `weixin_newstemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `tempatename` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_newstemplate` WRITE;
/*!40000 ALTER TABLE `weixin_newstemplate` DISABLE KEYS */;

INSERT INTO `weixin_newstemplate` (`ID`, `addtime`, `tempatename`, `type`, `accountid`)
VALUES
	('402889ed472e852301472eae90680008','2014-07-13 15:44:57','1221','common','402881e8461795c201461795c2e90000'),
	('4028bc064763571d01476357b2f10001','2014-07-23 21:09:57','999988','common','402881e8461795c201461795c2e90000'),
	('4028d881472f356e01472f36461b0001','2014-07-13 18:13:11','我的图文','common','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_newstemplate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_photo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_photo`;

CREATE TABLE `weixin_photo` (
  `ID` varchar(32) NOT NULL,
  `PHOTO_ALBUM_ID` varchar(32) DEFAULT NULL COMMENT '对应相册',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相片描述',
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相片名字',
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_photo` WRITE;
/*!40000 ALTER TABLE `weixin_photo` DISABLE KEYS */;

INSERT INTO `weixin_photo` (`ID`, `PHOTO_ALBUM_ID`, `CONTENT`, `CREATE_BY`, `CREATE_DATE`, `NAME`, `UPDATE_BY`, `UPDATE_DATE`)
VALUES
	('4028813a4ff30a9d014ff31bc2a90006','402880e6478c6d8201478c72a6f00006',NULL,'4028d881436d514601436d5215ac0043','2015-09-22 11:32:07','未命名','4028d881436d514601436d5215ac0043','2015-09-22 11:32:07'),
	('4028813a4ff30a9d014ff31bc2e90007','402880e6478c6d8201478c72a6f00006',NULL,'4028d881436d514601436d5215ac0043','2015-09-22 11:32:07','未命名','4028d881436d514601436d5215ac0043','2015-09-22 11:32:07'),
	('4028813a4ff30a9d014ff31bc3440008','402880e6478c6d8201478c72a6f00006',NULL,'4028d881436d514601436d5215ac0043','2015-09-22 11:32:07','未命名','4028d881436d514601436d5215ac0043','2015-09-22 11:32:07'),
	('402881e547bb946e0147bb98361a0015','402880e6478c6d8201478c72a6f00006','11111','4028d881436d514601436d5215ac0043','2014-08-10 00:27:00','123','4028d881436d514601436d5215ac0043','2015-09-21 09:35:15');

/*!40000 ALTER TABLE `weixin_photo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_photo_album
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_photo_album`;

CREATE TABLE `weixin_photo_album` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相册名称',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相册描述',
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `PHOTO_ID` varchar(32) DEFAULT NULL COMMENT '封面相片',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_photo_album` WRITE;
/*!40000 ALTER TABLE `weixin_photo_album` DISABLE KEYS */;

INSERT INTO `weixin_photo_album` (`ID`, `NAME`, `CONTENT`, `ACCOUNTID`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`, `PHOTO_ID`)
VALUES
	('402880e6478c6d8201478c72a6f00006','相册','张代浩相册','402881e8461795c201461795c2e90000','2014-07-31 20:43:49','4028d881436d514601436d5215ac0043','2014-08-10 00:27:02','4028d881436d514601436d5215ac0043','402881e547bb946e0147bb98361a0015');

/*!40000 ALTER TABLE `weixin_photo_album` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_prizerecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_prizerecord`;

CREATE TABLE `weixin_prizerecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `MOBILE` varchar(100) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `PRIZE` varchar(100) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_prizerecord` WRITE;
/*!40000 ALTER TABLE `weixin_prizerecord` DISABLE KEYS */;

INSERT INTO `weixin_prizerecord` (`ID`, `ADDTIME`, `HDID`, `MOBILE`, `openid`, `PRIZE`, `accountid`)
VALUES
	('402889ed472e852301472e8f9a450004','2014-07-13 15:11:08','402881e6469a13b901469a1e9e420001','13426432920','oGCDRjvr9L1NoqxbyXLReCVYVyV0','3',NULL),
	('402889ed472e852301472e9032520005','2014-07-13 15:11:47','402880a9468a0bef01468a0e72840001','13426432920','oGCDRjvr9L1NoqxbyXLReCVYVyV0','1',NULL),
	('4028bc0647633a790147633f43980003','2014-07-23 20:43:16','402880a9468a0bef01468a0e72840001','18615189705','oGCDRjvr9L1NoqxbyXLReCVYVyV0','1','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_prizerecord` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_receivetext
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_receivetext`;

CREATE TABLE `weixin_receivetext` (
  `ID` varchar(32) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `fromusername` varchar(255) DEFAULT NULL,
  `msgid` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `tousername` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_receivetext` WRITE;
/*!40000 ALTER TABLE `weixin_receivetext` DISABLE KEYS */;

INSERT INTO `weixin_receivetext` (`ID`, `content`, `createtime`, `fromusername`, `msgid`, `msgtype`, `rescontent`, `response`, `tousername`, `accountid`, `nickname`)
VALUES
	('297e7eb6469a5fcc01469a6083fa0000','cms','2014-06-14 20:35:54','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024762561460671840','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('297e7eb6469a728901469a73a2190001','cms','2014-06-14 20:56:47','oR0jFt72mBBcs1f31PiBjSThaHwU','6024767943054693747','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('297e7eb6469a763101469a7dbcfb0000','cms','2014-06-14 21:07:50','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024770786323043727','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('297e7eb6469a9ff201469aa081480000','cms','2014-06-14 21:45:48','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024780574553511388','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('297e7eb6469a9ff201469aa20fe60001','cms','2014-06-14 21:47:30','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024781016935142886','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402880ee5139be58015139bed42f0000','哈哈哈','2015-11-24 21:46:26','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6220713744392256288','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee5139df73015139dfd6000000','menu','2015-11-24 22:22:29','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6220723017226648654','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee5139e3d9015139e4176d0000','menu','2015-11-24 22:27:08','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6220724228407426171','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee513a392e01513a39fca30000','http://www.huijuxinxi.com/jeewx/mshopWechatController.do?goStoreList&accountid=402881e8461795c201461795c2e90000&typeId=4028813a505b239c01505b2439910001','2015-11-25 00:00:57','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6220748413368270525','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee5158304601515830f1d00000','menu','2015-11-30 19:39:41','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6222907583622364003','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee516ff26001516ff3e07e0000','menu88452387','2015-12-05 10:23:52','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6224619776629952958','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee516ff26001516ffa42650001','哈哈哈','2015-12-05 10:30:50','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6224621584811184646','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee516ff26001516ffab1e90002','？','2015-12-05 10:31:19','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6224621709365236235','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ee516ff26001516ffbf5610003','不会','2015-12-05 10:32:42','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6224622061552554529','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ef521c542801521c6187bf0000','刚刚','2016-01-07 21:58:19','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6237044558672034223','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ef521c542801521c6494640001','configadminpassword#','2016-01-07 22:01:39','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6237045417665493435','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ef521c69ff01521c6ace640001','configadminpassword#12345#文杰生','2016-01-07 22:08:27','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6237047170012150238','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ef521c69ff01521c6b32ce0002','configadminpassword#12345#文杰生','2016-01-07 22:08:53','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6237047281681299940','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ef521c784601521c7877b10000','一样','2016-01-07 22:23:23','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6237051014007880271','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402880ef521c784601521c79620e0001','关于','2016-01-07 22:24:23','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6237051271705918044','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('4028813a4feede52014feee4c88d0008','01','2015-09-21 15:53:35','oWmNgt8aIYl579Oxg1GG7Y8HQIdc','6196873926927929748','text',NULL,'0','gh_6b676cd871b8','gh_6b676cd871b8',NULL),
	('4028813a4fef1e59014fef47db650006','test','2015-09-21 17:41:48','oWmNgt8aIYl579Oxg1GG7Y8HQIdc','6196901792675747608','text',NULL,'0','gh_6b676cd871b8','gh_6b676cd871b8',NULL),
	('4028813a500213f301500214dce00000','http://www.jeewx.com/jeewx/wxShopGoodsController.do?goShop','2015-09-25 09:18:53','oWmNgtzh2pNegFPmfb9CRtgYyIcQ','6198256558504972716','text',NULL,'0','gh_6b676cd871b8','gh_6b676cd871b8',NULL),
	('4028813a500219940150021af77c0000','http://deng775747758.eicp.net/jeewx/wxShopGoodsController.do?goShop','2015-09-25 09:25:33','oWmNgtzh2pNegFPmfb9CRtgYyIcQ','6198258276491891193','text',NULL,'0','gh_6b676cd871b8','gh_6b676cd871b8',NULL),
	('4028813a500247fa0150024b83e90003','刮刮乐','2015-09-25 10:18:34','oWmNgtzh2pNegFPmfb9CRtgYyIcQ','6198271921602990868','text',NULL,'0','gh_6b676cd871b8','gh_6b676cd871b8',NULL),
	('4028813a500247fa0150024d08140004','大转盘','2015-09-25 10:20:14','oWmNgtzh2pNegFPmfb9CRtgYyIcQ','6198272368279589663','text',NULL,'0','gh_6b676cd871b8','gh_6b676cd871b8',NULL),
	('4028813a5141d8c9015141dfe50c0000','http://deng775747758.eicp.net/jeewx/mshopWechatController.do?goAddressDetail&customerId=402880ee51399544015139a302970005#eyJwYXJhbXMiOnt9LCJoYXNoIjoiZm9ybV9zZWN0aW9uIiwidXJsIjoiZm9ybV9zZWN0aW9uLmh0bWwifQ==','2015-11-26 11:39:30','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6221300144867128602','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('4028813a5142e4d5015142e6591d0000','http://deng775747758.eicp.net/jeewx/mshopWechatController.do?goHelp&customerId=402880ee51399544015139a302970005#accordion3','2015-11-26 16:26:11','olmuSvw-zvoNJuv7-OnAhSZpyMn4','6221374018304622861','text',NULL,'0','gh_fa5214e8f012','gh_fa5214e8f012',NULL),
	('402881e4464381350146438393630001','1','2014-05-28 23:47:14','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018503454080662192','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e44643813501464386eaed0006','2','2014-05-28 23:50:53','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018504394678500022','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438135014643872f1a0007','2','2014-05-28 23:51:11','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018504467692944056','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e4464381350146438a0d9e000f','2','2014-05-28 23:54:19','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505245082024642','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e4464381350146438aae1e0010','2','2014-05-28 23:55:00','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505451240454852','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146438bb9110000','2','2014-05-28 23:56:08','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505739003263687','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146438c66570001','2','2014-05-28 23:56:53','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505936571759305','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146438c7a2b0002','2','2014-05-28 23:56:58','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505936571759305','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146438cb5280003','2','2014-05-28 23:57:13','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505936571759305','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146438cefda0004','2','2014-05-28 23:57:28','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018505936571759305','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146439298810005','，2','2014-05-29 00:03:39','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018507680328481495','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d01464392dd730006','2','2014-05-29 00:03:56','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018507757637892825','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d01464392f13c0007','2','2014-05-29 00:04:01','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018507757637892825','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d014643932c200008','2','2014-05-29 00:04:17','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018507757637892825','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446438b4d0146439366fb0009','2','2014-05-29 00:04:32','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018507757637892825','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446439a9e0146439b63b80000','2','2014-05-29 00:13:15','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018510149934676708','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446439a9e0146439cf6b80001','2','2014-05-29 00:14:58','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018510596611275496','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446439a9e0146439d0a870002','2','2014-05-29 00:15:03','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018510596611275496','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446439a9e0146439d45680003','2','2014-05-29 00:15:18','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018510596611275496','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446439a9e0146439d80410004','2','2014-05-29 00:15:33','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018510596611275496','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446439a9e0146439e7ac40005','2','2014-05-29 00:16:38','oPkVVuB0848Vy2Vzah5aaZwxGGQA','6018511026108005097','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e44643a1cd014643a291920000','2','2014-05-29 00:21:06','oPkVVuLMJ6y2vucDSCUdY6WABzkg','6018512168569305840','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e44643a1cd014643a5fba2000a','3','2014-05-29 00:24:49','oPkVVuLMJ6y2vucDSCUdY6WABzkg','6018513139231914738','text',NULL,'0','gh_d58a98383644','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672cc15d0001','天气','2014-06-04 21:58:44','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073072884223902','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672cee860002','天气','2014-06-04 21:58:56','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073124423831455','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672d32ee0003','天气','2014-06-04 21:59:13','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073201733242784','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672d46f10004','天气','2014-06-04 21:59:19','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073201733242784','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672d81cf0005','天气','2014-06-04 21:59:34','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073201733242784','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672dbcd40006','天气','2014-06-04 21:59:49','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073201733242784','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672ecfbc0007','天气','2014-06-04 22:00:59','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073652704808869','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672ee3c80008','天气','2014-06-04 22:01:04','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073652704808869','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672f1eed0009','天气','2014-06-04 22:01:19','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073652704808869','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672a080146672f5afa000a','天气','2014-06-04 22:01:35','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021073652704808869','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef014667313ffb0000','天气','2014-06-04 22:03:39','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074335604608941','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef01466731cbb50001','天气','2014-06-04 22:04:15','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074494518398896','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef01466731dfb00002','天气','2014-06-04 22:04:20','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074494518398896','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef014667321a930003','天气','2014-06-04 22:04:35','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074494518398896','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef01466732559c0004','天气','2014-06-04 22:04:50','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074494518398896','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef01466732eb520005','天气','2014-06-04 22:05:28','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074808051011509','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef014667332a840006','天气','2014-06-04 22:05:44','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074881065455543','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef014667333e830007','天气','2014-06-04 22:05:50','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074881065455543','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef0146673379b50008','天气','2014-06-04 22:06:05','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074881065455543','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef01466733b4eb0009','天气','2014-06-04 22:06:20','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021074881065455543','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef014667358e8b000a','天气','2014-06-04 22:08:21','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021075551080353723','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446672fef01466735ac83000b','天气哈尔滨','2014-06-04 22:08:29','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021075585440092093','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c4014667439a860000','天气','2014-06-04 22:23:42','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021079498155298802','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c401466743c3490001','天气哈尔滨','2014-06-04 22:23:52','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021079549694906356','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c40146674587c70002','天气哈尔滨','2014-06-04 22:25:48','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080047911112697','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c4014667459b9f0003','天气哈尔滨','2014-06-04 22:25:53','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080047911112697','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c401466745d6890004','天气哈尔滨','2014-06-04 22:26:08','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080047911112697','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c401466746118f0005','天气哈尔滨','2014-06-04 22:26:23','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080047911112697','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c40146674656480006','天气哈尔滨','2014-06-04 22:26:41','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080275544379386','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c4014667466a2e0007','天气哈尔滨','2014-06-04 22:26:46','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080275544379386','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c401466746a5110008','天气哈尔滨','2014-06-04 22:27:01','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080275544379386','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c401466746e0160009','天气哈尔滨','2014-06-04 22:27:16','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021080275544379386','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466741c40146674b3cbb000a','天气哈尔滨','2014-06-04 22:32:02','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021081654228881414','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446674d1d0146674e68b20000','翻译','2014-06-04 22:35:30','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021082543287111689','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446674d1d0146674e95e30001','翻译','2014-06-04 22:35:41','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021082599121686539','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446674d1d0146674ea9cb0002','翻译','2014-06-04 22:35:47','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021082599121686539','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446674d1d0146674ee4b40003','翻译','2014-06-04 22:36:02','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021082599121686539','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667515c01466751be700000','翻译','2014-06-04 22:39:08','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021083483884949521','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667515c01466751fdb90001','翻译中国人','2014-06-04 22:39:25','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021083556899393555','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667515c0146675226200002','翻译大宝贝','2014-06-04 22:39:35','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021083599849066517','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667515c01466752528a0003','翻译大混蛋','2014-06-04 22:39:46','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021083651388674071','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667515c01466752962a0004','翻译操你大爷','2014-06-04 22:40:04','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021083724403118105','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667515c01466752c6e00005','/::-|','2014-06-04 22:40:16','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021083775942725659','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a05e014667a14a960001','翻译','2014-06-05 00:06:02','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021105873549463731','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a05e014667a175880002','天气','2014-06-05 00:06:13','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021105925089071285','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667a47e600000','天气','2014-06-05 00:09:31','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021106771197628611','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667a4993e0001','天气哈尔滨','2014-06-05 00:09:38','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021106809852334277','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667a4cdbb0002','天气哈尔滨','2014-06-05 00:09:52','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021106865686909127','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667ad363f0003','天气','2014-06-05 00:19:01','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109223623954653','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667ad4f920004','天气哈尔滨','2014-06-05 00:19:09','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109262278660319','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667ade5930005','天气哈尔滨','2014-06-05 00:19:48','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109425487417569','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667ae16a50006','天气哈尔滨','2014-06-05 00:20:00','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109481321992419','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667ae2a6a0007','天气哈尔滨','2014-06-05 00:20:05','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109481321992419','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667a41a014667ae653c0008','天气哈尔滨','2014-06-05 00:20:20','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109481321992419','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667af53014667afe4290000','天气哈尔滨','2014-06-05 00:21:58','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109936588525797','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667af53014667afe46b0001','天气哈尔滨','2014-06-05 00:21:58','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109936588525797','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667af53014667b005c10002','天气哈尔滨','2014-06-05 00:22:07','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021109936588525797','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44667af53014667b039150003','翻译中国','2014-06-05 00:22:20','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021110082617413862','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c8f03ad0000','天气哈尔滨','2014-06-05 23:04:10','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021461015805237365','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c8f59de0001','天气','2014-06-05 23:04:32','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021461114589485175','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c8f74d10002','天气哈尔滨','2014-06-05 23:04:39','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021461144654256249','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c917de90003','天气哈尔滨','2014-06-05 23:06:52','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021461715884906627','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c91e71d0004','天气哈尔滨','2014-06-05 23:07:19','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021461831849023623','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c9206ed0005','天气沈阳','2014-06-05 23:07:27','oR0jFt0BHjQpJgViwVp-vCfjblUM','6021461866208761993','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c94470b0007','天气北京','2014-06-05 23:09:55','oR0jFt5cNkybFxsPf3xLm39FEqgo','6021462501863921806','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4466c8d9801466c946a7a0008','翻译你好','2014-06-05 23:10:04','oR0jFt5cNkybFxsPf3xLm39FEqgo','6021462540518627472','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446950f8601469516a2b20005','大转盘','2014-06-13 19:57:07','oR0jFt72mBBcs1f31PiBjSThaHwU','6024381477602430111','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695183a014695188db90000','大转盘','2014-06-13 19:59:12','oR0jFt72mBBcs1f31PiBjSThaHwU','6024382018768309416','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695183a014695194edf0001','CMS','2014-06-13 20:00:02','oR0jFt72mBBcs1f31PiBjSThaHwU','6024382233516674219','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695183a0146951abdca0003','大转盘','2014-06-13 20:01:36','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024382641538567341','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695183a01469524b2c70024',' cms','2014-06-13 20:12:28','oR0jFt72mBBcs1f31PiBjSThaHwU','6024385441857244357','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695183a01469524e3930025','CMS','2014-06-13 20:12:41','oR0jFt72mBBcs1f31PiBjSThaHwU','6024385497691819208','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695183a014695277c500026','CMS','2014-06-13 20:15:31','oR0jFt72mBBcs1f31PiBjSThaHwU','6024386227836259531','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446952fde014695305bf00000','cms','2014-06-13 20:25:12','oR0jFt72mBBcs1f31PiBjSThaHwU','6024388718917291230','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446952fde014695362ae00002','CMS','2014-06-13 20:31:33','oR0jFt72mBBcs1f31PiBjSThaHwU','6024390355299831028','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146957852820001','CMS','2014-06-13 21:43:49','oR0jFt72mBBcs1f31PiBjSThaHwU','6024408978278026744','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146957b3a180002','CMS','2014-06-13 21:46:59','oR0jFt72mBBcs1f31PiBjSThaHwU','6024409798616780285','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146957ff4980003','天气哈尔滨','2014-06-13 21:52:09','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411125761674761','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958078090004','CMS','2014-06-13 21:52:43','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411276085530124','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c01469581b2120006','cms','2014-06-13 21:54:03','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411619682913807','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c014695825da70007','cms','2014-06-13 21:54:47','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411808661474833','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958271850008','cms','2014-06-13 21:54:52','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411808661474833','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958285600009','cms','2014-06-13 21:54:57','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411808661474833','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c014695829932000a','cms','2014-06-13 21:55:02','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024411808661474833','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958508ad000b','cms','2014-06-13 21:57:42','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024412560280751640','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958525db000c','翻译中国','2014-06-13 21:57:49','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024412590345522714','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c014695865d23000d','cms','2014-06-13 21:59:09','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024412933942906397','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958684be000e','cms','2014-06-13 21:59:19','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024412976892579361','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c01469586f136000f','CMS','2014-06-13 21:59:47','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024413097151663652','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958956a60011','cms','2014-06-13 22:02:24','oR0jFt0BHjQpJgViwVp-vCfjblUM','6024413771461529143','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146958b2edb0012','cms','2014-06-13 22:04:25','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024414291152571964','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c014695940b7c0013','cms','2014-06-13 22:14:05','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024416786528570972','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446955c7c0146959a21cc001c','cms','2014-06-13 22:20:44','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024418495925554795','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e44695ebe3014695f5f3e70019','cms','2014-06-14 00:01:02','oR0jFt5cNkybFxsPf3xLm39FEqgo','6024444338743775120','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4469ffe7a0146a000fe980003','大转盘','2014-06-15 22:49:18','oR0jFt72mBBcs1f31PiBjSThaHwU','6025168014963350861','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4469ffe7a0146a00211840004','大转盘','2014-06-15 22:50:28','oR0jFt72mBBcs1f31PiBjSThaHwU','6025168324200996177','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e4469ffe7a0146a00473890006','刮刮乐','2014-06-15 22:53:04','oR0jFt72mBBcs1f31PiBjSThaHwU','6025168994215894361','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a00ebc0146a01e34d70000','大转盘','2014-06-15 23:21:12','oR0jFt5cNkybFxsPf3xLm39FEqgo','6025176231235788180','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a00ebc0146a01e3cd00001','大转盘','2014-06-15 23:21:14','oR0jFt5cNkybFxsPf3xLm39FEqgo','6025176231235788180','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a00ebc0146a022544b0003','大转盘','2014-06-15 23:25:42','oR0jFt72mBBcs1f31PiBjSThaHwU','6025177408056827296','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f60d0146a4f721940001',' cms','2014-06-16 21:56:37','oR0jFt72mBBcs1f31PiBjSThaHwU','6025525532336039206','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f60d0146a4f752ce0002','cms','2014-06-16 21:56:50','oR0jFt72mBBcs1f31PiBjSThaHwU','6025525579580679465','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f60d0146a4f7df1b0003','cms','2014-06-16 21:57:26','oR0jFt5cNkybFxsPf3xLm39FEqgo','6025525742789436715','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f60d0146a4f86c5b0004','cms','2014-06-16 21:58:02','oR0jFt72mBBcs1f31PiBjSThaHwU','6025525893113292077','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a4fa19c90000','cms','2014-06-16 21:59:52','oR0jFt6fH6nxwXRCNaVSi93S3L84','6025526356969760049','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a4fce81f0002','cms','2014-06-16 22:02:56','oR0jFt3HxVfz5hSV-ugO7VruAsro','6025527151538709820','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a4fd0fbb0003','cms','2014-06-16 22:03:06','oR0jFt6fH6nxwXRCNaVSi93S3L84','6025527203078317374','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a4ffd6440004','cms','2014-06-16 22:06:08','oR0jFt6fH6nxwXRCNaVSi93S3L84','6025527984762365261','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a5004c4f0005','cms','2014-06-16 22:06:38','oR0jFt6fH6nxwXRCNaVSi93S3L84','6025528113611384144','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a500be810006','cms','2014-06-16 22:07:07','oR0jFt5cNkybFxsPf3xLm39FEqgo','6025528238165435730','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e446a4f9400146a5052338000e','1','2014-06-16 22:11:55','oR0jFt72mBBcs1f31PiBjSThaHwU','6025529475116017000','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e946dda3270146dda635740000','大转盘\n','2014-06-27 22:06:35','oR0jFt0BHjQpJgViwVp-vCfjblUM','6029610020464759577','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e946dda3270146dda656900001','大转盘','2014-06-27 22:06:44','oR0jFt0BHjQpJgViwVp-vCfjblUM','6029610059119465245','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e946ddc9450146ddcd07600002','刮刮乐','2014-06-27 22:48:59','oR0jFt0BHjQpJgViwVp-vCfjblUM','6029620946861560923','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e94702b68b014702ba2e040000','微商城','2014-07-05 02:54:21','oR0jFt0BHjQpJgViwVp-vCfjblUM','6032281752115896513','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e94702b68b014702c00bb50001','微商城','2014-07-05 03:00:46','oR0jFt0BHjQpJgViwVp-vCfjblUM','6032283409973272808','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e94702b68b014702c47ed70002','微商城','2014-07-05 03:05:37','oR0jFt0BHjQpJgViwVp-vCfjblUM','6032284664103723267','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e94702c764014702ca45a00000','\n微商城','2014-07-05 03:11:56','oR0jFt0BHjQpJgViwVp-vCfjblUM','6032286283306393896','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881e94702c764014702ca7f360001','微商城','2014-07-05 03:12:11','oR0jFt0BHjQpJgViwVp-vCfjblUM','6032286352025870635','text',NULL,'0','gh_7371a2c3fef2','402881e8461795c201461795c2e90000',NULL),
	('402881eb47ce1c130147ce1d4a580000','1','2014-08-13 14:45:31','123','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('402881eb47ce1c130147ce1e04230002','01','2014-08-13 14:46:19','123','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('402881eb47ce1c130147ce1e2cb30003','?','2014-08-13 14:46:29','123','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('402881eb47ce1c130147ce1e4a1c0004','你好','2014-08-13 14:46:37','123','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d014735654f2b0002','121','2014-07-14 23:02:17','zhangsan','1234567890123456','text',NULL,'0','','',NULL),
	('4028d8814734ee0d0147356587280003','?','2014-07-14 23:02:31','zhangsan','1234567890123456','text',NULL,'0','123','123',NULL),
	('4028d8814734ee0d014735666a370004','hello','2014-07-14 23:03:30','zhangsan','1234567890123456','text',NULL,'0','123','123',NULL),
	('4028d8814734ee0d0147356692cb0005','hello','2014-07-14 23:03:40','zhangsan','1234567890123456','text',NULL,'0','123','123',NULL),
	('4028d8814734ee0d0147356740230007','你好','2014-07-14 23:04:24','zhangsan','1234567890123456','text',NULL,'0','123','123',NULL),
	('4028d8814734ee0d0147356781390008','01','2014-07-14 23:04:41','zhangsan','1234567890123456','text',NULL,'0','123','123',NULL),
	('4028d8814734ee0d0147356928140009','01','2014-07-14 23:06:29','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d01473569574d000a','你好','2014-07-14 23:06:41','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d014735698b46000b','你好','2014-07-14 23:06:55','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d01473569cbf0000c','01','2014-07-14 23:07:11','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d01473569fc14000d','翻译你好','2014-07-14 23:07:24','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d0147356a19cc000e','天气北京','2014-07-14 23:07:31','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d0147356ac6c2000f','你好','2014-07-14 23:08:15','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d0147356b7db90012','你好','2014-07-14 23:09:02','gh_fd03cca3459e','1234567890123456','text',NULL,'0','gh_fd03cca3459e','gh_fd03cca3459e',NULL),
	('4028d8814734ee0d014735811b5c0014','?','2014-07-14 23:32:39','gh_fd03cca3459e','1234567890123456','text',NULL,'0','','',NULL),
	('4028d8814734ee0d0147358149170015','?','2014-07-14 23:32:51','gh_fd03cca3459e','1234567890123456','text',NULL,'0','','',NULL);

/*!40000 ALTER TABLE `weixin_receivetext` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_ad
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_ad`;

CREATE TABLE `weixin_shop_ad` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '广告标题',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属公众号ID',
  `weixin_accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '原始ID冗余',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图片大小类别',
  `good_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称冗余',
  `id_good` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所链接的商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_shop_ad` WRITE;
/*!40000 ALTER TABLE `weixin_shop_ad` DISABLE KEYS */;

INSERT INTO `weixin_shop_ad` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `title`, `imgurl`, `accountid`, `weixin_accountid`, `type`, `good_name`, `id_good`)
VALUES
	(X'3430323838313361353031313737626230313530313137643833343130303033',X'61646D696E','2015-09-28 09:07:30',X'',NULL,X'616431',X'75706C6F61642F66696C65732F32303135303932383039303732376A387637554153612E6A7067',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238',X'31',X'',X'3430323838313361346666343262643030313466663432636435383730303032'),
	(X'3430323838313361353031313737626230313530313137646632353830303036',X'61646D696E','2015-09-28 09:07:58',X'',NULL,X'616432',X'75706C6F61642F66696C65732F3230313530393238303930373532787959566B4453372E6A7067',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238',X'32',X'',X'3430323838313361346666323739643730313466663265353731643330303031'),
	(X'3430323838313361353031313737626230313530313137653336633930303039',X'61646D696E','2015-09-28 09:08:16',X'',NULL,X'616433',X'75706C6F61642F66696C65732F323031353039323830393038313348473265364353622E6A7067',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238',X'32',X'',X'3430323838313361346666323739643730313466663265353731643330303031'),
	(X'3430323838313361353031313737626230313530313137653737376130303063',X'61646D696E','2015-09-28 09:08:32',X'',NULL,X'616434',X'75706C6F61642F66696C65732F32303135303932383039303832387053306747494F6A2E6A7067',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238',X'32',X'',X'3430323838313361346666323739643730313466663265353731643330303031'),
	(X'3430323838313361353031313737626230313530313137656162353730303066',X'61646D696E','2015-09-28 09:08:46',X'',NULL,X'616435',X'75706C6F61642F66696C65732F3230313530393238303930383432635547467167674F2E6A7067',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238',X'32',X'',X'3430323838313361346666323739643730313466663265353731643330303031');

/*!40000 ALTER TABLE `weixin_shop_ad` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_cart`;

CREATE TABLE `weixin_shop_cart` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '买家ID',
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  `spec` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_shop_cart` WRITE;
/*!40000 ALTER TABLE `weixin_shop_cart` DISABLE KEYS */;

INSERT INTO `weixin_shop_cart` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `id_goods`, `id_customer`, `count`, `spec`)
VALUES
	(X'3131',NULL,NULL,NULL,NULL,NULL,X'333333',NULL,NULL);

/*!40000 ALTER TABLE `weixin_shop_cart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_category`;

CREATE TABLE `weixin_shop_category` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '分类名称',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `parentid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '分类上级ID',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属公众号ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_shop_category` WRITE;
/*!40000 ALTER TABLE `weixin_shop_category` DISABLE KEYS */;

INSERT INTO `weixin_shop_category` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `name`, `imgurl`, `parentid`, `accountid`)
VALUES
	(X'3430323838313361346665646233613430313466656462343661316130303031',X'61646D696E','2015-09-21 10:21:08',X'61646D696E','2015-09-30 16:08:27',X'E6B0B4E69E9C',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361346666323739643730313466663266313262383530303035',X'61646D696E','2015-09-22 10:45:36',X'61646D696E','2015-09-30 16:07:34',X'E8A1A3E69C8D',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361346666323739643730313466663266313338656230303037',X'61646D696E','2015-09-22 10:45:39',X'61646D696E','2015-09-30 16:07:42',X'E695B0E7A081',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361346666386163346230313466663866356130636230303133',X'61646D696E','2015-09-23 14:48:11',X'61646D696E','2015-09-30 16:08:04',X'E8999AE68B9FE789A9E59381',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361346666393236633430313466663932643635376330303036',X'61646D696E','2015-09-23 15:49:06',X'61646D696E','2015-09-30 16:08:20',X'E4B9A6E7B18D',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353031643439333430313530316434626364663630303036',X'61646D696E','2015-09-30 16:08:39',X'',NULL,X'E7BE8EE58F91',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353031643439333430313530316434626534626530303038',X'61646D696E','2015-09-30 16:08:44',X'',NULL,X'4B5456',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633034303030313530346330343939626230303031',X'61646D696E','2015-10-09 17:53:01',X'',NULL,X'74657374',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633036303330313530346330363665626430303031',X'61646D696E','2015-10-09 17:55:01',X'',NULL,X'74657374',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633038366130313530346330386364306430303031',X'61646D696E','2015-10-09 17:57:37',X'',NULL,X'74657374',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633063363730313530346330636439363430303031',X'61646D696E','2015-10-09 18:02:02',X'',NULL,X'7465737431',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633065326230313530346330653861346530303031',X'61646D696E','2015-10-09 18:03:53',X'',NULL,X'3737',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633132336230313530346331326362303630303031',X'61646D696E','2015-10-09 18:08:31',X'',NULL,X'3132',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633135316330313530346331356261323130303031',X'61646D696E','2015-10-09 18:11:44',X'',NULL,X'7474',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030'),
	(X'3430323838313361353034633163393930313530346331643064303830303031',X'61646D696E','2015-10-09 18:19:44',X'',NULL,X'3434',X'',X'',X'3430323838316538343631373935633230313436313739356332653930303030');

/*!40000 ALTER TABLE `weixin_shop_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_customer`;

CREATE TABLE `weixin_shop_customer` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `nickname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '微信昵称',
  `openid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '微信用户唯一标识',
  `headimgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '头像链接',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属公众号ID',
  `weixin_accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '原始ID冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_shop_customer` WRITE;
/*!40000 ALTER TABLE `weixin_shop_customer` DISABLE KEYS */;

INSERT INTO `weixin_shop_customer` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `nickname`, `openid`, `headimgurl`, `accountid`, `weixin_accountid`)
VALUES
	(X'3430323838306565353133393935343430313531333961333032333130303034',X'6175746F','2015-11-24 21:16:02',NULL,NULL,X'E696872020E69DB0',X'6F6C6D755376772D7A766F4E4A7576372D4F6E4168535A70794D6E34',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F6B4D617A396E6338626749594242765939663869614C5232715069615569616E6D5A3555696145586573764C78626769627879745A4B504B69616C794B3252304C465070376B32577A466A7262785343746D463277715742563768412F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132'),
	(X'3430323838306565353137303136616230313531373034653337626430303030',X'6175746F','2015-12-05 12:02:33',NULL,NULL,X'E29787EFB98FE594A5E6B4ABE284A1',X'6F6C6D7553763675757272437A33754F456F325F5442315975686D59',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F6B4D617A396E633862674A4D3637784A744648416B65757244395847396A4F69625A374C6961355034584F6A4D41624B537334516F50475A3065725633573361445163614E6C4D54657961743477624C61433738494671672F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132'),
	(X'3430323838306565353137303136616230313531373034653337633930303031',X'6175746F','2015-12-05 12:02:33',NULL,NULL,X'E29787EFB98FE594A5E6B4ABE284A1',X'6F6C6D7553763675757272437A33754F456F325F5442315975686D59',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F6B4D617A396E633862674A4D3637784A744648416B65757244395847396A4F69625A374C6961355034584F6A4D41624B537334516F50475A3065725633573361445163614E6C4D54657961743477624C61433738494671672F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132'),
	(X'3430323838313361346666653961393330313466666539626137363830303030',NULL,NULL,X'6175746F','2015-09-30 18:30:30',X'E696872020E69DB0',X'6F576D4E67747A6832704E656746506D666239435274675979496351',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F77624B64696238316E793669633246746C754D4D376D653276304B4A415778774F774C6F445752504232775A4E58706537576E7332784F4577446E50537977483750427045594A7943706F457A5930586A4F6154756562772F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238'),
	(X'3430323838313361353031633333363130313530316338323933303930303034',X'6175746F','2015-09-30 12:28:51',NULL,NULL,X'4120EE84AF20E591BCE5B882E5AEB6E585B7E7BE8EE5AEB9EFBC88E88B913138363938343338383833',X'6F576D4E677432576A35624D524764783349594D653776504F4E7059',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F616A4E566471485A4C4C414B61314166696268766B533139485575397756466D506172467469623953326765373255394D6857624C35746C64526962696163624D4C335143516F6B36476345556770396D42556F3865505372772F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238'),
	(X'3430323838313361353038376465363430313530383838653336333430303164',X'6175746F','2015-10-21 12:00:33',NULL,NULL,X'E69EAB',X'6F576D4E6774394E302D333075395664536B5750614C4A63385A2D73',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F4D6B5364716E61586B43493476414D38504E435263424A627A47725072493969617866696351443579454677686961437A784C76554F6A4C63456C6961614968384F3177744C79417645326B6341793278724871696256515871337657596B766A304370432F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F366236373663643837316238'),
	(X'3430323838313361353038393361623530313530383936333966356530303034',X'6175746F','2015-10-21 15:53:39',NULL,NULL,X'E696872020E69DB0',X'6F5456727377344F4F367375505736374563706E7852654B39644851',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F624E71565A636961376961427730457764764D536562427969634D7148783659455470554470764339414F7947397A6F356136797351455161663464524C6B7173443230494A576D6865706A547965493943664343587153512F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F313335636239353763383035'),
	(X'3430323838313361353136366265326530313531363663333334623830303030',X'6175746F','2015-12-03 15:34:08',NULL,NULL,X'E998B3E58589E4B88DE99488',X'6F6C6D75537635656D637166786E7433307137344662774A6E503241',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F4F4A704D337037714F635A704C59643432633752736E4B756C736F675235514D667869625A62696358525A69616436505A4C546B4B4361716F51435A6F626761666961356A5A696236484D5335385679457975565A6B776963747A59324550524D496961696330492F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132');

/*!40000 ALTER TABLE `weixin_shop_customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_discuss
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_discuss`;

CREATE TABLE `weixin_shop_discuss` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `level` varchar(12) COLLATE utf8_bin DEFAULT NULL COMMENT '评论级别',
  `content` longtext COLLATE utf8_bin COMMENT '评论内容',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '买家ID',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_shop_discuss` WRITE;
/*!40000 ALTER TABLE `weixin_shop_discuss` DISABLE KEYS */;

INSERT INTO `weixin_shop_discuss` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `level`, `content`, `id_customer`, `id_goods`)
VALUES
	(X'3430323838313361346664616437336230313466646164373363343630303032',X'61646D696E',NULL,NULL,NULL,NULL,NULL,X'3430323838313361346664616437336230313466646164373362666230303030',NULL);

/*!40000 ALTER TABLE `weixin_shop_discuss` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_good
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_good`;

CREATE TABLE `weixin_shop_good` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `imgurl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片链接',
  `descriptions` longtext COLLATE utf8_bin COMMENT '商品详情',
  `original_price` double DEFAULT NULL COMMENT '商品原价',
  `real_price` double DEFAULT NULL COMMENT '商品现价',
  `sale` double DEFAULT NULL COMMENT '折扣',
  `sell_count` int(11) DEFAULT NULL COMMENT '销售数量',
  `discuss_count` int(11) DEFAULT NULL COMMENT '评价数量',
  `good_count` int(11) DEFAULT NULL COMMENT '好评数量',
  `bad_count` int(11) DEFAULT NULL COMMENT '差评数量',
  `neutral_count` int(11) DEFAULT NULL COMMENT '中评数量',
  `statement` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `remove_time` datetime DEFAULT NULL COMMENT '下架时间',
  `shelve_time` datetime DEFAULT NULL COMMENT '上架时间',
  `express_price` double DEFAULT NULL COMMENT '快递费用',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属公众号ID',
  `id_category` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `weixin_shop_good` WRITE;
/*!40000 ALTER TABLE `weixin_shop_good` DISABLE KEYS */;

INSERT INTO `weixin_shop_good` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `name`, `imgurl`, `descriptions`, `original_price`, `real_price`, `sale`, `sell_count`, `discuss_count`, `good_count`, `bad_count`, `neutral_count`, `statement`, `remove_time`, `shelve_time`, `express_price`, `accountid`, `id_category`)
VALUES
	(X'3430323838313361346666323739643730313466663265353731643330303031',X'61646D696E','2015-09-22 10:32:47',X'61646D696E','2015-09-23 13:28:48',X'343434',X'',X'3232',11,222,NULL,NULL,NULL,NULL,NULL,NULL,X'30',NULL,'2015-09-23 13:28:48',222,X'3430323838316538343631373935633230313436313739356332653930303030',X''),
	(X'3430323838313361346666333061396430313466663332346538626130303039',X'61646D696E','2015-09-22 11:42:07',X'61646D696E','2015-09-30 14:13:34',X'3636',X'',X'3C703E3636363C2F703E',666,66,NULL,NULL,NULL,NULL,NULL,NULL,X'2D31',NULL,'2015-09-23 13:28:47',66,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666336534613830313466663365653431633430303034',X'61646D696E','2015-09-22 15:22:02',X'61646D696E','2015-09-23 14:50:50',X'32333332',NULL,X'3C703E333433343C62722F3E3C2F703E',343,343,NULL,NULL,NULL,NULL,NULL,NULL,X'31','2015-09-23 14:50:50','2015-09-23 14:50:49',434,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666336666373230313466663430303139353130303032',X'61646D696E','2015-09-22 15:41:31',X'61646D696E','2015-09-22 17:14:55',X'3434',NULL,X'3C703E34343C2F703E',44,44,NULL,NULL,NULL,NULL,NULL,NULL,X'2D31',NULL,NULL,44,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666343130303630313466663431306166316530303032',X'61646D696E','2015-09-22 15:59:38',X'61646D696E','2015-09-23 14:50:47',X'6666',X'75706C6F61642F66696C65732F323031353039323231353539323575434135353771552E6A7067',X'3C703E32323C2F703E',12,22,NULL,NULL,NULL,NULL,NULL,NULL,X'31','2015-09-23 14:50:47','2015-09-23 13:28:37',22,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666343262643030313466663432636435383730303032',X'61646D696E','2015-09-22 16:30:23',X'61646D696E','2015-09-23 13:28:50',X'E9BB84E7939C',X'75706C6F61642F66696C65732F323031353039323231363330323033674D5238616A432E6A7067',X'3C703E3C7374726F6E673E323232323232323C2F7374726F6E673E3C2F703E',100,150,NULL,NULL,NULL,NULL,NULL,NULL,X'31','2015-09-23 13:28:50','2015-09-22 16:30:23',5,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666386163346230313466663866316130666530303037',X'61646D696E','2015-09-23 14:43:49',X'61646D696E','2015-09-30 10:16:48',X'E88BB9E69E9C34',X'75706C6F61642F66696C65732F32303135303932333134343334375768576950436B322E6A7067',X'3C703E3C7370616E207374796C653D22636F6C6F723A20726762283235352C20302C2030293B223EE998BFE8BFAAE68A8AE982A3E69CACE5B9B4E5BAA63C2F7370616E3E3C2F703E',45,23,0.51,NULL,NULL,NULL,NULL,NULL,X'30','2015-09-23 14:44:02','2015-09-23 14:43:49',5,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666386163346230313466663866333339643430303062',X'61646D696E','2015-09-23 14:45:34',X'61646D696E','2015-09-23 14:46:10',X'E9B8ADE6A2A8',X'75706C6F61642F66696C65732F3230313530393233313434353135336A734C614149722E6A7067',X'3C703E3C7370616E207374796C653D22636F6C6F723A20726762283134362C203230382C203830293B223E3C7374726F6E673EE997AEE9A298E88289E7B289E889B2E9B985E998B23C2F7374726F6E673E3C2F7370616E3E3C2F703E',56,34,0.61,NULL,NULL,NULL,NULL,NULL,X'2D31','2015-09-23 14:46:00','2015-09-23 14:45:59',6,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666386163346230313466663930626266326330303161',X'61646D696E','2015-09-23 14:43:49',X'61646D696E','2015-09-23 15:43:42',X'E88BB9E69E9C35',X'75706C6F61642F66696C65732F32303135303932333135313134357A527969553333772E6A7067',X'3C703E3C7370616E207374796C653D22636F6C6F723A20726762283235352C20302C2030293B223EE998BFE8BFAAE68A8AE982A3E69CACE5B9B4E5BAA63C2F7370616E3E3C2F703E',45,23,0.51,NULL,NULL,NULL,NULL,NULL,X'2D31','2015-09-23 14:44:02','2015-09-23 15:12:21',5,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666393133333830313466663931336632623030303031',X'61646D696E','2015-09-23 14:43:49',X'61646D696E','2015-09-23 15:43:38',X'E88BB9E69E9C31',X'75706C6F61642F66696C65732F32303135303932333134343334375768576950436B322E6A7067',X'3C703E3C7370616E207374796C653D22636F6C6F723A20726762283235352C20302C2030293B223EE998BFE8BFAAE68A8AE982A3E69CACE5B9B4E5BAA63C2F7370616E3E3C2F703E',45,23,0.51,NULL,NULL,NULL,NULL,NULL,X'2D31','2015-09-23 14:44:02','2015-09-23 15:21:18',5,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361346666393133333830313466663931343537636230303033',X'61646D696E','2015-09-23 14:43:49',X'61646D696E','2015-09-23 15:43:36',X'E88BB9E69E9C32',X'75706C6F61642F66696C65732F32303135303932333134343334375768576950436B322E6A7067',X'3C703E3C7370616E207374796C653D22636F6C6F723A20726762283235352C20302C2030293B223EE998BFE8BFAAE68A8AE982A3E69CACE5B9B4E5BAA63C2F7370616E3E3C2F703E',45,23,0.51,NULL,NULL,NULL,NULL,NULL,X'2D31','2015-09-23 14:44:02','2015-09-23 15:21:44',5,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361353031633333363130313530316333393931306530303032',X'61646D696E','2015-09-30 11:09:06',X'61646D696E','2015-09-30 14:12:55',X'E7A4BEE58CBAE5B8BDE8A1ABE78988E7B1B3E58594',X'75706C6F61642F66696C65732F323031353039333031313038353961776443347078532E6A7067',X'3C703EE7A4BEE58CBAE5B8BDE8A1ABE78988E7B1B3E585943C2F703E',21.59,18,0.83,NULL,NULL,NULL,NULL,NULL,X'32',NULL,'2015-09-30 11:09:06',8,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031'),
	(X'3430323838313361353031636462633130313530316364663365633330303032',X'61646D696E','2015-09-30 14:10:04',X'61646D696E','2015-09-30 14:12:50',X'E5ADA6E999A2E9A38EE5B886E5B883E58F8CE882A9E58C85EFBC88E9BB91EFBC89',X'75706C6F61642F66696C65732F32303135303933303134303935365669527478394F562E6A7067',X'3C703EE5ADA6E999A2E9A38EE5B886E5B883E58F8CE882A9E58C85EFBC88E9BB91EFBC893C2F703E',21.59,18,0.83,NULL,NULL,NULL,NULL,NULL,X'32',NULL,'2015-09-30 14:10:04',8,X'3430323838316538343631373935633230313436313739356332653930303030',X'3430323838313361346665646233613430313466656462343661316130303031');

/*!40000 ALTER TABLE `weixin_shop_good` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_shop_love
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_love`;

CREATE TABLE `weixin_shop_love` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '买家ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table weixin_shop_odgoods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_odgoods`;

CREATE TABLE `weixin_shop_odgoods` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `price` double DEFAULT NULL COMMENT '价格',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `is_discuss` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '是否评价',
  `id_order` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '订单ID',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '买家ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table weixin_shop_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_shop_order`;

CREATE TABLE `weixin_shop_order` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `orderid` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '订单号',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '买家ID',
  `receiver` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人',
  `statement` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '订单状态',
  `distribut_info` longtext COLLATE utf8_bin COMMENT '配送信息',
  `message` longtext COLLATE utf8_bin COMMENT '买家留言',
  `phone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `postcode` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邮编',
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '详细地址',
  `province` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '省份',
  `city` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `county` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区县',
  `freight` double DEFAULT NULL COMMENT '运费',
  `total_count` int(11) DEFAULT NULL COMMENT '商品总数量',
  `total_price` double DEFAULT NULL COMMENT '商品总价',
  `id_account` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属公众号ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table weixin_subscribe
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_subscribe`;

CREATE TABLE `weixin_subscribe` (
  `ID` varchar(32) CHARACTER SET utf8 NOT NULL,
  `accountid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `addTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `msgType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateId` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `weixin_subscribe` WRITE;
/*!40000 ALTER TABLE `weixin_subscribe` DISABLE KEYS */;

INSERT INTO `weixin_subscribe` (`ID`, `accountid`, `addTime`, `msgType`, `templateId`, `templateName`)
VALUES
	('402889ff472978290147297b54350004','402881e8461795c201461795c2e90000','2014-07-12 15:30:54','text','f7a8a3a946e249c20146e25c4dc7000c','欢迎关注语');

/*!40000 ALTER TABLE `weixin_subscribe` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_texttemplate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_texttemplate`;

CREATE TABLE `weixin_texttemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_texttemplate` WRITE;
/*!40000 ALTER TABLE `weixin_texttemplate` DISABLE KEYS */;

INSERT INTO `weixin_texttemplate` (`ID`, `addtime`, `content`, `templatename`, `accountid`)
VALUES
	('4028d8814734ee0d0147356b4c730010','2014-07-14 23:08:50','你好，我是开源社区负责人，scott','你好','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e249c20146e25c4dc7000c','2014-06-28 20:03:58','感谢您关注我们的微信公众平台。','欢迎关注语','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a3e498004d','2014-06-29 11:21:01','微译使用指南\r\n\r\n微译为用户提供专业的多语言翻译服务，目前支持以下翻译方向：\r\n    中 -> 英\r\n    英 -> 中\r\n    日 -> 中\r\n\r\n使用示例：\r\n    翻译我是中国人\r\n    翻译dream\r\n    翻译さようなら\r\n\r\n回复“?”显示主菜单','微译使用指南','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a429cf004e','2014-06-29 11:21:19','发送天气+城市，例如\'天气广州\'\r\n','天气使用指南','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a53e6b0051','2014-06-29 11:22:30','请输入\"大转盘\"，参与抽奖活动','大转盘指南','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5a584da0052','2014-06-29 11:22:48','请输入\"刮刮乐\"，参与抽奖活动','刮刮乐指南','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5c317f6005f','2014-06-29 11:55:06','社区负责：张代浩\r\n邮箱： jeecg@sina.com\r\n论坛： www.jeecg.org','联系我们','402881e8461795c201461795c2e90000'),
	('f7a8a3a946e55a940146e5cfa5660070','2014-06-29 12:08:49','01  翻译\r\n02  天气\r\n03  大转盘\r\n04  刮刮乐','营销工具','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_texttemplate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_vip_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_vip_info`;

CREATE TABLE `weixin_vip_info` (
  `ID` varchar(36) NOT NULL,
  `VIP_NAME` varchar(100) NOT NULL,
  `VIP_IMG` varchar(200) DEFAULT NULL,
  `VIP_DESCRIBE` varchar(200) DEFAULT NULL,
  `VIP_COFING` varchar(20) DEFAULT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `LEVEL_ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_vip_info` WRITE;
/*!40000 ALTER TABLE `weixin_vip_info` DISABLE KEYS */;

INSERT INTO `weixin_vip_info` (`ID`, `VIP_NAME`, `VIP_IMG`, `VIP_DESCRIBE`, `VIP_COFING`, `START_TIME`, `END_TIME`, `LEVEL_ID`, `ACCOUNTID`)
VALUES
	('402881e5479afd0101479b7258ca0023','黄金会员卡','upload/files/20140804022004UE5avXRs.png','					      					      黄金会员卡,帝王享受\r\n					      \r\n					      \r\n					      ',NULL,'2014-08-03',NULL,'4','402881e8461795c201461795c2e90000'),
	('402881e5479afd0101479b7cc102002b','钻石会员卡','upload/files/20140804022016GE5JCfZ0.png','					      					      钻石会员卡，至尊待遇，尊贵无比			      \r\n					      \r\n					      ',NULL,'2014-08-03',NULL,'5','402881e8461795c201461795c2e90000'),
	('402881e5479afd0101479b7d792e002f','普通会员卡','upload/files/20140804022031I66JtQG5.png','					      普通会员卡,注册即可获得	      \r\n					      ',NULL,'2014-08-03',NULL,'1','402881e8461795c201461795c2e90000'),
	('402881e5479afd0101479b7e64c00032','青铜会员卡','upload/files/20140804022040CxBHjCcT.png','					      活跃用户才能获得的会员卡	      \r\n					      ',NULL,'2014-08-03',NULL,'2','402881e8461795c201461795c2e90000'),
	('402881e5479afd0101479b7ee8aa0035','白银会员卡','upload/files/20140804022243rk2FhIWa.png','					      					      					      核心用户才能获取的会员卡，享受精致生活 \r\n					      \r\n					      \r\n					      ',NULL,'2014-08-03',NULL,'3','402881e8461795c201461795c2e90000');

/*!40000 ALTER TABLE `weixin_vip_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table weixin_vip_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `weixin_vip_member`;

CREATE TABLE `weixin_vip_member` (
  `ID` varchar(36) NOT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL,
  `MEMBER_BALANCE` decimal(9,2) unsigned zerofill DEFAULT '0000000.00',
  `MEMBER_INTEGRAL` int(9) DEFAULT '0',
  `CREATE_TIME` date NOT NULL,
  `VIP_ID` varchar(36) DEFAULT NULL,
  `MEMBER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `weixin_vip_member` WRITE;
/*!40000 ALTER TABLE `weixin_vip_member` DISABLE KEYS */;

INSERT INTO `weixin_vip_member` (`ID`, `MEMBER_NAME`, `MEMBER_BALANCE`, `MEMBER_INTEGRAL`, `CREATE_TIME`, `VIP_ID`, `MEMBER_ID`)
VALUES
	('402881e5479afd0101479b7cc102002c','admin',0000000.00,0,'2014-08-04','402881e5479afd0101479b7cc102002b','4028d881436d514601436d5215ac0043');

/*!40000 ALTER TABLE `weixin_vip_member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wx_mshop_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_mshop_customer`;

CREATE TABLE `wx_mshop_customer` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `openid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '用户唯一标识',
  `nickname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `city` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `province` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '省份',
  `headimgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '头像链接',
  `accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '微信账号ID',
  `weixin_accountid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '原始ID',
  `address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'address',
  `phone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `address_detail` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `wx_mshop_customer` WRITE;
/*!40000 ALTER TABLE `wx_mshop_customer` DISABLE KEYS */;

INSERT INTO `wx_mshop_customer` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `openid`, `nickname`, `sex`, `city`, `province`, `headimgurl`, `accountid`, `weixin_accountid`, `address`, `phone`, `real_name`, `address_detail`)
VALUES
	(X'3430323838306565353133393935343430313531333961333032393730303035',X'6175746F','2015-11-24 21:16:03',X'6175746F','2016-01-08 22:11:14',X'6F6C6D755376772D7A766F4E4A7576372D4F6E4168535A70794D6E34',X'E696872020E69DB0',1,X'E58C85E5A4B4',X'E58685E89299E58FA4',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F6B4D617A396E6338626749594242765939663869614C5232715069615569616E6D5A3555696145586573764C78626769627879745A4B504B69616C794B3252304C465070376B32577A466A7262785343746D463277715742563768412F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'E58C85E5A4B4E5B88220E99D92E5B1B1E58CBA',X'3133363834373232333539',X'E7AD893131',X'E78FADE5B9B2E983A8'),
	(X'3430323838306565353137303136616230313531373034653338643430303032',X'6175746F','2015-12-05 12:02:33',X'6175746F','2015-12-05 12:02:42',X'6F6C6D7553763675757272437A33754F456F325F5442315975686D59',X'E29787EFB98FE594A5E6B4ABE284A1',1,X'E58C85E5A4B4',X'E58685E89299E58FA4',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F6B4D617A396E633862674A4D3637784A744648416B65757244395847396A4F69625A374C6961355034584F6A4D41624B537334516F50475A3065725633573361445163614E6C4D54657961743477624C61433738494671672F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,NULL),
	(X'3430323838306566353232313933346630313532323161643762313330303061',X'6175746F','2016-01-08 22:39:23',X'6175746F','2016-01-09 23:06:04',X'6F6C6D7553767A447072693736566932664159376964375F475A7245',X'E595B8E69E97',1,X'E58C85E5A4B4',X'E58685E89299E58FA4',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F4F4A704D337037714F6361546A6B55496A7675524634734753506D42593669626E6A685132326277784271385A42474231356F62714A5573536A4D7555584C455A3349754162784539486859557147716B7A6A5141686E5A666235696230373662342F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'E58C85E5A4B4E5B88220E4B89CE6B2B3E58CBA',X'3133393437323737303333',X'E983ADE69993E7A38A',X'E58C85E5A4B4E5B882E4B89CE6B2B3E58CBAE5928CE5B9B3E8B7AFE4B89CE59B9BE58CBAE4B880E58FB7E5BA95E5BA97'),
	(X'3430323838306566353232316238633530313532323163313137333030303134',X'6175746F','2016-01-08 23:00:48',X'6175746F','2016-01-10 16:02:36',X'6F6C6D755376334A31722D4948777641476476766A434A692D763751',X'E78CAAE5A4B4E5B08FE4B8B8E5AD90',2,X'E58C85E5A4B4',X'E58685E89299E58FA4',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F5133617548677A777A4D355A4941373434706B49766354573855614B6C4B6A324E61796C46544F7062417735445A57415356554E38507830796777307A7432547A30743662514C764E6A386D5448355839656F657A412F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',X'E58C85E5A4B4E5B88220E4B89CE6B2B3E58CBA',X'3135383439323539333039',X'E69CB1E78795E88DA3',X'E5928CE5B9B3E8B7AFE4B89CE59B9BE58CBAE58D81E59B9BE58FB731E58FB7E5BA95E5BA97'),
	(X'3430323838313361353038393731353230313530383937316335363930303030',X'6175746F','2015-10-21 16:09:06',X'6175746F','2015-11-11 16:11:52',X'6F5456727377344F4F367375505736374563706E7852654B39644851',X'E98293E69687E69DB0',1,X'E58C85E5A4B4',X'E58685E89299E58FA4',NULL,X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F313335636239353763383035',NULL,NULL,NULL,NULL),
	(X'3430323838313361353136366265326530313531363663333335316230303031',X'6175746F','2015-12-03 15:34:08',X'6175746F','2015-12-03 15:34:10',X'6F6C6D75537635656D637166786E7433307137344662774A6E503241',X'E998B3E58589E4B88DE99488',2,X'E68890E983BD',X'E59B9BE5B79D',X'687474703A2F2F77782E716C6F676F2E636E2F6D6D6F70656E2F4F4A704D337037714F635A704C59643432633752736E4B756C736F675235514D667869625A62696358525A69616436505A4C546B4B4361716F51435A6F626761666961356A5A696236484D5335385679457975565A6B776963747A59324550524D496961696330492F30',X'3430323838316538343631373935633230313436313739356332653930303030',X'67685F666135323134653866303132',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `wx_mshop_customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wx_mshop_evaluate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_mshop_evaluate`;

CREATE TABLE `wx_mshop_evaluate` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `level` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '评价星级',
  `content` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `id_customer` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '客户ID',
  `id_store` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商店ID',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  `id_order` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '订单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `wx_mshop_evaluate` WRITE;
/*!40000 ALTER TABLE `wx_mshop_evaluate` DISABLE KEYS */;

INSERT INTO `wx_mshop_evaluate` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `level`, `content`, `id_customer`, `id_store`, `id_goods`, `id_order`)
VALUES
	(X'3430323838306566353232373034343930313532323730353534303830303030',NULL,'2016-01-09 23:33:26',NULL,NULL,X'34',X'E8BF99E4B988E5A5BD',X'3430323838306565353133393935343430313531333961333032393730303035',X'3430323838313361353038643938333230313530386461323362616630303036',NULL,X'3430323838306566353232356338643130313532323563616337643130303032');

/*!40000 ALTER TABLE `wx_mshop_evaluate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wx_mshop_goodtype
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_mshop_goodtype`;

CREATE TABLE `wx_mshop_goodtype` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分类名称',
  `id_store` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '所属店铺ID',
  `parentid` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '父分类ID',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `wx_mshop_goodtype` WRITE;
/*!40000 ALTER TABLE `wx_mshop_goodtype` DISABLE KEYS */;

INSERT INTO `wx_mshop_goodtype` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `name`, `id_store`, `parentid`, `imgurl`)
VALUES
	(X'3430323838306566353232313933346630313532323162376530656630303133',X'7A687579616E726F6E67','2016-01-08 22:50:44',X'',NULL,X'E9A5AEE69699',X'3430323838306566353232313933346630313532323162333630303530303064',X'',X''),
	(X'3430323838306566353232313933346630313532323162383064353930303135',X'7A687579616E726F6E67','2016-01-08 22:50:56',X'',NULL,X'E9A39FE59381',X'3430323838306566353232313933346630313532323162333630303530303064',X'',X''),
	(X'3430323838306566353232396634396130313532326131323064333430303135',X'79616E6A69756469616E','2016-01-10 13:46:12',X'',NULL,X'E9A5AEE69699',X'3430323838306566353232396634396130313532326130396363373330303063',X'',X''),
	(X'3430323838306566353232396634396130313532326131323332316430303137',X'79616E6A69756469616E','2016-01-10 13:46:21',X'',NULL,X'E9A39FE59381',X'3430323838306566353232396634396130313532326130396363373330303063',X'',X''),
	(X'3430323838313361353133646236646130313531336462373563376530303031',X'313233','2015-11-25 16:16:46',X'',NULL,X'E88AB1E7949F',X'3430323838313361353038643938333230313530386461323362616630303036',X'',X''),
	(X'3430323838313361353133646262376630313531336463666432353630303033',X'313233','2015-11-25 16:43:29',X'',NULL,X'E9A39FE59381',X'3430323838313361353038643938333230313530386461323362616630303036',X'',X''),
	(X'3430323838313361353133646262376630313531336463666632636530303035',X'313233','2015-11-25 16:43:37',X'',NULL,X'E794A8E59381',X'3430323838313361353038643938333230313530386461323362616630303036',X'',X'');

/*!40000 ALTER TABLE `wx_mshop_goodtype` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wx_mshop_ordergoods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_mshop_ordergoods`;

CREATE TABLE `wx_mshop_ordergoods` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `id_order` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '订单ID',
  `id_goods` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '商品ID',
  `original_price` double(13,2) DEFAULT NULL COMMENT '原价',
  `real_price` double(13,2) DEFAULT NULL COMMENT '现价',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `goods_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `imgurl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `wx_mshop_ordergoods` WRITE;
/*!40000 ALTER TABLE `wx_mshop_ordergoods` DISABLE KEYS */;

INSERT INTO `wx_mshop_ordergoods` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `id_order`, `id_goods`, `original_price`, `real_price`, `count`, `goods_name`, `imgurl`)
VALUES
	(X'3430323838306566353232356338643130313532323563616337643530303033',NULL,NULL,NULL,NULL,X'3430323838306566353232356338643130313532323563616337643130303032',X'3430323838313361353133646262376630313531336464376334366530303233',NULL,0.01,1,X'E8B186E5A5B6E4B883E58FB7',X'75706C6F61642F66696C65732F3230313531313235313635323038384633473944554B2E706E67'),
	(X'3430323838306566353232366536386630313532323665643133353830303033',NULL,NULL,NULL,NULL,X'3430323838306566353232366536386630313532323665643133353430303032',X'3430323838313361353133646262376630313531336464376334366530303233',NULL,0.01,1,X'E8B186E5A5B6E4B883E58FB7',X'75706C6F61642F66696C65732F3230313531313235313635323038384633473944554B2E706E67'),
	(X'3430323838306566353232396634396130313532326131623966643330303237',NULL,NULL,NULL,NULL,X'3430323838306566353232396634396130313532326131623966636330303236',X'3430323838306566353232396634396130313532326131326336653230303165',NULL,0.01,1,X'E58FAFE58FA3E58FAFE4B9903530306D6C',X'75706C6F61642F66696C65732F3230313630313130313334363534796B5A695053544F2E6A7067'),
	(X'3430323838306566353232396634396130313532326162316566383130303662',NULL,NULL,NULL,NULL,X'3430323838306566353232396634396130313532326162316566383030303661',X'3430323838313361353133646262376630313531336464376334366530303233',NULL,0.01,1,X'E8B186E5A5B6E4B883E58FB7',X'75706C6F61642F66696C65732F3230313531313235313635323038384633473944554B2E706E67');

/*!40000 ALTER TABLE `wx_mshop_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wx_mshop_storeadmin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_mshop_storeadmin`;

CREATE TABLE `wx_mshop_storeadmin` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `openid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '用户唯一标识',
  `id_store` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺ID',
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `is_head` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '是否是总店',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `wx_mshop_storeadmin` WRITE;
/*!40000 ALTER TABLE `wx_mshop_storeadmin` DISABLE KEYS */;

INSERT INTO `wx_mshop_storeadmin` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `openid`, `id_store`, `name`, `is_head`)
VALUES
	(X'3430323838306566353231633639666630313532316336616365333430303030',NULL,NULL,NULL,NULL,X'6F6C6D7553767A447072693736566932664159376964375F475A7245',X'',X'E983ADE69993E7A38A',X'31'),
	(X'3430323838306566353232316238633530313532323162643439323230303034',NULL,NULL,NULL,NULL,X'6F6C6D755376772D7A766F4E4A7576372D4F6E4168535A70794D6E34',NULL,X'64',X'31');

/*!40000 ALTER TABLE `wx_mshop_storeadmin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table xxxorder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `xxxorder`;

CREATE TABLE `xxxorder` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `test` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'test',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table xxxtest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `xxxtest`;

CREATE TABLE `xxxtest` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `create_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `test` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '测试',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
