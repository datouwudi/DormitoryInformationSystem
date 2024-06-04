/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t100`;
CREATE DATABASE IF NOT EXISTS `t100` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t100`;

DROP TABLE IF EXISTS `banji`;
CREATE TABLE IF NOT EXISTS `banji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='班级';

DELETE FROM `banji`;
INSERT INTO `banji` (`id`, `addtime`, `banji`) VALUES
	(11, '2021-05-06 08:20:19', '班级1'),
	(12, '2021-05-06 08:20:19', '班级2'),
	(13, '2021-05-06 08:20:19', '班级3'),
	(14, '2021-05-06 08:20:19', '班级4'),
	(15, '2021-05-06 08:20:19', '班级5'),
	(16, '2021-05-06 08:20:19', '班级6');

DROP TABLE IF EXISTS `baoxiuchuli`;
CREATE TABLE IF NOT EXISTS `baoxiuchuli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) DEFAULT NULL COMMENT '报修设备',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `baoxiuriqi` varchar(200) DEFAULT NULL COMMENT '报修日期',
  `weixiufankui` varchar(200) DEFAULT NULL COMMENT '维修反馈',
  `weixiujindu` varchar(200) DEFAULT NULL COMMENT '维修进度',
  `gengxinriqi` datetime DEFAULT NULL COMMENT '更新日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `weixiugonghao` varchar(200) DEFAULT NULL COMMENT '维修工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='报修处理';

DELETE FROM `baoxiuchuli`;
INSERT INTO `baoxiuchuli` (`id`, `addtime`, `baoxiushebei`, `leixing`, `baoxiuriqi`, `weixiufankui`, `weixiujindu`, `gengxinriqi`, `xuehao`, `xueshengxingming`, `sushehao`, `banji`, `weixiugonghao`, `xingming`, `lianxidianhua`) VALUES
	(81, '2021-05-06 08:20:19', '报修设备1', '类型1', '报修日期1', '维修反馈1', '维修中', '2021-05-06 16:20:19', '学号1', '学生姓名1', '宿舍号1', '班级1', '维修工号1', '姓名1', '联系电话1'),
	(82, '2021-05-06 08:20:19', '报修设备2', '类型2', '报修日期2', '维修反馈2', '维修中', '2021-05-06 16:20:19', '学号2', '学生姓名2', '宿舍号2', '班级2', '维修工号2', '姓名2', '联系电话2'),
	(83, '2021-05-06 08:20:19', '报修设备3', '类型3', '报修日期3', '维修反馈3', '维修中', '2021-05-06 16:20:19', '学号3', '学生姓名3', '宿舍号3', '班级3', '维修工号3', '姓名3', '联系电话3'),
	(84, '2021-05-06 08:20:19', '报修设备4', '类型4', '报修日期4', '维修反馈4', '维修中', '2021-05-06 16:20:19', '学号4', '学生姓名4', '宿舍号4', '班级4', '维修工号4', '姓名4', '联系电话4'),
	(85, '2021-05-06 08:20:19', '报修设备5', '类型5', '报修日期5', '维修反馈5', '维修中', '2021-05-06 16:20:19', '学号5', '学生姓名5', '宿舍号5', '班级5', '维修工号5', '姓名5', '联系电话5'),
	(86, '2021-05-06 08:20:19', '报修设备6', '类型6', '报修日期6', '维修反馈6', '维修中', '2021-05-06 16:20:19', '学号6', '学生姓名6', '宿舍号6', '班级6', '维修工号6', '姓名6', '联系电话6');

