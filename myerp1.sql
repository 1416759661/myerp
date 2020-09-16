/*
Navicat MySQL Data Transfer

Source Server         : myconn
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myerp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-12 10:19:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbdealer`
-- ----------------------------
DROP TABLE IF EXISTS `tbdealer`;
CREATE TABLE `tbdealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '经销商\n\n表',
  `companyname` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbdealer
-- ----------------------------

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言板表',
  `username` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `contents` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `createtime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `isshow` varchar(255) DEFAULT NULL COMMENT '是否展示本条留言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `tbinout`
-- ----------------------------
DROP TABLE IF EXISTS `tbinout`;
CREATE TABLE `tbinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '入库和出库记录表',
  `opttype` int(11) DEFAULT NULL COMMENT '-1为出库，1为入库',
  `proid` int(11) DEFAULT NULL COMMENT '商品ID',
  `pronum` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `proname` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `protype` varchar(255) DEFAULT NULL COMMENT '商品类别',
  `proimgurl` varchar(300) DEFAULT NULL COMMENT '商品图片',
  `prooldnum` int(11) DEFAULT NULL COMMENT '库存变化前的数量',
  `proaddnum` int(11) DEFAULT NULL COMMENT '入库或者出库的数量',
  `unitname` varchar(255) DEFAULT NULL COMMENT '计量单位名称',
  `ctime` varchar(255) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbinout
-- ----------------------------
INSERT INTO `tbinout` VALUES ('1', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '0', '100', '台', '2020-08-24 15:23:29');
INSERT INTO `tbinout` VALUES ('2', '-1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '100', '30', '台', '2020-08-24 16:46:19');
INSERT INTO `tbinout` VALUES ('3', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '70', '80', '台', '2020-08-24 16:54:13');
INSERT INTO `tbinout` VALUES ('4', '1', '20', 'daier-2020', '戴尔DELL灵越5000', '家用电器/笔记本电脑', '20200824171708716.png', '0', '1000', '台', '2020-08-24 17:18:05');
INSERT INTO `tbinout` VALUES ('5', '1', '18', 'hw-2020', '华为MateBook14', '家用电器/笔记本电脑', '20200824171445193.png', '0', '20000', '台', '2020-08-24 17:18:26');
INSERT INTO `tbinout` VALUES ('6', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '150', '100', '台', '2020-08-24 17:53:59');
INSERT INTO `tbinout` VALUES ('7', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '250', '100', '台', '2020-08-24 17:55:30');
INSERT INTO `tbinout` VALUES ('8', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '350', '100', '台', '2020-08-24 17:56:43');
INSERT INTO `tbinout` VALUES ('9', '-1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '450', '10', '台', '2020-08-24 17:57:20');
INSERT INTO `tbinout` VALUES ('10', '1', '21', 'hw-2020-13', 'MateBook 13', '家用电器/笔记本电脑', '20200824172055164.png', '0', '100', '台', '2020-09-02 19:08:58');
INSERT INTO `tbinout` VALUES ('11', '1', '21', 'hw-2020-13', 'MateBook 13', '家用电器/笔记本电脑', '20200824172055164.png', '100', '10', '台', '2020-09-03 09:35:40');
INSERT INTO `tbinout` VALUES ('12', '1', '21', 'hw-2020-13', 'MateBook 13', '家用电器/笔记本电脑', '20200824172055164.png', '110', '100', '台', '2020-09-03 09:43:31');
INSERT INTO `tbinout` VALUES ('13', '1', '21', 'hw-2020-13', 'MateBook 13', '家用电器/笔记本电脑', '20200824172055164.png', '210', '5', '台', '2020-09-05 14:36:02');

-- ----------------------------
-- Table structure for `tblog`
-- ----------------------------
DROP TABLE IF EXISTS `tblog`;
CREATE TABLE `tblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统日志表',
  `typeid` int(255) DEFAULT NULL COMMENT '日志类型：1登录日志 2操作日志 3异常日志',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `msg` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `ctime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblog
-- ----------------------------
INSERT INTO `tblog` VALUES ('15', '1', '1', '汤燕', '登录成功', '2020-9-10');
INSERT INTO `tblog` VALUES ('16', '2', '1', '汤燕', '登录成功', '2020-9-11');
INSERT INTO `tblog` VALUES ('17', '1', '1', '超级管理员', '登录成功!用户名:admin密码：123456', '2020-09-11 09:55:19');
INSERT INTO `tblog` VALUES ('18', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 09:56:47');
INSERT INTO `tblog` VALUES ('19', '1', '0', '未知', '登录失败!用户名:admin密码：zzzzzzzzzz', '2020-09-11 09:57:42');
INSERT INTO `tblog` VALUES ('20', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-11 09:57:51');
INSERT INTO `tblog` VALUES ('21', '3', '0', '未知', '登录失败!用户名:admin密码：123456789', '2020-09-11 09:58:37');
INSERT INTO `tblog` VALUES ('22', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-11 09:58:44');
INSERT INTO `tblog` VALUES ('23', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-11 10:01:02');
INSERT INTO `tblog` VALUES ('24', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-11 10:01:55');
INSERT INTO `tblog` VALUES ('25', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-11 10:09:06');
INSERT INTO `tblog` VALUES ('26', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 10:11:32');
INSERT INTO `tblog` VALUES ('27', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 14:27:09');
INSERT INTO `tblog` VALUES ('28', '3', '1', '超级管理员', '登录失败!用户名:admin密码：123456789', '2020-09-11 14:30:07');
INSERT INTO `tblog` VALUES ('29', '3', '1', '超级管理员', '登录失败!用户名:admin密码：1213456', '2020-09-11 14:30:14');
INSERT INTO `tblog` VALUES ('30', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 14:30:22');
INSERT INTO `tblog` VALUES ('31', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 14:34:34');
INSERT INTO `tblog` VALUES ('32', '2', '1', '超级管理员', '超级管理员修改密码失败', '2020-09-11 14:34:51');
INSERT INTO `tblog` VALUES ('33', '2', '1', '超级管理员', '超级管理员成功修改密码', '2020-09-11 14:35:05');
INSERT INTO `tblog` VALUES ('34', '3', '0', '未知', '登录失败!用户名:admin密码：123456', '2020-09-11 14:43:46');
INSERT INTO `tblog` VALUES ('35', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 14:43:53');
INSERT INTO `tblog` VALUES ('36', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 15:58:55');
INSERT INTO `tblog` VALUES ('37', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 16:11:31');
INSERT INTO `tblog` VALUES ('38', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-12 08:03:31');
INSERT INTO `tblog` VALUES ('39', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-12 08:22:15');

-- ----------------------------
-- Table structure for `tbmenubar`
-- ----------------------------
DROP TABLE IF EXISTS `tbmenubar`;
CREATE TABLE `tbmenubar` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `MenuName` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `ParentID` int(11) DEFAULT NULL COMMENT '父级菜单id',
  `depth` int(11) DEFAULT NULL COMMENT '深度',
  `ParentPath` varchar(100) DEFAULT NULL COMMENT '路径',
  `Href` varchar(100) DEFAULT NULL COMMENT '链接',
  `Target` varchar(100) DEFAULT NULL COMMENT '目标窗口',
  `OrderList` int(11) DEFAULT NULL COMMENT '排序',
  `Visible` int(11) DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmenubar
-- ----------------------------
INSERT INTO `tbmenubar` VALUES ('1', '系统设置', '0', '1', '1', null, '', '1', '1');
INSERT INTO `tbmenubar` VALUES ('2', '商品中心', '0', '1', '2', null, '', '2', '1');
INSERT INTO `tbmenubar` VALUES ('3', '进货管理', '0', '1', '3', null, '', '3', '1');
INSERT INTO `tbmenubar` VALUES ('4', '销售管理', '0', '1', '4', null, '', '4', '1');
INSERT INTO `tbmenubar` VALUES ('5', '库存管理', '0', '1', '5', null, '', '7', '1');
INSERT INTO `tbmenubar` VALUES ('6', '报表管理', '0', '1', '6', null, '', '8', '1');
INSERT INTO `tbmenubar` VALUES ('7', '密码修改', '1', '2', '1,7', './admin/passwordedit.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('8', '新增用户', '1', '2', '1,8', './admin/usersadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('9', '建根类别', '2', '2', '2,9', './admin/tbtypeadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('10', '管理类别', '2', '2', '2,10', './tbtypelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('11', '新增商品', '2', '2', '2,11', './admin/proadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('12', '管理商品', '2', '2', '2,12', './prolist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('13', '创建进货单', '3', '2', '3,13', './admin/ordermain.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('14', '管理进货单', '3', '2', '3,14', './orderheadlist', 'main', '2', '1');
INSERT INTO `tbmenubar` VALUES ('15', '销售开单', '4', '2', '4,15', './admin/ordermainforsale.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('16', '管理订单', '4', '2', '4,16', './orderheadlistforsale', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('17', '库存入库', '5', '2', '5,17', './admin/proinout.jsp?t=1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('18', '商品出库', '5', '2', '5,18', './admin/proinout.jsp?t=-1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('19', '商品查询', '5', '2', '5,19', 'prolistforsearch', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('20', '管理用户', '1', '2', '1,20', './userslist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('21', '新增角色', '1', '2', '1,21', './admin/roleadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('22', '角色管理', '1', '2', '1,22', './rolelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('23', '入库管理', '0', '1', '23', '', null, '5', '0');
INSERT INTO `tbmenubar` VALUES ('24', '出库管理', '0', '1', '24', null, null, '6', '0');
INSERT INTO `tbmenubar` VALUES ('25', '明细查询', '5', '2', '5,25', './inoutlist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('26', '进货报表', '6', '2', '6,26', './admin/baobiao_jinhuo.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('27', '退还货管理', '0', '1', '27', null, null, '9', '1');
INSERT INTO `tbmenubar` VALUES ('28', '新增记录', '27', '2', '27,28', './admin/changeadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('29', '查询记录', '27', '2', '27,29', null, 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('30', '销售报表', '6', '2', '6,30', './admin/baobiao_zhifangtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('31', '销售金额比例', '6', '2', '6,31', './admin/baobiao_bingzhuangtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('32', '销售数量比例', '6', '2', '6,32', './admin/baobiao_huanxingtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('33', '查询日志', '1', '2', '1,33', './tbloglist', 'main', '1', '1');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息发布表',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `contents` text COMMENT '内容',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `typeid` varchar(11) DEFAULT NULL COMMENT '类别',
  `source` varchar(20) DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进货订单抬头表',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单号（根据系统时间产生）',
  `sname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `stel` varchar(255) DEFAULT NULL COMMENT '电话',
  `saddress` varchar(255) DEFAULT NULL COMMENT '地址',
  `sumprice` decimal(11,0) DEFAULT '0' COMMENT '总价',
  `memberid` int(11) DEFAULT NULL COMMENT '用户id',
  `ctime` varchar(255) DEFAULT NULL COMMENT '下单时间',
  `ptime` varchar(255) DEFAULT NULL COMMENT '配送时间',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('27', '20200826170541673', '超级管理员', '15397600038', '四川成都总部', '11499', '1', '2020-05-26 17:05:41', null, null);
INSERT INTO `tborderhead` VALUES ('28', '20200826170551874', '超级管理员', '15397600038', '四川成都总部', '4200', '1', '2020-06-26 17:05:51', null, null);
INSERT INTO `tborderhead` VALUES ('29', '20200826170708899', '超级管理员', '15397600038', '四川成都总部', '4200', '1', '2020-07-26 17:07:08', null, null);
INSERT INTO `tborderhead` VALUES ('30', '20200826171434818', '超级管理员', '15397600038', '四川成都总部', '49000', '1', '2020-08-26 17:14:34', null, null);
INSERT INTO `tborderhead` VALUES ('31', '20200903093415442', '超级管理员', '15397600038', '四川成都总部', '18800', '1', '2020-09-03 09:34:15', null, null);
INSERT INTO `tborderhead` VALUES ('32', '20200903094352419', '超级管理员', '15397600038', '四川成都总部', '5200', '1', '2020-09-03 09:43:52', null, null);
INSERT INTO `tborderhead` VALUES ('33', '20200903094553085', '超级管理员', '15397600038', '四川成都总部', '4200', '1', '2020-09-03 09:45:53', null, null);
INSERT INTO `tborderhead` VALUES ('34', '20200903094637149', '超级管理员', '15397600038', '四川成都总部', '6299', '1', '2020-09-03 09:46:37', null, null);
INSERT INTO `tborderhead` VALUES ('35', '20200905143435624', '超级管理员', '15397600038', '四川成都总部', '67800', '1', '2020-09-05 14:34:35', null, null);
INSERT INTO `tborderhead` VALUES ('36', '20200907142907220', '超级管理员', '15397600038', '四川成都总部', '9400', '1', '2020-09-07 14:29:07', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单明细表',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单号',
  `proid` int(11) DEFAULT NULL COMMENT '商品编号',
  `proname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `procount` int(11) DEFAULT NULL COMMENT '商品数量',
  `imgurl` varchar(500) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('41', '20200826170541673', '21', 'MateBook 13', '5200', '1', null);
INSERT INTO `tborderitems` VALUES ('42', '20200826170541673', '17', '格力空调gl-2020', '6299', '1', null);
INSERT INTO `tborderitems` VALUES ('43', '20200826170551874', '20', '戴尔DELL灵越5000', '4200', '1', null);
INSERT INTO `tborderitems` VALUES ('44', '20200826170708899', '20', '戴尔DELL灵越5000', '4200', '1', null);
INSERT INTO `tborderitems` VALUES ('45', '20200826171434818', '21', 'MateBook 13', '5200', '2', '20200824172055164.png');
INSERT INTO `tborderitems` VALUES ('46', '20200826171434818', '20', '戴尔DELL灵越5000', '4200', '3', '20200824171708716.png');
INSERT INTO `tborderitems` VALUES ('47', '20200826171434818', '18', '华为MateBook14', '5200', '5', '20200824171445193.png');
INSERT INTO `tborderitems` VALUES ('48', '20200903093415442', '21', 'MateBook 13', '5200', '2', '20200824172055164.png');
INSERT INTO `tborderitems` VALUES ('49', '20200903093415442', '20', '戴尔DELL灵越5000', '4200', '2', '20200824171708716.png');
INSERT INTO `tborderitems` VALUES ('50', '20200903094352419', '21', 'MateBook 13', '5200', '1', '20200824172055164.png');
INSERT INTO `tborderitems` VALUES ('51', '20200903094553085', '20', '戴尔DELL灵越5000', '4200', '1', '20200824171708716.png');
INSERT INTO `tborderitems` VALUES ('52', '20200903094637149', '17', '格力空调gl-2020', '6299', '1', '20200823095339843.jpg');
INSERT INTO `tborderitems` VALUES ('53', '20200905143435624', '21', 'MateBook 13', '5200', '5', '20200824172055164.png');
INSERT INTO `tborderitems` VALUES ('54', '20200905143435624', '20', '戴尔DELL灵越5000', '4200', '5', '20200824171708716.png');
INSERT INTO `tborderitems` VALUES ('55', '20200905143435624', '18', '华为MateBook14', '5200', '4', '20200824171445193.png');
INSERT INTO `tborderitems` VALUES ('56', '20200907142907220', '21', 'MateBook 13', '5200', '1', '20200824172055164.png');
INSERT INTO `tborderitems` VALUES ('57', '20200907142907220', '20', '戴尔DELL灵越5000', '4200', '1', '20200824171708716.png');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品表',
  `proname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `pronum` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `typeid` int(11) DEFAULT NULL COMMENT '商品类别',
  `price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `brief` varchar(255) DEFAULT NULL COMMENT '商品简介',
  `descriptions` text COMMENT '商品描述',
  `address` varchar(255) DEFAULT NULL COMMENT '产地',
  `procount` int(11) DEFAULT '0' COMMENT '数量',
  `imgurl` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `procodeurl` varchar(255) DEFAULT NULL COMMENT '二维码图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('17', '格力空调gl-2020', 'gl-2020', '33', '6299', '能耗低', '<p>格力（GREE）I享 变频冷暖 蒸发器自洁 智能WiFi 静音 圆柱客厅空调立式柜机 线下同款 KFR-72LW/(72580)FNhAa-A3</p><p><br/></p>', '青岛', '440', '20200823095339843.jpg', '20200902190447336.jpg');
INSERT INTO `tbproduct` VALUES ('18', '华为MateBook14', 'hw-2020', '34', '5200', '触控全面屏 多屏协同 轻薄本 深空灰', '<p>两年质保，7*24H咨询</p><p><br/></p><p><br/></p><p><br/></p>', '中国大陆', '20000', '20200824171445193.png', '20200902190442636.jpg');
INSERT INTO `tbproduct` VALUES ('20', '戴尔DELL灵越5000', 'daier-2020', '34', '4200', '轻薄笔记本', '<p>戴尔DELL灵越5000 14英寸酷睿i5网课学习轻薄笔记本电脑(十代i5-1035G1 8G 512G MX230 2G独显)银</p><p><br/></p>', '中国大陆', '1000', '20200824171708716.png', '20200902190438141.jpg');
INSERT INTO `tbproduct` VALUES ('21', 'MateBook 13', 'hw-2020-13', '34', '5200', ' 十代酷睿(i5 16G 512G MX250 触控屏 多屏协同)银', '<p>华为(HUAWEI)MateBook 13 2020款全面屏轻薄性能笔记本电脑 十代酷睿(i5 16G 512G MX250 触控屏 多屏协同)银</p><p><br/></p><p><br/></p>', '中国大陆', '215', '20200824172055164.png', '20200912091721560.jpg');

-- ----------------------------
-- Table structure for `tbrolehasmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tbrolehasmenu`;
CREATE TABLE `tbrolehasmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色拥有的菜单',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `menuid` int(11) DEFAULT NULL COMMENT '菜单id',
  `menuname` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbrolehasmenu
-- ----------------------------
INSERT INTO `tbrolehasmenu` VALUES ('93', '1', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('94', '1', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('95', '1', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('96', '1', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('97', '1', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('98', '1', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('99', '1', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('100', '1', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('101', '1', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('102', '1', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('103', '1', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('104', '1', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('105', '1', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('106', '1', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('107', '1', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('108', '1', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('109', '1', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('110', '1', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('111', '1', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('112', '1', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('113', '1', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('115', '2', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('116', '2', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('117', '2', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('118', '2', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('119', '2', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('120', '2', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('121', '2', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('122', '2', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('123', '2', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('124', '2', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('125', '2', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('126', '2', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('127', '2', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('128', '2', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('129', '2', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('130', '2', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('131', '2', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('132', '2', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('133', '2', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('134', '2', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('135', '2', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('136', '2', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('137', '3', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('138', '3', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('139', '3', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('140', '1', null, '24', null);
INSERT INTO `tbrolehasmenu` VALUES ('141', '1', null, '23', null);
INSERT INTO `tbrolehasmenu` VALUES ('142', '1', null, '25', null);
INSERT INTO `tbrolehasmenu` VALUES ('143', '1', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('144', '4', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('145', '4', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('146', '5', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('147', '5', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('148', '1', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('149', '1', null, '29', null);
INSERT INTO `tbrolehasmenu` VALUES ('150', '1', null, '28', null);
INSERT INTO `tbrolehasmenu` VALUES ('151', '1', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('152', '1', null, '30', null);
INSERT INTO `tbrolehasmenu` VALUES ('153', '1', null, '32', null);
INSERT INTO `tbrolehasmenu` VALUES ('154', '1', null, '31', null);
INSERT INTO `tbrolehasmenu` VALUES ('155', '1', null, '33', null);

-- ----------------------------
-- Table structure for `tbroles`
-- ----------------------------
DROP TABLE IF EXISTS `tbroles`;
CREATE TABLE `tbroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色表',
  `rolename` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbroles
-- ----------------------------
INSERT INTO `tbroles` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `tbroles` VALUES ('2', '管理员', '管理员');
INSERT INTO `tbroles` VALUES ('3', '经销商', '经销商');
INSERT INTO `tbroles` VALUES ('4', '仓库管理员', '只能查询商品库存信息');
INSERT INTO `tbroles` VALUES ('5', '采购员', '采购员');

-- ----------------------------
-- Table structure for `tbsaleorderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tbsaleorderhead`;
CREATE TABLE `tbsaleorderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售订单抬头信息',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单号',
  `sname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `stel` varchar(255) DEFAULT NULL COMMENT '电话',
  `saddress` varchar(255) DEFAULT NULL COMMENT '地址',
  `sumprice` decimal(11,0) DEFAULT '0' COMMENT '总价',
  `memberid` int(11) DEFAULT NULL COMMENT '用户id',
  `ctime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `ptime` varchar(255) DEFAULT NULL COMMENT '配送时间',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsaleorderhead
-- ----------------------------
INSERT INTO `tbsaleorderhead` VALUES ('3', '', '超级管理员', '15397600038', '四川成都总部', '14600', '1', '2020-05-08 14:30:14', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('4', '20200909100302129', '超级管理员', '15397600038', '四川成都总部', '9400', '1', '2020-06-09 10:03:02', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('5', '20200909100313064', '超级管理员', '15397600038', '四川成都总部', '14600', '1', '2020-08-09 10:03:13', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('6', '20200909100331701', '超级管理员', '15397600038', '四川成都总部', '24000', '1', '2020-09-09 10:03:31', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('7', '20200910141653440', '超级管理员', '15397600038', '四川成都总部', '54398', '1', '2020-09-10 14:16:53', null, null);

-- ----------------------------
-- Table structure for `tbsaleorderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tbsaleorderitems`;
CREATE TABLE `tbsaleorderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售订单明细表',
  `orderid` varchar(255) DEFAULT NULL COMMENT '订单号',
  `proid` int(11) DEFAULT NULL COMMENT '商品id',
  `proname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `procount` int(11) DEFAULT NULL COMMENT '购买数量',
  `imgurl` varchar(500) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsaleorderitems
-- ----------------------------
INSERT INTO `tbsaleorderitems` VALUES ('6', '20200908143014645', '20', '戴尔DELL灵越5000', '4200', '1', '20200824171708716.png');
INSERT INTO `tbsaleorderitems` VALUES ('7', '20200908143014645', '18', '华为MateBook14', '5200', '2', '20200824171445193.png');
INSERT INTO `tbsaleorderitems` VALUES ('8', '20200909100302129', '20', '戴尔DELL灵越5000', '4200', '1', '20200824171708716.png');
INSERT INTO `tbsaleorderitems` VALUES ('9', '20200909100302129', '18', '华为MateBook14', '5200', '1', '20200824171445193.png');
INSERT INTO `tbsaleorderitems` VALUES ('10', '20200909100313064', '20', '戴尔DELL灵越5000', '4200', '1', '20200824171708716.png');
INSERT INTO `tbsaleorderitems` VALUES ('11', '20200909100313064', '18', '华为MateBook14', '5200', '1', '20200824171445193.png');
INSERT INTO `tbsaleorderitems` VALUES ('12', '20200909100313064', '21', 'MateBook 13', '5200', '1', '20200824172055164.png');
INSERT INTO `tbsaleorderitems` VALUES ('13', '20200909100331701', '20', '戴尔DELL灵越5000', '4200', '2', '20200824171708716.png');
INSERT INTO `tbsaleorderitems` VALUES ('14', '20200909100331701', '18', '华为MateBook14', '5200', '2', '20200824171445193.png');
INSERT INTO `tbsaleorderitems` VALUES ('15', '20200909100331701', '21', 'MateBook 13', '5200', '1', '20200824172055164.png');
INSERT INTO `tbsaleorderitems` VALUES ('16', '20200910141653440', '21', 'MateBook 13', '5200', '1', '20200824172055164.png');
INSERT INTO `tbsaleorderitems` VALUES ('17', '20200910141653440', '20', '戴尔DELL灵越5000', '4200', '5', '20200824171708716.png');
INSERT INTO `tbsaleorderitems` VALUES ('18', '20200910141653440', '18', '华为MateBook14', '5200', '3', '20200824171445193.png');
INSERT INTO `tbsaleorderitems` VALUES ('19', '20200910141653440', '17', '格力空调gl-2020', '6299', '2', '20200823095339843.jpg');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进货购物车',
  `sessionid` varchar(32) DEFAULT NULL COMMENT '当前会话id',
  `proname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `proid` int(11) DEFAULT NULL COMMENT '商品id',
  `procount` int(11) DEFAULT NULL COMMENT '进货数量',
  `ctime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `imgurl` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `price` decimal(10,0) DEFAULT '0' COMMENT '商品价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('75', '41EFB73C20B2B946AB68D8917961A513', 'MateBook 13', '21', '1', '2020-08-26 15:39:18', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('76', '41EFB73C20B2B946AB68D8917961A513', '戴尔DELL灵越5000', '20', '1', '2020-08-26 15:39:18', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('87', '06757B2EE11F1F2976355227FFECE94E', '格力空调gl-2020', '17', '2', '2020-09-05 14:38:44', '20200823095339843.jpg', '6299');
INSERT INTO `tbshoppingcar` VALUES ('90', 'D0D72BEA7F3773E5B851867BB3F73F34', 'MateBook 13', '21', '1', '2020-09-07 14:33:48', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('91', 'D0D72BEA7F3773E5B851867BB3F73F34', '华为MateBook14', '18', '1', '2020-09-07 14:33:48', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('92', 'D0D72BEA7F3773E5B851867BB3F73F34', '格力空调gl-2020', '17', '1', '2020-09-07 14:33:48', '20200823095339843.jpg', '6299');

-- ----------------------------
-- Table structure for `tbshoppingcarforsale`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcarforsale`;
CREATE TABLE `tbshoppingcarforsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售购物车',
  `sessionid` varchar(32) DEFAULT NULL COMMENT '当前会话id',
  `proname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `proid` int(11) DEFAULT NULL COMMENT '商品id',
  `procount` int(11) DEFAULT NULL COMMENT '销售数量',
  `ctime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `imgurl` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `price` decimal(10,0) DEFAULT '0' COMMENT '商品价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcarforsale
-- ----------------------------
INSERT INTO `tbshoppingcarforsale` VALUES ('95', 'BC7CD7860C5B70648A2F15D0B5C93CDE', '戴尔DELL灵越5000', '20', '4', '2020-09-08 07:47:06', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcarforsale` VALUES ('96', 'BC7CD7860C5B70648A2F15D0B5C93CDE', '华为MateBook14', '18', '3', '2020-09-08 07:47:06', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcarforsale` VALUES ('97', 'BC7CD7860C5B70648A2F15D0B5C93CDE', '格力空调gl-2020', '17', '1', '2020-09-08 08:06:40', '20200823095339843.jpg', '6299');
INSERT INTO `tbshoppingcarforsale` VALUES ('98', '863716552AC8404D538B883FFC5DD396', '戴尔DELL灵越5000', '20', '1', '2020-09-08 10:21:21', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcarforsale` VALUES ('99', '863716552AC8404D538B883FFC5DD396', '华为MateBook14', '18', '1', '2020-09-08 10:21:21', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcarforsale` VALUES ('100', '887E8BE7F09CF41A131E0BEF270EFEFB', '戴尔DELL灵越5000', '20', '1', '2020-09-08 14:29:45', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcarforsale` VALUES ('101', '887E8BE7F09CF41A131E0BEF270EFEFB', '华为MateBook14', '18', '2', '2020-09-08 14:29:45', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcarforsale` VALUES ('102', '6A2139899844BC5273CBCA6EB2724A5C', 'MateBook 13', '21', '2', '2020-09-08 17:03:38', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcarforsale` VALUES ('103', '6A2139899844BC5273CBCA6EB2724A5C', '戴尔DELL灵越5000', '20', '3', '2020-09-08 17:03:38', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcarforsale` VALUES ('104', '6A2139899844BC5273CBCA6EB2724A5C', '华为MateBook14', '18', '1', '2020-09-08 17:03:38', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcarforsale` VALUES ('105', '6A2139899844BC5273CBCA6EB2724A5C', '格力空调gl-2020', '17', '1', '2020-09-08 17:03:38', '20200823095339843.jpg', '6299');
INSERT INTO `tbshoppingcarforsale` VALUES ('106', 'B350A3B9DCD1717CBCEAD9DF2727CC65', '戴尔DELL灵越5000', '20', '2', '2020-09-09 10:02:59', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcarforsale` VALUES ('107', 'B350A3B9DCD1717CBCEAD9DF2727CC65', '华为MateBook14', '18', '2', '2020-09-09 10:02:59', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcarforsale` VALUES ('108', 'B350A3B9DCD1717CBCEAD9DF2727CC65', 'MateBook 13', '21', '1', '2020-09-09 10:03:09', '20200824172055164.png', '5200');

-- ----------------------------
-- Table structure for `tbsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `tbsupplier`;
CREATE TABLE `tbsupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商表',
  `companyname` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsupplier
-- ----------------------------

-- ----------------------------
-- Table structure for `tbtype`
-- ----------------------------
DROP TABLE IF EXISTS `tbtype`;
CREATE TABLE `tbtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品类别表',
  `typename` varchar(255) DEFAULT NULL COMMENT '类别名称',
  `parentname` varchar(255) DEFAULT NULL COMMENT '父类别名称',
  `parentid` int(11) DEFAULT NULL COMMENT '父类别id',
  `fullpath` varchar(255) DEFAULT NULL COMMENT '全路径',
  `levelnum` int(11) DEFAULT NULL COMMENT '类别等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbtype
-- ----------------------------
INSERT INTO `tbtype` VALUES ('1', '家用电器', '/', '0', '家用电器', '0');
INSERT INTO `tbtype` VALUES ('2', '干杂调料', '/', '0', '干杂调料', '0');
INSERT INTO `tbtype` VALUES ('3', '烟酒饮料', '/', '0', '烟酒饮料', '0');
INSERT INTO `tbtype` VALUES ('4', '鸡鸭鱼肉', '/', '0', '鸡鸭鱼肉', '0');
INSERT INTO `tbtype` VALUES ('5', '水果蔬菜', '/', '0', '水果蔬菜', '0');
INSERT INTO `tbtype` VALUES ('31', '电视机', '家用电器', '1', '家用电器/电视机', '1');
INSERT INTO `tbtype` VALUES ('32', '电冰箱', '家用电器', '1', '家用电器/电冰箱', '1');
INSERT INTO `tbtype` VALUES ('33', '空调', '家用电器', '1', '家用电器/空调', '1');
INSERT INTO `tbtype` VALUES ('34', '笔记本', '家用电器', '1', '家用电器/笔记本电脑', '1');
INSERT INTO `tbtype` VALUES ('35', 'TCL', '电视机', '31', '家用电器/电视机/TCL', '2');
INSERT INTO `tbtype` VALUES ('36', '小米', '电视机', '31', '家用电器/电视机/小米', '2');

-- ----------------------------
-- Table structure for `tbuserhasrole`
-- ----------------------------
DROP TABLE IF EXISTS `tbuserhasrole`;
CREATE TABLE `tbuserhasrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名名称',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuserhasrole
-- ----------------------------
INSERT INTO `tbuserhasrole` VALUES ('13', '1', null, '1', null);
INSERT INTO `tbuserhasrole` VALUES ('14', '12', null, '3', null);
INSERT INTO `tbuserhasrole` VALUES ('15', '13', null, '4', null);
INSERT INTO `tbuserhasrole` VALUES ('16', '13', null, '5', null);

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `username` varchar(20) DEFAULT NULL COMMENT '登录名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `truename` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `creatorid` int(11) DEFAULT NULL COMMENT '创建者人',
  `createtime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '111111', '超级管理员', '15397600038', '四川成都总部', null, null);
INSERT INTO `tbusers` VALUES ('2', 'tangyan05', '123456', '张三', '15397600036', '上海江浦路店', null, null);
INSERT INTO `tbusers` VALUES ('7', 'feifei', '123456', '郭靖', '15988886666', '北京复兴门外大街10086号', null, null);
INSERT INTO `tbusers` VALUES ('8', 'tangyan03', '123456', '刘湘', '15397600035', '重庆来福士广场店', null, null);
INSERT INTO `tbusers` VALUES ('11', 'tangyan02', '123456', '汤燕', '15397600033', '成都经销商火车南站西路店', null, null);
INSERT INTO `tbusers` VALUES ('12', 'tangyan01', '123456', '汤燕', '15397600032', '成都天府广场店', null, null);
INSERT INTO `tbusers` VALUES ('13', 'qingzewei', '123456', 'qingzewei', '13500000001', '测试账号', null, null);

-- ----------------------------
-- View structure for `v_product`
-- ----------------------------
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product` AS select `tbproduct`.`id` AS `id`,`tbproduct`.`proname` AS `proname`,`tbproduct`.`pronum` AS `pronum`,`tbproduct`.`typeid` AS `typeid`,`tbproduct`.`price` AS `price`,`tbproduct`.`brief` AS `brief`,`tbproduct`.`descriptions` AS `descriptions`,`tbproduct`.`address` AS `address`,`tbproduct`.`procount` AS `procount`,`tbproduct`.`imgurl` AS `imgurl`,`tbproduct`.`procodeurl` AS `procodeurl`,`tbtype`.`levelnum` AS `levelnum`,`tbtype`.`typename` AS `typename`,`tbtype`.`fullpath` AS `fullpath` from (`tbproduct` left join `tbtype` on((`tbproduct`.`typeid` = `tbtype`.`id`))) ;

-- ----------------------------
-- View structure for `v_saleitemcount`
-- ----------------------------
DROP VIEW IF EXISTS `v_saleitemcount`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_saleitemcount` AS select `tbsaleorderitems`.`id` AS `id`,`tbsaleorderitems`.`orderid` AS `orderid`,`tbsaleorderitems`.`proname` AS `proname`,`tbsaleorderitems`.`price` AS `price`,`tbsaleorderitems`.`procount` AS `procount`,`tbsaleorderhead`.`ctime` AS `ctime` from (`tbsaleorderitems` left join `tbsaleorderhead` on((`tbsaleorderitems`.`orderid` = `tbsaleorderhead`.`orderid`))) ;
