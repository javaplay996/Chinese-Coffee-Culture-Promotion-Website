/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm716ti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm716ti` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm716ti`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268493112 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-09 12:43:51',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-09 12:43:51',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-09 12:43:51',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-09 12:43:51',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-09 12:43:51',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-09 12:43:51',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615265480304,'2021-03-09 12:51:20',1615265418731,'内蒙古自治区赤峰市阿鲁科尔沁旗巴拉奇如德苏木乡113村道','张三','13800000000','是'),(1615268493111,'2021-03-09 13:41:32',1615268439636,'内蒙古自治区呼伦贝尔市莫力达瓦达斡尔族自治旗塔温敖宝镇','李四','13800000000','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kafeishangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615265524508 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1615265524507,'2021-03-09 12:52:03','kafeishangcheng',1615265418731,1615265390718,'冷翠咖啡','http://localhost:8080/ssm716ti/upload/1615265372951.jpg',1,59,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm716ti/upload/1615268378818.png'),(2,'picture2','http://localhost:8080/ssm716ti/upload/1615268388096.png'),(3,'picture3','http://localhost:8080/ssm716ti/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusskafeishangcheng` */

DROP TABLE IF EXISTS `discusskafeishangcheng`;

CREATE TABLE `discusskafeishangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268565252 DEFAULT CHARSET=utf8 COMMENT='咖啡商城评论表';

/*Data for the table `discusskafeishangcheng` */

insert  into `discusskafeishangcheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-09 12:43:51',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-09 12:43:51',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-09 12:43:51',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-09 12:43:51',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-09 12:43:51',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-09 12:43:51',6,6,'用户名6','评论内容6','回复内容6'),(1615268565251,'2021-03-09 13:42:44',1615268290593,1615268439636,'002','次数',NULL);

/*Table structure for table `discusslianxiwomen` */

DROP TABLE IF EXISTS `discusslianxiwomen`;

CREATE TABLE `discusslianxiwomen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268579222 DEFAULT CHARSET=utf8 COMMENT='联系我们评论表';

/*Data for the table `discusslianxiwomen` */

insert  into `discusslianxiwomen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-09 12:43:51',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-09 12:43:51',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-09 12:43:51',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-09 12:43:51',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-09 12:43:51',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-09 12:43:51',6,6,'用户名6','评论内容6','回复内容6'),(1615268579221,'2021-03-09 13:42:59',1615268356042,1615268439636,'002','测试',NULL);

/*Table structure for table `kafeifenlei` */

DROP TABLE IF EXISTS `kafeifenlei`;

CREATE TABLE `kafeifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268206664 DEFAULT CHARSET=utf8 COMMENT='咖啡分类';

/*Data for the table `kafeifenlei` */

insert  into `kafeifenlei`(`id`,`addtime`,`zhonglei`) values (1615265317034,'2021-03-09 12:48:36','速溶'),(1615265323442,'2021-03-09 12:48:42','现磨'),(1615268206663,'2021-03-09 13:36:45','测试');

/*Table structure for table `kafeishangcheng` */

DROP TABLE IF EXISTS `kafeishangcheng`;

CREATE TABLE `kafeishangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `baozhi` varchar(200) DEFAULT NULL COMMENT '保质',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268290594 DEFAULT CHARSET=utf8 COMMENT='咖啡商城';

/*Data for the table `kafeishangcheng` */

