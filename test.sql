/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2018-12-22 16:27:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uacc` varchar(255) NOT NULL COMMENT '帐号',
  `upwd` varchar(255) NOT NULL COMMENT '密码',
  `uname` varchar(255) NOT NULL COMMENT '姓名',
  `uage` int(11) NOT NULL COMMENT '年龄',
  `usex` varchar(255) NOT NULL COMMENT '性别',
  `utel` varchar(255) NOT NULL COMMENT '电话',
  `uimage` varchar(255) NOT NULL DEFAULT 'img/userImg.jpg' COMMENT '头像',
  `address` varchar(255) NOT NULL COMMENT '住址',
  `uplay` varchar(255) NOT NULL COMMENT '交易密码',
  `uroot` int(11) NOT NULL DEFAULT '0' COMMENT '权限(默认为0即普通用户)',
  `ustate` int(10) unsigned zerofill NOT NULL,
  `qqopenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO userinfo VALUES ('1', 'admin', 'admin', '测试', '21', '男', '13213833671', 'img/cs.png', '河南郑州', '123456', '1', '0000000000', null);

-- ----------------------------
-- Procedure structure for `test1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `test1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test1`()
begin
declare v_cnt decimal (10)  default 0 ;
dd:loop
        insert  into testinfo values
        (null,'用户1','123456','男','13213833671','河南郑州'),
        (null,'用户2','654321','男','13213833671','河南郑州'),
        (null,'用户3','123321','男','13213833671','河南郑州'),
        (null,'用户4','112233','男','13213833671','河南郑州'),
        (null,'用户5','223344','男','13213833671','河南郑州'),
        (null,'用户6','445566','男','13213833671','河南郑州'),
        (null,'用户7','778899','男','13213833671','河南郑州'),
        (null,'用户8','678901','男','13213833671','河南郑州'),
        (null,'用户9','123451','男','13213833671','河南郑州'),
        (null,'用户0','245355','男','13213833671','河南郑州')
                ;
        commit;
        set v_cnt = v_cnt+10 ;
            if  v_cnt = 1000000 then leave dd;
            end if;
        end loop dd ;
end
;;
DELIMITER ;
