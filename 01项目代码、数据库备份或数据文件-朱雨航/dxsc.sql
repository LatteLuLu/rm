/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.62 : Database - dx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dx`;

/*Table structure for table `dx_anyone` */

DROP TABLE IF EXISTS `dx_anyone`;

CREATE TABLE `dx_anyone` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '记录表id',
  `cid` int(10) DEFAULT NULL COMMENT '成员id',
  `cname` varchar(30) DEFAULT NULL COMMENT '成员姓名',
  `datetime` datetime DEFAULT NULL COMMENT '出入时间',
  `state` int(10) DEFAULT NULL COMMENT '进出状态，0表示外出，1表示进入',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `dx_anyone` */

insert  into `dx_anyone`(`id`,`cid`,`cname`,`datetime`,`state`) values (1,101,'查无此人','2022-05-16 00:00:00',NULL),(2,20,'张飞','2022-05-16 00:00:00',NULL),(3,20,'张飞','2022-05-16 00:00:00',1),(4,21,'孙策','2022-05-16 00:00:00',1),(5,22,'钟馗','2022-05-16 00:00:00',0),(6,23,'孙膑','2022-05-16 00:00:00',1),(7,24,'上官婉儿','2022-05-16 00:00:00',1),(8,34,'查无此人','2022-05-16 00:00:00',1),(9,34,'查无此人','2022-05-16 17:13:06',1),(10,26,'白起','2022-05-16 17:13:23',1);

/*Table structure for table `dx_insider` */

DROP TABLE IF EXISTS `dx_insider`;

CREATE TABLE `dx_insider` (
  `id` int(10) NOT NULL COMMENT '工号',
  `cname` varchar(30) NOT NULL COMMENT '姓名',
  `ename` varchar(50) DEFAULT NULL COMMENT '英文名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `etnicGroup` varchar(30) DEFAULT NULL COMMENT '民族',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `nation` varchar(80) DEFAULT NULL COMMENT '籍贯',
  `elephone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(10) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `weChat` varchar(50) DEFAULT NULL COMMENT '微信号',
  `group` varchar(30) DEFAULT NULL COMMENT '组别，insider类中是power',
  `power` varchar(2) DEFAULT NULL COMMENT '权限标识，S超级管理，A普通管理，B内部成员',
  `school` varchar(50) DEFAULT '河南科技大学' COMMENT '学校名称',
  `faculty` varchar(50) DEFAULT NULL COMMENT '院系名称',
  PRIMARY KEY (`id`),
  CONSTRAINT `dx_insider_ibfk_1` FOREIGN KEY (`id`) REFERENCES `dx_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dx_insider` */