insert  into `kafeishangcheng`(`id`,`addtime`,`mingcheng`,`zhonglei`,`pinpai`,`kouwei`,`baozhi`,`chandi`,`fengmian`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-09 12:43:51','名称1','种类1','品牌1','口味1','保质1','产地1','http://localhost:8080/ssm716ti/upload/kafeishangcheng_fengmian1.jpg','详情1',1,1,'2021-03-09 12:43:51',1,99.9),(32,'2021-03-09 12:43:51','名称2','种类2','品牌2','口味2','保质2','产地2','http://localhost:8080/ssm716ti/upload/kafeishangcheng_fengmian2.jpg','详情2',2,2,'2021-03-09 12:43:51',2,99.9),(33,'2021-03-09 12:43:51','名称3','种类3','品牌3','口味3','保质3','产地3','http://localhost:8080/ssm716ti/upload/kafeishangcheng_fengmian3.jpg','详情3',3,3,'2021-03-09 12:43:51',3,99.9),(34,'2021-03-09 12:43:51','名称4','种类4','品牌4','口味4','保质4','产地4','http://localhost:8080/ssm716ti/upload/kafeishangcheng_fengmian4.jpg','详情4',4,4,'2021-03-09 12:43:51',4,99.9),(35,'2021-03-09 12:43:51','名称5','种类5','品牌5','口味5','保质5','产地5','http://localhost:8080/ssm716ti/upload/kafeishangcheng_fengmian5.jpg','详情5',5,5,'2021-03-09 12:48:01',6,99.9),(36,'2021-03-09 12:43:51','名称6','种类6','品牌6','口味6','保质6','产地6','http://localhost:8080/ssm716ti/upload/kafeishangcheng_fengmian6.jpg','详情6',6,6,'2021-03-09 12:43:51',6,99.9),(1615265390718,'2021-03-09 12:49:50','冷翠咖啡','现磨','星巴克','美式经典','365天','英国','http://localhost:8080/ssm716ti/upload/1615265372951.jpg','<p><img src=\"http://localhost:8080/ssm716ti/upload/1615265389135.jpg\"></p>',0,0,'2021-03-09 12:52:14',2,59),(1615268290593,'2021-03-09 13:38:09','摩卡咖啡','现磨','星巴克','丝滑','365天','美国','http://localhost:8080/ssm716ti/upload/1615268264012.jpg','<p>编辑器可传文字/图片</p><p><img src=\"http://localhost:8080/ssm716ti/upload/1615268288188.jpg\"></p>',1,0,'2021-03-09 13:42:47',5,98);

/*Table structure for table `lianxiwomen` */

DROP TABLE IF EXISTS `lianxiwomen`;

CREATE TABLE `lianxiwomen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `chuanzhen` varchar(200) DEFAULT NULL COMMENT '传真',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `xiangqing` longtext COMMENT '详情',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268356043 DEFAULT CHARSET=utf8 COMMENT='联系我们';

/*Data for the table `lianxiwomen` */

insert  into `lianxiwomen`(`id`,`addtime`,`biaoti`,`fengmian`,`dianhua`,`youxiang`,`chuanzhen`,`dizhi`,`xiangqing`,`clicknum`) values (1615268356042,'2021-03-09 13:39:15','欢迎联系我们','http://localhost:8080/ssm716ti/upload/1615268320520.jpg','0755-2311111','123@qq.com','23362146','xx省xx市xx县','<p><img src=\"http://localhost:8080/ssm716ti/upload/1615268353500.jpeg\"></p>',2);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268420853 DEFAULT CHARSET=utf8 COMMENT='咖啡文化';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-09 12:43:51','标题1','简介1','http://localhost:8080/ssm716ti/upload/news_picture1.jpg','内容1'),(92,'2021-03-09 12:43:51','标题2','简介2','http://localhost:8080/ssm716ti/upload/news_picture2.jpg','内容2'),(93,'2021-03-09 12:43:51','标题3','简介3','http://localhost:8080/ssm716ti/upload/news_picture3.jpg','内容3'),(94,'2021-03-09 12:43:51','标题4','简介4','http://localhost:8080/ssm716ti/upload/news_picture4.jpg','内容4'),(95,'2021-03-09 12:43:51','标题5','简介5','http://localhost:8080/ssm716ti/upload/news_picture5.jpg','内容5'),(96,'2021-03-09 12:43:51','标题6','简介6','http://localhost:8080/ssm716ti/upload/news_picture6.jpg','内容6'),(1615268420852,'2021-03-09 13:40:20','咖啡文化测试','测试测试测试','http://localhost:8080/ssm716ti/upload/1615268409845.jpg','<p><img src=\"http://localhost:8080/ssm716ti/upload/1615268419008.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kafeishangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268554758 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615265534583,'2021-03-09 12:52:14','20213912521419037572','kafeishangcheng',1615265418731,1615265390718,'冷翠咖啡','http://localhost:8080/ssm716ti/upload/1615265372951.jpg',1,59,59,59,59,1,'已发货','内蒙古自治区赤峰市阿鲁科尔沁旗巴拉奇如德苏木乡113村道'),(1615268554757,'2021-03-09 13:42:34','20213913423435417067','kafeishangcheng',1615268439636,1615268290593,'摩卡咖啡','http://localhost:8080/ssm716ti/upload/1615268264012.jpg',4,98,98,392,392,1,'已完成','内蒙古自治区呼伦贝尔市莫力达瓦达斡尔族自治旗塔温敖宝镇');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268575227 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615268538108,'2021-03-09 13:42:18',1615268439636,1615268290593,'kafeishangcheng','摩卡咖啡','http://localhost:8080/ssm716ti/upload/1615268264012.jpg'),(1615268575226,'2021-03-09 13:42:55',1615268439636,1615268356042,'lianxiwomen','欢迎联系我们','http://localhost:8080/ssm716ti/upload/1615268320520.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','005dahbqgeeia7dxzcyr0m7app2gpm8m','2021-03-09 12:48:20','2021-03-09 14:43:21'),(2,1615265418731,'001','yonghu','用户','v8pgpdyo6lipanx6ji9lkeypjj7e6abb','2021-03-09 12:50:25','2021-03-09 13:50:26'),(3,1615268439636,'002','yonghu','用户','7qdqrjxzp47xkdmteuhmcllhxftgxudd','2021-03-09 13:40:46','2021-03-09 14:43:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 12:43:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615268439637 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`money`) values (11,'2021-03-09 12:43:51','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm716ti/upload/yonghu_zhaopian1.jpg',100),(12,'2021-03-09 12:43:51','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm716ti/upload/yonghu_zhaopian2.jpg',100),(13,'2021-03-09 12:43:51','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm716ti/upload/yonghu_zhaopian3.jpg',100),(14,'2021-03-09 12:43:51','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm716ti/upload/yonghu_zhaopian4.jpg',100),(15,'2021-03-09 12:43:51','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm716ti/upload/yonghu_zhaopian5.jpg',100),(16,'2021-03-09 12:43:51','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm716ti/upload/yonghu_zhaopian6.jpg',100),(1615265418731,'2021-03-09 12:50:18','001','001','张三','男',23,'13800000000','123@qq.co','http://localhost:8080/ssm716ti/upload/1615265436194.jpeg',999940),(1615268439636,'2021-03-09 13:40:39','002','001','李四','男',24,'13800000000','123@qq.com','http://localhost:8080/ssm716ti/upload/1615268456004.jpeg',99607);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
