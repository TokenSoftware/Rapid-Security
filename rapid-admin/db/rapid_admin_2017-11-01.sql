# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.26)
# Database: rapid_admin
# Generation Time: 2017-11-01 06:43:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table base_element
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_element`;

CREATE TABLE `base_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '资源编码',
  `type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `uri` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL COMMENT '资源关联菜单',
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL COMMENT '资源请求类型',
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_element` WRITE;
/*!40000 ALTER TABLE `base_element` DISABLE KEYS */;

INSERT INTO `base_element` (`id`, `code`, `type`, `name`, `uri`, `menu_id`, `parent_id`, `path`, `method`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(3,'userManager:btn_add','button','新增','/admin/user','1',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'userManager:btn_edit','button','编辑','/admin/user','1',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'userManager:btn_del','button','删除','/admin/user','1',NULL,NULL,'DELETE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'menuManager:element','uri','按钮页面','/admin/element','6',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'menuManager:btn_add','button','新增','/admin/menu','6',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,'menuManager:btn_edit','button','编辑','/admin/menu','6','','','PUT','','2017-06-24 00:00:00','','','','','','','','','','',''),
	(12,'menuManager:btn_del','button','删除','/admin/menu','6','','','DELETE','','2017-06-24 00:00:00','','','','','','','','','','',''),
	(13,'menuManager:btn_element_add','button','新增元素','/admin/element','6',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'menuManager:btn_element_edit','button','编辑元素','/admin/element','6',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'menuManager:btn_element_del','button','删除元素','/admin/element','6',NULL,NULL,'DELETE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,'groupManager:btn_add','button','新增','/admin/group','7',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,'groupManager:btn_edit','button','编辑','/admin/group','7',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,'groupManager:btn_del','button','删除','/admin/group','7',NULL,NULL,'DELETE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,'groupManager:btn_userManager','button','分配用户','/admin/group/{*}/user','7',NULL,NULL,'PUT','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,'groupManager:btn_resourceManager','button','分配权限','/admin/group/{*}/authority','7',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'groupManager:menu','uri','分配菜单','/admin/group/{*}/authority/menu','7',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,'groupManager:element','uri','分配资源','/admin/group/{*}/authority/element','7',NULL,NULL,'POST','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,'userManager:view','uri','查看','/admin/user','1','','','GET','','2017-06-26 00:00:00','','','','','','','','','','',''),
	(24,'menuManager:view','uri','查看','/admin/menu','6','','','GET','','2017-06-26 00:00:00','','','','','','','','','','',''),
	(27,'menuManager:element_view','uri','查看','/admin/element','6',NULL,NULL,'GET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(28,'groupManager:view','uri','查看','/admin/group','7',NULL,NULL,'GET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,'adminAPI:view','uri','查看','/admin/swagger','23',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(31,'adminAPI:swagger','uri','查看','/admin/v2','23',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(32,'groupTypeManager:view','uri','查看','/admin/groupType','8',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(33,'groupTypeManager:btn_add','button','新增','/admin/groupType','8',NULL,NULL,'POST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(34,'groupTypeManager:btn_edit','button','编辑','/admin/groupType','8',NULL,NULL,'PUT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(35,'groupTypeManager:btn_del','button','删除','/admin/groupType','8',NULL,NULL,'DELETE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(40,'adminAPI:swagger_resources','uri','查看','/admin/swagger-resources','23',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(41,'gateLogManager:view','button','查看','/admin/gateLog','27',NULL,NULL,'GET','','2017-07-01 00:00:00','1','admin','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(42,'blogArticle:view','uri','查看','/blog/article','17',NULL,NULL,'GET','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(43,'blogArticle:edit','button','编辑','/blog/article','17',NULL,NULL,'PUT','','2017-07-15 23:52:01','1','管理员','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(44,'blogArticle:del','button','删除','/blog/article','17',NULL,NULL,'DELETE','','2017-07-15 23:52:38','1','管理员','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(45,'blogArticle:add','button','新增','/blog/article','17',NULL,NULL,'POST','','2017-07-15 23:53:06','1','管理员','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_element` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_group`;

CREATE TABLE `base_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `group_type` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_group` WRITE;
/*!40000 ALTER TABLE `base_group` DISABLE KEYS */;

INSERT INTO `base_group` (`id`, `code`, `name`, `parent_id`, `path`, `type`, `group_type`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(1,'adminRole','管理员',-1,'/adminRole',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'testGroup','体验组',-1,'/testGroup',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'visitorRole','游客',3,'/testGroup/visitorRole',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'company','token集团',-1,'/company',NULL,2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'financeDepart','财务部',6,'/company/financeDepart',NULL,2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'hrDepart','人力资源部',6,'/company/hrDepart',NULL,2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'blogAdmin','博客管理员',-1,'/blogAdmin',NULL,1,'','2017-07-16 16:59:30','1','Mr.AG','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_group_leader
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_group_leader`;

CREATE TABLE `base_group_leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_group_leader` WRITE;
/*!40000 ALTER TABLE `base_group_leader` DISABLE KEYS */;

INSERT INTO `base_group_leader` (`id`, `group_id`, `user_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(6,'9','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_group_leader` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_group_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_group_member`;

CREATE TABLE `base_group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_group_member` WRITE;
/*!40000 ALTER TABLE `base_group_member` DISABLE KEYS */;

INSERT INTO `base_group_member` (`id`, `group_id`, `user_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(2,'4','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'9','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'1','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_group_member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_group_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_group_type`;

CREATE TABLE `base_group_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '创建人ID',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建主机',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `upd_user` varchar(255) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '最后更新主机',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_group_type` WRITE;
/*!40000 ALTER TABLE `base_group_type` DISABLE KEYS */;

INSERT INTO `base_group_type` (`id`, `code`, `name`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(1,'role','角色类型','role',NULL,NULL,NULL,NULL,'2017-08-25 17:52:37','1','sun-abel','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'depart','部门类型',NULL,NULL,NULL,NULL,NULL,'2017-08-25 17:52:43','1','sun-abel','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,'free','自定义类型','sadf',NULL,NULL,NULL,NULL,'2017-08-26 08:22:25','1','sun-abel','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_group_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_menu`;

CREATE TABLE `base_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '路径编码',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `parent_id` int(11) NOT NULL COMMENT '父级节点',
  `href` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` char(1) DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `path` varchar(500) DEFAULT NULL COMMENT '菜单上下级关系',
  `enabled` char(1) DEFAULT NULL COMMENT '启用禁用',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_menu` WRITE;
/*!40000 ALTER TABLE `base_menu` DISABLE KEYS */;

INSERT INTO `base_menu` (`id`, `code`, `title`, `parent_id`, `href`, `icon`, `type`, `order_num`, `description`, `path`, `enabled`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(1,'userManager','用户管理',5,'/admin/user','fa fa-user',NULL,0,'','/adminSys/baseManager/userManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,'baseManager','基础配置管理',13,'','fa fa-cog fa-spin',NULL,0,'用户','/adminSys/baseManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'menuManager','菜单管理',5,'/admin/menu','fa fa-list',NULL,0,'','/adminSys/baseManager/menuManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,'groupManager','角色组管理',5,'/admin/group','fa fa-users',NULL,0,'','/adminSys/baseManager/groupManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,'groupTypeManager','角色类型管理',5,'/admin/groupType','fa fa-address-card-o',NULL,0,'','/adminSys/baseManager/groupTypeManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,'monitorManager','系统监控',13,'','fa fa-area-chart',NULL,0,'','/adminSys/monitorManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,'bootMonitor','Spring-Boot监控',9,'http://localhost:8764','fa fa-line-chart',NULL,0,'','/adminSys/monitorManager/bootMonitor',NULL,NULL,NULL,NULL,NULL,'2017-07-25 19:38:11','1','sun-abel','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,'hystrixMonitor','Hystrix监控',9,'http://localhost:8764/hystrix','fa fa-bar-chart',NULL,0,'','/adminSys/monitorManager/hystrixMonitor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,'adminSys','权限管理系统',-1,'','fa fa-terminal',NULL,0,'','/adminSys',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'contentSys','内容管理系统',-1,'','fa-newspaper-o',NULL,0,'','/contentSys',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,'articleManger','文章管理',20,'/admin/blog/article','fa fa-book',NULL,0,'','/contentSys/artComManger/articleManger',NULL,NULL,NULL,NULL,NULL,'2017-07-15 23:45:24','1','管理员','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,'commentManager','评论管理',20,'','',NULL,0,'','/contentSys/artComManger/commentManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,'artComManger','文章评论管理',14,'','fa fa-bookmark',NULL,0,'','/contentSys/artComManger',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,'dictManager','数据字典',5,'','fa fa-book',NULL,0,'','/adminSys/baseManager/dictManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,'apiManager','服务端api文档',13,'','fa fa-folder',NULL,0,'','/adminSys/apiManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,'adminAPI','Admin Rest API',22,'/back/swagger-ui.html','fa fa-file-code-o',NULL,0,'','/adminSys/apiManager/adminAPI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,'druidMonitor','Admin Druid数据监控',9,'/back/druid/datasource.html','fa fa-line-chart',NULL,0,'','/adminSys/monitorManager/druidMonitor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(27,'gateLogManager','操作日志',5,'/admin/gateLog','fa fa-book',NULL,0,'','/adminSys/baseManager/gateLogManager',NULL,'2017-07-01 00:00:00','1','admin','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_resource_authority
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_resource_authority`;

CREATE TABLE `base_resource_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority_id` varchar(255) DEFAULT NULL,
  `authority_type` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_resource_authority` WRITE;
/*!40000 ALTER TABLE `base_resource_authority` DISABLE KEYS */;

INSERT INTO `base_resource_authority` (`id`, `authority_id`, `authority_type`, `resource_id`, `resource_type`, `parent_id`, `path`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(287,'1','group','5','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(288,'1','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(289,'1','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(290,'1','group','11','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(291,'1','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(294,'1','group','5','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(295,'1','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(296,'1','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(297,'1','group','11','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(298,'1','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(299,'1','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(300,'1','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(301,'1','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(302,'1','group','11','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(303,'1','group','13','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(304,'1','group','14','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(305,'1','group','15','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(306,'1','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(307,'1','group','11','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(308,'1','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(309,'1','group','13','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(310,'1','group','14','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(311,'1','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(312,'1','group','15','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(313,'1','group','16','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(314,'1','group','17','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(315,'1','group','18','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(317,'1','group','20','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(318,'1','group','21','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(319,'1','group','22','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(349,'4','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(371,'1','group','23','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(372,'1','group','24','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(373,'1','group','27','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(374,'1','group','28','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(375,'1','group','23','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(378,'1','group','5','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(379,'1','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(380,'1','group','11','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(381,'1','group','14','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(382,'1','group','13','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(383,'1','group','15','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(384,'1','group','12','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(385,'1','group','24','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(386,'1','group','10','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(387,'1','group','27','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(388,'1','group','16','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(389,'1','group','18','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(390,'1','group','17','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(392,'1','group','20','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(393,'1','group','28','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(394,'1','group','22','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(395,'1','group','21','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(396,'4','group','23','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(397,'4','group','9','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(398,'4','group','27','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(399,'4','group','24','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(400,'4','group','28','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(401,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(402,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(403,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(421,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(422,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(423,'4','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(424,'4','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(436,'1','group','32','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(437,'1','group','33','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(438,'1','group','34','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(439,'1','group','35','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(440,'4','group','32','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(464,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(465,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(466,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(467,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(468,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(469,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(470,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(471,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(472,'1','group','40','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(492,'1','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(493,'1','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(494,'1','group','40','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(516,'4','group','41','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(517,'4','group','30','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(518,'4','group','31','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(519,'4','group','40','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(611,'4','group','42','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(612,'4','group','36','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(628,'4','group','13','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(629,'4','group','5','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(630,'4','group','1','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(631,'4','group','6','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(632,'4','group','7','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(633,'4','group','8','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(634,'4','group','27','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(635,'4','group','9','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(636,'4','group','24','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(637,'4','group','22','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(638,'4','group','23','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(639,'4','group','25','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(640,'4','group','26','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(641,'4','group','28','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(666,'1','group','41','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(689,'1','group','43','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(690,'1','group','42','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(691,'1','group','44','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(692,'1','group','45','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(710,'9','group','42','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(711,'9','group','43','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(712,'9','group','44','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(713,'9','group','45','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(714,'9','group','14','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(715,'9','group','20','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(716,'9','group','17','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(717,'9','group','18','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(718,'9','group','42','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(719,'9','group','44','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(720,'9','group','45','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(721,'9','group','43','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(722,'1','group','41','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(749,'10','group','13','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(750,'10','group','14','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(751,'10','group','-1','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(752,'10','group','5','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(753,'10','group','6','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(754,'10','group','17','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(755,'10','group','20','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(774,'1','group','3','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(775,'1','group','4','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(812,'1','group','19','button','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(831,'1','group','11','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(832,'1','group','22','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(833,'1','group','23','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(834,'1','group','13','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(835,'1','group','24','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(836,'1','group','14','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(837,'1','group','-1','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(838,'1','group','27','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(839,'1','group','17','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(840,'1','group','18','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(841,'1','group','1','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(842,'1','group','5','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(843,'1','group','6','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(844,'1','group','7','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(845,'1','group','8','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(846,'1','group','9','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(847,'1','group','20','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(848,'1','group','10','menu','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_resource_authority` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table base_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `base_user`;

CREATE TABLE `base_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `base_user` WRITE;
/*!40000 ALTER TABLE `base_user` DISABLE KEYS */;

INSERT INTO `base_user` (`id`, `username`, `password`, `name`, `birthday`, `address`, `mobile_phone`, `tel_phone`, `email`, `sex`, `type`, `status`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(1,'admin','$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie','sun','',NULL,'',NULL,'','男',NULL,NULL,'微服务架构师',NULL,NULL,NULL,NULL,'2017-07-25 14:54:21','1','sun-abel','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'test','$2a$12$zWe6knO6rGp15UVfdWTTxu.Ykt.k3QnD5FPoj6a1cnL63csHY2A1S','测试账户','',NULL,'',NULL,'','男',NULL,NULL,'',NULL,NULL,NULL,NULL,'2017-07-15 19:18:07','1','管理员','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'blog','$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie','sun-abel','',NULL,'',NULL,'','男',NULL,NULL,'',NULL,NULL,NULL,NULL,'2017-08-28 08:50:04','1','sun-abel','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `base_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gate_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gate_log`;

CREATE TABLE `gate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `menu` varchar(255) DEFAULT NULL COMMENT '菜单',
  `opt` varchar(255) DEFAULT NULL COMMENT '操作',
  `uri` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `crt_time` datetime DEFAULT NULL COMMENT '操作时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '操作人ID',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '操作人',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '操作主机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `gate_log` WRITE;
/*!40000 ALTER TABLE `gate_log` DISABLE KEYS */;

INSERT INTO `gate_log` (`id`, `menu`, `opt`, `uri`, `crt_time`, `crt_user`, `crt_name`, `crt_host`)
VALUES
	(11,'用户管理','编辑','/back/user','2017-07-01 21:13:09','1','admin','0:0:0:0:0:0:0:1'),
	(12,'客户端管理','新增','/back/gateClient','2017-07-02 16:54:22','1','管理员','0:0:0:0:0:0:0:1'),
	(13,'客户端管理','新增','/back/gateClient','2017-07-02 22:31:47','1','管理员','0:0:0:0:0:0:0:1'),
	(14,'客户端管理','新增','/back/gateClient','2017-07-02 22:32:08','1','管理员','0:0:0:0:0:0:0:1'),
	(15,'客户端管理','编辑','/back/gateClient','2017-07-03 13:35:45','1','管理员','0:0:0:0:0:0:0:1'),
	(16,'客户端管理','编辑','/back/gateClient','2017-07-03 13:35:57','1','管理员','0:0:0:0:0:0:0:1'),
	(17,'客户端管理','编辑','/back/gateClient','2017-07-03 05:38:12','1','管理员','0:0:0:0:0:0:0:1'),
	(18,'客户端管理','编辑','/back/gateClient','2017-07-03 05:38:23','1','管理员','0:0:0:0:0:0:0:1'),
	(19,'客户端管理','编辑','/back/gateClient','2017-07-03 05:38:42','1','管理员','0:0:0:0:0:0:0:1'),
	(20,'客户端管理','编辑','/back/gateClient','2017-07-03 05:39:14','1','管理员','0:0:0:0:0:0:0:1'),
	(21,'菜单管理','新增','/back/menu','2017-07-03 12:43:01','1','管理员','0:0:0:0:0:0:0:1'),
	(22,'角色组管理','新增','/back/group','2017-07-03 12:43:29','1','管理员','0:0:0:0:0:0:0:1'),
	(23,'菜单管理','新增元素','/back/element','2017-07-03 13:39:43','1','管理员','0:0:0:0:0:0:0:1'),
	(24,'菜单管理','新增元素','/back/element','2017-07-03 13:43:17','1','管理员','0:0:0:0:0:0:0:1'),
	(25,'菜单管理','新增元素','/back/element','2017-07-03 13:49:11','1','管理员','0:0:0:0:0:0:0:1'),
	(26,'角色组管理','新增','/back/group','2017-07-03 13:52:00','1','管理员','0:0:0:0:0:0:0:1'),
	(27,'客户端管理','编辑','/back/gateClient','2017-07-03 14:08:58','1','管理员','0:0:0:0:0:0:0:1'),
	(28,'客户端管理','编辑','/back/gateClient','2017-07-03 14:56:28','1','管理员','0:0:0:0:0:0:0:1'),
	(29,'客户端管理','编辑','/back/gateClient','2017-07-03 14:56:30','1','管理员','0:0:0:0:0:0:0:1'),
	(30,'客户端管理','编辑','/back/gateClient','2017-07-04 00:14:47','1','管理员','0:0:0:0:0:0:0:1'),
	(31,'客户端管理','编辑','/back/gateClient','2017-07-04 00:14:49','1','管理员','0:0:0:0:0:0:0:1'),
	(32,'客户端管理','编辑','/back/gateClient','2017-07-04 00:17:50','1','管理员','0:0:0:0:0:0:0:1'),
	(33,'客户端管理','编辑','/back/gateClient','2017-07-04 00:17:51','1','管理员','0:0:0:0:0:0:0:1'),
	(34,'客户端管理','编辑','/back/gateClient','2017-07-04 00:35:58','1','管理员','0:0:0:0:0:0:0:1'),
	(35,'客户端管理','编辑','/back/gateClient','2017-07-04 00:36:16','1','管理员','0:0:0:0:0:0:0:1'),
	(36,'客户端管理','编辑','/back/gateClient','2017-07-04 00:43:08','1','管理员','0:0:0:0:0:0:0:1'),
	(37,'客户端管理','编辑','/back/gateClient','2017-07-04 00:47:31','1','管理员','0:0:0:0:0:0:0:1'),
	(38,'客户端管理','编辑','/back/gateClient','2017-07-04 00:47:34','1','管理员','0:0:0:0:0:0:0:1'),
	(39,'客户端管理','编辑','/back/gateClient','2017-07-04 00:47:44','1','管理员','0:0:0:0:0:0:0:1'),
	(40,'客户端管理','编辑','/back/gateClient','2017-07-04 00:48:24','1','管理员','0:0:0:0:0:0:0:1'),
	(41,'客户端管理','编辑','/back/gateClient','2017-07-04 00:49:00','1','管理员','0:0:0:0:0:0:0:1'),
	(42,'客户端管理','编辑','/back/gateClient','2017-07-04 00:52:04','1','管理员','0:0:0:0:0:0:0:1'),
	(43,'客户端管理','编辑','/back/gateClient','2017-07-04 00:52:58','1','管理员','0:0:0:0:0:0:0:1'),
	(44,'客户端管理','编辑','/back/gateClient','2017-07-04 05:16:24','1','管理员','0:0:0:0:0:0:0:1'),
	(45,'客户端管理','编辑','/back/gateClient','2017-07-04 05:16:40','1','管理员','0:0:0:0:0:0:0:1'),
	(46,'客户端管理','编辑','/back/gateClient','2017-07-04 05:17:11','1','管理员','0:0:0:0:0:0:0:1'),
	(47,'客户端管理','编辑','/back/gateClient','2017-07-04 05:20:39','1','管理员','0:0:0:0:0:0:0:1'),
	(48,'客户端管理','编辑','/back/gateClient','2017-07-04 05:21:52','1','管理员','0:0:0:0:0:0:0:1'),
	(49,'客户端管理','编辑','/back/gateClient','2017-07-04 05:21:55','1','管理员','0:0:0:0:0:0:0:1'),
	(50,'客户端管理','编辑','/back/gateClient','2017-07-04 05:25:19','1','管理员','0:0:0:0:0:0:0:1'),
	(51,'客户端管理','编辑','/back/gateClient','2017-07-04 05:26:02','1','管理员','0:0:0:0:0:0:0:1'),
	(52,'客户端管理','编辑','/back/gateClient','2017-07-04 05:26:12','1','管理员','0:0:0:0:0:0:0:1'),
	(53,'客户端管理','编辑','/back/gateClient','2017-07-04 05:26:38','1','管理员','0:0:0:0:0:0:0:1'),
	(54,'客户端管理','编辑','/back/gateClient','2017-07-04 05:26:51','1','管理员','0:0:0:0:0:0:0:1'),
	(55,'客户端管理','编辑','/back/gateClient','2017-07-04 05:29:01','1','管理员','0:0:0:0:0:0:0:1'),
	(56,'客户端管理','编辑','/back/gateClient','2017-07-05 05:25:31','1','管理员','0:0:0:0:0:0:0:1'),
	(57,'客户端管理','编辑','/back/gateClient','2017-07-05 05:30:13','1','管理员','0:0:0:0:0:0:0:1'),
	(58,'菜单管理','编辑元素','/back/element','2017-07-05 05:33:39','1','管理员','0:0:0:0:0:0:0:1'),
	(59,'菜单管理','编辑元素','/back/element','2017-07-05 05:38:10','1','管理员','0:0:0:0:0:0:0:1'),
	(60,'客户端管理','编辑','/back/gateClient','2017-07-05 05:38:48','1','管理员','0:0:0:0:0:0:0:1'),
	(61,'菜单管理','新增元素','/back/element','2017-07-05 05:42:16','1','管理员','0:0:0:0:0:0:0:1'),
	(62,'菜单管理','删除元素','/back/element','2017-07-05 05:45:47','1','管理员','0:0:0:0:0:0:0:1'),
	(63,'菜单管理','新增元素','/back/element','2017-07-06 05:46:26','1','管理员','0:0:0:0:0:0:0:1'),
	(64,'客户端管理','编辑','/back/gateClient','2017-07-06 05:47:28','1','管理员','0:0:0:0:0:0:0:1'),
	(65,'客户端管理','编辑','/back/gateClient','2017-07-06 13:40:16','1','管理员','0:0:0:0:0:0:0:1'),
	(66,'客户端管理','编辑','/back/gateClient','2017-07-06 13:42:04','1','管理员','0:0:0:0:0:0:0:1'),
	(67,'客户端管理','编辑','/back/gateClient','2017-07-06 13:42:13','1','管理员','0:0:0:0:0:0:0:1'),
	(68,'客户端管理','编辑','/back/gateClient','2017-07-06 13:42:16','1','管理员','0:0:0:0:0:0:0:1'),
	(69,'客户端管理','编辑','/back/gateClient','2017-07-06 13:43:28','1','管理员','0:0:0:0:0:0:0:1'),
	(70,'客户端管理','编辑','/back/gateClient','2017-07-06 13:43:39','1','管理员','0:0:0:0:0:0:0:1'),
	(71,'客户端管理','删除','/back/gateClient','2017-07-06 13:44:25','1','管理员','0:0:0:0:0:0:0:1'),
	(72,'菜单管理','编辑元素','/back/element','2017-07-06 15:13:12','1','管理员','0:0:0:0:0:0:0:1'),
	(73,'菜单管理','编辑元素','/back/element','2017-07-06 15:13:33','1','管理员','0:0:0:0:0:0:0:1'),
	(74,'菜单管理','编辑元素','/back/element','2017-07-06 15:13:40','1','管理员','0:0:0:0:0:0:0:1'),
	(75,'客户端管理','编辑','/back/gateClient','2017-07-06 15:14:11','1','管理员','0:0:0:0:0:0:0:1'),
	(76,'角色组管理','新增','/back/group','2017-07-07 01:43:24','1','管理员','0:0:0:0:0:0:0:1'),
	(77,'角色组管理','新增','/back/group','2017-07-07 01:43:24','1','管理员','0:0:0:0:0:0:0:1'),
	(78,'角色组管理','新增','/back/group','2017-07-07 01:43:26','1','管理员','0:0:0:0:0:0:0:1'),
	(79,'角色组管理','新增','/back/group','2017-07-07 01:43:26','1','管理员','0:0:0:0:0:0:0:1'),
	(80,'角色组管理','新增','/back/group','2017-07-07 01:43:28','1','管理员','0:0:0:0:0:0:0:1'),
	(81,'角色组管理','新增','/back/group','2017-07-07 01:43:28','1','管理员','0:0:0:0:0:0:0:1'),
	(82,'客户端管理','编辑','/gate/client','2017-07-07 02:37:27','1','管理员','0:0:0:0:0:0:0:1'),
	(83,'客户端管理','编辑','/gate/client','2017-07-07 02:40:04','1','管理员','0:0:0:0:0:0:0:1'),
	(84,'客户端管理','新增','/gate/client','2017-07-07 02:40:11','1','管理员','0:0:0:0:0:0:0:1'),
	(85,'客户端管理','编辑','/gate/client','2017-07-07 02:40:16','1','管理员','0:0:0:0:0:0:0:1'),
	(86,'客户端管理','编辑','/gate/client','2017-07-07 02:40:18','1','管理员','0:0:0:0:0:0:0:1'),
	(87,'客户端管理','编辑','/gate/client','2017-07-07 02:40:19','1','管理员','0:0:0:0:0:0:0:1'),
	(88,'客户端管理','编辑','/gate/client','2017-07-07 02:40:34','1','管理员','0:0:0:0:0:0:0:1'),
	(89,'客户端管理','编辑','/gate/client','2017-07-07 02:42:18','1','管理员','0:0:0:0:0:0:0:1'),
	(90,'客户端管理','编辑','/gate/client','2017-07-07 03:26:47','1','管理员','0:0:0:0:0:0:0:1'),
	(91,'客户端管理','编辑','/gate/client','2017-07-07 03:32:18','1','管理员','0:0:0:0:0:0:0:1'),
	(92,'客户端管理','编辑','/gate/client','2017-07-07 03:32:23','1','管理员','0:0:0:0:0:0:0:1'),
	(93,'菜单管理','新增元素','/back/element','2017-07-07 04:04:36','1','管理员','0:0:0:0:0:0:0:1'),
	(94,'菜单管理','新增元素','/back/element','2017-07-07 04:06:20','1','管理员','0:0:0:0:0:0:0:1'),
	(95,'菜单管理','新增元素','/back/element','2017-07-07 04:06:45','1','管理员','0:0:0:0:0:0:0:1'),
	(96,'菜单管理','新增元素','/back/element','2017-07-07 04:07:07','1','管理员','0:0:0:0:0:0:0:1'),
	(97,'角色组管理','新增','/back/group','2017-07-07 04:08:19','1','管理员','0:0:0:0:0:0:0:1'),
	(98,'角色组管理','新增','/back/group','2017-07-07 04:08:19','1','管理员','0:0:0:0:0:0:0:1'),
	(99,'角色组管理','新增','/back/group','2017-07-07 04:08:21','1','管理员','0:0:0:0:0:0:0:1'),
	(100,'服务注册','编辑','/gate/service','2017-07-07 04:09:12','1','管理员','0:0:0:0:0:0:0:1'),
	(101,'服务注册','编辑','/gate/service','2017-07-07 04:09:13','1','管理员','0:0:0:0:0:0:0:1'),
	(102,'服务注册','编辑','/gate/service','2017-07-07 04:12:39','1','管理员','0:0:0:0:0:0:0:1'),
	(103,'角色组管理','新增','/back/group','2017-07-07 04:13:04','1','管理员','0:0:0:0:0:0:0:1'),
	(104,'角色组管理','新增','/back/group','2017-07-07 04:13:04','1','管理员','0:0:0:0:0:0:0:1'),
	(105,'客户端管理','编辑','/gate/client','2017-07-07 05:48:42','1','管理员','0:0:0:0:0:0:0:1'),
	(106,'客户端管理','编辑','/gate/client','2017-07-07 05:50:12','1','管理员','0:0:0:0:0:0:0:1'),
	(107,'客户端管理','编辑','/gate/client','2017-07-07 05:51:27','1','管理员','0:0:0:0:0:0:0:1'),
	(108,'客户端管理','编辑','/gate/client','2017-07-07 09:29:55','1','管理员','0:0:0:0:0:0:0:1'),
	(109,'客户端管理','编辑','/gate/client','2017-07-07 09:30:01','1','管理员','0:0:0:0:0:0:0:1'),
	(110,'服务注册','删除','/gate/service','2017-07-07 09:30:09','1','管理员','0:0:0:0:0:0:0:1'),
	(111,'服务注册','删除','/gate/service','2017-07-07 09:30:15','1','管理员','0:0:0:0:0:0:0:1'),
	(112,'服务注册','删除','/gate/service','2017-07-07 09:30:20','1','管理员','0:0:0:0:0:0:0:1'),
	(113,'服务注册','删除','/gate/service','2017-07-07 09:30:27','1','管理员','0:0:0:0:0:0:0:1'),
	(114,'客户端管理','编辑','/gate/client','2017-07-07 20:59:07','1','管理员','0:0:0:0:0:0:0:1'),
	(115,'客户端管理','编辑','/gate/client','2017-07-07 20:59:10','1','管理员','0:0:0:0:0:0:0:1'),
	(116,'客户端管理','编辑','/gate/client','2017-07-07 20:59:13','1','管理员','0:0:0:0:0:0:0:1'),
	(117,'角色组管理','新增','/back/group','2017-07-07 21:11:40','1','管理员','0:0:0:0:0:0:0:1'),
	(118,'角色组管理','新增','/back/group','2017-07-07 21:11:46','1','管理员','0:0:0:0:0:0:0:1'),
	(119,'角色组管理','新增','/back/group','2017-07-07 21:11:48','1','管理员','0:0:0:0:0:0:0:1'),
	(120,'角色组管理','新增','/back/group','2017-07-07 21:13:39','1','管理员','0:0:0:0:0:0:0:1'),
	(121,'客户端管理','编辑','/gate/client','2017-07-07 21:51:24','1','管理员','0:0:0:0:0:0:0:1'),
	(122,'客户端管理','编辑','/gate/client','2017-07-07 21:51:31','1','管理员','0:0:0:0:0:0:0:1'),
	(123,'服务注册','编辑','/gate/service','2017-07-07 22:22:18','1','管理员','0:0:0:0:0:0:0:1'),
	(124,'服务注册','删除','/gate/service','2017-07-07 22:22:28','1','管理员','0:0:0:0:0:0:0:1'),
	(125,'服务注册','删除','/gate/service','2017-07-07 22:22:34','1','管理员','0:0:0:0:0:0:0:1'),
	(126,'服务注册','删除','/gate/service','2017-07-07 22:22:39','1','管理员','0:0:0:0:0:0:0:1'),
	(127,'客户端管理','编辑','/gate/client','2017-07-07 22:22:49','1','管理员','0:0:0:0:0:0:0:1'),
	(128,'用户管理','新增','/back/user','2017-07-15 18:32:12','1','管理员','0:0:0:0:0:0:0:1'),
	(129,'角色组管理','编辑','/back/group','2017-07-15 18:32:27','1','管理员','0:0:0:0:0:0:0:1'),
	(131,'角色组管理','新增','/back/group','2017-07-15 18:36:16','1','管理员','0:0:0:0:0:0:0:1'),
	(132,'角色组管理','新增','/back/group','2017-07-15 18:36:19','1','管理员','0:0:0:0:0:0:0:1'),
	(133,'角色组管理','新增','/back/group','2017-07-15 18:36:20','1','管理员','0:0:0:0:0:0:0:1'),
	(134,'角色组管理','新增','/back/group','2017-07-15 18:36:21','1','管理员','0:0:0:0:0:0:0:1'),
	(135,'角色组管理','新增','/back/group','2017-07-15 18:36:25','1','管理员','0:0:0:0:0:0:0:1'),
	(136,'角色组管理','新增','/back/group','2017-07-15 18:36:29','1','管理员','0:0:0:0:0:0:0:1'),
	(137,'角色组管理','新增','/back/group','2017-07-15 18:36:30','1','管理员','0:0:0:0:0:0:0:1'),
	(138,'角色组管理','新增','/back/group','2017-07-15 18:36:33','1','管理员','0:0:0:0:0:0:0:1'),
	(139,'角色组管理','新增','/back/group','2017-07-15 18:36:35','1','管理员','0:0:0:0:0:0:0:1'),
	(140,'角色组管理','新增','/back/group','2017-07-15 18:36:35','1','管理员','0:0:0:0:0:0:0:1'),
	(141,'角色组管理','新增','/back/group','2017-07-15 18:36:37','1','管理员','0:0:0:0:0:0:0:1'),
	(142,'角色组管理','新增','/back/group','2017-07-15 18:37:03','1','管理员','0:0:0:0:0:0:0:1'),
	(143,'角色组管理','新增','/back/group','2017-07-15 18:37:03','1','管理员','0:0:0:0:0:0:0:1'),
	(144,'角色组管理','新增','/back/group','2017-07-15 18:37:04','1','管理员','0:0:0:0:0:0:0:1'),
	(145,'角色组管理','新增','/back/group','2017-07-15 18:37:09','1','管理员','0:0:0:0:0:0:0:1'),
	(146,'菜单管理','删除元素','/back/element','2017-07-15 18:37:36','1','管理员','0:0:0:0:0:0:0:1'),
	(147,'菜单管理','删除元素','/back/element','2017-07-15 18:37:42','1','管理员','0:0:0:0:0:0:0:1'),
	(148,'菜单管理','删除元素','/back/element','2017-07-15 18:37:48','1','管理员','0:0:0:0:0:0:0:1'),
	(149,'菜单管理','删除元素','/back/element','2017-07-15 18:37:53','1','管理员','0:0:0:0:0:0:0:1'),
	(150,'菜单管理','删除元素','/back/element','2017-07-15 18:38:02','1','管理员','0:0:0:0:0:0:0:1'),
	(151,'菜单管理','删除元素','/back/element','2017-07-15 18:38:07','1','管理员','0:0:0:0:0:0:0:1'),
	(152,'菜单管理','删除元素','/back/element','2017-07-15 18:38:13','1','管理员','0:0:0:0:0:0:0:1'),
	(153,'菜单管理','删除元素','/back/element','2017-07-15 18:38:20','1','管理员','0:0:0:0:0:0:0:1'),
	(154,'菜单管理','删除','/back/menu','2017-07-15 18:38:28','1','管理员','0:0:0:0:0:0:0:1'),
	(155,'菜单管理','删除','/back/menu','2017-07-15 18:38:33','1','管理员','0:0:0:0:0:0:0:1'),
	(156,'菜单管理','删除','/back/menu','2017-07-15 18:38:39','1','管理员','0:0:0:0:0:0:0:1'),
	(157,'用户管理','删除','/back/user','2017-07-15 19:15:00','1','管理员','0:0:0:0:0:0:0:1'),
	(158,'用户管理','编辑','/back/user','2017-07-15 19:18:06','1','管理员','0:0:0:0:0:0:0:1'),
	(159,'角色组管理','删除','/back/group','2017-07-15 19:22:38','1','管理员','0:0:0:0:0:0:0:1'),
	(160,'菜单管理','编辑','/back/menu','2017-07-15 23:45:24','1','管理员','0:0:0:0:0:0:0:1'),
	(161,'菜单管理','新增元素','/back/element','2017-07-15 23:51:07','1','管理员','0:0:0:0:0:0:0:1'),
	(162,'菜单管理','新增元素','/back/element','2017-07-15 23:52:00','1','管理员','0:0:0:0:0:0:0:1'),
	(163,'菜单管理','编辑元素','/back/element','2017-07-15 23:52:07','1','管理员','0:0:0:0:0:0:0:1'),
	(164,'菜单管理','新增元素','/back/element','2017-07-15 23:52:37','1','管理员','0:0:0:0:0:0:0:1'),
	(165,'菜单管理','新增元素','/back/element','2017-07-15 23:53:06','1','管理员','0:0:0:0:0:0:0:1'),
	(166,'角色组管理','新增','/back/group','2017-07-15 23:53:20','1','管理员','0:0:0:0:0:0:0:1'),
	(167,'角色组管理','新增','/back/group','2017-07-15 23:53:20','1','管理员','0:0:0:0:0:0:0:1'),
	(168,'角色组管理','新增','/back/group','2017-07-15 23:53:21','1','管理员','0:0:0:0:0:0:0:1'),
	(169,'角色组管理','新增','/back/group','2017-07-15 23:53:21','1','管理员','0:0:0:0:0:0:0:1'),
	(170,'角色组管理','新增','/back/group','2017-07-15 23:53:22','1','管理员','0:0:0:0:0:0:0:1'),
	(171,'角色组管理','新增','/back/group','2017-07-15 23:53:22','1','管理员','0:0:0:0:0:0:0:1'),
	(172,'角色组管理','新增','/back/group','2017-07-15 23:53:29','1','管理员','0:0:0:0:0:0:0:1'),
	(173,'文章管理','新增','/blog/article','2017-07-15 23:54:51','1','管理员','0:0:0:0:0:0:0:1'),
	(174,'文章管理','编辑','/blog/article','2017-07-16 12:59:56','1','管理员','0:0:0:0:0:0:0:1'),
	(175,'文章管理','编辑','/blog/article','2017-07-16 13:04:02','1','管理员','0:0:0:0:0:0:0:1'),
	(176,'文章管理','编辑','/blog/article','2017-07-16 13:04:56','1','管理员','0:0:0:0:0:0:0:1'),
	(177,'文章管理','编辑','/blog/article','2017-07-16 13:05:15','1','管理员','0:0:0:0:0:0:0:1'),
	(178,'文章管理','编辑','/blog/article','2017-07-16 13:06:58','1','管理员','0:0:0:0:0:0:0:1'),
	(179,'文章管理','编辑','/blog/article','2017-07-16 13:07:47','1','管理员','0:0:0:0:0:0:0:1'),
	(180,'用户管理','编辑','/back/user','2017-07-16 13:09:03','1','管理员','0:0:0:0:0:0:0:1'),
	(181,'文章管理','新增','/blog/article','2017-07-16 16:40:59','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(182,'文章管理','编辑','/blog/article','2017-07-16 16:55:49','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(183,'文章管理','编辑','/blog/article','2017-07-16 16:56:21','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(184,'文章管理','删除','/blog/article','2017-07-16 16:57:24','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(185,'文章管理','删除','/blog/article','2017-07-16 16:57:27','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(186,'用户管理','新增','/back/user','2017-07-16 16:58:49','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(187,'角色组管理','新增','/back/group','2017-07-16 16:59:30','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(188,'角色组管理','新增','/back/group','2017-07-16 16:59:41','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(189,'角色组管理','新增','/back/group','2017-07-16 16:59:41','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(190,'角色组管理','新增','/back/group','2017-07-16 16:59:42','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(191,'角色组管理','新增','/back/group','2017-07-16 16:59:42','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(192,'角色组管理','新增','/back/group','2017-07-16 16:59:44','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(193,'角色组管理','编辑','/back/group','2017-07-16 16:59:55','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(194,'角色组管理','新增','/back/group','2017-07-16 17:00:23','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(195,'角色组管理','新增','/back/group','2017-07-16 17:00:23','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(196,'角色组管理','新增','/back/group','2017-07-16 17:00:23','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(197,'角色组管理','新增','/back/group','2017-07-16 17:00:23','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(198,'角色组管理','编辑','/back/group','2017-07-16 17:00:30','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(199,'文章管理','新增','/blog/article','2017-07-16 17:11:28','4','blog','0:0:0:0:0:0:0:1'),
	(200,'用户管理','编辑','/back/user','2017-07-16 17:12:27','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(201,'文章管理','新增','/blog/article','2017-07-17 08:29:19','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(202,'文章管理','编辑','/blog/article','2017-07-17 08:52:01','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(203,'文章管理','编辑','/blog/article','2017-07-17 09:02:49','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(204,'文章管理','编辑','/blog/article','2017-07-17 09:03:20','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(205,'文章管理','编辑','/blog/article','2017-07-17 09:03:55','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(206,'文章管理','编辑','/blog/article','2017-07-17 09:04:59','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(207,'文章管理','编辑','/blog/article','2017-07-17 09:05:05','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(208,'文章管理','编辑','/blog/article','2017-07-17 09:05:56','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(209,'文章管理','编辑','/blog/article','2017-07-17 09:06:52','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(210,'文章管理','编辑','/blog/article','2017-07-17 12:02:25','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(211,'文章管理','编辑','/blog/article','2017-07-17 12:08:03','4','Mr.AG','0:0:0:0:0:0:0:1'),
	(212,'用户管理','编辑','/back/user','2017-07-19 15:34:14','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(213,'用户管理','编辑','/back/user','2017-07-25 14:50:07','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(214,'用户管理','编辑','/back/user','2017-07-25 14:54:20','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(215,'菜单管理','编辑','/back/menu','2017-07-25 19:38:10','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(216,'角色组管理','新增','/back/group','2017-07-27 17:23:44','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(217,'用户管理','编辑','/back/user','2017-07-27 18:01:35','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(218,'用户管理','编辑','/back/user','2017-07-27 18:01:45','1','Mr.AG','0:0:0:0:0:0:0:1'),
	(219,'角色类型管理','编辑','/admin/groupType','2017-08-25 17:28:36','1','Mr.AG','127.0.0.1'),
	(220,'角色类型管理','编辑','/admin/groupType','2017-08-25 17:52:36','1','Mr.AG','127.0.0.1'),
	(221,'角色类型管理','编辑','/admin/groupType','2017-08-25 17:52:42','1','Mr.AG','127.0.0.1'),
	(222,'用户管理','新增','/admin/user','2017-08-26 08:19:41','1','Mr.AG','127.0.0.1'),
	(223,'用户管理','删除','/admin/user','2017-08-26 08:19:49','1','Mr.AG','127.0.0.1'),
	(224,'角色类型管理','编辑','/admin/groupType','2017-08-26 08:22:25','1','Mr.AG','127.0.0.1'),
	(225,'角色组管理','新增','/admin/group','2017-08-26 23:11:55','1','Mr.AG','127.0.0.1'),
	(226,'角色组管理','删除','/admin/group','2017-08-26 23:12:09','1','Mr.AG','127.0.0.1'),
	(227,'角色组管理','删除','/admin/group','2017-08-26 23:14:23','1','Mr.AG','127.0.0.1'),
	(228,'角色组管理','新增','/admin/group','2017-08-26 23:17:13','1','Mr.AG','127.0.0.1'),
	(229,'角色组管理','编辑','/admin/group','2017-08-26 23:17:24','1','Mr.AG','127.0.0.1'),
	(230,'角色组管理','删除','/admin/group','2017-08-26 23:18:05','1','Mr.AG','127.0.0.1'),
	(231,'角色组管理','新增','/admin/group','2017-08-26 23:19:52','1','Mr.AG','127.0.0.1'),
	(232,'角色组管理','编辑','/admin/group','2017-08-26 23:19:56','1','Mr.AG','127.0.0.1'),
	(233,'角色组管理','编辑','/admin/group','2017-08-26 23:20:01','1','Mr.AG','127.0.0.1'),
	(234,'角色组管理','删除','/admin/group','2017-08-26 23:20:05','1','Mr.AG','127.0.0.1'),
	(235,'菜单管理','新增','/admin/menu','2017-08-27 10:06:46','1','Mr.AG','127.0.0.1'),
	(236,'菜单管理','删除','/admin/menu','2017-08-27 10:06:58','1','Mr.AG','127.0.0.1'),
	(237,'菜单管理','新增','/admin/menu','2017-08-27 10:07:52','1','Mr.AG','127.0.0.1'),
	(238,'菜单管理','编辑','/admin/menu','2017-08-27 10:08:53','1','Mr.AG','127.0.0.1'),
	(239,'菜单管理','编辑','/admin/menu','2017-08-27 10:09:28','1','Mr.AG','127.0.0.1'),
	(240,'菜单管理','删除','/admin/menu','2017-08-27 10:14:34','1','Mr.AG','127.0.0.1'),
	(241,'菜单管理','新增元素','/admin/element','2017-08-27 14:52:14','1','Mr.AG','127.0.0.1'),
	(242,'菜单管理','编辑元素','/admin/element','2017-08-27 14:54:48','1','Mr.AG','127.0.0.1'),
	(243,'菜单管理','删除元素','/admin/element','2017-08-27 14:54:57','1','Mr.AG','127.0.0.1'),
	(244,'角色组管理','编辑','/admin/group','2017-08-27 20:31:14','1','Mr.AG','127.0.0.1'),
	(245,'角色组管理','编辑','/admin/group','2017-08-27 20:31:33','1','Mr.AG','127.0.0.1'),
	(246,'角色组管理','编辑','/admin/group','2017-08-28 08:46:05','1','Mr.AG','127.0.0.1'),
	(247,'用户管理','编辑','/admin/user','2017-08-28 08:50:03','1','Mr.AG','127.0.0.1'),
	(248,'角色组管理','编辑','/admin/group','2017-08-28 08:50:37','1','Mr.AG','127.0.0.1'),
	(249,'角色组管理','编辑','/admin/group','2017-08-28 08:52:45','1','Mr.AG','127.0.0.1'),
	(250,'角色组管理','编辑','/admin/group','2017-08-28 08:56:38','1','Mr.AG','127.0.0.1'),
	(251,'角色组管理','编辑','/admin/group','2017-08-28 08:56:44','1','Mr.AG','127.0.0.1'),
	(252,'角色组管理','编辑','/admin/group','2017-08-28 08:57:39','1','Mr.AG','127.0.0.1'),
	(253,'角色组管理','编辑','/admin/group','2017-08-28 08:57:45','1','Mr.AG','127.0.0.1'),
	(254,'角色组管理','新增','/admin/group','2017-08-29 07:26:01','1','Mr.AG','127.0.0.1'),
	(255,'角色组管理','新增','/admin/group','2017-08-29 07:26:12','1','Mr.AG','127.0.0.1'),
	(256,'角色组管理','新增','/admin/group','2017-08-29 08:21:57','1','Mr.AG','127.0.0.1'),
	(257,'角色组管理','新增','/admin/group','2017-08-29 08:22:09','1','Mr.AG','127.0.0.1'),
	(258,'角色组管理','新增','/admin/group','2017-08-29 08:22:26','1','Mr.AG','127.0.0.1'),
	(259,'角色组管理','新增','/admin/group','2017-08-29 08:22:27','1','Mr.AG','127.0.0.1'),
	(260,'角色组管理','新增','/admin/group','2017-08-29 08:22:27','1','Mr.AG','127.0.0.1'),
	(261,'角色组管理','新增','/admin/group','2017-08-29 08:22:29','1','Mr.AG','127.0.0.1'),
	(262,'角色组管理','新增','/admin/group','2017-08-29 08:22:40','1','Mr.AG','127.0.0.1'),
	(263,'角色组管理','新增','/admin/group','2017-08-29 08:22:40','1','Mr.AG','127.0.0.1'),
	(264,'角色组管理','新增','/admin/group','2017-08-29 08:22:40','1','Mr.AG','127.0.0.1'),
	(265,'角色组管理','新增','/admin/group','2017-08-29 08:22:41','1','Mr.AG','127.0.0.1'),
	(266,'角色组管理','新增','/admin/group','2017-08-29 08:22:46','1','Mr.AG','127.0.0.1'),
	(267,'角色组管理','新增','/admin/group','2017-08-29 10:15:02','1','Mr.AG','127.0.0.1'),
	(268,'角色组管理','新增','/admin/group','2017-08-29 10:15:53','1','Mr.AG','127.0.0.1'),
	(269,'角色组管理','新增','/admin/group','2017-08-29 10:18:33','1','Mr.AG','127.0.0.1'),
	(270,'角色组管理','新增','/admin/group','2017-08-29 10:18:48','1','Mr.AG','127.0.0.1'),
	(271,'角色组管理','新增','/admin/group','2017-08-29 10:19:43','1','Mr.AG','127.0.0.1'),
	(272,'角色组管理','删除','/admin/group','2017-08-29 10:56:18','1','Mr.AG','127.0.0.1'),
	(273,'角色组管理','新增','/admin/group','2017-08-29 17:11:24','1','Mr.AG','127.0.0.1'),
	(274,'角色组管理','新增','/admin/group','2017-08-29 17:11:25','1','Mr.AG','127.0.0.1'),
	(275,'角色组管理','新增','/admin/group','2017-08-29 17:11:26','1','Mr.AG','127.0.0.1'),
	(276,'角色组管理','新增','/admin/group','2017-08-29 17:51:22','1','Mr.AG','127.0.0.1'),
	(277,'角色组管理','新增','/admin/group','2017-08-29 17:51:24','1','Mr.AG','127.0.0.1'),
	(278,'角色组管理','新增','/admin/group','2017-08-29 17:51:25','1','Mr.AG','127.0.0.1'),
	(279,'角色组管理','新增','/admin/group','2017-08-29 18:17:50','1','Mr.AG','127.0.0.1'),
	(280,'角色组管理','新增','/admin/group','2017-08-29 18:17:52','1','Mr.AG','127.0.0.1'),
	(281,'角色组管理','新增','/admin/group','2017-08-29 18:18:34','1','Mr.AG','127.0.0.1'),
	(282,'角色组管理','新增','/admin/group','2017-08-29 18:18:35','1','Mr.AG','127.0.0.1'),
	(283,'角色组管理','新增','/admin/group','2017-08-30 07:18:43','1','Mr.AG','127.0.0.1'),
	(284,'角色组管理','编辑','/admin/group','2017-08-30 07:19:39','1','Mr.AG','127.0.0.1'),
	(285,'用户管理','删除','/admin/user','2017-10-27 16:30:31','1','sun','127.0.0.1');

/*!40000 ALTER TABLE `gate_log` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