insert  into `dx_insider`(`id`,`cname`,`ename`,`sex`,`etnicGroup`,`birthday`,`nation`,`elephone`,`qq`,`email`,`weChat`,`group`,`power`,`school`,`faculty`) values (1,'admin','admin','男','汉','2000-01-01','中国河南省洛阳市涧西区','666666','1234567890','admin@qq.com','admin','机械','S','河南科技大学','机电工程学院'),(9,'张三','zhangsan','男','汉','2002-07-19','河南省洛阳市洛龙区','11111111111','1111111111','1111111111@qq.com','111111','电控','A','河南科技大学','能源与动力学院'),(11,'李四','lisi','男','汉','2000-07-24','河南省洛阳市西工区','22222222222','2222222222','2222222222@qq.com','222222','机械','A','河南科技大学','机电与工程学院'),(12,'王五','wangwu','男','汉','2003-11-13','河南省洛阳市老城区','33333333333','3333333333','3333333333@qq.com','333333','机械','B','河南科技大学','机电工程学院'),(13,'高美丽','gaomeili','女','汉','2002-02-15','河南省郑州市','44444444444','4444444444','4444444444@qq.com','444444','宣传','B','河南科技大学','软件学院'),(14,'曹操','caocao','男','汉','1977-06-17','河南洛阳','55555555555','5555555555','5555555555@qq.com','555555','视觉','B','河南科技大学','马克思学院'),(15,'刘备','liubei','男','汉','1998-02-24','河南省洛阳市王城公园','66666666666','6666666666','6666666666@qq.com','666666','电控','B','河南科技大学','机电工程学院'),(18,'大乔','daqiao','女','吴','2004-07-21','河南省洛阳市涧西区','77777777777','7777777777','7777777777@qq.com','777777','电控','B','河南科技大学','机电工程学院'),(19,'小乔','xiaoqiao','女','吴','2004-06-26','三国吴','88888888888','8888888888','8888888888@qq.com','888888','视觉','B','河南科技大学','软件学院'),(20,'张飞','zhangfie','男','蜀','2001-12-19','三国蜀','99999999999','9999999999','9999999999@qq.com','999999999','机械','B','河南科技大学','车辆学院'),(21,'孙策','sunce','男','吴','2003-10-11','三国吴','aaaaaaaaaaa','aaaaaaaaaa','aaaaaaaaaa@qq.com','aaaaaa','电控','B','河南科技大学','给排水学院'),(22,'钟馗','zhongkui','男','汉','1999-07-12','茅山道士','bbbbbbbbbbb','bbbbbbbbbb','bbbbbbbbbb@qq.com','bbbbbb','机械','B','河南科技大学','信息工程学院'),(23,'孙膑','孙膑','男','苗','2007-06-01','第一平行宇宙','ccccccccccc','cccccccccc','cccccccccc@qq.com','cccccc','视觉','B','河南科技大学','医学院'),(24,'上官婉儿','shanguanwan','女','汉','2001-11-12','河南豫剧','ddddddddddd','dddddddddd','dddddddddd@qq.com','dddddd','宣传','B','河南科技大学','中国戏剧学院'),(25,'空',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'河南科技大学',NULL),(26,'白起','baiqi','男','汉','2002-11-15','陕西县常兴镇','13131313131','1313131313','1313131313@qq.com','13131313','电控','B','河南科技大学','机电工程学院'),(27,'关羽','guanyu','男','汉','2000-05-14','三国蜀','eeeeeeeeeee','eeeeeeeeee','eeeeeeeeee@qq.com','eeeeeeee','电控','B','河南科技大学','文学院'),(31,'赵云','zhaoyun','男','汉','2003-06-20','河南省许昌市','14141414141','1414141414','1414141414@qq.com','14141414','电控','B','河南科技大学','软件学院'),(32,'诸葛亮','zhugeliang','男','汉','2001-08-28','三国蜀','15151515151','1515151515','1515151515@qq.com','15151515','电控','B','河南科技大学','农学院'),(33,'王昭君','wangzhaojun','女','汉','2003-11-19','湖北省宜昌市兴山县','16161616161','1616161616','1616161616@qq.com','16161616','机械','B','河南科技大学','机电工程学院');

/*Table structure for table `dx_partitem` */

DROP TABLE IF EXISTS `dx_partitem`;

CREATE TABLE `dx_partitem` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '零件编号',
  `name` varchar(30) DEFAULT NULL COMMENT '零件名称',
  `specification` varchar(30) DEFAULT NULL COMMENT '零件规格',
  `count` int(5) DEFAULT '0' COMMENT '零件数量',
  `unit` varchar(10) DEFAULT NULL COMMENT '零件的计量单位',
  `category` varchar(30) DEFAULT NULL COMMENT '类别',
  `buyTime` date DEFAULT NULL COMMENT '最后一次的购买时间',
  `price` decimal(18,2) DEFAULT '0.00' COMMENT '零件金额',
  `reimbursement` varchar(30) DEFAULT '尚未填写' COMMENT '报销状态，默认是尚未报销',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `dx_partitem` */

insert  into `dx_partitem`(`id`,`name`,`specification`,`count`,`unit`,`category`,`buyTime`,`price`,`reimbursement`) values (1,'六角螺丝','M5',12,'包','螺丝','2022-03-19','12.00','未报销'),(2,'螺母','M10',3,'包','螺丝','2022-03-18','10.00','未报销'),(3,'螺丝刀','12号',1,'把','工具','2022-03-17','5.65','未报销'),(4,'螺柱','M12*30',5,'包','螺丝','2022-03-19','12.50','未报销'),(5,'电机1','3000',2,'个','电机','2022-03-11','100.00','未报销'),(6,'电机2','3100',5,'个','电机','2022-03-12','215.00','未报销'),(7,'八角螺丝','M16',4,'包','螺丝','2022-03-16','23.45','未报销'),(18,'电机5','4000转',4,'个','电机','2022-03-26','888.00','已报销'),(19,'电机6','3000转',2,'个','电机','2022-03-30','222.00','未报销');

/*Table structure for table `dx_progress` */

DROP TABLE IF EXISTS `dx_progress`;

CREATE TABLE `dx_progress` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '节点编号，主键',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `body` varchar(1000) NOT NULL COMMENT '正文',
  `title_time` date DEFAULT NULL COMMENT '节点时间',
  `img_path` varchar(50) DEFAULT NULL COMMENT '图片名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `dx_progress` */