DROP TABLE IF EXISTS `baoxiuxinxi`;
CREATE TABLE IF NOT EXISTS `baoxiuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) NOT NULL COMMENT '报修设备',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='报修信息';

DELETE FROM `baoxiuxinxi`;
INSERT INTO `baoxiuxinxi` (`id`, `addtime`, `baoxiushebei`, `leixing`, `tupian`, `baoxiuneirong`, `baoxiuriqi`, `xuehao`, `xueshengxingming`, `banji`, `sushehao`, `shouji`, `sfsh`, `shhf`) VALUES
	(71, '2021-05-06 08:20:19', '报修设备1', '水工', 'http://localhost:8080/springboot68ozj/upload/baoxiuxinxi_tupian1.jpg', '报修内容1', '2021-05-06', '学号1', '学生姓名1', '班级1', '宿舍号1', '手机1', '是', ''),
	(72, '2021-05-06 08:20:19', '报修设备2', '水工', 'http://localhost:8080/springboot68ozj/upload/baoxiuxinxi_tupian2.jpg', '报修内容2', '2021-05-06', '学号2', '学生姓名2', '班级2', '宿舍号2', '手机2', '是', ''),
	(73, '2021-05-06 08:20:19', '报修设备3', '水工', 'http://localhost:8080/springboot68ozj/upload/baoxiuxinxi_tupian3.jpg', '报修内容3', '2021-05-06', '学号3', '学生姓名3', '班级3', '宿舍号3', '手机3', '是', ''),
	(74, '2021-05-06 08:20:19', '报修设备4', '水工', 'http://localhost:8080/springboot68ozj/upload/baoxiuxinxi_tupian4.jpg', '报修内容4', '2021-05-06', '学号4', '学生姓名4', '班级4', '宿舍号4', '手机4', '是', ''),
	(75, '2021-05-06 08:20:19', '报修设备5', '水工', 'http://localhost:8080/springboot68ozj/upload/baoxiuxinxi_tupian5.jpg', '报修内容5', '2021-05-06', '学号5', '学生姓名5', '班级5', '宿舍号5', '手机5', '是', ''),
	(76, '2021-05-06 08:20:19', '报修设备6', '水工', 'http://localhost:8080/springboot68ozj/upload/baoxiuxinxi_tupian6.jpg', '报修内容6', '2021-05-06', '学号6', '学生姓名6', '班级6', '宿舍号6', '手机6', '是', '');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot68ozj/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot68ozj/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot68ozj/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussshiwuxinxi`;
