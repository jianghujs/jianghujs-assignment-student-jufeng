# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 COMMENT = '常量表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'notice','object','','{\"title\":\"4.3.7 版本发布\",\"content\":\"快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n\",\"imageSrc\":\"/noticeImage/1647076649263_719911_noticeImage.jpeg\",\"isImageShown\":false,\"isTextShown\":true}','update','admin01','admin01','2022-03-12T17:19:50+08:00');
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'userStatus','array',NULL,'[{\"value\": \"active\", \"text\": \"正常\"}, {\"value\": \"banned\", \"text\": \"禁用\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'userType','array',NULL,'[{\"value\": \"common\", \"text\": \"普通用户\"},{\"value\": \"xiaochengxu\", \"text\": \"小程序机器人\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (61,'gender','array',NULL,'[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'version','object',NULL,'{\"testUserIdList\": \"\",\"version\": \"5.0.19\", \"title\": \"5.0.19 版本发布\", \"note\": \"新版本介绍\\n 1. 网页版ui修复\", \"apkVersion\": \"5.1.8\", \"apkLink\": \"https://nextcloud.openjianghu.org/index.php/s/SyRaPyt9nFbFryX/download/%E6%97%8B%E9%A3%8E5-5.0.20.apk\", \"apkNote\": \"新版本介绍\\n 1. 网页版ui修复\", \"desktopVersion\": \"4.3.2\", \"desktopLink\": \"http://192.168.110.215:8082/duoxing/upload/duoxing-1.0.1.dmg.zip\", \"desktopNote\": \"测试桌面客户端升级\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (64,'emotion','array',NULL,'[\n  {\n    \"dir\":\"face01\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"png\",\n    \"cols\":5,\n    \"total\":86\n  },\n  {\n    \"dir\":\"face02\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face03\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face04\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face05\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":1,\n    \"total\":7\n  },\n  {\n    \"dir\":\"face06\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":24\n  },\n  {\n    \"dir\":\"face07\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face08\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":23\n  },\n  {\n    \"dir\":\"face09\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face10\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":20\n  },\n  {\n    \"dir\":\"face11\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":13\n  },\n  {\n    \"dir\":\"face12\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face13\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":15\n  },\n  {\n    \"dir\":\"face14\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  }\n]\n','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (65,'appLinkActionConfig','array',NULL,'[{\"regex\":\".openjianghu.org\\/*\", \"action\": \"internal\"}, {\"regex\":\"http:\\/\\/192.168.\\/*\", \"action\": \"internal\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (66,'share','array',NULL,'[{\"path\":\"/upload/image/share/shareImage01.jpg\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 COMMENT = '文件表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _file
# ------------------------------------------------------------

INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'1649055579149_130916','userAvatar/2022/4/4/','1.gif','1649055579149_130916_1.gif','/userAvatar/2022/4/4//1649055579149_130916_1.gif',NULL,NULL,'359.65KB','jhInsert','admin','武林盟主','2022-04-04T14:59:39+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'1649055764307_600823','userAvatar/2022/4/4/','1.gif','1649055764307_600823_1.gif','/userAvatar/2022/4/4//1649055764307_600823_1.gif',NULL,NULL,'359.65KB','jhInsert','admin','武林盟主','2022-04-04T15:02:44+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'1649255636743_832624','userAvatar/2022/4/6/','taaa.jpg','1649255636743_832624_taaa.jpg','/userAvatar/2022/4/6//1649255636743_832624_taaa.jpg',NULL,NULL,'1.16MB','jhInsert','admin','武林盟主','2022-04-06T22:33:56+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'1649255739580_426287','userAvatar/2022/4/6/','taaa.jpg','1649255739580_426287_taaa.jpg','/userAvatar/2022/4/6//1649255739580_426287_taaa.jpg',NULL,NULL,'1.16MB','jhInsert','admin','武林盟主','2022-04-06T22:35:39+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'1649333274419_796912','userAvatar/2022/4/7/','1 (1).gif','1649333274419_796912_1 (1).gif','/userAvatar/2022/4/7//1649333274419_796912_1 (1).gif',NULL,NULL,'359.65KB','jhInsert','admin','武林盟主','2022-04-07T20:07:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'1649337300661_751027','userAvatar/2022/4/7/','11.jpeg','1649337300661_751027_11.jpeg','/userAvatar/2022/4/7//1649337300661_751027_11.jpeg',NULL,NULL,'54.19KB','jhInsert','admin','武林盟主','2022-04-07T21:15:00+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'1649422517016_792036','userAvatar/2022/4/8/','11.jpeg','1649422517016_792036_11.jpeg','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg',NULL,NULL,'54.19KB','jhInsert','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'1649748085090_753222','userAvatar/2022/4/12/','WechatIMG19.jpeg','1649748085090_753222_WechatIMG19.jpeg','/userAvatar/2022/4/12//1649748085090_753222_WechatIMG19.jpeg',NULL,NULL,'298.94KB','jhInsert','100013V','SuniJH','2022-04-12T15:21:25+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'1649748090881_125250','userAvatar/2022/4/12/','WechatIMG27.jpeg','1649748090881_125250_WechatIMG27.jpeg','/userAvatar/2022/4/12//1649748090881_125250_WechatIMG27.jpeg',NULL,NULL,'259.71KB','jhInsert','100013V','SuniJH','2022-04-12T15:21:30+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'1649883024061_640025','userAvatar/2022/4/14/','IMG_3760.jpeg','1649883024061_640025_IMG_3760.jpeg','/userAvatar/2022/4/14//1649883024061_640025_IMG_3760.jpeg',NULL,NULL,'116.55KB','jhInsert','100004Q','伽勒JH','2022-04-14T04:50:24+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'1650127772045_292656','userAvatar/2022/4/17/','IMG_1161_10001000.jpeg','1650127772045_292656_IMG_1161_10001000.jpeg','/userAvatar/2022/4/17//1650127772045_292656_IMG_1161_10001000.jpeg',NULL,NULL,'442.88KB','jhInsert','100080M','贝贝JH','2022-04-17T00:49:32+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'1650145781718_826369','userAvatar/2022/4/17/','IMG_495_959959.png','1650145781718_826369_IMG_495_959959.png','/userAvatar/2022/4/17//1650145781718_826369_IMG_495_959959.png',NULL,NULL,'86.15KB','jhInsert','100054Z','萝以JH','2022-04-17T05:49:41+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (24,'1650206435041_299734','userAvatar/2022/4/17/','IMG_71802_10801440.jpeg','1650206435041_299734_IMG_71802_10801440.jpeg','/userAvatar/2022/4/17//1650206435041_299734_IMG_71802_10801440.jpeg',NULL,NULL,'74.73KB','jhInsert','534463X','颖怡YS','2022-04-17T22:40:35+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (25,'1650215454392_781888','userAvatar/2022/4/18/','IMG_17537_12001200.png','1650215454392_781888_IMG_17537_12001200.png','/userAvatar/2022/4/18//1650215454392_781888_IMG_17537_12001200.png',NULL,NULL,'355.70KB','jhInsert','100005W','安宁JH','2022-04-18T01:10:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (26,'1651720180895_568789','userAvatar/2022/5/5/','m54j0qc54o5.jpeg','1651720180895_568789_m54j0qc54o5.jpeg','/userAvatar/2022/5/5//1651720180895_568789_m54j0qc54o5.jpeg',NULL,NULL,'11.26KB','jhInsert','m3611F','刘计','2022-05-05T11:09:40+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `pageHook` text COMMENT '{\n  "beforeHook":[\n  {"field": "doc", "service": "doc", "serviceFunc": "getDoc"}\n  ]\n}',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 60 COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','dynamicInMenu','11',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','','',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual','操作手册',NULL,'0',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'home','文档','seo',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'userManagement','用户管理','showInMenu',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (58,'userActionManagement','用户行为管理','showInMenu',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'commentManagement','文章评论管理','showInMenu',NULL,NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据JSON',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `index_record_id` (`recordId`),
  KEY `index_table_action` (`table`, `operation`)
) ENGINE = InnoDB AUTO_INCREMENT = 4262 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 486 COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,NULL,NULL,'allPage','logout','✅登出','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"logout\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,NULL,NULL,'allPage','userInfo','✅获取用户信息','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (103,NULL,NULL,'allPage','getConstantList','✅查询常量','sql','{}','{ \"table\": \"_constant\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (104,NULL,NULL,'allPage','getChunkInfo','✅ 文件分片下载-获取分片信息','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"getChunkInfo\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (105,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (106,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (107,NULL,NULL,'allPage','httpUploadByBase64','✅ 文件分片上传-http base64','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (121,NULL,NULL,'login','passwordLogin','✅登陆','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (125,NULL,NULL,'home_userCenter','setUserDetail','✅ 设置用户信息','service','{}','{ \"service\": \"xuanfengUser\", \"serviceFunction\": \"setUserDetail\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (131,NULL,'','home_allPage','insertArticleView','?全局-创建浏览记录','service','{}','{ \"service\": \"article\", \"serviceFunction\": \"insertArticleView\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (132,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','home_index','selectItemListWhereInIdList','?全局-查询上一次的播放列表','sql','{}','{ \"table\": \"view01_article\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (141,NULL,NULL,'home_favorite','selectItemList','?收藏-收藏列表(不包含内容)','sql','{}','{ \"table\": \"view01_article_favorite\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (142,NULL,'{ \"before\": [], \"after\": [{\"service\": \"articleInfo\", \"serviceFunction\": \"articleFavoriteCountHook\"}] }','home_favorite','insertItem','?收藏-收藏文章','sql','{}','{ \"table\": \"article_favorite\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (143,NULL,'{ \"before\": [], \"after\": [{\"service\": \"articleInfo\", \"serviceFunction\": \"articleFavoriteCountHook\"}] }','home_favorite','deleteItem','?收藏-取消收藏','sql','{}','{ \"table\": \"article_favorite\", \"operation\": \"jhDelete\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (144,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','home_favorite','selectFavoriteAritcleList','?收藏-收藏列表','service','{}','{ \"service\": \"favorite\", \"serviceFunction\": \"selectItemListByKeywordAndType\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (151,NULL,NULL,'home_articleContent','selectItemList','?文章预览-文章详情查询','sql','{}','{ \"table\": \"article\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (161,NULL,NULL,'home_articleComment','selectItemList','?文章评论-评论列表','sql','{}','{ \"table\": \"view01_comment_user\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (162,NULL,'{ \"before\": [{\"service\": \"comment\", \"serviceFunction\": \"createCommentIdHook\"}], \"after\": [{\"service\": \"articleInfo\", \"serviceFunction\": \"articleCommentCountHook\"}] }','home_articleComment','insertItem','?文章评论-创建评论','sql','{}','{ \"table\": \"comment\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (163,NULL,'{ \"before\": [], \"after\": [{\"service\": \"articleInfo\", \"serviceFunction\": \"articleCommentCountHook\"}] }','home_articleComment','updateItem','?文章评论-更新评论','sql','{}','{ \"table\": \"comment\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (164,NULL,'{ \"before\": [], \"after\": [{\"service\": \"articleInfo\", \"serviceFunction\": \"articleCommentCountHook\"}] }','home_articleComment','deleteItem','?文章评论-删除评论','sql','{}','{ \"table\": \"comment\", \"operation\": \"jhDelete\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (165,NULL,NULL,'home_articleComment','like','?文章评论-点赞评论','service','{}','{ \"service\": \"comment\", \"serviceFunction\": \"commentLike\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (166,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','home_articleComment','selectCommentArticleList','?文章评论-评论文章列表','service','{}','{ \"service\": \"comment\", \"serviceFunction\": \"selectItemListByKeywordAndType\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (171,NULL,NULL,'home_discovery','selectAlbumList','?发现-查询专辑列表','sql','{}','{ \"table\": \"album\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (172,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','home_discovery','selectAlbumArticleList','?发现-查询专辑内容列表','service','{}','{ \"service\": \"album\", \"serviceFunction\": \"viewAlbumArticleList\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (181,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','home_search','selectArticleList','?搜索-查询文章列表','service','{}','{ \"service\": \"search\", \"serviceFunction\": \"selectItemListByKeywordAndType\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (191,NULL,'','home_note','selectItemList','?笔记-获取笔记内容','sql','{}','{ \"table\": \"note\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (192,NULL,'{ \"before\": [{\"service\": \"note\", \"serviceFunction\": \"createNoteIdHook\"}], \"after\": [] }','home_note','insertItem','?笔记-新建笔记','sql','{}','{ \"table\": \"note\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (193,NULL,NULL,'home_note','updateItem','?笔记-更新笔记','sql','{}','{ \"table\": \"note\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (194,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','home_note','selectNoteArticleList','?笔记-笔记文章列表','service','{}','{ \"service\": \"note\", \"serviceFunction\": \"selectItemListByKeywordAndType\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (201,NULL,NULL,'home_assignment','selectArticleAssignmentList','✅文章作业-查看作业版本列表','service','{}','{ \"service\": \"assignment\", \"serviceFunction\": \"selectArticleAssignmentList\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (202,NULL,NULL,'home_assignment','insertItem','✅文章作业-创建作业','sql','{}','{ \"table\": \"assignment\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (203,NULL,NULL,'home_assignment','updateItem','✅文章作业-更新作业','sql','{}','{ \"table\": \"assignment\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (416,NULL,NULL,'userManagement','getItemList','✅查询用户列表','sql','{}','{ \"table\": \"_user\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (417,NULL,NULL,'userManagement','addUser','✅插入新用户','service','{}','{ \"service\": \"userManagement\", \"serviceFunction\": \"addUser\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (418,NULL,NULL,'userManagement','setItem','✅更新用户','sql','{}','{ \"table\": \"_user\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (419,NULL,NULL,'userManagement','resetUserPassword','✅重新设置用户密码','service','{}','{ \"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (450,NULL,NULL,'commentManagement','selectArticleList','✅评论管理-查询文章列表','sql','{}','{ \"table\": \"view01_article\", \"operation\": \"select\" }','','','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (451,NULL,NULL,'commentManagement','selectCategoryList','✅评论管理-查询分类列表','sql','{}','{ \"table\": \"view01_category\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (452,NULL,NULL,'commentManagement','selectCommentList','✅评论管理-查询分类列表','sql','{}','{ \"table\": \"view01_comment_user\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (453,NULL,NULL,'commentManagement','updateItem','✅评论管理-编辑评论','sql','{}','{ \"table\": \"comment\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (471,NULL,NULL,'userActionManagement','getItemList','✅查询用户行为列表','sql','{}','{ \"table\": \"view01_user_action\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (481,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','userActionManagement','selectNoteArticleList','?笔记-笔记文章列表','service','{}','{ \"service\": \"note\", \"serviceFunction\": \"selectItemListByKeywordAndType\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (482,NULL,NULL,'userActionManagement','selectItemList','?收藏-收藏列表(不包含内容)','sql','{}','{ \"table\": \"view01_article_favorite\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (483,NULL,'{ \"before\": [], \"after\": [{\"service\": \"article\", \"serviceFunction\": \"joinFavoriteStatusHook\"}] }','userActionManagement','selectCommentArticleList','?文章评论-评论文章列表','service','{}','{ \"service\": \"comment\", \"serviceFunction\": \"selectItemListByKeywordAndType\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (485,NULL,NULL,'userActionManagement','selectItemList','✅查询用户浏览列表','sql',NULL,'{ \"table\": \"view01_article_view\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `resourceId_index` (`resourceId`),
  KEY `packageId_index` (`packageId`)
) ENGINE = InnoDB AUTO_INCREMENT = 271403 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'adminRole','系统管理员','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COMMENT '测试用例步骤;',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 434 COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,'login',NULL,'用户登陆',NULL,'输入用户名密码登录',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (151,'home',NULL,'主页-我的-用户信息',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (152,'home',NULL,'主页-我的-修改头像',NULL,'点击“修改头像”进行修改',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (153,'home',NULL,'主页-我的-应用重载',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (154,'home',NULL,'主页-我的-退出登陆',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (201,'home',NULL,'主页-搜索-搜索标题关键词',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (202,'home',NULL,'主页-搜索-搜索分类关键词',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (203,'home',NULL,'主页-搜索-搜索标签关键词',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (204,'home',NULL,'主页-搜索-搜索内容关键词',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (205,'home',NULL,'主页-搜索-相关搜索',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (206,'home',NULL,'主页-搜索-相关推荐',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,'home',NULL,'主页-发现-课程栏分类',NULL,'点击发现后，显示不同分类的课题',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (232,'home',NULL,'主页-发现-选择课程专辑',NULL,'点击三条横后，跳出不同可以选择的专辑',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,'home',NULL,'主页-收藏-文章列表',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (252,'home',NULL,'主页-收藏-时间排序',NULL,'点击排序，选择时间上升或下降排序',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,'home',NULL,'主页-收藏-标题排序',NULL,'点击排序，选择标题上升或下降排序',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,'home',NULL,'主页-收藏-取消收藏',NULL,'点击文章的三个点，取消收藏',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (281,'home',NULL,'主页-文章列表-阅读量',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (282,'home',NULL,'主页-文章列表-收藏量',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (283,'home',NULL,'主页-文章列表-评论量',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (284,'home',NULL,'主页-文章列表-文章标签',NULL,'文章拥有的标签',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (285,'home',NULL,'主页-文章列表-通过文章标签搜索',NULL,'点击文章中的一个标签，确定是否搜索',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (301,'home',NULL,'主页-文章内容-点击文章后自动播放音频',NULL,'点击文章后，自动播放文章的录音',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (302,'home',NULL,'主页-文章内容-点击文章后显示文章内容',NULL,'点击文章后，自动显示文章的文稿和信息',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (303,'home',NULL,'主页-文章内容-文章创建时间',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (304,'home',NULL,'主页-文章内容-文章内容标题',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (305,'home',NULL,'主页-文章内容-文章的评论数',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (306,'home',NULL,'主页-文章内容-文章的点赞数',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (331,'home',NULL,'主页-播放控制栏-播放音频',NULL,'点击播放控制栏的，录音播放按钮播放',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (332,'home',NULL,'主页-播放控制栏-暂停音频',NULL,'点击播放控制栏的，录音播放按钮暂停',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (333,'home',NULL,'主页-播放控制栏-划动音频进度',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (334,'home',NULL,'主页-播放控制栏-收藏文章',NULL,'点击播放控制栏的，爱心标志收藏文章',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (335,'home',NULL,'主页-播放控制栏-显示评论框',NULL,'点击点击播放控制栏的，聊天标志评论文章',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (336,'home',NULL,'主页-播放控制栏-显示播放列表',NULL,'点击点击播放控制栏的，横标志查看播放列表',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (351,'home',NULL,'主页-播放列表-查看播放列表',NULL,'点击播放列表后，显示接下来要播放的文章',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (352,'home',NULL,'主页-播放列表-取消播放列表',NULL,'点击播放列表上方的空白处，取消查看',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (353,'home',NULL,'主页-播放列表-删除播放列表中的文章',NULL,'点击播放列表旁的取消按钮，取消要播放的文章',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (381,'home',NULL,'主页-评论-点赞评论',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (382,'home',NULL,'主页-评论-回复评论',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (383,'home',NULL,'主页-评论-删除评论',NULL,'删除自己的评论内容',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (401,'home',NULL,'主页-笔记-笔记',NULL,'',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (402,'home',NULL,'主页-笔记-保存笔记',NULL,'随时可编辑笔记内容',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (431,'home',NULL,'主页-其他-点击文章后自动增加阅读量',NULL,'点赞文章后，该文章的阅读量会增加',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (432,'home',NULL,'主页-其他-收藏文章后自动增加收藏量',NULL,'收藏文章后，该文章的收藏量会增加',NULL,NULL,NULL,NULL);
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (433,'home',NULL,'主页-其他-评论文章后自动增加评论量',NULL,'评论文章后，该文章的评论量会增加',NULL,NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` text COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 73 COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `contactNumber` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `gender` varchar(255) DEFAULT 'male' COMMENT '性别; male, female',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日E.g: 2021-05-28T10:24:54+08:00 ',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '初始明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT 'password',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userType` varchar(255) DEFAULT 'common' COMMENT '用户类型; common, xiaochengxu',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户类型; active, banned',
  `config` mediumtext COMMENT '置顶信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userId_unique` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 COMMENT = '用户表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,NULL,'admin','武林盟主',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','21Z5znWm6Wfq','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,NULL,'m3659N','汗蒸',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,NULL,'m3611F','刘计',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,NULL,'m3658K','本善',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,NULL,'m3862G','louis',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,NULL,'m3995Q','雪园',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,NULL,'m3662X','张超',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,NULL,'10000Q','伽勒JH',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,NULL,'100005W','安宁JH',' ','17177777001','male','2000-04-15T00:00:00.000Z',' ',' ','P@ssword@@','04aeca8ab5b8b55b270d92aced723913','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-05-05T15:26:56+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'admin','adminGroup','adminRole','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'m3659N','adminGroup','adminRole','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'m3611F','adminGroup','adminRole','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,'m3658K','adminGroup','adminRole','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,'m3862G','adminGroup','adminRole','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'m3666L','adminGroup','adminRole','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'m3611F','adminGroup','adminRole','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 52 COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'*','public','*','login','allow','所有页面公开','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'*','login','*','manual','allow','操作手册页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'*','login','*','help','allow','帮助页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'*','login','*','home','allow','首页','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'*','adminGroup','adminRole','*','allow','所有页面; 开放给应用管理者;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 53 COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'*','public','*','allPage.getConstantList','allow','查询常量resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'*','login','*','allPage.*','allow','刷新authToken resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'*','login','*','home_*','allow','home 页面相关resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'*','adminGroup','adminRole','*','allow','管理员用户 赋予所有resouce 权限','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `userIpRegion` varchar(255) DEFAULT NULL,
  `socketStatus` varchar(255) NOT NULL DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `userId_index` (`userId`),
  KEY `userId_deviceId_unique` (`userId`, `deviceId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_favorite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_favorite`;
CREATE TABLE `article_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `articleId` varchar(255) DEFAULT NULL COMMENT '文章id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 419;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) DEFAULT NULL COMMENT '文章id, 10000 ++',
  `articleViewCount` varchar(255) DEFAULT NULL COMMENT '文章浏览量',
  `articleCommentCount` varchar(255) DEFAULT NULL COMMENT '文章评论数',
  `articleFavoriteCount` varchar(255) DEFAULT NULL COMMENT '文章收藏数',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleId_unique` (`articleId`)
) ENGINE = InnoDB AUTO_INCREMENT = 788;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_view
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_view`;
CREATE TABLE `article_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) DEFAULT NULL COMMENT '文章id, 10000 ++',
  `userId` varchar(255) DEFAULT NULL COMMENT '浏览用户',
  `viewType` varchar(255) DEFAULT NULL COMMENT '浏览类型; content, audio, video',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`),
  KEY `articleId_index` (`articleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9870;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: assignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` varchar(255) DEFAULT NULL COMMENT '文章ID',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `assignmentVersion` varchar(255) DEFAULT NULL,
  `assignmentFormItemList` text COMMENT '作业内容',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`articleId`, `userId`, `assignmentVersion`)
) ENGINE = InnoDB AUTO_INCREMENT = 374;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignment
# ------------------------------------------------------------

INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (358,'23420','m3611F','1','[{\"id\":\"singleSelect_cmu_4qfW\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"answerData\":{\"selected\":\"3\"}},{\"id\":\"multipleSelect_1ax2ghcu\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"2\":true}},{\"id\":\"questionAnswer_X2I4p1WT\",\"component\":{\"title\":\"问答\",\"type\":\"questionAnswer\",\"outline\":\"问答题 题纲\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"answerData\":{\"answer\":\"这是答案\"}}]','jhUpdate','m3611F','刘计','2022-04-21T14:04:12+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (363,NULL,'W00001','1','[{\"id\":\"singleSelect_cmu_4qfW\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"answerData\":{\"selected\":\"3\"}},{\"id\":\"multipleSelect_1ax2ghcu\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"2\":true,\"3\":true}},{\"id\":\"questionAnswer_X2I4p1WT\",\"component\":{\"title\":\"问答\",\"type\":\"questionAnswer\",\"outline\":\"问答题 题纲\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"answerData\":{\"answer\":\"123\"}}]','jhInsert','W00001','张三丰','2022-04-21T15:07:36+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (364,NULL,'W00001','1','[{\"id\":\"singleSelect_cmu_4qfW\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"answerData\":{\"selected\":\"3\"}},{\"id\":\"multipleSelect_1ax2ghcu\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"2\":true,\"3\":true}},{\"id\":\"questionAnswer_X2I4p1WT\",\"component\":{\"title\":\"问答\",\"type\":\"questionAnswer\",\"outline\":\"问答题 题纲\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"answerData\":{\"answer\":\"123\"}}]','jhInsert','W00001','张三丰','2022-04-21T15:07:40+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (365,NULL,'m3611F','3','[{\"id\":\"multipleSelect_8UWDDper\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"2\":true}}]','jhInsert','m3611F','刘计','2022-04-21T15:10:28+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (366,NULL,'m3611F','3','[{\"id\":\"multipleSelect_8UWDDper\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"2\":true}}]','jhInsert','m3611F','刘计','2022-04-21T15:11:36+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (367,'23420','m3611F','2','[{\"id\":\"questionAnswer_6uqYcX1S\",\"component\":{\"title\":\"问答\",\"type\":\"questionAnswer\",\"outline\":\"问答题 题纲\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"answerData\":{\"answer\":\"1111\"}}]','jhUpdate','m3611F','刘计','2022-04-21T15:41:57+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (368,'23420','m3611F','3','[{\"id\":\"multipleSelect_8UWDDper\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"2\":true}}]','jhInsert','m3611F','刘计','2022-04-21T15:13:34+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (369,'23420','W00001','3','[{\"id\":\"multipleSelect_8UWDDper\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"1\":true,\"2\":true}}]','jhUpdate','W00001','张三丰','2022-04-21T15:44:11+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (370,'23420','W00001','2','[{\"id\":\"questionAnswer_6uqYcX1S\",\"component\":{\"title\":\"问答\",\"type\":\"questionAnswer\",\"outline\":\"问答题 题纲\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"answerData\":{}}]','jhInsert','W00001','张三丰','2022-04-21T15:30:29+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (371,'23420','m3611F','4','[{\"id\":\"multipleSelect_K7wnkvMw\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"2\"},{\"value\":\"1\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{}},{\"id\":\"singleSelect_R5bibJYP\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"answerData\":{\"selected\":\"1\"}}]','jhUpdate','m3611F','刘计','2022-04-21T16:03:26+08:00');
INSERT INTO `assignment` (`id`,`articleId`,`userId`,`assignmentVersion`,`assignmentFormItemList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (372,'23420','W00001','4','[{\"id\":\"multipleSelect_K7wnkvMw\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"2\"},{\"value\":\"1\"}]},\"icon\":\"mdi-checkbox-marked\"},\"answerData\":{\"1\":true,\"2\":true}},{\"id\":\"singleSelect_R5bibJYP\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"answerData\":{\"selected\":\"2\"}}]','jhUpdate','W00001','张三丰','2022-04-21T16:02:57+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` varchar(20) DEFAULT NULL COMMENT '评论id',
  `userId` varchar(255) DEFAULT NULL COMMENT '评论人',
  `articleId` varchar(255) DEFAULT NULL COMMENT '评论文章id',
  `likeUserIdList` varchar(255) DEFAULT NULL COMMENT '点赞人列表；使用, 拼接',
  `commentContent` longtext COMMENT '评论内容',
  `commentStatus` varchar(255) DEFAULT NULL COMMENT '评论状态 active、deleted',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 215;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: note
# ------------------------------------------------------------

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noteId` bigint(20) DEFAULT NULL COMMENT '笔记ID',
  `articleId` varchar(255) DEFAULT NULL COMMENT '文章ID',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `noteContent` longtext COMMENT '笔记内容',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 386;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_user`.`contactNumber` AS `contactNumber`,
  `_user`.`gender` AS `gender`,
  `_user`.`birthday` AS `birthday`,
  `_user`.`signature` AS `signature`,
  `_user`.`email` AS `email`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userType` AS `userType`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: album
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `album` AS
select
  `baofeng_admin_v1`.`album`.`id` AS `id`,
  `baofeng_admin_v1`.`album`.`albumId` AS `albumId`,
  `baofeng_admin_v1`.`album`.`albumTitle` AS `albumTitle`,
  `baofeng_admin_v1`.`album`.`albumSort` AS `albumSort`,
  `baofeng_admin_v1`.`album`.`albumQuery` AS `albumQuery`,
  `baofeng_admin_v1`.`album`.`albumStatus` AS `albumStatus`,
  `baofeng_admin_v1`.`album`.`operation` AS `operation`,
  `baofeng_admin_v1`.`album`.`operationByUserId` AS `operationByUserId`,
  `baofeng_admin_v1`.`album`.`operationByUser` AS `operationByUser`,
  `baofeng_admin_v1`.`album`.`operationAt` AS `operationAt`,
  `baofeng_admin_v1`.`album`.`albumType` AS `albumType`
from
  `baofeng_admin_v1`.`album`;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `article` AS
select
  `baofeng_admin_v1`.`article`.`id` AS `id`,
  `baofeng_admin_v1`.`article`.`articleId` AS `articleId`,
  `baofeng_admin_v1`.`article`.`categoryId` AS `categoryId`,
  `category`.`categoryName` AS `categoryName`,
  `baofeng_admin_v1`.`article`.`articleGroupName` AS `articleGroupName`,
  `baofeng_admin_v1`.`article`.`articleTagList` AS `articleTagList`,
  `baofeng_admin_v1`.`article`.`articlePublishStatus` AS `articlePublishStatus`,
  `baofeng_admin_v1`.`article`.`articleTitle` AS `articleTitle`,
  `baofeng_admin_v1`.`article`.`articleCoverImage` AS `articleCoverImage`,
  `baofeng_admin_v1`.`article`.`articleContent` AS `articleContent`,
  `baofeng_admin_v1`.`article`.`articleContentForSeo` AS `articleContentForSeo`,
  `baofeng_admin_v1`.`article`.`articleAudioUrl` AS `articleAudioUrl`,
  `baofeng_admin_v1`.`article`.`articleVideoUrl` AS `articleVideoUrl`,
  `baofeng_admin_v1`.`article`.`articleCreateTime` AS `articleCreateTime`,
  `baofeng_admin_v1`.`article`.`articleCreateUserId` AS `articleCreateUserId`,
  `baofeng_admin_v1`.`article`.`articleCreateUsername` AS `articleCreateUsername`,
  `baofeng_admin_v1`.`article`.`articleUpdateTime` AS `articleUpdateTime`,
  `baofeng_admin_v1`.`article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `baofeng_admin_v1`.`article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `baofeng_admin_v1`.`article`.`operation` AS `operation`,
  `baofeng_admin_v1`.`article`.`operationByUserId` AS `operationByUserId`,
  `baofeng_admin_v1`.`article`.`operationByUser` AS `operationByUser`,
  `baofeng_admin_v1`.`article`.`operationAt` AS `operationAt`,
  `category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `baofeng_app_v1_web`.`article_info`.`articleViewCount` AS `articleViewCount`,
  `baofeng_app_v1_web`.`article_info`.`articleCommentCount` AS `articleCommentCount`,
  `baofeng_app_v1_web`.`article_info`.`articleFavoriteCount` AS `articleFavoriteCount`,
  `baofeng_admin_v1`.`article`.`articleAssignmentList` AS `articleAssignmentList`,
  `baofeng_admin_v1`.`article`.`articleAssignmentListWithAnswer` AS `articleAssignmentListWithAnswer`,
  `baofeng_admin_v1`.`article`.`articlePublishTime` AS `articlePublishTime`
from
  (
  (
    `baofeng_admin_v1`.`article`
    left join `baofeng_app_v1_web`.`category` on(
    (
      `baofeng_admin_v1`.`article`.`categoryId` = `category`.`categoryId`
    )
    )
  )
  left join `baofeng_app_v1_web`.`article_info` on(
    (
    `baofeng_admin_v1`.`article`.`articleId` = `baofeng_app_v1_web`.`article_info`.`articleId`
    )
  )
  )
where
  (
  (
    `baofeng_admin_v1`.`article`.`articlePublishStatus` = 'login'
  )
  and (`category`.`categoryPublishStatus` = 'login')
  );




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: category
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `category` AS
select
  `baofeng_admin_v1`.`category`.`id` AS `id`,
  `baofeng_admin_v1`.`category`.`categoryId` AS `categoryId`,
  `baofeng_admin_v1`.`category`.`categoryName` AS `categoryName`,
  `baofeng_admin_v1`.`category`.`categoryIntro` AS `categoryIntro`,
  `baofeng_admin_v1`.`category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `baofeng_admin_v1`.`category`.`categoryCreateTime` AS `categoryCreateTime`,
  `baofeng_admin_v1`.`category`.`categoryCreateUserId` AS `categoryCreateUserId`,
  `baofeng_admin_v1`.`category`.`categoryCreateUsername` AS `categoryCreateUsername`,
  `baofeng_admin_v1`.`category`.`categoryUpdateTime` AS `categoryUpdateTime`,
  `baofeng_admin_v1`.`category`.`categoryUpdateUserId` AS `categoryUpdateUserId`,
  `baofeng_admin_v1`.`category`.`categoryUpdateUsername` AS `categoryUpdateUsername`,
  `baofeng_admin_v1`.`category`.`operation` AS `operation`,
  `baofeng_admin_v1`.`category`.`operationByUserId` AS `operationByUserId`,
  `baofeng_admin_v1`.`category`.`operationByUser` AS `operationByUser`,
  `baofeng_admin_v1`.`category`.`operationAt` AS `operationAt`,
  `baofeng_admin_v1`.`category`.`categoryGroup` AS `categoryGroup`,
  `baofeng_admin_v1`.`category`.`categoryGroupSort` AS `categoryGroupSort`
from
  `baofeng_admin_v1`.`category`
where
  (
  `baofeng_admin_v1`.`category`.`categoryPublishStatus` = 'login'
  );




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article` AS
select
  `article`.`id` AS `id`,
  `article`.`articleId` AS `articleId`,
  `article`.`categoryId` AS `categoryId`,
  `article`.`categoryName` AS `categoryName`,
  `article`.`articleGroupName` AS `articleGroupName`,
  `article`.`articleTagList` AS `articleTagList`,
  `article`.`articlePublishStatus` AS `articlePublishStatus`,
  `article`.`articleTitle` AS `articleTitle`,
  `article`.`articleCoverImage` AS `articleCoverImage`,
  `article`.`articleAudioUrl` AS `articleAudioUrl`,
  `article`.`articleVideoUrl` AS `articleVideoUrl`,
  `article`.`articleCreateTime` AS `articleCreateTime`,
  `article`.`articleCreateUserId` AS `articleCreateUserId`,
  `article`.`articleCreateUsername` AS `articleCreateUsername`,
  `article`.`articleUpdateTime` AS `articleUpdateTime`,
  `article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `article`.`operation` AS `operation`,
  `article`.`operationByUserId` AS `operationByUserId`,
  `article`.`operationByUser` AS `operationByUser`,
  `article`.`operationAt` AS `operationAt`,
  `article`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `article`.`articleViewCount` AS `articleViewCount`,
  `article`.`articleCommentCount` AS `articleCommentCount`,
  `article`.`articleFavoriteCount` AS `articleFavoriteCount`,
  `article`.`articlePublishTime` AS `articlePublishTime`
from
  `baofeng_app_v1_web`.`article`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article_favorite
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article_favorite` AS
select
  `baofeng_app_v1_web`.`article_favorite`.`id` AS `id`,
  `baofeng_app_v1_web`.`article_favorite`.`userId` AS `userId`,
  `baofeng_app_v1_web`.`article_favorite`.`articleId` AS `articleId`,
  `baofeng_app_v1_web`.`article_favorite`.`operation` AS `operation`,
  `baofeng_app_v1_web`.`article_favorite`.`operationByUserId` AS `operationByUserId`,
  `baofeng_app_v1_web`.`article_favorite`.`operationByUser` AS `operationByUser`,
  `baofeng_app_v1_web`.`article_favorite`.`operationAt` AS `operationAt`,
  `article`.`categoryId` AS `categoryId`,
  `article`.`categoryName` AS `categoryName`,
  `article`.`articleGroupName` AS `articleGroupName`,
  `article`.`articleTagList` AS `articleTagList`,
  `article`.`articlePublishStatus` AS `articlePublishStatus`,
  `article`.`articleTitle` AS `articleTitle`,
  `article`.`articleCoverImage` AS `articleCoverImage`,
  `article`.`articleAudioUrl` AS `articleAudioUrl`,
  `article`.`articleVideoUrl` AS `articleVideoUrl`,
  `article`.`articleCommentCount` AS `articleCommentCount`,
  `article`.`articleFavoriteCount` AS `articleFavoriteCount`,
  `article`.`articleViewCount` AS `articleViewCount`,
  `article`.`articleCreateTime` AS `articleCreateTime`
from
  (
  `baofeng_app_v1_web`.`article_favorite`
  join `baofeng_app_v1_web`.`article` on(
    (
    `baofeng_app_v1_web`.`article_favorite`.`articleId` = `article`.`articleId`
    )
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article_note
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article_note` AS
select
  `baofeng_app_v1_web`.`note`.`id` AS `id`,
  `baofeng_app_v1_web`.`note`.`noteId` AS `noteId`,
  `baofeng_app_v1_web`.`note`.`articleId` AS `articleId`,
  `baofeng_app_v1_web`.`note`.`noteContent` AS `noteContent`,
  `baofeng_app_v1_web`.`note`.`operationAt` AS `operationAt`,
  `view01_article`.`categoryId` AS `categoryId`,
  `view01_article`.`categoryName` AS `categoryName`,
  `view01_article`.`articleGroupName` AS `articleGroupName`,
  `view01_article`.`articleTagList` AS `articleTagList`,
  `view01_article`.`articlePublishStatus` AS `articlePublishStatus`,
  `view01_article`.`articleTitle` AS `articleTitle`,
  `view01_article`.`articleCoverImage` AS `articleCoverImage`,
  `view01_article`.`articleAudioUrl` AS `articleAudioUrl`,
  `view01_article`.`articleVideoUrl` AS `articleVideoUrl`,
  `view01_article`.`articleCreateTime` AS `articleCreateTime`,
  `view01_article`.`articleCreateUserId` AS `articleCreateUserId`,
  `view01_article`.`articleCreateUsername` AS `articleCreateUsername`,
  `view01_article`.`articleUpdateTime` AS `articleUpdateTime`,
  `view01_article`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `view01_article`.`articleViewCount` AS `articleViewCount`,
  `view01_article`.`articleCommentCount` AS `articleCommentCount`,
  `view01_article`.`articleFavoriteCount` AS `articleFavoriteCount`,
  `baofeng_app_v1_web`.`note`.`userId` AS `userId`
from
  (
  `baofeng_app_v1_web`.`note`
  join `baofeng_app_v1_web`.`view01_article` on(
    (
    `baofeng_app_v1_web`.`note`.`articleId` = `view01_article`.`articleId`
    )
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article_view
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article_view` AS
select
  `baofeng_app_v1_web`.`article_view`.`articleId` AS `articleId`,
  `baofeng_app_v1_web`.`article_view`.`userId` AS `userId`,
  `baofeng_app_v1_web`.`article_view`.`operationAt` AS `operationAt`,
  `view01_article`.`categoryName` AS `categoryName`,
  `view01_article`.`categoryId` AS `categoryId`,
  `view01_article`.`articleGroupName` AS `articleGroupName`,
  `view01_article`.`articleTagList` AS `articleTagList`,
  `view01_article`.`articlePublishStatus` AS `articlePublishStatus`,
  `view01_article`.`articleTitle` AS `articleTitle`,
  `view01_article`.`articleCoverImage` AS `articleCoverImage`,
  `view01_article`.`articleAudioUrl` AS `articleAudioUrl`,
  `view01_article`.`articleVideoUrl` AS `articleVideoUrl`
from
  (
  `baofeng_app_v1_web`.`article_view`
  join `baofeng_app_v1_web`.`view01_article` on(
    (
    `baofeng_app_v1_web`.`article_view`.`articleId` = `view01_article`.`articleId`
    )
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_category
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_category` AS
select
  count(
  (
    (`article`.`articlePublishStatus` = 'login')
    or NULL
  )
  ) AS `count`,
  `category`.`id` AS `id`,
  `category`.`categoryId` AS `categoryId`,
  `category`.`categoryName` AS `categoryName`,
  `category`.`categoryGroup` AS `categoryGroup`,
  `category`.`categoryGroupSort` AS `categoryGroupSort`,
  concat(
  '<',
  `category`.`categoryGroup`,
  `category`.`categoryGroupSort`,
  '>'
  ) AS `categoryGroupConcat`,
  `category`.`categoryIntro` AS `categoryIntro`,
  `category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `category`.`categoryCreateTime` AS `categoryCreateTime`,
  `category`.`categoryCreateUserId` AS `categoryCreateUserId`,
  `category`.`categoryCreateUsername` AS `categoryCreateUsername`,
  `category`.`categoryUpdateTime` AS `categoryUpdateTime`,
  `category`.`categoryUpdateUserId` AS `categoryUpdateUserId`,
  `category`.`categoryUpdateUsername` AS `categoryUpdateUsername`,
  `category`.`operation` AS `operation`,
  `category`.`operationByUserId` AS `operationByUserId`,
  `category`.`operationByUser` AS `operationByUser`,
  `category`.`operationAt` AS `operationAt`
from
  (
  `baofeng_app_v1_web`.`category`
  left join `baofeng_app_v1_web`.`article` on(
    (`category`.`categoryId` = `article`.`categoryId`)
  )
  )
group by
  `category`.`categoryId`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_comment_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_comment_user` AS
select
  `comment`.`id` AS `id`,
  `comment`.`commentId` AS `commentId`,
  `comment`.`userId` AS `userId`,
  `comment`.`articleId` AS `articleId`,
  `comment`.`likeUserIdList` AS `likeUserIdList`,
  `comment`.`commentContent` AS `commentContent`,
  `comment`.`commentStatus` AS `commentStatus`,
  `comment`.`operation` AS `operation`,
  `comment`.`operationByUserId` AS `operationByUserId`,
  `comment`.`operationByUser` AS `operationByUser`,
  `comment`.`operationAt` AS `operationAt`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`
from
  (
  `comment`
  left join `_user` on((`_user`.`userId` = `comment`.`userId`))
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_user_action
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_user_action` AS
select
  `baofeng_app_v1_web`.`_user`.`userId` AS `userId`,
  `baofeng_app_v1_web`.`_user`.`username` AS `username`,(
  select
    count(0)
  from
    `baofeng_app_v1_web`.`view01_article_favorite` `article_favorite`
  where
    (
    `article_favorite`.`userId` = `baofeng_app_v1_web`.`_user`.`userId`
    )
  ) AS `favoriteCount`,(
  select
    count(0)
  from
    `baofeng_app_v1_web`.`view01_comment_user` `article_comment`
  where
    (
    `article_comment`.`userId` = `baofeng_app_v1_web`.`_user`.`userId`
    )
  ) AS `commentCount`,(
  select
    count(0)
  from
    `baofeng_app_v1_web`.`view01_article_note` `article_note`
  where
    (
    `article_note`.`userId` = `baofeng_app_v1_web`.`_user`.`userId`
    )
  ) AS `noteCount`,(
  select
    count(0)
  from
    `baofeng_app_v1_web`.`article_view`
  where
    (
    `baofeng_app_v1_web`.`article_view`.`userId` = `baofeng_app_v1_web`.`_user`.`userId`
    )
  ) AS `viewCount`
from
  `baofeng_app_v1_web`.`_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view02_article_comment_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view02_article_comment_user` AS
select
  `view01_comment_user`.`id` AS `id`,
  `view01_comment_user`.`commentId` AS `commentId`,
  `view01_comment_user`.`userId` AS `userId`,
  `view01_article`.`articleId` AS `articleId`,
  `view01_article`.`categoryId` AS `categoryId`,
  `view01_article`.`categoryName` AS `categoryName`,
  `view01_article`.`articleGroupName` AS `articleGroupName`,
  `view01_article`.`articleTagList` AS `articleTagList`,
  `view01_article`.`articlePublishStatus` AS `articlePublishStatus`,
  `view01_article`.`articleTitle` AS `articleTitle`,
  `view01_article`.`articleCoverImage` AS `articleCoverImage`,
  `view01_article`.`articleAudioUrl` AS `articleAudioUrl`,
  `view01_article`.`articleVideoUrl` AS `articleVideoUrl`,
  `view01_article`.`articleCreateTime` AS `articleCreateTime`,
  `view01_article`.`articleCreateUserId` AS `articleCreateUserId`,
  `view01_article`.`articleCreateUsername` AS `articleCreateUsername`,
  `view01_article`.`articleUpdateTime` AS `articleUpdateTime`,
  `view01_article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `view01_article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `view01_article`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `view01_article`.`articleViewCount` AS `articleViewCount`,
  `view01_article`.`articleCommentCount` AS `articleCommentCount`,
  `view01_article`.`articleFavoriteCount` AS `articleFavoriteCount`,
  `view01_comment_user`.`operationAt` AS `operationAt`,
  `view01_comment_user`.`commentContent` AS `commentContent`,
  `view01_comment_user`.`commentStatus` AS `commentStatus`,
  `view01_comment_user`.`username` AS `username`,
  `view01_comment_user`.`userAvatar` AS `userAvatar`
from
  (
  `baofeng_app_v1_web`.`view01_comment_user`
  join `baofeng_app_v1_web`.`view01_article` on(
    (
    `view01_comment_user`.`articleId` = `view01_article`.`articleId`
    )
  )
  );