insert  into `dx_progress`(`id`,`title`,`body`,`title_time`,`img_path`) values (1,'银色圆端盖一体式交流混合步进电动机1','1混合式步进电机是综合了永磁式和反应式的优点而设计的步进电机。它又分为两相、三相和五相，两相步进角一般为1.8度 ，三相步进角 一 般为 1.2度 ，而五相步进角 一 般为0.72度。','2022-03-01','progress_1.jpg'),(2,'SC气缸大全亚德客型小型气动大推力','引导活塞在缸内进行直线往复运动的圆筒形金属机件。空气在发动机气缸中通过膨胀将热能转化为机械能；气体在压缩机气缸中接受活塞压缩而提高压力。','2022-03-02','progress_2.jpg'),(3,'MCU单片机32位微控制器 电子元器件','在STM32F105和STM32F107互连型系列微控制器之前，意法半导体已经推出STM32基本型系列、增强型系列、USB基本型系列、互补型系列；新系列产品沿用增强型系列的72MHz处理频率。','2022-03-03','progress_3.jpg'),(4,'金属小云台 三脚架万向球头','云台是安装、固定手机、相机、摄像机的支撑设备，分为固定和电动云台两种。，云台可以任意旋转，方便使用者使用。','2022-03-04','progress.jpg'),(5,'碳合金减速机传动齿轮变速箱','在轮式工程机械轮边减速器中的行星变速齿轮机构，因其具有结构紧凑、载荷容量大、传动效率高、齿间负荷小、结构刚度好且传动平稳等优点，而广泛应用于各式重型机械的终传动中。','2022-03-05','progress.jpg'),(6,'创建战队','一个无比坚定的主席是团队中最最重要的核心成员，也是一个战队是否可以建立起来的决定因素。当年河科大Robomaster战队准备开始demo meeting的时候其实我内心还是比较忐忑的，毕竟河科大还没有校园战队。','2022-03-21','progress_6.jpg'),(7,'第一阶段成果展示','第一阶段：研究准备阶段与理论学习2021年9月-10月：拟定了开题计划，组织了开题并组织课题组成员学习有关理论，并把相关的资料印发给实验教师进行学习;写出课题的研究实验方案。','2022-03-19','progress_7.jpg'),(8,'第二阶段','第二阶段：课题实施阶段2007年11月—2009年9月：方案本着(学习—实践—研究)边实施、边改进、边研究、积累收集资料，撰写阶段研究报告、论文或典型课例;或以项目教学具体实施过程、学生活动、教师或学生作品展示研究的阶段成果。','2022-03-16','progress_7.jpg'),(9,'第三阶段','　第三阶段：课题总结阶段2009年10月—11月：收集、整理实验原始资料，撰写实验课题研究报告和课题总结，进行结题验收和实验成果交流。','2022-03-18','progress_8.jpg');

/*Table structure for table `dx_sign` */

DROP TABLE IF EXISTS `dx_sign`;

