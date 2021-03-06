-- --------------------------------------------------------
-- 主机                            :127.0.0.1
-- 服务器版本                         :5.0.67-community-log - MySQL Community Edition (GPL)
-- 服务器操作系统                       :Win32
-- HeidiSQL 版本                   :7.0.0.4278
-- 创建                            :2013-08-12 13:02:50
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 ebspos.calendar 结构
DROP TABLE IF EXISTS `calendar`;
CREATE TABLE IF NOT EXISTS `calendar` (
  `Id` int(11) NOT NULL auto_increment COMMENT '日程主键',
  `Subject` varchar(200) default NULL COMMENT '日程标题',
  `Location` varchar(200) default NULL COMMENT '地点',
  `Description` varchar(500) default NULL COMMENT '说明',
  `CalendarType` tinyint(4) default '1' COMMENT '日程类型\r\n            1	个人日程\r\n            2	部门日程',
  `StartTime` datetime NOT NULL COMMENT '开始时间',
  `EndTime` datetime NOT NULL COMMENT '结束时间',
  `IsAllDayEvent` bit(1) NOT NULL default '\0' COMMENT '是否全天日程',
  `HasAttachment` bit(1) NOT NULL default '\0' COMMENT '是否有附件',
  `Category` varchar(400) default NULL COMMENT '分类',
  `InstanceType` tinyint(4) NOT NULL COMMENT '实例类型\r\n            0	Single（一般日程）\r\n            1	Master（循环主日程）\r\n            2	Instance（循环实例日程）\r\n            3	Exception （错误）\r\n            4	MeetingRequest（会议安排）',
  `Attendees` varchar(500) default NULL COMMENT '参与人',
  `AttendeeNames` varchar(500) default NULL COMMENT '参与人姓名',
  `OtherAttendee` varchar(500) default NULL COMMENT '其他参与人',
  `UPAccount` bigint(20) default NULL COMMENT '更新人账号',
  `UPName` varchar(100) default NULL COMMENT '更新人姓名',
  `UPTime` datetime default NULL COMMENT '最后一次更新时间',
  `RecurringRule` varchar(1000) default NULL COMMENT '循环规则',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.calendar 的数据: 0 rows
DELETE FROM `calendar`;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;


-- 导出  表 ebspos.employee 结构
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id` bigint(20) NOT NULL auto_increment,
  `usr_no` varchar(11) NOT NULL,
  `usr_name` varchar(20) default NULL,
  `pwd` varchar(50) default NULL,
  `dep_no` int(11) default NULL,
  `age` tinyint(4) default NULL,
  `gender` varchar(20) default NULL,
  `edu_bg` varchar(50) default NULL,
  `birthday` varchar(50) default NULL,
  `entry_date` varchar(50) default NULL,
  `id_card_no` bigint(20) default NULL,
  `fax_no` bigint(20) default NULL,
  `phone_no` bigint(20) default NULL,
  `address` varchar(255) default NULL,
  `position` varchar(50) default NULL,
  `salary` int(11) default NULL,
  `email` varchar(255) default NULL,
  `royalty_rate` decimal(10,0) default NULL,
  `remarks` varchar(255) default NULL,
  `is_use` tinyint(4) default NULL,
  `usr_type` tinyint(4) default NULL,
  `upd_time` datetime default NULL,
  `crd_time` datetime default NULL,
  `upd_usr` varchar(255) default NULL,
  `crd_usr` varchar(255) default NULL,
  `del_flg` tinyint(4) default '0',
  PRIMARY KEY  (`id`,`usr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.employee 的数据: ~7 rows ((大约))
DELETE FROM `employee`;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`id`, `usr_no`, `usr_name`, `pwd`, `dep_no`, `age`, `gender`, `edu_bg`, `birthday`, `entry_date`, `id_card_no`, `fax_no`, `phone_no`, `address`, `position`, `salary`, `email`, `royalty_rate`, `remarks`, `is_use`, `usr_type`, `upd_time`, `crd_time`, `upd_usr`, `crd_usr`, `del_flg`) VALUES
	(1, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '男', '本科', '2013-06-28', '2013-06-28', 36010319880999, NULL, 13809876543, 'vasdfasdfadsf', '导购员', 100000, 'xxxx@163.com', 0, '弄阿克苏打发第三方', 1, 1, '2013-08-07 21:06:02', NULL, NULL, NULL, NULL),
	(2, 'pk', '彭科', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '男', '高中', '2013-07-24', '2013-07-31', 23412343324, NULL, NULL, NULL, '业务员', NULL, NULL, NULL, NULL, NULL, 1, '2013-07-09 14:44:39', NULL, NULL, NULL, NULL),
	(3, 'wcc', '吴春明', 'e10adc3949ba59abbe56e057f20f883e', 1, 5, '女', '本科', '2013-07-23', '2013-07-26', 188888888, 13241324, 2341234, 'qer123r', '导购员', 10, '2@124.com', 20, '来这个啊京东方卡迪夫', NULL, NULL, '2013-07-18 10:53:54', NULL, NULL, NULL, 0),
	(4, 'zyh', '湛原红', 'e10adc3949ba59abbe56e057f20f883e', 1, 30, '男', '高中', '1980-07-27', '2013-08-01', 1234567890, NULL, 111111, '呃呃呃', '业务员', 5000, 'hczyh_888@163.com', 20, '呃呃呃', NULL, NULL, '2013-08-06 10:37:40', NULL, NULL, NULL, 0),
	(5, 'zs', '张三', 'e10adc3949ba59abbe56e057f20f883e', 1, 11, NULL, '高中', '1971-10-10', '2013-08-06', 11111, NULL, NULL, NULL, '业务员', 1111, NULL, 10, NULL, NULL, NULL, '2013-08-07 21:17:10', NULL, NULL, NULL, 0),
	(6, 'test', 'test', 'e10adc3949ba59abbe56e057f20f883e', 1, 11, '男', '高中', '2011-08-05', '2013-07-28', 11111, NULL, 11, '11', '业务员', 11, '11', NULL, '11', NULL, 1, '2013-08-10 12:10:30', NULL, NULL, NULL, 0),
	(7, 'ttt', 'ttt', 'e10adc3949ba59abbe56e057f20f883e', 2, 11, NULL, '高中', NULL, NULL, 11111, NULL, NULL, NULL, '业务员', 11, NULL, NULL, NULL, NULL, 1, '2013-08-10 18:34:01', NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


-- 导出  表 ebspos.goodstype 结构
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE IF NOT EXISTS `goodstype` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL COMMENT '类别名称',
  `remark` varchar(250) default NULL COMMENT '备注',
  `pid` bigint(10) default NULL COMMENT '父级类别id',
  `num` varchar(20) default NULL COMMENT '编码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品类别';

-- 正在导出表  ebspos.goodstype 的数据: ~6 rows ((大约))
DELETE FROM `goodstype`;
/*!40000 ALTER TABLE `goodstype` DISABLE KEYS */;
INSERT INTO `goodstype` (`id`, `name`, `remark`, `pid`, `num`) VALUES
	(2, '休闲服', NULL, 0, '001'),
	(3, '男式休闲服', NULL, 2, '001001'),
	(4, '女式休闲服', NULL, 2, '001002'),
	(5, '西装', NULL, 0, '002'),
	(6, '男装', NULL, 5, '002001'),
	(7, '女装', NULL, 5, '002002');
/*!40000 ALTER TABLE `goodstype` ENABLE KEYS */;


-- 导出  表 ebspos.jbgoods 结构
DROP TABLE IF EXISTS `jbgoods`;
CREATE TABLE IF NOT EXISTS `jbgoods` (
  `GoodsNo` varchar(255) NOT NULL default '',
  `GoodsCode` varchar(255) default NULL,
  `GoodsName` varchar(255) default NULL,
  `GoodsTypeNo` varchar(255) default NULL,
  `BrandNo` varchar(255) default NULL,
  `ProduceArea` varchar(255) default NULL,
  `ProduceName` varchar(255) default NULL,
  `Clolor` varchar(255) default NULL,
  `BarCode` varchar(255) default NULL,
  `Model` varchar(255) default NULL,
  `BaseUnit` varchar(255) default NULL,
  `SmallUnit` varchar(255) default NULL,
  `SmallUnitQty` decimal(10,0) default NULL,
  `BigUnit` varchar(255) default NULL,
  `BigUnitQty` decimal(10,0) default NULL,
  `MaxBPrice` decimal(10,0) default NULL,
  `MinSPrice` decimal(10,0) default NULL,
  `BRefPrice` decimal(10,0) default NULL,
  `SRefPrice` decimal(10,0) default NULL,
  `BPriceLevel1` decimal(10,0) default NULL,
  `SPriceLevel1` decimal(10,0) default NULL,
  `CostPrice` decimal(10,0) default NULL,
  `MemberPrice` decimal(10,0) default NULL,
  `SUBRefPrice` decimal(10,0) default NULL,
  `SUSRefPrice` decimal(10,0) default NULL,
  `SUMemberPrice` decimal(10,0) default NULL,
  `BUBRefPrice` decimal(10,0) default NULL,
  `BUSRefPrice` decimal(10,0) default NULL,
  `BMemberPrice` decimal(10,0) default NULL,
  `SalesType` smallint(6) default NULL,
  `SBeginDate` datetime default NULL,
  `SEndDate` datetime default NULL,
  `SalesQty` decimal(10,0) default NULL,
  `FinishSaleQty` decimal(10,0) default NULL,
  `SalesPrice` decimal(10,0) default NULL,
  `MaxStorage` decimal(10,0) default NULL,
  `MinStorage` decimal(10,0) default NULL,
  `LastBuyPrice` decimal(10,0) default NULL,
  `LastBuyDate` datetime default NULL,
  `Picture` blob,
  `StopFlag` smallint(6) default NULL,
  `DiscountFlag` smallint(6) default NULL,
  `CombineFlag` smallint(6) default NULL,
  `StoreFlag` smallint(6) default NULL,
  `NewFlag` smallint(6) default NULL,
  `Memo` varchar(255) default NULL,
  `DownLogNo` int(11) default NULL,
  `CSOptions` smallint(6) default NULL,
  `BarcodeType` smallint(6) default NULL,
  `CGroupNo` varchar(255) default NULL,
  `SGroupNo` varchar(255) default NULL,
  `Season` varchar(255) default NULL,
  `YearBy` varchar(255) default NULL,
  `IsGift` smallint(6) default NULL,
  PRIMARY KEY  (`GoodsNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.jbgoods 的数据: ~0 rows ((大约))
DELETE FROM `jbgoods`;
/*!40000 ALTER TABLE `jbgoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbgoods` ENABLE KEYS */;


-- 导出  表 ebspos.menu 结构
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) default NULL,
  `type` smallint(6) default NULL,
  `menulevel` smallint(6) default '0',
  `icon` varchar(50) default NULL,
  `ordernum` int(11) default '0',
  `safecode` varchar(20) default NULL,
  `pid` bigint(20) default '0',
  `target` smallint(6) default '0',
  `rel` varchar(30) default NULL,
  `enable` smallint(6) default '1',
  `remark` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1041 DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.menu 的数据: 31 rows
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `name`, `url`, `type`, `menulevel`, `icon`, `ordernum`, `safecode`, `pid`, `target`, `rel`, `enable`, `remark`) VALUES
	(1, '资料管理', NULL, 0, 0, NULL, 1, NULL, 0, 0, NULL, 1, NULL),
	(2, '采购管理', NULL, 0, 0, NULL, 2, NULL, 0, 0, NULL, 1, NULL),
	(3, '销售管理', NULL, 0, 0, NULL, 3, NULL, 0, 0, NULL, 1, NULL),
	(4, '仓库管理', NULL, 0, 0, NULL, 4, NULL, 0, 0, NULL, 1, NULL),
	(5, '财务管理', NULL, 0, 0, NULL, 5, NULL, 0, 0, NULL, 1, NULL),
	(6, '报表统计', NULL, 0, 0, NULL, 6, NULL, 0, 0, NULL, 1, NULL),
	(114, '员工资料', 'employee', 1, 2, NULL, 4, NULL, 11, 0, NULL, 1, NULL),
	(113, '商品资料', '#', 1, 2, NULL, 3, NULL, 11, 0, NULL, 1, NULL),
	(11, '资料管理', NULL, 1, 1, NULL, 1, NULL, 1, 0, NULL, 1, NULL),
	(111, '供应商资料', '#', 1, 2, NULL, 1, NULL, 11, 0, NULL, 1, NULL),
	(112, '客户资料', '#', 1, 2, NULL, 2, NULL, 11, 0, NULL, 1, NULL),
	(1023, '采购入库单', '#', 1, 2, NULL, 1, NULL, 1021, 0, NULL, 1, NULL),
	(1021, '采购管理', NULL, 1, 1, NULL, 0, NULL, 2, 0, NULL, 1, NULL),
	(1022, '采购订单', '#', 1, 2, NULL, 0, NULL, 1021, 0, NULL, 1, NULL),
	(1019, '类别资料', NULL, 1, 2, NULL, 6, NULL, 11, 0, NULL, 1, NULL),
	(1020, '商品类别', 'goodstype', 1, 3, NULL, 0, NULL, 1019, 0, NULL, 1, NULL),
	(1024, '采购付款单', '#', 1, 2, NULL, 2, NULL, 1021, 0, NULL, 1, NULL),
	(1025, '销售管理', NULL, 1, 1, NULL, 0, NULL, 3, 0, NULL, 1, NULL),
	(1026, '销售订单', '#', 1, 2, NULL, 0, NULL, 1025, 0, NULL, 1, NULL),
	(1027, '销售出库单', '#', 1, 2, NULL, 1, NULL, 1025, 0, NULL, 1, NULL),
	(1028, '销售收款单', '#', 1, 2, NULL, 2, NULL, 1025, 0, NULL, 1, NULL),
	(1029, '仓库管理', NULL, 1, 1, NULL, 0, NULL, 4, 0, NULL, 1, NULL),
	(1030, '仓库调拨单', '#', 1, 2, NULL, 0, NULL, 1029, 0, NULL, 1, NULL),
	(1031, '其它收发货单', '#', 1, 2, NULL, 1, NULL, 1029, 0, NULL, 1, NULL),
	(1032, '成本价调整', '#', 1, 2, NULL, 2, NULL, 1029, 0, NULL, 1, NULL),
	(1033, '盘点表', '#', 1, 2, NULL, 3, NULL, 1029, 0, NULL, 1, NULL),
	(1035, '仓库资料', '#', 1, 2, NULL, 5, NULL, 11, 0, NULL, 1, NULL),
	(1037, '期初库存商品录入', NULL, 1, 1, NULL, 1, NULL, 1, 0, NULL, 1, NULL),
	(1038, '期初库存商品录入单', '#', 1, 2, NULL, 0, NULL, 1037, 0, NULL, 1, NULL),
	(1039, '期初库存商品录入单汇总', '#', 1, 2, NULL, 1, NULL, 1037, 0, NULL, 1, NULL),
	(1040, '期初库存商品录入单明细表', '#', 1, 2, NULL, 2, NULL, 1037, 0, NULL, 1, NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- 导出  表 ebspos.organization 结构
DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `addr` varchar(50) default NULL,
  `picid` bigint(20) default NULL,
  `sortnum` smallint(6) default NULL,
  `remark` varchar(100) default NULL,
  `num` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.organization 的数据: 1 rows
DELETE FROM `organization`;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` (`id`, `name`, `addr`, `picid`, `sortnum`, `remark`, `num`) VALUES
	(2, '昶源软件', '上海市', NULL, NULL, NULL, '001');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;


-- 导出  表 ebspos.partment 结构
DROP TABLE IF EXISTS `partment`;
CREATE TABLE IF NOT EXISTS `partment` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `remark` varchar(250) default NULL,
  `picid` bigint(20) default NULL,
  `orgid` bigint(20) default NULL,
  `pid` bigint(10) default NULL COMMENT '父级部门id',
  `num` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.partment 的数据: ~2 rows ((大约))
DELETE FROM `partment`;
/*!40000 ALTER TABLE `partment` DISABLE KEYS */;
INSERT INTO `partment` (`id`, `name`, `remark`, `picid`, `orgid`, `pid`, `num`) VALUES
	(1, '销售部', NULL, 4, 2, 0, '001'),
	(2, '财务部', NULL, 1, 2, 0, '002');
/*!40000 ALTER TABLE `partment` ENABLE KEYS */;


-- 导出  表 ebspos.powermenu 结构
DROP TABLE IF EXISTS `powermenu`;
CREATE TABLE IF NOT EXISTS `powermenu` (
  `menuid` bigint(20) NOT NULL,
  `objid` bigint(20) NOT NULL,
  `type` smallint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.powermenu 的数据: 40 rows
DELETE FROM `powermenu`;
/*!40000 ALTER TABLE `powermenu` DISABLE KEYS */;
INSERT INTO `powermenu` (`menuid`, `objid`, `type`) VALUES
	(6, 1, 0),
	(5, 1, 0),
	(4, 1, 0),
	(3, 1, 0),
	(2, 1, 0),
	(1, 1, 0),
	(11, 1, 0),
	(111, 1, 0),
	(112, 1, 0),
	(113, 1, 0),
	(114, 1, 0),
	(1029, 2, 1),
	(4, 2, 1),
	(1028, 2, 1),
	(1027, 2, 1),
	(1026, 2, 1),
	(1025, 2, 1),
	(3, 2, 1),
	(1024, 2, 1),
	(1023, 2, 1),
	(1022, 2, 1),
	(1021, 2, 1),
	(2, 2, 1),
	(1020, 2, 1),
	(1019, 2, 1),
	(1035, 2, 1),
	(114, 2, 1),
	(113, 2, 1),
	(112, 2, 1),
	(111, 2, 1),
	(11, 2, 1),
	(1040, 2, 1),
	(1039, 2, 1),
	(1038, 2, 1),
	(1037, 2, 1),
	(1, 2, 1),
	(1030, 2, 1),
	(1031, 2, 1),
	(1032, 2, 1),
	(1033, 2, 1);
/*!40000 ALTER TABLE `powermenu` ENABLE KEYS */;


-- 导出  表 ebspos.role 结构
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.role 的数据: 2 rows
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `name`, `remark`) VALUES
	(3, '员工', NULL),
	(2, '管理员', 'fds');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- 导出  表 ebspos.userrole 结构
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE IF NOT EXISTS `userrole` (
  `userid` bigint(20) NOT NULL,
  `roleid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  ebspos.userrole 的数据: 2 rows
DELETE FROM `userrole`;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`userid`, `roleid`) VALUES
	(1, 2),
	(1, 3);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
