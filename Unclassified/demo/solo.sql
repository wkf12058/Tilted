/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : solo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-12-07 00:21:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for solo_user
-- ----------------------------
DROP TABLE IF EXISTS `solo_user`;
CREATE TABLE `solo_user` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '主键',
  `userId` varchar(20) DEFAULT NULL COMMENT '用户账号',
  `userName` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `passWord` varchar(20) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of solo_user
-- ----------------------------
INSERT INTO `solo_user` VALUES ('1', 'test', 'test', 'test');
INSERT INTO `solo_user` VALUES ('11', 'test2', 'test2', 'test2');

-- ----------------------------
-- Table structure for so_problem
-- ----------------------------
DROP TABLE IF EXISTS `so_problem`;
CREATE TABLE `so_problem` (
  `id` varchar(32) NOT NULL COMMENT '主键.',
  `title` varchar(500) DEFAULT NULL COMMENT '题目',
  `answer` varchar(25) DEFAULT NULL COMMENT '答案',
  `option1` varchar(255) DEFAULT NULL COMMENT '选项1',
  `option2` varchar(255) DEFAULT NULL COMMENT '选项2',
  `option3` varchar(255) DEFAULT NULL COMMENT '选项3',
  `option4` varchar(255) DEFAULT NULL COMMENT '选项4',
  `other_option` varchar(255) DEFAULT NULL COMMENT '其他选项',
  `sign` varchar(255) DEFAULT NULL COMMENT '标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of so_problem
-- ----------------------------
INSERT INTO `so_problem` VALUES ('1', '众所周知我们所处的宇宙的质能公式是E=mc2，其中c是真空中的光速，和我们的宇宙平行的另一个宇宙meta，研究显示他们使用的质能公式是E=(2+√3)m，当一个物体质量m很大的时候，对应的能量E非常大，数据也非常的长，但meta宇宙里面的智慧生物只愿意把E取整，然后记录对应的能量E的最后一位整数，比如m=0时，他们会记录1，m=1时，他们会记录3。m=2的时候，他们会记录3。现在请问当m=100时，他们会记录多少？', 'A', 'String', 'int', 'char', 'void', '', '1');
INSERT INTO `so_problem` VALUES ('2', '编译和运行下面代码时显示的结果是（）', 'B', '打开当前目录下的文件2.txt，既可以向文件写数据，也可以从文件读数据', 'ClassCastException', 'FileNotFoundException', 'IndexOutOfBoundsException', null, '1');