CREATE TABLE `dx_sign` (
  `id` int(10) NOT NULL COMMENT '工号',
  `cname` varchar(30) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `group` varchar(30) DEFAULT NULL COMMENT '组别',
  `power` varchar(2) DEFAULT NULL COMMENT '权限',
  `sign` varchar(10) DEFAULT '❌' COMMENT '是否签到',
  PRIMARY KEY (`id`),
  CONSTRAINT `dx_sign_ibfk_1` FOREIGN KEY (`id`) REFERENCES `dx_insider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dx_sign` */

insert  into `dx_sign`(`id`,`cname`,`sex`,`group`,`power`,`sign`) values (12,'王五','男','电控','B','❌'),(13,'高美丽','女','宣传','B','❌'),(14,'曹操','男','视觉','B','❌'),(15,'刘备','男','电控','B','❌'),(18,'大乔','女','电控','B','❌'),(19,'小乔','女','视觉','B','❌'),(20,'张飞','男','宣传','B','❌'),(21,'孙策','男','电控','B','❌'),(22,'钟馗','男','机械','B','❌'),(23,'孙膑','男','视觉','B','❌'),(26,'白起','男','电控','B','❌'),(27,'关羽','男','电控','B','❌'),(32,'诸葛亮','男','电控','B','❌'),(33,'王昭君','女','机械','B','❌');

/*Table structure for table `dx_user` */

DROP TABLE IF EXISTS `dx_user`;

CREATE TABLE `dx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号，主键',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `email` varchar(80) DEFAULT NULL COMMENT '邮箱',
  `permission` varchar(2) DEFAULT 'B' COMMENT '权限标识，S超级管理，A普通管理，B内部成员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `dx_user` */

insert  into `dx_user`(`id`,`username`,`password`,`email`,`permission`) values (1,'admin','admin','admin@dxsc.com','S'),(2,'Latte','123456','Latte@qq.com','S'),(5,'LatteLuLu','123456','LatteLuLu@qq.com','A'),(6,'admin1','123456','admin1@qq.com','C'),(9,'111111','111111','111111@qq.com','B'),(11,'222222','222222','222222@qq.com','A'),(12,'333333','333333','333333@qq.com','B'),(13,'444444','444444','444444@qq.com','B'),(14,'555555','555555','555555@qq.com','B'),(15,'666666','666666','666666@qq.com','B'),(18,'777777','777777','777777@qq.com','B'),(19,'888888','888888','888888@qq.com','B'),(20,'999999','999999','999999@qq.com','B'),(21,'aaaaaa','aaaaaa','aaaaaa@qq.com','B'),(22,'bbbbbb','bbbbbb','bbbbbb@qq.com','B'),(23,'cccccc','cccccc','cccccc@qq.com','B'),(24,'dddddd','dddddd','dddddd@qq.com','B'),(25,'dfasf','afdds',NULL,'B'),(26,'131313','131313','131313@qq.com','B'),(27,'eeeee','eeeee','eeeee@qq.com','B'),(31,'141414','141414','141414@qq.com','B'),(32,'151515','151515','151515@qq.com','B'),(33,'161616','161616','161616@qq.com','B');

/* Trigger structure for table `dx_anyone` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insider_before_insert_anyone` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `insider_before_insert_anyone` BEFORE INSERT ON `dx_anyone` FOR EACH ROW BEGIN
	IF EXISTS(SELECT * FROM dx_insider WHERE dx_insider.`id` = new.cid) THEN
		/*若有该成员，则完善记录表成员信息
		declare @a varchar(30);
		SELECT cname into @a FROM `dx_insider` WHERE id = 20);*/
		set new.cname = (SELECT cname FROM `dx_insider` WHERE id = new.cid);
	ELSE
		/*若没有该成员，则记录查无此人*/
		SET new.cname = '查无此人';
	END IF;
	
	SET new.datetime = NOW();
	
    END */$$


DELIMITER ;

/* Trigger structure for table `dx_insider` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_insider_user_sign` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `update_insider_user_sign` AFTER UPDATE ON `dx_insider` FOR EACH ROW BEGIN
	
	IF new.power!=old.power THEN
		UPDATE `dx`.`dx_user` SET `dx_user`.`permission`=new.power WHERE new.`id`=`dx_user`.`id`;
		
		if exists(select * from `dx`.`dx_sign` where id=new.id) then
			update `dx`.`dx_sign` set `dx_sign`.`cname`=new.`cname`,`dx_sign`.`sex`=new.`sex`,
				`dx_sign`.`group`=new.`group`,`dx_sign`.`power`=new.`power` where id=new.id;
		else
			insert into `dx`.`dx_sign`(`id`,`cname`,`sex`,`group`,`power`) values(new.id,new.cname,new.sex,new.group,new.power);
		end if;
	ELSE
		UPDATE `dx`.`dx_sign` SET `dx_sign`.`cname`=new.`cname`,`dx_sign`.`sex`=new.`sex`,
				`dx_sign`.`group`=new.`group` WHERE id=new.id;
	END IF;
    END */$$


DELIMITER ;

/* Trigger structure for table `dx_user` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_user_insider` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `insert_user_insider` AFTER INSERT ON `dx_user` FOR EACH ROW BEGIN
	
	insert into `dx`.`dx_insider`(`id`,`cname`,`power`) values(new.id,'空',new.permission);
	insert into `dx`.`dx_sign`(`id`,`cname`,`power`) values(new.id,'空',new.permission);
	
    END */$$


DELIMITER ;

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `aaaa` */

/*!50106 DROP EVENT IF EXISTS `aaaa`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `aaaa` ON SCHEDULE EVERY 1 DAY STARTS '2022-05-19 01:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	    call backup_dx_anyone_and_refresh_dx_sign();
	END */$$
DELIMITER ;

/* Procedure structure for procedure `backup_dx_anyone_and_refresh_dx_sign` */

/*!50003 DROP PROCEDURE IF EXISTS  `backup_dx_anyone_and_refresh_dx_sign` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `backup_dx_anyone_and_refresh_dx_sign`()
BEGIN
    
	declare filename varchar(50);
	set filename = CONCAT(DATE_FORMAT(NOW(),"%Y%m%d"),'.xls');
	SELECT * FROM dx_anyone 
	INTO OUTFILE 'd:/aaa/MySQL_sql/20220516_4.xls'
		FIELDS TERMINATED BY '\t'
			OPTIONALLY ENCLOSED BY '"'
		LINES TERMINATED BY '\n';
	update dx_sign set `sign` = '❌';
    
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
