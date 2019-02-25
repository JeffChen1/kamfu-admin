/*
Navicat MySQL Data Transfer

Source Server         : 192.168.5.33
Source Server Version : 50559
Source Host           : 192.168.5.33:3306
Source Database       : kamfu-admin

Target Server Type    : MYSQL
Target Server Version : 50699
File Encoding         : 65001

Date: 2018-06-19 16:10:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kf_sec_auth_client
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_auth_client`;
CREATE TABLE `kf_sec_auth_client` (
`id`  varchar(64) NOT NULL ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '服务编码' ,
`secret`  varchar(255) NULL DEFAULT NULL COMMENT '服务密钥' ,
`name`  varchar(255) NULL DEFAULT NULL COMMENT '服务名' ,
`locked`  char(1) NULL DEFAULT NULL COMMENT '是否锁定' ,
`description`  varchar(255) NULL DEFAULT NULL COMMENT '描述' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建人' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建人姓名' ,
`crt_host`  varchar(255) NULL DEFAULT NULL COMMENT '创建主机' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user`  varchar(255) NULL DEFAULT NULL COMMENT '更新人' ,
`upd_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新姓名' ,
`upd_host`  varchar(255) NULL DEFAULT NULL COMMENT '更新主机' ,
`attr1`  varchar(255) NULL DEFAULT NULL ,
`attr2`  varchar(255) NULL DEFAULT NULL ,
`attr3`  varchar(255) NULL DEFAULT NULL ,
`attr4`  varchar(255) NULL DEFAULT NULL ,
`attr5`  varchar(255) NULL DEFAULT NULL ,
`attr6`  varchar(255) NULL DEFAULT NULL ,
`attr7`  varchar(255) NULL DEFAULT NULL ,
`attr8`  varchar(255) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)

;

-- ----------------------------
-- Records of kf_sec_auth_client
-- ----------------------------
INSERT INTO `kf_sec_auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('101', 'kf-plt-admin-gate', '123456', 'kf-plt-admin-gate', '0', '服务网关1', null, '', '', '', '2017-07-07 21:51:32', '1', '管理员', '0:0:0:0:0:0:0:1', '', '', '', '', '', '', '', '');
INSERT INTO `kf_sec_auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('102', 'kf-plt-admin-transaction', '123456', 'kf-plt-admin-transaction', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('103', 'kf-plt-admin-dict', '123566', 'kf-plt-admin-dict', '0', '数据字典服务', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('104', 'kf-plt-admin-demo-depart-data', '123456', 'kf-plt-admin-demo-depart-data', '0', '测试服务', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('105', 'kf-plt-admin-sysmgnt', '123456', 'kf-plt-admin-admin', '0', '', null, null, null, null, '2017-07-06 21:42:17', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('106', 'kf-plt-admin-auth', '123456', 'kf-plt-admin-auth', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for kf_sec_auth_client_service
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_auth_client_service`;
CREATE TABLE `kf_sec_auth_client_service` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`service_id`  varchar(255) NULL DEFAULT NULL ,
`client_id`  varchar(255) NULL DEFAULT NULL ,
`description`  varchar(255) NULL DEFAULT NULL ,
`crt_time`  datetime NULL DEFAULT NULL ,
`crt_user`  varchar(255) NULL DEFAULT NULL ,
`crt_name`  varchar(255) NULL DEFAULT NULL ,
`crt_host`  varchar(255) NULL DEFAULT NULL ,
`attr1`  varchar(255) NULL DEFAULT NULL ,
`attr2`  varchar(255) NULL DEFAULT NULL ,
`attr3`  varchar(255) NULL DEFAULT NULL ,
`attr4`  varchar(255) NULL DEFAULT NULL ,
`attr5`  varchar(255) NULL DEFAULT NULL ,
`attr6`  varchar(255) NULL DEFAULT NULL ,
`attr7`  varchar(255) NULL DEFAULT NULL ,
`attr8`  varchar(255) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
AUTO_INCREMENT=66

;

-- ----------------------------
-- Records of kf_sec_auth_client_service
-- ----------------------------
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('10', '4', '5', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('11', '105', '16', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('12', '12', '16', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('13', '102', '102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('14', '105', '106', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('15', '105', '101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('16', '106', '101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('17', '103', '101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`) VALUES ('18', '105', '104', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for kf_sec_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_dict_type`;
CREATE TABLE `kf_sec_dict_type` (
`id`  varchar(64) NOT NULL COMMENT '主键' ,
`code`  varchar(100) NULL DEFAULT NULL COMMENT '编码' ,
`type`  varchar(1) NULL DEFAULT NULL COMMENT '类型' ,
`name`  varchar(255) NULL DEFAULT NULL COMMENT '目录名' ,
`parent_id`  varchar(64) NULL DEFAULT NULL ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建人' ,
`crt_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '创建人ID' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新人' ,
`upd_user_id`  varchar(36) NULL DEFAULT NULL COMMENT '最后更新人ID' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '最后更新时间' ,
`attr1`  varchar(255) NULL DEFAULT NULL ,
`attr2`  varchar(255) NULL DEFAULT NULL ,
`attr3`  varchar(255) NULL DEFAULT NULL ,
`attr4`  varchar(255) NULL DEFAULT NULL ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `unique_code` (`code`) USING BTREE 
)

;

-- ----------------------------
-- Records of kf_sec_dict_type
-- ----------------------------
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('2e7a6f2dab184e3c891040d7b9b7e7ec', 'authority_element', null, '资源类型', '8ab51d3c861d476eb10600b2ed0f1f0d', '', null, '2018-02-01 12:23:39', '', null, '2018-02-01 12:24:04', null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('4de6efea2456471ca3a4efa9f757d7cc', 'org', null, '组织部门', '64fce2915a213504be2b08ad12746af2', 'Mr.AG', '1', '2018-02-04 23:04:11', 'Mr.AG', '1', '2018-02-04 23:04:28', null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('53b7b71f63273f53aa2c7590b446fb33', 'comm', '0', '公共字典', '64fce2915a213504be2b08ad12746af2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('64fce2915a213504be2b08ad12746af2', 'root', '0', '根节点', '-1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('67374d6aebeb4cc28484c7f303ec85f5', 'authority_menu', null, '菜单类型', '8ab51d3c861d476eb10600b2ed0f1f0d', '', null, '2018-02-01 12:23:26', '', null, '2018-02-01 12:23:37', null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('8ab51d3c861d476eb10600b2ed0f1f0d', 'authority', null, '权限字典', '64fce2915a213504be2b08ad12746af2', '', null, '2018-02-01 12:22:58', '', null, '2018-02-01 12:23:22', null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('cd9c72b4554a4061a0aa50755bd5419a', 'org_depart', null, '部门类型', '4de6efea2456471ca3a4efa9f757d7cc', 'Mr.AG', '1', '2018-02-04 23:04:31', 'Mr.AG', '1', '2018-02-04 23:11:43', null, null, null, null, null);
INSERT INTO `kf_sec_dict_type` (`id`, `code`, `type`, `name`, `parent_id`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('d62b242fde833653bce1498787ea6c31', 'comm_sex', '1', '性别', '53b7b71f63273f53aa2c7590b446fb33', '', null, '2018-01-31 17:36:38', '', null, '2018-01-31 17:36:49', null, null, null, null, null);

-- ----------------------------
-- Table structure for kf_sec_dict_value
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_dict_value`;
CREATE TABLE `kf_sec_dict_value` (
`id`  varchar(64) NOT NULL COMMENT '主键' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID' ,
`code`  varchar(100) NULL DEFAULT NULL COMMENT '编码' ,
`value`  varchar(255) NULL DEFAULT NULL COMMENT '值' ,
`label_default`  varchar(255) NULL DEFAULT NULL COMMENT '默认显示' ,
`label_en_US`  varchar(255) NULL DEFAULT NULL COMMENT '英文显示' ,
`label_zh_CH`  varchar(255) NULL DEFAULT NULL COMMENT '中文显示' ,
`type_id`  varchar(64) NULL DEFAULT NULL ,
`label_attr1`  varchar(255) NULL DEFAULT NULL COMMENT '值' ,
`label_attr2`  varchar(255) NULL DEFAULT NULL COMMENT '值' ,
`label_attr3`  varchar(255) NULL DEFAULT NULL COMMENT '值' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建人' ,
`crt_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '创建人ID' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新人' ,
`upd_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '最后更新人ID' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '最后更新时间' ,
`parent_id`  varchar(64) NULL DEFAULT NULL ,
`attr1`  varchar(255) NULL DEFAULT NULL ,
`attr2`  varchar(255) NULL DEFAULT NULL ,
`attr3`  varchar(255) NULL DEFAULT NULL ,
`attr4`  varchar(255) NULL DEFAULT NULL ,
`order_num`  int(11) NULL DEFAULT 1 COMMENT '排序' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `unique_code` (`code`) USING BTREE 
)

;

-- ----------------------------
-- Records of kf_sec_dict_value
-- ----------------------------
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('063ac8469d2b48398cc8263b8b786356', null, 'org_depart_group', 'group', '集团', 'Group', '集团', 'cd9c72b4554a4061a0aa50755bd5419a', null, null, null, 'Mr.AG', '1', '2018-02-04 23:08:46', 'Mr.AG', '1', '2018-02-05 12:40:41', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('276fc4a924b241d6820209c42e1b2ccc', null, 'authority_element_button', 'button', '按钮', 'button', 'button', '2e7a6f2dab184e3c891040d7b9b7e7ec', null, null, null, '', null, '2018-02-01 12:26:38', 'Mr.AG', '1', '2018-02-02 19:43:43', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('49000e5b738544df9f864489142e518c', null, 'org_depart_ou', 'ou', '公司', 'OU', '公司', 'cd9c72b4554a4061a0aa50755bd5419a', null, null, null, 'Mr.AG', '1', '2018-02-04 23:10:17', 'Mr.AG', '1', '2018-02-05 12:40:46', null, null, null, null, null, '2');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('4b1112f4d71c492796690062aeedeb25', null, 'authority_element_uri', 'uri', '资源', 'uri', 'uri', '2e7a6f2dab184e3c891040d7b9b7e7ec', null, null, null, '', null, '2018-02-01 12:26:01', 'Mr.AG', '1', '2018-02-02 19:43:54', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('657ae6bd192a36729d39446174bcf64c', null, 'comm_sex_woman', 'woman', '女', 'Woman', '女', 'd62b242fde833653bce1498787ea6c31', null, null, null, null, null, null, '', null, '2018-02-01 12:51:52', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('687a9d26f11049d29ea5e33eecd6a4fd', null, 'org_depart_dept', 'dept', '部门', 'Depart', '部门', 'cd9c72b4554a4061a0aa50755bd5419a', null, null, null, 'Mr.AG', '1', '2018-02-04 23:11:02', 'Mr.AG', '1', '2018-02-05 12:40:52', null, null, null, null, null, '4');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('75a832a6d3684b4a9aa62e04e84213d0', null, 'org_depart_bu', 'bu', '事业部', 'BU', '事业部', 'cd9c72b4554a4061a0aa50755bd5419a', null, null, null, 'Mr.AG', '1', '2018-02-04 23:10:45', 'Mr.AG', '1', '2018-02-05 12:40:49', null, null, null, null, null, '3');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('8571cabddd083a5ab732b1df81bdf392', null, 'comm_sex_man', 'man', '男', 'Man', '男', 'd62b242fde833653bce1498787ea6c31', null, null, null, null, null, null, '', null, '2018-02-01 12:51:55', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('c5158e555e164e648b149dafe2e89e0a', null, 'comm_sex_unknown', 'unknown', '未知', 'Unknown', '未知', 'd62b242fde833653bce1498787ea6c31', null, null, null, '', null, '2018-01-31 19:27:27', '', null, '2018-02-01 12:51:58', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('d55d6ed5a0024779b959f43288857089', null, 'authority_menu_dirt', 'dirt', '目录', 'Dirt', '目录', '67374d6aebeb4cc28484c7f303ec85f5', null, null, null, '', null, '2018-02-01 12:25:09', '', null, '2018-02-01 12:52:49', null, null, null, null, null, '1');
INSERT INTO `kf_sec_dict_value` (`id`, `tenant_id`, `code`, `value`, `label_default`, `label_en_US`, `label_zh_CH`, `type_id`, `label_attr1`, `label_attr2`, `label_attr3`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `parent_id`, `attr1`, `attr2`, `attr3`, `attr4`, `order_num`) VALUES ('ee4920be6f424be0bfba54d7b1202068', null, 'authority_menu_menu', 'menu', '菜单', 'Menu', '菜单', '67374d6aebeb4cc28484c7f303ec85f5', null, null, null, '', null, '2018-02-01 12:24:23', '', null, '2018-02-01 12:52:51', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for kf_sec_element
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_element`;
CREATE TABLE `kf_sec_element` (
`element_id`  varchar(64) NOT NULL COMMENT '主键' ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '资源编码' ,
`type`  varchar(255) NULL DEFAULT NULL COMMENT '资源类型' ,
`name`  varchar(255) NULL DEFAULT NULL COMMENT '资源名称' ,
`uri`  varchar(255) NULL DEFAULT NULL COMMENT '资源路径' ,
`menu_id`  varchar(255) NULL DEFAULT NULL COMMENT '资源关联菜单' ,
`parent_id`  varchar(255) NULL DEFAULT NULL COMMENT '上级节点' ,
`path`  varchar(2000) NULL DEFAULT NULL COMMENT '资源树状检索路径' ,
`method`  varchar(10) NULL DEFAULT NULL COMMENT '资源请求类型' ,
`icon`  varchar(255) NULL DEFAULT NULL COMMENT '图标 新增' ,
`image`  varchar(255) NULL DEFAULT NULL COMMENT '图片 新增' ,
`hover_image`  varchar(255) NULL DEFAULT NULL COMMENT '鼠标按上图片' ,
`description`  varchar(255) NULL DEFAULT NULL COMMENT '描述' ,
`crt_host`  varchar(255) NULL DEFAULT NULL COMMENT '创建服务器' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
PRIMARY KEY (`element_id`)
)

;

-- ----------------------------
-- Records of kf_sec_element
-- ----------------------------
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('10', 'menuManager:btn_add', 'button', '新增', '/admin/menu', '6', null, null, 'POST', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('103593127199487794f9fd8fd573db5f', 'positionManager:btn_depart', 'button', '授权部门权限', '/admin/position/{*}/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, null, null, null, null, '2018-02-11 12:44:45', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('11', 'menuManager:btn_edit', 'button', '编辑', '/admin/menu', '6', '', '', 'PUT', null, null, null, '', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('12', 'menuManager:btn_del', 'button', '删除', '/admin/menu', '6', '', '', 'DELETE', null, null, null, '', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('13', 'menuManager:btn_element_add', 'button', '新增元素', '/admin/element', '6', null, null, 'POST', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('14', 'menuManager:btn_element_edit', 'button', '编辑元素', '/admin/element', '6', null, null, 'PUT', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('15', 'menuManager:btn_element_del', 'button', '删除元素', '/admin/element', '6', null, null, 'DELETE', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('16', 'groupManager:btn_add', 'button', '新增', '/admin/group', '7', null, null, 'POST', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('17', 'groupManager:btn_edit', 'button', '编辑', '/admin/group', '7', null, null, 'PUT', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('18', 'groupManager:btn_del', 'button', '删除', '/admin/group', '7', null, null, 'DELETE', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('19', 'groupManager:btn_userManager', 'button', '分配用户', '/admin/group/{*}/user', '7', null, null, 'PUT', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('20', 'groupManager:btn_resourceManager', 'button', '分配权限', '/admin/group/{*}/authority', '7', null, null, 'GET', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('21', 'groupManager:menu', 'uri', '分配菜单', '/admin/group/{*}/authority/menu', '7', null, null, 'POST', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('21b3fe683a6040ed8c57423e55cd94a2', 'groupManager:authorize_menu', 'button', '菜单下发', '/admin/group/{*}/authorize/menu', '7', null, null, 'POST', null, null, null, null, null, '2018-02-12 14:54:57', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('22', 'groupManager:element', 'uri', '分配资源', '/admin/group/{*}/authority/element', '7', null, null, 'POST', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('23', 'userManager:view', 'uri', '查看', '/admin/user', '1', '', '', 'GET', null, null, null, '', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('24', 'menuManager:view', 'uri', '查看', '/admin/menu', '6', '', '', 'GET', null, null, null, '', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('24ecd755a1ea4cf6b76c8b72ea1858fe', 'tenantManager:btn_user', 'button', '授予用户', '/admin/tenant/user', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'POST', null, null, null, null, null, '2018-02-12 21:05:48', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('27', 'menuManager:element_view', 'uri', '查看', '/admin/element', '6', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('28', 'groupManager:view', 'uri', '查看', '/admin/group', '7', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('2b7b250b2b7346759938a05da57d2fcb', 'tenantManager:view', 'uri', '查看租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'GET', null, null, null, null, null, '2018-02-09 12:26:27', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('3', 'userManager:btn_add', 'button', '新增', '/admin/user', '1', null, null, 'POST', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('32', 'groupTypeManager:view', 'uri', '查看', '/admin/groupType', '8', null, null, 'GET', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('33', 'groupTypeManager:btn_add', 'button', '新增', '/admin/groupType', '8', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('34', 'groupTypeManager:btn_edit', 'button', '编辑', '/admin/groupType', '8', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('35', 'groupTypeManager:btn_del', 'button', '删除', '/admin/groupType', '8', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('375b04fe927c44e88593d02670acd90f', 'groupManager:btn_authorizeManager', 'button', '权限下发', '/admin/group/{*}/authorize', '7', null, null, 'GET', null, null, null, null, null, '2018-02-12 14:52:55', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('39925b8263664c9e923f9c34f9bc2a37', 'positionManager:btn_user', 'button', '分配岗位人员', '/admin/position/{*}/user', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, null, null, null, null, '2018-02-10 16:49:57', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('4', 'userManager:btn_edit', 'button', '编辑', '/admin/user', '1', null, null, 'PUT', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('41', 'gateLogManager:view', 'button', '查看', '/admin/gateLog', '27', null, null, 'GET', null, null, null, '', '0:0:0:0:0:0:0:1', '2017-07-01 00:00:00', '1', 'admin', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('42', 'serviceManager:view', 'uri', '查看', '/auth/service', '30', null, null, 'GET', null, null, null, null, '127.0.0.1', '2017-12-26 20:17:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('43', 'serviceManager:btn_add', 'button', '新增', '/auth/service', '30', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('44', 'serviceManager:btn_edit', 'button', '编辑', '/auth/service', '30', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('45', 'serviceManager:btn_del', 'button', '删除', '/auth/service', '30', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('46', 'serviceManager:btn_clientManager', 'button', '授权服务', '/auth/service/{*}/client', '30', null, null, 'POST', null, null, null, null, '127.0.0.1', '2017-12-30 16:32:48', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('47', 'serviceManager:btn_buidlProject', 'button', '构建工程', '/auth/generator/build', '30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('48', 'dictTypeManager:view', 'uri', '查看字典目录', '/dict/dictType', '21', null, null, 'GET', null, null, null, null, '127.0.0.1', '2017-12-26 20:17:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('49', 'dictTypeManager:btn_add', 'button', '新增字典目录', '/dict/dictType', '21', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('4ee4f57a2d92494abe2595bff4f32057', 'groupManager:authorize_element', 'button', '资源下发', '/admin/group/{*}/authorize/element', '7', null, null, 'POST', null, null, null, null, null, '2018-02-12 14:55:30', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('5', 'userManager:btn_del', 'button', '删除', '/admin/user', '1', null, null, 'DELETE', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('50', 'dictTypeManager:btn_edit', 'button', '编辑字典目录', '/dict/dictType', '21', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('51', 'dictTypeManager:btn_del', 'button', '删除字典目录', '/dict/dictType', '21', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('52', 'dictValueManager:view', 'uri', '查看字典值', '/dict/dictValue', '21', null, null, 'GET', null, null, null, null, '127.0.0.1', '2017-12-26 20:17:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('53', 'dictValueManager:btn_add', 'button', '新增字典值', '/dict/dictValue', '21', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('54', 'dictValueManager:btn_edit', 'button', '编辑字典值', '/dict/dictValue', '21', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('55', 'dictValueManager:btn_del', 'button', '删除字典值', '/dict/dictValue', '21', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('56', 'departManager:view', 'uri', '查看部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'GET', null, null, null, null, '127.0.0.1', '2017-12-26 20:17:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('57', 'departManager:btn_add', 'button', '新增部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('58', 'departManager:btn_edit', 'button', '编辑部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('59', 'departManager:btn_del', 'button', '删除部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('6d7ea83bb71d476dbfbda2bcbc1a01bd', 'positionManager:btn_del', 'button', '删除岗位', '/admin/position', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'DELETE', null, null, null, null, null, '2018-02-10 16:47:45', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('7a16202657c3478c8b4ece27a792e026', 'positionManager:btn_group', 'button', '分配岗位角色', '/admin/position/{*}/group', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, null, null, null, null, '2018-02-10 16:51:31', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('8b5ff030c76341059a335e0653fef5ea', 'departManager:btn_user_del', 'button', '删除部门人员', '/admin/depart/user', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'DELETE', null, null, null, null, null, '2018-02-10 16:45:10', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('9', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', null, null, 'GET', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('a03cac538f794958bc7fa6458f85b8ae', 'tenantManager:btn_del', 'uri', '删除租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'DELETE', null, null, null, null, null, '2018-02-09 12:28:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('c6469be83d8e4d5ca404b46b347f7d4c', 'positionManager:btn_add', 'button', '新增岗位', '/admin/position', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'POST', null, null, null, null, null, '2018-02-10 16:47:23', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('cac49646909c4750b23f223f53eafc5b', 'positionManager:btn_edit', 'button', '编辑岗位', '/admin/posision', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, null, null, null, null, '2018-02-10 16:48:24', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('d2773b3568c6438c8f9cc21b06b660ee', 'departManager:btn_user_add', 'button', '新增部门人员', '/admin/depart/user', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'POST', null, null, null, null, null, '2018-02-10 16:44:07', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('d6b714eff47a42d0a654e55c39304dd5', 'tenantManager:btn_edit', 'button', '编辑租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'PUT', null, null, null, null, null, '2018-02-09 12:29:26', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('eddad1f3d2d54ba0ac50e8c4781764cb', 'tenantManager:btn_add', 'button', '新增租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'POST', null, null, null, null, null, '2018-02-09 12:27:11', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_element` (`element_id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `icon`, `image`, `hover_image`, `description`, `crt_host`, `crt_time`, `crt_user`, `crt_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('ef73cc9bf70d448caf72e3f45015700a', 'positionManager:view', 'uri', '查看岗位', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'GET', null, null, null, null, null, '2018-02-10 16:48:49', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for kf_sec_gate_log
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_gate_log`;
CREATE TABLE `kf_sec_gate_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '序号主键' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户Id' ,
`menu`  varchar(255) NULL DEFAULT NULL COMMENT '菜单' ,
`opt`  varchar(255) NULL DEFAULT NULL COMMENT '操作' ,
`uri`  varchar(255) NULL DEFAULT NULL COMMENT '资源路径' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '操作时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '操作人ID' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '操作人' ,
`crt_host`  varchar(255) NULL DEFAULT NULL COMMENT '操作主机' ,
PRIMARY KEY (`id`)
)
COMMENT='网管日志  对应gate_log'
AUTO_INCREMENT=17

;

-- ----------------------------
-- Records of kf_sec_gate_log
-- ----------------------------
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('1', 'ac88ceb386aa4231b09bf472cb937c24', '服务权限管理', '新增', '/auth/service', '2018-06-15 10:23:01', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('2', 'ac88ceb386aa4231b09bf472cb937c24', '服务权限管理', '新增', '/auth/service', '2018-06-15 10:30:39', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('3', 'ac88ceb386aa4231b09bf472cb937c24', '服务权限管理', '编辑', '/auth/service', '2018-06-15 11:33:11', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('4', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '删除', '/admin/user', '2018-06-15 11:54:25', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('5', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 10:06:00', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('6', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 10:06:04', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('7', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 10:06:06', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('8', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 10:08:09', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('9', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 10:37:29', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('10', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 10:37:39', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('11', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 11:00:48', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('12', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '新增', '/admin/user', '2018-06-19 11:08:47', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('13', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '编辑', '/admin/user', '2018-06-19 11:15:44', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('14', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '编辑', '/admin/user', '2018-06-19 11:26:59', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('15', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '编辑', '/admin/user', '2018-06-19 11:33:26', '1', 'Mr.AG', '127.0.0.1');
INSERT INTO `kf_sec_gate_log` (`id`, `tenant_id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`) VALUES ('16', 'ac88ceb386aa4231b09bf472cb937c24', '用户管理', '编辑', '/admin/user', '2018-06-19 11:44:56', '1', 'Mr.AG', '127.0.0.1');

-- ----------------------------
-- Table structure for kf_sec_group
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_group`;
CREATE TABLE `kf_sec_group` (
`group_id`  varchar(64) NOT NULL COMMENT '机构ID   对应id' ,
`extsys_group_id`  varchar(255) NULL DEFAULT NULL COMMENT ' 外部系统机构ID 例如：地税系统、国税系统等  新增' ,
`parent_id`  varchar(20) NULL DEFAULT NULL COMMENT '上级节点' ,
`name`  varchar(60) NULL DEFAULT NULL COMMENT '名称' ,
`shortname`  varchar(64) NULL DEFAULT NULL COMMENT '机构简称 新增' ,
`type`  char(1) NULL DEFAULT NULL COMMENT '机关：“0”、部门：”1“ 默认：空' ,
`enabled`  char(1) NULL DEFAULT NULL COMMENT '可用状态 有效：1（默认）；无效：0   新增' ,
`description`  varchar(600) NULL DEFAULT NULL COMMENT '备注' ,
`his_id`  varchar(64) NULL DEFAULT NULL COMMENT '历史ID 新增' ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '机构代码' ,
`path`  varchar(2000) NULL DEFAULT NULL COMMENT '路径' ,
`group_type`  varchar(64) NULL DEFAULT NULL COMMENT '关系组类型' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展字段1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展字段2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展字段3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展字段4' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
PRIMARY KEY (`group_id`)
)
COMMENT='组织机构  对应base_depart'

;

-- ----------------------------
-- Records of kf_sec_group
-- ----------------------------
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('2b06ea24a3cf40659c183da3242cc669', null, 'd8bb2fc8d51745458f77', '子节点', null, null, null, null, null, '1518502802626_tmp', null, null, '2018-02-13 14:20:03', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-13 14:20:03', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('8782fcb72842440fa3254bf72717d7b0', null, 'd8bb2fc8d51745458f77', '子节点', null, null, null, null, null, '1518500776414_tmp', null, null, '2018-02-13 13:46:17', '59c28b8593c2472e99e54e3ed9b6efe8', '王小七', '2018-02-13 13:46:17', '59c28b8593c2472e99e54e3ed9b6efe8', '王小七', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('9a255e4ca80842d0bdb18029d916fb1e', null, '8782fcb72842440fa325', '子节点', null, null, null, null, null, '1518505073066_tmp', null, null, '2018-02-13 14:57:53', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-13 14:57:53', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('9f628f321d8e476ba2f9f2315d5368c1', null, 'root', '子节点', null, null, null, null, null, '1525678451422_tmp', null, null, '2018-05-07 15:34:10', '1', 'Mr.AG', '2018-05-07 15:34:10', '1', 'Mr.AG', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('9f871185e4a648dbbdc7bb880c0eb90f', null, '8782fcb72842440fa325', '子节点', null, null, null, null, null, '1518507609891_tmp', null, null, '2018-02-13 15:40:10', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-13 15:40:10', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('a269b706b0b34ee89dd7e8e08e8514bc', null, '8782fcb72842440fa325', '子节点', null, null, null, null, null, '1518507610091_tmp', null, null, '2018-02-13 15:40:10', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-13 15:40:10', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('b87a6cc1e7084f0e9eea66ae14a1ef16', null, 'd583e7de6d2d48b78fb3', '子节点', null, null, null, null, null, '1528361413483_tmp', null, null, '2018-06-07 16:49:54', '1', 'Mr.AG', '2018-06-07 16:49:54', '1', 'Mr.AG', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('d583e7de6d2d48b78fb3c7dcb180cb1f', null, 'root', '普通租户', null, 'g', null, null, null, '1518438046753_tmp', null, null, '2018-02-12 20:20:47', '1', 'Mr.AG', '2018-02-12 20:26:26', '1', 'Mr.AG', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('d8bb2fc8d51745458f77a78c42bf60ab', null, '-1', '测试租户部门', null, 'g', null, null, null, '1518449909887', null, null, '2018-02-12 23:38:30', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-12 23:40:46', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group` (`group_id`, `extsys_group_id`, `parent_id`, `name`, `shortname`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `group_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('root', null, '-1', '超级租户部门', null, null, null, null, null, '1518437538385', null, null, '2018-02-12 20:12:18', '1', 'Mr.AG', '2018-02-12 20:13:55', '1', 'Mr.AG', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');

-- ----------------------------
-- Table structure for kf_sec_group_user
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_group_user`;
CREATE TABLE `kf_sec_group_user` (
`sec_group_user_id`  varchar(64) NOT NULL COMMENT '主键  对应id' ,
`user_id`  varchar(64) NOT NULL COMMENT '用户ID' ,
`group_id`  varchar(64) NOT NULL COMMENT '机构ID   对应id' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
PRIMARY KEY (`sec_group_user_id`)
)
COMMENT='组织机构用户关联表  对应base_depart_user'

;

-- ----------------------------
-- Records of kf_sec_group_user
-- ----------------------------
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('0d4e4bbf5504473d8f4bfc92e491f00e', '54e7842a9b314c67a71ab40aa6bcc0d3', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('11c493ebe5fc4075952ace01901301f6', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('1915e01edcc04ac0802abf9008b7239d', '1cb1a9ab57dc40ecabce03f105ddefc2', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('2b35dae4da494d24a218483965eda536', 'dc5bf862e3af47e59c82eb784abd238e', 'root', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('40d44c1b9739465898309457127540fe', 'b3f76347396843d8a22c3ee3a2c9e761', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('44b8f3fea1604d44ad574e9798e01614', '4c612b00c4d0472e971c9c1447d47838', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('47b029b7853a4461b17f4a7c4b7323c1', '4b2a3cbc6ba944198cc414081f85b45c', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('49575a0c46a44a9da2bf6c519aa354b4', 'f8c72e834bf64e2f8096131997da0099', 'root', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('54d8bcbc181c4509b82750908ad20880', '72fdf64d0b784a1fa4f1487675c80186', 'root', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('5c5330952de94f4d8e9534b69616ec7d', '59c28b8593c2472e99e54e3ed9b6efe8', 'd8bb2fc8d51745458f77a78c42bf60ab', null, null, null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('69e954456e2745a9a611db72d2ac5081', '021a7adf56f74268a24099806c2d6667', 'b87a6cc1e7084f0e9eea66ae14a1ef16', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('6e20f78fb5bf460391657e2a01407eb7', '866ce04a4f84453caf483d37d6efdaef', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('7a95cbe017614de88cf823116d9a2e13', '9800d3f943e14eca8eae9e945ae7af7a', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('7bb640abdc884a56842de80b4d75ac0b', '021a7adf56f74268a24099806c2d6667', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('94391a647a8443e7bfd49146a2d0143e', 'fee3b574768c435ca79d0dbcc4efa919', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('b16d09bd7c2148b1ad97e1e2115c1805', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', 'd8bb2fc8d51745458f77a78c42bf60ab', null, null, null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('cfaecb34c71b43eeae1944db2ba49953', 'c14cc430429445b4a4ef4031aa16ffc1', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('e26a3ee728f74f8595a852d3837a4459', '2034d3aa7d614117854f89f5bf9cf8a2', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_group_user` (`sec_group_user_id`, `user_id`, `group_id`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('fc250b8591dd4342ab65fba36fee3e5a', 'f7a79bbb8ca143ce95e1adf9b551b29d', 'd583e7de6d2d48b78fb3c7dcb180cb1f', null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');

-- ----------------------------
-- Table structure for kf_sec_menu
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_menu`;
CREATE TABLE `kf_sec_menu` (
`menu_id`  varchar(64) NOT NULL COMMENT '菜单id' ,
`parent_id`  varchar(64) NULL DEFAULT NULL COMMENT '上级节点' ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '路径编码' ,
`title`  varchar(255) NULL DEFAULT NULL COMMENT '标题' ,
`href`  varchar(255) NULL DEFAULT NULL COMMENT '资源路径' ,
`icon`  varchar(255) NULL DEFAULT NULL COMMENT '图标' ,
`image`  varchar(255) NULL DEFAULT NULL COMMENT '图片 新增' ,
`hover_image`  varchar(255) NULL DEFAULT NULL COMMENT '鼠标按上图片' ,
`type`  char(10) NULL DEFAULT NULL COMMENT '类型' ,
`order_code`  int(11) NOT NULL DEFAULT 0 COMMENT '排序 对应order_num' ,
`description`  varchar(255) NULL DEFAULT NULL COMMENT '描述' ,
`path`  varchar(500) NULL DEFAULT NULL COMMENT '菜单路径' ,
`enabled`  char(1) NULL DEFAULT NULL COMMENT '启用禁用' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`crt_host`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户IP' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`upd_host`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户IP' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户Id' ,
`his_id`  varchar(64) NULL DEFAULT NULL COMMENT '历史ID' ,
PRIMARY KEY (`menu_id`)
)
COMMENT='菜单表 对应base_menu'

;

-- ----------------------------
-- Records of kf_sec_menu
-- ----------------------------
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('1', '5', 'userManager', '用户管理', '/admin/user', 'user', null, null, 'menu', '1', '', '/adminSys/baseManager/userManager', null, null, null, null, null, '2018-01-23 15:35:50', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/user/index\')', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('13', '-1', 'adminSys', '权限管理系统', '/base', 'setting', null, null, 'dirt', '0', '', '/adminSys', null, null, null, null, null, '2018-02-02 19:48:22', '1', 'Mr.AG', '127.0.0.1', 'Layout', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('21', '5', 'dictManager', '数据字典', '', 'documentation', null, null, 'menu', '5', '', '/adminSys/baseManager/dictManager', null, null, null, null, null, '2018-02-04 14:48:47', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('27', '5', 'gateLogManager', '操作日志', '/admin/gateLog', 'log', null, null, 'menu', '6', '', '/adminSys/baseManager/gateLogManager', null, '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', '2017-09-05 22:32:55', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/gateLog/index\')', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('29', '13', 'authManager', '服务管理', '/auth', 'service', null, null, 'dirt', '3', '服务权限管理', '/adminSys/authManager', null, '2017-12-26 19:54:45', '1', 'Mr.AG', '127.0.0.1', '2018-02-02 19:48:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('30', '29', 'serviceManager', '服务权限管理', '/auth/service', 'client', null, null, 'menu', '1', '服务管理', '/adminSys/authManager/serviceManager', null, '2017-12-26 19:56:06', '1', 'Mr.AG', '127.0.0.1', '2018-02-02 19:48:46', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('31', '13', 'monitorManager', '监控运维管理', null, 'setting', null, null, 'dirt', '3', null, '/adminSys/monitorManager', null, '2018-01-07 11:35:19', '1', 'Mr.AG', '127.0.0.1', '2018-02-04 22:33:41', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('33', '31', 'serviceMonitorManager', '服务监控管理', 'http://cn.bing.com', 'client', null, null, 'menu', '2', null, '/monitorManager/serviceMonitorManager', null, '2018-01-07 11:38:13', '1', 'Mr.AG', '127.0.0.1', '2018-01-07 11:38:29', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('34', '31', 'serviceEurekaManager', '服务注册管理', 'https://www.baidu.com', 'client', null, null, 'menu', '1', null, '/monitorManager/serviceEurekaManager', null, '2018-01-07 12:20:31', '1', 'Mr.AG', '127.0.0.1', '2018-01-07 12:20:31', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('35', '31', 'serviceZipkinManager', '服务链路监控', null, 'client', null, null, 'menu', '3', null, '/adminSys/monitorManager/serviceZipkinManager', null, '2018-01-07 17:58:14', '1', 'Mr.AG', '127.0.0.1', '2018-01-07 17:58:14', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('5', '13', 'baseManager', '基础配置管理', '/admin', 'setting', null, null, 'dirt', '0', '', '/adminSys/baseManager', null, null, null, null, null, '2018-02-02 19:48:27', '1', 'Mr.AG', '127.0.0.1', 'Layout', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('6', '5', 'menuManager', '菜单管理', '/admin/menu', 'category', null, null, 'menu', '2', '', '/adminSys/baseManager/menuManager', null, null, null, null, null, '2017-09-05 21:10:25', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/menu/index\')', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('7', '5', 'groupManager', '角色权限管理', '/admin/group', 'group_fill', null, null, 'menu', '3', '', '/adminSys/baseManager/groupManager', null, null, null, null, null, '2017-09-05 21:11:34', '1', 'Mr.AG', '127.0.0.1', 'import(\'admin/group/index\')', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('7494902cc9e948668e51f4596042b084', '29', 'apiManager', '服务接口文档', '/auth/api', 'documentation', null, null, 'menu', '2', null, '/adminSys/authManager/apiManager', null, '2018-02-07 13:28:05', '1', 'Mr.AG', null, '2018-02-07 13:30:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('7574b969c9fa4e5895d6cc9c2b8a9a62', '5', 'tenantManager', '租户管理', '/admin/tenantManager', 'tenant', null, null, 'menu', '7', null, '/adminSys/baseManager/tenantManager', null, '2018-02-09 08:56:43', '1', 'Mr.AG', null, '2018-02-12 13:23:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('7a0a75752c7d422abd2e30b7aad744d7', '13', 'orgManager', '组织部门管理', '/org', 'org', null, null, 'dirt', '2', null, '/adminSys/orgManager', null, '2018-02-04 22:33:33', '1', 'Mr.AG', null, '2018-02-04 22:35:57', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('8', '5', 'groupTypeManager', '角色类型管理', '/admin/groupType', 'group', null, null, 'menu', '4', '', '/adminSys/baseManager/groupTypeManager', null, null, null, null, null, '2017-09-05 21:12:28', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/groupType/index\')', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_menu` (`menu_id`, `parent_id`, `code`, `title`, `href`, `icon`, `image`, `hover_image`, `type`, `order_code`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `his_id`) VALUES ('b5211cc69d234b28a97f27e63edc9a58', '7a0a75752c7d422abd2e30b7aad744d7', 'departManager', '部门管理', '/org/depart', 'depart', null, null, 'menu', '1', null, '/adminSys/orgManager/departManager', null, '2018-02-04 22:40:01', '1', 'Mr.AG', null, '2018-02-04 22:40:01', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for kf_sec_position
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_position`;
CREATE TABLE `kf_sec_position` (
`id`  varchar(64) NOT NULL COMMENT '职务id 主键' ,
`name`  varchar(255) NULL DEFAULT NULL COMMENT '职位' ,
`code`  varchar(100) NULL DEFAULT NULL COMMENT '编码' ,
`group_id`  varchar(64) NULL DEFAULT NULL COMMENT '部门ID  对应depart_id' ,
`type`  varchar(36) NULL DEFAULT NULL COMMENT '类型' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建人' ,
`crt_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '创建人ID' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新人' ,
`upd_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '最后更新人ID' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '最后更新时间' ,
`attr1`  varchar(255) NULL DEFAULT NULL ,
`attr2`  varchar(255) NULL DEFAULT NULL ,
`attr3`  varchar(255) NULL DEFAULT NULL ,
`attr4`  varchar(255) NULL DEFAULT NULL ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户id' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `AK_UQ_POSITION_CODE` (`code`) USING BTREE 
)
COMMENT='职务表 对应 base_position'

;

-- ----------------------------
-- Records of kf_sec_position
-- ----------------------------
INSERT INTO `kf_sec_position` (`id`, `name`, `code`, `group_id`, `type`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('9c2f9ab789634c2ca11456a1f28b3545', '12', '12', 'root', null, 'Mr.AG', '1', '2018-02-15 10:57:28', 'Mr.AG', '1', '2018-02-15 10:57:28', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_position` (`id`, `name`, `code`, `group_id`, `type`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `tenant_id`) VALUES ('c5f51dcdb64f4706acb4caa867359721', '董事长', 'dongshiz', 'd8bb2fc8d51745458f77a78c42bf60ab', null, '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 00:14:19', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 00:14:19', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');

-- ----------------------------
-- Table structure for kf_sec_position_group
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_position_group`;
CREATE TABLE `kf_sec_position_group` (
`id`  varchar(64) NOT NULL COMMENT '主键' ,
`position_id`  varchar(64) NULL DEFAULT NULL COMMENT '职务id' ,
`group_id`  varchar(64) NULL DEFAULT NULL COMMENT '组织id  对应depart_id' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户id' ,
PRIMARY KEY (`id`)
)
COMMENT='组织机构职务表  对应base_position_depart'

;

-- ----------------------------
-- Records of kf_sec_position_group
-- ----------------------------
INSERT INTO `kf_sec_position_group` (`id`, `position_id`, `group_id`, `tenant_id`) VALUES ('06fcf4a245574548b26483a7935d6b80', 'c5f51dcdb64f4706acb4caa867359721', '2b06ea24a3cf40659c183da3242cc669', '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_position_group` (`id`, `position_id`, `group_id`, `tenant_id`) VALUES ('52e4769712644574b510375d2cd67193', '9c2f9ab789634c2ca11456a1f28b3545', 'root', 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_position_group` (`id`, `position_id`, `group_id`, `tenant_id`) VALUES ('a3b52b00c9db421dac71a0cf8515292f', 'c5f51dcdb64f4706acb4caa867359721', '8782fcb72842440fa3254bf72717d7b0', '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_position_group` (`id`, `position_id`, `group_id`, `tenant_id`) VALUES ('a56fa87a91024418bcb9c455eb6dbe4a', 'c5f51dcdb64f4706acb4caa867359721', 'a269b706b0b34ee89dd7e8e08e8514bc', '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_position_group` (`id`, `position_id`, `group_id`, `tenant_id`) VALUES ('e9e7ae7b39ec4b1095005a1d58a96db0', 'c5f51dcdb64f4706acb4caa867359721', '6cc8e1c706ec4119afbf12bf1da2b9ad', '1ec08564dcc344018d6aaa910068f0f0');

-- ----------------------------
-- Table structure for kf_sec_position_role
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_position_role`;
CREATE TABLE `kf_sec_position_role` (
`id`  varchar(64) NOT NULL COMMENT '主键' ,
`position_id`  varchar(64) NULL DEFAULT NULL COMMENT '职务ID' ,
`role_id`  varchar(64) NULL DEFAULT NULL COMMENT '角色ID  对应group_id' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID' ,
PRIMARY KEY (`id`)
)
COMMENT='角色职务对应表  对应 base_position_group'

;

-- ----------------------------
-- Records of kf_sec_position_role
-- ----------------------------

-- ----------------------------
-- Table structure for kf_sec_position_user
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_position_user`;
CREATE TABLE `kf_sec_position_user` (
`id`  varchar(64) NOT NULL COMMENT '职务用户id 主键' ,
`position_id`  varchar(64) NULL DEFAULT NULL COMMENT '职务ID' ,
`user_id`  varchar(64) NULL DEFAULT NULL COMMENT '用户ID' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID' ,
PRIMARY KEY (`id`)
)
COMMENT='职务用户关系表  对应base_position_user'

;

-- ----------------------------
-- Records of kf_sec_position_user
-- ----------------------------
INSERT INTO `kf_sec_position_user` (`id`, `position_id`, `user_id`, `tenant_id`) VALUES ('30366d57e3914cdeaff3676e5d3e1d61', 'ba87c899a1404f43bb3caa3c072a88cc', '59c28b8593c2472e99e54e3ed9b6efe8', '1ec08564dcc344018d6aaa910068f0f0');

-- ----------------------------
-- Table structure for kf_sec_resource_authority
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_resource_authority`;
CREATE TABLE `kf_sec_resource_authority` (
`resource_authority_id`  varchar(64) NOT NULL COMMENT '主键   对应id' ,
`authority_id`  varchar(255) NULL DEFAULT NULL COMMENT '角色ID' ,
`authority_type`  varchar(255) NULL DEFAULT NULL COMMENT '角色类型' ,
`resource_id`  varchar(255) NULL DEFAULT NULL COMMENT '资源ID' ,
`resource_type`  varchar(255) NULL DEFAULT NULL COMMENT '资源类型' ,
`parent_id`  varchar(255) NULL DEFAULT NULL COMMENT '上级节点' ,
`path`  varchar(2000) NULL DEFAULT NULL COMMENT '路径' ,
`description`  varchar(255) NULL DEFAULT NULL COMMENT '描述' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户id' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`crt_host`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ip' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户Id' ,
`type`  varchar(1) NULL DEFAULT NULL COMMENT '类型' ,
PRIMARY KEY (`resource_authority_id`)
)
COMMENT='资源权限 对应base_resource_authority'

;

-- ----------------------------
-- Records of kf_sec_resource_authority
-- ----------------------------
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('0757704647af4651ab9e19daa52f5cb7', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('078b80792ecb4754b5566d7b31537206', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('0b65c6e846d44793a7a411b6d6c2e8d5', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('0c9ed5b75eff4e0da05ca80e47d88ad3', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7a16202657c3478c8b4ece27a792e026', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('0e35f3f47d07402daa82c13e4bd1eeea', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '57', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('0fa164ab87c540ca92e81f7bc3f1ca56', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('0fbd2b1a652b4450aa6eb3895085e876', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('13315a1c9ad54e9784fbf1360f3ea362', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '4ee4f57a2d92494abe2595bff4f32057', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('13de9dce30a44f7c8479577506def590', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '4ee4f57a2d92494abe2595bff4f32057', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('1587b15affaa4c89a7310769ccad7aef', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '21b3fe683a6040ed8c57423e55cd94a2', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('1688c6a4eacd4b538fb103d36b14aee8', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '1', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('1b0c9d3cf9a04317b9b2b6818b3d1900', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('1b31971f38e545629c656d64d9d2d0cd', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '56', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('1f7e43d004004e5493b6c5e66c517536', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'cac49646909c4750b23f223f53eafc5b', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('20643a004e8c4751a980649485989499', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '21b3fe683a6040ed8c57423e55cd94a2', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('21471cad403a4bb883864b67912893b3', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '6d7ea83bb71d476dbfbda2bcbc1a01bd', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('25c45a4e2b48442491405a92d5660c8e', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '8b5ff030c76341059a335e0653fef5ea', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('25c85684ec83485db4fc2db8300e5879', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '103593127199487794f9fd8fd573db5f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('2965a0d840e24d4f8e71685231072b2c', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('29c127f85ceb49f89124240eb034760a', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'c6469be83d8e4d5ca404b46b347f7d4c', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('2a13e650f13e4225bd3cadd4a2b8aa0c', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('2de45274d45f46138b721eff803d6057', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('2e3f2f4ca32f46948cc5066651f50e6f', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('2f643a3c464146d2b4796f405f87a049', '366af0a7fd79453fbe54c0d24917ec4b', 'role', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('31263c0e45d843bbb2d3c27136c4920c', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('32fd0f08ed77450c89e161cd01c5dcfb', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '48', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('3421b7806bf049309762b3e5ef30d52c', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('35e79f43a44a430dba65fd0a0cfa6691', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '41', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('3e7dfb6d37d846d697bdd3ec1a32eb94', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '56', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('3f306f8e4f6c407c83216883dc59b7f2', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '103593127199487794f9fd8fd573db5f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('4069f120e62841d0a1e2479070a507e7', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '27', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('43290fae8a7d412a9212e71381da0e0f', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('469e8c81b2704adc8c4b0819eee892d3', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('4f144c816618461c824f5936e8f53cd8', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('53b6e740aafa4b0e8c94f0a149cfd833', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '6', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('5677312b4e0743f6b53c88d0325e7e05', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('5842776d4e2f424292f0028de1120fda', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('5a7b8a92cf924423b2ff60174cbf778d', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '21', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('5b4629a8b81f4e51b1727134840ff7c0', '-1', 'role', '4', 'button', '-1', null, null, '2018-05-24 09:24:26', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('5bf1497ac5e6478d8abefc34cacdce76', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('5d013d261b1543cb82fd899967832543', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('6116121c0283433a8b74ff25c70a8700', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('69388de8e28c4f6f9d0d8186edc18c38', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '103593127199487794f9fd8fd573db5f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('69563e40403e4b2aa2bd15e9abe3abc7', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '5', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('6969f9f5b4b24e96be9793971d85dd91', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('6b6114349f8d4395a03ab769a299ea43', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('6d6f8b0c827d466b814ba39d4a5a8ccf', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('6fbbfa5c8d96436c881ed1eeb2a4b364', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('70345def316a4721a95beb6266c4e621', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('74ab7b0ea38c4efeaab7b85cf0601280', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('7538845fffa144a09b5cc804eea7fa74', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('761236db28ba4143a5dd0e28774ca319', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('765d458acb0c4b5cbb9afafa6ebab24c', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7a16202657c3478c8b4ece27a792e026', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('766f31aafdb44ae6872b1401d1581a47', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('78791a03c6b44a5e8a7a0518d1005964', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('7925a385408a4a21a99182268a9fe1ae', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '57', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('7c8e84550571470da9dcd79860c5260e', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '52', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('7f4938bf77084207a2c349d20cc9d826', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'cac49646909c4750b23f223f53eafc5b', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('851abc264ac84b568fedc7d38db08eed', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('8e6ad67a2f1b443e85f84e5f037dea33', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '59', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('8edbac86de834d40a67204f162815f12', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '8b5ff030c76341059a335e0653fef5ea', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('90e7de53222a4a048d14d6109ba4be5f', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '39925b8263664c9e923f9c34f9bc2a37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('94dd147289a3430bb037d7dd0ef2a872', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '57', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('95281a2ba60c48b49a39552457e677c8', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('98dddb5a2d04473c9fb00e8812f58629', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '8', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('9b2a306b36a149a386d9c2aa78e45036', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('a1a13b751b914d749678579e4c9a0195', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '18', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('a4358c504e4741af8f1fac0c4f288108', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '21', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('a735ad8b48c1486ea383dee07bc627aa', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'd2773b3568c6438c8f9cc21b06b660ee', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('aa3b1922117847f8905b6b13182696c7', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '6d7ea83bb71d476dbfbda2bcbc1a01bd', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('aaa5247869d54ee6873dd470badf6960', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '375b04fe927c44e88593d02670acd90f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('afcc73fc556e40a39af61a24014455ff', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '56', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('b07231d0a836470b9daa6e233f77dec9', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('b399763b839a481abfbf3b759710fc85', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'd2773b3568c6438c8f9cc21b06b660ee', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('b39bd9e4219244b498bc96f321f51e0d', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('b4fd332d932e4bcc86620d3c9d4e13e7', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('b59edec22f664787aa4186f2867908b9', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '58', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('b5f00cb818f24dd5a241009aa71c030e', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '58', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('bd9395bb258b401b95e712a698724d24', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c17441b541ef40d19faefcd6a30160a5', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c2571d38498e45fcb7fcd06f96174608', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c269301853054f6c871479090ce8f476', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c344b74a0c4c454082cc652af43464d3', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c420da58959146ec989933575b3c1d87', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '39925b8263664c9e923f9c34f9bc2a37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c70e0c9fe1cc487c8c8b1e7c3f2ab268', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('c8ba65c87dcd40e3adc27fd9270d85b2', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('ca46a5a235a44186911342e2f283ae1f', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '7', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('cb0ac5ca7a924f13b23460d6936295de', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('d13e961443fc4f56817ae155792e5ed6', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '59', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('d4b0c3ddb45d484a8a17d2a038b82161', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('da2c26d274634f0c8ab393ad852a8b09', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'c6469be83d8e4d5ca404b46b347f7d4c', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('dc7b8f3712b546d484e10bab3c0812c8', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('dfcceb9c306a432fb7e794603dfb9339', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('dff4e71adaef431d8f279cbeb57e0d87', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '13', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e19bf5b10e8f431b9c01e0213fa39b41', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'ef73cc9bf70d448caf72e3f45015700a', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e1b31c5828ce4d3485c9d35de0752dca', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e1bf257da1314d78b8ee2c92f87c13ec', '366af0a7fd79453fbe54c0d24917ec4b', 'role', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e286ac8845d74905a59f11a536cabed7', '-1', 'role', '33', 'button', '-1', null, null, '2018-05-24 09:24:13', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e43ac2d407d14891a5e55d815f144338', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e6f8da9991d543c699e108f06d7d805f', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('e72e2b709b4c4e5f8f65ee9dd21fd057', '258651cfd4ca41cbaa70d1b233659b5c', 'role', 'ef73cc9bf70d448caf72e3f45015700a', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('f052976fc82a4ae1b5e119fc58e9e1a5', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '38415afa372141828e803e13b6af8de6', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('f20a0ecdbd7c41888c8ec293a3a32034', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('f3b8b7d4fd224b92a182f5edac3b0522', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('f3bf9ea034e444c08b7ca2c3a86d0c7e', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '59', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('f7f7d1e5ffb84c38909e99a6940ca03e', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '18', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('f96a9425b188416e9b7165c07ed5579e', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('faebfb6f224743f89db2c6e4b42ef568', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '58', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('fb0811cdcb2743a0abaccab0033e680b', '258651cfd4ca41cbaa70d1b233659b5c', 'role', '375b04fe927c44e88593d02670acd90f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `kf_sec_resource_authority` (`resource_authority_id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `type`) VALUES ('fd8bbed009104e48a1b0e28e081e86ab', 'ae4cc3b8e86e4ca488583134de338ee5', 'role', '-1', 'menu', '-1', null, null, '2018-04-11 14:36:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0');

-- ----------------------------
-- Table structure for kf_sec_role
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_role`;
CREATE TABLE `kf_sec_role` (
`role_id`  varchar(64) NOT NULL COMMENT '机构ID   对应id' ,
`parent_id`  varchar(64) NULL DEFAULT NULL COMMENT '上级节点' ,
`name`  varchar(60) NULL DEFAULT NULL COMMENT '名称' ,
`type`  char(1) NULL DEFAULT NULL COMMENT '机关：“0”、部门：”1“ 默认：空' ,
`enabled`  char(1) NULL DEFAULT NULL COMMENT '可用状态 有效：1（默认）；无效：0   新增' ,
`description`  varchar(600) NULL DEFAULT NULL COMMENT '备注' ,
`his_id`  varchar(64) NULL DEFAULT NULL COMMENT '历史ID 新增' ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '角色编码' ,
`path`  varchar(2000) NULL DEFAULT NULL COMMENT '路径' ,
`role_type`  varchar(64) NULL DEFAULT NULL COMMENT '角色类型  对应group_type' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
PRIMARY KEY (`role_id`)
)
COMMENT='关系角色表 对应base_group'

;

-- ----------------------------
-- Records of kf_sec_role
-- ----------------------------
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('00a75ee45780420a9279132ee05e8dcb', '-1', '大大大', null, null, null, null, null, '/null', 'role', '2018-05-07 09:33:14', '1', 'Mr.AG', '2018-05-07 09:33:14', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('258651cfd4ca41cbaa70d1b233659b5c', '-1', '普通租户管理员', null, null, '普通租户管理员', null, 'commonAdmin', '/commonAdmin', 'role', '2018-02-12 23:20:54', '1', 'Mr.AG', '2018-02-12 23:20:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('366af0a7fd79453fbe54c0d24917ec4b', '-1', '董事长', null, null, null, null, 'dongshiz', '/dongshiz', 'org', '2018-02-13 00:04:27', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-13 00:04:27', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('8391da5dbd30498680818c66c906e2b2', '-1', '222-1', null, null, null, null, null, '/null', 'free', '2018-05-22 11:29:25', '1', 'Mr.AG', '2018-05-22 11:29:53', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('ac35d9ec7b4a4b7bbe60d7d6c326b5bc', '258651cfd4ca41cbaa70', '测试', null, null, '测试', null, 'tester', '/commonAdmin/tester', 'role', '2018-04-11 14:22:04', '1', 'Mr.AG', '2018-04-11 14:22:04', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('ae4cc3b8e86e4ca488583134de338ee5', '-1', 'test_user', null, null, 'test_user', null, 'test_user', '/test_user', 'org', '2018-04-11 14:25:25', '1', 'Mr.AG', '2018-04-11 14:25:25', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('ecf485292f3245089055e6561cf45acf', '-1', '11111', null, null, '111111', null, '11111', '/11111', 'free', '2018-04-11 14:34:30', '1', 'Mr.AG', '2018-04-11 14:34:30', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role` (`role_id`, `parent_id`, `name`, `type`, `enabled`, `description`, `his_id`, `code`, `path`, `role_type`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('f2b6368902394a168f1188080f17e4dc', '00a75ee45780420a9279', 'test', null, null, null, null, 'test', '/null/test', 'role', '2018-06-07 19:17:42', '1', 'Mr.AG', '2018-06-07 19:17:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');

-- ----------------------------
-- Table structure for kf_sec_role_leader
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_role_leader`;
CREATE TABLE `kf_sec_role_leader` (
`sec_role_leader_id`  varchar(64) NOT NULL COMMENT '主键  对应id' ,
`user_id`  varchar(64) NOT NULL COMMENT '用户ID' ,
`role_id`  varchar(64) NOT NULL COMMENT '机构ID   对应id' ,
`description`  varchar(255) NULL DEFAULT NULL ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`crt_host`  varchar(255) NULL DEFAULT NULL ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`upd_host`  varchar(255) NULL DEFAULT NULL ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
PRIMARY KEY (`sec_role_leader_id`)
)
COMMENT='组织机构用户关联表  对应base_group_leader'

;

-- ----------------------------
-- Records of kf_sec_role_leader
-- ----------------------------
INSERT INTO `kf_sec_role_leader` (`sec_role_leader_id`, `user_id`, `role_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('a92d887fa6814c0e865e3a7071bbdeab', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '258651cfd4ca41cbaa70d1b233659b5c', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');

-- ----------------------------
-- Table structure for kf_sec_role_type
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_role_type`;
CREATE TABLE `kf_sec_role_type` (
`role_type_id`  varchar(64) NOT NULL COMMENT '角色类型ID  对应id' ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '编码' ,
`name`  varchar(255) NULL DEFAULT NULL COMMENT '类型名称' ,
`description`  varchar(255) NULL DEFAULT NULL COMMENT '描述' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建人ID' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建人' ,
`crt_host`  varchar(255) NULL DEFAULT NULL COMMENT '创建主机' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '最后更新时间' ,
`upd_user`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新人ID' ,
`upd_name`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新人' ,
`upd_host`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新主机' ,
`attr1`  varchar(255) NULL DEFAULT NULL ,
`attr2`  varchar(255) NULL DEFAULT NULL ,
`attr3`  varchar(255) NULL DEFAULT NULL ,
`attr4`  varchar(255) NULL DEFAULT NULL ,
`attr5`  varchar(255) NULL DEFAULT NULL ,
`attr6`  varchar(255) NULL DEFAULT NULL ,
`attr7`  varchar(255) NULL DEFAULT NULL ,
`attr8`  varchar(255) NULL DEFAULT NULL ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户Id' ,
PRIMARY KEY (`role_type_id`)
)
COMMENT='角色类型表  对应base_group_type'

;

-- ----------------------------
-- Records of kf_sec_role_type
-- ----------------------------
INSERT INTO `kf_sec_role_type` (`role_type_id`, `code`, `name`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('2e3a340ba2ac4e1689f0387c3fd8f2b2', 'com', '自定义', '11111', '2018-04-11 14:18:41', '1', 'Mr.AG', null, '2018-04-11 14:18:41', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
INSERT INTO `kf_sec_role_type` (`role_type_id`, `code`, `name`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('free', 'free', '自定义类型', 'sad', null, null, null, null, '2018-01-22 12:59:12', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_role_type` (`role_type_id`, `code`, `name`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('org', 'org', '岗位组（不可删）', null, null, null, null, null, '2017-08-25 17:52:43', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null);
INSERT INTO `kf_sec_role_type` (`role_type_id`, `code`, `name`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`) VALUES ('role', 'role', '角色组（不可删）', 'role', null, null, null, null, '2017-08-25 17:52:37', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for kf_sec_role_user
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_role_user`;
CREATE TABLE `kf_sec_role_user` (
`sec_role_user_id`  varchar(64) NOT NULL COMMENT '主键  对应id' ,
`user_id`  varchar(64) NOT NULL COMMENT '用户ID' ,
`role_id`  varchar(64) NOT NULL COMMENT '机构ID   对应group_id' ,
`description`  varchar(255) NULL DEFAULT NULL ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`crt_host`  varchar(255) NULL DEFAULT NULL ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`upd_host`  varchar(255) NULL DEFAULT NULL ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
PRIMARY KEY (`sec_role_user_id`)
)
COMMENT='组织机构用户关联表  对应base_group_member'

;

-- ----------------------------
-- Records of kf_sec_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for kf_sec_tenant
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_tenant`;
CREATE TABLE `kf_sec_tenant` (
`id`  varchar(64) NOT NULL COMMENT '租户ID' ,
`code`  varchar(255) NULL DEFAULT NULL COMMENT '编码' ,
`name`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新时间' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建人' ,
`crt_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '创建人ID' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '最后更新人' ,
`upd_user_id`  varchar(64) NULL DEFAULT NULL COMMENT '最后更新人ID' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '最后更新时间' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`description`  varchar(500) NULL DEFAULT NULL COMMENT '描述' ,
`is_super_tenant`  varchar(1) NULL DEFAULT NULL COMMENT '是否超级租户' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '归属租户ID' ,
`owner`  varchar(64) NULL DEFAULT NULL COMMENT '拥有者' ,
PRIMARY KEY (`id`)
)
COMMENT='租户   对应 base_tenant'

;

-- ----------------------------
-- Records of kf_sec_tenant
-- ----------------------------
INSERT INTO `kf_sec_tenant` (`id`, `code`, `name`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `description`, `is_super_tenant`, `tenant_id`, `owner`) VALUES ('1ec08564dcc344018d6aaa910068f0f0', 'testTenant', '测试租户', 'Mr.AG', '1', '2018-02-12 15:30:54', 'Mr.AG', '1', '2018-02-15 09:58:39', null, null, null, null, '测试租户', '0', 'ac88ceb386aa4231b09bf472cb937c24', 'a1a2cb17b4f24e50bbde2f1b8a233bcb');
INSERT INTO `kf_sec_tenant` (`id`, `code`, `name`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `attr1`, `attr2`, `attr3`, `attr4`, `description`, `is_super_tenant`, `tenant_id`, `owner`) VALUES ('ac88ceb386aa4231b09bf472cb937c24', 'superTenant', '超级租户', 'Mr.AG', '1', '2018-02-09 16:31:20', 'Mr.AG', '1', '2018-02-15 10:57:13', null, null, null, null, '超级租户', '1', 'ac88ceb386aa4231b09bf472cb937c24', '1');

-- ----------------------------
-- Table structure for kf_sec_user
-- ----------------------------
DROP TABLE IF EXISTS `kf_sec_user`;
CREATE TABLE `kf_sec_user` (
`user_id`  varchar(64) NOT NULL COMMENT '用户ID 对应id' ,
`group_id`  varchar(64) NULL DEFAULT NULL COMMENT '机构ID   新增' ,
`extsys_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '外部系统用户ID  例如：地税系统、国税系统等   新增' ,
`user_name`  varchar(255) NULL DEFAULT NULL COMMENT '帐号   对应username' ,
`user_chname`  varchar(500) NULL DEFAULT NULL COMMENT '用户名称  对应name' ,
`pwd`  varchar(128) NULL DEFAULT NULL COMMENT '密码  对应passsword' ,
`mobile`  varchar(50) NULL DEFAULT NULL COMMENT '手机号码   对应mobile_phone' ,
`phone`  varchar(50) NULL DEFAULT NULL COMMENT '固定电话  对应tel_phone' ,
`email`  varchar(255) NULL DEFAULT NULL COMMENT '电子邮箱' ,
`description`  varchar(600) NULL DEFAULT NULL COMMENT '描述' ,
`enabled`  char(1) NULL DEFAULT NULL COMMENT '可用状态 有效：1（默认）；无效：0    对应status' ,
`his_id`  varchar(64) NULL DEFAULT NULL COMMENT '历史ID  新增' ,
`birthday`  varchar(255) NULL DEFAULT NULL COMMENT '生日' ,
`address`  varchar(255) NULL DEFAULT NULL COMMENT '地址' ,
`sex`  varchar(16) NULL DEFAULT NULL COMMENT '性别' ,
`type`  char(1) NULL DEFAULT NULL COMMENT '类型' ,
`status`  varchar(255) NULL DEFAULT NULL COMMENT '状态 新增' ,
`crt_time`  datetime NULL DEFAULT NULL COMMENT '创建时间' ,
`crt_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户ID' ,
`crt_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '创建用户名' ,
`upd_time`  datetime NULL DEFAULT NULL COMMENT '更新时间' ,
`upd_user_id`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户ID' ,
`upd_user_name`  varchar(255) NULL DEFAULT NULL COMMENT '更新用户名称' ,
`attr1`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性1' ,
`attr2`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性2' ,
`attr3`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性3' ,
`attr4`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性4' ,
`attr5`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性5' ,
`attr6`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性6' ,
`attr7`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性7' ,
`attr8`  varchar(255) NULL DEFAULT NULL COMMENT '扩展属性8' ,
`tenant_id`  varchar(50) NULL DEFAULT NULL COMMENT '租户ID，用于支持多个系统管理体系' ,
`is_deleted`  char(1) NULL DEFAULT NULL COMMENT '是否删除' ,
`is_disabled`  char(1) NULL DEFAULT NULL COMMENT '是否有效' ,
`is_super_admin`  varchar(1) NULL DEFAULT NULL COMMENT '是否超级管理员' ,
PRIMARY KEY (`user_id`)
)
COMMENT='用户  对应base_user'

;

-- ----------------------------
-- Records of kf_sec_user
-- ----------------------------
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('021a7adf56f74268a24099806c2d6667', 'root', null, '23564646', '11234', '$2a$15$uuwPlVNqsWA801YdgK7Os.Xg3BphqWN77FwW/hSlNwlOd6Uef1IRS', null, null, null, null, null, null, null, null, '男', null, null, '2018-03-19 16:35:02', '1', 'Mr.AG', '2018-03-19 16:35:02', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('1', 'root', null, 'admin', 'Mr.AG', '$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie', '', null, '', '', null, null, '', null, '男', null, null, null, null, null, '2018-02-15 13:46:33', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '1');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('1cb1a9ab57dc40ecabce03f105ddefc2', 'root', null, 'dsfsadfa', 'dsfdsa', '$2a$15$kaBvfQX1gY0UqldTZFliDOMaQzfn5zb..mEhmnScNwnppUdUWqq4W', null, null, null, null, null, null, null, null, 'man', null, null, '2018-06-06 19:45:47', '1', 'Mr.AG', '2018-06-06 19:45:47', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('2034d3aa7d614117854f89f5bf9cf8a2', 'root', null, 'rrrrr', 'rrrrr', '$2a$15$Chkw7RO3/eBG6fb6NR2nGefAD..2FqYRWgp.0xniK0Z3eWeKpMB1G', null, null, null, null, null, null, null, null, '男', null, null, '2018-06-06 19:47:08', '1', 'Mr.AG', '2018-06-06 19:47:08', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('4b2a3cbc6ba944198cc414081f85b45c', 'root', null, 'tester003', 'tester003', '$2a$15$TYLNRKbC/wChEyVehlmiQe6wisXWWXtQVdkxaI5tKET0wYU1sYLTe', null, null, null, 'tester003', null, null, null, null, '男', null, null, '2018-03-09 14:00:10', '1', 'Mr.AG', '2018-03-09 14:01:06', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('4c612b00c4d0472e971c9c1447d47838', 'root', null, 'tester002', 'tester002', '$2a$15$iz826xszuAjyq/DotGTt8.2PkiM2X2.zX5tCADAKDDF.slGw1bdW.', null, null, null, 'tester002', null, null, null, null, '男', null, null, '2018-03-09 11:39:46', '1', 'Mr.AG', '2018-03-09 11:40:46', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('54e7842a9b314c67a71ab40aa6bcc0d3', 'root', null, 'wwwww', 'wwwww', '$2a$15$9bARl31pgGPEJURKFsfgXuzxq3E1ypHoArazU53uRPG6mlHHadUfy', null, null, null, null, null, null, null, null, '男', null, null, '2018-06-06 19:46:48', '1', 'Mr.AG', '2018-06-15 11:54:26', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('59c28b8593c2472e99e54e3ed9b6efe8', 'd8bb2fc8d51745458f77a78c42bf60ab', null, 'wxiaoqi', '王小七', '$2a$15$1WefWbAodMNhdx8.iz3eVOLn4iKPVqytY18aqGgHGZQ9NWtuk19Di', null, null, null, null, null, null, null, null, '男', null, null, '2018-02-12 23:41:35', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-12 23:54:07', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('72fdf64d0b784a1fa4f1487675c80186', 'root', null, '12332', '12323', '$2a$15$g1mAOSrtnV2JAJUTnJ7zieF3z5AMsWbT0rA1BeaeS0BVZPL8csQ7C', null, null, null, null, null, null, null, null, '男', null, null, '2018-03-08 16:00:46', '1', 'Mr.AG', '2018-03-08 16:05:04', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('866ce04a4f84453caf483d37d6efdaef', 'root', null, '4321', '4321', '$2a$15$pLJoUqqyqW.ayHbYXSRqM.gEndUzK.snP3hoGnvD4jPIo.KqMwr6C', null, null, null, '123', null, null, null, null, 'man', null, null, '2018-03-08 16:49:05', '1', 'Mr.AG', '2018-03-08 16:49:05', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('9800d3f943e14eca8eae9e945ae7af7a', 'root', null, 'tttttt', 'tttttt', '$2a$15$I4WHCyHC3QpcUSliFRV.Z.wzasfCJGav60V5yoCeZL3K2kAzlyvSa', null, null, null, null, null, null, null, null, '男', null, null, '2018-06-06 19:47:26', '1', 'Mr.AG', '2018-06-06 19:47:26', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('a1a2cb17b4f24e50bbde2f1b8a233bcb', 'd8bb2fc8d51745458f77a78c42bf60ab', null, 'tenant', '测试租户', '$2a$15$PBhj/OtlRxC2YNGcfyyO2.a0sCWrbT2xtsikW6M4yDOg8UuUnYhUu', null, null, null, null, null, null, null, null, '男', null, null, '2018-02-12 20:27:14', '1', 'Mr.AG', '2018-02-12 23:54:12', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('b3f76347396843d8a22c3ee3a2c9e761', 'root', null, 'tester001', 'tester001', '$2a$15$trMXdlehDcUumPA8PGc5dOyDjsfrZtoRBM0JPtyy9ebYZWtHRTmou', null, null, null, 'tester001', null, null, null, null, '男', null, null, '2018-03-09 11:28:31', '1', 'Mr.AG', '2018-03-09 11:29:19', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('c14cc430429445b4a4ef4031aa16ffc1', 'root', null, '123456', '得得地', '$2a$15$8B7d/3/kBF3gICOlQKZqeuL0nLMxDxYjJ3XVyQFQt1ImrtpE7EtXy', null, null, null, null, null, null, null, null, '男', null, null, '2018-03-19 16:32:04', '1', 'Mr.AG', '2018-03-19 16:32:04', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('dc5bf862e3af47e59c82eb784abd238e', 'root', null, '测试部', '测试部', '$2a$15$jYKqCncBja1BbrAuoM/VAOfhnRzLawjH/Th5EpTEbG7iT4BfNXGWO', null, null, null, '测试部', null, null, null, null, 'man', null, null, '2018-04-11 14:52:30', '1', 'Mr.AG', '2018-04-11 14:53:11', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('f7a79bbb8ca143ce95e1adf9b551b29d', 'root', null, 'qqqqq', 'qqqqq', '$2a$15$S2dfQdPBrF.Kih/e4R/v4erYrGFIFblE8XXgBYZm7cw.xw7Oe1O7C', null, null, null, null, null, null, null, null, '男', null, null, '2018-06-06 19:46:23', '1', 'Mr.AG', '2018-06-06 19:47:47', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('f8c72e834bf64e2f8096131997da0099', 'root', null, 'dengb', 'dengb', '$2a$15$0UI1xzOXGORL874u4L48MODkP6cTSicap8P.zZ.XXj022CHR9EYnO', null, null, null, null, null, null, null, null, '男', null, null, '2018-03-21 11:01:30', '1', 'Mr.AG', '2018-04-11 14:53:16', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '1', '0', '0');
INSERT INTO `kf_sec_user` (`user_id`, `group_id`, `extsys_user_id`, `user_name`, `user_chname`, `pwd`, `mobile`, `phone`, `email`, `description`, `enabled`, `his_id`, `birthday`, `address`, `sex`, `type`, `status`, `crt_time`, `crt_user_id`, `crt_user_name`, `upd_time`, `upd_user_id`, `upd_user_name`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`, `tenant_id`, `is_deleted`, `is_disabled`, `is_super_admin`) VALUES ('fee3b574768c435ca79d0dbcc4efa919', 'root', null, '43210', '43210vnv', '$2a$15$HVJmz8dF/d5anT1mEFNa/uC9weRs./5PDvdEJqRooD29pqZDrtl8O', null, null, null, '123jhjhkhljljk', null, null, null, null, '男', null, null, '2018-03-08 16:53:20', '1', 'Mr.AG', '2018-03-19 10:42:52', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', '0');

-- ----------------------------
-- Auto increment value for kf_sec_auth_client_service
-- ----------------------------
ALTER TABLE `kf_sec_auth_client_service` AUTO_INCREMENT=66;

-- ----------------------------
-- Auto increment value for kf_sec_gate_log
-- ----------------------------
ALTER TABLE `kf_sec_gate_log` AUTO_INCREMENT=17;