CREATE TABLE IF NOT EXISTS `discussshiwuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb3 COMMENT='失物信息评论表';

DELETE FROM `discussshiwuxinxi`;
INSERT INTO `discussshiwuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(221, '2021-05-06 08:20:19', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(222, '2021-05-06 08:20:19', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(223, '2021-05-06 08:20:19', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(224, '2021-05-06 08:20:19', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(225, '2021-05-06 08:20:19', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(226, '2021-05-06 08:20:19', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusstongzhuangshui`;
CREATE TABLE IF NOT EXISTS `discusstongzhuangshui` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb3 COMMENT='桶装水评论表';

DELETE FROM `discusstongzhuangshui`;
INSERT INTO `discusstongzhuangshui` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(211, '2021-05-06 08:20:19', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(212, '2021-05-06 08:20:19', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(213, '2021-05-06 08:20:19', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(214, '2021-05-06 08:20:19', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(215, '2021-05-06 08:20:19', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(216, '2021-05-06 08:20:19', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusszhaolingxinxi`;
CREATE TABLE IF NOT EXISTS `discusszhaolingxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb3 COMMENT='招领信息评论表';

DELETE FROM `discusszhaolingxinxi`;
INSERT INTO `discusszhaolingxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(231, '2021-05-06 08:20:19', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(232, '2021-05-06 08:20:19', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(233, '2021-05-06 08:20:19', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(234, '2021-05-06 08:20:19', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(235, '2021-05-06 08:20:19', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(236, '2021-05-06 08:20:19', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `jiaofeixinxi`;
CREATE TABLE IF NOT EXISTS `jiaofeixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `jiaofeimingcheng` varchar(200) NOT NULL COMMENT '缴费名称',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  `jiaofeijine` int NOT NULL COMMENT '缴费金额',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='缴费信息';

DELETE FROM `jiaofeixinxi`;
INSERT INTO `jiaofeixinxi` (`id`, `addtime`, `xuehao`, `xueshengxingming`, `banji`, `sushehao`, `jiaofeimingcheng`, `jiaofeileixing`, `jiaofeijine`, `dengjiriqi`, `ispay`) VALUES
	(121, '2021-05-06 08:20:19', '学号1', '学生姓名1', '班级1', '宿舍号1', '缴费名称1', '水费', 1, '2021-05-06', '未支付'),
	(122, '2021-05-06 08:20:19', '学号2', '学生姓名2', '班级2', '宿舍号2', '缴费名称2', '水费', 2, '2021-05-06', '未支付'),
	(123, '2021-05-06 08:20:19', '学号3', '学生姓名3', '班级3', '宿舍号3', '缴费名称3', '水费', 3, '2021-05-06', '未支付'),
	(124, '2021-05-06 08:20:19', '学号4', '学生姓名4', '班级4', '宿舍号4', '缴费名称4', '水费', 4, '2021-05-06', '未支付'),
	(125, '2021-05-06 08:20:19', '学号5', '学生姓名5', '班级5', '宿舍号5', '缴费名称5', '水费', 5, '2021-05-06', '未支付'),
	(126, '2021-05-06 08:20:19', '学号6', '学生姓名6', '班级6', '宿舍号6', '缴费名称6', '水费', 6, '2021-05-06', '未支付');

DROP TABLE IF EXISTS `jiaqiliusu`;
CREATE TABLE IF NOT EXISTS `jiaqiliusu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `liuxiaoliyou` longtext COMMENT '留校理由',
  `kaishiriqi` date DEFAULT NULL COMMENT '开始日期',
  `liuxiaotianshu` int DEFAULT NULL COMMENT '留校天数',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='假期留宿';

DELETE FROM `jiaqiliusu`;
INSERT INTO `jiaqiliusu` (`id`, `addtime`, `xuehao`, `xueshengxingming`, `banji`, `sushehao`, `liuxiaoliyou`, `kaishiriqi`, `liuxiaotianshu`, `shenqingshijian`, `sfsh`, `shhf`) VALUES
	(91, '2021-05-06 08:20:19', '学号1', '学生姓名1', '班级1', '宿舍号1', '留校理由1', '2021-05-06', 1, '2021-05-06', '是', ''),
	(92, '2021-05-06 08:20:19', '学号2', '学生姓名2', '班级2', '宿舍号2', '留校理由2', '2021-05-06', 2, '2021-05-06', '是', ''),
	(93, '2021-05-06 08:20:19', '学号3', '学生姓名3', '班级3', '宿舍号3', '留校理由3', '2021-05-06', 3, '2021-05-06', '是', ''),
	(94, '2021-05-06 08:20:19', '学号4', '学生姓名4', '班级4', '宿舍号4', '留校理由4', '2021-05-06', 4, '2021-05-06', '是', ''),
	(95, '2021-05-06 08:20:19', '学号5', '学生姓名5', '班级5', '宿舍号5', '留校理由5', '2021-05-06', 5, '2021-05-06', '是', ''),
	(96, '2021-05-06 08:20:19', '学号6', '学生姓名6', '班级6', '宿舍号6', '留校理由6', '2021-05-06', 6, '2021-05-06', '是', '');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb3 COMMENT='宿舍公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(201, '2021-05-06 08:20:19', '标题1', '简介1', 'http://localhost:8080/springboot68ozj/upload/news_picture1.jpg', '内容1'),
	(202, '2021-05-06 08:20:19', '标题2', '简介2', 'http://localhost:8080/springboot68ozj/upload/news_picture2.jpg', '内容2'),
	(203, '2021-05-06 08:20:19', '标题3', '简介3', 'http://localhost:8080/springboot68ozj/upload/news_picture3.jpg', '内容3'),
	(204, '2021-05-06 08:20:19', '标题4', '简介4', 'http://localhost:8080/springboot68ozj/upload/news_picture4.jpg', '内容4'),
	(205, '2021-05-06 08:20:19', '标题5', '简介5', 'http://localhost:8080/springboot68ozj/upload/news_picture5.jpg', '内容5'),
	(206, '2021-05-06 08:20:19', '标题6', '简介6', 'http://localhost:8080/springboot68ozj/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `addtime`, `shangjiazhanghao`, `mima`, `shangjiamingcheng`, `touxiang`, `lianxidianhua`, `dizhi`) VALUES
	(41, '2021-05-06 08:20:19', '商家1', '123456', '商家名称1', 'http://localhost:8080/springboot68ozj/upload/shangjia_touxiang1.jpg', '13823888881', '地址1'),
	(42, '2021-05-06 08:20:19', '商家2', '123456', '商家名称2', 'http://localhost:8080/springboot68ozj/upload/shangjia_touxiang2.jpg', '13823888882', '地址2'),
	(43, '2021-05-06 08:20:19', '商家3', '123456', '商家名称3', 'http://localhost:8080/springboot68ozj/upload/shangjia_touxiang3.jpg', '13823888883', '地址3'),
	(44, '2021-05-06 08:20:19', '商家4', '123456', '商家名称4', 'http://localhost:8080/springboot68ozj/upload/shangjia_touxiang4.jpg', '13823888884', '地址4'),
	(45, '2021-05-06 08:20:19', '商家5', '123456', '商家名称5', 'http://localhost:8080/springboot68ozj/upload/shangjia_touxiang5.jpg', '13823888885', '地址5'),
	(46, '2021-05-06 08:20:19', '商家6', '123456', '商家名称6', 'http://localhost:8080/springboot68ozj/upload/shangjia_touxiang6.jpg', '13823888886', '地址6');

DROP TABLE IF EXISTS `shiwuxinxi`;
CREATE TABLE IF NOT EXISTS `shiwuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wupinleibie` varchar(200) NOT NULL COMMENT '物品类别',
  `diushididian` varchar(200) NOT NULL COMMENT '丢失地点',
  `diushishijian` datetime NOT NULL COMMENT '丢失时间',
  `xunwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '寻物状态',
  `xiangximiaoshu` longtext COMMENT '详细描述',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb3 COMMENT='失物信息';

DELETE FROM `shiwuxinxi`;
INSERT INTO `shiwuxinxi` (`id`, `addtime`, `wupinmingcheng`, `tupian`, `wupinleibie`, `diushididian`, `diushishijian`, `xunwuzhuangtai`, `xiangximiaoshu`, `xuehao`, `xueshengxingming`, `shouji`) VALUES
	(171, '2021-05-06 08:20:19', '物品名称1', 'http://localhost:8080/springboot68ozj/upload/shiwuxinxi_tupian1.jpg', '物品类别1', '丢失地点1', '2021-05-06 16:20:19', '未寻回', '详细描述1', '学号1', '学生姓名1', '手机1'),
	(172, '2021-05-06 08:20:19', '物品名称2', 'http://localhost:8080/springboot68ozj/upload/shiwuxinxi_tupian2.jpg', '物品类别2', '丢失地点2', '2021-05-06 16:20:19', '未寻回', '详细描述2', '学号2', '学生姓名2', '手机2'),
	(173, '2021-05-06 08:20:19', '物品名称3', 'http://localhost:8080/springboot68ozj/upload/shiwuxinxi_tupian3.jpg', '物品类别3', '丢失地点3', '2021-05-06 16:20:19', '未寻回', '详细描述3', '学号3', '学生姓名3', '手机3'),
	(174, '2021-05-06 08:20:19', '物品名称4', 'http://localhost:8080/springboot68ozj/upload/shiwuxinxi_tupian4.jpg', '物品类别4', '丢失地点4', '2021-05-06 16:20:19', '未寻回', '详细描述4', '学号4', '学生姓名4', '手机4'),
	(175, '2021-05-06 08:20:19', '物品名称5', 'http://localhost:8080/springboot68ozj/upload/shiwuxinxi_tupian5.jpg', '物品类别5', '丢失地点5', '2021-05-06 16:20:19', '未寻回', '详细描述5', '学号5', '学生姓名5', '手机5'),
	(176, '2021-05-06 08:20:19', '物品名称6', 'http://localhost:8080/springboot68ozj/upload/shiwuxinxi_tupian6.jpg', '物品类别6', '丢失地点6', '2021-05-06 16:20:19', '未寻回', '详细描述6', '学号6', '学生姓名6', '手机6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707973621094 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1707973154770, '2024-02-15 04:59:14', 21, 142, 'tongzhuangshui', '名称2', 'http://localhost:8080/springboot68ozj/upload/1620289474845.jpg'),
	(1707973621093, '2024-02-15 05:07:00', 21, 145, 'tongzhuangshui', '名称5', 'http://localhost:8080/springboot68ozj/upload/1620289437476.jpg');

DROP TABLE IF EXISTS `susheanpai`;
CREATE TABLE IF NOT EXISTS `susheanpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` varchar(200) DEFAULT NULL COMMENT '可住人数',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `anpairiqi` date DEFAULT NULL COMMENT '安排日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='宿舍安排';

DELETE FROM `susheanpai`;
INSERT INTO `susheanpai` (`id`, `addtime`, `sushehao`, `susheleixing`, `weizhi`, `kezhurenshu`, `xuehao`, `xueshengxingming`, `banji`, `anpairiqi`) VALUES
	(61, '2021-05-06 08:20:19', '宿舍号1', '宿舍类型1', '位置1', '可住人数1', '学号1', '学生姓名1', '班级1', '2021-05-06'),
	(62, '2021-05-06 08:20:19', '宿舍号2', '宿舍类型2', '位置2', '可住人数2', '学号2', '学生姓名2', '班级2', '2021-05-06'),
	(63, '2021-05-06 08:20:19', '宿舍号3', '宿舍类型3', '位置3', '可住人数3', '学号3', '学生姓名3', '班级3', '2021-05-06'),
	(64, '2021-05-06 08:20:19', '宿舍号4', '宿舍类型4', '位置4', '可住人数4', '学号4', '学生姓名4', '班级4', '2021-05-06'),
	(65, '2021-05-06 08:20:19', '宿舍号5', '宿舍类型5', '位置5', '可住人数5', '学号5', '学生姓名5', '班级5', '2021-05-06'),
	(66, '2021-05-06 08:20:19', '宿舍号6', '宿舍类型6', '位置6', '可住人数6', '学号6', '学生姓名6', '班级6', '2021-05-06');

DROP TABLE IF EXISTS `sushexinxi`;
CREATE TABLE IF NOT EXISTS `sushexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) NOT NULL COMMENT '宿舍类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` int DEFAULT NULL COMMENT '可住人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='宿舍信息';

DELETE FROM `sushexinxi`;
INSERT INTO `sushexinxi` (`id`, `addtime`, `sushehao`, `susheleixing`, `tupian`, `loudong`, `weizhi`, `kezhurenshu`, `beizhu`) VALUES
	(51, '2021-05-06 08:20:19', '宿舍号1', '男生', 'http://localhost:8080/springboot68ozj/upload/sushexinxi_tupian1.jpg', '楼栋1', '位置1', 1, '备注1'),
	(52, '2021-05-06 08:20:19', '宿舍号2', '男生', 'http://localhost:8080/springboot68ozj/upload/sushexinxi_tupian2.jpg', '楼栋2', '位置2', 2, '备注2'),
	(53, '2021-05-06 08:20:19', '宿舍号3', '男生', 'http://localhost:8080/springboot68ozj/upload/sushexinxi_tupian3.jpg', '楼栋3', '位置3', 3, '备注3'),
	(54, '2021-05-06 08:20:19', '宿舍号4', '男生', 'http://localhost:8080/springboot68ozj/upload/sushexinxi_tupian4.jpg', '楼栋4', '位置4', 4, '备注4'),
	(55, '2021-05-06 08:20:19', '宿舍号5', '男生', 'http://localhost:8080/springboot68ozj/upload/sushexinxi_tupian5.jpg', '楼栋5', '位置5', 5, '备注5'),
	(56, '2021-05-06 08:20:19', '宿舍号6', '男生', 'http://localhost:8080/springboot68ozj/upload/sushexinxi_tupian6.jpg', '楼栋6', '位置6', 6, '备注6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 't24ncp2cqcz0pafppat8e7hxs54rok9g', '2021-05-06 08:22:52', '2024-02-15 06:04:37'),
	(2, 21, '学生1', 'xuesheng', '学生', 'i1fc871uzhu25q1fv5mcrg61l22y6thz', '2024-02-15 04:59:01', '2024-02-15 06:06:50'),
	(3, 31, '维修人员1', 'weixiurenyuan', '维修人员', '2t0uvd5jgb4q9mh420lkh90rcfnulw2r', '2024-02-15 05:06:27', '2024-02-15 06:06:28'),
	(4, 41, '商家1', 'shangjia', '商家', 'hnwg6l7fimdkd47ysyf05ifcr4xa09gz', '2024-02-15 05:06:38', '2024-02-15 06:06:39');

DROP TABLE IF EXISTS `tongzhuangshui`;
CREATE TABLE IF NOT EXISTS `tongzhuangshui` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `xiangqing` longtext COMMENT '详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='桶装水';

DELETE FROM `tongzhuangshui`;
INSERT INTO `tongzhuangshui` (`id`, `addtime`, `mingcheng`, `tupian`, `pinpai`, `guige`, `jiage`, `xiangqing`, `shangjiazhanghao`, `shangjiamingcheng`, `clicktime`, `clicknum`) VALUES
	(141, '2021-05-06 08:20:19', '名称1', 'http://localhost:8080/springboot68ozj/upload/1620289488360.jpg', '品牌1', '规格1', 1, '<p>详情1</p>', '商家账号1', '商家名称1', '2021-05-06 16:24:42', 3),
	(142, '2021-05-06 08:20:19', '名称2', 'http://localhost:8080/springboot68ozj/upload/1620289474845.jpg', '品牌2', '规格2', 2, '<p>详情2</p>', '商家账号2', '商家名称2', '2024-02-15 13:05:37', 8),
	(143, '2021-05-06 08:20:19', '名称3', 'http://localhost:8080/springboot68ozj/upload/1620289501166.jpg', '品牌3', '规格3', 3, '<p>详情3</p>', '商家账号3', '商家名称3', '2021-05-06 16:24:54', 5),
	(144, '2021-05-06 08:20:19', '名称4', 'http://localhost:8080/springboot68ozj/upload/1620289429146.jpg', '品牌4', '规格4', 4, '<p>详情4</p>', '商家账号4', '商家名称4', '2021-05-06 16:23:45', 5),
	(145, '2021-05-06 08:20:19', '名称5', 'http://localhost:8080/springboot68ozj/upload/1620289437476.jpg', '品牌5', '规格5', 5, '<p>详情5</p>', '商家账号5', '商家名称5', '2024-02-15 13:06:59', 7),
	(146, '2021-05-06 08:20:19', '名称6', 'http://localhost:8080/springboot68ozj/upload/1620289445401.jpg', '品牌6', '规格6', 6, '<p>详情6</p>', '商家账号6', '商家名称6', '2021-05-06 16:24:01', 7);

DROP TABLE IF EXISTS `tongzhuangshuipinpai`;
CREATE TABLE IF NOT EXISTS `tongzhuangshuipinpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinpai` (`pinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='桶装水品牌';

DELETE FROM `tongzhuangshuipinpai`;
INSERT INTO `tongzhuangshuipinpai` (`id`, `addtime`, `pinpai`) VALUES
	(131, '2021-05-06 08:20:19', '品牌1'),
	(132, '2021-05-06 08:20:19', '品牌2'),
	(133, '2021-05-06 08:20:19', '品牌3'),
	(134, '2021-05-06 08:20:19', '品牌4'),
	(135, '2021-05-06 08:20:19', '品牌5'),
	(136, '2021-05-06 08:20:19', '品牌6');

DROP TABLE IF EXISTS `tongzhuangshuiyuding`;
CREATE TABLE IF NOT EXISTS `tongzhuangshuiyuding` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `songhuodizhi` varchar(200) DEFAULT NULL COMMENT '送货地址',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3 COMMENT='桶装水预订';

DELETE FROM `tongzhuangshuiyuding`;
INSERT INTO `tongzhuangshuiyuding` (`id`, `addtime`, `mingcheng`, `pinpai`, `guige`, `jiage`, `shuliang`, `zongjine`, `beizhu`, `songhuodizhi`, `xuehao`, `shouji`, `shangjiazhanghao`, `shangjiamingcheng`, `sfsh`, `shhf`, `ispay`) VALUES
	(151, '2021-05-06 08:20:19', '名称1', '品牌1', '规格1', 1, 1, '总金额1', '备注1', '送货地址1', '学号1', '手机1', '商家账号1', '商家名称1', '是', '', '未支付'),
	(152, '2021-05-06 08:20:19', '名称2', '品牌2', '规格2', 2, 2, '总金额2', '备注2', '送货地址2', '学号2', '手机2', '商家账号2', '商家名称2', '是', '', '未支付'),
	(153, '2021-05-06 08:20:19', '名称3', '品牌3', '规格3', 3, 3, '总金额3', '备注3', '送货地址3', '学号3', '手机3', '商家账号3', '商家名称3', '是', '', '未支付'),
	(154, '2021-05-06 08:20:19', '名称4', '品牌4', '规格4', 4, 4, '总金额4', '备注4', '送货地址4', '学号4', '手机4', '商家账号4', '商家名称4', '是', '', '未支付'),
	(155, '2021-05-06 08:20:19', '名称5', '品牌5', '规格5', 5, 5, '总金额5', '备注5', '送货地址5', '学号5', '手机5', '商家账号5', '商家名称5', '是', '', '未支付'),
	(156, '2021-05-06 08:20:19', '名称6', '品牌6', '规格6', 6, 6, '总金额6', '备注6', '送货地址6', '学号6', '手机6', '商家账号6', '商家名称6', '是', '', '未支付');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-06 08:20:19');

DROP TABLE IF EXISTS `weishengjiancha`;
CREATE TABLE IF NOT EXISTS `weishengjiancha` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `jianchaneirong` varchar(200) DEFAULT NULL COMMENT '检查内容',
  `shifouzhengjie` varchar(200) DEFAULT NULL COMMENT '是否整洁',
  `shifouweigui` varchar(200) DEFAULT NULL COMMENT '是否违规',
  `weishengpingfen` int DEFAULT NULL COMMENT '卫生评分',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `jianchariqi` date DEFAULT NULL COMMENT '检查日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='卫生检查';

DELETE FROM `weishengjiancha`;
INSERT INTO `weishengjiancha` (`id`, `addtime`, `xuehao`, `xueshengxingming`, `banji`, `sushehao`, `jianchaneirong`, `shifouzhengjie`, `shifouweigui`, `weishengpingfen`, `jianchajieguo`, `jianchariqi`) VALUES
	(101, '2021-05-06 08:20:19', '学号1', '学生姓名1', '班级1', '宿舍号1', '检查内容1', '是', '是', 1, '合格', '2021-05-06'),
	(102, '2021-05-06 08:20:19', '学号2', '学生姓名2', '班级2', '宿舍号2', '检查内容2', '是', '是', 2, '合格', '2021-05-06'),
	(103, '2021-05-06 08:20:19', '学号3', '学生姓名3', '班级3', '宿舍号3', '检查内容3', '是', '是', 3, '合格', '2021-05-06'),
	(104, '2021-05-06 08:20:19', '学号4', '学生姓名4', '班级4', '宿舍号4', '检查内容4', '是', '是', 4, '合格', '2021-05-06'),
	(105, '2021-05-06 08:20:19', '学号5', '学生姓名5', '班级5', '宿舍号5', '检查内容5', '是', '是', 5, '合格', '2021-05-06'),
	(106, '2021-05-06 08:20:19', '学号6', '学生姓名6', '班级6', '宿舍号6', '检查内容6', '是', '是', 6, '合格', '2021-05-06');

DROP TABLE IF EXISTS `weixiurenyuan`;
CREATE TABLE IF NOT EXISTS `weixiurenyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiugonghao` varchar(200) NOT NULL COMMENT '维修工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixiugonghao` (`weixiugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='维修人员';

DELETE FROM `weixiurenyuan`;
INSERT INTO `weixiurenyuan` (`id`, `addtime`, `weixiugonghao`, `mima`, `xingming`, `xingbie`, `zhaopian`, `lianxidianhua`, `shenfenzheng`) VALUES
	(31, '2021-05-06 08:20:19', '维修人员1', '123456', '姓名1', '男', 'http://localhost:8080/springboot68ozj/upload/weixiurenyuan_zhaopian1.jpg', '13823888881', '440300199101010001'),
	(32, '2021-05-06 08:20:19', '维修人员2', '123456', '姓名2', '男', 'http://localhost:8080/springboot68ozj/upload/weixiurenyuan_zhaopian2.jpg', '13823888882', '440300199202020002'),
	(33, '2021-05-06 08:20:19', '维修人员3', '123456', '姓名3', '男', 'http://localhost:8080/springboot68ozj/upload/weixiurenyuan_zhaopian3.jpg', '13823888883', '440300199303030003'),
	(34, '2021-05-06 08:20:19', '维修人员4', '123456', '姓名4', '男', 'http://localhost:8080/springboot68ozj/upload/weixiurenyuan_zhaopian4.jpg', '13823888884', '440300199404040004'),
	(35, '2021-05-06 08:20:19', '维修人员5', '123456', '姓名5', '男', 'http://localhost:8080/springboot68ozj/upload/weixiurenyuan_zhaopian5.jpg', '13823888885', '440300199505050005'),
	(36, '2021-05-06 08:20:19', '维修人员6', '123456', '姓名6', '男', 'http://localhost:8080/springboot68ozj/upload/weixiurenyuan_zhaopian6.jpg', '13823888886', '440300199606060006');

DROP TABLE IF EXISTS `wenmingsushe`;
CREATE TABLE IF NOT EXISTS `wenmingsushe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `weishengpingfen` varchar(200) DEFAULT NULL COMMENT '卫生评分',
  `pingbiriqi` date DEFAULT NULL COMMENT '评比日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='文明宿舍';

DELETE FROM `wenmingsushe`;
INSERT INTO `wenmingsushe` (`id`, `addtime`, `sushehao`, `weishengpingfen`, `pingbiriqi`) VALUES
	(111, '2021-05-06 08:20:19', '宿舍号1', '卫生评分1', '2021-05-06'),
	(112, '2021-05-06 08:20:19', '宿舍号2', '卫生评分2', '2021-05-06'),
	(113, '2021-05-06 08:20:19', '宿舍号3', '卫生评分3', '2021-05-06'),
	(114, '2021-05-06 08:20:19', '宿舍号4', '卫生评分4', '2021-05-06'),
	(115, '2021-05-06 08:20:19', '宿舍号5', '卫生评分5', '2021-05-06'),
	(116, '2021-05-06 08:20:19', '宿舍号6', '卫生评分6', '2021-05-06');

DROP TABLE IF EXISTS `wupinleibie`;
CREATE TABLE IF NOT EXISTS `wupinleibie` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinleibie` varchar(200) NOT NULL COMMENT '物品类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wupinleibie` (`wupinleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COMMENT='物品类别';

DELETE FROM `wupinleibie`;
INSERT INTO `wupinleibie` (`id`, `addtime`, `wupinleibie`) VALUES
	(161, '2021-05-06 08:20:19', '物品类别1'),
	(162, '2021-05-06 08:20:19', '物品类别2'),
	(163, '2021-05-06 08:20:19', '物品类别3'),
	(164, '2021-05-06 08:20:19', '物品类别4'),
	(165, '2021-05-06 08:20:19', '物品类别5'),
	(166, '2021-05-06 08:20:19', '物品类别6');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xueshengxingming`, `xingbie`, `touxiang`, `banji`, `shouji`, `youxiang`, `sushehao`) VALUES
	(21, '2021-05-06 08:20:19', '学生1', '123456', '学生姓名1', '男', 'http://localhost:8080/springboot68ozj/upload/xuesheng_touxiang1.jpg', '班级1', '13823888881', '773890001@qq.com', '宿舍号1'),
	(22, '2021-05-06 08:20:19', '学生2', '123456', '学生姓名2', '男', 'http://localhost:8080/springboot68ozj/upload/xuesheng_touxiang2.jpg', '班级2', '13823888882', '773890002@qq.com', '宿舍号2'),
	(23, '2021-05-06 08:20:19', '学生3', '123456', '学生姓名3', '男', 'http://localhost:8080/springboot68ozj/upload/xuesheng_touxiang3.jpg', '班级3', '13823888883', '773890003@qq.com', '宿舍号3'),
	(24, '2021-05-06 08:20:19', '学生4', '123456', '学生姓名4', '男', 'http://localhost:8080/springboot68ozj/upload/xuesheng_touxiang4.jpg', '班级4', '13823888884', '773890004@qq.com', '宿舍号4'),
	(25, '2021-05-06 08:20:19', '学生5', '123456', '学生姓名5', '男', 'http://localhost:8080/springboot68ozj/upload/xuesheng_touxiang5.jpg', '班级5', '13823888885', '773890005@qq.com', '宿舍号5'),
	(26, '2021-05-06 08:20:19', '学生6', '123456', '学生姓名6', '男', 'http://localhost:8080/springboot68ozj/upload/xuesheng_touxiang6.jpg', '班级6', '13823888886', '773890006@qq.com', '宿舍号6');

DROP TABLE IF EXISTS `zhaolingxinxi`;
CREATE TABLE IF NOT EXISTS `zhaolingxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wupinleibie` varchar(200) NOT NULL COMMENT '物品类别',
  `jianshididian` varchar(200) NOT NULL COMMENT '捡拾地点',
  `jianshishijian` datetime NOT NULL COMMENT '捡拾时间',
  `renlingzhuangtai` varchar(200) DEFAULT NULL COMMENT '认领状态',
  `xiangximiaoshu` longtext COMMENT '详细描述',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb3 COMMENT='招领信息';

DELETE FROM `zhaolingxinxi`;
INSERT INTO `zhaolingxinxi` (`id`, `addtime`, `wupinmingcheng`, `tupian`, `wupinleibie`, `jianshididian`, `jianshishijian`, `renlingzhuangtai`, `xiangximiaoshu`, `xuehao`, `xueshengxingming`, `shouji`) VALUES
	(181, '2021-05-06 08:20:19', '物品名称1', 'http://localhost:8080/springboot68ozj/upload/zhaolingxinxi_tupian1.jpg', '物品类别1', '捡拾地点1', '2021-05-06 16:20:19', '未认领', '详细描述1', '学号1', '学生姓名1', '手机1'),
	(182, '2021-05-06 08:20:19', '物品名称2', 'http://localhost:8080/springboot68ozj/upload/zhaolingxinxi_tupian2.jpg', '物品类别2', '捡拾地点2', '2021-05-06 16:20:19', '未认领', '详细描述2', '学号2', '学生姓名2', '手机2'),
	(183, '2021-05-06 08:20:19', '物品名称3', 'http://localhost:8080/springboot68ozj/upload/zhaolingxinxi_tupian3.jpg', '物品类别3', '捡拾地点3', '2021-05-06 16:20:19', '未认领', '详细描述3', '学号3', '学生姓名3', '手机3'),
	(184, '2021-05-06 08:20:19', '物品名称4', 'http://localhost:8080/springboot68ozj/upload/zhaolingxinxi_tupian4.jpg', '物品类别4', '捡拾地点4', '2021-05-06 16:20:19', '未认领', '详细描述4', '学号4', '学生姓名4', '手机4'),
	(185, '2021-05-06 08:20:19', '物品名称5', 'http://localhost:8080/springboot68ozj/upload/zhaolingxinxi_tupian5.jpg', '物品类别5', '捡拾地点5', '2021-05-06 16:20:19', '未认领', '详细描述5', '学号5', '学生姓名5', '手机5'),
	(186, '2021-05-06 08:20:19', '物品名称6', 'http://localhost:8080/springboot68ozj/upload/zhaolingxinxi_tupian6.jpg', '物品类别6', '捡拾地点6', '2021-05-06 16:20:19', '未认领', '详细描述6', '学号6', '学生姓名6', '手机6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
