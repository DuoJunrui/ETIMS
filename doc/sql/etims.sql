/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : etims

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/06/2019 13:38:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mod_analyze
-- ----------------------------
DROP TABLE IF EXISTS `mod_analyze`;
CREATE TABLE `mod_analyze`  (
  `analyze_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '统计分析管理ID',
  `analyze_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统计分析标题',
  `analyze_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统计分析类型',
  `analyze_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '统计分析内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '统计分析状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`analyze_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '统计分析管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mod_content
-- ----------------------------
DROP TABLE IF EXISTS `mod_content`;
CREATE TABLE `mod_content`  (
  `content_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '内容管理ID',
  `article_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `article_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章类型（1通知公告 2中心动态 3创新成果）',
  `article_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '文章状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验中心网站内容管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_content
-- ----------------------------
INSERT INTO `mod_content` VALUES (1, '温馨提醒：2018-07-01实验教学信息管理系统新版本发布啦', '通知公告', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', '超级管理员', '2019-05-14 10:52:56', '管理员');
INSERT INTO `mod_content` VALUES (2, '维护通知：2018-07-01 实验教学信息管理系统维护公告', '中心动态', '维护内容', '1', 'admin', '2018-03-16 11:33:00', '超级管理员', '2019-05-14 10:53:04', '管理员');
INSERT INTO `mod_content` VALUES (12, '关于组织参加第五届中国“互联网 +” 大学生创新创业大赛的通知', '创新成果', '<p class=\"vsbcontent_start\" style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">各系、部：</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">为贯彻落实全国教育大会精神，深入落实习近平总书记给中国“互联网”大学生创新创业大赛“青年红色筑梦之旅”大学生的重要回信精神，贯彻落实《国务院办公厅关于深化高等学校创新创业教育改革的实施意见》（国办发〔2015〕36号），根据教育部对第五届中国“互联网+”大学生创新创业大赛（以下简称“国赛”）的部署和广西赛区选拔赛（以下简称“区赛”）的工作安排。经研究，我校将组织大学生参加第五届中国“互联网+”大学生创新创业大赛，现将参赛的有关事项通知如下：</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">一、主题</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">敢为人先放飞青春梦 勇立潮头建功新时代</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">二、比赛赛制</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">大赛采用校级初赛、省级复赛、全国总决赛三级赛制。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">三、组织机构</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">本次大赛由自治区党委教育工委、教育厅、自治区党委统战部、自治区党委网信办、自治区人力资源和社会保障厅、自治区生态环境厅、自治区农业农村厅、自治区知识产权局、广西科学院、共青团广西区委主办，广西师范大学承办，广西师范大学出版社集团协办。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">大赛校级初赛由桂林电子科技大学信息科技学院主办，学校创新创业学院承办。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">四、参赛项目要求及参赛对象</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">参赛项目要求及类型详见附件1、附件2、附件3。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">五、参赛报名及要求</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（一）参赛报名。参赛团队可通过登录大赛官网“全国大学生创业服务网”（cy.ncss.cn）、微信公众号（名称为“全国大学生创业服务网”或“中国‘互联网+’大学生创新创业大赛”）任一方式进行报名。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（二）参赛项目来源。区教育厅已经明确，参赛团队不用纠结于是否含有“互联网”三个字的题目或项目，“互联网+”只是个时代标签而已，符合参赛要求的创新创业项目均可报名参赛。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（1）各系按照在校生人数每100名上报两项以上,参加“青年红色筑梦之旅”赛道，参赛项目数量达到每500名在校生1项以上;</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（2）已参加过其他各类学科竞赛的项目均可报名参赛；</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（3）教师科研转化项目均可报名参赛；</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（4）符合大赛参赛要求的其他项目均可报名参赛。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">(三)各系部报名。各系部务必在2019年6月5日前按预期目标组织学生完成网上报名。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">六、校级初赛评审程序</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">校级初赛评审的宗旨是遴选出我校优秀项目参加广西区赛。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">1.各系初评。学校综合考虑各系部报名团队数和创新创业教育工作情况，分配各系部推荐区赛名额（具体名额另行通知）。各系部组织本系部学生为负责人的项目初评工作，并根据分配推荐区赛名额按系部初评排序，于6月6日前以系为单位报送材料：将第五届中国“互联网+”大学生创新创业大赛广西赛区选拔赛项目推荐汇总表（5）、项目申报书（4）、项目计划书纸质版各1份报送行政楼115办公室；材料电子版<a href=\"mailto:%E5%8F%91%E9%80%81%E8%87%B3%E9%82%AE%E7%AE%B1363256990@qq.com\" style=\"color: rgb(30, 80, 162); text-decoration: underline; outline: none; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; cursor: pointer; line-height: 2;\">发送至邮箱3340470743@qq.com</a>；不接受学生个人单独报送项目材料。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">2.学校评审。创新创业学院对各系部推荐项目进行评审，择优推荐参加区赛项目。评审答辩时间另行通知，评审推荐结果在学校进行公示。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">七、提交材料要求</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（一）纸质材料。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（一）项目申报书：项目申报书电子版名称以“系部名称-赛道-项目名称-项目负责人姓名-申报书”的方式命名（如：信息-高教主赛道-项目名称-张三-申报书）。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（二）项目计划书：创意组根据团队创意设计撰写项目计划书；初创组、成长组根据公司实际经营情况撰写项目计划书，并提供组织机构代码证、营业执照复印件、投资协议及其他佐证材料（专利、著作、政府批文、鉴定材料等）。计划书内容主要包括：产品/服务介绍、市场分析及定位、商业模式、营销策略、财务分析、风险控制、团队介绍及其他说明。项目计划书电子版（word版）以“系部名称-创意/初创/成长组-项目名称-项目负责人姓名-计划书”的方式命名。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">八、其他事项</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（一）各系部要认真做好大赛的宣传、发动工作，组织和鼓励学生积极参与大赛，为参赛团队提供必要的条件和支持；要把大赛作为深化创新创业教育改革的重要抓手，积极推进学生创新创业训练和实践，切实提高学生的创新精神、创业意识和创新创业能力。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（二）各系部的报名和获奖情况将作为系部年终考核指标体系中创新创业项目开展情况的重要依据。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">（三）其他未尽事宜，另行通知。</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><br></p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">附件：1.第五届中国“互联网+”大学生创新创业大赛广西赛区选拔赛高教主赛道方案</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.第五届中国“互联网+”大学生创新创业大赛广西赛区选拔赛“青年红色筑梦之旅”活动方案</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.第五届中国“互联网+”大学生创新创业大赛国际赛道方案</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.项目申报书</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;5.第五届中国“互联网+”大学生创新创业大赛广西赛区选拔赛汇总表</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><br></p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 桂林电子科技大学信息科技学院</p><p style=\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;2019年5月8日</p>', '0', '超级管理员', '2019-05-14 10:33:04', '超级管理员', '2019-05-14 10:53:33', NULL);

-- ----------------------------
-- Table structure for mod_equipment
-- ----------------------------
DROP TABLE IF EXISTS `mod_equipment`;
CREATE TABLE `mod_equipment`  (
  `equipment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '实验室设备表id',
  `lab_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属实验室',
  `equipment_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备名称',
  `equipment_count` int(10) NOT NULL COMMENT '设备数量',
  `equipment_use` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备用途',
  `operate_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作状态（0代表入库 1代表出库）',
  `operate_time` datetime(0) NULL DEFAULT NULL COMMENT '出入库时间',
  `register` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登记人',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出入库备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验室设备表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_equipment
-- ----------------------------
INSERT INTO `mod_equipment` VALUES (5, '4520', '显示器', 100, '用于电脑配置', '0', '2019-04-28 21:26:10', '超级管理员', '电子电路技术补购', '2019-04-28 21:26:10', '2019-05-09 19:55:18', '1');
INSERT INTO `mod_equipment` VALUES (6, '4523', '电脑主机', 1000, '用户实验室教学', '0', '2019-04-28 21:36:05', '超级管理员', '驱动器', '2019-04-28 21:36:05', NULL, '0');
INSERT INTO `mod_equipment` VALUES (7, '1203', 'U盘', 100, '用于电脑重装系统', '1', '2019-04-28 21:37:32', '多俊睿', '用于电脑配置', '2019-04-28 21:37:32', '2019-04-28 21:39:24', '2');
INSERT INTO `mod_equipment` VALUES (8, '20123', 'officer软件', 100, '安装正版系统软件', '0', '2019-04-29 10:11:38', '多俊睿', '用户实验室教学', '2019-04-29 10:11:38', NULL, '0');
INSERT INTO `mod_equipment` VALUES (9, '54542', '电池', 332, '鼠标键盘配置', '1', '2019-04-29 10:11:57', '多俊睿', '用于电脑重装系统', '2019-04-29 10:11:57', '2019-05-03 19:56:57', '0');
INSERT INTO `mod_equipment` VALUES (10, '4520', '示波器', 100, '电子电路技术补购', '0', '2019-05-02 20:27:08', '超级管理员', '安装正版系统软件', '2019-05-02 20:27:08', NULL, '0');
INSERT INTO `mod_equipment` VALUES (11, '4523', '系统磁盘拖', 100, '驱动器', '0', '2019-05-09 17:20:49', '超级管理员', '鼠标键盘配置', '2019-05-09 17:20:49', NULL, '0');
INSERT INTO `mod_equipment` VALUES (12, '2453', '晶体管', 100, '用于电脑配置', '1', '2019-05-09 19:55:08', '超级管理员', '电子电路技术补购', '2019-05-09 19:55:08', '2019-04-28 21:39:24', '0');
INSERT INTO `mod_equipment` VALUES (13, '4523', '单片机实验盒', 100, '用户实验室教学', '0', '2019-05-02 20:27:08', '多老师', '驱动器', '2019-04-28 21:26:10', NULL, '0');
INSERT INTO `mod_equipment` VALUES (14, '4234', '散热器', 200, '用于电脑重装系统', '0', '2019-05-09 17:20:49', '李老师', '用于电脑配置', '2019-04-28 21:36:05', NULL, '0');
INSERT INTO `mod_equipment` VALUES (15, '4525', '电脑椅', 300, '安装正版系统软件', '1', '2019-05-09 19:55:08', '黄老师', '用户实验室教学', '2019-04-28 21:37:32', '2019-05-09 19:55:18', '2');
INSERT INTO `mod_equipment` VALUES (16, '21306', '转接线', 200, '鼠标键盘配置', '0', '2019-05-02 20:27:08', '朱老师', '用于电脑重装系统', '2019-04-29 10:11:38', NULL, '0');
INSERT INTO `mod_equipment` VALUES (17, '21301', '网线', 100, '电子电路技术补购', '1', '2019-05-09 17:20:49', '何老师', '安装正版系统软件', '2019-04-29 10:11:57', '2019-04-28 21:39:24', '0');
INSERT INTO `mod_equipment` VALUES (18, '12031', '教学书籍', 180, '驱动器', '0', '2019-05-09 19:55:08', '贺老师', '鼠标键盘配置', '2019-05-02 20:27:08', '2019-05-03 14:24:17', '0');
INSERT INTO `mod_equipment` VALUES (19, '31201', '显示器', 180, '用于电脑配置', '0', '2019-05-02 20:27:08', '裴老师', '电子电路技术补购', '2019-05-09 17:20:49', NULL, '0');
INSERT INTO `mod_equipment` VALUES (20, '31205', '电脑主机', 180, '用户实验室教学', '1', '2019-05-09 17:20:49', '周老师', '驱动器', '2019-05-09 19:55:08', '2019-05-09 19:55:18', '0');
INSERT INTO `mod_equipment` VALUES (21, '21205', 'U盘', 180, '用于电脑重装系统', '0', '2019-05-09 19:55:08', '刘老师', '用于电脑配置', '2019-04-28 21:26:10', NULL, '0');
INSERT INTO `mod_equipment` VALUES (22, '52101', 'Oracle数据库软件', 20, '学生机及教师机激活正版Oracle数据库软件，用于实验教学', '0', '2019-05-02 20:27:08', '多老师', '用户实验室教学', '2019-04-28 21:36:05', '2019-05-15 20:19:18', '0');
INSERT INTO `mod_equipment` VALUES (23, '21306', '电池', 160, '鼠标键盘配置', '1', '2019-05-09 17:20:49', '李老师', '用于电脑重装系统', '2019-04-28 21:37:32', NULL, '2');
INSERT INTO `mod_equipment` VALUES (24, '21301', '示波器', 250, '电子电路技术补购', '0', '2019-05-09 19:55:08', '黄老师', '安装正版系统软件', '2019-04-29 10:11:38', NULL, '0');
INSERT INTO `mod_equipment` VALUES (25, '12031', '系统磁盘拖', 340, '驱动器', '1', '2019-05-02 20:27:08', '朱老师', '鼠标键盘配置', '2019-04-29 10:11:57', '2019-05-03 19:56:57', '0');
INSERT INTO `mod_equipment` VALUES (26, '31201', '晶体管', 430, '用于电脑配置', '0', '2019-05-09 17:20:49', '何老师', '电子电路技术补购', '2019-05-02 20:27:08', NULL, '0');
INSERT INTO `mod_equipment` VALUES (27, '31205', '单片机实验盒', 520, '用户实验室教学', '0', '2019-05-09 19:55:08', '贺老师', '驱动器', '2019-05-09 17:20:49', NULL, '0');
INSERT INTO `mod_equipment` VALUES (28, '21205', '散热器', 610, '用于电脑重装系统', '1', '2019-05-02 20:27:08', '裴老师', '用于电脑配置', '2019-05-09 19:55:08', NULL, '0');
INSERT INTO `mod_equipment` VALUES (29, '52101', '电脑椅', 700, '安装正版系统软件', '0', '2019-05-09 17:20:49', '周老师', '用户实验室教学', '2019-04-28 21:26:10', NULL, '0');
INSERT INTO `mod_equipment` VALUES (30, '21306', '转接线', 790, '鼠标键盘配置', '0', '2019-05-09 19:55:08', '刘老师', '用于电脑重装系统', '2019-04-28 21:36:05', NULL, '0');
INSERT INTO `mod_equipment` VALUES (31, '21301', '网线', 880, '电子电路技术补购', '1', '2019-05-02 20:27:08', '多老师', '安装正版系统软件', '2019-04-28 21:37:32', NULL, '2');
INSERT INTO `mod_equipment` VALUES (32, '12031', '教学书籍', 970, '驱动器', '0', '2019-05-09 17:20:49', '李老师', '鼠标键盘配置', '2019-04-29 10:11:38', NULL, '0');
INSERT INTO `mod_equipment` VALUES (33, '31201', '显示器', 1060, '用于电脑配置', '1', '2019-05-09 19:55:08', '黄老师', '电子电路技术补购', '2019-04-29 10:11:57', '2019-05-03 14:24:17', '0');
INSERT INTO `mod_equipment` VALUES (34, '31205', '电脑主机', 1150, '用户实验室教学', '0', '2019-05-02 20:27:08', '朱老师', '驱动器', '2019-05-02 20:27:08', '2019-05-03 19:56:57', '0');
INSERT INTO `mod_equipment` VALUES (35, '21205', 'U盘', 1240, '用于电脑重装系统', '0', '2019-05-09 17:20:49', '何老师', '用于电脑配置', '2019-05-09 17:20:49', '2019-05-09 19:55:18', '0');
INSERT INTO `mod_equipment` VALUES (36, '52101', 'officer软件', 1330, '安装正版系统软件', '1', '2019-05-09 19:55:08', '贺老师', '用户实验室教学', '2019-05-09 19:55:08', NULL, '0');
INSERT INTO `mod_equipment` VALUES (37, '21306', '电池', 1420, '鼠标键盘配置', '0', '2019-05-02 20:27:08', '裴老师', '用于电脑重装系统', '2019-05-09 22:29:27', '2019-04-28 21:39:24', '0');
INSERT INTO `mod_equipment` VALUES (38, '21301', '示波器', 1510, '电子电路技术补购', '0', '2019-05-09 17:20:49', '周老师', '安装正版系统软件', '2019-05-10 01:03:46', '2019-05-03 14:24:17', '2');
INSERT INTO `mod_equipment` VALUES (39, '12031', '系统磁盘拖', 130, '驱动器', '1', '2019-05-09 19:55:08', '刘老师', '鼠标键盘配置', '2019-05-10 03:38:05', NULL, '0');
INSERT INTO `mod_equipment` VALUES (40, '31201', '晶体管', 120, '用于电脑配置', '0', '2019-05-02 20:27:08', '多老师', '电子电路技术补购', '2019-05-10 06:12:24', NULL, '0');
INSERT INTO `mod_equipment` VALUES (41, '31205', '单片机实验盒', 110, '用户实验室教学', '1', '2019-05-09 17:20:49', '李老师', '驱动器', '2019-05-10 08:46:43', NULL, '0');
INSERT INTO `mod_equipment` VALUES (42, '21205', '散热器', 100, '用于电脑重装系统', '0', '2019-05-09 19:55:08', '黄老师', '用于电脑配置', '2019-05-10 11:21:02', NULL, '0');
INSERT INTO `mod_equipment` VALUES (43, '52101', '电脑椅', 90, '安装正版系统软件', '0', '2019-05-02 20:27:08', '朱老师', '用户实验室教学', '2019-05-10 13:55:21', NULL, '0');
INSERT INTO `mod_equipment` VALUES (44, '21306', '转接线', 80, '鼠标键盘配置', '1', '2019-05-09 17:20:49', '何老师', '用于电脑重装系统', '2019-05-10 16:29:40', NULL, '0');
INSERT INTO `mod_equipment` VALUES (45, '21301', '网线', 70, '电子电路技术补购', '0', '2019-05-09 19:55:08', '贺老师', '安装正版系统软件', '2019-05-10 19:03:59', NULL, '0');
INSERT INTO `mod_equipment` VALUES (46, '12031', '教学书籍', 60, '用于电脑配置', '0', '2019-05-02 20:27:08', '裴老师', '鼠标键盘配置', '2019-05-10 21:38:18', NULL, '2');
INSERT INTO `mod_equipment` VALUES (47, '31201', '显示器', 50, '用户实验室教学', '1', '2019-05-09 17:20:49', '周老师', '电子电路技术补购', '2019-05-11 00:12:37', NULL, '0');
INSERT INTO `mod_equipment` VALUES (48, '31205', '电脑主机', 40, '用于电脑重装系统', '0', '2019-05-09 19:55:08', '刘老师', '驱动器', '2019-05-11 02:46:56', NULL, '0');
INSERT INTO `mod_equipment` VALUES (49, '21205', 'U盘', 30, '安装正版系统软件', '1', '2019-05-02 20:27:08', '多老师', '用于电脑配置', '2019-05-11 05:21:15', NULL, '0');
INSERT INTO `mod_equipment` VALUES (50, '52101', 'officer软件', 20, '鼠标键盘配置', '0', '2019-05-09 17:20:49', '李老师', '用户实验室教学', '2019-05-11 07:55:34', NULL, '0');
INSERT INTO `mod_equipment` VALUES (51, '21306', '电池', 10, '电子电路技术补购', '0', '2019-05-09 19:55:08', '黄老师', '用于电脑重装系统', '2019-05-11 10:29:53', NULL, '0');
INSERT INTO `mod_equipment` VALUES (52, '21301', '示波器', 20, '驱动器', '1', '2019-05-02 20:27:08', '朱老师', '安装正版系统软件', '2019-05-11 13:04:12', NULL, '0');
INSERT INTO `mod_equipment` VALUES (53, '12031', '系统磁盘拖', 500, '用于电脑配置', '0', '2019-05-09 17:20:49', '何老师', '鼠标键盘配置', '2019-05-11 15:38:31', NULL, '0');

-- ----------------------------
-- Table structure for mod_grade
-- ----------------------------
DROP TABLE IF EXISTS `mod_grade`;
CREATE TABLE `mod_grade`  (
  `grade_id` bigint(20) NOT NULL COMMENT '考核成绩管理',
  `stu_id` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `stu_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `semester` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  `course_id` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程序号',
  `course_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `course_credit` int(5) NULL DEFAULT NULL COMMENT '课程学分',
  `usual_score` int(5) NULL DEFAULT NULL COMMENT '平时成绩',
  `exam_score` int(5) NULL DEFAULT NULL COMMENT '考核成绩',
  `total_score` int(5) NULL DEFAULT NULL COMMENT '总评成绩',
  `check_type` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考核类型（重修、正考、补考）',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考核成绩管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_grade
-- ----------------------------
INSERT INTO `mod_grade` VALUES (1, '1551200124', '学生A', '2016-2017学年第二学期', 'KC23011_01', '计算机组成原理', 2, 80, 75, 77, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (2, '1551200124', '学生A', '2016-2017学年第二学期', 'KC23011_02', '电子技术基础', 3, 70, 60, 63, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (3, '1551200124', '学生A', '2018-2019学年第二学期', 'KC23011_03', ' 现代通信网络技术', 2, 90, 50, 62, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (4, '1551200124', '学生A', '2016-2017学年第二学期', 'KC23011_04', '光纤通信系统', 2, 65, 80, 76, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (5, '1551200124', '学生A', '2016-2017学年第二学期', 'KC23011_05', '网页制作', 4, 80, 85, 84, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (6, '1551200124', '学生A', '2016-2017学年第二学期', 'KC23011_06', '课程ABC', 2, 85, 65, 71, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (7, '1551200124', '学生A', '2018-2019学年第二学期', 'KC23011_07', '课程123', 3, 65, 90, 83, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (8, '1551200124', '学生A', '2016-2017学年第二学期', 'KC23011_08', '计算机组成原理', 3, 90, 80, 83, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (9, '1551200124', '学生A', '2016-2017学年第一学期', 'KC23011_09', '电子技术基础', 2, 80, 85, 84, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (10, '1551200124', '学生A', '2016-2017学年第一学期', 'KC23011_10', ' 现代通信网络技术', 2, 85, 50, 61, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (11, '1551200124', '学生A', '2016-2017学年第一学期', 'KC23011_01', '光纤通信系统', 3, 50, 70, 64, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (12, '1551200124', '学生A', '2016-2017学年第一学期', 'KC23011_02', '网页制作', 2, 70, 90, 84, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (13, '1551200124', '学生A', '2016-2017学年第一学期', 'KC23011_03', '课程ABC', 2, 90, 80, 83, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (14, '1551200125', '学生B', '2016-2017学年第一学期', 'KC23011_04', '课程123', 4, 65, 85, 79, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (15, '1551200125', '学生B', '2018-2019学年第二学期', 'KC23011_05', '计算机组成原理', 2, NULL, NULL, NULL, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (16, '1551200125', '学生B', '2016-2017学年第一学期', 'KC23011_06', '电子技术基础', 3, 85, 90, 89, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (17, '1551200125', '学生B', '2018-2019学年第二学期', 'KC23011_07', ' 现代通信网络技术', 3, 65, 80, 76, '2', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (18, '1551200125', '学生B', '2018-2019学年第二学期', 'KC23011_08', '光纤通信系统', 2, 90, 85, 87, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (19, '1551200125', '学生B', '2018-2019学年第二学期', 'KC23011_09', '网页制作', 2, NULL, NULL, NULL, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (20, '1551200125', '学生B', '2018-2019学年第二学期', 'KC23011_10', '课程ABC', 3, 85, 70, 75, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (21, '1551200125', '学生B', '2018-2019学年第二学期', 'KC23011_01', '课程123', 2, 80, 90, 87, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (22, '1551200125', '学生B', '2016-2017学年第二学期', 'KC23011_02', '计算机组成原理', 2, 70, 65, 67, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (23, '1551200125', '学生B', '2016-2017学年第二学期', 'KC23011_03', '电子技术基础', 4, 90, 90, 90, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (24, '1551200101', '学生1', '2016-2017学年第二学期', 'KC23011_04', ' 现代通信网络技术', 2, 65, 65, 65, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (25, '1551200102', '学生2', '2016-2017学年第二学期', 'KC23011_05', '光纤通信系统', 3, 80, 80, 80, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (26, '1551200103', '学生3', '2016-2017学年第二学期', 'KC23011_06', '网页制作', 3, 85, 85, 85, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (27, '1551200104', '学生4', '2016-2017学年第二学期', 'KC23011_07', '课程ABC', 2, 65, 65, 65, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (28, '1551200105', '学生5', '2016-2017学年第二学期', 'KC23011_08', '课程123', 2, 90, 90, 90, '3', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (29, '1551200106', '学生6', '2016-2017学年第二学期', 'KC23011_09', '计算机组成原理', 3, 80, 80, 80, '3', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (30, '1551200107', '学生7', '2018-2019学年第二学期', 'KC23011_10', '电子技术基础', 2, 85, 85, 85, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (31, '1551200108', '学生8', '2016-2017学年第一学期', 'KC23011_01', ' 现代通信网络技术', 2, 80, 80, 80, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (32, '1551200109', '学生9', '2016-2017学年第一学期', 'KC23011_02', '光纤通信系统', 4, 70, 85, 81, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (33, '1551200110', '学生10', '2016-2017学年第一学期', 'KC23011_03', '网页制作', 2, 90, 65, 73, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (34, '1551200111', '学生11', '2016-2017学年第一学期', 'KC23011_04', '课程ABC', 3, 65, 90, 83, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (35, '1551200112', '学生12', '2016-2017学年第一学期', 'KC23011_05', '课程123', 3, 80, 80, 80, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (36, '1551200113', '学生13', '2016-2017学年第一学期', 'KC23011_06', '计算机组成原理', 2, 85, 85, 85, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (37, '1551200101', '学生1', '2016-2017学年第一学期', 'KC23011_07', '电子技术基础', 2, 65, 80, 76, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (38, '1551200102', '学生2', '2016-2017学年第一学期', 'KC23011_08', ' 现代通信网络技术', 3, 90, 85, 87, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (39, '1551200103', '学生3', '2016-2017学年第二学期', 'KC23011_09', '光纤通信系统', 2, 80, 65, 70, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (40, '1551200104', '学生4', '2016-2017学年第二学期', 'KC23011_10', '网页制作', 2, 85, 90, 89, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (41, '1551200105', '学生5', '2016-2017学年第二学期', 'KC23011_01', '课程ABC', 4, 80, 80, 80, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (42, '1551200106', '学生6', '2016-2017学年第二学期', 'KC23011_02', '课程123', 2, 70, 85, 81, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (43, '1551200107', '学生7', '2016-2017学年第二学期', 'KC23011_03', '计算机组成原理', 3, 90, 50, 62, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (44, '1551200108', '学生8', '2016-2017学年第二学期', 'KC23011_04', '电子技术基础', 3, 65, 70, 69, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (45, '1551200109', '学生9', '2018-2019学年第二学期', 'KC23011_05', ' 现代通信网络技术', 2, 80, 90, 87, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (46, '1551200110', '学生10', '2016-2017学年第一学期', 'KC23011_06', '光纤通信系统', 2, 85, 65, 71, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (47, '1551200111', '学生11', '2016-2017学年第一学期', 'KC23011_07', '网页制作', 3, 65, 80, 76, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (48, '1551200112', '学生12', '2016-2017学年第一学期', 'KC23011_08', '课程ABC', 2, 90, 85, 87, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (49, '1551200113', '学生13', '2016-2017学年第一学期', 'KC23011_09', '课程123', 2, 80, 65, 70, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (50, '1551200101', '学生1', '2016-2017学年第一学期', 'KC23011_10', '计算机组成原理', 4, 85, 90, 89, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (51, '1551200102', '学生2', '2016-2017学年第一学期', 'KC23011_01', '电子技术基础', 2, 80, 80, 80, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (52, '1551200103', '学生3', '2016-2017学年第一学期', 'KC23011_02', ' 现代通信网络技术', 3, 70, 85, 81, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (53, '1551200104', '学生4', '2016-2017学年第一学期', 'KC23011_03', '光纤通信系统', 3, 90, 50, 62, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (54, '1551200105', '学生5', '2016-2017学年第二学期', 'KC23011_04', '网页制作', 2, 65, 70, 69, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (55, '1551200106', '学生6', '2016-2017学年第二学期', 'KC23011_05', '课程ABC', 2, 80, 80, 80, '1', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (56, '1551200107', '学生7', '2016-2017学年第二学期', 'KC23011_06', '课程123', 3, 85, 85, 85, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (57, '1551200108', '学生8', '2016-2017学年第二学期', 'KC23011_07', '计算机组成原理', 2, 65, 65, 65, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (58, '1551200109', '学生9', '2016-2017学年第二学期', 'KC23011_08', '电子技术基础', 2, 90, 90, 90, '0', '1900-01-20 21:36:05', NULL, '0');
INSERT INTO `mod_grade` VALUES (59, '1551200110', '学生10', '2018-2019学年第二学期', 'KC23011_09', ' 现代通信网络技术', 4, 80, 80, 80, '0', '1900-01-20 21:36:05', NULL, '0');

-- ----------------------------
-- Table structure for mod_lab
-- ----------------------------
DROP TABLE IF EXISTS `mod_lab`;
CREATE TABLE `mod_lab`  (
  `lab_id` bigint(20) NOT NULL COMMENT '实验教室管理',
  `lab_depart` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验室归属系别',
  `lab_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验室编号',
  `lab_type` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验室类别（云计算实验室、大数据实验室、沙盘演练室）',
  `principal` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验室负责人',
  `capacity` int(10) NOT NULL COMMENT '实验室容量',
  `min_capacity` int(10) NULL DEFAULT NULL COMMENT '开放人数下限',
  `open` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验室是否开放(1为开放，0为不开放)',
  `open_time` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开放时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`lab_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mod_lab_order
-- ----------------------------
DROP TABLE IF EXISTS `mod_lab_order`;
CREATE TABLE `mod_lab_order`  (
  `lab_order_id` bigint(20) NOT NULL COMMENT '实验室预约',
  `user_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `lab_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验室编号',
  `reserved` int(10) NULL DEFAULT NULL COMMENT '已经预定人数',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '使用开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '使用结束时间',
  `order_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`lab_order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mod_material
-- ----------------------------
DROP TABLE IF EXISTS `mod_material`;
CREATE TABLE `mod_material`  (
  `material_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '教学资源表ID主键',
  `course` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程类别（如计算机组成原理）',
  `category` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资料分类（教学课件、实验指导书、试题等）',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资料文件名称',
  `uploader` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资料上传者',
  `file_size` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `file_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型（doc、zip、ppt）',
  `download_count` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下载次数',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件磁盘路径',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间（上传时间）',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`material_id`) USING BTREE,
  UNIQUE INDEX `id`(`material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学资源管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_material
-- ----------------------------
INSERT INTO `mod_material` VALUES (3, '计算机组成原理', '上课教学资料', '计算机组成原理第二章实验报告模板', '超级管理员', '1.6M', 'zip', '6', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-02 15:12:04', '2019-05-02 20:32:13', '0');
INSERT INTO `mod_material` VALUES (4, '电子技术基础', '上课教学资料', '电子技术基础实验试题资料', '超级管理员', '1.6M', 'docx', '123', '2019/05/02/13895a97464fcc2154df2dc224268a62.jpg', '2019-05-02 15:30:10', '2019-05-03 20:32:13', '0');
INSERT INTO `mod_material` VALUES (8, '电子技术基础', '上课教学资料', '电子技术基础参考文献资料', '多俊睿', '2.8M', 'pdf', '126', '2019/05/03/c4fecbd0167bdbde0201f3de41444c97.jpg', '2019-05-03 12:45:39', '2019-05-04 20:32:13', '0');
INSERT INTO `mod_material` VALUES (9, '现代通信网络技术', '实验试题资料', '现代通信网络技术近期热门技术要点', '超级管理员', '1.6M', 'xls', '129', '2019/05/03/0fc5673c41c237700d00499f2a609f85.jpg', '2019-05-03 14:21:27', NULL, '0');
INSERT INTO `mod_material` VALUES (10, '现代通信网络技术', '实验试题资料', '现代通信网络技术参考文献', '超级管理员', '2.8M', 'xlsx', '132', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b59.jpg', '2019-05-03 15:57:15', NULL, '0');
INSERT INTO `mod_material` VALUES (11, '网络设备及应用', '实验试题资料', '网络设备及应用学习资料', '黄老师', '5.6M', 'ppt', '135', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-03 17:33:03', '2019-05-29 20:32:13', '0');
INSERT INTO `mod_material` VALUES (12, '光纤通信系统', '实验试题资料', '光纤通信系统试题资料', '刘老师', '10.2M', 'pptx', '138', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-03 19:08:51', NULL, '0');
INSERT INTO `mod_material` VALUES (13, '程控交换技术', '实验案例资料', '程控交换技术学习资料', '朱老师', '3.6M', 'doc', '141', '2019/05/02/13895a97464fcc2154df2dc224268a63.jpg', '2019-05-03 20:44:39', NULL, '0');
INSERT INTO `mod_material` VALUES (14, '网页制作', '实验案例资料', '网页制作学习资料', '廖老师', '8.7M', 'doc', '144', '2019/05/03/c4fecbd0167bdbde0201f3de41444c98.jpg', '2019-05-03 22:20:27', '2019-05-29 20:32:13', '0');
INSERT INTO `mod_material` VALUES (15, '数据通信原理', '实验案例资料', '数据通信原理学习资料', '李老师', '2.9M', 'zip', '147', '2019/05/03/0fc5673c41c237700d00499f2a609f86.jpg', '2019-05-03 23:56:15', NULL, '0');
INSERT INTO `mod_material` VALUES (16, 'Linux操作系统与网络构建', '文献参考资料', 'Linux操作系统与网络构建学习资料', '教务处', '1.6M', 'pdf', '150', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b60.jpg', '2019-05-04 01:32:03', NULL, '0');
INSERT INTO `mod_material` VALUES (17, 'Axure原型设计（选修）', '文献参考资料', 'Axure原型设计（选修）', '王老师', '1.6M', 'docx', '39', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-04 03:07:51', NULL, '0');
INSERT INTO `mod_material` VALUES (18, '微信小程序技术及应用（选修）', '文献参考资料', '微信小程序技术及应用（选修）', '黄老师', '2.9M', 'doc', '3', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-04 04:43:39', NULL, '0');
INSERT INTO `mod_material` VALUES (19, '通信网络综合实训', '其他学习资料', '通信网络综合实训', '刘老师', '1.7M', 'zip', '6', '2019/05/02/13895a97464fcc2154df2dc224268a64.jpg', '2019-05-04 06:19:27', NULL, '0');
INSERT INTO `mod_material` VALUES (20, '数字逻辑电路实训', '其他学习资料', '数字逻辑电路实训', '朱老师', '2.9M', 'docx', '123', '2019/05/03/c4fecbd0167bdbde0201f3de41444c99.jpg', '2019-05-04 07:55:15', NULL, '0');
INSERT INTO `mod_material` VALUES (21, '单片机应用技术实训', '其他学习资料', '单片机应用技术实训', '廖老师', '5.7M', 'pdf', '126', '2019/05/03/0fc5673c41c237700d00499f2a609f87.jpg', '2019-05-04 09:31:03', '2019-05-17 20:32:13', '0');
INSERT INTO `mod_material` VALUES (22, '云计算与网络虚拟化设计实训', '上课教学资料', '云计算与网络虚拟化设计实训', '李老师', '10.3M', 'xls', '129', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b61.jpg', '2019-05-04 11:06:51', '2019-05-18 20:32:13', '0');
INSERT INTO `mod_material` VALUES (23, '电路与电子技术基础实验', '上课教学资料', '电路与电子技术基础实验', '教务处', '3.7M', 'xlsx', '57', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-04 12:42:39', NULL, '0');
INSERT INTO `mod_material` VALUES (24, '编译原理实验', '上课教学资料', '编译原理实验', '王老师', '8.8M', 'ppt', '60', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-04 14:18:27', NULL, '0');
INSERT INTO `mod_material` VALUES (25, '数据库原理及应用实验', '上课教学资料', '数据库原理及应用实验', '黄老师', '2.10M', 'pptx', '63', '2019/05/02/13895a97464fcc2154df2dc224268a65.jpg', '2019-05-04 15:54:15', NULL, '0');
INSERT INTO `mod_material` VALUES (26, '程控交换技术实验', '实验试题资料', '程控交换技术实验', '刘老师', '1.6M', 'doc', '66', '2019/05/03/c4fecbd0167bdbde0201f3de41444c100.jpg', '2019-05-04 17:30:03', '2019-05-29 20:32:13', '0');
INSERT INTO `mod_material` VALUES (27, '高频电子线路A实验', '文献参考资料', '高频电子线路A实验', '朱老师', '1.6M', 'doc', '69', '2019/05/03/0fc5673c41c237700d00499f2a609f88.jpg', '2019-05-04 19:05:51', NULL, '0');
INSERT INTO `mod_material` VALUES (28, '光纤通信系统实验', '其他学习资料', '光纤通信系统实验', '廖老师', '2.10M', 'zip', '72', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b62.jpg', '2019-05-04 20:41:39', NULL, '0');
INSERT INTO `mod_material` VALUES (29, '计算机组成原理', '其他学习资料', '计算机组成原理', '李老师', '1.8M', 'pdf', '75', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-04 22:17:27', '2019-05-29 20:32:13', '0');
INSERT INTO `mod_material` VALUES (30, '计算机组成原理', '其他学习资料', '计算机组成原理', '教务处', '2.10M', 'docx', '78', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-04 23:53:15', NULL, '0');
INSERT INTO `mod_material` VALUES (31, '电子技术基础', '上课教学资料', '电子技术基础', '王老师', '5.8M', 'doc', '81', '2019/05/02/13895a97464fcc2154df2dc224268a66.jpg', '2019-05-05 01:29:03', '2019-05-27 20:32:13', '0');
INSERT INTO `mod_material` VALUES (32, '电子技术基础', '上课教学资料', '电子技术基础', '黄老师', '10.4M', 'zip', '84', '2019/05/03/c4fecbd0167bdbde0201f3de41444c101.jpg', '2019-05-05 03:04:51', '2019-05-28 20:32:13', '0');
INSERT INTO `mod_material` VALUES (33, '现代通信网络技术', '上课教学资料', '现代通信网络技术', '刘老师', '3.8M', 'docx', '87', '2019/05/03/0fc5673c41c237700d00499f2a609f89.jpg', '2019-05-05 04:40:39', '2019-05-29 20:32:13', '0');
INSERT INTO `mod_material` VALUES (34, '现代通信网络技术', '上课教学资料', '现代通信网络技术', '朱老师', '8.9M', 'pdf', '90', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b63.jpg', '2019-05-05 06:16:27', '2019-05-30 20:32:13', '0');
INSERT INTO `mod_material` VALUES (35, '网络设备及应用', '实验试题资料', '网络设备及应用', '廖老师', '2.11M', 'xls', '93', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-05 07:52:15', '2019-05-31 20:32:13', '0');
INSERT INTO `mod_material` VALUES (36, '光纤通信系统', '文献参考资料', '光纤通信系统', '李老师', '1.6M', 'xlsx', '96', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-05 09:28:03', NULL, '0');
INSERT INTO `mod_material` VALUES (37, '程控交换技术', '其他学习资料', '程控交换技术', '教务处', '1.6M', 'ppt', '3', '2019/05/02/13895a97464fcc2154df2dc224268a67.jpg', '2019-05-05 11:03:51', NULL, '0');
INSERT INTO `mod_material` VALUES (39, '数据通信原理', '其他学习资料', '数据通信原理', '黄老师', '1.9M', 'doc', '123', '2019/05/03/0fc5673c41c237700d00499f2a609f90.jpg', '2019-05-05 14:15:27', NULL, '0');
INSERT INTO `mod_material` VALUES (40, 'Linux操作系统与网络构建', '上课教学资料', 'Linux操作系统与网络构建', '刘老师', '2.11M', 'doc', '126', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b64.jpg', '2019-05-05 15:51:15', NULL, '0');
INSERT INTO `mod_material` VALUES (41, 'Axure原型设计（选修）', '上课教学资料', 'Axure原型设计（选修）', '朱老师', '5.9M', 'zip', '129', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-05 17:27:03', NULL, '0');
INSERT INTO `mod_material` VALUES (42, '微信小程序技术及应用（选修）', '上课教学资料', '微信小程序技术及应用（选修）', '廖老师', '10.5M', 'pdf', '114', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-05 19:02:51', '2019-05-05 20:32:13', '0');
INSERT INTO `mod_material` VALUES (43, '通信网络综合实训', '上课教学资料', '通信网络综合实训', '李老师', '3.9M', 'docx', '117', '2019/05/02/13895a97464fcc2154df2dc224268a68.jpg', '2019-05-05 20:38:39', '2019-05-06 20:32:13', '0');
INSERT INTO `mod_material` VALUES (44, '数字逻辑电路实训', '实验试题资料', '数字逻辑电路实训', '教务处', '8.10M', 'doc', '120', '2019/05/03/c4fecbd0167bdbde0201f3de41444c103.jpg', '2019-05-05 22:14:27', '2019-05-07 20:32:13', '0');
INSERT INTO `mod_material` VALUES (45, '单片机应用技术实训', '文献参考资料', '单片机应用技术实训', '廖老师', '2.12M', 'zip', '123', '2019/05/03/0fc5673c41c237700d00499f2a609f91.jpg', '2019-05-05 23:50:15', '2019-05-08 20:32:13', '0');
INSERT INTO `mod_material` VALUES (46, '云计算与网络虚拟化设计实训', '其他学习资料', '云计算与网络虚拟化设计实训', '李老师', '1.6M', 'docx', '126', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b65.jpg', '2019-05-06 01:26:03', '2019-05-09 20:32:13', '0');
INSERT INTO `mod_material` VALUES (47, '电路与电子技术基础实验', '其他学习资料', '电路与电子技术基础实验', '教务处', '1.6M', 'pdf', '129', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-06 03:01:51', '2019-05-10 20:32:13', '0');
INSERT INTO `mod_material` VALUES (48, '编译原理实验', '其他学习资料', '编译原理实验', '王老师', '2.12M', 'xls', '132', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-06 04:37:39', '2019-05-11 20:32:13', '0');
INSERT INTO `mod_material` VALUES (49, '数据库原理及应用实验', '上课教学资料', '数据库原理及应用实验', '黄老师', '1.10M', 'xlsx', '135', '2019/05/02/13895a97464fcc2154df2dc224268a69.jpg', '2019-05-06 06:13:27', '2019-05-12 20:32:13', '0');
INSERT INTO `mod_material` VALUES (50, '程控交换技术实验', '上课教学资料', '程控交换技术实验', '刘老师', '2.12M', 'ppt', '138', '2019/05/03/c4fecbd0167bdbde0201f3de41444c104.jpg', '2019-05-06 07:49:15', '2019-05-13 20:32:13', '0');
INSERT INTO `mod_material` VALUES (51, '高频电子线路A实验', '文献参考资料', '高频电子线路A实验', '朱老师', '5.10M', 'pptx', '141', '2019/05/03/0fc5673c41c237700d00499f2a609f92.jpg', '2019-05-06 09:25:03', '2019-05-14 20:32:13', '0');
INSERT INTO `mod_material` VALUES (52, '光纤通信系统实验', '其他学习资料', '光纤通信系统实验', '廖老师', '10.6M', 'doc', '3', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b66.jpg', '2019-05-06 11:00:51', '2019-05-15 20:32:13', '0');
INSERT INTO `mod_material` VALUES (53, '计算机组成原理', '其他学习资料', '计算机组成原理', '李老师', '3.10M', 'doc', '6', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-06 12:36:39', '2019-05-16 20:32:13', '0');
INSERT INTO `mod_material` VALUES (54, '计算机组成原理', '其他学习资料', '计算机组成原理', '教务处', '8.11M', 'zip', '123', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-06 14:12:27', NULL, '0');
INSERT INTO `mod_material` VALUES (55, '电子技术基础', '上课教学资料', '电子技术基础', '廖老师', '2.13M', 'pdf', '126', '2019/05/02/13895a97464fcc2154df2dc224268a70.jpg', '2019-05-06 15:48:15', NULL, '0');
INSERT INTO `mod_material` VALUES (56, '电子技术基础', '实验试题资料', '电子技术基础', '李老师', '1.6M', 'docx', '129', '2019/05/03/c4fecbd0167bdbde0201f3de41444c105.jpg', '2019-05-06 17:24:03', NULL, '0');
INSERT INTO `mod_material` VALUES (57, '现代通信网络技术', '文献参考资料', '现代通信网络技术', '教务处', '1.6M', 'doc', '159', '2019/05/03/0fc5673c41c237700d00499f2a609f93.jpg', '2019-05-06 18:59:51', NULL, '0');
INSERT INTO `mod_material` VALUES (58, '现代通信网络技术', '其他学习资料', '现代通信网络技术', '王老师', '2.13M', 'zip', '162', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b67.jpg', '2019-05-06 20:35:39', '2019-05-11 20:32:13', '0');
INSERT INTO `mod_material` VALUES (59, '网络设备及应用', '其他学习资料', '网络设备及应用', '黄老师', '1.11M', 'docx', '165', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-06 22:11:27', '2019-05-12 20:32:13', '0');
INSERT INTO `mod_material` VALUES (60, '光纤通信系统', '其他学习资料', '光纤通信系统', '刘老师', '2.13M', 'pdf', '168', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-06 23:47:15', '2019-05-13 20:32:13', '0');
INSERT INTO `mod_material` VALUES (61, '程控交换技术', '上课教学资料', '程控交换技术', '朱老师', '5.11M', 'xls', '171', '2019/05/02/13895a97464fcc2154df2dc224268a71.jpg', '2019-05-07 01:23:03', '2019-05-14 20:32:13', '0');
INSERT INTO `mod_material` VALUES (62, '网页制作', '上课教学资料', '网页制作', '廖老师', '10.7M', 'xlsx', '174', '2019/05/03/c4fecbd0167bdbde0201f3de41444c106.jpg', '2019-05-07 02:58:51', NULL, '0');
INSERT INTO `mod_material` VALUES (63, '数据通信原理', '文献参考资料', '数据通信原理', '李老师', '3.11M', 'ppt', '177', '2019/05/03/0fc5673c41c237700d00499f2a609f94.jpg', '2019-05-07 04:34:39', '2019-05-19 20:32:13', '0');
INSERT INTO `mod_material` VALUES (64, 'Linux操作系统与网络构建', '其他学习资料', 'Linux操作系统与网络构建', '教务处', '8.12M', 'pptx', '180', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b68.jpg', '2019-05-07 06:10:27', '2019-05-20 20:32:13', '0');
INSERT INTO `mod_material` VALUES (65, 'Axure原型设计（选修）', '其他学习资料', 'Axure原型设计（选修）', '廖老师', '2.14M', 'doc', '183', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-07 07:46:15', '2019-05-21 20:32:13', '0');
INSERT INTO `mod_material` VALUES (66, '微信小程序技术及应用（选修）', '其他学习资料', '微信小程序技术及应用（选修）', '李老师', '1.6M', 'doc', '3', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-07 09:22:03', '2019-05-22 20:32:13', '0');
INSERT INTO `mod_material` VALUES (67, '通信网络综合实训', '上课教学资料', '通信网络综合实训', '教务处', '1.6M', 'zip', '6', '2019/05/02/13895a97464fcc2154df2dc224268a72.jpg', '2019-05-07 10:57:51', '2019-05-23 20:32:13', '0');
INSERT INTO `mod_material` VALUES (68, '数字逻辑电路实训', '上课教学资料', '数字逻辑电路实训', '廖老师', '2.14M', 'pdf', '123', '2019/05/03/c4fecbd0167bdbde0201f3de41444c107.jpg', '2019-05-07 12:33:39', '2019-05-24 20:32:13', '0');
INSERT INTO `mod_material` VALUES (69, '单片机应用技术实训', '文献参考资料', '单片机应用技术实训', '李老师', '1.12M', 'docx', '126', '2019/05/03/0fc5673c41c237700d00499f2a609f95.jpg', '2019-05-07 14:09:27', '2019-05-25 20:32:13', '0');
INSERT INTO `mod_material` VALUES (70, '云计算与网络虚拟化设计实训', '上课教学资料', '云计算与网络虚拟化设计实训', '教务处', '2.14M', 'doc', '129', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b69.jpg', '2019-05-07 15:45:15', '2019-05-26 20:32:13', '0');
INSERT INTO `mod_material` VALUES (71, '电路与电子技术基础实验', '上课教学资料', '电路与电子技术基础实验', '王老师', '5.12M', 'zip', '201', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-07 17:21:03', NULL, '0');
INSERT INTO `mod_material` VALUES (72, '编译原理实验', '上课教学资料', '编译原理实验', '黄老师', '10.8M', 'docx', '204', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-07 18:56:51', NULL, '0');
INSERT INTO `mod_material` VALUES (73, '数据库原理及应用实验', '实验试题资料', '数据库原理及应用实验', '刘老师', '3.12M', 'pdf', '207', '2019/05/02/13895a97464fcc2154df2dc224268a73.jpg', '2019-05-07 20:32:39', NULL, '0');
INSERT INTO `mod_material` VALUES (74, '程控交换技术实验', '实验试题资料', '程控交换技术实验', '朱老师', '8.13M', 'xls', '210', '2019/05/03/c4fecbd0167bdbde0201f3de41444c108.jpg', '2019-05-07 22:08:27', NULL, '0');
INSERT INTO `mod_material` VALUES (75, '高频电子线路A实验', '实验试题资料', '高频电子线路A实验', '廖老师', '2.15M', 'xlsx', '213', '2019/05/03/0fc5673c41c237700d00499f2a609f96.jpg', '2019-05-07 23:44:15', NULL, '0');
INSERT INTO `mod_material` VALUES (76, '光纤通信系统实验', '实验试题资料', '光纤通信系统实验', '李老师', '1.6M', 'ppt', '216', '2019/05/09/0ad168f81c5db922a8dcf2eab8057b70.jpg', '2019-05-08 01:20:03', '2019-05-11 20:32:13', '0');
INSERT INTO `mod_material` VALUES (77, '云计算与网络虚拟化设计实训', '实验案例资料', '云计算与网络虚拟化设计实训', '教务处', '1.6M', 'pptx', '219', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-08 02:55:51', '2019-05-12 20:32:13', '0');
INSERT INTO `mod_material` VALUES (78, '电路与电子技术基础实验', '实验案例资料', '电路与电子技术基础实验', '廖老师', '2.15M', 'doc', '222', '2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg', '2019-05-08 04:31:39', '2019-05-13 20:32:13', '0');
INSERT INTO `mod_material` VALUES (79, '编译原理实验', '实验案例资料', '编译原理实验', '李老师', '1.13M', 'doc', '225', '2019/05/02/13895a97464fcc2154df2dc224268a74.jpg', '2019-05-08 06:07:27', '2019-05-14 20:32:13', '0');
INSERT INTO `mod_material` VALUES (80, '数据库原理及应用实验', '文献参考资料', '数据库原理及应用实验', '教务处', '2.15M', 'zip', '228', '2019/05/03/c4fecbd0167bdbde0201f3de41444c109.jpg', '2019-05-08 07:43:15', NULL, '0');
INSERT INTO `mod_material` VALUES (89, '软件工程', '其他学习资料', '软件工程项目实战', '教务超级管理员', '1.3M', 'doc', '20', '2019/05/22/dbeffc9564fec94f50e9e6ffffaabd32.doc', '2019-05-22 18:14:17', NULL, '0');

-- ----------------------------
-- Table structure for mod_practice
-- ----------------------------
DROP TABLE IF EXISTS `mod_practice`;
CREATE TABLE `mod_practice`  (
  `practice_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '实习单位材料',
  `student_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `student_department` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生系别',
  `student_class` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生班级',
  `student_number` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `company_name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `company_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `position` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实习实践岗位',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '实习开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '实习结束时间',
  `principal_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业负责人姓名',
  `principal_tel` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业负责人电话',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请文件材料',
  `apply_status` int(5) NULL DEFAULT NULL COMMENT '审核状态(0表示已提交，1表示审核中，2表示审核通过，3表示审核不通过)',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '提交时间',
  `apply_reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驳回反馈',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`practice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '顶岗实习管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_practice
-- ----------------------------
INSERT INTO `mod_practice` VALUES (1, '学生1', '信息工程系', '15512001', '1551200124', '广西XXX101有限公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-05-30 00:00:00', '负责人01', '18178321101', NULL, 0, '2019-05-13 15:32:57', '不通过 材料重新填写', '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (2, '学生2', '机电工程系', '17513011', '1551200125', '广西XXX102有限公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-05-31 00:00:00', '负责人02', '18178321102', NULL, 2, '2019-05-13 15:35:57', '未通过 重新提交', '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (3, '学生3', '电子工程系', '16230102', '1551200126', '广西XXX103有限公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-06-01 00:00:00', '负责人03', '18178321103', NULL, 2, '2019-05-13 15:38:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (4, '学生4', '管理系', '15623002', '1551200127', '广西XXX104有限公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-06-02 00:00:00', '负责人04', '18178321104', NULL, 0, '2019-05-13 15:41:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (5, '学生5', '设计系', '17631001', '1551200128', '深圳9ABC3科技有限公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-06-03 00:00:00', '负责人05', '18178321105', NULL, 0, '2019-05-13 15:44:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (6, '学生6', '信息工程系', '15512002', '1551200129', '深圳8ABC4科技有限公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-06-04 00:00:00', '负责人06', '18178321106', NULL, 1, '2019-05-13 15:47:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (7, '学生7', '信息工程系', '15513003', '1551200130', '深圳9ABC4科技有限公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-06-05 00:00:00', '负责人07', '18178321107', NULL, 1, '2019-05-13 15:50:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (8, '学生8', '信息工程系', '15512001', '1551200131', '深圳8ABC5科技有限公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-06-06 00:00:00', '负责人08', '18178321108', NULL, 1, '2019-05-13 15:53:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (9, '学生9', '机电工程系', '17513011', '1551200132', '广西XXX109有限公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-06-07 00:00:00', '负责人09', '18178321109', NULL, 1, '2019-05-13 15:56:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (10, '学生10', '电子工程系', '16230102', '1551200133', '广西XXX110有限公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-06-08 00:00:00', '负责人10', '18178321110', NULL, 0, '2019-05-13 15:59:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (11, '学生11', '管理系', '15623002', '1551200134', '广西XXX111有限公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-06-09 00:00:00', '负责人11', '18178321111', NULL, 1, '2019-05-13 16:02:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (12, '学生12', '设计系', '17631001', '1551200135', '深圳9ABC1科技有限公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-06-10 00:00:00', '负责人12', '18178321112', NULL, 1, '2019-05-13 16:05:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (13, '学生13', '信息工程系', '15512002', '1551200136', '深圳8ABC2科技有限公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-06-11 00:00:00', '负责人13', '18178321113', NULL, 1, '2019-05-13 16:08:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (14, '学生14', '信息工程系', '15513003', '1551200137', '深圳9ABC2科技有限公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-06-12 00:00:00', '负责人14', '18178321114', NULL, 1, '2019-05-13 16:11:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (15, '学生15', '信息工程系', '15512001', '1551200138', '深圳8ABC3科技有限公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-06-13 00:00:00', '负责人15', '18178321115', NULL, 2, '2019-05-13 16:14:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (16, '学生16', '机电工程系', '17513011', '1551200139', '深圳9ABC3科技有限公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-06-14 00:00:00', '负责人16', '18178321116', NULL, 0, '2019-05-13 16:17:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (17, '学生17', '电子工程系', '16230102', '1551200140', '深圳8ABC4科技有限公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-06-15 00:00:00', '负责人17', '18178321117', NULL, 1, '2019-05-13 16:20:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (18, '学生18', '管理系', '15623002', '1551200141', '广西XXX110有限公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-06-16 00:00:00', '负责人18', '18178321118', NULL, 2, '2019-05-13 16:23:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (19, '学生19', '设计系', '17631001', '1551200142', '广西XXX111有限公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-06-17 00:00:00', '负责人19', '18178321119', NULL, 0, '2019-05-13 16:26:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (20, '学生20', '信息工程系', '15512002', '1551200143', '深圳9ABC5科技有限公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-06-18 00:00:00', '负责人20', '18178321120', NULL, 0, '2019-05-13 16:29:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (21, '学生21', '信息工程系', '15513003', '1551200144', '深圳8ABC6科技有限公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-06-19 00:00:00', '负责人21', '18178321121', NULL, 1, '2019-05-13 16:32:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (22, '学生22', '信息工程系', '15512001', '1551200145', '深圳9ABC6科技有限公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-06-20 00:00:00', '负责人22', '18178321122', NULL, 1, '2019-05-13 16:35:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (23, '学生23', '机电工程系', '17513011', '1551200146', '深圳8ABC7科技有限公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-06-21 00:00:00', '负责人23', '18178321123', NULL, 1, '2019-05-13 16:38:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (24, '学生24', '电子工程系', '16230102', '1551200147', '广西XXX110有限公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-06-22 00:00:00', '负责人24', '18178321124', NULL, 1, '2019-05-13 16:41:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (25, '学生25', '管理系', '15623002', '1551200148', '广西XXX111有限公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-06-23 00:00:00', '负责人25', '18178321125', NULL, 0, '2019-05-13 16:44:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (26, '学生26', '设计系', '17631001', '1551200149', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-06-24 00:00:00', '负责人26', '18178321126', NULL, 1, '2019-05-13 16:47:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (27, '学生27', '信息工程系', '15512002', '1551200150', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-06-25 00:00:00', '负责人27', '18178321127', NULL, 1, '2019-05-13 16:50:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (28, '学生28', '信息工程系', '15513003', '1551200151', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-06-26 00:00:00', '负责人28', '18178321128', NULL, 1, '2019-05-13 16:53:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (29, '学生29', '信息工程系', '15512001', '1551200152', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-06-27 00:00:00', '负责人29', '18178321129', NULL, 1, '2019-05-13 16:56:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (30, '学生30', '机电工程系', '17513011', '1551200153', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-06-28 00:00:00', '负责人30', '18178321130', NULL, 2, '2019-05-13 16:59:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (31, '学生31', '电子工程系', '16230102', '1551200154', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-06-29 00:00:00', '负责人31', '18178321131', NULL, 1, '2019-05-13 17:02:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (32, '学生32', '管理系', '15623002', '1551200155', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-06-30 00:00:00', '负责人32', '18178321132', NULL, 1, '2019-05-13 17:05:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (33, '学生33', '设计系', '17631001', '1551200156', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-07-01 00:00:00', '负责人33', '18178321133', NULL, 0, '2019-05-13 17:08:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (34, '学生34', '信息工程系', '15512002', '1551200157', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '技术支持', '2019-05-01 00:00:00', '2019-07-02 00:00:00', '负责人34', '18178321134', NULL, 1, '2019-05-13 17:11:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (35, '学生35', '信息工程系', '15513003', '1551200158', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '销售助理', '2019-05-01 00:00:00', '2019-07-03 00:00:00', '负责人35', '18178321135', NULL, 1, '2019-05-13 17:14:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (36, '学生36', '信息工程系', '15512001', '1551200159', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '人力资源', '2019-05-01 00:00:00', '2019-07-04 00:00:00', '负责人36', '18178321136', NULL, 1, '2019-05-13 17:17:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (37, '学生37', '机电工程系', '17513011', '1551200160', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '软件开发', '2019-05-01 00:00:00', '2019-07-05 00:00:00', '负责人37', '18178321137', NULL, 1, '2019-05-13 17:20:57', NULL, '2019-05-13 15:32:57', NULL, '0');
INSERT INTO `mod_practice` VALUES (38, '学生38', '信息工程系', '16230102', '1551200161', '南宁AAA有限责任公司', '广西南宁西乡塘区XXX', '系统运维', '2019-05-01 00:00:00', '2019-07-06 00:00:00', '负责人38', '18178321138', NULL, 2, '2019-05-13 17:23:57', NULL, '2019-05-13 15:32:57', NULL, '0');

-- ----------------------------
-- Table structure for mod_program
-- ----------------------------
DROP TABLE IF EXISTS `mod_program`;
CREATE TABLE `mod_program`  (
  `program_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '课程计划管理',
  `teach_id` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `teach_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `semester` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开设学期',
  `course_id` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程序号',
  `course_name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `course_credit` int(5) NULL DEFAULT NULL COMMENT '课程学分',
  `set_depart` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开设院系',
  `set_major` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开设专业',
  `usual_score_ratio` int(5) NULL DEFAULT NULL COMMENT '平时成绩占比',
  `exam_score_ratio` int(5) NULL DEFAULT NULL COMMENT '考核成绩占比',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`program_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 264 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学计划管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_program
-- ----------------------------
INSERT INTO `mod_program` VALUES (2, 'T120316', '教师1', '2019-2020学年第一学期', 'KC23011_01', '计算机组成原理', 2, '信息工程系', '软件工程', 20, 80, '2019-05-13 19:42:58', NULL, '0');
INSERT INTO `mod_program` VALUES (3, 'T120315', '教师2', '2019-2020学年第一学期', 'KC23011_02', '计算机组成原理', 4, '机电工程系', '机电一体化', 20, 80, '2019-05-13 19:44:37', NULL, '0');
INSERT INTO `mod_program` VALUES (4, 'T120314', '教师3', '2019-2020学年第一学期', 'KC23011_03', '电子技术基础', 2, '电子工程系', '机械原理', 20, 80, '2019-05-13 19:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (5, 'T120313', '教师4', '2019-2020学年第一学期', 'KC23011_04', '电子技术基础', 2, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-13 19:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (6, 'T120312', '教师5', '2019-2020学年第一学期', 'KC23011_05', '现代通信网络技术', 4, '信息工程系', '网路工程', 30, 70, '2019-05-13 20:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (7, 'T120311', '教师6', '2019-2020学年第一学期', 'KC23011_06', '现代通信网络技术', 2, '信息工程系', '软件工程', 40, 60, '2019-05-13 20:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (8, 'T120310', '教师7', '2019-2020学年第一学期', 'KC23011_07', '网络设备及应用', 3, '机电工程系', '机电一体化', 20, 80, '2019-05-13 20:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (9, 'T120309', '教师8', '2019-2020学年第一学期', 'KC23011_08', '光纤通信系统', 2, '电子工程系', '机械原理', 30, 70, '2019-05-13 20:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (10, 'T120308', '教师9', '2019-2020学年第一学期', 'KC23011_09', '程控交换技术', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-13 20:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (11, 'T120307', '教师10', '2018-2019学年第二学期', 'KC23011_10', '网页制作', 2, '信息工程系', '网路工程', 20, 80, '2019-05-13 20:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (12, 'T120306', '教师11', '2018-2019学年第二学期', 'KC23011_11', '数据通信原理', 2, '信息工程系', '软件工程', 20, 80, '2019-05-13 20:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (13, 'T120305', '教师12', '2018-2019学年第二学期', 'KC23011_12', 'Linux操作系统与网络构建', 4, '机电工程系', '机电一体化', 40, 60, '2019-05-13 20:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (14, 'T120304', '教师13', '2018-2019学年第二学期', 'KC23011_13', 'Axure原型设计（选修）', 2, '电子工程系', '机械原理', 30, 70, '2019-05-13 20:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (15, 'T120303', '教师14', '2018-2019学年第二学期', 'KC23011_14', '微信小程序技术及应用（选修）', 3, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-13 20:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (16, 'T120302', '教师15', '2018-2019学年第二学期', 'KC23011_15', '通信网络综合实训', 2, '信息工程系', '网路工程', 20, 80, '2019-05-13 21:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (17, 'T120301', '教师16', '2018-2019学年第二学期', 'KC23011_16', '数字逻辑电路实训', 4, '信息工程系', '软件工程', 30, 70, '2019-05-13 21:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (18, 'T120300', '教师17', '2018-2019学年第二学期', 'KC23011_17', '单片机应用技术实训', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-13 21:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (19, 'T120299', '教师18', '2018-2019学年第二学期', 'KC23011_18', '云计算与网络虚拟化设计实训', 2, '电子工程系', '机械原理', 20, 80, '2019-05-13 21:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (20, 'T120316', '教师19', '2018-2019学年第二学期', 'KC23011_19', '电路与电子技术基础实验', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-13 21:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (21, 'T120315', '教师20', '2018-2019学年第二学期', 'KC23011_20', '编译原理实验', 2, '信息工程系', '网路工程', 40, 60, '2019-05-13 21:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (22, 'T120314', '教师21', '2018-2019学年第二学期', 'KC23011_21', '数据库原理及应用实验', 3, '信息工程系', '软件工程', 30, 70, '2019-05-13 21:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (23, 'T120313', '教师22', '2018-2019学年第二学期', 'KC23011_22', '程控交换技术实验', 2, '机电工程系', '机电一体化', 40, 60, '2019-05-13 21:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (24, 'T120312', '教师23', '2018-2019学年第二学期', 'KC23011_23', '高频电子线路A实验', 4, '电子工程系', '机械原理', 20, 80, '2019-05-13 21:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (25, 'T120311', '教师24', '2018-2019学年第二学期', 'KC23011_24', '光纤通信系统实验', 2, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-13 21:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (26, 'T120310', '教师25', '2018-2019学年第二学期', 'KC23011_25', '计算机组成原理', 2, '信息工程系', '网路工程', 20, 80, '2019-05-13 22:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (27, 'T120309', '教师26', '2018-2019学年第二学期', 'KC23011_26', '计算机组成原理', 4, '信息工程系', '软件工程', 20, 80, '2019-05-13 22:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (28, 'T120308', '教师27', '2018-2019学年第二学期', 'KC23011_27', '电子技术基础', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-13 22:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (29, 'T120307', '教师28', '2018-2019学年第二学期', 'KC23011_28', '电子技术基础', 3, '电子工程系', '机械原理', 40, 60, '2019-05-13 22:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (30, 'T120306', '教师29', '2018-2019学年第二学期', 'KC23011_29', '现代通信网络技术', 2, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-13 22:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (31, 'T120305', '教师30', '2018-2019学年第二学期', 'KC23011_30', '现代通信网络技术', 4, '信息工程系', '网路工程', 40, 60, '2019-05-13 22:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (32, 'T120304', '教师31', '2018-2019学年第二学期', 'KC23011_31', '网络设备及应用', 2, '信息工程系', '软件工程', 20, 80, '2019-05-13 22:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (33, 'T120303', '教师32', '2018-2019学年第二学期', 'KC23011_32', '光纤通信系统', 3, '机电工程系', '机电一体化', 30, 70, '2019-05-13 22:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (34, 'T120302', '教师33', '2018-2019学年第二学期', 'KC23011_33', '程控交换技术', 2, '电子工程系', '机械原理', 20, 80, '2019-05-13 22:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (35, 'T120301', '教师34', '2018-2019学年第二学期', 'KC23011_34', '网页制作', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-13 22:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (36, 'T120300', '教师35', '2018-2019学年第二学期', 'KC23011_35', '数据通信原理', 2, '信息工程系', '网路工程', 20, 80, '2019-05-13 23:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (37, 'T120316', '教师1', '2018-2019学年第二学期', 'KC23011_36', 'Linux操作系统与网络构建', 2, '信息工程系', '软件工程', 40, 60, '2019-05-13 23:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (38, 'T120315', '教师2', '2018-2019学年第二学期', 'KC23011_37', 'Axure原型设计（选修）', 4, '机电工程系', '机电一体化', 30, 70, '2019-05-13 23:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (39, 'T120314', '教师3', '2018-2019学年第二学期', 'KC23011_38', '微信小程序技术及应用（选修）', 2, '电子工程系', '机械原理', 40, 60, '2019-05-13 23:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (40, 'T120313', '教师4', '2018-2019学年第二学期', 'KC23011_39', '通信网络综合实训', 3, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-13 23:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (41, 'T120312', '教师5', '2018-2019学年第二学期', 'KC23011_40', '数字逻辑电路实训', 2, '信息工程系', '网路工程', 30, 70, '2019-05-13 23:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (42, 'T120311', '教师6', '2018-2019学年第二学期', 'KC23011_41', '单片机应用技术实训', 2, '信息工程系', '软件工程', 20, 80, '2019-05-13 23:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (43, 'T120310', '教师7', '2018-2019学年第二学期', 'KC23011_42', '云计算与网络虚拟化设计实训', 4, '机电工程系', '机电一体化', 20, 80, '2019-05-13 23:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (44, 'T120309', '教师8', '2018-2019学年第二学期', 'KC23011_43', '电路与电子技术基础实验', 2, '电子工程系', '机械原理', 20, 80, '2019-05-13 23:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (45, 'T120308', '教师9', '2018-2019学年第二学期', 'KC23011_44', '编译原理实验', 3, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-13 23:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (46, 'T120307', '教师10', '2018-2019学年第二学期', 'KC23011_45', '数据库原理及应用实验', 2, '信息工程系', '网路工程', 30, 70, '2019-05-14 00:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (47, 'T120306', '教师11', '2018-2019学年第二学期', 'KC23011_46', '程控交换技术实验', 4, '信息工程系', '软件工程', 40, 60, '2019-05-14 00:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (48, 'T120305', '教师12', '2018-2019学年第二学期', 'KC23011_47', '高频电子线路A实验', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 00:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (49, 'T120304', '教师13', '2018-2019学年第二学期', 'KC23011_48', '光纤通信系统实验', 2, '电子工程系', '机械原理', 30, 70, '2019-05-14 00:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (50, 'T120303', '教师14', '2018-2019学年第二学期', 'KC23011_49', '计算机组成原理', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 00:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (51, 'T120302', '教师15', '2018-2019学年第二学期', 'KC23011_50', '计算机组成原理', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 00:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (52, 'T120301', '教师16', '2018-2019学年第二学期', 'KC23011_51', '电子技术基础', 3, '信息工程系', '软件工程', 20, 80, '2019-05-14 00:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (53, 'T120300', '教师17', '2018-2019学年第二学期', 'KC23011_52', '电子技术基础', 2, '机电工程系', '机电一体化', 40, 60, '2019-05-14 00:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (54, 'T120299', '教师18', '2018-2019学年第二学期', 'KC23011_53', '现代通信网络技术', 2, '电子工程系', '机械原理', 30, 70, '2019-05-14 00:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (55, 'T120316', '教师19', '2018-2019学年第二学期', 'KC23011_54', '现代通信网络技术', 4, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 00:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (56, 'T120315', '教师20', '2018-2019学年第二学期', 'KC23011_55', '网络设备及应用', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 01:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (57, 'T120314', '教师21', '2018-2019学年第二学期', 'KC23011_56', '光纤通信系统', 3, '信息工程系', '软件工程', 30, 70, '2019-05-14 01:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (58, 'T120313', '教师22', '2018-2019学年第二学期', 'KC23011_57', '程控交换技术', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 01:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (59, 'T120312', '教师23', '2018-2019学年第二学期', 'KC23011_58', '网页制作', 4, '电子工程系', '机械原理', 20, 80, '2019-05-14 01:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (60, 'T120311', '教师24', '2018-2019学年第二学期', 'KC23011_59', '数据通信原理', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 01:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (61, 'T120310', '教师25', '2018-2019学年第二学期', 'KC23011_60', 'Linux操作系统与网络构建', 2, '信息工程系', '网路工程', 40, 60, '2019-05-14 01:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (62, 'T120309', '教师26', '2018-2019学年第二学期', 'KC23011_61', 'Axure原型设计（选修）', 4, '信息工程系', '软件工程', 30, 70, '2019-05-14 01:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (63, 'T120308', '教师27', '2018-2019学年第二学期', 'KC23011_62', '微信小程序技术及应用（选修）', 2, '机电工程系', '机电一体化', 40, 60, '2019-05-14 01:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (64, 'T120307', '教师28', '2018-2019学年第二学期', 'KC23011_63', '通信网络综合实训', 3, '电子工程系', '机械原理', 20, 80, '2019-05-14 01:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (65, 'T120306', '教师29', '2018-2019学年第二学期', 'KC23011_64', '数字逻辑电路实训', 2, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-14 01:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (66, 'T120305', '教师30', '2018-2019学年第二学期', 'KC23011_65', '单片机应用技术实训', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 02:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (67, 'T120304', '教师31', '2018-2019学年第二学期', 'KC23011_66', '云计算与网络虚拟化设计实训', 4, '信息工程系', '软件工程', 20, 80, '2019-05-14 02:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (68, 'T120303', '教师32', '2018-2019学年第二学期', 'KC23011_67', '电路与电子技术基础实验', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 02:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (69, 'T120302', '教师33', '2018-2019学年第二学期', 'KC23011_68', '编译原理实验', 3, '电子工程系', '机械原理', 40, 60, '2019-05-14 02:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (70, 'T120301', '教师34', '2018-2019学年第二学期', 'KC23011_69', '数据库原理及应用实验', 2, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-14 02:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (71, 'T120300', '教师35', '2018-2019学年第一学期', 'KC23011_70', '程控交换技术实验', 4, '信息工程系', '网路工程', 40, 60, '2019-05-14 02:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (72, 'T120316', '教师1', '2018-2019学年第一学期', 'KC23011_71', '高频电子线路A实验', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 02:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (73, 'T120315', '教师2', '2018-2019学年第一学期', 'KC23011_72', '光纤通信系统实验', 2, '机电工程系', '机电一体化', 30, 70, '2019-05-14 02:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (74, 'T120314', '教师3', '2018-2019学年第一学期', 'KC23011_73', '云计算与网络虚拟化设计实训', 4, '电子工程系', '机械原理', 20, 80, '2019-05-14 02:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (75, 'T120313', '教师4', '2018-2019学年第一学期', 'KC23011_74', '计算机组成原理', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 02:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (76, 'T120312', '教师5', '2018-2019学年第一学期', 'KC23011_75', '计算机组成原理', 3, '信息工程系', '网路工程', 20, 80, '2019-05-14 03:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (77, 'T120311', '教师6', '2018-2019学年第一学期', 'KC23011_76', '电子技术基础', 2, '信息工程系', '软件工程', 40, 60, '2019-05-14 03:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (78, 'T120310', '教师7', '2018-2019学年第一学期', 'KC23011_77', '电子技术基础', 2, '机电工程系', '机电一体化', 30, 70, '2019-05-14 03:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (79, 'T120309', '教师8', '2018-2019学年第一学期', 'KC23011_78', '现代通信网络技术', 4, '电子工程系', '机械原理', 40, 60, '2019-05-14 03:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (80, 'T120308', '教师9', '2018-2019学年第一学期', 'KC23011_79', '现代通信网络技术', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 03:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (81, 'T120307', '教师10', '2018-2019学年第一学期', 'KC23011_80', '网络设备及应用', 3, '信息工程系', '网路工程', 30, 70, '2019-05-14 03:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (82, 'T120306', '教师11', '2018-2019学年第一学期', 'KC23011_81', '光纤通信系统', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 03:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (83, 'T120305', '教师12', '2018-2019学年第一学期', 'KC23011_82', '程控交换技术', 4, '机电工程系', '机电一体化', 20, 80, '2019-05-14 03:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (84, 'T120304', '教师13', '2018-2019学年第一学期', 'KC23011_83', '网页制作', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 03:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (85, 'T120303', '教师14', '2018-2019学年第一学期', 'KC23011_84', '数据通信原理', 2, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 03:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (86, 'T120302', '教师15', '2018-2019学年第一学期', 'KC23011_85', 'Linux操作系统与网络构建', 4, '信息工程系', '网路工程', 30, 70, '2019-05-14 04:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (87, 'T120301', '教师16', '2018-2019学年第一学期', 'KC23011_86', 'Axure原型设计（选修）', 2, '信息工程系', '软件工程', 40, 60, '2019-05-14 04:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (88, 'T120300', '教师17', '2018-2019学年第一学期', 'KC23011_87', '微信小程序技术及应用（选修）', 3, '机电工程系', '机电一体化', 20, 80, '2019-05-14 04:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (89, 'T120299', '教师18', '2018-2019学年第一学期', 'KC23011_88', '通信网络综合实训', 2, '电子工程系', '机械原理', 30, 70, '2019-05-14 04:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (90, 'T120316', '教师19', '2018-2019学年第一学期', 'KC23011_89', '数字逻辑电路实训', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 04:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (91, 'T120315', '教师20', '2018-2019学年第一学期', 'KC23011_90', '单片机应用技术实训', 4, '信息工程系', '网路工程', 20, 80, '2019-05-14 04:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (92, 'T120314', '教师21', '2018-2019学年第一学期', 'KC23011_91', '云计算与网络虚拟化设计实训', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 04:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (93, 'T120313', '教师22', '2018-2019学年第一学期', 'KC23011_92', '电路与电子技术基础实验', 3, '机电工程系', '机电一体化', 40, 60, '2019-05-14 04:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (94, 'T120312', '教师23', '2018-2019学年第一学期', 'KC23011_93', '编译原理实验', 2, '电子工程系', '机械原理', 30, 70, '2019-05-14 04:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (95, 'T120311', '教师24', '2018-2019学年第一学期', 'KC23011_94', '数据库原理及应用实验', 4, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 04:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (96, 'T120310', '教师25', '2018-2019学年第一学期', 'KC23011_95', '程控交换技术实验', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 05:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (97, 'T120309', '教师26', '2017-2018学年第二学期', 'KC23011_96', '高频电子线路A实验', 2, '信息工程系', '软件工程', 30, 70, '2019-05-14 05:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (98, 'T120308', '教师27', '2017-2018学年第二学期', 'KC23011_97', '光纤通信系统实验', 4, '机电工程系', '机电一体化', 20, 80, '2019-05-14 05:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (99, 'T120307', '教师28', '2017-2018学年第二学期', 'KC23011_98', '计算机组成原理', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 05:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (100, 'T120306', '教师29', '2017-2018学年第二学期', 'KC23011_99', '计算机组成原理', 3, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 05:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (101, 'T120305', '教师30', '2017-2018学年第二学期', 'KC53012_01', '电子技术基础', 2, '信息工程系', '网路工程', 40, 60, '2019-05-14 05:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (102, 'T120304', '教师31', '2017-2018学年第二学期', 'KC53012_02', '电子技术基础', 2, '信息工程系', '软件工程', 30, 70, '2019-05-14 05:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (103, 'T120303', '教师32', '2017-2018学年第二学期', 'KC53012_03', '现代通信网络技术', 4, '机电工程系', '机电一体化', 40, 60, '2019-05-14 05:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (104, 'T120302', '教师33', '2017-2018学年第二学期', 'KC53012_04', '现代通信网络技术', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 05:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (105, 'T120301', '教师34', '2017-2018学年第二学期', 'KC53012_05', '网络设备及应用', 3, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-14 05:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (106, 'T120300', '教师35', '2017-2018学年第二学期', 'KC53012_06', '光纤通信系统', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 06:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (107, 'T120316', '教师1', '2017-2018学年第二学期', 'KC53012_07', '程控交换技术', 4, '信息工程系', '软件工程', 20, 80, '2019-05-14 06:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (108, 'T120315', '教师2', '2017-2018学年第二学期', 'KC53012_08', '网页制作', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 06:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (109, 'T120314', '教师3', '2017-2018学年第二学期', 'KC53012_09', '数据通信原理', 2, '电子工程系', '机械原理', 40, 60, '2019-05-14 06:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (110, 'T120313', '教师4', '2017-2018学年第二学期', 'KC53012_10', 'Linux操作系统与网络构建', 4, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-14 06:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (111, 'T120312', '教师5', '2017-2018学年第二学期', 'KC53012_11', 'Axure原型设计（选修）', 2, '信息工程系', '网路工程', 40, 60, '2019-05-14 06:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (112, 'T120311', '教师6', '2017-2018学年第二学期', 'KC53012_12', '微信小程序技术及应用（选修）', 3, '信息工程系', '软件工程', 20, 80, '2019-05-14 06:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (113, 'T120310', '教师7', '2017-2018学年第二学期', 'KC53012_13', '通信网络综合实训', 2, '机电工程系', '机电一体化', 30, 70, '2019-05-14 06:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (114, 'T120309', '教师8', '2017-2018学年第二学期', 'KC53012_14', '数字逻辑电路实训', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 06:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (115, 'T120308', '教师9', '2017-2018学年第二学期', 'KC53012_15', '单片机应用技术实训', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 06:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (116, 'T120307', '教师10', '2017-2018学年第二学期', 'KC53012_16', '云计算与网络虚拟化设计实训', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 07:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (117, 'T120306', '教师11', '2017-2018学年第二学期', 'KC53012_17', '电路与电子技术基础实验', 3, '信息工程系', '软件工程', 40, 60, '2019-05-14 07:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (118, 'T120305', '教师12', '2017-2018学年第一学期', 'KC53012_18', '编译原理实验', 2, '机电工程系', '机电一体化', 30, 70, '2019-05-14 07:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (119, 'T120304', '教师13', '2017-2018学年第一学期', 'KC53012_19', '数据库原理及应用实验', 4, '电子工程系', '机械原理', 40, 60, '2019-05-14 07:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (120, 'T120303', '教师14', '2017-2018学年第一学期', 'KC53012_20', '程控交换技术实验', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 07:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (121, 'T120302', '教师15', '2017-2018学年第一学期', 'KC53012_21', '高频电子线路A实验', 2, '信息工程系', '网路工程', 30, 70, '2019-05-14 07:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (122, 'T120301', '教师16', '2017-2018学年第一学期', 'KC53012_22', '光纤通信系统实验', 4, '信息工程系', '软件工程', 20, 80, '2019-05-14 07:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (123, 'T120300', '教师17', '2017-2018学年第一学期', 'KC53012_23', '计算机组成原理', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 07:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (124, 'T120299', '教师18', '2017-2018学年第一学期', 'KC53012_24', '计算机组成原理', 3, '电子工程系', '机械原理', 20, 80, '2019-05-14 07:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (125, 'T120316', '教师19', '2017-2018学年第一学期', 'KC53012_25', '电子技术基础', 2, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 07:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (126, 'T120315', '教师20', ' 2016-2017学年第二学期', 'KC53012_26', '电子技术基础', 2, '信息工程系', '网路工程', 30, 70, '2019-05-14 08:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (127, 'T120314', '教师21', ' 2016-2017学年第二学期', 'KC53012_27', '现代通信网络技术', 4, '信息工程系', '软件工程', 40, 60, '2019-05-14 08:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (128, 'T120313', '教师22', ' 2016-2017学年第二学期', 'KC53012_28', '现代通信网络技术', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 08:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (129, 'T120312', '教师23', ' 2016-2017学年第二学期', 'KC53012_29', '网络设备及应用', 3, '电子工程系', '机械原理', 30, 70, '2019-05-14 08:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (130, 'T120311', '教师24', ' 2016-2017学年第二学期', 'KC53012_30', '光纤通信系统', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 08:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (131, 'T120310', '教师25', ' 2016-2017学年第二学期', 'KC53012_31', '程控交换技术', 4, '信息工程系', '网路工程', 20, 80, '2019-05-14 08:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (132, 'T120309', '教师26', ' 2016-2017学年第二学期', 'KC53012_32', '网页制作', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 08:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (133, 'T120308', '教师27', ' 2016-2017学年第二学期', 'KC53012_33', '数据通信原理', 2, '机电工程系', '机电一体化', 40, 60, '2019-05-14 08:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (134, 'T120307', '教师28', ' 2016-2017学年第二学期', 'KC53012_34', 'Linux操作系统与网络构建', 4, '电子工程系', '机械原理', 30, 70, '2019-05-14 08:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (135, 'T120306', '教师29', ' 2016-2017学年第二学期', 'KC53012_35', 'Axure原型设计（选修）', 2, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 08:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (136, 'T120305', '教师30', ' 2016-2017学年第二学期', 'KC53012_36', '微信小程序技术及应用（选修）', 3, '信息工程系', '网路工程', 20, 80, '2019-05-14 09:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (137, 'T120304', '教师31', ' 2016-2017学年第二学期', 'KC53012_37', '通信网络综合实训', 2, '信息工程系', '软件工程', 30, 70, '2019-05-14 09:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (138, 'T120303', '教师32', ' 2016-2017学年第二学期', 'KC53012_38', '数字逻辑电路实训', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 09:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (139, 'T120302', '教师33', ' 2016-2017学年第二学期', 'KC53012_39', '单片机应用技术实训', 4, '电子工程系', '机械原理', 20, 80, '2019-05-14 09:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (140, 'T120301', '教师34', ' 2016-2017学年第二学期', 'KC53012_40', '云计算与网络虚拟化设计实训', 2, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 09:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (141, 'T120300', '教师35', ' 2016-2017学年第二学期', 'KC53012_41', '电路与电子技术基础实验', 3, '信息工程系', '网路工程', 40, 60, '2019-05-14 09:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (142, 'T120316', '教师1', ' 2016-2017学年第二学期', 'KC53012_42', '编译原理实验', 2, '信息工程系', '软件工程', 30, 70, '2019-05-14 09:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (143, 'T120315', '教师2', ' 2016-2017学年第二学期', 'KC53012_43', '数据库原理及应用实验', 4, '机电工程系', '机电一体化', 40, 60, '2019-05-14 09:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (144, 'T120314', '教师3', ' 2016-2017学年第二学期', 'KC53012_44', '程控交换技术实验', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 09:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (145, 'T120313', '教师4', ' 2016-2017学年第二学期', 'KC53012_45', '高频电子线路A实验', 2, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-14 09:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (146, 'T120312', '教师5', ' 2016-2017学年第二学期', 'KC53012_46', '光纤通信系统实验', 4, '信息工程系', '网路工程', 20, 80, '2019-05-14 10:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (147, 'T120311', '教师6', ' 2016-2017学年第二学期', 'KC53012_47', '云计算与网络虚拟化设计实训', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 10:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (148, 'T120310', '教师7', ' 2016-2017学年第二学期', 'KC53012_48', '计算机组成原理', 3, '机电工程系', '机电一体化', 20, 80, '2019-05-14 10:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (149, 'T120309', '教师8', ' 2016-2017学年第二学期', 'KC53012_49', '计算机组成原理', 2, '电子工程系', '机械原理', 40, 60, '2019-05-14 10:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (150, 'T120308', '教师9', ' 2016-2017学年第二学期', 'KC53012_50', '电子技术基础', 2, '信息工程系', '计算机科学与技术', 30, 70, '2019-05-14 10:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (151, 'T120307', '教师10', ' 2016-2017学年第二学期', 'KC53012_51', '电子技术基础', 4, '信息工程系', '网路工程', 40, 60, '2019-05-14 10:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (152, 'T120306', '教师11', ' 2016-2017学年第二学期', 'KC53012_52', '现代通信网络技术', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 10:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (153, 'T120305', '教师12', '2016-2017学年第一学期', 'KC53012_53', '现代通信网络技术', 3, '机电工程系', '机电一体化', 30, 70, '2019-05-14 10:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (154, 'T120304', '教师13', '2016-2017学年第一学期', 'KC53012_54', '网络设备及应用', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 10:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (155, 'T120303', '教师14', '2016-2017学年第一学期', 'KC53012_55', '光纤通信系统', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 10:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (156, 'T120302', '教师15', '2016-2017学年第一学期', 'KC53012_56', '程控交换技术', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 11:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (157, 'T120301', '教师16', '2016-2017学年第一学期', 'KC53012_57', '网页制作', 2, '信息工程系', '软件工程', 40, 60, '2019-05-14 11:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (158, 'T120300', '教师17', '2016-2017学年第一学期', 'KC53012_58', '数据通信原理', 4, '机电工程系', '机电一体化', 30, 70, '2019-05-14 11:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (159, 'T120299', '教师18', '2016-2017学年第一学期', 'KC53012_59', 'Linux操作系统与网络构建', 2, '电子工程系', '机械原理', 40, 60, '2019-05-14 11:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (160, 'T120316', '教师19', '2016-2017学年第一学期', 'KC53012_60', 'Axure原型设计（选修）', 3, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 11:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (161, 'T120315', '教师20', '2016-2017学年第一学期', 'KC53012_61', '微信小程序技术及应用（选修）', 2, '信息工程系', '网路工程', 30, 70, '2019-05-14 11:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (162, 'T120314', '教师21', '2016-2017学年第一学期', 'KC53012_62', '通信网络综合实训', 2, '信息工程系', '软件工程', 20, 80, '2019-05-14 11:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (163, 'T120313', '教师22', '2016-2017学年第一学期', 'KC53012_63', '数字逻辑电路实训', 4, '机电工程系', '机电一体化', 20, 80, '2019-05-14 11:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (164, 'T120312', '教师23', '2016-2017学年第一学期', 'KC53012_64', '单片机应用技术实训', 2, '电子工程系', '机械原理', 20, 80, '2019-05-14 11:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (165, 'T120311', '教师24', '2016-2017学年第一学期', 'KC53012_65', '云计算与网络虚拟化设计实训', 3, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 11:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (166, 'T120310', '教师25', '2016-2017学年第一学期', 'KC53012_66', '电路与电子技术基础实验', 2, '信息工程系', '网路工程', 30, 70, '2019-05-14 12:01:00', NULL, '0');
INSERT INTO `mod_program` VALUES (167, 'T120309', '教师26', '2016-2017学年第一学期', 'KC53012_67', '编译原理实验', 4, '信息工程系', '软件工程', 40, 60, '2019-05-14 12:07:00', NULL, '0');
INSERT INTO `mod_program` VALUES (168, 'T120308', '教师27', '2016-2017学年第一学期', 'KC53012_68', '数据库原理及应用实验', 2, '机电工程系', '机电一体化', 20, 80, '2019-05-14 12:13:00', NULL, '0');
INSERT INTO `mod_program` VALUES (169, 'T120307', '教师28', '2016-2017学年第一学期', 'KC53012_69', '程控交换技术实验', 2, '电子工程系', '机械原理', 30, 70, '2019-05-14 12:19:00', NULL, '0');
INSERT INTO `mod_program` VALUES (170, 'T120306', '教师29', '2016-2017学年第一学期', 'KC53012_70', '高频电子线路A实验', 4, '信息工程系', '计算机科学与技术', 20, 80, '2019-05-14 12:25:00', NULL, '0');
INSERT INTO `mod_program` VALUES (171, 'T120305', '教师30', '2016-2017学年第一学期', 'KC53012_71', '光纤通信系统实验', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 12:31:00', NULL, '0');
INSERT INTO `mod_program` VALUES (172, 'T120304', '教师31', '2016-2017学年第一学期', 'KC53012_72', '计算机组成原理', 3, '信息工程系', '软件工程', 20, 80, '2019-05-14 12:37:00', NULL, '0');
INSERT INTO `mod_program` VALUES (173, 'T120303', '教师32', '2016-2017学年第一学期', 'KC53012_73', '计算机组成原理', 2, '机电工程系', '机电一体化', 40, 60, '2019-05-14 12:43:00', NULL, '0');
INSERT INTO `mod_program` VALUES (174, 'T120302', '教师33', '2016-2017学年第一学期', 'KC53012_74', '电子技术基础', 2, '电子工程系', '机械原理', 30, 70, '2019-05-14 12:49:00', NULL, '0');
INSERT INTO `mod_program` VALUES (175, 'T120301', '教师34', '2016-2017学年第一学期', 'KC53012_75', '电子技术基础', 2, '信息工程系', '计算机科学与技术', 40, 60, '2019-05-14 12:55:00', NULL, '0');
INSERT INTO `mod_program` VALUES (176, 'T120300', '教师35', '2016-2017学年第一学期', 'KC53012_76', '现代通信网络技术', 2, '信息工程系', '网路工程', 20, 80, '2019-05-14 13:01:00', NULL, '0');

-- ----------------------------
-- Table structure for mod_store
-- ----------------------------
DROP TABLE IF EXISTS `mod_store`;
CREATE TABLE `mod_store`  (
  `store_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '创业园店铺管理',
  `stu_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `stu_depart` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生系别',
  `stu_class` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生班级',
  `stu_num` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `shop_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `shop_address` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺地址',
  `business_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `rent_start_time` datetime(0) NULL DEFAULT NULL COMMENT '租约开始时间',
  `rent_end_time` datetime(0) NULL DEFAULT NULL COMMENT '租约结束时间',
  `adviser` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导老师',
  `file_path` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请文件路径',
  `apply_status` int(5) NOT NULL COMMENT '申请审核状态',
  `apply_time` datetime(0) NOT NULL COMMENT '申请提交时间',
  `apply_reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请驳回反馈',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '创新创业园店铺管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_store
-- ----------------------------
INSERT INTO `mod_store` VALUES (1, '多俊睿', '机电工程系', '15512001', '1551200124', '多多喜乐街', '小黄楼-20102', '打字复印，喷绘定制', '2019-05-01 00:00:00', '2020-05-01 00:00:00', '邱勋拥', NULL, 1, '2019-05-13 21:30:49', 'sadasd', '2019-05-13 21:30:49', NULL, '0');
INSERT INTO `mod_store` VALUES (2, '学生B', '信息工程系', '15512001', '1551200124', '小班服', '小黄楼2012', '服装出租', '2019-05-06 00:00:00', '2019-05-31 00:00:00', '李老师', NULL, 0, '2019-05-14 12:51:36', NULL, '2019-05-14 12:51:36', NULL, '0');
INSERT INTO `mod_store` VALUES (3, '学生C', '管理系', '15512003', '1551200315', '我诺斯摄影', '小黄楼2503', '照片拍摄、喷绘制作', '2019-05-01 00:00:00', '2020-01-01 00:00:00', '廖老师', NULL, 0, '2019-05-19 19:29:58', NULL, '2019-05-19 19:29:58', NULL, '0');
INSERT INTO `mod_store` VALUES (4, '学生D', '机电工程系', '16312001', '1631200130', '二手书管家', '创业园10202', '二手书交易、图书出租', '2018-03-01 00:00:00', '2019-12-31 00:00:00', '王老师', NULL, 0, '2019-05-19 19:31:37', NULL, '2019-05-19 19:31:37', NULL, '0');
INSERT INTO `mod_store` VALUES (5, '学生E', '外贸与外语系', '13212001', '1321200124', '英语阅读活动角', '创业园12201', '英语活动组织、教育服务', '2019-05-01 00:00:00', '2021-03-01 00:00:00', '方老师', NULL, 0, '2019-05-19 19:33:53', NULL, '2019-05-19 19:33:53', NULL, '0');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('EtimsScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('EtimsScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('EtimsScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'cn.duojunrui.etims.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720031636E2E64756F6A756E7275692E6574696D732E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720032636E2E64756F6A756E7275692E6574696D732E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400096574696D735461736B74000D6574696D734E6F506172616D7374000074000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('EtimsScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'cn.duojunrui.etims.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720031636E2E64756F6A756E7275692E6574696D732E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720032636E2E64756F6A756E7275692E6574696D732E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000027400096574696D735461736B74000B6574696D73506172616D737400056574696D7374000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('EtimsScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('EtimsScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('EtimsScheduler', 'DESKTOP-TLPG4SO1560304030867', 1560310958892, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('EtimsScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1560304040000, -1, 5, 'PAUSED', 'CRON', 1560304031000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('EtimsScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1560304040000, -1, 5, 'PAUSED', 'CRON', 1560304031000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-27 19:31:12', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-27 19:31:05', '初始化密码 123456');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '桂林电子科技大学信息科技学院', 0, '桂电信科', '15888888888', 'guidianxinke@xinke.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:29:12');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '信息工程系', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:28:42');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '电子工程系', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:29:12');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '2018级', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:26:25');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '2017级', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:26:36');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '2016级', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:26:44');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '2015级', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:28:42');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '2014级', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:27:05');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '2018级', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:29:01');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '2017级', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-21 00:29:12');
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '机电工程系', 3, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:22:19', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 100, '0,100', '管理系', 4, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:22:42', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 100, '0,100', '设计系', 5, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:22:52', '', NULL);
INSERT INTO `sys_dept` VALUES (203, 100, '0,100', '外贸与外语系', 6, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:23:28', '', NULL);
INSERT INTO `sys_dept` VALUES (204, 100, '0,100', '思政部', 7, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:23:56', '', NULL);
INSERT INTO `sys_dept` VALUES (205, 100, '0,100', '公共课程教学部', 8, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:24:14', '', NULL);
INSERT INTO `sys_dept` VALUES (206, 100, '0,100', '体育教研部', 9, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:24:29', '', NULL);
INSERT INTO `sys_dept` VALUES (207, 106, '0,100,101,106', '15512001班', 1, '2015级计算机一班', '', '', '0', '0', 'admin', '2019-04-21 00:27:32', 'admin', '2019-04-21 00:28:34');
INSERT INTO `sys_dept` VALUES (208, 106, '0,100,101,106', '15512002班', 2, '2015级计算机2班', '', '', '0', '0', 'admin', '2019-04-21 00:28:18', 'admin', '2019-04-21 00:28:42');
INSERT INTO `sys_dept` VALUES (209, 100, '0,100', '教务科技部', 10, NULL, NULL, NULL, '0', '0', 'admin', '2019-04-21 00:42:23', '', NULL);
INSERT INTO `sys_dept` VALUES (210, 100, '0,100', '系统维护', 100, '多多科技', '18178322520', 'duojunrui@163.com', '0', '0', 'admin', '2019-04-28 18:08:11', '', NULL);
INSERT INTO `sys_dept` VALUES (211, 103, '0,100,101,103', '18512001班', 1, '黄建灯', '18178322222', 'test@qq.com', '0', '0', 'etims', '2019-05-13 13:08:32', '', NULL);
INSERT INTO `sys_dept` VALUES (212, 104, '0,100,101,104', '17512001班', 1, '刘老师', '13200363200', '12122@qq.com', '0', '0', 'etims', '2019-05-13 13:09:06', '', NULL);
INSERT INTO `sys_dept` VALUES (213, 105, '0,100,101,105', '16512001班', 1, 'Lily', '13452366320', '11@qq.com', '0', '0', 'etims', '2019-05-13 13:09:32', '', NULL);
INSERT INTO `sys_dept` VALUES (214, 107, '0,100,101,107', '14512001班', 1, '王老师', '15200362301', '123@qq.com', '0', '0', 'etims', '2019-05-13 13:10:17', '', NULL);
INSERT INTO `sys_dept` VALUES (215, 102, '0,100,102', '2016级', 3, '黄老师', '13562303026', '152@qq.com', '0', '0', 'etims', '2019-05-13 13:11:41', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (11, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (12, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (13, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (14, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (15, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (16, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (17, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (18, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (19, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (20, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (21, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (22, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (23, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '1', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-22 17:42:40', '生成操作');
INSERT INTO `sys_dict_data` VALUES (24, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (25, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (26, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '上课教学资料', '上课教学资料', 'mod_material_category', '', 'primary', 'Y', '0', 'admin', '2019-04-27 19:03:36', 'etims', '2019-05-14 11:20:44', '上课教学资料');
INSERT INTO `sys_dict_data` VALUES (101, 2, '实验试题资料', '实验试题资料', 'mod_material_category', '', 'success', 'Y', '0', 'admin', '2019-04-27 19:04:48', 'etims', '2019-05-14 11:20:48', '实验试题资料');
INSERT INTO `sys_dict_data` VALUES (102, 3, '实验案例资料', '实验案例资料', 'mod_material_category', '', 'info', 'Y', '0', 'admin', '2019-04-27 19:05:33', 'etims', '2019-05-14 11:20:52', '实验案例资料');
INSERT INTO `sys_dict_data` VALUES (104, 4, '文献参考资料', '文献参考资料', 'mod_material_category', '', 'warning', 'Y', '0', 'admin', '2019-04-27 19:06:45', 'etims', '2019-05-14 11:20:56', '文献参考资料');
INSERT INTO `sys_dict_data` VALUES (105, 5, '其他学习资料', '其他学习资料', 'mod_material_category', '', 'danger', 'Y', '0', 'admin', '2019-04-27 19:07:42', 'etims', '2019-05-14 11:21:00', '其他学习资料');
INSERT INTO `sys_dict_data` VALUES (106, 1, 'zip', 'zip', 'mod_material_file_type', '', 'primary', 'Y', '0', 'admin', '2019-04-27 19:42:23', 'admin', '2019-04-27 19:44:36', 'zip文件');
INSERT INTO `sys_dict_data` VALUES (107, 2, 'doc', 'doc', 'mod_material_file_type', '', 'primary', 'Y', '0', 'admin', '2019-04-27 19:43:17', 'admin', '2019-04-27 19:44:45', 'Word文档 doc');
INSERT INTO `sys_dict_data` VALUES (108, 3, 'docx', 'docx', 'mod_material_file_type', '', 'primary', 'Y', '0', 'admin', '2019-04-27 19:43:41', 'admin', '2019-04-27 19:44:53', 'Word文档 docx');
INSERT INTO `sys_dict_data` VALUES (109, 1, '入库', '0', 'mod_equipment_operate_status', NULL, 'success', 'Y', '0', 'etims', '2019-04-28 20:22:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 2, '出库', '1', 'mod_equipment_operate_status', NULL, 'warning', 'Y', '0', 'etims', '2019-04-28 20:22:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 1, '信息工程系', '信息工程系', 'mod_student_department', '', 'default', 'Y', '0', 'etims', '2019-05-13 12:53:49', 'etims', '2019-05-13 19:46:03', '');
INSERT INTO `sys_dict_data` VALUES (112, 2, '电子工程系', '电子工程系', 'mod_student_department', '', 'default', 'Y', '0', 'etims', '2019-05-13 12:54:27', 'etims', '2019-05-13 19:45:52', '');
INSERT INTO `sys_dict_data` VALUES (113, 3, '机电工程系', '机电工程系', 'mod_student_department', '', 'default', 'Y', '0', 'etims', '2019-05-13 12:54:44', 'etims', '2019-05-13 19:45:41', '');
INSERT INTO `sys_dict_data` VALUES (114, 4, '管理系', '管理系', 'mod_student_department', '', 'default', 'Y', '0', 'etims', '2019-05-13 12:54:59', 'etims', '2019-05-13 19:45:33', '');
INSERT INTO `sys_dict_data` VALUES (115, 5, '设计系', '设计系', 'mod_student_department', '', 'default', 'Y', '0', 'etims', '2019-05-13 12:55:18', 'etims', '2019-05-13 19:45:26', '');
INSERT INTO `sys_dict_data` VALUES (116, 6, '外贸与外语系', '外贸与外语系', 'mod_student_department', '', 'default', 'Y', '0', 'etims', '2019-05-13 12:55:36', 'etims', '2019-05-13 19:45:16', '');
INSERT INTO `sys_dict_data` VALUES (117, 1, '待审核', '0', 'mod_apply_status', '', 'info', 'Y', '0', 'etims', '2019-05-13 15:18:01', 'etims', '2019-05-13 15:37:52', '');
INSERT INTO `sys_dict_data` VALUES (118, 2, '通过', '1', 'mod_apply_status', '', 'success', 'Y', '0', 'etims', '2019-05-13 15:18:18', 'etims', '2019-05-13 15:37:57', '');
INSERT INTO `sys_dict_data` VALUES (119, 3, '未通过', '2', 'mod_apply_status', '', 'danger', 'Y', '0', 'etims', '2019-05-13 15:18:39', 'etims', '2019-05-13 15:44:32', '');
INSERT INTO `sys_dict_data` VALUES (124, 1, '2016-2017学年第一学期', '2016-2017学年第一学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:35:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (125, 2, '2016-2017学年第二学期', '2016-2017学年第二学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:35:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (126, 3, '2017-2018学年第一学期', '2017-2018学年第一学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:35:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (127, 4, '2017-2018学年第二学期', '2017-2018学年第二学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:35:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (128, 5, '2018-2019学年第一学期', '2018-2019学年第一学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:36:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (129, 6, '2018-2019学年第二学期', '2018-2019学年第二学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:36:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (130, 7, '2019-2020学年第一学期', '2019-2020学年第一学期', 'mod_term', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 19:36:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (131, 1, '正考', '0', 'mod_exam_type', '', 'success', 'Y', '0', 'etims', '2019-05-13 20:35:52', 'etims', '2019-05-17 11:43:55', '');
INSERT INTO `sys_dict_data` VALUES (132, 2, '补考', '1', 'mod_exam_type', '', 'info', 'Y', '0', 'etims', '2019-05-13 20:36:07', 'etims', '2019-05-17 11:44:01', '');
INSERT INTO `sys_dict_data` VALUES (133, 3, '重修', '2', 'mod_exam_type', '', 'warning', 'Y', '0', 'etims', '2019-05-13 20:36:24', 'etims', '2019-05-17 11:44:05', '');
INSERT INTO `sys_dict_data` VALUES (134, 4, '旷考', '3', 'mod_exam_type', '', 'danger', 'Y', '0', 'etims', '2019-05-13 20:37:00', 'etims', '2019-05-17 11:44:09', '');
INSERT INTO `sys_dict_data` VALUES (135, 1, '通知公告', '通知公告', 'mod_article_type', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 23:46:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (136, 2, '中心动态', '中心动态', 'mod_article_type', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 23:46:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (137, 3, '创新成果', '创新成果', 'mod_article_type', NULL, 'default', 'Y', '0', 'etims', '2019-05-13 23:46:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (138, 1, '已发布', '0', 'mod_article_status', '', 'success', 'Y', '0', 'etims', '2019-05-14 00:07:20', 'etims', '2019-05-14 10:44:39', '');
INSERT INTO `sys_dict_data` VALUES (139, 2, '已关闭', '1', 'mod_article_status', '', 'warning', 'Y', '0', 'etims', '2019-05-14 00:07:34', 'etims', '2019-05-14 10:44:59', '');
INSERT INTO `sys_dict_data` VALUES (140, 4, 'xls', 'xls', 'mod_material_file_type', NULL, 'primary', 'Y', '0', 'etims', '2019-05-14 11:22:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (141, 5, 'xlsx', 'xlsx', 'mod_material_file_type', NULL, 'primary', 'Y', '0', 'etims', '2019-05-14 11:22:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (142, 6, 'pdf', 'pdf', 'mod_material_file_type', NULL, 'primary', 'Y', '0', 'etims', '2019-05-14 11:23:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (143, 7, 'ppt', 'ppt', 'mod_material_file_type', NULL, 'primary', 'Y', '0', 'etims', '2019-05-14 11:23:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (144, 8, 'pptx', 'pptx', 'mod_material_file_type', NULL, 'primary', 'Y', '0', 'etims', '2019-05-14 11:23:55', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (6, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (8, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (9, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '教学资料分类', 'mod_material_category', '0', 'admin', '2019-04-27 18:59:15', 'admin', '2019-04-27 19:40:01', '教学资源列表');
INSERT INTO `sys_dict_type` VALUES (101, '资料文件类型', 'mod_material_file_type', '0', 'admin', '2019-04-27 19:41:31', 'etims', '2019-05-14 11:26:30', '资料文件类型');
INSERT INTO `sys_dict_type` VALUES (102, '设备出入库操作状态', 'mod_equipment_operate_status', '0', 'etims', '2019-04-28 20:21:39', '', NULL, '设备出入库操作状态');
INSERT INTO `sys_dict_type` VALUES (103, '学生系别', 'mod_student_department', '0', 'etims', '2019-05-13 12:53:06', 'etims', '2019-05-13 12:58:47', '学生系别分类');
INSERT INTO `sys_dict_type` VALUES (104, '申请状态', 'mod_apply_status', '0', 'etims', '2019-05-13 15:17:42', '', NULL, '申请状态');
INSERT INTO `sys_dict_type` VALUES (105, '学期管理', 'mod_term', '0', 'etims', '2019-05-13 17:46:37', '', NULL, '学期管理');
INSERT INTO `sys_dict_type` VALUES (106, '考核类型', 'mod_exam_type', '0', 'etims', '2019-05-13 20:35:20', '', NULL, '考核类型');
INSERT INTO `sys_dict_type` VALUES (107, '网站文章类型', 'mod_article_type', '0', 'etims', '2019-05-13 23:45:12', '', NULL, '网站文章类型');
INSERT INTO `sys_dict_type` VALUES (108, '文章发布状态', 'mod_article_status', '0', 'etims', '2019-05-14 00:06:56', '', NULL, '文章发布状态');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, 'etimsTask', '系统默认（无参）', 'etimsNoParams', '', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-12 13:04:31', '');
INSERT INTO `sys_job` VALUES (2, 'etimsTask', '系统默认（有参）', 'etimsParams', 'etims', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-05 21:34:22', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (12, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 12:27:09');
INSERT INTO `sys_job_log` VALUES (13, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 12:27:50');
INSERT INTO `sys_job_log` VALUES (14, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 12:28:00');
INSERT INTO `sys_job_log` VALUES (15, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 12:28:10');
INSERT INTO `sys_job_log` VALUES (16, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 12:28:20');
INSERT INTO `sys_job_log` VALUES (17, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：1毫秒', '0', '', '2019-05-12 13:01:50');
INSERT INTO `sys_job_log` VALUES (18, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:02:00');
INSERT INTO `sys_job_log` VALUES (19, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:02:10');
INSERT INTO `sys_job_log` VALUES (20, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:02:20');
INSERT INTO `sys_job_log` VALUES (21, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:02:30');
INSERT INTO `sys_job_log` VALUES (22, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:02:40');
INSERT INTO `sys_job_log` VALUES (23, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：1毫秒', '0', '', '2019-05-12 13:02:50');
INSERT INTO `sys_job_log` VALUES (24, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:03:00');
INSERT INTO `sys_job_log` VALUES (25, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:03:10');
INSERT INTO `sys_job_log` VALUES (26, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:03:20');
INSERT INTO `sys_job_log` VALUES (27, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:03:30');
INSERT INTO `sys_job_log` VALUES (28, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:03:40');
INSERT INTO `sys_job_log` VALUES (29, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:03:50');
INSERT INTO `sys_job_log` VALUES (30, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：1毫秒', '0', '', '2019-05-12 13:04:00');
INSERT INTO `sys_job_log` VALUES (31, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:04:10');
INSERT INTO `sys_job_log` VALUES (32, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:04:20');
INSERT INTO `sys_job_log` VALUES (33, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-12 13:04:30');
INSERT INTO `sys_job_log` VALUES (34, 'etimsTask', '系统默认（无参）', 'etimsNoParams', NULL, 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-22 17:41:16');
INSERT INTO `sys_job_log` VALUES (35, 'etimsTask', '系统默认（有参）', 'etimsParams', 'etims', 'etimsTask 总共耗时：0毫秒', '0', '', '2019-05-22 17:41:16');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `user_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 379 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-27 20:40:32');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 20:40:36');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 21:54:44');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-27 21:58:32');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 21:58:37');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-27 22:25:51');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 22:25:54');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 22:26:36');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 22:52:07');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 22:56:42');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-27 22:58:52');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 00:20:07');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 11:25:15');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 12:38:12');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 13:23:33');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 13:23:35');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 13:32:18');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 13:32:21');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 13:49:06');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 13:56:42');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 14:16:16');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 14:45:48');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 14:45:50');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 14:48:06');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 16:42:29');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 17:12:10');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-28 17:12:14');
INSERT INTO `sys_logininfor` VALUES (28, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-04-28 17:12:25');
INSERT INTO `sys_logininfor` VALUES (29, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-04-28 17:12:32');
INSERT INTO `sys_logininfor` VALUES (30, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-04-28 17:12:39');
INSERT INTO `sys_logininfor` VALUES (31, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 17:13:19');
INSERT INTO `sys_logininfor` VALUES (32, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-28 17:13:23');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 17:14:18');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-28 17:14:21');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 17:39:13');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 17:40:39');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-04-28 17:40:42');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 17:40:48');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 17:41:50');
INSERT INTO `sys_logininfor` VALUES (40, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-04-28 17:42:10');
INSERT INTO `sys_logininfor` VALUES (41, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 17:42:16');
INSERT INTO `sys_logininfor` VALUES (42, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-04-28 17:42:19');
INSERT INTO `sys_logininfor` VALUES (43, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 17:43:04');
INSERT INTO `sys_logininfor` VALUES (44, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-04-28 17:43:08');
INSERT INTO `sys_logininfor` VALUES (45, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误4次', '2019-04-28 17:43:52');
INSERT INTO `sys_logininfor` VALUES (46, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误5次', '2019-04-28 17:44:03');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 17:44:23');
INSERT INTO `sys_logininfor` VALUES (48, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-28 17:49:10');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 17:49:15');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 17:53:49');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 17:53:59');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 17:56:00');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 18:01:41');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 18:01:47');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 18:09:20');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 18:09:24');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 18:15:35');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-28 18:18:58');
INSERT INTO `sys_logininfor` VALUES (59, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 18:19:06');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-28 19:09:33');
INSERT INTO `sys_logininfor` VALUES (61, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 19:09:58');
INSERT INTO `sys_logininfor` VALUES (62, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 19:15:25');
INSERT INTO `sys_logininfor` VALUES (63, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 19:31:12');
INSERT INTO `sys_logininfor` VALUES (64, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 19:31:20');
INSERT INTO `sys_logininfor` VALUES (65, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 19:34:08');
INSERT INTO `sys_logininfor` VALUES (66, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 19:34:12');
INSERT INTO `sys_logininfor` VALUES (67, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 20:20:34');
INSERT INTO `sys_logininfor` VALUES (68, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 20:33:00');
INSERT INTO `sys_logininfor` VALUES (69, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 20:49:23');
INSERT INTO `sys_logininfor` VALUES (70, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 21:20:26');
INSERT INTO `sys_logininfor` VALUES (71, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 21:36:22');
INSERT INTO `sys_logininfor` VALUES (72, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 21:36:33');
INSERT INTO `sys_logininfor` VALUES (73, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 21:36:39');
INSERT INTO `sys_logininfor` VALUES (74, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 21:36:42');
INSERT INTO `sys_logininfor` VALUES (75, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 21:36:45');
INSERT INTO `sys_logininfor` VALUES (76, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-28 21:37:00');
INSERT INTO `sys_logininfor` VALUES (77, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 21:37:06');
INSERT INTO `sys_logininfor` VALUES (78, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 21:37:09');
INSERT INTO `sys_logininfor` VALUES (79, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 21:52:43');
INSERT INTO `sys_logininfor` VALUES (80, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 22:27:52');
INSERT INTO `sys_logininfor` VALUES (81, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-28 22:35:53');
INSERT INTO `sys_logininfor` VALUES (82, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 22:35:55');
INSERT INTO `sys_logininfor` VALUES (83, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-28 22:40:43');
INSERT INTO `sys_logininfor` VALUES (84, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 10:09:56');
INSERT INTO `sys_logininfor` VALUES (85, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 10:11:02');
INSERT INTO `sys_logininfor` VALUES (86, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 10:11:09');
INSERT INTO `sys_logininfor` VALUES (87, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 10:25:26');
INSERT INTO `sys_logininfor` VALUES (88, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 11:00:30');
INSERT INTO `sys_logininfor` VALUES (89, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 11:02:20');
INSERT INTO `sys_logininfor` VALUES (90, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 11:23:31');
INSERT INTO `sys_logininfor` VALUES (91, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 12:33:38');
INSERT INTO `sys_logininfor` VALUES (92, 'etims', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-29 14:23:11');
INSERT INTO `sys_logininfor` VALUES (93, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-29 14:27:20');
INSERT INTO `sys_logininfor` VALUES (94, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 14:50:47');
INSERT INTO `sys_logininfor` VALUES (95, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:09:42');
INSERT INTO `sys_logininfor` VALUES (96, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:10:11');
INSERT INTO `sys_logininfor` VALUES (97, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 15:14:43');
INSERT INTO `sys_logininfor` VALUES (98, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:14:52');
INSERT INTO `sys_logininfor` VALUES (99, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 15:16:18');
INSERT INTO `sys_logininfor` VALUES (100, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:27:10');
INSERT INTO `sys_logininfor` VALUES (101, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:39:28');
INSERT INTO `sys_logininfor` VALUES (102, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 15:46:05');
INSERT INTO `sys_logininfor` VALUES (103, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:46:10');
INSERT INTO `sys_logininfor` VALUES (104, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:51:08');
INSERT INTO `sys_logininfor` VALUES (105, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 15:56:14');
INSERT INTO `sys_logininfor` VALUES (106, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 15:56:16');
INSERT INTO `sys_logininfor` VALUES (107, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 16:11:04');
INSERT INTO `sys_logininfor` VALUES (108, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:41:02');
INSERT INTO `sys_logininfor` VALUES (109, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:42:53');
INSERT INTO `sys_logininfor` VALUES (110, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:42:56');
INSERT INTO `sys_logininfor` VALUES (111, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:45:44');
INSERT INTO `sys_logininfor` VALUES (112, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:45:46');
INSERT INTO `sys_logininfor` VALUES (113, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:46:45');
INSERT INTO `sys_logininfor` VALUES (114, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:46:51');
INSERT INTO `sys_logininfor` VALUES (115, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:47:37');
INSERT INTO `sys_logininfor` VALUES (116, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:47:40');
INSERT INTO `sys_logininfor` VALUES (117, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:48:21');
INSERT INTO `sys_logininfor` VALUES (118, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:48:29');
INSERT INTO `sys_logininfor` VALUES (119, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:50:25');
INSERT INTO `sys_logininfor` VALUES (120, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:50:28');
INSERT INTO `sys_logininfor` VALUES (121, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:51:52');
INSERT INTO `sys_logininfor` VALUES (122, '1551200125', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:51:57');
INSERT INTO `sys_logininfor` VALUES (123, '1551200125', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:52:35');
INSERT INTO `sys_logininfor` VALUES (124, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:52:39');
INSERT INTO `sys_logininfor` VALUES (125, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:55:52');
INSERT INTO `sys_logininfor` VALUES (126, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:55:57');
INSERT INTO `sys_logininfor` VALUES (127, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 19:57:22');
INSERT INTO `sys_logininfor` VALUES (128, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 19:57:24');
INSERT INTO `sys_logininfor` VALUES (129, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 20:01:34');
INSERT INTO `sys_logininfor` VALUES (130, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 20:01:39');
INSERT INTO `sys_logininfor` VALUES (131, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 20:01:54');
INSERT INTO `sys_logininfor` VALUES (132, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 20:01:57');
INSERT INTO `sys_logininfor` VALUES (133, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 20:02:14');
INSERT INTO `sys_logininfor` VALUES (134, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 20:02:19');
INSERT INTO `sys_logininfor` VALUES (135, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-29 20:06:29');
INSERT INTO `sys_logininfor` VALUES (136, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-04-29 20:06:32');
INSERT INTO `sys_logininfor` VALUES (137, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 20:06:34');
INSERT INTO `sys_logininfor` VALUES (138, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-29 20:49:05');
INSERT INTO `sys_logininfor` VALUES (139, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-30 10:43:09');
INSERT INTO `sys_logininfor` VALUES (140, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-30 10:45:26');
INSERT INTO `sys_logininfor` VALUES (141, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-30 10:50:57');
INSERT INTO `sys_logininfor` VALUES (142, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-30 10:51:04');
INSERT INTO `sys_logininfor` VALUES (143, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-30 14:54:50');
INSERT INTO `sys_logininfor` VALUES (144, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-30 14:55:12');
INSERT INTO `sys_logininfor` VALUES (145, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-04-30 15:02:01');
INSERT INTO `sys_logininfor` VALUES (146, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-30 15:02:08');
INSERT INTO `sys_logininfor` VALUES (147, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-04-30 15:02:21');
INSERT INTO `sys_logininfor` VALUES (148, 'etims', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-30 22:21:08');
INSERT INTO `sys_logininfor` VALUES (149, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-01 10:59:43');
INSERT INTO `sys_logininfor` VALUES (150, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-01 11:02:42');
INSERT INTO `sys_logininfor` VALUES (151, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:17:56');
INSERT INTO `sys_logininfor` VALUES (152, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:17:58');
INSERT INTO `sys_logininfor` VALUES (153, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:17:59');
INSERT INTO `sys_logininfor` VALUES (154, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:18:00');
INSERT INTO `sys_logininfor` VALUES (155, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:18:00');
INSERT INTO `sys_logininfor` VALUES (156, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:18:01');
INSERT INTO `sys_logininfor` VALUES (157, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:18:02');
INSERT INTO `sys_logininfor` VALUES (158, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:18:03');
INSERT INTO `sys_logininfor` VALUES (159, 'etims', NULL, '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-05-01 11:46:05');
INSERT INTO `sys_logininfor` VALUES (160, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-01 11:46:38');
INSERT INTO `sys_logininfor` VALUES (161, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:57:16');
INSERT INTO `sys_logininfor` VALUES (162, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-01 11:57:22');
INSERT INTO `sys_logininfor` VALUES (163, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-01 11:57:29');
INSERT INTO `sys_logininfor` VALUES (164, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-01 11:57:34');
INSERT INTO `sys_logininfor` VALUES (165, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-01 11:57:41');
INSERT INTO `sys_logininfor` VALUES (166, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-01 11:57:46');
INSERT INTO `sys_logininfor` VALUES (167, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 13:04:04');
INSERT INTO `sys_logininfor` VALUES (168, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 14:39:49');
INSERT INTO `sys_logininfor` VALUES (169, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-02 15:07:14');
INSERT INTO `sys_logininfor` VALUES (170, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 15:07:18');
INSERT INTO `sys_logininfor` VALUES (171, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 15:11:37');
INSERT INTO `sys_logininfor` VALUES (172, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 16:32:52');
INSERT INTO `sys_logininfor` VALUES (173, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 16:38:42');
INSERT INTO `sys_logininfor` VALUES (174, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 19:10:06');
INSERT INTO `sys_logininfor` VALUES (175, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 20:26:30');
INSERT INTO `sys_logininfor` VALUES (176, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-02 22:28:57');
INSERT INTO `sys_logininfor` VALUES (177, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 22:41:17');
INSERT INTO `sys_logininfor` VALUES (178, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-02 23:00:35');
INSERT INTO `sys_logininfor` VALUES (179, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-02 23:00:48');
INSERT INTO `sys_logininfor` VALUES (180, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-02 23:00:59');
INSERT INTO `sys_logininfor` VALUES (181, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-03 12:31:07');
INSERT INTO `sys_logininfor` VALUES (182, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-03 14:19:36');
INSERT INTO `sys_logininfor` VALUES (183, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-03 19:42:18');
INSERT INTO `sys_logininfor` VALUES (184, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 15:41:54');
INSERT INTO `sys_logininfor` VALUES (185, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 16:16:01');
INSERT INTO `sys_logininfor` VALUES (186, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 16:22:20');
INSERT INTO `sys_logininfor` VALUES (187, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 16:23:13');
INSERT INTO `sys_logininfor` VALUES (188, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 16:35:36');
INSERT INTO `sys_logininfor` VALUES (189, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 21:19:27');
INSERT INTO `sys_logininfor` VALUES (190, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 21:31:55');
INSERT INTO `sys_logininfor` VALUES (191, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-05 21:33:42');
INSERT INTO `sys_logininfor` VALUES (192, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 09:55:30');
INSERT INTO `sys_logininfor` VALUES (193, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 17:18:59');
INSERT INTO `sys_logininfor` VALUES (194, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 17:27:45');
INSERT INTO `sys_logininfor` VALUES (195, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 17:27:54');
INSERT INTO `sys_logininfor` VALUES (196, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 17:28:21');
INSERT INTO `sys_logininfor` VALUES (197, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 17:28:25');
INSERT INTO `sys_logininfor` VALUES (198, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 18:57:18');
INSERT INTO `sys_logininfor` VALUES (199, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 19:34:04');
INSERT INTO `sys_logininfor` VALUES (200, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:14:00');
INSERT INTO `sys_logininfor` VALUES (201, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:14:10');
INSERT INTO `sys_logininfor` VALUES (202, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:14:19');
INSERT INTO `sys_logininfor` VALUES (203, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:14:24');
INSERT INTO `sys_logininfor` VALUES (204, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:19:46');
INSERT INTO `sys_logininfor` VALUES (205, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:19:52');
INSERT INTO `sys_logininfor` VALUES (206, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:20:28');
INSERT INTO `sys_logininfor` VALUES (207, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:20:37');
INSERT INTO `sys_logininfor` VALUES (208, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:20:57');
INSERT INTO `sys_logininfor` VALUES (209, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:21:04');
INSERT INTO `sys_logininfor` VALUES (210, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:21:19');
INSERT INTO `sys_logininfor` VALUES (211, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:21:41');
INSERT INTO `sys_logininfor` VALUES (212, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:21:43');
INSERT INTO `sys_logininfor` VALUES (213, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:21:52');
INSERT INTO `sys_logininfor` VALUES (214, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-09 20:21:55');
INSERT INTO `sys_logininfor` VALUES (215, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:22:01');
INSERT INTO `sys_logininfor` VALUES (216, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-09 20:35:34');
INSERT INTO `sys_logininfor` VALUES (217, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-10 21:37:42');
INSERT INTO `sys_logininfor` VALUES (218, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-10 21:46:49');
INSERT INTO `sys_logininfor` VALUES (219, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-10 21:55:10');
INSERT INTO `sys_logininfor` VALUES (220, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 12:19:04');
INSERT INTO `sys_logininfor` VALUES (221, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 12:23:42');
INSERT INTO `sys_logininfor` VALUES (222, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 13:04:09');
INSERT INTO `sys_logininfor` VALUES (223, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 16:36:32');
INSERT INTO `sys_logininfor` VALUES (224, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 20:51:40');
INSERT INTO `sys_logininfor` VALUES (225, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 20:59:20');
INSERT INTO `sys_logininfor` VALUES (226, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 21:17:11');
INSERT INTO `sys_logininfor` VALUES (227, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-12 21:39:16');
INSERT INTO `sys_logininfor` VALUES (228, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 21:46:47');
INSERT INTO `sys_logininfor` VALUES (229, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-12 21:47:06');
INSERT INTO `sys_logininfor` VALUES (230, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 21:47:15');
INSERT INTO `sys_logininfor` VALUES (231, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 22:05:19');
INSERT INTO `sys_logininfor` VALUES (232, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-12 22:10:15');
INSERT INTO `sys_logininfor` VALUES (233, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 22:10:21');
INSERT INTO `sys_logininfor` VALUES (234, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 22:14:59');
INSERT INTO `sys_logininfor` VALUES (235, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 22:16:54');
INSERT INTO `sys_logininfor` VALUES (236, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-12 22:17:28');
INSERT INTO `sys_logininfor` VALUES (237, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 11:34:25');
INSERT INTO `sys_logininfor` VALUES (238, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-13 11:55:03');
INSERT INTO `sys_logininfor` VALUES (239, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 11:55:08');
INSERT INTO `sys_logininfor` VALUES (240, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 11:56:19');
INSERT INTO `sys_logininfor` VALUES (241, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 11:56:48');
INSERT INTO `sys_logininfor` VALUES (242, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 11:58:56');
INSERT INTO `sys_logininfor` VALUES (243, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 12:01:57');
INSERT INTO `sys_logininfor` VALUES (244, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 12:06:53');
INSERT INTO `sys_logininfor` VALUES (245, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 14:15:11');
INSERT INTO `sys_logininfor` VALUES (246, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-13 14:22:50');
INSERT INTO `sys_logininfor` VALUES (247, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户已封禁，请联系管理员', '2019-05-13 14:23:01');
INSERT INTO `sys_logininfor` VALUES (248, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 14:23:14');
INSERT INTO `sys_logininfor` VALUES (249, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-13 14:23:40');
INSERT INTO `sys_logininfor` VALUES (250, '1551200201', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 14:23:52');
INSERT INTO `sys_logininfor` VALUES (251, '1551200201', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-13 14:24:10');
INSERT INTO `sys_logininfor` VALUES (252, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-13 14:24:15');
INSERT INTO `sys_logininfor` VALUES (253, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 14:24:20');
INSERT INTO `sys_logininfor` VALUES (254, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 14:26:47');
INSERT INTO `sys_logininfor` VALUES (255, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 15:16:13');
INSERT INTO `sys_logininfor` VALUES (256, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-13 15:49:32');
INSERT INTO `sys_logininfor` VALUES (257, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 15:49:36');
INSERT INTO `sys_logininfor` VALUES (258, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-13 17:24:57');
INSERT INTO `sys_logininfor` VALUES (259, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 17:25:01');
INSERT INTO `sys_logininfor` VALUES (260, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 19:33:48');
INSERT INTO `sys_logininfor` VALUES (261, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-13 23:43:06');
INSERT INTO `sys_logininfor` VALUES (262, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-14 10:14:43');
INSERT INTO `sys_logininfor` VALUES (263, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-14 10:14:55');
INSERT INTO `sys_logininfor` VALUES (264, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-14 10:28:02');
INSERT INTO `sys_logininfor` VALUES (265, '1551200124', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-14 13:39:37');
INSERT INTO `sys_logininfor` VALUES (266, '1551200124', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-14 13:46:15');
INSERT INTO `sys_logininfor` VALUES (267, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-14 13:46:31');
INSERT INTO `sys_logininfor` VALUES (268, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-14 13:46:38');
INSERT INTO `sys_logininfor` VALUES (269, 'T15512001', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-14 13:47:15');
INSERT INTO `sys_logininfor` VALUES (270, 'T15512001', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-14 13:51:44');
INSERT INTO `sys_logininfor` VALUES (271, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-14 13:52:18');
INSERT INTO `sys_logininfor` VALUES (272, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-14 13:53:15');
INSERT INTO `sys_logininfor` VALUES (273, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-14 13:53:33');
INSERT INTO `sys_logininfor` VALUES (274, '1551200217', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-14 13:54:24');
INSERT INTO `sys_logininfor` VALUES (275, '16512008', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-14 13:58:21');
INSERT INTO `sys_logininfor` VALUES (276, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-14 15:33:47');
INSERT INTO `sys_logininfor` VALUES (277, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-14 18:52:43');
INSERT INTO `sys_logininfor` VALUES (278, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 10:17:57');
INSERT INTO `sys_logininfor` VALUES (279, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 13:55:01');
INSERT INTO `sys_logininfor` VALUES (280, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-15 13:58:32');
INSERT INTO `sys_logininfor` VALUES (281, '16512008', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 13:58:41');
INSERT INTO `sys_logininfor` VALUES (282, '16512008', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-15 14:02:59');
INSERT INTO `sys_logininfor` VALUES (283, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 14:03:03');
INSERT INTO `sys_logininfor` VALUES (284, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 16:18:18');
INSERT INTO `sys_logininfor` VALUES (285, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-15 17:39:49');
INSERT INTO `sys_logininfor` VALUES (286, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 17:39:53');
INSERT INTO `sys_logininfor` VALUES (287, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 17:44:03');
INSERT INTO `sys_logininfor` VALUES (288, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-15 18:42:13');
INSERT INTO `sys_logininfor` VALUES (289, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 10:24:53');
INSERT INTO `sys_logininfor` VALUES (290, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 11:25:10');
INSERT INTO `sys_logininfor` VALUES (291, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 12:24:25');
INSERT INTO `sys_logininfor` VALUES (292, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 12:27:48');
INSERT INTO `sys_logininfor` VALUES (293, 'etims', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-16 12:39:12');
INSERT INTO `sys_logininfor` VALUES (294, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 14:18:15');
INSERT INTO `sys_logininfor` VALUES (295, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 22:45:47');
INSERT INTO `sys_logininfor` VALUES (296, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 23:00:48');
INSERT INTO `sys_logininfor` VALUES (297, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 23:35:16');
INSERT INTO `sys_logininfor` VALUES (298, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-16 23:37:07');
INSERT INTO `sys_logininfor` VALUES (299, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 10:48:54');
INSERT INTO `sys_logininfor` VALUES (300, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 10:53:00');
INSERT INTO `sys_logininfor` VALUES (301, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 11:02:21');
INSERT INTO `sys_logininfor` VALUES (302, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 11:14:32');
INSERT INTO `sys_logininfor` VALUES (303, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 11:23:29');
INSERT INTO `sys_logininfor` VALUES (304, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 11:23:45');
INSERT INTO `sys_logininfor` VALUES (305, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 11:49:04');
INSERT INTO `sys_logininfor` VALUES (306, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 12:18:22');
INSERT INTO `sys_logininfor` VALUES (307, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 12:19:39');
INSERT INTO `sys_logininfor` VALUES (308, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 13:51:31');
INSERT INTO `sys_logininfor` VALUES (309, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-17 14:46:42');
INSERT INTO `sys_logininfor` VALUES (310, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-18 00:04:27');
INSERT INTO `sys_logininfor` VALUES (311, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-18 10:46:25');
INSERT INTO `sys_logininfor` VALUES (312, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-18 14:51:01');
INSERT INTO `sys_logininfor` VALUES (313, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-19 17:28:03');
INSERT INTO `sys_logininfor` VALUES (314, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-19 18:31:20');
INSERT INTO `sys_logininfor` VALUES (315, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-19 19:28:15');
INSERT INTO `sys_logininfor` VALUES (316, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-19 22:03:27');
INSERT INTO `sys_logininfor` VALUES (317, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-19 22:25:25');
INSERT INTO `sys_logininfor` VALUES (318, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-05-19 22:25:41');
INSERT INTO `sys_logininfor` VALUES (319, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-05-19 22:46:20');
INSERT INTO `sys_logininfor` VALUES (320, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-19 22:46:27');
INSERT INTO `sys_logininfor` VALUES (321, 'etims', NULL, '127.0.0.1', '内网IP', 'Internet Explorer 11', 'Windows 10', '0', '登录成功', '2019-05-20 11:12:25');
INSERT INTO `sys_logininfor` VALUES (322, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-20 12:47:13');
INSERT INTO `sys_logininfor` VALUES (323, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-22 17:30:28');
INSERT INTO `sys_logininfor` VALUES (324, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-22 19:15:08');
INSERT INTO `sys_logininfor` VALUES (325, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-22 19:18:09');
INSERT INTO `sys_logininfor` VALUES (326, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-22 19:18:13');
INSERT INTO `sys_logininfor` VALUES (327, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-22 19:51:22');
INSERT INTO `sys_logininfor` VALUES (328, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-22 19:51:29');
INSERT INTO `sys_logininfor` VALUES (329, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 16:34:03');
INSERT INTO `sys_logininfor` VALUES (330, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-26 16:34:11');
INSERT INTO `sys_logininfor` VALUES (331, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 16:35:49');
INSERT INTO `sys_logininfor` VALUES (332, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-26 16:40:32');
INSERT INTO `sys_logininfor` VALUES (333, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 16:40:44');
INSERT INTO `sys_logininfor` VALUES (334, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-26 16:41:06');
INSERT INTO `sys_logininfor` VALUES (335, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 16:41:15');
INSERT INTO `sys_logininfor` VALUES (336, 'etims', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-26 20:08:01');
INSERT INTO `sys_logininfor` VALUES (337, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 20:08:10');
INSERT INTO `sys_logininfor` VALUES (338, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-26 20:08:17');
INSERT INTO `sys_logininfor` VALUES (339, '16512008', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 20:08:28');
INSERT INTO `sys_logininfor` VALUES (340, '16512008', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-26 20:09:26');
INSERT INTO `sys_logininfor` VALUES (341, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', '2019-05-26 20:12:13');
INSERT INTO `sys_logininfor` VALUES (342, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-26 20:12:20');
INSERT INTO `sys_logininfor` VALUES (343, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-26 20:32:43');
INSERT INTO `sys_logininfor` VALUES (344, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-27 12:16:16');
INSERT INTO `sys_logininfor` VALUES (345, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 12:16:54');
INSERT INTO `sys_logininfor` VALUES (346, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-27 12:17:32');
INSERT INTO `sys_logininfor` VALUES (347, '16512008', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-27 12:17:41');
INSERT INTO `sys_logininfor` VALUES (348, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 12:51:06');
INSERT INTO `sys_logininfor` VALUES (349, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-27 13:31:54');
INSERT INTO `sys_logininfor` VALUES (350, '16512008', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 15:01:21');
INSERT INTO `sys_logininfor` VALUES (351, '16512008', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-27 15:04:45');
INSERT INTO `sys_logininfor` VALUES (352, '16512008', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-27 15:04:48');
INSERT INTO `sys_logininfor` VALUES (353, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-27 15:04:56');
INSERT INTO `sys_logininfor` VALUES (354, '16512016', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-27 15:04:58');
INSERT INTO `sys_logininfor` VALUES (355, '16512008', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-27 15:05:04');
INSERT INTO `sys_logininfor` VALUES (356, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 15:05:12');
INSERT INTO `sys_logininfor` VALUES (357, 'T15512001', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-27 15:06:23');
INSERT INTO `sys_logininfor` VALUES (358, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-05-27 15:07:50');
INSERT INTO `sys_logininfor` VALUES (359, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 15:08:07');
INSERT INTO `sys_logininfor` VALUES (360, 'etims', NULL, '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-05-27 15:08:42');
INSERT INTO `sys_logininfor` VALUES (361, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 15:09:11');
INSERT INTO `sys_logininfor` VALUES (362, 'etims', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-27 15:45:07');
INSERT INTO `sys_logininfor` VALUES (363, 'T15512001', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-27 16:25:55');
INSERT INTO `sys_logininfor` VALUES (364, 'T15512001', NULL, '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-27 16:26:00');
INSERT INTO `sys_logininfor` VALUES (365, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 16:26:52');
INSERT INTO `sys_logininfor` VALUES (366, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-27 22:58:25');
INSERT INTO `sys_logininfor` VALUES (367, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-05-30 15:28:42');
INSERT INTO `sys_logininfor` VALUES (368, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-02 12:24:33');
INSERT INTO `sys_logininfor` VALUES (369, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-06-02 12:24:52');
INSERT INTO `sys_logininfor` VALUES (370, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-10 15:09:31');
INSERT INTO `sys_logininfor` VALUES (371, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-12 09:47:39');
INSERT INTO `sys_logininfor` VALUES (372, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-06-12 09:48:08');
INSERT INTO `sys_logininfor` VALUES (373, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-12 09:48:26');
INSERT INTO `sys_logininfor` VALUES (374, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-06-12 09:48:30');
INSERT INTO `sys_logininfor` VALUES (375, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-12 11:10:15');
INSERT INTO `sys_logininfor` VALUES (376, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-06-12 11:30:44');
INSERT INTO `sys_logininfor` VALUES (377, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-12 11:30:55');
INSERT INTO `sys_logininfor` VALUES (378, '1551200124', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-06-12 11:31:39');
INSERT INTO `sys_logininfor` VALUES (379, 'etims', NULL, '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-06-12 11:31:46');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2069 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '公共信息管理', 0, 9, '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-14 19:00:15', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控管理', 0, 10, '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-14 19:00:03', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具管理', 0, 11, '#', 'M', '1', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-17 12:48:38', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 4, '/system/menu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-10 21:40:33', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 3, '/system/dept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-10 21:40:45', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', 'C', '1', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-14 19:00:43', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', 'C', '1', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-14 19:01:21', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', 'C', '1', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-14 19:01:45', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 2, 5, '#', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-22 18:43:24', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-12 12:19:50', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', 'C', '1', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-14 19:02:07', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务详细', 110, 6, '#', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务导出', 110, 7, '#', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成查询', 114, 1, '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成代码', 114, 2, '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '教学资源管理', 0, 1, '#', 'M', '0', '', 'fa fa-server', 'admin', '2019-04-20 23:58:09', 'admin', '2019-04-21 00:15:31', '');
INSERT INTO `sys_menu` VALUES (2001, '实验设备管理', 0, 2, '#', 'M', '0', '', 'fa fa-cubes', 'admin', '2019-04-20 23:58:59', 'etims', '2019-05-15 16:27:26', '');
INSERT INTO `sys_menu` VALUES (2002, '教学计划管理', 0, 3, '#', 'M', '0', '', 'fa fa-bar-chart-o', 'admin', '2019-04-20 23:59:27', 'admin', '2019-04-21 00:15:54', '');
INSERT INTO `sys_menu` VALUES (2003, '顶岗实习管理', 0, 4, '#', 'M', '0', '', 'fa fa-address-card-o', 'admin', '2019-04-20 23:59:51', 'admin', '2019-04-21 00:15:58', '');
INSERT INTO `sys_menu` VALUES (2004, '创新创业管理', 0, 5, '#', 'M', '0', '', 'fa fa-money', 'admin', '2019-04-21 00:00:33', 'admin', '2019-04-21 00:16:03', '');
INSERT INTO `sys_menu` VALUES (2005, '实验考核管理', 0, 6, '#', 'M', '0', '', 'fa fa-crop', 'admin', '2019-04-21 00:04:44', 'admin', '2019-04-21 00:16:10', '');
INSERT INTO `sys_menu` VALUES (2006, '网站内容管理', 0, 8, '#', 'M', '0', '', 'fa fa-file-code-o', 'admin', '2019-04-21 00:05:43', 'admin', '2019-04-28 18:00:37', '');
INSERT INTO `sys_menu` VALUES (2007, '统计分析管理', 0, 7, '#', 'M', '0', '', 'fa fa-search', 'admin', '2019-04-21 00:06:11', 'admin', '2019-04-28 16:43:25', '');
INSERT INTO `sys_menu` VALUES (2008, '教学资源', 2000, 1, '/module/material', 'C', '0', 'module:material:view', '#', 'admin', '2019-04-21 00:10:46', 'admin', '2019-04-27 15:33:41', '');
INSERT INTO `sys_menu` VALUES (2017, '查询', 2008, 1, '#', 'F', '0', 'module:material:list', '#', 'admin', '2019-04-25 18:48:55', 'admin', '2019-04-27 21:57:19', '');
INSERT INTO `sys_menu` VALUES (2019, '上传', 2008, 2, '#', 'F', '0', 'module:material:add', '#', 'admin', '2019-04-25 18:50:33', 'admin', '2019-04-27 22:08:29', '');
INSERT INTO `sys_menu` VALUES (2020, '修改', 2008, 3, '#', 'F', '0', 'module:material:edit', '#', 'admin', '2019-04-25 18:51:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '删除', 2008, 5, '#', 'F', '0', 'module:material:remove', '#', 'admin', '2019-04-25 18:51:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '设备出入库', 2001, 1, '/module/equipment', 'C', '0', 'module:equipment:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-04-28 19:39:20', '实验室设备菜单');
INSERT INTO `sys_menu` VALUES (2027, '查看设备列表', 2026, 1, '#', 'F', '0', 'module:equipment:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-28 14:29:42', '');
INSERT INTO `sys_menu` VALUES (2028, '设备入库', 2026, 2, '#', 'F', '0', 'module:equipment:add', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-28 14:29:55', '');
INSERT INTO `sys_menu` VALUES (2029, '入库信息修改', 2026, 3, '#', 'F', '0', 'module:equipment:edit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-28 14:30:09', '');
INSERT INTO `sys_menu` VALUES (2030, '入库信息删除', 2026, 4, '#', 'F', '0', 'module:equipment:remove', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-28 14:30:21', '');
INSERT INTO `sys_menu` VALUES (2031, '出库登记', 2026, 5, '#', 'F', '0', 'module:equipment:output', '#', 'admin', '2019-04-28 14:46:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '归还登记', 2026, 6, '#', 'F', '0', 'module:equipment:input', '#', 'admin', '2019-04-28 14:46:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '申请管理', 2003, 2, '/module/practice', 'C', '0', 'module:practice:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-13 12:37:57', '顶岗实习菜单');
INSERT INTO `sys_menu` VALUES (2034, '顶岗实习查询', 2033, 1, '#', 'F', '0', 'module:practice:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2035, '顶岗实习新增', 2033, 2, '#', 'F', '0', 'module:practice:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2036, '顶岗实习修改', 2033, 3, '#', 'F', '0', 'module:practice:edit', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-13 15:50:20', '');
INSERT INTO `sys_menu` VALUES (2037, '顶岗实习删除', 2033, 4, '#', 'F', '0', 'module:practice:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2044, '教学计划', 2002, 1, '/module/program', 'C', '0', 'module:program:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-13 16:45:27', '教学计划菜单');
INSERT INTO `sys_menu` VALUES (2045, '教学计划查询', 2044, 1, '#', 'F', '0', 'module:program:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '教学计划新增', 2044, 2, '#', 'F', '0', 'module:program:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2047, '教学计划修改', 2044, 3, '#', 'F', '0', 'module:program:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2048, '教学计划删除', 2044, 4, '#', 'F', '0', 'module:program:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2049, '考核成绩', 2005, 1, '/module/grade', 'C', '0', 'module:grade:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-13 20:28:02', '考核成绩菜单');
INSERT INTO `sys_menu` VALUES (2050, '考核成绩查询', 2049, 1, '#', 'F', '0', 'module:grade:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2051, '考核成绩新增', 2049, 2, '#', 'F', '0', 'module:grade:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2052, '考核成绩修改', 2049, 3, '#', 'F', '0', 'module:grade:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2053, '考核成绩删除', 2049, 4, '#', 'F', '0', 'module:grade:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2054, '店铺管理', 2004, 1, '/module/store', 'C', '0', 'module:store:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-13 20:55:36', '创业园店铺菜单');
INSERT INTO `sys_menu` VALUES (2055, '创业园店铺查询', 2054, 1, '#', 'F', '0', 'module:store:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2056, '创业园店铺新增', 2054, 2, '#', 'F', '0', 'module:store:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2057, '创业园店铺修改', 2054, 3, '#', 'F', '0', 'module:store:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2058, '创业园店铺删除', 2054, 4, '#', 'F', '0', 'module:store:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2059, '内容发布', 2006, 1, '/module/content', 'C', '0', 'module:content:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-13 22:16:03', '实验中心网站内容菜单');
INSERT INTO `sys_menu` VALUES (2060, '实验中心网站内容查询', 2059, 1, '#', 'F', '0', 'module:content:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2061, '实验中心网站内容新增', 2059, 2, '#', 'F', '0', 'module:content:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2062, '实验中心网站内容修改', 2059, 3, '#', 'F', '0', 'module:content:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2063, '实验中心网站内容删除', 2059, 4, '#', 'F', '0', 'module:content:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2065, '统计分析', 2007, 1, '/module/analyze', 'C', '0', 'module:analyze:view', '#', 'admin', '2018-03-01 00:00:00', 'etims', '2019-05-17 12:48:25', '统计分析菜单');
INSERT INTO `sys_menu` VALUES (2066, '统计分析查询', 2065, 1, '#', 'F', '0', 'module:analyze:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2067, '统计分析新增', 2065, 2, '#', 'F', '0', 'module:analyze:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2068, '统计分析修改', 2065, 3, '#', 'F', '0', 'module:analyze:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2069, '统计分析删除', 2065, 4, '#', 'F', '0', 'module:analyze:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01实验教学信息管理系统新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 19:34:53', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 实验教学信息管理系统维护公告', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-23 19:34:32', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 565 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (3, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'admin', '2018级', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-27 19:55:19');
INSERT INTO `sys_oper_log` VALUES (4, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'admin', '2018级', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"100\"],\"dictLabel\":[\"上课教学资料\"],\"dictValue\":[\"上课教学资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"上课教学资料\"]}', 0, NULL, '2019-04-27 19:57:44');
INSERT INTO `sys_oper_log` VALUES (11, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'admin', '2018级', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"aaaa\"],\"sex\":[\"实验试题资料\"],\"fileName\":[\"sssss\"],\"fileType\":[\"doc\"],\"fileSize\":[\"2.3M\"],\"uploader\":[\"多俊睿\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.material.mapper.MaterialMapper.insertMaterial-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_material          ( course,             file_name,             file_size,             file_type,                          uploader )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\n; Field \'create_time\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_time\' doesn\'t have a default value', '2019-04-27 20:23:52');
INSERT INTO `sys_oper_log` VALUES (13, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'admin', '2018级', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-27 20:39:36');
INSERT INTO `sys_oper_log` VALUES (28, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', '2018级', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"51201\"],\"equipmentName\":[\"sssss\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"sasasas\"],\"inputUser\":[\"asa\"],\"intputRemark\":[\"sasasas\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'equipment_id\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.equipment.mapper.EquipmentMapper.insertEquipment-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_equipment          ( lab_name,             equipment_name,             equipment_count,             equipment_use,                          input_user,             intput_remark )           values ( ?,             ?,             ?,             ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'equipment_id\' doesn\'t have a default value\n; Field \'equipment_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'equipment_id\' doesn\'t have a default value', '2019-04-28 13:04:41');
INSERT INTO `sys_oper_log` VALUES (32, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', '2018级', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"3232\"],\"equipmentName\":[\"wewew\"],\"equipmentCount\":[\"1111\"],\"equipmentUse\":[\"dsfsdf\"],\"inputUser\":[\"\"],\"intputRemark\":[\"dfsdfsdf\"]}', 0, NULL, '2019-04-28 13:33:03');
INSERT INTO `sys_oper_log` VALUES (33, '实验室设备', 3, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.remove()', 1, 'admin', NULL, '/module/equipment/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7c4d559edea0401ca6e0d47f9bddc020\"]}', 0, NULL, '2019-04-28 13:39:04');
INSERT INTO `sys_oper_log` VALUES (34, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', NULL, '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"1212\"],\"equipmentName\":[\"计算机\"],\"equipmentCount\":[\"121\"],\"equipmentUse\":[\"学的\"],\"inputUser\":[\"\"],\"intputRemark\":[\"实打实大所多\"]}', 0, NULL, '2019-04-28 13:39:35');
INSERT INTO `sys_oper_log` VALUES (35, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', NULL, '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"32321\"],\"equipmentName\":[\"苟富贵梵蒂冈梵蒂冈\"],\"equipmentCount\":[\"111\"],\"equipmentUse\":[\"水电费水电费是的\"],\"intputRemark\":[\"发送到发送到发送到\"]}', 0, NULL, '2019-04-28 13:44:08');
INSERT INTO `sys_oper_log` VALUES (36, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.update()', 1, 'admin', '2018级', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"多俊睿\"],\"phonenumber\":[\"18118181188\"],\"email\":[\"admin@etims.com\"],\"sex\":[\"0\"]}', 1, 'cn.duojunrui.etims.project.monitor.online.domain.OnlineSession cannot be cast to cn.duojunrui.etims.project.monitor.online.domain.OnlineSession', '2019-04-28 13:44:57');
INSERT INTO `sys_oper_log` VALUES (37, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', NULL, '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"3232\"],\"equipmentName\":[\"柔肤水发的所发生的\"],\"equipmentCount\":[\"111\"],\"equipmentUse\":[\"丰盛的水电费水电费\"],\"intputRemark\":[\"沙发是第三帝国撒的撒多\"]}', 0, NULL, '2019-04-28 13:52:41');
INSERT INTO `sys_oper_log` VALUES (38, '在线用户', 7, 'cn.duojunrui.etims.project.monitor.online.controller.UserOnlineController.forceLogout()', 1, 'admin', '2018级', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"30804cf5-7ecb-478e-9d87-736f77e13638\"]}', 0, NULL, '2019-04-28 13:57:21');
INSERT INTO `sys_oper_log` VALUES (39, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', '2018级', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"1212\"],\"equipmentName\":[\"方法水电费\"],\"equipmentCount\":[\"111\"],\"equipmentUse\":[\"sadsd \"],\"intputRemark\":[\"a递四方速递\"]}', 0, NULL, '2019-04-28 14:16:33');
INSERT INTO `sys_oper_log` VALUES (40, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'admin', '2018级', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"2\"],\"labName\":[\"1212\"],\"equipmentName\":[\"发生的发生的发\"],\"equipmentCount\":[\"1\"],\"equipmentUse\":[\"士大夫所发生的的\"],\"intputRemark\":[\"a递四方速递\"]}', 0, NULL, '2019-04-28 14:17:33');
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 1, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '2018级', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2026\"],\"menuType\":[\"F\"],\"menuName\":[\"归还登记\"],\"url\":[\"\"],\"perms\":[\"module:equipment:input\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-28 14:46:37');
INSERT INTO `sys_oper_log` VALUES (47, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'admin', '2018级', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2006,2014,2015,2016,2007,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 14:47:47');
INSERT INTO `sys_oper_log` VALUES (49, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'admin', NULL, '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"dasdas\"],\"equipmentName\":[\"dasdsad\"],\"equipmentCount\":[\"1111\"],\"equipmentUse\":[\"sadsa\"],\"intputRemark\":[\"sadsad\"]}', 0, NULL, '2019-04-28 15:42:47');
INSERT INTO `sys_oper_log` VALUES (50, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '2018级', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"公共信息管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-users\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-28 16:43:19');
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '2018级', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"统计分析管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-search\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-28 16:43:25');
INSERT INTO `sys_oper_log` VALUES (52, '重置密码', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.resetPwd()', 1, 'admin', '2018级', '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 17:08:30');
INSERT INTO `sys_oper_log` VALUES (53, '重置密码', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.resetPwd()', 1, 'admin', '2018级', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"1551200124\"],\"password\":[\"123456\"]}', 0, NULL, '2019-04-28 17:08:36');
INSERT INTO `sys_oper_log` VALUES (54, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '2018级', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"2018级\"],\"phonenumber\":[\"18118181188\"],\"email\":[\"admin@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 0, NULL, '2019-04-28 17:08:56');
INSERT INTO `sys_oper_log` VALUES (55, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.update()', 1, 'admin', '2018级', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"超级管理员\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"sex\":[\"0\"]}', 0, NULL, '2019-04-28 17:40:06');
INSERT INTO `sys_oper_log` VALUES (56, '重置密码', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.resetPwd()', 1, 'admin', '2018级', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"oldPassword\":[\"admin123\"],\"newPassword\":[\"123456\"],\"confirmPassword\":[\"123456\"]}', 0, NULL, '2019-04-28 17:40:33');
INSERT INTO `sys_oper_log` VALUES (57, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '2018级', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 17:46:29');
INSERT INTO `sys_oper_log` VALUES (58, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '2018级', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 17:46:36');
INSERT INTO `sys_oper_log` VALUES (59, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'admin', '2018级', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 17:47:26');
INSERT INTO `sys_oper_log` VALUES (60, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '教务科技部', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 17:49:47');
INSERT INTO `sys_oper_log` VALUES (61, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '教务科技部', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"2\"]}', 0, NULL, '2019-04-28 17:50:16');
INSERT INTO `sys_oper_log` VALUES (62, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '教务科技部', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 17:52:40');
INSERT INTO `sys_oper_log` VALUES (63, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '教务科技部', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"2\"]}', 0, NULL, '2019-04-28 17:52:45');
INSERT INTO `sys_oper_log` VALUES (64, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'admin', '教务科技部', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 17:57:50');
INSERT INTO `sys_oper_log` VALUES (65, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'admin', '教务科技部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 17:58:29');
INSERT INTO `sys_oper_log` VALUES (66, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'admin', '教务科技部', '/system/menu/remove/2015', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 17:58:36');
INSERT INTO `sys_oper_log` VALUES (67, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'admin', '教务科技部', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 17:58:41');
INSERT INTO `sys_oper_log` VALUES (68, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'admin', '教务科技部', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 17:59:07');
INSERT INTO `sys_oper_log` VALUES (69, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '教务科技部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"网站内容管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-file-code-o\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-28 18:00:37');
INSERT INTO `sys_oper_log` VALUES (70, '通知公告', 1, 'cn.duojunrui.etims.project.system.notice.controller.NoticeController.addSave()', 1, 'admin', '教务科技部', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"嗲us哈根达斯给大家按时\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>撒打算大所大所大所<br></p>\"],\"status\":[\"0\"]}', 0, NULL, '2019-04-28 18:01:29');
INSERT INTO `sys_oper_log` VALUES (71, '通知公告', 3, 'cn.duojunrui.etims.project.system.notice.controller.NoticeController.remove()', 1, 'admin', '教务科技部', '/system/notice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', 0, NULL, '2019-04-28 18:02:02');
INSERT INTO `sys_oper_log` VALUES (72, '在线用户', 7, 'cn.duojunrui.etims.project.monitor.online.controller.UserOnlineController.forceLogout()', 1, 'admin', '教务科技部', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"44fce214-24e9-4641-84ea-6cf4923bab77\"]}', 0, NULL, '2019-04-28 18:03:19');
INSERT INTO `sys_oper_log` VALUES (73, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'admin', '教务科技部', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"教务科技部\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 0, NULL, '2019-04-28 18:06:33');
INSERT INTO `sys_oper_log` VALUES (74, '部门管理', 1, 'cn.duojunrui.etims.project.system.dept.controller.DeptController.addSave()', 1, 'admin', '教务科技部', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"系统维护\"],\"orderNum\":[\"100\"],\"leader\":[\"多多科技\"],\"phone\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-04-28 18:08:11');
INSERT INTO `sys_oper_log` VALUES (75, '用户管理', 1, 'cn.duojunrui.etims.project.system.user.controller.UserController.addSave()', 1, 'admin', '系统维护', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"209\"],\"userName\":[\"超级管理员\"],\"deptName\":[\"教务科技部\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"etims\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 18:13:37');
INSERT INTO `sys_oper_log` VALUES (76, '用户管理', 3, 'cn.duojunrui.etims.project.system.user.controller.UserController.remove()', 1, 'admin', '系统维护', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-28 18:13:59');
INSERT INTO `sys_oper_log` VALUES (77, '角色管理', 4, 'cn.duojunrui.etims.project.system.role.controller.RoleController.cancelAuthUser()', 1, 'admin', '系统维护', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userId\":[\"1\"]}', 0, NULL, '2019-04-28 18:14:11');
INSERT INTO `sys_oper_log` VALUES (78, '用户管理', 3, 'cn.duojunrui.etims.project.system.user.controller.UserController.remove()', 1, 'admin', '系统维护', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-28 18:14:40');
INSERT INTO `sys_oper_log` VALUES (79, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'admin', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007,2006,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 18:15:02');
INSERT INTO `sys_oper_log` VALUES (80, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'admin', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007,2006,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 18:15:09');
INSERT INTO `sys_oper_log` VALUES (81, '用户管理', 3, 'cn.duojunrui.etims.project.system.user.controller.UserController.remove()', 1, 'admin', '系统维护', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-28 18:16:17');
INSERT INTO `sys_oper_log` VALUES (82, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"210\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"系统维护\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"etims\"],\"sex\":[\"0\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 18:19:52');
INSERT INTO `sys_oper_log` VALUES (83, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4\"]}', 0, NULL, '2019-04-28 19:10:06');
INSERT INTO `sys_oper_log` VALUES (84, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2,3,4\"]}', 0, NULL, '2019-04-28 19:10:22');
INSERT INTO `sys_oper_log` VALUES (85, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', 0, NULL, '2019-04-28 19:10:58');
INSERT INTO `sys_oper_log` VALUES (86, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', 0, NULL, '2019-04-28 19:11:01');
INSERT INTO `sys_oper_log` VALUES (87, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:11:03');
INSERT INTO `sys_oper_log` VALUES (88, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"101\"]}', 0, NULL, '2019-04-28 19:11:12');
INSERT INTO `sys_oper_log` VALUES (89, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', 0, NULL, '2019-04-28 19:11:14');
INSERT INTO `sys_oper_log` VALUES (90, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:11:21');
INSERT INTO `sys_oper_log` VALUES (91, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:12:03');
INSERT INTO `sys_oper_log` VALUES (92, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:12:23');
INSERT INTO `sys_oper_log` VALUES (93, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通管理员\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通管理员\"],\"menuIds\":[\"\"]}', 0, NULL, '2019-04-28 19:12:49');
INSERT INTO `sys_oper_log` VALUES (94, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:12:51');
INSERT INTO `sys_oper_log` VALUES (95, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007,2006,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 19:13:26');
INSERT INTO `sys_oper_log` VALUES (96, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007,2006,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 19:13:44');
INSERT INTO `sys_oper_log` VALUES (97, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:13:47');
INSERT INTO `sys_oper_log` VALUES (98, '角色管理', 4, 'cn.duojunrui.etims.project.system.role.controller.RoleController.selectAuthUserAll()', 1, 'etims', '系统维护', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userIds\":[\"1\"]}', 0, NULL, '2019-04-28 19:13:54');
INSERT INTO `sys_oper_log` VALUES (99, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"210\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"系统维护\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"etims\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 0, NULL, '2019-04-28 19:14:09');
INSERT INTO `sys_oper_log` VALUES (100, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:14:18');
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 3, 'cn.duojunrui.etims.project.system.role.controller.RoleController.remove()', 1, 'etims', '系统维护', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:14:31');
INSERT INTO `sys_oper_log` VALUES (102, '角色管理', 1, 'cn.duojunrui.etims.project.system.role.controller.RoleController.addSave()', 1, 'etims', '系统维护', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"系统管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有系统配置和监控等功能\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-04-28 19:17:11');
INSERT INTO `sys_oper_log` VALUES (103, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:18:06');
INSERT INTO `sys_oper_log` VALUES (104, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-28 19:18:09');
INSERT INTO `sys_oper_log` VALUES (105, '岗位管理', 2, 'cn.duojunrui.etims.project.system.post.controller.PostController.editSave()', 1, 'etims', '系统维护', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"教职工\"],\"postCode\":[\"staff\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-04-28 19:18:46');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 1, 'cn.duojunrui.etims.project.system.role.controller.RoleController.addSave()', 1, 'etims', '系统维护', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"网站内容管理\"],\"roleKey\":[\"website\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"实验中心网站内容的发布与管理\"],\"menuIds\":[\"2006\"]}', 0, NULL, '2019-04-28 19:21:47');
INSERT INTO `sys_oper_log` VALUES (107, '角色管理', 1, 'cn.duojunrui.etims.project.system.role.controller.RoleController.addSave()', 1, 'etims', '系统维护', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"老师\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007\"]}', 0, NULL, '2019-04-28 19:22:43');
INSERT INTO `sys_oper_log` VALUES (108, '角色管理', 1, 'cn.duojunrui.etims.project.system.role.controller.RoleController.addSave()', 1, 'etims', '系统维护', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007\"]}', 0, NULL, '2019-04-28 19:23:05');
INSERT INTO `sys_oper_log` VALUES (109, '岗位管理', 3, 'cn.duojunrui.etims.project.system.post.controller.PostController.remove()', 1, 'etims', '系统维护', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-28 19:23:14');
INSERT INTO `sys_oper_log` VALUES (110, '岗位管理', 1, 'cn.duojunrui.etims.project.system.post.controller.PostController.addSave()', 1, 'etims', '系统维护', '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"运维工程师\"],\"postCode\":[\"1\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"系统运维人员\"]}', 0, NULL, '2019-04-28 19:24:38');
INSERT INTO `sys_oper_log` VALUES (111, '岗位管理', 1, 'cn.duojunrui.etims.project.system.post.controller.PostController.addSave()', 1, 'etims', '系统维护', '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"老师\"],\"postCode\":[\"2\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"教职工\"]}', 0, NULL, '2019-04-28 19:27:50');
INSERT INTO `sys_oper_log` VALUES (112, '岗位管理', 1, 'cn.duojunrui.etims.project.system.post.controller.PostController.addSave()', 1, 'etims', '系统维护', '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"学生\"],\"postCode\":[\"3\"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"学生\"]}', 0, NULL, '2019-04-28 19:28:03');
INSERT INTO `sys_oper_log` VALUES (113, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"210\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"系统维护\"],\"phonenumber\":[\"18178322521\"],\"email\":[\"etims@etims.com\"],\"loginName\":[\"etims\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"超级管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"2\"]}', 0, NULL, '2019-04-28 19:28:41');
INSERT INTO `sys_oper_log` VALUES (114, '用户管理', 1, 'cn.duojunrui.etims.project.system.user.controller.UserController.addSave()', 1, 'etims', '系统维护', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-28 19:30:09');
INSERT INTO `sys_oper_log` VALUES (115, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"dept.deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"sex\":[\"0\"],\"role\":[\"1\",\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"1,105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-28 19:31:09');
INSERT INTO `sys_oper_log` VALUES (116, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, '1551200124', '15512001班', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-28 19:32:10');
INSERT INTO `sys_oper_log` VALUES (117, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, '1551200124', '15512001班', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"dept.deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-28 19:33:20');
INSERT INTO `sys_oper_log` VALUES (118, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"22101\"],\"equipmentName\":[\"U盘\"],\"equipmentCount\":[\"200\"],\"equipmentUse\":[\"用于教学使用\"],\"intputRemark\":[\"无\"]}', 0, NULL, '2019-04-28 19:37:21');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2026\"],\"parentId\":[\"2001\"],\"menuType\":[\"C\"],\"menuName\":[\"设备出入库\"],\"url\":[\"/module/equipment\"],\"perms\":[\"module:equipment:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-28 19:39:20');
INSERT INTO `sys_oper_log` VALUES (120, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', '系统维护', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"设备出入库操作状态\"],\"dictType\":[\"mod_equipment_operate_status\"],\"status\":[\"0\"],\"remark\":[\"设备出入库操作状态\"]}', 0, NULL, '2019-04-28 20:21:39');
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"入库\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_equipment_operate_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-04-28 20:22:17');
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"出库\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_equipment_operate_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-04-28 20:22:35');
INSERT INTO `sys_oper_log` VALUES (123, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"5401\"],\"equipmentName\":[\"1111\"],\"equipmentCount\":[\"111\"],\"equipmentUse\":[\"方式东方闪电\"],\"sex\":[\"0\"],\"intputRemark\":[\"大萨达所\"]}', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-04-28 20:43:02');
INSERT INTO `sys_oper_log` VALUES (124, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"5401\"],\"equipmentName\":[\"1111\"],\"equipmentCount\":[\"111\"],\"equipmentUse\":[\"方式东方闪电\"],\"sex\":[\"0\"],\"intputRemark\":[\"大萨达所\"]}', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-04-28 20:44:07');
INSERT INTO `sys_oper_log` VALUES (125, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"4520\"],\"equipmentName\":[\"撒的撒多\"],\"equipmentCount\":[\"211\"],\"equipmentUse\":[\"的广东佛山\"],\"sex\":[\"0\"],\"intputRemark\":[\"发生的范德萨\"]}', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-04-28 20:44:38');
INSERT INTO `sys_oper_log` VALUES (126, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"4523\"],\"equipmentName\":[\"的非官方的个\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"飒飒的电风扇\"],\"sex\":[\"0\"],\"intputRemark\":[\"法第三方士大夫\"]}', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-04-28 20:49:43');
INSERT INTO `sys_oper_log` VALUES (127, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"5401\"],\"equipmentName\":[\"凤凰股份\"],\"equipmentCount\":[\"11\"],\"equipmentUse\":[\"过水电费\"],\"sex\":[\"0\"],\"intputRemark\":[\"梵蒂冈\"]}', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-04-28 21:01:26');
INSERT INTO `sys_oper_log` VALUES (129, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"4520\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"对方水电费\"],\"operateStatus\":[\"1\"],\"remark\":[\"递四方速递\"]}', 0, NULL, '2019-04-28 21:26:09');
INSERT INTO `sys_oper_log` VALUES (130, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"1\"],\"labName\":[\"4253\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"200\"],\"equipmentUse\":[\"多少分水电费水电费是的\"],\"operateStatus\":[\"1\"],\"remark\":[\"奥术大师多撒\"]}', 0, NULL, '2019-04-28 21:30:32');
INSERT INTO `sys_oper_log` VALUES (131, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"1\"],\"labName\":[\"4253\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"200\"],\"equipmentUse\":[\"多少分水电费水电费是的\"],\"operateStatus\":[\"0\"],\"remark\":[\"奥术大师多撒\"]}', 0, NULL, '2019-04-28 21:35:20');
INSERT INTO `sys_oper_log` VALUES (132, '实验室设备', 3, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.remove()', 1, 'etims', '系统维护', '/module/equipment/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-28 21:35:46');
INSERT INTO `sys_oper_log` VALUES (133, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"4523\"],\"equipmentName\":[\"实打实大所\"],\"equipmentCount\":[\"1000\"],\"equipmentUse\":[\"辅导费的书法大赛\"],\"operateStatus\":[\"0\"],\"remark\":[\"奥术大师多撒多撒多撒\"]}', 0, NULL, '2019-04-28 21:36:05');
INSERT INTO `sys_oper_log` VALUES (134, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"dept.deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"sex\":[\"0\"],\"role\":[\"1\",\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"1,105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-28 21:36:56');
INSERT INTO `sys_oper_log` VALUES (135, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, '1551200124', '15512001班', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"1203\"],\"equipmentName\":[\"防守打法\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"范德萨范德萨发\"],\"operateStatus\":[\"1\"],\"remark\":[\"的发生的范德萨发\"]}', 0, NULL, '2019-04-28 21:37:32');
INSERT INTO `sys_oper_log` VALUES (136, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, '1551200124', NULL, '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"7\"],\"labName\":[\"1203\"],\"equipmentName\":[\"防守打法\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"范德萨范德萨发\"],\"operateStatus\":[\"1\"],\"remark\":[\"V型从V型从V型从V型从\"]}', 0, NULL, '2019-04-28 21:39:24');
INSERT INTO `sys_oper_log` VALUES (137, '实验室设备', 3, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.remove()', 1, '1551200124', NULL, '/module/equipment/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-04-28 21:46:07');
INSERT INTO `sys_oper_log` VALUES (138, '实验室设备', 3, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.remove()', 1, '1551200124', NULL, '/module/equipment/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', 0, NULL, '2019-04-28 21:49:35');
INSERT INTO `sys_oper_log` VALUES (139, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-04-28 22:28:19');
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-04-28 22:36:08');
INSERT INTO `sys_oper_log` VALUES (143, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, '1551200124', '15512001班', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"20123\"],\"equipmentName\":[\"发的范德萨\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"个地方官的\"],\"operateStatus\":[\"1\"],\"remark\":[\"水电费水电费是的\"]}', 0, NULL, '2019-04-29 10:11:37');
INSERT INTO `sys_oper_log` VALUES (144, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, '1551200124', '15512001班', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"54542\"],\"equipmentName\":[\"狂欢节考核\"],\"equipmentCount\":[\"332\"],\"equipmentUse\":[\"大萨达所多\"],\"operateStatus\":[\"0\"],\"remark\":[\"所发生的事\"]}', 0, NULL, '2019-04-29 10:11:57');
INSERT INTO `sys_oper_log` VALUES (146, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.update()', 1, 'etims', '系统维护', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"超级管理员1\"],\"phonenumber\":[\"18178322521\"],\"email\":[\"etims@etims.com\"],\"sex\":[\"0\"]}', 0, NULL, '2019-04-29 14:53:07');
INSERT INTO `sys_oper_log` VALUES (147, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.update()', 1, 'etims', '系统维护', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"超级管理员\"],\"phonenumber\":[\"18178322521\"],\"email\":[\"etims@etims.com\"],\"sex\":[\"0\"]}', 0, NULL, '2019-04-29 14:53:11');
INSERT INTO `sys_oper_log` VALUES (148, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"\"],\"equipmentName\":[\"\"],\"equipmentCount\":[\"\"],\"equipmentUse\":[\"\"],\"operateStatus\":[\"1\"],\"remark\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'lab_name\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.equipment.mapper.EquipmentMapper.insertEquipment-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_equipment          ( operate_status,                          operate_time,                          register,                                       create_time,                                       del_flag )           values ( ?,                          ?,                          ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'lab_name\' doesn\'t have a default value\n; Field \'lab_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'lab_name\' doesn\'t have a default value', '2019-04-29 14:53:46');
INSERT INTO `sys_oper_log` VALUES (149, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,104,105,106,207,208,107\"]}', 0, NULL, '2019-04-29 19:41:42');
INSERT INTO `sys_oper_log` VALUES (150, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,102,108,109\"]}', 0, NULL, '2019-04-29 19:42:50');
INSERT INTO `sys_oper_log` VALUES (151, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', 0, NULL, '2019-04-29 19:44:19');
INSERT INTO `sys_oper_log` VALUES (152, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,102,108\"]}', 0, NULL, '2019-04-29 19:45:31');
INSERT INTO `sys_oper_log` VALUES (153, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', 0, NULL, '2019-04-29 19:46:12');
INSERT INTO `sys_oper_log` VALUES (154, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"dept.deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-29 19:46:23');
INSERT INTO `sys_oper_log` VALUES (155, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,106,207\"]}', 0, NULL, '2019-04-29 19:46:43');
INSERT INTO `sys_oper_log` VALUES (156, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2003,2004,2005,2007,1,100,1000,1001,1002,1003,1004,1005,1006\"]}', 0, NULL, '2019-04-29 19:48:17');
INSERT INTO `sys_oper_log` VALUES (157, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, '1551200124', '15512001班', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"dept.deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"sex\":[\"0\"],\"role\":[\"1\",\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"1,105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-29 19:49:40');
INSERT INTO `sys_oper_log` VALUES (158, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, '1551200124', '15512001班', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"207\"],\"userName\":[\"多俊睿\"],\"dept.deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"loginName\":[\"1551200124\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"1551200124 多俊睿 学生\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-29 19:50:21');
INSERT INTO `sys_oper_log` VALUES (159, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,106,207,208\"]}', 0, NULL, '2019-04-29 19:50:56');
INSERT INTO `sys_oper_log` VALUES (160, '用户管理', 1, 'cn.duojunrui.etims.project.system.user.controller.UserController.addSave()', 1, 'etims', '系统维护', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"测试员\"],\"deptName\":[\"2018级\"],\"phonenumber\":[\"13893537800\"],\"email\":[\"1358528202@qq.com\"],\"loginName\":[\"1551200125\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"3\"]}', 0, NULL, '2019-04-29 19:51:46');
INSERT INTO `sys_oper_log` VALUES (161, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,206,209,210\"]}', 0, NULL, '2019-04-29 19:55:49');
INSERT INTO `sys_oper_log` VALUES (162, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,106,207,208,206,209,210\"]}', 0, NULL, '2019-04-29 20:02:13');
INSERT INTO `sys_oper_log` VALUES (163, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.authDataScopeSave()', 1, 'etims', '系统维护', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', 0, NULL, '2019-04-29 20:06:45');
INSERT INTO `sys_oper_log` VALUES (164, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"\"],\"fileType\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.material.mapper.MaterialMapper.insertMaterial-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_material          ( category )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\n; Field \'create_time\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_time\' doesn\'t have a default value', '2019-05-02 14:48:22');
INSERT INTO `sys_oper_log` VALUES (165, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve cn.duojunrui.etims.project.module.material.mapper.MaterialMapper.insertMaterial-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_material\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-05-02 14:48:22');
INSERT INTO `sys_oper_log` VALUES (166, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"\"],\"fileType\":[\"\"]}', 1, '', '2019-05-02 15:07:26');
INSERT INTO `sys_oper_log` VALUES (167, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.material.mapper.MaterialMapper.insertMaterial-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_material          ( file_path )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\n; Field \'create_time\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_time\' doesn\'t have a default value', '2019-05-02 15:07:26');
INSERT INTO `sys_oper_log` VALUES (168, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"s\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"ssss\"],\"uploader\":[\"s\"],\"fileSize\":[\"1\"],\"fileType\":[\"zip\"]}', 1, '', '2019-05-02 15:07:47');
INSERT INTO `sys_oper_log` VALUES (169, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"ssss\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.material.mapper.MaterialMapper.insertMaterial-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_material          ( file_name,                                                                              file_path )           values ( ?,                                                                              ? )\r\n### Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\n; Field \'create_time\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_time\' doesn\'t have a default value', '2019-05-02 15:07:47');
INSERT INTO `sys_oper_log` VALUES (170, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"dsadasd\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"sadasd\"],\"uploader\":[\"\"],\"fileSize\":[\"1SM\"],\"fileType\":[\"sd\"]}', 1, '', '2019-05-02 15:12:03');
INSERT INTO `sys_oper_log` VALUES (171, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"sadasd\"]}', 0, NULL, '2019-05-02 15:12:03');
INSERT INTO `sys_oper_log` VALUES (172, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"\"],\"fileType\":[\"\"]}', 1, '', '2019-05-02 15:29:26');
INSERT INTO `sys_oper_log` VALUES (173, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"\"],\"fileType\":[\"\"]}', 1, '', '2019-05-02 15:29:33');
INSERT INTO `sys_oper_log` VALUES (174, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"qq\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"qq\"],\"fileType\":[\"qq\"]}', 1, '', '2019-05-02 15:29:42');
INSERT INTO `sys_oper_log` VALUES (175, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"qq\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"q\"],\"uploader\":[\"\"],\"fileSize\":[\"qq\"],\"fileType\":[\"qq\"]}', 1, '', '2019-05-02 15:29:47');
INSERT INTO `sys_oper_log` VALUES (176, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"a\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"a\"],\"uploader\":[\"a\"],\"fileSize\":[\"a\"],\"fileType\":[\"a\"]}', 1, '', '2019-05-02 15:30:10');
INSERT INTO `sys_oper_log` VALUES (177, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"a\"]}', 0, NULL, '2019-05-02 15:30:10');
INSERT INTO `sys_oper_log` VALUES (178, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"123123\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"\"],\"fileType\":[\"\"]}', 1, '', '2019-05-02 15:30:58');
INSERT INTO `sys_oper_log` VALUES (179, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"\"]}', 0, NULL, '2019-05-02 15:30:58');
INSERT INTO `sys_oper_log` VALUES (180, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"3\"],\"course\":[\"\"],\"category\":[\"\"],\"fileName\":[\"sadf\"],\"uploader\":[\"超级管理员\"],\"fileSize\":[\"\"],\"fileType\":[\"\"],\"downloadCount\":[\"0\"],\"filePath\":[\"2019/05/02/dfc1c5fb2926ab6ac5255d3d8b5e82ed.jpg\"],\"createTime\":[\"Thu May 02 15:12:04 CST 2019\"],\"updateTime\":[\"\"],\"delFlag\":[\"0\"]}', 0, NULL, '2019-05-02 15:32:35');
INSERT INTO `sys_oper_log` VALUES (181, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"4520\"],\"equipmentName\":[\"晶体管\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"的方式东方闪电\"],\"operateStatus\":[\"0\"],\"remark\":[\"的书法大赛\"]}', 0, NULL, '2019-05-02 20:27:08');
INSERT INTO `sys_oper_log` VALUES (182, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"],\"uploader\":[\"\"],\"fileSize\":[\"\"],\"fileType\":[\"\"]}', 1, '', '2019-05-03 12:31:41');
INSERT INTO `sys_oper_log` VALUES (183, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"]}', 1, '', '2019-05-03 12:35:49');
INSERT INTO `sys_oper_log` VALUES (184, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 0, NULL, '2019-05-03 12:35:49');
INSERT INTO `sys_oper_log` VALUES (185, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"dvxxcvcxvcv\"],\"category\":[\"实验试题资料\"]}', 1, '', '2019-05-03 12:37:30');
INSERT INTO `sys_oper_log` VALUES (186, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 0, NULL, '2019-05-03 12:37:30');
INSERT INTO `sys_oper_log` VALUES (187, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"bxcxcb\"],\"category\":[\"实验试题资料\"]}', 1, '', '2019-05-03 12:45:07');
INSERT INTO `sys_oper_log` VALUES (188, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"bxcxcb\"],\"category\":[\"实验试题资料\"]}', 1, '', '2019-05-03 12:45:17');
INSERT INTO `sys_oper_log` VALUES (189, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"gfdgdf\"],\"category\":[\"上课教学资料\"]}', 1, '', '2019-05-03 12:45:38');
INSERT INTO `sys_oper_log` VALUES (190, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 0, NULL, '2019-05-03 12:45:39');
INSERT INTO `sys_oper_log` VALUES (191, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"fsdfsdf\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"sfssfs\"]}', 1, '', '2019-05-03 14:21:26');
INSERT INTO `sys_oper_log` VALUES (192, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"sfssfs\"]}', 0, NULL, '2019-05-03 14:21:26');
INSERT INTO `sys_oper_log` VALUES (193, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"\"]}', 1, '', '2019-05-03 14:23:17');
INSERT INTO `sys_oper_log` VALUES (194, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"1\"],\"course\":[\"计算机组成原理\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"计算机组成原理第一章http://localhost:8080/module/material实验指导说明书\"]}', 0, NULL, '2019-05-03 14:23:29');
INSERT INTO `sys_oper_log` VALUES (195, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"1\"],\"course\":[\"计算机组成原理\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"计算机组成原理第一章\"]}', 0, NULL, '2019-05-03 14:23:41');
INSERT INTO `sys_oper_log` VALUES (196, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-05-03 14:23:48');
INSERT INTO `sys_oper_log` VALUES (197, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"5\"],\"labName\":[\"4520\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"对方水电费\"],\"operateStatus\":[\"0\"],\"remark\":[\"递四方速递\"]}', 0, NULL, '2019-05-03 14:24:10');
INSERT INTO `sys_oper_log` VALUES (198, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"8\"],\"labName\":[\"20123\"],\"equipmentName\":[\"发的范德萨\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"个地方官的\"],\"operateStatus\":[\"0\"],\"remark\":[\"水电费水电费是的\"]}', 0, NULL, '2019-05-03 14:24:16');
INSERT INTO `sys_oper_log` VALUES (199, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"4\"],\"course\":[\"\"],\"category\":[\"\",\"实验试题资料\"],\"fileName\":[\"a\"]}', 0, NULL, '2019-05-03 14:26:44');
INSERT INTO `sys_oper_log` VALUES (200, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"3\"],\"course\":[\"计算机组成原理\"],\"category\":[\"实验案例资料\"],\"fileName\":[\"sadf\"]}', 0, NULL, '2019-05-03 14:27:19');
INSERT INTO `sys_oper_log` VALUES (201, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"4\"],\"course\":[\"gdfgdfgf\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"agfgf\"]}', 0, NULL, '2019-05-03 14:27:29');
INSERT INTO `sys_oper_log` VALUES (202, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"6\"],\"course\":[\"\"],\"category\":[\"实验案例资料\"],\"fileName\":[\"undefined\"]}', 0, NULL, '2019-05-03 14:27:37');
INSERT INTO `sys_oper_log` VALUES (203, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"7\"],\"course\":[\"\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"undefined\"]}', 0, NULL, '2019-05-03 14:27:43');
INSERT INTO `sys_oper_log` VALUES (204, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"8\"],\"course\":[\"\"],\"category\":[\"文献参考资料\"],\"fileName\":[\"undefined\"]}', 0, NULL, '2019-05-03 14:27:55');
INSERT INTO `sys_oper_log` VALUES (205, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"9\"],\"course\":[\"\"],\"category\":[\"其他学习资料\"],\"fileName\":[\"sfssfs\"]}', 0, NULL, '2019-05-03 14:28:00');
INSERT INTO `sys_oper_log` VALUES (206, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-05-03 14:28:07');
INSERT INTO `sys_oper_log` VALUES (207, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"5\"],\"labName\":[\"4520\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"对方水电费\"],\"operateStatus\":[\"1\"],\"remark\":[\"递四方速递\"]}', 0, NULL, '2019-05-03 14:28:29');
INSERT INTO `sys_oper_log` VALUES (208, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', '系统维护', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"7\"],\"course\":[\"fsdfds\"],\"category\":[\"实验案例资料\"],\"fileName\":[\"sdaaaaaaa\"]}', 0, NULL, '2019-05-03 19:42:36');
INSERT INTO `sys_oper_log` VALUES (209, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', 0, NULL, '2019-05-03 19:42:47');
INSERT INTO `sys_oper_log` VALUES (210, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"9\"],\"labName\":[\"54542\"],\"equipmentName\":[\"狂欢节考核\"],\"equipmentCount\":[\"332\"],\"equipmentUse\":[\"大萨达所多\"],\"operateStatus\":[\"1\"],\"remark\":[\"所发生的事\"]}', 0, NULL, '2019-05-03 19:56:56');
INSERT INTO `sys_oper_log` VALUES (211, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.editSave()', 1, 'etims', '系统维护', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"etimsTask\"],\"jobGroup\":[\"系统默认（无参）\"],\"methodName\":[\"etimsNoParams\"],\"methodParams\":[\"\"],\"cronExpression\":[\"0/10 * * * * ?\"],\"misfirePolicy\":[\"3\"],\"concurrent\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-05 21:34:08');
INSERT INTO `sys_oper_log` VALUES (212, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.editSave()', 1, 'etims', '系统维护', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"2\"],\"jobName\":[\"etimsTask\"],\"jobGroup\":[\"系统默认（有参）\"],\"methodName\":[\"etimsParams\"],\"methodParams\":[\"etims\"],\"cronExpression\":[\"0/20 * * * * ?\"],\"misfirePolicy\":[\"3\"],\"concurrent\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-05 21:34:23');
INSERT INTO `sys_oper_log` VALUES (213, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"2\"]}', 0, NULL, '2019-05-05 21:34:38');
INSERT INTO `sys_oper_log` VALUES (214, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"gfdgfd\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"fgfdgfd\"]}', 1, '', '2019-05-09 17:19:11');
INSERT INTO `sys_oper_log` VALUES (215, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"fgfdgfd\"]}', 0, NULL, '2019-05-09 17:19:11');
INSERT INTO `sys_oper_log` VALUES (216, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"4523\"],\"equipmentName\":[\"fgfd\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"fdgfd\"],\"operateStatus\":[\"0\"],\"remark\":[\"fdg\"]}', 0, NULL, '2019-05-09 17:20:48');
INSERT INTO `sys_oper_log` VALUES (217, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-05-09 17:29:24');
INSERT INTO `sys_oper_log` VALUES (218, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"qq\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"erer\"]}', 1, '', '2019-05-09 18:57:32');
INSERT INTO `sys_oper_log` VALUES (219, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"erer\"]}', 0, NULL, '2019-05-09 18:57:32');
INSERT INTO `sys_oper_log` VALUES (220, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"5\"],\"labName\":[\"4520\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"对方水电费\"],\"operateStatus\":[\"0\"],\"remark\":[\"递四方速递\"]}', 0, NULL, '2019-05-09 18:57:53');
INSERT INTO `sys_oper_log` VALUES (221, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"5\"],\"labName\":[\"4520\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"对方水电费\"],\"operateStatus\":[\"1\"],\"remark\":[\"递四方速递\"]}', 0, NULL, '2019-05-09 18:58:04');
INSERT INTO `sys_oper_log` VALUES (222, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"sdsd\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"\"]}', 1, '', '2019-05-09 19:54:40');
INSERT INTO `sys_oper_log` VALUES (223, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"\"]}', 0, NULL, '2019-05-09 19:54:40');
INSERT INTO `sys_oper_log` VALUES (224, '实验室设备', 1, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.addSave()', 1, 'etims', '系统维护', '/module/equipment/add', '127.0.0.1', '内网IP', '{\"labName\":[\"2453\"],\"equipmentName\":[\"gfgfd\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"dsfsdfsd\"],\"operateStatus\":[\"1\"],\"remark\":[\"rerer\"]}', 0, NULL, '2019-05-09 19:55:07');
INSERT INTO `sys_oper_log` VALUES (225, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"5\"],\"labName\":[\"4520\"],\"equipmentName\":[\"多少分\"],\"equipmentCount\":[\"100\"],\"equipmentUse\":[\"对方水电费\"],\"operateStatus\":[\"0\"],\"remark\":[\"递四方速递\"]}', 0, NULL, '2019-05-09 19:55:18');
INSERT INTO `sys_oper_log` VALUES (226, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"207\"],\"parentId\":[\"106\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-05-09 20:09:21');
INSERT INTO `sys_oper_log` VALUES (227, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,1,100,1000,1001,1002,1003,1004,1005,1006\"]}', 0, NULL, '2019-05-09 20:20:54');
INSERT INTO `sys_oper_log` VALUES (228, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'etims', '系统维护', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 20:41:58');
INSERT INTO `sys_oper_log` VALUES (229, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"8\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-10 21:39:04');
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-10 21:39:42');
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-10 21:40:10');
INSERT INTO `sys_oper_log` VALUES (232, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"102\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"菜单管理\"],\"url\":[\"/system/menu\"],\"perms\":[\"system:menu:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-10 21:40:33');
INSERT INTO `sys_oper_log` VALUES (233, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"103\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"部门管理\"],\"url\":[\"/system/dept\"],\"perms\":[\"system:dept:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-10 21:40:45');
INSERT INTO `sys_oper_log` VALUES (234, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"110\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"定时任务\"],\"url\":[\"/monitor/job\"],\"perms\":[\"monitor:job:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-10 21:41:49');
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"112\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"服务监控\"],\"url\":[\"/monitor/server\"],\"perms\":[\"monitor:server:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-10 21:42:02');
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-10 21:56:01');
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-12 12:19:34');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"8\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-12 12:19:41');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"110\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"定时任务\"],\"url\":[\"/monitor/job\"],\"perms\":[\"monitor:job:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-12 12:19:50');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"112\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"服务监控\"],\"url\":[\"/monitor/server\"],\"perms\":[\"monitor:server:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-12 12:19:57');
INSERT INTO `sys_oper_log` VALUES (241, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-12 12:20:28');
INSERT INTO `sys_oper_log` VALUES (242, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-12 12:20:38');
INSERT INTO `sys_oper_log` VALUES (243, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-12 12:23:52');
INSERT INTO `sys_oper_log` VALUES (244, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-12 12:24:03');
INSERT INTO `sys_oper_log` VALUES (245, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-12 12:24:15');
INSERT INTO `sys_oper_log` VALUES (246, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"2\"]}', 0, NULL, '2019-05-12 12:24:41');
INSERT INTO `sys_oper_log` VALUES (247, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"2\"]}', 0, NULL, '2019-05-12 12:24:49');
INSERT INTO `sys_oper_log` VALUES (248, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-12 12:26:55');
INSERT INTO `sys_oper_log` VALUES (249, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.changeStatus()', 1, 'etims', '系统维护', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-12 12:27:20');
INSERT INTO `sys_oper_log` VALUES (250, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.changeStatus()', 1, 'etims', '系统维护', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-12 13:04:32');
INSERT INTO `sys_oper_log` VALUES (251, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"course\":[\"fasfadsf\"],\"category\":[\"上课教学资料\"],\"fileName\":[\"sdfsdfdsf\"]}', 1, '', '2019-05-12 20:52:42');
INSERT INTO `sys_oper_log` VALUES (252, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"sdfsdfdsf\"]}', 0, NULL, '2019-05-12 20:52:42');
INSERT INTO `sys_oper_log` VALUES (253, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"dfsdfsdf\"]}', 0, NULL, '2019-05-12 20:59:32');
INSERT INTO `sys_oper_log` VALUES (254, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"dafsdfsdf\"]}', 0, NULL, '2019-05-12 21:05:35');
INSERT INTO `sys_oper_log` VALUES (255, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', NULL, '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11,12,13,14\"]}', 0, NULL, '2019-05-12 21:06:19');
INSERT INTO `sys_oper_log` VALUES (256, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', NULL, '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', 0, NULL, '2019-05-12 21:06:22');
INSERT INTO `sys_oper_log` VALUES (257, '在线用户', 7, 'cn.duojunrui.etims.project.monitor.online.controller.UserOnlineController.forceLogout()', 1, 'etims', NULL, '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"91f3576d-69f6-4076-9dfb-f1c2397b9832\"]}', 0, NULL, '2019-05-12 21:39:13');
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"顶岗实习\"],\"url\":[\"/module/practice\"],\"perms\":[\"module:practice:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 11:57:46');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:07:30');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2039', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:07:36');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:07:42');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:07:49');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2040', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:07:59');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:08:07');
INSERT INTO `sys_oper_log` VALUES (267, '顶岗实习', 1, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.addSave()', 1, 'etims', '系统维护', '/module/practice/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"df\"],\"studentDepartment\":[\"sdf\"],\"studentClass\":[\"dsfds\"],\"studentNumber\":[\"fsdf\"],\"companyName\":[\"f\"],\"companyAddress\":[\"sdf\"],\"position\":[\"fsd\"],\"startTime\":[\"\"],\"endTime\":[\"dsfsd\"],\"principalName\":[\"sdfsd\"],\"principalTel\":[\"fsdff\"],\"filePath\":[\"\"],\"applyStatus\":[\"\"],\"applyTime\":[\"\"],\"applyReply\":[\"\"],\"createTime\":[\"\"],\"updateTime\":[\"\"],\"delFlag\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'practice_id\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.practice.mapper.PracticeMapper.insertPractice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_practice          ( student_name,                          student_department,                          student_class,                          student_number,                          company_name,                          company_address,                          position,                                                    principal_name,                          principal_tel )           values ( ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                                                    ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'practice_id\' doesn\'t have a default value\n; Field \'practice_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'practice_id\' doesn\'t have a default value', '2019-05-13 12:08:31');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"申请管理\"],\"url\":[\"/module/practice\"],\"perms\":[\"module:practice:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:30:29');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 1, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.addSave()', 1, 'etims', '系统维护', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:36:58');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"申请管理\"],\"url\":[\"/module/practice\"],\"perms\":[\"module:practice:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:37:08');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"/module/practice\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:37:47');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"申请管理\"],\"url\":[\"/module/practice\"],\"perms\":[\"module:practice:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:37:57');
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"/module/practice\"],\"perms\":[\"module:practice:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:38:03');
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"/module/practice\"],\"perms\":[\"module:practice:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:38:38');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"\"],\"perms\":[\"module:practice:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:43:26');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"\"],\"perms\":[\"module:practice:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:43:53');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"实习申请\"],\"url\":[\"/module/practice/apply\"],\"perms\":[\"module:practice:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 12:44:04');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', '系统维护', '/system/menu/remove/2043', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-13 12:47:05');
INSERT INTO `sys_oper_log` VALUES (279, '顶岗实习', 1, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.addSave()', 1, 'etims', '系统维护', '/module/practice/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"\"],\"studentDepartment\":[\"\"],\"studentClass\":[\"\"],\"studentNumber\":[\"\"],\"companyName\":[\"\"],\"companyAddress\":[\"\"],\"position\":[\"\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"principalName\":[\"\"],\"principalTel\":[\"\"],\"filePath\":[\"\"],\"applyStatus\":[\"\"],\"applyTime\":[\"\"],\"applyReply\":[\"\"],\"createTime\":[\"\"],\"updateTime\":[\"\"],\"delFlag\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve cn.duojunrui.etims.project.module.practice.mapper.PracticeMapper.insertPractice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_practice\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-05-13 12:48:13');
INSERT INTO `sys_oper_log` VALUES (280, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', '系统维护', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学生系别\"],\"dictType\":[\"mod_student_department\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:53:06');
INSERT INTO `sys_oper_log` VALUES (281, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"信息工程系\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:53:49');
INSERT INTO `sys_oper_log` VALUES (282, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"电子工程系\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:54:27');
INSERT INTO `sys_oper_log` VALUES (283, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"机电工程系\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:54:44');
INSERT INTO `sys_oper_log` VALUES (284, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"管理系\"],\"dictValue\":[\"3\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:54:59');
INSERT INTO `sys_oper_log` VALUES (285, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"设计系\"],\"dictValue\":[\"4\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:55:18');
INSERT INTO `sys_oper_log` VALUES (286, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"外贸与外语系\"],\"dictValue\":[\"5\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 12:55:36');
INSERT INTO `sys_oper_log` VALUES (287, '字典类型', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.editSave()', 1, 'etims', '系统维护', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"103\"],\"dictName\":[\"学生系别\"],\"dictType\":[\"mod_student_department\"],\"status\":[\"0\"],\"remark\":[\"学生系别分类\"]}', 0, NULL, '2019-05-13 12:58:47');
INSERT INTO `sys_oper_log` VALUES (288, '部门管理', 1, 'cn.duojunrui.etims.project.system.dept.controller.DeptController.addSave()', 1, 'etims', '系统维护', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"103\"],\"deptName\":[\"18512001班\"],\"orderNum\":[\"1\"],\"leader\":[\"黄建灯\"],\"phone\":[\"18178322222\"],\"email\":[\"test@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-13 13:08:32');
INSERT INTO `sys_oper_log` VALUES (289, '部门管理', 1, 'cn.duojunrui.etims.project.system.dept.controller.DeptController.addSave()', 1, 'etims', '系统维护', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"104\"],\"deptName\":[\"17512001班\"],\"orderNum\":[\"1\"],\"leader\":[\"刘老师\"],\"phone\":[\"13200363200\"],\"email\":[\"12122@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-13 13:09:06');
INSERT INTO `sys_oper_log` VALUES (290, '部门管理', 1, 'cn.duojunrui.etims.project.system.dept.controller.DeptController.addSave()', 1, 'etims', '系统维护', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"105\"],\"deptName\":[\"16512001班\"],\"orderNum\":[\"1\"],\"leader\":[\"Lily\"],\"phone\":[\"13452366320\"],\"email\":[\"11@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-13 13:09:32');
INSERT INTO `sys_oper_log` VALUES (291, '部门管理', 1, 'cn.duojunrui.etims.project.system.dept.controller.DeptController.addSave()', 1, 'etims', '系统维护', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"107\"],\"deptName\":[\"14512001班\"],\"orderNum\":[\"1\"],\"leader\":[\"王老师\"],\"phone\":[\"15200362301\"],\"email\":[\"123@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-13 13:10:18');
INSERT INTO `sys_oper_log` VALUES (292, '部门管理', 1, 'cn.duojunrui.etims.project.system.dept.controller.DeptController.addSave()', 1, 'etims', '系统维护', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"102\"],\"deptName\":[\"2016级\"],\"orderNum\":[\"3\"],\"leader\":[\"黄老师\"],\"phone\":[\"13562303026\"],\"email\":[\"152@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-13 13:11:41');
INSERT INTO `sys_oper_log` VALUES (293, '用户管理', 6, 'cn.duojunrui.etims.project.system.user.controller.UserController.importData()', 1, 'etims', '系统维护', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 1, '很抱歉，导入失败！共 122 条数据格式不正确，错误如下：<br/>1、账号 1551200121 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(          user_id,           dept_id,           login_name,                     email,           phonenumber,           sex,           password,           salt,           status,           create_by,                    create_time         )values(          ?,           ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,           ?,                    sysdate()         )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value<br/>2、账号 1551200122 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(          user_id,           dept_id,           login_name,                     email,           phonenumber,           sex,           password,           salt,           status,           create_by,                    create_time         )values(          ?,           ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,           ?,                    sysdate()         )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value<br/>3、账号 1551200123 导入失败：\r\n### Error updat', '2019-05-13 14:15:22');
INSERT INTO `sys_oper_log` VALUES (294, '用户管理', 6, 'cn.duojunrui.etims.project.system.user.controller.UserController.importData()', 1, 'etims', '系统维护', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 1, '很抱歉，导入失败！共 122 条数据格式不正确，错误如下：<br/>1、账号 1551200121 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(          user_id,           dept_id,           login_name,                     email,           phonenumber,           sex,           password,           salt,           status,           create_by,                    create_time         )values(          ?,           ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,           ?,                    sysdate()         )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value<br/>2、账号 1551200122 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(          user_id,           dept_id,           login_name,                     email,           phonenumber,           sex,           password,           salt,           status,           create_by,                    create_time         )values(          ?,           ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,           ?,                    sysdate()         )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value<br/>3、账号 1551200123 导入失败：\r\n### Error updat', '2019-05-13 14:15:47');
INSERT INTO `sys_oper_log` VALUES (295, '用户管理', 6, 'cn.duojunrui.etims.project.system.user.controller.UserController.importData()', 1, 'etims', '系统维护', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 0, NULL, '2019-05-13 14:18:25');
INSERT INTO `sys_oper_log` VALUES (296, '角色管理', 4, 'cn.duojunrui.etims.project.system.role.controller.RoleController.selectAuthUserAll()', 1, 'etims', '系统维护', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"userIds\":[\"109,117,125,133,141,149,157,165,173,181,189,197,205,213,221,110,118,126,134,142,150,158,166,174,182,190,198,206,214,222,111,119,127,135,143,151,159,167,175,183,191,199,207,215,223,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,113,121,129,137,145,153,161,169,177,185,193,201,209,217,114,122,130,138,146,154,162,170,178,186,194,202,210,218,115,123,131,139,147,155,163,171,179,187,195,203,211,219,108,116,124,132,140,148,156,164,172,180,188,196,204,212,220,103,104,105,106,107\"]}', 0, NULL, '2019-05-13 14:20:57');
INSERT INTO `sys_oper_log` VALUES (297, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-13 14:22:48');
INSERT INTO `sys_oper_log` VALUES (298, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-13 14:23:24');
INSERT INTO `sys_oper_log` VALUES (299, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"205\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-13 14:33:57');
INSERT INTO `sys_oper_log` VALUES (300, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"212\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-13 14:34:02');
INSERT INTO `sys_oper_log` VALUES (301, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', '系统维护', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"申请状态\"],\"dictType\":[\"mod_apply_status\"],\"status\":[\"0\"],\"remark\":[\"申请状态\"]}', 0, NULL, '2019-05-13 15:17:42');
INSERT INTO `sys_oper_log` VALUES (302, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已提交\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:18:01');
INSERT INTO `sys_oper_log` VALUES (303, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"通过\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:18:18');
INSERT INTO `sys_oper_log` VALUES (304, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"118\"],\"dictLabel\":[\"通过\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:18:27');
INSERT INTO `sys_oper_log` VALUES (305, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"未通过\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:18:39');
INSERT INTO `sys_oper_log` VALUES (306, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"119\"],\"dictLabel\":[\"未通过\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:18:45');
INSERT INTO `sys_oper_log` VALUES (307, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"117\"],\"dictLabel\":[\"待审核\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:20:19');
INSERT INTO `sys_oper_log` VALUES (308, '顶岗实习', 1, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.addSave()', 1, 'etims', '系统维护', '/module/practice/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"多俊睿\"],\"studentDepartment\":[\"0\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"法第三方士大夫\"],\"companyAddress\":[\"是否收到佛挡杀佛第三方第三方士大夫\"],\"position\":[\"实打实大所\"],\"startTime\":[\"2019-05-08\"],\"endTime\":[\"2019-05-24\"],\"principalName\":[\"ddd\"],\"principalTel\":[\"181122212211\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'practice_id\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.practice.mapper.PracticeMapper.insertPractice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_practice          ( student_name,                          student_department,                          student_class,                          student_number,                          company_name,                          company_address,                          position,                          start_time,                          end_time,                          principal_name,                          principal_tel )           values ( ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'practice_id\' doesn\'t have a default value\n; Field \'practice_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'practice_id\' doesn\'t have a default value', '2019-05-13 15:27:26');
INSERT INTO `sys_oper_log` VALUES (309, '顶岗实习', 1, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.addSave()', 1, 'etims', NULL, '/module/practice/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"多俊睿\"],\"studentDepartment\":[\"1\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西盛源行\"],\"companyAddress\":[\"阿达大厦\"],\"position\":[\"撒大声地\"],\"startTime\":[\"2019-05-01\"],\"endTime\":[\"2019-05-31\"],\"principalName\":[\"撒打算\"],\"principalTel\":[\"18178322520\"]}', 0, NULL, '2019-05-13 15:32:57');
INSERT INTO `sys_oper_log` VALUES (310, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"117\"],\"dictLabel\":[\"待审核\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:37:53');
INSERT INTO `sys_oper_log` VALUES (311, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"118\"],\"dictLabel\":[\"通过\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:37:57');
INSERT INTO `sys_oper_log` VALUES (312, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"119\"],\"dictLabel\":[\"未通过\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:38:01');
INSERT INTO `sys_oper_log` VALUES (313, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"112\"],\"dictLabel\":[\"电子工程系\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:38:33');
INSERT INTO `sys_oper_log` VALUES (314, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"112\"],\"dictLabel\":[\"电子工程系\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:38:54');
INSERT INTO `sys_oper_log` VALUES (315, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', NULL, '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"多俊睿\"],\"studentDepartment\":[\"1\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西盛源行\"],\"companyAddress\":[\"阿达大厦\"],\"position\":[\"撒大声地\"],\"startTime\":[\"Wed May 01 00:00:00 CST 2019\"],\"endTime\":[\"Fri May 31 00:00:00 CST 2019\"],\"principalName\":[\"撒打算\"],\"principalTel\":[\"18178322520\"],\"filePath\":[\"\"],\"applyStatus\":[\"2\"],\"applyTime\":[\"Mon May 13 15:32:57 CST 2019\"],\"applyReply\":[\"\"],\"createTime\":[\"Mon May 13 15:32:57 CST 2019\"],\"updateTime\":[\"\"],\"delFlag\":[\"0\"]}', 0, NULL, '2019-05-13 15:44:17');
INSERT INTO `sys_oper_log` VALUES (316, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"119\"],\"dictLabel\":[\"未通过\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_apply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 15:44:32');
INSERT INTO `sys_oper_log` VALUES (317, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2036\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"顶岗实习修改\"],\"url\":[\"#\"],\"perms\":[\"module:practice:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-13 15:48:54');
INSERT INTO `sys_oper_log` VALUES (318, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2036\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"顶岗实习修改\"],\"url\":[\"#\"],\"perms\":[\"module:practice:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-13 15:49:26');
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2036\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"顶岗实习修改\"],\"url\":[\"#\"],\"perms\":[\"module:practice:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 15:50:20');
INSERT INTO `sys_oper_log` VALUES (320, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"多俊睿\"],\"studentDepartment\":[\"1\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西盛源行\"],\"companyAddress\":[\"阿达大厦\"],\"position\":[\"撒大声地\"],\"startTime\":[\"Wed May 01 00:00:00 CST 2019\"],\"endTime\":[\"Fri May 31 00:00:00 CST 2019\"],\"principalName\":[\"撒打算\"],\"principalTel\":[\"18178322520\"],\"applyStatus\":[\"1\"],\"applyReply\":[\"\"]}', 0, NULL, '2019-05-13 16:28:42');
INSERT INTO `sys_oper_log` VALUES (321, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"多俊睿\"],\"studentDepartment\":[\"1\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西盛源行\"],\"companyAddress\":[\"阿达大厦\"],\"position\":[\"撒大声地\"],\"principalName\":[\"撒打算\"],\"principalTel\":[\"18178322520\"],\"applyStatus\":[\"2\"],\"applyReply\":[\"不通过 材料重新填写\"]}', 0, NULL, '2019-05-13 16:29:47');
INSERT INTO `sys_oper_log` VALUES (323, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2044\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"教学计划\"],\"url\":[\"/module/program\"],\"perms\":[\"module:program:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 16:45:27');
INSERT INTO `sys_oper_log` VALUES (324, '教学计划', 1, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.addSave()', 1, 'etims', NULL, '/module/program/add', '127.0.0.1', '内网IP', '{\"teachId\":[\"sdasd\"],\"teachName\":[\"sadsad\"],\"semester\":[\"sadasd\"],\"courseId\":[\"sadsa\"],\"courseName\":[\"dsadasd\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"dgfdgd\"],\"setMajor\":[\"dfgfdg\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"50\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.program.mapper.ProgramMapper.insertProgram-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_program          ( teach_id,                          teach_name,                          semester,                          course_id,                          course_name,                          course_credit,                          set_depart,                          set_major,                          usual_score_ratio,                          exam_score_ratio )           values ( ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'create_time\' doesn\'t have a default value\n; Field \'create_time\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_time\' doesn\'t have a default value', '2019-05-13 17:35:41');
INSERT INTO `sys_oper_log` VALUES (325, '教学计划', 1, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.addSave()', 1, 'etims', NULL, '/module/program/add', '127.0.0.1', '内网IP', '{\"teachId\":[\"cxzcxz\"],\"teachName\":[\"vxvxv\"],\"semester\":[\"xzvxc\"],\"courseId\":[\"vcxvc\"],\"courseName\":[\"xvxcv\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"gsgsdfg\"],\"setMajor\":[\"fdsdfsd\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"50\"]}', 0, NULL, '2019-05-13 17:37:49');
INSERT INTO `sys_oper_log` VALUES (326, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', NULL, '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学期管理\"],\"dictType\":[\"mod_term\"],\"status\":[\"0\"],\"remark\":[\"学期管理\"]}', 0, NULL, '2019-05-13 17:46:37');
INSERT INTO `sys_oper_log` VALUES (327, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2018-2019学年第一学期\"],\"dictValue\":[\"2018-2019学年第一学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 17:47:50');
INSERT INTO `sys_oper_log` VALUES (328, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2018-2019学年第二学期\"],\"dictValue\":[\"2018-2019学年第二学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 17:48:05');
INSERT INTO `sys_oper_log` VALUES (329, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2017-2018学年第二学期\"],\"dictValue\":[\"2017-2018学年第二学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 17:48:29');
INSERT INTO `sys_oper_log` VALUES (330, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2017-2018学年第一学期\"],\"dictValue\":[\"2017-2018学年第一学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 17:48:58');
INSERT INTO `sys_oper_log` VALUES (331, '字典数据', 3, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.remove()', 1, 'etims', '系统维护', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"123\"]}', 0, NULL, '2019-05-13 19:34:33');
INSERT INTO `sys_oper_log` VALUES (332, '字典数据', 3, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.remove()', 1, 'etims', '系统维护', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"122\"]}', 0, NULL, '2019-05-13 19:34:35');
INSERT INTO `sys_oper_log` VALUES (333, '字典数据', 3, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.remove()', 1, 'etims', '系统维护', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"121\"]}', 0, NULL, '2019-05-13 19:34:36');
INSERT INTO `sys_oper_log` VALUES (334, '字典数据', 3, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.remove()', 1, 'etims', '系统维护', '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"120\"]}', 0, NULL, '2019-05-13 19:34:38');
INSERT INTO `sys_oper_log` VALUES (335, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2016-2017学年第一学期\"],\"dictValue\":[\"2016-2017学年第一学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:35:08');
INSERT INTO `sys_oper_log` VALUES (336, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2016-2017学年第二学期\"],\"dictValue\":[\"2016-2017学年第二学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:35:21');
INSERT INTO `sys_oper_log` VALUES (337, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2017-2018学年第一学期\"],\"dictValue\":[\"2017-2018学年第一学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:35:38');
INSERT INTO `sys_oper_log` VALUES (338, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2017-2018学年第二学期\"],\"dictValue\":[\"2017-2018学年第二学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:35:52');
INSERT INTO `sys_oper_log` VALUES (339, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2018-2019学年第一学期\"],\"dictValue\":[\"2018-2019学年第一学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:36:14');
INSERT INTO `sys_oper_log` VALUES (340, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2018-2019学年第二学期\"],\"dictValue\":[\"2018-2019学年第二学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:36:24');
INSERT INTO `sys_oper_log` VALUES (341, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2019-2020学年第一学期\"],\"dictValue\":[\"2019-2020学年第一学期\"],\"dictType\":[\"mod_term\"],\"cssClass\":[\"\"],\"dictSort\":[\"7\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:36:49');
INSERT INTO `sys_oper_log` VALUES (342, '教学计划', 1, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.addSave()', 1, 'etims', '系统维护', '/module/program/add', '127.0.0.1', '内网IP', '{\"teachId\":[\"发士大夫的\"],\"teachName\":[\"撒的撒多\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"大萨达所\"],\"courseName\":[\"撒打算\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"佛挡杀佛\"],\"setMajor\":[\"是的范德萨\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"50\"]}', 0, NULL, '2019-05-13 19:42:58');
INSERT INTO `sys_oper_log` VALUES (343, '教学计划', 1, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.addSave()', 1, 'etims', '系统维护', '/module/program/add', '127.0.0.1', '内网IP', '{\"teachId\":[\"dsds\"],\"teachName\":[\"sdsd\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"dsd\"],\"courseName\":[\"sds\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"1\"],\"setMajor\":[\"dasdsadasd\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"30\"]}', 0, NULL, '2019-05-13 19:44:37');
INSERT INTO `sys_oper_log` VALUES (344, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"116\"],\"dictLabel\":[\"外贸与外语系\"],\"dictValue\":[\"外贸与外语系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:45:11');
INSERT INTO `sys_oper_log` VALUES (345, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"116\"],\"dictLabel\":[\"外贸与外语系\"],\"dictValue\":[\"外贸与外语系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:45:16');
INSERT INTO `sys_oper_log` VALUES (346, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"115\"],\"dictLabel\":[\"设计系\"],\"dictValue\":[\"设计系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:45:26');
INSERT INTO `sys_oper_log` VALUES (347, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"114\"],\"dictLabel\":[\"管理系\"],\"dictValue\":[\"管理系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:45:33');
INSERT INTO `sys_oper_log` VALUES (348, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"113\"],\"dictLabel\":[\"机电工程系\"],\"dictValue\":[\"机电工程系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:45:41');
INSERT INTO `sys_oper_log` VALUES (349, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"112\"],\"dictLabel\":[\"电子工程系\"],\"dictValue\":[\"电子工程系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:45:52');
INSERT INTO `sys_oper_log` VALUES (350, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"111\"],\"dictLabel\":[\"信息工程系\"],\"dictValue\":[\"信息工程系\"],\"dictType\":[\"mod_student_department\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 19:46:03');
INSERT INTO `sys_oper_log` VALUES (351, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"多俊睿\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西盛源行\"],\"companyAddress\":[\"阿达大厦\"],\"position\":[\"撒大声地\"],\"principalName\":[\"撒打算\"],\"principalTel\":[\"18178322520\"],\"applyStatus\":[\"2\"],\"applyReply\":[\"不通过 材料重新填写\"]}', 0, NULL, '2019-05-13 19:47:33');
INSERT INTO `sys_oper_log` VALUES (352, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"1\"],\"teachId\":[\"cxzcxz\"],\"teachName\":[\"vxvxv\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"vcxvc\"],\"courseName\":[\"xvxcv\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"gsgsdfg\"],\"setMajor\":[\"fdsdfsd\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"50\"],\"createTime\":[\"Mon May 13 17:37:50 CST 2019\"],\"updateTime\":[\"\"],\"delFlag\":[\"0\"]}', 0, NULL, '2019-05-13 19:48:33');
INSERT INTO `sys_oper_log` VALUES (353, '教学计划', 1, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.addSave()', 1, 'etims', '系统维护', '/module/program/add', '127.0.0.1', '内网IP', '{\"teachId\":[\"dsad\"],\"teachName\":[\"sadas\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"sadas\"],\"courseName\":[\"sadsa\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"信息工程系\"],\"setMajor\":[\"rgdf\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"60\"]}', 0, NULL, '2019-05-13 19:49:00');
INSERT INTO `sys_oper_log` VALUES (354, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"1\"],\"teachId\":[\"cxzcxz\"],\"teachName\":[\"vxvxv\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"vcxvc\"],\"courseName\":[\"xvxcv\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"信息工程系\"],\"setMajor\":[\"fdsdfsd\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"50\"]}', 0, NULL, '2019-05-13 19:52:44');
INSERT INTO `sys_oper_log` VALUES (355, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"2\"],\"teachId\":[\"发士大夫的\"],\"teachName\":[\"撒的撒多\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"大萨达所\"],\"courseName\":[\"撒打算\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"信息工程系\"],\"setMajor\":[\"是的范德萨\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"50\"]}', 0, NULL, '2019-05-13 19:52:56');
INSERT INTO `sys_oper_log` VALUES (356, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"3\"],\"teachId\":[\"dsds\"],\"teachName\":[\"sdsd\"],\"semester\":[\"2016-2017学年第一学期\"],\"courseId\":[\"dsd\"],\"courseName\":[\"sds\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"设计系\"],\"setMajor\":[\"dasdsadasd\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"30\"]}', 0, NULL, '2019-05-13 19:53:00');
INSERT INTO `sys_oper_log` VALUES (357, '教学计划', 1, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.addSave()', 1, 'etims', '系统维护', '/module/program/add', '127.0.0.1', '内网IP', '{\"teachId\":[\"T120315\"],\"teachName\":[\"吴亦凡\"],\"semester\":[\"2018-2019学年第二学期\"],\"courseId\":[\"KC58203_01\"],\"courseName\":[\"计算机基础\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"信息工程系\"],\"setMajor\":[\"计算机科学与技术\"],\"usualScoreRatio\":[\"40\"],\"examScoreRatio\":[\"60\"]}', 0, NULL, '2019-05-13 19:54:59');
INSERT INTO `sys_oper_log` VALUES (358, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"4\"],\"teachId\":[\"T120316\"],\"teachName\":[\"赵本山\"],\"semester\":[\"2019-2020学年第一学期\"],\"courseId\":[\"KC230211_02\"],\"courseName\":[\"无线网络配置\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"电子工程系\"],\"setMajor\":[\"机械工程\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"80\"]}', 0, NULL, '2019-05-13 19:56:52');
INSERT INTO `sys_oper_log` VALUES (359, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"4\"],\"teachId\":[\"T120316\"],\"teachName\":[\"赵本山\"],\"semester\":[\"2019-2020学年第一学期\"],\"courseId\":[\"KC23011_02\"],\"courseName\":[\"无线网络配置\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"电子工程系\"],\"setMajor\":[\"机械工程\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"80\"]}', 0, NULL, '2019-05-13 19:57:02');
INSERT INTO `sys_oper_log` VALUES (360, '教学计划', 3, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.remove()', 1, 'etims', '系统维护', '/module/program/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-05-13 19:57:33');
INSERT INTO `sys_oper_log` VALUES (361, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"4\"],\"teachId\":[\"T120316\"],\"teachName\":[\"赵本山\"],\"semester\":[\"2017-2018学年第二学期\"],\"courseId\":[\"KC23011_02\"],\"courseName\":[\"无线网络配置\"],\"courseCredit\":[\"2\"],\"setDepart\":[\"电子工程系\"],\"setMajor\":[\"机械工程\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"80\"]}', 0, NULL, '2019-05-13 20:07:05');
INSERT INTO `sys_oper_log` VALUES (362, '教学计划', 2, 'cn.duojunrui.etims.project.module.program.controller.ProgramController.editSave()', 1, 'etims', '系统维护', '/module/program/edit', '127.0.0.1', '内网IP', '{\"programId\":[\"3\"],\"teachId\":[\"dsds\"],\"teachName\":[\"sdsd\"],\"semester\":[\"2019-2020学年第一学期\"],\"courseId\":[\"dsd\"],\"courseName\":[\"sds\"],\"courseCredit\":[\"5\"],\"setDepart\":[\"设计系\"],\"setMajor\":[\"dasdsadasd\"],\"usualScoreRatio\":[\"20\"],\"examScoreRatio\":[\"30\"]}', 0, NULL, '2019-05-13 20:07:17');
INSERT INTO `sys_oper_log` VALUES (365, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"考核成绩\"],\"url\":[\"/module/grade\"],\"perms\":[\"module:grade:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 20:28:02');
INSERT INTO `sys_oper_log` VALUES (366, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', NULL, '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"考核类型\"],\"dictType\":[\"mod_exam_type\"],\"status\":[\"0\"],\"remark\":[\"考核类型\"]}', 0, NULL, '2019-05-13 20:35:20');
INSERT INTO `sys_oper_log` VALUES (367, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"正考\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 20:35:52');
INSERT INTO `sys_oper_log` VALUES (368, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"补考\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 20:36:07');
INSERT INTO `sys_oper_log` VALUES (369, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"重修\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 20:36:24');
INSERT INTO `sys_oper_log` VALUES (370, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"旷考\"],\"dictValue\":[\"3\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 20:37:00');
INSERT INTO `sys_oper_log` VALUES (372, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2054\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"店铺管理\"],\"url\":[\"/module/store\"],\"perms\":[\"module:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 20:55:36');
INSERT INTO `sys_oper_log` VALUES (373, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', NULL, '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"\"],\"stuDepart\":[\"\"],\"stuClass\":[\"\"],\"stuNum\":[\"\"],\"shopName\":[\"\"],\"shopAddress\":[\"\"],\"businessScope\":[\"\"],\"rentStartTime\":[\"2019-05-15\"],\"rentEndTime\":[\"2019-05-16\"],\"adviser\":[\"\"],\"filePath\":[\"\"],\"applyStatus\":[\"\"],\"applyTime\":[\"\"],\"applyReply\":[\"\"],\"createTime\":[\"\"],\"updateTime\":[\"\"],\"delFlag\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'apply_status\' doesn\'t have a default value\r\n### The error may involve cn.duojunrui.etims.project.module.store.mapper.StoreMapper.insertStore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_store          ( rent_start_time,                          rent_end_time )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'apply_status\' doesn\'t have a default value\n; Field \'apply_status\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'apply_status\' doesn\'t have a default value', '2019-05-13 21:24:28');
INSERT INTO `sys_oper_log` VALUES (374, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', NULL, '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"\"],\"stuDepart\":[\"\"],\"stuClass\":[\"\"],\"stuNum\":[\"\"],\"shopName\":[\"\"],\"shopAddress\":[\"\"],\"businessScope\":[\"\"],\"rentStartTime\":[\"\"],\"rentEndTime\":[\"\"],\"adviser\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve cn.duojunrui.etims.project.module.store.mapper.StoreMapper.insertStore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_store\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-05-13 21:25:18');
INSERT INTO `sys_oper_log` VALUES (375, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', NULL, '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"多俊睿\"],\"stuDepart\":[\"信息工程系\"],\"stuClass\":[\"15512001\"],\"stuNum\":[\"1551200124\"],\"shopName\":[\"多多喜乐街\"],\"shopAddress\":[\"小黄楼-20102\"],\"businessScope\":[\"打字复印，喷绘定制\"],\"rentStartTime\":[\"2019-05-01\"],\"rentEndTime\":[\"2020-05-01\"],\"adviser\":[\"邱勋拥\"]}', 0, NULL, '2019-05-13 21:30:48');
INSERT INTO `sys_oper_log` VALUES (376, '创业园店铺', 2, 'cn.duojunrui.etims.project.module.store.controller.StoreController.editSave()', 1, 'etims', NULL, '/module/store/edit', '127.0.0.1', '内网IP', '{\"storeId\":[\"1\"],\"stuName\":[\"多俊睿\"],\"stuDepart\":[\"机电工程系\"],\"stuClass\":[\"15512001\"],\"stuNum\":[\"1551200124\"],\"shopName\":[\"多多喜乐街\"],\"shopAddress\":[\"小黄楼-20102\"],\"businessScope\":[\"打字复印，喷绘定制\"],\"rentStartTime\":[\"Wed May 01 00:00:00 CST 2019\"],\"rentEndTime\":[\"Fri May 01 00:00:00 CST 2020\"],\"adviser\":[\"邱勋拥\"],\"applyStatus\":[\"0\"],\"applyReply\":[\"\"]}', 0, NULL, '2019-05-13 21:36:58');
INSERT INTO `sys_oper_log` VALUES (377, '创业园店铺', 2, 'cn.duojunrui.etims.project.module.store.controller.StoreController.editSave()', 1, 'etims', NULL, '/module/store/edit', '127.0.0.1', '内网IP', '{\"storeId\":[\"1\"],\"stuName\":[\"多俊睿\"],\"stuDepart\":[\"机电工程系\"],\"stuClass\":[\"15512001\"],\"stuNum\":[\"1551200124\"],\"shopName\":[\"多多喜乐街\"],\"shopAddress\":[\"小黄楼-20102\"],\"businessScope\":[\"打字复印，喷绘定制\"],\"rentStartTime\":[\"Wed May 01 00:00:00 CST 2019\"],\"rentEndTime\":[\"Fri May 01 00:00:00 CST 2020\"],\"adviser\":[\"邱勋拥\"],\"applyStatus\":[\"2\"],\"applyReply\":[\"sadasd\"]}', 0, NULL, '2019-05-13 21:38:12');
INSERT INTO `sys_oper_log` VALUES (378, '创业园店铺', 2, 'cn.duojunrui.etims.project.module.store.controller.StoreController.editSave()', 1, 'etims', NULL, '/module/store/edit', '127.0.0.1', '内网IP', '{\"storeId\":[\"1\"],\"stuName\":[\"多俊睿\"],\"stuDepart\":[\"机电工程系\"],\"stuClass\":[\"15512001\"],\"stuNum\":[\"1551200124\"],\"shopName\":[\"多多喜乐街\"],\"shopAddress\":[\"小黄楼-20102\"],\"businessScope\":[\"打字复印，喷绘定制\"],\"rentStartTime\":[\"Wed May 01 00:00:00 CST 2019\"],\"rentEndTime\":[\"Fri May 01 00:00:00 CST 2020\"],\"adviser\":[\"邱勋拥\"],\"applyStatus\":[\"1\"],\"applyReply\":[\"\"]}', 0, NULL, '2019-05-13 21:38:22');
INSERT INTO `sys_oper_log` VALUES (380, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2059\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"内容发布\"],\"url\":[\"/module/content\"],\"perms\":[\"module:content:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-13 22:16:03');
INSERT INTO `sys_oper_log` VALUES (381, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', '系统维护', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"网站文章类型\"],\"dictType\":[\"mod_article_type\"],\"status\":[\"0\"],\"remark\":[\"网站文章类型\"]}', 0, NULL, '2019-05-13 23:45:12');
INSERT INTO `sys_oper_log` VALUES (382, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"通知公告\"],\"dictValue\":[\"通知公告\"],\"dictType\":[\"mod_article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 23:46:02');
INSERT INTO `sys_oper_log` VALUES (383, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"中心动态\"],\"dictValue\":[\"中心动态\"],\"dictType\":[\"mod_article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 23:46:25');
INSERT INTO `sys_oper_log` VALUES (384, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"创新成果\"],\"dictValue\":[\"创新成果\"],\"dictType\":[\"mod_article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-13 23:46:39');
INSERT INTO `sys_oper_log` VALUES (385, '字典类型', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.addSave()', 1, 'etims', '系统维护', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"文章发布状态\"],\"dictType\":[\"mod_article_status\"],\"status\":[\"0\"],\"remark\":[\"文章发布状态\"]}', 0, NULL, '2019-05-14 00:06:56');
INSERT INTO `sys_oper_log` VALUES (386, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"正常\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_article_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 00:07:20');
INSERT INTO `sys_oper_log` VALUES (387, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', '系统维护', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"关闭\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_article_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 00:07:34');
INSERT INTO `sys_oper_log` VALUES (388, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"138\"],\"dictLabel\":[\"发布\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_article_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 00:09:47');
INSERT INTO `sys_oper_log` VALUES (389, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于开展夏季灭蚊蝇消杀工作的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各单位：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为进一步做好除害防病工作，保障师生员工的身体健康，信科物业公司将从2019年5月11日开始对校园进行全面喷药消杀除四害工作，具体消杀计划及注意事项如下：（如遇雨天顺延，不再另行通知）</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">一、消杀喷药安排：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; ver', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_type\' at row 1\r\n### The error may involve cn.duojunrui.etims.project.module.content.mapper.ContentMapper.insertContent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_content          ( article_title,                          article_type,                          article_content,                          status )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_type\' at row 1\n; Data truncation: Data too long for column \'article_type\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_type\' at row 1', '2019-05-14 10:17:34');
INSERT INTO `sys_oper_log` VALUES (390, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于开展夏季灭蚊蝇消杀工作的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各单位：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为进一步做好除害防病工作，保障师生员工的身体健康，信科物业公司将从2019年5月11日开始对校园进行全面喷药消杀除四害工作，具体消杀计划及注意事项如下：（如遇雨天顺延，不再另行通知）</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">一、消杀喷药安排：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; ver', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_type\' at row 1\r\n### The error may involve cn.duojunrui.etims.project.module.content.mapper.ContentMapper.insertContent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_content          ( article_title,                          article_type,                          article_content,                          status )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_type\' at row 1\n; Data truncation: Data too long for column \'article_type\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_type\' at row 1', '2019-05-14 10:19:06');
INSERT INTO `sys_oper_log` VALUES (391, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于开展夏季灭蚊蝇消杀工作的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各单位：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为进一步做好除害防病工作，保障师生员工的身体健康，信科物业公司将从2019年5月11日开始对校园进行全面喷药消杀除四害工作，具体消杀计划及注意事项如下：（如遇雨天顺延，不再另行通知）</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">一、消杀喷药安排：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; ver', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\r\n### The error may involve cn.duojunrui.etims.project.module.content.mapper.ContentMapper.insertContent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_content          ( article_title,                          article_type,                          article_content,                          status )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\n; Data truncation: Data too long for column \'article_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1', '2019-05-14 10:19:55');
INSERT INTO `sys_oper_log` VALUES (392, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于开展夏季灭蚊蝇消杀工作的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各单位：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为进一步做好除害防病工作，保障师生员工的身体健康，信科物业公司将从2019年5月11日开始对校园进行全面喷药消杀除四害工作，具体消杀计划及注意事项如下：（如遇雨天顺延，不再另行通知）</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">一、消杀喷药安排：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; ver', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\r\n### The error may involve cn.duojunrui.etims.project.module.content.mapper.ContentMapper.insertContent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_content          ( article_title,                          article_type,                          article_content,                          status )           values ( ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\n; Data truncation: Data too long for column \'article_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1', '2019-05-14 10:20:00');
INSERT INTO `sys_oper_log` VALUES (393, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于开展夏季灭蚊蝇消杀工作的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各单位：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为进一步做好除害防病工作，保障师生员工的身体健康，信科物业公司将从2019年5月11日开始对校园进行全面喷药消杀除四害工作，具体消杀计划及注意事项如下：（如遇雨天顺延，不再另行通知）</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">一、消杀喷药安排：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; ver', 0, NULL, '2019-05-14 10:21:56');
INSERT INTO `sys_oper_log` VALUES (394, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于组织参加第五届中国“互联网 +” 大学生创新创业大赛的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各系、部：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为贯彻落实全国教育大会精神，深入落实习近平总书记给中国“互联网”大学生创新创业大赛“青年红色筑梦之旅”大学生的重要回信精神，贯彻落实《国务院办公厅关于深化高等学校创新创业教育改革的实施意见》（国办发〔2015〕36号），根据教育部对第五届中国“互联网+”大学生创新创业大赛（以下简称“国赛”）的部署和广西赛区选拔赛（以下简称“区赛”）的工作安排。经研究，我校将组织大学生参加第五届中国“互联网+”大学生创新创业大赛，现将参赛的有关事项通知如下：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-dec', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\r\n### The error may involve cn.duojunrui.etims.project.module.content.mapper.ContentMapper.insertContent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_content          ( article_title,                          article_type,                          article_content,                          status,                          create_by,                          create_time )           values ( ?,                          ?,                          ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\n; Data truncation: Data too long for column \'article_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1', '2019-05-14 10:28:48');
INSERT INTO `sys_oper_log` VALUES (395, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于组织参加第五届中国“互联网 +” 大学生创新创业大赛的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各系、部：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为贯彻落实全国教育大会精神，深入落实习近平总书记给中国“互联网”大学生创新创业大赛“青年红色筑梦之旅”大学生的重要回信精神，贯彻落实《国务院办公厅关于深化高等学校创新创业教育改革的实施意见》（国办发〔2015〕36号），根据教育部对第五届中国“互联网+”大学生创新创业大赛（以下简称“国赛”）的部署和广西赛区选拔赛（以下简称“区赛”）的工作安排。经研究，我校将组织大学生参加第五届中国“互联网+”大学生创新创业大赛，现将参赛的有关事项通知如下：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-dec', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\r\n### The error may involve cn.duojunrui.etims.project.module.content.mapper.ContentMapper.insertContent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_content          ( article_title,                          article_type,                          article_content,                          status,                          create_by,                          create_time )           values ( ?,                          ?,                          ?,                          ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1\n; Data truncation: Data too long for column \'article_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'article_content\' at row 1', '2019-05-14 10:29:06');
INSERT INTO `sys_oper_log` VALUES (396, '实验中心网站内容', 1, 'cn.duojunrui.etims.project.module.content.controller.ContentController.addSave()', 1, 'etims', '系统维护', '/module/content/add', '127.0.0.1', '内网IP', '{\"articleTitle\":[\"关于组织参加第五届中国“互联网 +” 大学生创新创业大赛的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各系、部：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为贯彻落实全国教育大会精神，深入落实习近平总书记给中国“互联网”大学生创新创业大赛“青年红色筑梦之旅”大学生的重要回信精神，贯彻落实《国务院办公厅关于深化高等学校创新创业教育改革的实施意见》（国办发〔2015〕36号），根据教育部对第五届中国“互联网+”大学生创新创业大赛（以下简称“国赛”）的部署和广西赛区选拔赛（以下简称“区赛”）的工作安排。经研究，我校将组织大学生参加第五届中国“互联网+”大学生创新创业大赛，现将参赛的有关事项通知如下：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-dec', 0, NULL, '2019-05-14 10:33:03');
INSERT INTO `sys_oper_log` VALUES (397, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"138\"],\"dictLabel\":[\"已发布\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_article_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 10:44:39');
INSERT INTO `sys_oper_log` VALUES (398, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"139\"],\"dictLabel\":[\"已关闭\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_article_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 10:44:59');
INSERT INTO `sys_oper_log` VALUES (399, '实验中心网站内容', 2, 'cn.duojunrui.etims.project.module.content.controller.ContentController.editSave()', 1, 'etims', '系统维护', '/module/content/edit', '127.0.0.1', '内网IP', '{\"contentId\":[\"1\"],\"articleTitle\":[\"温馨提醒：2018-07-01实验教学信息管理系统新版本发布啦\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"新版本内容\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-14 10:52:55');
INSERT INTO `sys_oper_log` VALUES (400, '实验中心网站内容', 2, 'cn.duojunrui.etims.project.module.content.controller.ContentController.editSave()', 1, 'etims', '系统维护', '/module/content/edit', '127.0.0.1', '内网IP', '{\"contentId\":[\"2\"],\"articleTitle\":[\"维护通知：2018-07-01 实验教学信息管理系统维护公告\"],\"articleType\":[\"中心动态\"],\"articleContent\":[\"维护内容\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-14 10:53:03');
INSERT INTO `sys_oper_log` VALUES (401, '实验中心网站内容', 2, 'cn.duojunrui.etims.project.module.content.controller.ContentController.editSave()', 1, 'etims', '系统维护', '/module/content/edit', '127.0.0.1', '内网IP', '{\"contentId\":[\"11\"],\"articleTitle\":[\"关于开展夏季灭蚊蝇消杀工作的通知\"],\"articleType\":[\"通知公告\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各单位：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为进一步做好除害防病工作，保障师生员工的身体健康，信科物业公司将从2019年5月11日开始对校园进行全面喷药消杀除四害工作，具体消杀计划及注意事项如下：（如遇雨天顺延，不再另行通知）</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">一、消杀喷药安排：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-s', 0, NULL, '2019-05-14 10:53:20');
INSERT INTO `sys_oper_log` VALUES (402, '实验中心网站内容', 2, 'cn.duojunrui.etims.project.module.content.controller.ContentController.editSave()', 1, 'etims', '系统维护', '/module/content/edit', '127.0.0.1', '内网IP', '{\"contentId\":[\"12\"],\"articleTitle\":[\"关于组织参加第五届中国“互联网 +” 大学生创新创业大赛的通知\"],\"articleType\":[\"创新成果\"],\"articleContent\":[\"<p class=\\\"vsbcontent_start\\\" style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 0em; font-weight: bold; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">各系、部：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\\\">为贯彻落实全国教育大会精神，深入落实习近平总书记给中国“互联网”大学生创新创业大赛“青年红色筑梦之旅”大学生的重要回信精神，贯彻落实《国务院办公厅关于深化高等学校创新创业教育改革的实施意见》（国办发〔2015〕36号），根据教育部对第五届中国“互联网+”大学生创新创业大赛（以下简称“国赛”）的部署和广西赛区选拔赛（以下简称“区赛”）的工作安排。经研究，我校将组织大学生参加第五届中国“互联网+”大学生创新创业大赛，现将参赛的有关事项通知如下：</p><p style=\\\"padding: 0px; margin: 0px; border: 0px; font-size: 18.6667px; vertical-align: baseline; color: rgb(0, 51, 51); line-height: 33.6px; text-indent: 37.3333px; font-family: &quot;Microsoft YaHei&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, ', 0, NULL, '2019-05-14 10:53:33');
INSERT INTO `sys_oper_log` VALUES (403, '实验中心网站内容', 3, 'cn.duojunrui.etims.project.module.content.controller.ContentController.remove()', 1, 'etims', '系统维护', '/module/content/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', 0, NULL, '2019-05-14 10:54:12');
INSERT INTO `sys_oper_log` VALUES (404, '字典数据', 3, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.remove()', 1, 'etims', NULL, '/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"103\"]}', 0, NULL, '2019-05-14 11:20:01');
INSERT INTO `sys_oper_log` VALUES (405, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"104\"],\"dictLabel\":[\"文献参考资料\"],\"dictValue\":[\"文献参考资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"文献参考资料\"]}', 0, NULL, '2019-05-14 11:20:08');
INSERT INTO `sys_oper_log` VALUES (406, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"其他学习资料\"],\"dictValue\":[\"其他学习资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"其他学习资料\"]}', 0, NULL, '2019-05-14 11:20:14');
INSERT INTO `sys_oper_log` VALUES (407, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"其他学习资料\"],\"dictValue\":[\"其他学习资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"其他学习资料\"]}', 0, NULL, '2019-05-14 11:20:34');
INSERT INTO `sys_oper_log` VALUES (408, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"100\"],\"dictLabel\":[\"上课教学资料\"],\"dictValue\":[\"上课教学资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"上课教学资料\"]}', 0, NULL, '2019-05-14 11:20:44');
INSERT INTO `sys_oper_log` VALUES (409, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"101\"],\"dictLabel\":[\"实验试题资料\"],\"dictValue\":[\"实验试题资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"实验试题资料\"]}', 0, NULL, '2019-05-14 11:20:48');
INSERT INTO `sys_oper_log` VALUES (410, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"102\"],\"dictLabel\":[\"实验案例资料\"],\"dictValue\":[\"实验案例资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"实验案例资料\"]}', 0, NULL, '2019-05-14 11:20:52');
INSERT INTO `sys_oper_log` VALUES (411, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"104\"],\"dictLabel\":[\"文献参考资料\"],\"dictValue\":[\"文献参考资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"文献参考资料\"]}', 0, NULL, '2019-05-14 11:20:56');
INSERT INTO `sys_oper_log` VALUES (412, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', NULL, '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"其他学习资料\"],\"dictValue\":[\"其他学习资料\"],\"dictType\":[\"mod_material_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"其他学习资料\"]}', 0, NULL, '2019-05-14 11:21:00');
INSERT INTO `sys_oper_log` VALUES (413, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"xls\"],\"dictValue\":[\"xls\"],\"dictType\":[\"mod_material_file_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 11:22:45');
INSERT INTO `sys_oper_log` VALUES (414, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"xlsx\"],\"dictValue\":[\"xlsx\"],\"dictType\":[\"mod_material_file_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 11:22:56');
INSERT INTO `sys_oper_log` VALUES (415, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"pdf\"],\"dictValue\":[\"pdf\"],\"dictType\":[\"mod_material_file_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 11:23:13');
INSERT INTO `sys_oper_log` VALUES (416, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"ppt\"],\"dictValue\":[\"ppt\"],\"dictType\":[\"mod_material_file_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"7\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 11:23:42');
INSERT INTO `sys_oper_log` VALUES (417, '字典数据', 1, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.addSave()', 1, 'etims', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"pptx\"],\"dictValue\":[\"pptx\"],\"dictType\":[\"mod_material_file_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"8\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-14 11:23:55');
INSERT INTO `sys_oper_log` VALUES (418, '字典类型', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictTypeController.editSave()', 1, 'etims', NULL, '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"资料文件类型\"],\"dictType\":[\"mod_material_file_type\"],\"status\":[\"0\"],\"remark\":[\"资料文件类型\"]}', 0, NULL, '2019-05-14 11:26:30');
INSERT INTO `sys_oper_log` VALUES (419, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'etims', NULL, '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"56\"],\"course\":[\"电子技术基础\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"电子技术基础\"]}', 0, NULL, '2019-05-14 11:50:54');
INSERT INTO `sys_oper_log` VALUES (420, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', NULL, '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"学生B\"],\"stuDepart\":[\"信息工程系\"],\"stuClass\":[\"15512001\"],\"stuNum\":[\"1551200124\"],\"shopName\":[\"小班服\"],\"shopAddress\":[\"小黄楼2012\"],\"businessScope\":[\"服装出租\"],\"rentStartTime\":[\"2019-05-06\"],\"rentEndTime\":[\"2019-05-31\"],\"adviser\":[\"李老师\"]}', 0, NULL, '2019-05-14 12:51:36');
INSERT INTO `sys_oper_log` VALUES (421, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2002,2044,2045,2003,2033,2034,2035,2004,2054,2055,2056,2005,2049,2050\"]}', 0, NULL, '2019-05-14 12:55:45');
INSERT INTO `sys_oper_log` VALUES (422, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2002,2044,2045,2003,2033,2034,2035,2004,2054,2055,2056,2005,2049,2050\"]}', 0, NULL, '2019-05-14 13:25:31');
INSERT INTO `sys_oper_log` VALUES (423, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"老师\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2002,2044,2045,2046,2047,2003,2033,2034,2036,2004,2054,2055,2057,2005,2049,2050,2051,2052,2007\"]}', 0, NULL, '2019-05-14 13:27:43');
INSERT INTO `sys_oper_log` VALUES (424, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"网站内容管理\"],\"roleKey\":[\"website\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"实验中心网站内容的发布与管理\"],\"menuIds\":[\"2006,2059,2060,2061,2062,2063\"]}', 0, NULL, '2019-05-14 13:28:09');
INSERT INTO `sys_oper_log` VALUES (425, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有系统配置和监控等功能\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-05-14 13:28:51');
INSERT INTO `sys_oper_log` VALUES (426, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2004,2054,2055,2056,2057,2058,2005,2049,2050,2051,2052,2053,2007,2006,2059,2060,2061,2062,2063,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-05-14 13:29:18');
INSERT INTO `sys_oper_log` VALUES (427, '角色管理', 1, 'cn.duojunrui.etims.project.system.role.controller.RoleController.addSave()', 1, 'etims', NULL, '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"设备管理员\"],\"roleKey\":[\"equipment\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"设备管理员 只有设备出入库\"],\"menuIds\":[\"2001,2026,2027,2028,2029,2030,2031,2032\"]}', 0, NULL, '2019-05-14 13:32:03');
INSERT INTO `sys_oper_log` VALUES (428, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"老师\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2002,2044,2045,2046,2047,2003,2033,2034,2036,2004,2054,2055,2057,2005,2049,2050,2051,2052,2007\"]}', 0, NULL, '2019-05-14 13:32:13');
INSERT INTO `sys_oper_log` VALUES (429, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2002,2044,2045,2003,2033,2034,2035,2004,2054,2055,2056,2005,2049,2050\"]}', 0, NULL, '2019-05-14 13:32:19');
INSERT INTO `sys_oper_log` VALUES (430, '角色管理', 4, 'cn.duojunrui.etims.project.system.role.controller.RoleController.selectAuthUserAll()', 1, 'etims', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"106\"],\"userIds\":[\"173\"]}', 0, NULL, '2019-05-14 13:32:56');
INSERT INTO `sys_oper_log` VALUES (431, '角色管理', 4, 'cn.duojunrui.etims.project.system.role.controller.RoleController.selectAuthUserAll()', 1, 'etims', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"userIds\":[\"154\"]}', 0, NULL, '2019-05-14 13:33:21');
INSERT INTO `sys_oper_log` VALUES (432, '角色管理', 4, 'cn.duojunrui.etims.project.system.role.controller.RoleController.selectAuthUserAll()', 1, 'etims', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"userIds\":[\"165\"]}', 0, NULL, '2019-05-14 13:33:52');
INSERT INTO `sys_oper_log` VALUES (433, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"165\"],\"deptId\":[\"213\"],\"userName\":[\"管理员A\"],\"dept.deptName\":[\"16512001班\"],\"phonenumber\":[\"18178321562\"],\"email\":[\"123abc063@qq.com\"],\"loginName\":[\"16512008\"],\"sex\":[\"1\"],\"role\":[\"105\",\"102\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105,102\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:35:00');
INSERT INTO `sys_oper_log` VALUES (434, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"154\"],\"deptId\":[\"208\"],\"userName\":[\"内容管理员\"],\"dept.deptName\":[\"15512002班\"],\"phonenumber\":[\"18178321551\"],\"email\":[\"123abc052@qq.com\"],\"loginName\":[\"1551200217\"],\"sex\":[\"1\"],\"role\":[\"105\",\"103\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105,103\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:35:55');
INSERT INTO `sys_oper_log` VALUES (435, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"173\"],\"deptId\":[\"213\"],\"userName\":[\"设备管理员\"],\"dept.deptName\":[\"16512001班\"],\"phonenumber\":[\"18178321570\"],\"email\":[\"123abc071@qq.com\"],\"loginName\":[\"16512016\"],\"sex\":[\"1\"],\"role\":[\"106\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"106\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:36:24');
INSERT INTO `sys_oper_log` VALUES (436, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"165\"],\"deptId\":[\"213\"],\"userName\":[\"管理员A\"],\"dept.deptName\":[\"16512001班\"],\"phonenumber\":[\"18178321562\"],\"email\":[\"123abc063@qq.com\"],\"loginName\":[\"16512008\"],\"sex\":[\"1\"],\"role\":[\"102\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:37:09');
INSERT INTO `sys_oper_log` VALUES (437, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"154\"],\"deptId\":[\"208\"],\"userName\":[\"内容管理员\"],\"dept.deptName\":[\"15512002班\"],\"phonenumber\":[\"18178321551\"],\"email\":[\"123abc052@qq.com\"],\"loginName\":[\"1551200217\"],\"sex\":[\"1\"],\"role\":[\"103\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"103\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:37:24');
INSERT INTO `sys_oper_log` VALUES (438, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"173\"],\"deptId\":[\"213\"],\"userName\":[\"设备管理员\"],\"dept.deptName\":[\"16512001班\"],\"phonenumber\":[\"18178321570\"],\"email\":[\"123abc071@qq.com\"],\"loginName\":[\"16512016\"],\"sex\":[\"1\"],\"role\":[\"106\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"106\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:37:38');
INSERT INTO `sys_oper_log` VALUES (439, '用户管理', 1, 'cn.duojunrui.etims.project.system.user.controller.UserController.addSave()', 1, 'etims', NULL, '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"207\"],\"userName\":[\"刘老师\"],\"deptName\":[\"15512001班\"],\"phonenumber\":[\"18178322003\"],\"email\":[\"liu@qq.com\"],\"loginName\":[\"T15512001\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"104\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"104\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-14 13:38:46');
INSERT INTO `sys_oper_log` VALUES (440, '顶岗实习', 1, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.addSave()', 1, '1551200124', '15512001班', '/module/practice/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"\"],\"studentNumber\":[\"\"],\"companyName\":[\"\"],\"companyAddress\":[\"\"],\"position\":[\"\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"principalName\":[\"\"],\"principalTel\":[\"\"]}', 0, NULL, '2019-05-14 13:42:26');
INSERT INTO `sys_oper_log` VALUES (441, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', NULL, '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"39\"],\"studentName\":[\"\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"\"],\"studentNumber\":[\"\"],\"companyName\":[\"\"],\"companyAddress\":[\"\"],\"position\":[\"\"],\"principalName\":[\"\"],\"principalTel\":[\"\"],\"applyStatus\":[\"1\"],\"applyReply\":[\"\"]}', 0, NULL, '2019-05-14 13:43:18');
INSERT INTO `sys_oper_log` VALUES (442, '顶岗实习', 3, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.remove()', 1, 'etims', NULL, '/module/practice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"39\"]}', 0, NULL, '2019-05-14 13:43:33');
INSERT INTO `sys_oper_log` VALUES (443, '教学资源', 2, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.editSave()', 1, 'T15512001', '15512001班', '/module/material/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"1\"],\"course\":[\"计算机组成原理\"],\"category\":[\"实验试题资料\"],\"fileName\":[\"计算机组成原理第一章\"]}', 0, NULL, '2019-05-14 13:48:41');
INSERT INTO `sys_oper_log` VALUES (444, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'T15512001', '15512001班', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"2\"],\"studentName\":[\"学生2\"],\"studentDepartment\":[\"机电工程系\"],\"studentClass\":[\"17513011\"],\"studentNumber\":[\"1551200125\"],\"companyName\":[\"广西XXX102有限公司\"],\"companyAddress\":[\"广西南宁西乡塘区XXX\"],\"position\":[\"软件开发\"],\"principalName\":[\"负责人02\"],\"principalTel\":[\"18178321102\"],\"applyStatus\":[\"2\"],\"applyReply\":[\"未通过 重新提交\"]}', 0, NULL, '2019-05-14 13:50:01');
INSERT INTO `sys_oper_log` VALUES (445, '在线用户', 7, 'cn.duojunrui.etims.project.monitor.online.controller.UserOnlineController.forceLogout()', 1, 'etims', '系统维护', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"4d207d25-a26c-42ec-ac52-b6010b11ccfc\"]}', 0, NULL, '2019-05-14 13:59:35');
INSERT INTO `sys_oper_log` VALUES (446, '在线用户', 7, 'cn.duojunrui.etims.project.monitor.online.controller.UserOnlineController.forceLogout()', 1, 'etims', '系统维护', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"4d207d25-a26c-42ec-ac52-b6010b11ccfc\"]}', 0, NULL, '2019-05-14 13:59:42');
INSERT INTO `sys_oper_log` VALUES (447, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-14 15:34:09');
INSERT INTO `sys_oper_log` VALUES (448, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"公共信息管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-14 18:59:00');
INSERT INTO `sys_oper_log` VALUES (449, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-14 19:00:03');
INSERT INTO `sys_oper_log` VALUES (450, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"公共信息管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-14 19:00:15');
INSERT INTO `sys_oper_log` VALUES (451, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-14 19:00:44');
INSERT INTO `sys_oper_log` VALUES (452, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-14 19:01:21');
INSERT INTO `sys_oper_log` VALUES (453, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"8\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-14 19:01:45');
INSERT INTO `sys_oper_log` VALUES (454, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"112\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"服务监控\"],\"url\":[\"/monitor/server\"],\"perms\":[\"monitor:server:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-14 19:02:07');
INSERT INTO `sys_oper_log` VALUES (455, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, '16512008', '16512001班', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有系统配置和监控等功能\"],\"menuIds\":[\"2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2005,2049,2050,2051,2052,2053,2007,1,100,1000,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', 0, NULL, '2019-05-15 14:02:48');
INSERT INTO `sys_oper_log` VALUES (456, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"165\"],\"deptId\":[\"213\"],\"userName\":[\"教务普通管理员A\"],\"dept.deptName\":[\"16512001班\"],\"phonenumber\":[\"18178321562\"],\"email\":[\"123abc063@qq.com\"],\"loginName\":[\"16512008\"],\"sex\":[\"1\"],\"role\":[\"102\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 14:03:29');
INSERT INTO `sys_oper_log` VALUES (457, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"教务普通管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有系统配置和监控等功能\"],\"menuIds\":[\"2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2005,2049,2050,2051,2052,2053,2007,1,100,1000,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', 0, NULL, '2019-05-15 14:04:12');
INSERT INTO `sys_oper_log` VALUES (458, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"教务超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2004,2054,2055,2056,2057,2058,2005,2049,2050,2051,2052,2053,2007,2006,2059,2060,2061,2062,2063,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-05-15 14:04:28');
INSERT INTO `sys_oper_log` VALUES (459, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"教务普通管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有教学、实习、考核、用户查询及系统监控等功能\"],\"menuIds\":[\"2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2005,2049,2050,2051,2052,2053,2007,1,100,1000,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', 0, NULL, '2019-05-15 14:05:06');
INSERT INTO `sys_oper_log` VALUES (460, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.update()', 1, 'etims', '系统维护', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"教务超级管理员\"],\"phonenumber\":[\"18178322521\"],\"email\":[\"etims@etims.com\"],\"sex\":[\"0\"]}', 0, NULL, '2019-05-15 14:05:27');
INSERT INTO `sys_oper_log` VALUES (461, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"老师\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2002,2044,2045,2003,2033,2034,2036,2004,2054,2055,2057,2005,2049,2050,2051,2052,2007\"]}', 0, NULL, '2019-05-15 14:14:16');
INSERT INTO `sys_oper_log` VALUES (462, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"老师\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2002,2044,2045,2003,2033,2034,2036,2004,2054,2055,2057,2005,2049,2050,2051,2052,2007\"]}', 0, NULL, '2019-05-15 14:14:20');
INSERT INTO `sys_oper_log` VALUES (463, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"105\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"学生\"],\"menuIds\":[\"2000,2008,2017,2002,2044,2045,2003,2033,2034,2035,2004,2054,2055,2056,2005,2049,2050\"]}', 0, NULL, '2019-05-15 14:16:52');
INSERT INTO `sys_oper_log` VALUES (464, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"实验设备管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-cubes\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-15 16:27:26');
INSERT INTO `sys_oper_log` VALUES (465, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"教务普通管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有教学、实习、考核、用户查询及系统监控等功能\"],\"menuIds\":[\"2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2005,2049,2050,2051,2052,2053,2007,1,100,1000,1001,1002,1006,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', 0, NULL, '2019-05-15 17:20:04');
INSERT INTO `sys_oper_log` VALUES (466, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"教务普通管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"拥有教学、实习、考核、用户查询及系统监控等功能\"],\"menuIds\":[\"2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2005,2049,2050,2051,2052,2053,2007,1,100,1000,1001,1002,1003,1004,1005,1006,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', 0, NULL, '2019-05-15 17:21:05');
INSERT INTO `sys_oper_log` VALUES (467, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'etims', '系统维护', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-15 17:44:10');
INSERT INTO `sys_oper_log` VALUES (468, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'etims', '系统维护', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-15 17:44:17');
INSERT INTO `sys_oper_log` VALUES (469, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'etims', '系统维护', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-15 17:44:27');
INSERT INTO `sys_oper_log` VALUES (470, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.updateAvatar()', 1, 'etims', '系统维护', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-15 17:46:12');
INSERT INTO `sys_oper_log` VALUES (471, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"\"]}', 0, NULL, '2019-05-15 19:06:49');
INSERT INTO `sys_oper_log` VALUES (472, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"84\"]}', 0, NULL, '2019-05-15 19:06:56');
INSERT INTO `sys_oper_log` VALUES (473, '实验室设备', 2, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.editSave()', 1, 'etims', '系统维护', '/module/equipment/edit', '127.0.0.1', '内网IP', '{\"equipmentId\":[\"22\"],\"labName\":[\"52101\"],\"equipmentName\":[\"Oracle数据库软件\"],\"equipmentCount\":[\"20\"],\"equipmentUse\":[\"学生机及教师机激活正版Oracle数据库软件，用于实验教学\"],\"operateStatus\":[\"0\"],\"remark\":[\"用户实验室教学\"]}', 0, NULL, '2019-05-15 20:19:18');
INSERT INTO `sys_oper_log` VALUES (474, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"38\"],\"studentName\":[\"学生38\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"16230102\"],\"studentNumber\":[\"1551200161\"],\"companyName\":[\"南宁AAA有限责任公司\"],\"companyAddress\":[\"广西南宁西乡塘区XXX\"],\"position\":[\"系统运维\"],\"principalName\":[\"负责人38\"],\"principalTel\":[\"18178321138\"],\"applyStatus\":[\"1\"],\"applyReply\":[\"\"]}', 0, NULL, '2019-05-15 21:01:43');
INSERT INTO `sys_oper_log` VALUES (475, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"38\"],\"studentName\":[\"学生38\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"16230102\"],\"studentNumber\":[\"1551200161\"],\"companyName\":[\"南宁AAA有限责任公司\"],\"companyAddress\":[\"广西南宁西乡塘区XXX\"],\"position\":[\"系统运维\"],\"principalName\":[\"负责人38\"],\"principalTel\":[\"18178321138\"],\"applyStatus\":[\"2\"],\"applyReply\":[\"\"]}', 0, NULL, '2019-05-15 21:01:49');
INSERT INTO `sys_oper_log` VALUES (476, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"202\"],\"deptId\":[\"211\"],\"userName\":[\"信鸽\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321599\"],\"email\":[\"123abc100@qq.com\"],\"loginName\":[\"1851200115\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:34:24');
INSERT INTO `sys_oper_log` VALUES (477, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"201\"],\"deptId\":[\"211\"],\"userName\":[\"张真人\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321598\"],\"email\":[\"123abc099@qq.com\"],\"loginName\":[\"1851200114\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:34:34');
INSERT INTO `sys_oper_log` VALUES (478, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"203\"],\"deptId\":[\"211\"],\"userName\":[\"周杰林\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321600\"],\"email\":[\"123abc101@qq.com\"],\"loginName\":[\"1851200116\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:35:05');
INSERT INTO `sys_oper_log` VALUES (479, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"202\"],\"deptId\":[\"211\"],\"userName\":[\"廖天成\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321599\"],\"email\":[\"123abc100@qq.com\"],\"loginName\":[\"1851200115\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:35:34');
INSERT INTO `sys_oper_log` VALUES (480, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"200\"],\"deptId\":[\"211\"],\"userName\":[\"黄福德\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321597\"],\"email\":[\"123abc098@qq.com\"],\"loginName\":[\"1851200113\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:35:49');
INSERT INTO `sys_oper_log` VALUES (481, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"199\"],\"deptId\":[\"211\"],\"userName\":[\"赵本成\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321596\"],\"email\":[\"123abc097@qq.com\"],\"loginName\":[\"1851200112\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:36:05');
INSERT INTO `sys_oper_log` VALUES (482, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"198\"],\"deptId\":[\"211\"],\"userName\":[\"王淼森\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321595\"],\"email\":[\"123abc096@qq.com\"],\"loginName\":[\"1851200111\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:36:15');
INSERT INTO `sys_oper_log` VALUES (483, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"197\"],\"deptId\":[\"211\"],\"userName\":[\"裴锡锡\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321594\"],\"email\":[\"123abc095@qq.com\"],\"loginName\":[\"1851200110\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:36:42');
INSERT INTO `sys_oper_log` VALUES (484, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"196\"],\"deptId\":[\"211\"],\"userName\":[\"黄虎林\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321593\"],\"email\":[\"123abc094@qq.com\"],\"loginName\":[\"1851200109\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:36:54');
INSERT INTO `sys_oper_log` VALUES (485, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"199\"],\"deptId\":[\"211\"],\"userName\":[\"赵敏\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321596\"],\"email\":[\"123abc097@qq.com\"],\"loginName\":[\"1851200112\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:37:18');
INSERT INTO `sys_oper_log` VALUES (486, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"201\"],\"deptId\":[\"211\"],\"userName\":[\"张无忌\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321598\"],\"email\":[\"123abc099@qq.com\"],\"loginName\":[\"1851200114\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:37:29');
INSERT INTO `sys_oper_log` VALUES (487, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"198\"],\"deptId\":[\"211\"],\"userName\":[\"周芷若\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321595\"],\"email\":[\"123abc096@qq.com\"],\"loginName\":[\"1851200111\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:37:36');
INSERT INTO `sys_oper_log` VALUES (488, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.editSave()', 1, 'etims', '系统维护', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"203\"],\"deptId\":[\"211\"],\"userName\":[\"杨潇\"],\"dept.deptName\":[\"18512001班\"],\"phonenumber\":[\"18178321600\"],\"email\":[\"123abc101@qq.com\"],\"loginName\":[\"1851200116\"],\"sex\":[\"1\"],\"role\":[\"105\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"105\"],\"postIds\":[\"\"]}', 0, NULL, '2019-05-15 21:37:47');
INSERT INTO `sys_oper_log` VALUES (489, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"200\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-15 21:39:35');
INSERT INTO `sys_oper_log` VALUES (490, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.changeStatus()', 1, 'etims', '系统维护', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-15 21:42:32');
INSERT INTO `sys_oper_log` VALUES (491, '重置密码', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.resetPwd()', 1, 'etims', '系统维护', '/system/user/resetPwd/225', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-15 22:48:55');
INSERT INTO `sys_oper_log` VALUES (492, '重置密码', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.resetPwd()', 1, 'etims', '系统维护', '/system/user/resetPwd/225', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-15 22:49:02');
INSERT INTO `sys_oper_log` VALUES (493, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-05-15 22:52:42');
INSERT INTO `sys_oper_log` VALUES (494, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-05-15 22:52:49');
INSERT INTO `sys_oper_log` VALUES (495, '用户管理', 5, 'cn.duojunrui.etims.project.system.user.controller.UserController.export()', 1, 'etims', '系统维护', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', 0, NULL, '2019-05-15 22:52:54');
INSERT INTO `sys_oper_log` VALUES (496, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"购物商城微信小程序实验案例\"]}', 1, 'String index out of range: -1', '2019-05-16 23:36:06');
INSERT INTO `sys_oper_log` VALUES (497, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"购物商城微信小程序案例\"]}', 1, 'String index out of range: -1', '2019-05-16 23:38:55');
INSERT INTO `sys_oper_log` VALUES (498, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"购物商城微信小程序案例\"]}', 0, NULL, '2019-05-16 23:41:51');
INSERT INTO `sys_oper_log` VALUES (499, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', NULL, '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"85\"]}', 0, NULL, '2019-05-16 23:42:50');
INSERT INTO `sys_oper_log` VALUES (500, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"撒大声地\"]}', 1, '文件名、目录名或卷标语法不正确。', '2019-05-16 23:44:44');
INSERT INTO `sys_oper_log` VALUES (501, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"撒大声地\"]}', 1, 'String index out of range: -1', '2019-05-16 23:48:58');
INSERT INTO `sys_oper_log` VALUES (502, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"撒大声地.txt\"]}', 0, NULL, '2019-05-16 23:49:41');
INSERT INTO `sys_oper_log` VALUES (503, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"sadasd\"]}', 1, 'String index out of range: -1', '2019-05-16 23:54:16');
INSERT INTO `sys_oper_log` VALUES (504, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"sadasd.xlsx\"]}', 0, NULL, '2019-05-16 23:54:37');
INSERT INTO `sys_oper_log` VALUES (505, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"sdfsdfsd\"]}', 1, 'String index out of range: -1', '2019-05-17 00:00:23');
INSERT INTO `sys_oper_log` VALUES (506, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"87\"]}', 0, NULL, '2019-05-17 10:49:03');
INSERT INTO `sys_oper_log` VALUES (507, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"86\"]}', 0, NULL, '2019-05-17 10:49:23');
INSERT INTO `sys_oper_log` VALUES (508, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"十方三世\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.4880579036236758771.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\17\\9737fe4a85f538559af0327738655372.xlsx (系统找不到指定的路径。)', '2019-05-17 10:50:51');
INSERT INTO `sys_oper_log` VALUES (509, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"实打实大所多\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.8547924568988789013.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\17\\a987190771a42545ef6334c25c323b29.xlsx (系统找不到指定的路径。)', '2019-05-17 10:53:25');
INSERT INTO `sys_oper_log` VALUES (510, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"沙发发送\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.8876569176278052403.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\17\\a58a662dbd98c025fe563143a6e0b0c1.xlsx (系统找不到指定的路径。)', '2019-05-17 10:57:47');
INSERT INTO `sys_oper_log` VALUES (511, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"safasfasfsadf\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.4648418270636793141.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\17\\4665163cd4ceea2691a65983a9335818.pdf (系统找不到指定的路径。)', '2019-05-17 11:02:48');
INSERT INTO `sys_oper_log` VALUES (512, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"safasfasfsadf\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.4648418270636793141.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\17\\a01d6e6f2e388be85fd387b66777c0d2.pdf (系统找不到指定的路径。)', '2019-05-17 11:05:07');
INSERT INTO `sys_oper_log` VALUES (513, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"沙发爽肤水\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.49707335723908858.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\17\\fe10e958446748d1bbe06d574f1c6568.doc (系统找不到指定的路径。)', '2019-05-17 11:21:45');
INSERT INTO `sys_oper_log` VALUES (514, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"131\"],\"dictLabel\":[\"正考\"],\"dictValue\":[\"0\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-17 11:43:55');
INSERT INTO `sys_oper_log` VALUES (515, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"132\"],\"dictLabel\":[\"补考\"],\"dictValue\":[\"1\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-17 11:44:01');
INSERT INTO `sys_oper_log` VALUES (516, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"133\"],\"dictLabel\":[\"重修\"],\"dictValue\":[\"2\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-17 11:44:05');
INSERT INTO `sys_oper_log` VALUES (517, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"134\"],\"dictLabel\":[\"旷考\"],\"dictValue\":[\"3\"],\"dictType\":[\"mod_exam_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', 0, NULL, '2019-05-17 11:44:09');
INSERT INTO `sys_oper_log` VALUES (518, '菜单管理', 1, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.addSave()', 1, 'etims', NULL, '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"统计分析\"],\"url\":[\"/module/analyze\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-17 12:03:41');
INSERT INTO `sys_oper_log` VALUES (519, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2064\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"统计分析\"],\"url\":[\"/module/analyze\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-17 12:03:59');
INSERT INTO `sys_oper_log` VALUES (520, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"教务超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2004,2054,2055,2056,2057,2058,2005,2049,2050,2051,2052,2053,2007,2064,2006,2059,2060,2061,2062,2063,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-05-17 12:05:26');
INSERT INTO `sys_oper_log` VALUES (521, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', NULL, '/system/menu/remove/2064', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-17 12:09:02');
INSERT INTO `sys_oper_log` VALUES (522, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"教务超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2004,2054,2055,2056,2057,2058,2005,2049,2050,2051,2052,2053,2006,2059,2060,2061,2062,2063,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-05-17 12:09:15');
INSERT INTO `sys_oper_log` VALUES (523, '菜单管理', 3, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.remove()', 1, 'etims', NULL, '/system/menu/remove/2064', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-17 12:09:21');
INSERT INTO `sys_oper_log` VALUES (524, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-17 12:12:17');
INSERT INTO `sys_oper_log` VALUES (526, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2065\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"统计分析\"],\"url\":[\"/module/analyze\"],\"perms\":[\"module:analyze:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-17 12:48:25');
INSERT INTO `sys_oper_log` VALUES (527, '菜单管理', 2, 'cn.duojunrui.etims.project.system.menu.controller.MenuController.editSave()', 1, 'etims', '系统维护', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"]}', 0, NULL, '2019-05-17 12:48:38');
INSERT INTO `sys_oper_log` VALUES (528, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"教务超级管理员\"],\"roleKey\":[\"Administrator\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"拥有所有权限\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2001,2026,2027,2028,2029,2030,2031,2032,2002,2044,2045,2046,2047,2048,2003,2033,2034,2035,2036,2037,2004,2054,2055,2056,2057,2058,2005,2049,2050,2051,2052,2053,2007,2065,2066,2067,2068,2069,2006,2059,2060,2061,2062,2063,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,113,114,1056,1057,115\"]}', 0, NULL, '2019-05-17 12:48:46');
INSERT INTO `sys_oper_log` VALUES (529, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"学生1\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西XXX101有限公司\"],\"companyAddress\":[\"广西南宁西乡塘区XXX\"],\"position\":[\"人力资源\"],\"principalName\":[\"负责人01\"],\"principalTel\":[\"18178321101\"],\"applyStatus\":[\"1\"],\"applyReply\":[\"不通过 材料重新填写\"]}', 0, NULL, '2019-05-17 14:47:38');
INSERT INTO `sys_oper_log` VALUES (530, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"asdasdsad\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.1411711006898377167.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\18\\d7ef6afeeb6ef5360b61804fa4790653.xlsx (系统找不到指定的路径。)', '2019-05-18 00:04:47');
INSERT INTO `sys_oper_log` VALUES (531, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', '系统维护', '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"学生C\"],\"stuDepart\":[\"管理系\"],\"stuClass\":[\"15512003\"],\"stuNum\":[\"1551200315\"],\"shopName\":[\"我诺斯摄影\"],\"shopAddress\":[\"小黄楼2503\"],\"businessScope\":[\"照片拍摄、喷绘制作\"],\"rentStartTime\":[\"2019-05-01\"],\"rentEndTime\":[\"2020-01-01\"],\"adviser\":[\"廖老师\"]}', 0, NULL, '2019-05-19 19:29:58');
INSERT INTO `sys_oper_log` VALUES (532, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', '系统维护', '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"学生D\"],\"stuDepart\":[\"机电工程系\"],\"stuClass\":[\"16312001\"],\"stuNum\":[\"1631200130\"],\"shopName\":[\"二手书管家\"],\"shopAddress\":[\"创业园10202\"],\"businessScope\":[\"二手书交易、图书出租\"],\"rentStartTime\":[\"2018-03-01\"],\"rentEndTime\":[\"2019-12-31\"],\"adviser\":[\"王老师\"]}', 0, NULL, '2019-05-19 19:31:37');
INSERT INTO `sys_oper_log` VALUES (533, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', '系统维护', '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"学生E\"],\"stuDepart\":[\"外贸与外语系\"],\"stuClass\":[\"13212001\"],\"stuNum\":[\"1321200124\"],\"shopName\":[\"英语阅读活动角\"],\"shopAddress\":[\"创业园12201\"],\"businessScope\":[\"英语活动组织、教育服务\"],\"rentStartTime\":[\"2019-05-01\"],\"rentEndTime\":[\"2021-03-01\"],\"adviser\":[\"方老师\"]}', 0, NULL, '2019-05-19 19:33:52');
INSERT INTO `sys_oper_log` VALUES (534, '考核成绩', 3, 'cn.duojunrui.etims.project.module.grade.controller.GradeController.remove()', 1, 'etims', '系统维护', '/module/grade/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"62\"]}', 0, NULL, '2019-05-19 19:43:37');
INSERT INTO `sys_oper_log` VALUES (535, '考核成绩', 3, 'cn.duojunrui.etims.project.module.grade.controller.GradeController.remove()', 1, 'etims', '系统维护', '/module/grade/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"61\"]}', 0, NULL, '2019-05-19 19:43:44');
INSERT INTO `sys_oper_log` VALUES (536, '考核成绩', 3, 'cn.duojunrui.etims.project.module.grade.controller.GradeController.remove()', 1, 'etims', '系统维护', '/module/grade/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"60\"]}', 0, NULL, '2019-05-19 19:43:48');
INSERT INTO `sys_oper_log` VALUES (537, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"12312\"]}', 1, 'java.io.FileNotFoundException: C:\\Users\\13585\\AppData\\Local\\Temp\\tomcat.4681480209794262191.8080\\work\\Tomcat\\localhost\\ROOT\\2019\\05\\22\\16209c8f0e5c73874ef4016450b82dad.txt (系统找不到指定的路径。)', '2019-05-22 17:30:48');
INSERT INTO `sys_oper_log` VALUES (538, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"38\"]}', 0, NULL, '2019-05-22 17:31:20');
INSERT INTO `sys_oper_log` VALUES (539, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', 0, NULL, '2019-05-22 17:41:06');
INSERT INTO `sys_oper_log` VALUES (540, '定时任务', 2, 'cn.duojunrui.etims.project.monitor.job.controller.JobController.run()', 1, 'etims', '系统维护', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"2\"]}', 0, NULL, '2019-05-22 17:41:16');
INSERT INTO `sys_oper_log` VALUES (541, '字典数据', 2, 'cn.duojunrui.etims.project.system.dict.controller.DictDataController.editSave()', 1, 'etims', '系统维护', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"23\"],\"dictLabel\":[\"生成代码\"],\"dictValue\":[\"8\"],\"dictType\":[\"sys_oper_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"8\"],\"listClass\":[\"warning\"],\"isDefault\":[\"N\"],\"status\":[\"1\"],\"remark\":[\"生成操作\"]}', 0, NULL, '2019-05-22 17:42:40');
INSERT INTO `sys_oper_log` VALUES (542, '创业园店铺', 1, 'cn.duojunrui.etims.project.module.store.controller.StoreController.addSave()', 1, 'etims', '系统维护', '/module/store/add', '127.0.0.1', '内网IP', '{\"stuName\":[\"\"],\"stuDepart\":[\"信息工程系\"],\"stuClass\":[\"\"],\"stuNum\":[\"\"],\"shopName\":[\"\"],\"shopAddress\":[\"\"],\"businessScope\":[\"\"],\"rentStartTime\":[\"\"],\"rentEndTime\":[\"\"],\"adviser\":[\"\"]}', 0, NULL, '2019-05-22 17:43:22');
INSERT INTO `sys_oper_log` VALUES (543, '创业园店铺', 3, 'cn.duojunrui.etims.project.module.store.controller.StoreController.remove()', 1, 'etims', '系统维护', '/module/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-05-22 17:43:26');
INSERT INTO `sys_oper_log` VALUES (544, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"vvxc\"]}', 0, NULL, '2019-05-22 18:06:21');
INSERT INTO `sys_oper_log` VALUES (545, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', NULL, '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"88\"]}', 0, NULL, '2019-05-22 18:07:34');
INSERT INTO `sys_oper_log` VALUES (546, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', NULL, '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"软件工程项目实战\"]}', 0, NULL, '2019-05-22 18:14:17');
INSERT INTO `sys_oper_log` VALUES (547, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-05-22 19:19:18');
INSERT INTO `sys_oper_log` VALUES (548, '实验室设备', 3, 'cn.duojunrui.etims.project.module.equipment.controller.EquipmentController.remove()', 1, 'etims', '系统维护', '/module/equipment/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-05-22 19:20:26');
INSERT INTO `sys_oper_log` VALUES (549, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, 'etims', '系统维护', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"学生1\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西XXX101有限公司\"],\"companyAddress\":[\"广西南宁西乡塘区XXX\"],\"position\":[\"人力资源\"],\"principalName\":[\"负责人01\"],\"principalTel\":[\"18178321101\"],\"applyStatus\":[\"2\"],\"applyReply\":[\"不通过 材料重新填写\"]}', 0, NULL, '2019-05-22 19:22:12');
INSERT INTO `sys_oper_log` VALUES (550, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"dsadsad\"]}', 1, 'filename : [Java6.0API中文参考-.chw], extension : [chw], allowed extension : [[bmp, gif, jpg, jpeg, png, doc, docx, xls, xlsx, ppt, pptx, html, htm, txt, rar, zip, gz, bz2, pdf]]', '2019-05-26 16:37:12');
INSERT INTO `sys_oper_log` VALUES (551, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'etims', '系统维护', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"dsadsad\"]}', 0, NULL, '2019-05-26 16:37:32');
INSERT INTO `sys_oper_log` VALUES (552, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'etims', '系统维护', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"90\"]}', 0, NULL, '2019-05-26 16:37:45');
INSERT INTO `sys_oper_log` VALUES (553, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"225\"],\"status\":[\"1\"]}', 0, NULL, '2019-05-26 16:40:18');
INSERT INTO `sys_oper_log` VALUES (554, '用户管理', 2, 'cn.duojunrui.etims.project.system.user.controller.UserController.changeStatus()', 1, 'etims', '系统维护', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"225\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-26 16:40:22');
INSERT INTO `sys_oper_log` VALUES (555, '个人信息', 2, 'cn.duojunrui.etims.project.system.user.controller.ProfileController.update()', 1, '1551200124', '15512001班', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"学生-多俊睿\"],\"phonenumber\":[\"18178322520\"],\"email\":[\"duojunrui@163.com\"],\"sex\":[\"0\"]}', 0, NULL, '2019-05-27 12:17:11');
INSERT INTO `sys_oper_log` VALUES (556, '顶岗实习', 2, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.editSave()', 1, '16512008', '16512001班', '/module/practice/edit', '127.0.0.1', '内网IP', '{\"practiceId\":[\"1\"],\"studentName\":[\"学生1\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"15512001\"],\"studentNumber\":[\"1551200124\"],\"companyName\":[\"广西XXX101有限公司\"],\"companyAddress\":[\"广西南宁西乡塘区XXX\"],\"position\":[\"人力资源\"],\"principalName\":[\"负责人01\"],\"principalTel\":[\"18178321101\"],\"applyStatus\":[\"0\"],\"applyReply\":[\"不通过 材料重新填写\"]}', 0, NULL, '2019-05-27 12:18:04');
INSERT INTO `sys_oper_log` VALUES (557, '顶岗实习', 1, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.addSave()', 1, 'etims', '系统维护', '/module/practice/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"\"],\"studentDepartment\":[\"信息工程系\"],\"studentClass\":[\"\"],\"studentNumber\":[\"\"],\"companyName\":[\"\"],\"companyAddress\":[\"\"],\"position\":[\"\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"principalName\":[\"\"],\"principalTel\":[\"\"]}', 0, NULL, '2019-05-27 12:52:13');
INSERT INTO `sys_oper_log` VALUES (558, '顶岗实习', 3, 'cn.duojunrui.etims.project.module.practice.controller.PracticeController.remove()', 1, 'etims', '系统维护', '/module/practice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"40\"]}', 0, NULL, '2019-05-27 12:52:20');
INSERT INTO `sys_oper_log` VALUES (559, '考核成绩', 1, 'cn.duojunrui.etims.project.module.grade.controller.GradeController.addSave()', 1, 'etims', '系统维护', '/module/grade/add', '127.0.0.1', '内网IP', '{\"stuId\":[\"\"],\"stuName\":[\"\"],\"semester\":[\"\"],\"courseId\":[\"\"],\"courseName\":[\"\"],\"courseCredit\":[\"\"],\"usualScore\":[\"\"],\"examScore\":[\"\"],\"totalScore\":[\"\"],\"checkType\":[\"\"],\"createTime\":[\"\"],\"updateTime\":[\"\"],\"delFlag\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve cn.duojunrui.etims.project.module.grade.mapper.GradeMapper.insertGrade-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mod_grade\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-05-27 13:17:25');
INSERT INTO `sys_oper_log` VALUES (560, '考核成绩', 2, 'cn.duojunrui.etims.project.module.grade.controller.GradeController.editSave()', 1, 'etims', '系统维护', '/module/grade/edit', '127.0.0.1', '内网IP', '{\"gradeId\":[\"1\"],\"stuId\":[\"1551200124\"],\"stuName\":[\"学生A\"],\"semester\":[\"2016-2017学年第二学期\"],\"courseId\":[\"KC23011_01\"],\"courseName\":[\"计算机组成原理\"],\"usualScore\":[\"\"],\"examScore\":[\"\"],\"totalScore\":[\"\"]}', 0, NULL, '2019-05-27 13:25:24');
INSERT INTO `sys_oper_log` VALUES (561, '考核成绩', 2, 'cn.duojunrui.etims.project.module.grade.controller.GradeController.editSave()', 1, 'etims', '系统维护', '/module/grade/edit', '127.0.0.1', '内网IP', '{\"gradeId\":[\"20\"],\"stuId\":[\"1551200125\"],\"stuName\":[\"学生B\"],\"semester\":[\"2018-2019学年第二学期\"],\"courseId\":[\"KC23011_10\"],\"courseName\":[\"课程ABC\"],\"usualScore\":[\"85\"],\"examScore\":[\"\"],\"totalScore\":[\"\"]}', 0, NULL, '2019-05-27 13:25:50');
INSERT INTO `sys_oper_log` VALUES (562, '教学资源', 1, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.addSave()', 1, 'T15512001', '15512001班', '/module/material/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"dasd\"]}', 0, NULL, '2019-05-27 15:06:50');
INSERT INTO `sys_oper_log` VALUES (563, '教学资源', 3, 'cn.duojunrui.etims.project.module.material.controller.MaterialController.remove()', 1, 'T15512001', '15512001班', '/module/material/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"91\"]}', 0, NULL, '2019-05-27 15:06:55');
INSERT INTO `sys_oper_log` VALUES (564, '在线用户', 7, 'cn.duojunrui.etims.project.monitor.online.controller.UserOnlineController.forceLogout()', 1, 'etims', '系统维护', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"45d9a021-e92e-4f1c-a1cb-cafc38ae6b9e\"]}', 0, NULL, '2019-05-27 15:08:55');
INSERT INTO `sys_oper_log` VALUES (565, '角色管理', 2, 'cn.duojunrui.etims.project.system.role.controller.RoleController.editSave()', 1, 'etims', '系统维护', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"104\"],\"roleName\":[\"老师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"老师\"],\"menuIds\":[\"2000,2008,2017,2019,2020,2021,2002,2044,2045,2003,2033,2034,2036,2004,2054,2055,2057,2005,2049,2050,2051,2052,2007,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,102,1012,1013,1014,1015,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038\"]}', 0, NULL, '2019-05-27 16:45:20');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, '1', '运维工程师', 1, '0', 'etims', '2019-04-28 19:24:38', '', NULL, '系统运维人员');
INSERT INTO `sys_post` VALUES (2, '2', '老师', 2, '0', 'etims', '2019-04-28 19:27:50', '', NULL, '教职工');
INSERT INTO `sys_post` VALUES (3, '3', '学生', 3, '0', 'etims', '2019-04-28 19:28:03', '', NULL, '学生');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '教务超级管理员', 'Administrator', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'etims', '2019-05-17 12:48:46', '拥有所有权限');
INSERT INTO `sys_role` VALUES (102, '教务普通管理员', 'admin', 2, '1', '0', '0', 'etims', '2019-04-28 19:17:11', 'etims', '2019-05-15 17:21:05', '拥有教学、实习、考核、用户查询及系统监控等功能');
INSERT INTO `sys_role` VALUES (103, '网站内容管理', 'website', 3, '1', '1', '0', 'etims', '2019-04-28 19:21:47', 'etims', '2019-05-15 21:42:32', '实验中心网站内容的发布与管理');
INSERT INTO `sys_role` VALUES (104, '老师', 'teacher', 5, '1', '0', '0', 'etims', '2019-04-28 19:22:43', 'etims', '2019-05-27 16:45:20', '老师');
INSERT INTO `sys_role` VALUES (105, '学生', 'student', 6, '1', '0', '0', 'etims', '2019-04-28 19:23:05', 'etims', '2019-05-15 14:16:52', '学生');
INSERT INTO `sys_role` VALUES (106, '设备管理员', 'equipment', 4, '1', '0', '0', 'etims', '2019-05-14 13:32:03', '', NULL, '设备管理员 只有设备出入库');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 100);
INSERT INTO `sys_role_menu` VALUES (1, 101);
INSERT INTO `sys_role_menu` VALUES (1, 102);
INSERT INTO `sys_role_menu` VALUES (1, 103);
INSERT INTO `sys_role_menu` VALUES (1, 104);
INSERT INTO `sys_role_menu` VALUES (1, 105);
INSERT INTO `sys_role_menu` VALUES (1, 106);
INSERT INTO `sys_role_menu` VALUES (1, 107);
INSERT INTO `sys_role_menu` VALUES (1, 108);
INSERT INTO `sys_role_menu` VALUES (1, 109);
INSERT INTO `sys_role_menu` VALUES (1, 110);
INSERT INTO `sys_role_menu` VALUES (1, 111);
INSERT INTO `sys_role_menu` VALUES (1, 112);
INSERT INTO `sys_role_menu` VALUES (1, 113);
INSERT INTO `sys_role_menu` VALUES (1, 114);
INSERT INTO `sys_role_menu` VALUES (1, 115);
INSERT INTO `sys_role_menu` VALUES (1, 500);
INSERT INTO `sys_role_menu` VALUES (1, 501);
INSERT INTO `sys_role_menu` VALUES (1, 1000);
INSERT INTO `sys_role_menu` VALUES (1, 1001);
INSERT INTO `sys_role_menu` VALUES (1, 1002);
INSERT INTO `sys_role_menu` VALUES (1, 1003);
INSERT INTO `sys_role_menu` VALUES (1, 1004);
INSERT INTO `sys_role_menu` VALUES (1, 1005);
INSERT INTO `sys_role_menu` VALUES (1, 1006);
INSERT INTO `sys_role_menu` VALUES (1, 1007);
INSERT INTO `sys_role_menu` VALUES (1, 1008);
INSERT INTO `sys_role_menu` VALUES (1, 1009);
INSERT INTO `sys_role_menu` VALUES (1, 1010);
INSERT INTO `sys_role_menu` VALUES (1, 1011);
INSERT INTO `sys_role_menu` VALUES (1, 1012);
INSERT INTO `sys_role_menu` VALUES (1, 1013);
INSERT INTO `sys_role_menu` VALUES (1, 1014);
INSERT INTO `sys_role_menu` VALUES (1, 1015);
INSERT INTO `sys_role_menu` VALUES (1, 1016);
INSERT INTO `sys_role_menu` VALUES (1, 1017);
INSERT INTO `sys_role_menu` VALUES (1, 1018);
INSERT INTO `sys_role_menu` VALUES (1, 1019);
INSERT INTO `sys_role_menu` VALUES (1, 1020);
INSERT INTO `sys_role_menu` VALUES (1, 1021);
INSERT INTO `sys_role_menu` VALUES (1, 1022);
INSERT INTO `sys_role_menu` VALUES (1, 1023);
INSERT INTO `sys_role_menu` VALUES (1, 1024);
INSERT INTO `sys_role_menu` VALUES (1, 1025);
INSERT INTO `sys_role_menu` VALUES (1, 1026);
INSERT INTO `sys_role_menu` VALUES (1, 1027);
INSERT INTO `sys_role_menu` VALUES (1, 1028);
INSERT INTO `sys_role_menu` VALUES (1, 1029);
INSERT INTO `sys_role_menu` VALUES (1, 1030);
INSERT INTO `sys_role_menu` VALUES (1, 1031);
INSERT INTO `sys_role_menu` VALUES (1, 1032);
INSERT INTO `sys_role_menu` VALUES (1, 1033);
INSERT INTO `sys_role_menu` VALUES (1, 1034);
INSERT INTO `sys_role_menu` VALUES (1, 1035);
INSERT INTO `sys_role_menu` VALUES (1, 1036);
INSERT INTO `sys_role_menu` VALUES (1, 1037);
INSERT INTO `sys_role_menu` VALUES (1, 1038);
INSERT INTO `sys_role_menu` VALUES (1, 1039);
INSERT INTO `sys_role_menu` VALUES (1, 1040);
INSERT INTO `sys_role_menu` VALUES (1, 1041);
INSERT INTO `sys_role_menu` VALUES (1, 1042);
INSERT INTO `sys_role_menu` VALUES (1, 1043);
INSERT INTO `sys_role_menu` VALUES (1, 1044);
INSERT INTO `sys_role_menu` VALUES (1, 1045);
INSERT INTO `sys_role_menu` VALUES (1, 1046);
INSERT INTO `sys_role_menu` VALUES (1, 1047);
INSERT INTO `sys_role_menu` VALUES (1, 1048);
INSERT INTO `sys_role_menu` VALUES (1, 1049);
INSERT INTO `sys_role_menu` VALUES (1, 1050);
INSERT INTO `sys_role_menu` VALUES (1, 1051);
INSERT INTO `sys_role_menu` VALUES (1, 1052);
INSERT INTO `sys_role_menu` VALUES (1, 1053);
INSERT INTO `sys_role_menu` VALUES (1, 1054);
INSERT INTO `sys_role_menu` VALUES (1, 1055);
INSERT INTO `sys_role_menu` VALUES (1, 1056);
INSERT INTO `sys_role_menu` VALUES (1, 1057);
INSERT INTO `sys_role_menu` VALUES (1, 2000);
INSERT INTO `sys_role_menu` VALUES (1, 2001);
INSERT INTO `sys_role_menu` VALUES (1, 2002);
INSERT INTO `sys_role_menu` VALUES (1, 2003);
INSERT INTO `sys_role_menu` VALUES (1, 2004);
INSERT INTO `sys_role_menu` VALUES (1, 2005);
INSERT INTO `sys_role_menu` VALUES (1, 2006);
INSERT INTO `sys_role_menu` VALUES (1, 2007);
INSERT INTO `sys_role_menu` VALUES (1, 2008);
INSERT INTO `sys_role_menu` VALUES (1, 2017);
INSERT INTO `sys_role_menu` VALUES (1, 2019);
INSERT INTO `sys_role_menu` VALUES (1, 2020);
INSERT INTO `sys_role_menu` VALUES (1, 2021);
INSERT INTO `sys_role_menu` VALUES (1, 2026);
INSERT INTO `sys_role_menu` VALUES (1, 2027);
INSERT INTO `sys_role_menu` VALUES (1, 2028);
INSERT INTO `sys_role_menu` VALUES (1, 2029);
INSERT INTO `sys_role_menu` VALUES (1, 2030);
INSERT INTO `sys_role_menu` VALUES (1, 2031);
INSERT INTO `sys_role_menu` VALUES (1, 2032);
INSERT INTO `sys_role_menu` VALUES (1, 2033);
INSERT INTO `sys_role_menu` VALUES (1, 2034);
INSERT INTO `sys_role_menu` VALUES (1, 2035);
INSERT INTO `sys_role_menu` VALUES (1, 2036);
INSERT INTO `sys_role_menu` VALUES (1, 2037);
INSERT INTO `sys_role_menu` VALUES (1, 2044);
INSERT INTO `sys_role_menu` VALUES (1, 2045);
INSERT INTO `sys_role_menu` VALUES (1, 2046);
INSERT INTO `sys_role_menu` VALUES (1, 2047);
INSERT INTO `sys_role_menu` VALUES (1, 2048);
INSERT INTO `sys_role_menu` VALUES (1, 2049);
INSERT INTO `sys_role_menu` VALUES (1, 2050);
INSERT INTO `sys_role_menu` VALUES (1, 2051);
INSERT INTO `sys_role_menu` VALUES (1, 2052);
INSERT INTO `sys_role_menu` VALUES (1, 2053);
INSERT INTO `sys_role_menu` VALUES (1, 2054);
INSERT INTO `sys_role_menu` VALUES (1, 2055);
INSERT INTO `sys_role_menu` VALUES (1, 2056);
INSERT INTO `sys_role_menu` VALUES (1, 2057);
INSERT INTO `sys_role_menu` VALUES (1, 2058);
INSERT INTO `sys_role_menu` VALUES (1, 2059);
INSERT INTO `sys_role_menu` VALUES (1, 2060);
INSERT INTO `sys_role_menu` VALUES (1, 2061);
INSERT INTO `sys_role_menu` VALUES (1, 2062);
INSERT INTO `sys_role_menu` VALUES (1, 2063);
INSERT INTO `sys_role_menu` VALUES (1, 2065);
INSERT INTO `sys_role_menu` VALUES (1, 2066);
INSERT INTO `sys_role_menu` VALUES (1, 2067);
INSERT INTO `sys_role_menu` VALUES (1, 2068);
INSERT INTO `sys_role_menu` VALUES (1, 2069);
INSERT INTO `sys_role_menu` VALUES (102, 1);
INSERT INTO `sys_role_menu` VALUES (102, 2);
INSERT INTO `sys_role_menu` VALUES (102, 100);
INSERT INTO `sys_role_menu` VALUES (102, 107);
INSERT INTO `sys_role_menu` VALUES (102, 108);
INSERT INTO `sys_role_menu` VALUES (102, 109);
INSERT INTO `sys_role_menu` VALUES (102, 110);
INSERT INTO `sys_role_menu` VALUES (102, 111);
INSERT INTO `sys_role_menu` VALUES (102, 112);
INSERT INTO `sys_role_menu` VALUES (102, 500);
INSERT INTO `sys_role_menu` VALUES (102, 501);
INSERT INTO `sys_role_menu` VALUES (102, 1000);
INSERT INTO `sys_role_menu` VALUES (102, 1001);
INSERT INTO `sys_role_menu` VALUES (102, 1002);
INSERT INTO `sys_role_menu` VALUES (102, 1003);
INSERT INTO `sys_role_menu` VALUES (102, 1004);
INSERT INTO `sys_role_menu` VALUES (102, 1005);
INSERT INTO `sys_role_menu` VALUES (102, 1006);
INSERT INTO `sys_role_menu` VALUES (102, 1035);
INSERT INTO `sys_role_menu` VALUES (102, 1036);
INSERT INTO `sys_role_menu` VALUES (102, 1037);
INSERT INTO `sys_role_menu` VALUES (102, 1038);
INSERT INTO `sys_role_menu` VALUES (102, 1039);
INSERT INTO `sys_role_menu` VALUES (102, 1040);
INSERT INTO `sys_role_menu` VALUES (102, 1041);
INSERT INTO `sys_role_menu` VALUES (102, 1042);
INSERT INTO `sys_role_menu` VALUES (102, 1043);
INSERT INTO `sys_role_menu` VALUES (102, 1044);
INSERT INTO `sys_role_menu` VALUES (102, 1045);
INSERT INTO `sys_role_menu` VALUES (102, 1046);
INSERT INTO `sys_role_menu` VALUES (102, 1047);
INSERT INTO `sys_role_menu` VALUES (102, 1048);
INSERT INTO `sys_role_menu` VALUES (102, 1049);
INSERT INTO `sys_role_menu` VALUES (102, 1050);
INSERT INTO `sys_role_menu` VALUES (102, 1051);
INSERT INTO `sys_role_menu` VALUES (102, 1052);
INSERT INTO `sys_role_menu` VALUES (102, 1053);
INSERT INTO `sys_role_menu` VALUES (102, 1054);
INSERT INTO `sys_role_menu` VALUES (102, 1055);
INSERT INTO `sys_role_menu` VALUES (102, 2002);
INSERT INTO `sys_role_menu` VALUES (102, 2003);
INSERT INTO `sys_role_menu` VALUES (102, 2005);
INSERT INTO `sys_role_menu` VALUES (102, 2007);
INSERT INTO `sys_role_menu` VALUES (102, 2033);
INSERT INTO `sys_role_menu` VALUES (102, 2034);
INSERT INTO `sys_role_menu` VALUES (102, 2035);
INSERT INTO `sys_role_menu` VALUES (102, 2036);
INSERT INTO `sys_role_menu` VALUES (102, 2037);
INSERT INTO `sys_role_menu` VALUES (102, 2044);
INSERT INTO `sys_role_menu` VALUES (102, 2045);
INSERT INTO `sys_role_menu` VALUES (102, 2046);
INSERT INTO `sys_role_menu` VALUES (102, 2047);
INSERT INTO `sys_role_menu` VALUES (102, 2048);
INSERT INTO `sys_role_menu` VALUES (102, 2049);
INSERT INTO `sys_role_menu` VALUES (102, 2050);
INSERT INTO `sys_role_menu` VALUES (102, 2051);
INSERT INTO `sys_role_menu` VALUES (102, 2052);
INSERT INTO `sys_role_menu` VALUES (102, 2053);
INSERT INTO `sys_role_menu` VALUES (103, 2006);
INSERT INTO `sys_role_menu` VALUES (103, 2059);
INSERT INTO `sys_role_menu` VALUES (103, 2060);
INSERT INTO `sys_role_menu` VALUES (103, 2061);
INSERT INTO `sys_role_menu` VALUES (103, 2062);
INSERT INTO `sys_role_menu` VALUES (103, 2063);
INSERT INTO `sys_role_menu` VALUES (104, 1);
INSERT INTO `sys_role_menu` VALUES (104, 100);
INSERT INTO `sys_role_menu` VALUES (104, 101);
INSERT INTO `sys_role_menu` VALUES (104, 102);
INSERT INTO `sys_role_menu` VALUES (104, 103);
INSERT INTO `sys_role_menu` VALUES (104, 104);
INSERT INTO `sys_role_menu` VALUES (104, 105);
INSERT INTO `sys_role_menu` VALUES (104, 106);
INSERT INTO `sys_role_menu` VALUES (104, 107);
INSERT INTO `sys_role_menu` VALUES (104, 1000);
INSERT INTO `sys_role_menu` VALUES (104, 1001);
INSERT INTO `sys_role_menu` VALUES (104, 1002);
INSERT INTO `sys_role_menu` VALUES (104, 1003);
INSERT INTO `sys_role_menu` VALUES (104, 1004);
INSERT INTO `sys_role_menu` VALUES (104, 1005);
INSERT INTO `sys_role_menu` VALUES (104, 1006);
INSERT INTO `sys_role_menu` VALUES (104, 1007);
INSERT INTO `sys_role_menu` VALUES (104, 1008);
INSERT INTO `sys_role_menu` VALUES (104, 1009);
INSERT INTO `sys_role_menu` VALUES (104, 1010);
INSERT INTO `sys_role_menu` VALUES (104, 1011);
INSERT INTO `sys_role_menu` VALUES (104, 1012);
INSERT INTO `sys_role_menu` VALUES (104, 1013);
INSERT INTO `sys_role_menu` VALUES (104, 1014);
INSERT INTO `sys_role_menu` VALUES (104, 1015);
INSERT INTO `sys_role_menu` VALUES (104, 1016);
INSERT INTO `sys_role_menu` VALUES (104, 1017);
INSERT INTO `sys_role_menu` VALUES (104, 1018);
INSERT INTO `sys_role_menu` VALUES (104, 1019);
INSERT INTO `sys_role_menu` VALUES (104, 1020);
INSERT INTO `sys_role_menu` VALUES (104, 1021);
INSERT INTO `sys_role_menu` VALUES (104, 1022);
INSERT INTO `sys_role_menu` VALUES (104, 1023);
INSERT INTO `sys_role_menu` VALUES (104, 1024);
INSERT INTO `sys_role_menu` VALUES (104, 1025);
INSERT INTO `sys_role_menu` VALUES (104, 1026);
INSERT INTO `sys_role_menu` VALUES (104, 1027);
INSERT INTO `sys_role_menu` VALUES (104, 1028);
INSERT INTO `sys_role_menu` VALUES (104, 1029);
INSERT INTO `sys_role_menu` VALUES (104, 1030);
INSERT INTO `sys_role_menu` VALUES (104, 1031);
INSERT INTO `sys_role_menu` VALUES (104, 1032);
INSERT INTO `sys_role_menu` VALUES (104, 1033);
INSERT INTO `sys_role_menu` VALUES (104, 1034);
INSERT INTO `sys_role_menu` VALUES (104, 1035);
INSERT INTO `sys_role_menu` VALUES (104, 1036);
INSERT INTO `sys_role_menu` VALUES (104, 1037);
INSERT INTO `sys_role_menu` VALUES (104, 1038);
INSERT INTO `sys_role_menu` VALUES (104, 2000);
INSERT INTO `sys_role_menu` VALUES (104, 2002);
INSERT INTO `sys_role_menu` VALUES (104, 2003);
INSERT INTO `sys_role_menu` VALUES (104, 2004);
INSERT INTO `sys_role_menu` VALUES (104, 2005);
INSERT INTO `sys_role_menu` VALUES (104, 2007);
INSERT INTO `sys_role_menu` VALUES (104, 2008);
INSERT INTO `sys_role_menu` VALUES (104, 2017);
INSERT INTO `sys_role_menu` VALUES (104, 2019);
INSERT INTO `sys_role_menu` VALUES (104, 2020);
INSERT INTO `sys_role_menu` VALUES (104, 2021);
INSERT INTO `sys_role_menu` VALUES (104, 2033);
INSERT INTO `sys_role_menu` VALUES (104, 2034);
INSERT INTO `sys_role_menu` VALUES (104, 2036);
INSERT INTO `sys_role_menu` VALUES (104, 2044);
INSERT INTO `sys_role_menu` VALUES (104, 2045);
INSERT INTO `sys_role_menu` VALUES (104, 2049);
INSERT INTO `sys_role_menu` VALUES (104, 2050);
INSERT INTO `sys_role_menu` VALUES (104, 2051);
INSERT INTO `sys_role_menu` VALUES (104, 2052);
INSERT INTO `sys_role_menu` VALUES (104, 2054);
INSERT INTO `sys_role_menu` VALUES (104, 2055);
INSERT INTO `sys_role_menu` VALUES (104, 2057);
INSERT INTO `sys_role_menu` VALUES (105, 2000);
INSERT INTO `sys_role_menu` VALUES (105, 2002);
INSERT INTO `sys_role_menu` VALUES (105, 2003);
INSERT INTO `sys_role_menu` VALUES (105, 2004);
INSERT INTO `sys_role_menu` VALUES (105, 2005);
INSERT INTO `sys_role_menu` VALUES (105, 2008);
INSERT INTO `sys_role_menu` VALUES (105, 2017);
INSERT INTO `sys_role_menu` VALUES (105, 2033);
INSERT INTO `sys_role_menu` VALUES (105, 2034);
INSERT INTO `sys_role_menu` VALUES (105, 2035);
INSERT INTO `sys_role_menu` VALUES (105, 2044);
INSERT INTO `sys_role_menu` VALUES (105, 2045);
INSERT INTO `sys_role_menu` VALUES (105, 2049);
INSERT INTO `sys_role_menu` VALUES (105, 2050);
INSERT INTO `sys_role_menu` VALUES (105, 2054);
INSERT INTO `sys_role_menu` VALUES (105, 2055);
INSERT INTO `sys_role_menu` VALUES (105, 2056);
INSERT INTO `sys_role_menu` VALUES (106, 2001);
INSERT INTO `sys_role_menu` VALUES (106, 2026);
INSERT INTO `sys_role_menu` VALUES (106, 2027);
INSERT INTO `sys_role_menu` VALUES (106, 2028);
INSERT INTO `sys_role_menu` VALUES (106, 2029);
INSERT INTO `sys_role_menu` VALUES (106, 2030);
INSERT INTO `sys_role_menu` VALUES (106, 2031);
INSERT INTO `sys_role_menu` VALUES (106, 2032);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号或者工号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 210, 'etims', '教务超级管理员', '00', 'etims@etims.com', '18178322521', '0', '2019/05/15/8ce207e6dd674286d50bdcfcc4dfde4e.jpg', '562198425a039da1ecfb8a1058c1221c', '974804', '0', '0', '127.0.0.1', '2019-06-12 11:31:46', 'etims', '2019-04-28 18:13:36', '', '2019-06-12 11:31:46', '超级管理员');
INSERT INTO `sys_user` VALUES (101, 207, '1551200124', '学生-多俊睿', '00', 'duojunrui@163.com', '18178322520', '0', '2019/04/28/b1a0eb78b0cfd43b39cf77357b0d8fff.jpg', 'f498c22045bbc6e6569054a2b297110a', '33da93', '0', '0', '127.0.0.1', '2019-06-12 11:30:56', 'etims', '2019-04-28 19:30:09', '1551200124', '2019-06-12 11:30:55', '1551200124 多俊睿 学生');
INSERT INTO `sys_user` VALUES (102, 103, '1551200125', '测试员', '00', '1358528202@qq.com', '13893537800', '0', '', '24ab012aa15ad60240f34de48e24c0d0', 'b55ed1', '0', '0', '127.0.0.1', '2019-04-29 19:51:58', 'etims', '2019-04-29 19:51:46', '', '2019-04-29 19:51:57', '');
INSERT INTO `sys_user` VALUES (103, 207, '1551200121', '张真人', '00', '123abc001@qq.com', '18178321500', '1', '', 'ca9827eac6ade2df53501f4cf873f950', '6d71c7', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:23', '', NULL, '');
INSERT INTO `sys_user` VALUES (104, 207, '1551200122', '哎哟喂', '00', '123abc002@qq.com', '18178321501', '0', '', '9b9f49a5c9104daaa45c70021fa169fb', '458bff', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:23', '', NULL, '');
INSERT INTO `sys_user` VALUES (105, 207, '1551200123', '张', '00', '123abc003@qq.com', '18178321502', '1', '', '318fa9fcc9efa6af3aa4a0dd307df46a', '5eae46', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:23', '', NULL, '');
INSERT INTO `sys_user` VALUES (106, 207, '1551200156', '八一', '00', '123abc004@qq.com', '18178321503', '0', '', '4d090ec5878b40d394ef5e042bc6080e', '171960', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:23', '', NULL, '');
INSERT INTO `sys_user` VALUES (107, 207, '1551200157', '八一', '00', '123abc005@qq.com', '18178321504', '1', '', '34e1a510927eb20a5cd0c4319a7bf633', 'a7ac61', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:23', '', NULL, '');
INSERT INTO `sys_user` VALUES (108, 207, '1551200126', '你好', '00', '123abc006@qq.com', '18178321505', '1', '', '8b8417606f2b2fe313561b89e9f020d3', '57b81f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (109, 207, '1551200127', '黄花园', '00', '123abc007@qq.com', '18178321506', '1', '', '50e833e2ca3b8883cfcc129ab573a1ab', '0d1799', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (110, 207, '1551200128', '周柏豪', '00', '123abc008@qq.com', '18178321507', '0', '', 'e8c1eb1be30bef30380ef97c2209f64b', '699410', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (111, 207, '1551200129', '哎哟喂', '00', '123abc009@qq.com', '18178321508', '1', '', '4b834abad2ffc1090e94f5fe256e0809', 'fe3919', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (112, 207, '1551200130', '八一', '00', '123abc010@qq.com', '18178321509', '1', '', '26dc4a1ca2b42527df31f859164a7898', '7e076c', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (113, 207, '1551200131', '黄子韬', '00', '123abc011@qq.com', '18178321510', '1', '', '7e46f83bfae39985d9a19885675e37e2', 'c6699f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (114, 207, '1551200132', '哈哈哇', '00', '123abc012@qq.com', '18178321511', '1', '', 'b17f322027148353e3b00d208d9ae0c8', '710af0', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (115, 207, '1551200133', '八一', '00', '123abc013@qq.com', '18178321512', '1', '', '29b3724d5bef525057ce9cd95e255082', '2f687d', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (116, 207, '1551200134', '多俊睿（测试3）', '00', '123abc014@qq.com', '18178321513', '1', '', 'd1995c62e4393bc7f5e7e785e6bb7707', '6deb9b', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (117, 207, '1551200135', '小软', '00', '123abc015@qq.com', '18178321514', '1', '', '5c3283f61434f3a70cbd5c00fdad84ce', '403532', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (118, 207, '1551200136', '李建梅', '00', '123abc016@qq.com', '18178321515', '1', '', '213bec79dc7a600e842a67018e95422a', 'e2ecd6', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (119, 207, '1551200137', '张h', '00', '123abc017@qq.com', '18178321516', '1', '', 'd6499af2fba7261ef4595d7d58d8bec7', '9367cd', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (120, 207, '1551200138', '哎哟喂', '00', '123abc018@qq.com', '18178321517', '1', '', 'a6afc0f0be6aa958c9980622d587f2b2', 'dd28d7', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (121, 207, '1551200139', '哎哟喂', '00', '123abc019@qq.com', '18178321518', '1', '', '0c6f305a3475ceb18ac08c067a9fecb0', '9b5244', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (122, 207, '1551200140', '路', '00', '123abc020@qq.com', '18178321519', '1', '', 'f39b0242d4db5d7a05b01223da28f31a', '4dfb55', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (123, 207, '1551200141', '啦啦', '00', '123abc021@qq.com', '18178321520', '1', '', '7bc8f0a89f0438358122b94ae625759b', '013de3', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (124, 207, '1551200142', '张天信', '00', '123abc022@qq.com', '18178321521', '1', '', 'cafeab1131dde095d4a25953c303039e', 'e30274', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (125, 207, '1551200143', '张天信22', '00', '123abc023@qq.com', '18178321522', '1', '', '2ae444c110a61c361a920a5f08f59b9e', 'c9c592', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (126, 207, '1551200144', '八一', '00', '123abc024@qq.com', '18178321523', '1', '', 'f05ee6510f6c94664331f706d88a3a24', 'e03099', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (127, 207, '1551200145', 'lalala', '00', '123abc025@qq.com', '18178321524', '1', '', '31fc7685a2739901b6527d3d4ed2afb8', 'e340f4', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (128, 207, '1551200146', '李建梅', '00', '123abc026@qq.com', '18178321525', '1', '', 'efafe485f952cadea9292f164d322265', 'eea736', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (129, 207, '1551200147', '张天信八三', '00', '123abc027@qq.com', '18178321526', '1', '', '2d851857daa6d0541faf227e8895aa7f', '174cde', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (130, 207, '1551200148', '哈哈哇', '00', '123abc028@qq.com', '18178321527', '1', '', 'c342a1e4a3850c7894e67769be022476', 'c3aca4', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (131, 207, '1551200149', '哎呀呀', '00', '123abc029@qq.com', '18178321528', '1', '', 'fc62729f78e5dc3df46fc70f45cee450', 'c3093f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (132, 207, '1551200150', '哈哈哇', '00', '123abc030@qq.com', '18178321529', '1', '', 'c978b5984a5087a34de9a9f40002d0e5', '92b426', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (133, 207, '1551200151', '七四', '00', '123abc031@qq.com', '18178321530', '1', '', '0c331768571c187d55368e9d73811bca', '172654', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (134, 207, '1551200152', '八一', '00', '123abc032@qq.com', '18178321531', '1', '', '470e1f528a871c65d0da2c45251b64ad', '6a61cf', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (135, 207, '1551200153', '八一', '00', '123abc033@qq.com', '18178321532', '1', '', 'd9f7a2b816bca9a5600774a6bc66f2a6', '97ea40', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (136, 207, '1551200154', '陈珈毅', '00', '123abc034@qq.com', '18178321533', '1', '', '96e096e348c1b2f406b768726ebddf87', 'fd720d', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (137, 207, '1551200155', '八一', '00', '123abc035@qq.com', '18178321534', '1', '', '9c757e83214d109eddb6f0f87f7c9fc2', '0cb918', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (138, 208, '1551200201', '哎呀呀', '00', '123abc036@qq.com', '18178321535', '1', '', '85e8e1a04567a9ac70db7a94018bedf8', 'dd3075', '0', '0', '127.0.0.1', '2019-05-13 14:23:53', 'etims', '2019-05-13 14:18:24', '', '2019-05-13 14:23:52', '');
INSERT INTO `sys_user` VALUES (139, 208, '1551200202', '哎呀呀', '00', '123abc037@qq.com', '18178321536', '1', '', '16443ee1e582e2569f8faf20b8de122a', '3e9599', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (140, 208, '1551200203', '八一', '00', '123abc038@qq.com', '18178321537', '1', '', '583739d7cce6f09230fbf28aafae7bde', '704ebc', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (141, 208, '1551200204', '新的心情', '00', '123abc039@qq.com', '18178321538', '1', '', '6dad17889ca3f398c8369e0cc966cbb2', '23bd9d', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (142, 208, '1551200205', '周柏豪', '00', '123abc040@qq.com', '18178321539', '1', '', '72139904b5d7400305cbd5d8a91efa20', '35799a', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (143, 208, '1551200206', '哎哟喂', '00', '123abc041@qq.com', '18178321540', '1', '', 'f8609bad41479eb106a80408b22c04fc', '1f410c', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (144, 208, '1551200207', '啦啦', '00', '123abc042@qq.com', '18178321541', '1', '', '9612f9d276af463ba5ce1a4f2952195a', '6403c6', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (145, 208, '1551200208', '周柏豪', '00', '123abc043@qq.com', '18178321542', '1', '', 'd1f4d3fb2b51582a9c4b8a1ef62f385b', 'e8ebcf', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (146, 208, '1551200209', '八一', '00', '123abc044@qq.com', '18178321543', '1', '', 'c68b4c5ac73aaba270dc1f8645ded23b', '1e07e6', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (147, 208, '1551200210', '好哦哦了了了', '00', '123abc045@qq.com', '18178321544', '1', '', '01b829361e6b96d2bbc5165a491faf12', '65e2f4', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (148, 208, '1551200211', '黄子韬', '00', '123abc046@qq.com', '18178321545', '1', '', 'f20a42fa285e2c5a7c14bdd7ee2f4540', '779c30', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (149, 208, '1551200212', '哎哟喂', '00', '123abc047@qq.com', '18178321546', '1', '', 'bcb605611b9124eff6fbe99c9864ecfc', 'e3ca0a', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (150, 208, '1551200213', '张天信八三', '00', '123abc048@qq.com', '18178321547', '1', '', '719a0651059758ca3bceb65463334f27', 'e9ae5a', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (151, 208, '1551200214', '哎哟喂', '00', '123abc049@qq.com', '18178321548', '1', '', 'dc693f7e44f7e3f19d4fde7c01a047b6', 'd73578', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (152, 208, '1551200215', '哎哟喂', '00', '123abc050@qq.com', '18178321549', '1', '', 'edef95a2f4375f87f675f6cf9348f31f', 'b8d215', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (153, 208, '1551200216', '哎哟喂', '00', '123abc051@qq.com', '18178321550', '1', '', 'c8bf80eebb4257759a2b9b9c1d169a0c', '99f732', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (154, 208, '1551200217', '内容管理员', '00', '123abc052@qq.com', '18178321551', '1', '', '58220c4d3e661822eec4b7ec109151ce', '53b4a2', '0', '0', '127.0.0.1', '2019-05-14 13:54:24', 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-14 13:54:24', '');
INSERT INTO `sys_user` VALUES (155, 208, '1551200218', '多俊睿（测试3）', '00', '123abc053@qq.com', '18178321552', '1', '', '15f2c5b2f0e629c3e39652c1b9e8bd98', 'bd340e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (156, 208, '1551200219', '许华升', '00', '123abc054@qq.com', '18178321553', '1', '', '351c700499e66be5f17ce3bf5e69d9ec', '9c7e6e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (157, 208, '1551200220', '哈哈', '00', '123abc055@qq.com', '18178321554', '1', '', '987d391accd94585318caa0ebaef694a', '0cde5d', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (158, 213, '16512001', '啦啦', '00', '123abc056@qq.com', '18178321555', '1', '', '79c2fe7de22465a8b42bb7bcde8b3c9a', 'f6448f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (159, 213, '16512002', '黄花菜', '00', '123abc057@qq.com', '18178321556', '1', '', 'd1406e2bf8c6b7ecc6f2a4f82c965b3f', 'ab9c0c', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (160, 213, '16512003', '黄花园', '00', '123abc058@qq.com', '18178321557', '1', '', '5069d74a262591e774e889c0cd3f26a9', '2eae16', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (161, 213, '16512004', '八一', '00', '123abc059@qq.com', '18178321558', '1', '', 'bf564dd8f3008f002dc0be681840bfdb', 'c9029e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (162, 213, '16512005', '张天信22', '00', '123abc060@qq.com', '18178321559', '1', '', '931cc23f4037380416451a3cd241554a', 'c7ea2b', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (163, 213, '16512006', '黄少黄', '00', '123abc061@qq.com', '18178321560', '1', '', '6edf5834dc700a50fae2442e55443cf6', '4d2703', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (164, 213, '16512007', '张天信', '00', '123abc062@qq.com', '18178321561', '1', '', '46f16d81cdac73a12bee6f389b9b9516', 'ae5686', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (165, 213, '16512008', '教务普通管理员A', '00', '123abc063@qq.com', '18178321562', '1', '', '05cb377842a40eca4ef608773ae2250f', '19bffc', '0', '0', '127.0.0.1', '2019-05-27 15:04:46', 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-27 15:04:45', '');
INSERT INTO `sys_user` VALUES (166, 213, '16512009', '张', '00', '123abc064@qq.com', '18178321563', '1', '', '6f1bc407613749f88a1aa964b202bab2', '225f0a', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (167, 213, '16512010', '张七六', '00', '123abc065@qq.com', '18178321564', '1', '', 'fd406e5d0714bbe0faab0a41d7e150b2', 'ea244b', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (168, 213, '16512011', 'HK哦kill', '00', '123abc066@qq.com', '18178321565', '1', '', '71ed346faaf93291d72881f171ce204d', '6414e7', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (169, 213, '16512012', '林真真', '00', '123abc067@qq.com', '18178321566', '1', '', '78f774cc18ad403ad14b494034970adf', '3da17e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (170, 213, '16512013', '柳小小', '00', '123abc068@qq.com', '18178321567', '1', '', '96c53b9b1e7e9b7ab65894b8ada5e57c', 'ea867e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (171, 213, '16512014', '小软', '00', '123abc069@qq.com', '18178321568', '1', '', '3df63e64cb1f7d028625ed8d9818d463', 'fd18ad', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (172, 213, '16512015', '路', '00', '123abc070@qq.com', '18178321569', '1', '', 'f452fa199256959b87516d86120449c7', 'f9ca45', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (173, 213, '16512016', '设备管理员', '00', '123abc071@qq.com', '18178321570', '1', '', '16c5cbe99e3897f5fb1fd324b4114802', 'de5a9d', '0', '0', '127.0.0.1', '2019-05-27 15:04:56', 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-27 15:04:56', '');
INSERT INTO `sys_user` VALUES (174, 212, '1751200101', '黄子韬', '00', '123abc072@qq.com', '18178321571', '1', '', 'a53a52bb7415b8afc839a21d5faf0275', 'c6da70', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (175, 212, '1751200102', '七四', '00', '123abc073@qq.com', '18178321572', '1', '', '98a7f5c328cfbd55ded370e776201b76', '90c1f9', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (176, 212, '1751200103', '谁都行', '00', '123abc074@qq.com', '18178321573', '1', '', '09377804cab72849b9d97c0b05fee5a2', '6a4eee', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (177, 212, '1751200104', '多俊睿（测试）', '00', '123abc075@qq.com', '18178321574', '1', '', '5142b9b335144cf3fd26acde1d2d33ee', '680902', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (178, 212, '1751200105', '张天信张天信', '00', '123abc076@qq.com', '18178321575', '1', '', '981cd5da7879344ef415231a75357518', 'bf1582', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (179, 212, '1751200106', '张天信', '00', '123abc077@qq.com', '18178321576', '1', '', '12ddb434d4c2e97620d5d211d0d47df8', '6ea73f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (180, 212, '1751200107', '张天信', '00', '123abc078@qq.com', '18178321577', '1', '', '90c589d17943ef675db48fde5750a8c1', 'bc8827', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (181, 212, '1751200108', '每个人', '00', '123abc079@qq.com', '18178321578', '1', '', '093416916585a6b1ad47c4dc88fdaa1f', 'b2e17b', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (182, 212, '1751200109', '周洗洗', '00', '123abc080@qq.com', '18178321579', '1', '', 'cc7cced7dee36f0595409937a6332e86', '97ad1e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (183, 212, '1751200110', '小软', '00', '123abc081@qq.com', '18178321580', '1', '', 'b27393536b641e060e6c88d3261159b2', 'd99950', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (184, 212, '1751200111', '张', '00', '123abc082@qq.com', '18178321581', '1', '', '1e0b50f50a64ef94546385baa3d09319', '5f583c', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (185, 212, '1751200112', '哎哟喂', '00', '123abc083@qq.com', '18178321582', '1', '', 'dc3900f066970b27d2fec68df96d96a8', 'df88c1', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (186, 212, '1751200113', '张天信八二', '00', '123abc084@qq.com', '18178321583', '1', '', '93e278b3f4ed848ca1f4e55aa9d2ff22', 'b50e7c', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (187, 212, '1751200114', '李建梅', '00', '123abc085@qq.com', '18178321584', '1', '', 'd5a8ed0156f66e4cfd104de4ab5a530d', 'daddda', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (188, 211, '1851200101', '按时艰苦', '00', '123abc086@qq.com', '18178321585', '1', '', '0a659d3e66c45e4182f536b236b839fc', '4fbfdd', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (189, 211, '1851200102', '陈珈毅', '00', '123abc087@qq.com', '18178321586', '1', '', '15ae7e38de2c48fadd271775a30e3647', 'e7b66f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (190, 211, '1851200103', '试试', '00', '123abc088@qq.com', '18178321587', '1', '', '243abefd681e774db4219d4217aac73b', '4166f0', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (191, 211, '1851200104', '张天信八四', '00', '123abc089@qq.com', '18178321588', '1', '', '5eff4afaa5496a9e3ca408bce9ab94ab', 'c1a1b7', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (192, 211, '1851200105', '1', '00', '123abc090@qq.com', '18178321589', '1', '', 'a4abb87fabe68b2deae3bf64e066d437', '80a55f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (193, 211, '1851200106', '陈珈毅', '00', '123abc091@qq.com', '18178321590', '1', '', '4694bb4bff3e13b4b79ccf142445a756', '090757', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (194, 211, '1851200107', '黄啦啦啦', '00', '123abc092@qq.com', '18178321591', '1', '', 'e2c0a0a97425346811a74fa781477265', 'e91563', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (195, 211, '1851200108', '秦二世', '00', '123abc093@qq.com', '18178321592', '1', '', 'b9f804018afd8b17bc1b68027d97811d', 'a875dd', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (196, 211, '1851200109', '黄虎林', '00', '123abc094@qq.com', '18178321593', '1', '', 'e28694164b2765c4d71103893ee60057', 'dd8094', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:36:54', '');
INSERT INTO `sys_user` VALUES (197, 211, '1851200110', '裴锡锡', '00', '123abc095@qq.com', '18178321594', '1', '', '536b8762620eb1f2c091c38e38802563', 'c48792', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:36:42', '');
INSERT INTO `sys_user` VALUES (198, 211, '1851200111', '周芷若', '00', '123abc096@qq.com', '18178321595', '1', '', '4a0716706f2aac920f0e1f731862e415', 'a3a80e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:37:36', '');
INSERT INTO `sys_user` VALUES (199, 211, '1851200112', '赵敏', '00', '123abc097@qq.com', '18178321596', '1', '', 'a24ffe518dae53319f67e372517c035b', 'd8017e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:37:18', '');
INSERT INTO `sys_user` VALUES (200, 211, '1851200113', '黄福德', '00', '123abc098@qq.com', '18178321597', '1', '', '715dfbbc56d075fe8034924a21b11b47', '3aa56a', '1', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:39:35', '');
INSERT INTO `sys_user` VALUES (201, 211, '1851200114', '张无忌', '00', '123abc099@qq.com', '18178321598', '1', '', '2fd52c84dff542be975c4959c7b36b58', '84ae9b', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:37:29', '');
INSERT INTO `sys_user` VALUES (202, 211, '1851200115', '廖天成', '00', '123abc100@qq.com', '18178321599', '1', '', '2d87ec13abf2633682d0523771a75984', '642f39', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:35:33', '');
INSERT INTO `sys_user` VALUES (203, 211, '1851200116', '杨潇', '00', '123abc101@qq.com', '18178321600', '1', '', '5d1b0dcd905b6e4b16c6cdff5ff99906', '549d9a', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', 'etims', '2019-05-15 21:37:47', '');
INSERT INTO `sys_user` VALUES (204, 214, '1451200101', '暴富', '00', '123abc102@qq.com', '18178321601', '1', '', 'b054a1c6cd09596c08239d7120eb3f80', 'bdd218', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (205, 214, '1451200102', '张天信八四', '00', '123abc103@qq.com', '18178321602', '1', '', 'b43f94fb35bc6d81bbf42d3c3ab30c09', '1a5e0e', '1', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', '2019-05-13 14:33:57', '');
INSERT INTO `sys_user` VALUES (206, 214, '1451200103', '啊哈哈', '00', '123abc104@qq.com', '18178321603', '1', '', 'f61bb578f788ac9b7ed08ab80d390354', '7f7cc3', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (207, 214, '1451200104', '黄嘻嘻', '00', '123abc105@qq.com', '18178321604', '1', '', 'd9856cb6fa84fd02445c9bd90f2c81d7', '9efe01', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (208, 214, '1451200105', '周柏豪', '00', '123abc106@qq.com', '18178321605', '1', '', '0432ed00f53d7117640ef2a645110dbe', 'bd348c', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (209, 214, '1451200106', '好咯啦墨迹', '00', '123abc107@qq.com', '18178321606', '1', '', 'e152f631e63ca6224b3d369d821b48e0', '8380a4', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (210, 214, '1451200107', '黄珊珊3', '00', '123abc108@qq.com', '18178321607', '1', '', '3f21fb521697d1672bd6866d111e95f0', '1e072f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (211, 214, '1451200108', '张hjj', '00', '123abc109@qq.com', '18178321608', '1', '', 'e08e73a1c833f5e977df2f4622636240', '747a39', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (212, 214, '1451200109', '八一', '00', '123abc110@qq.com', '18178321609', '1', '', '869793ef166ec201a4f05f3e06706c83', 'ee5580', '1', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', '2019-05-13 14:34:02', '');
INSERT INTO `sys_user` VALUES (213, 214, '1451200110', '张天信张天信', '00', '123abc111@qq.com', '18178321610', '1', '', '1542da355c89c50c73de1065601b0de7', '811ec4', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (214, 214, '1451200111', '啊啊啊', '00', '123abc112@qq.com', '18178321611', '1', '', 'd87658d29fc0cb10cef21edcb9f1c5d6', '2e905f', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (215, 214, '1451200112', '张天信八三', '00', '123abc113@qq.com', '18178321612', '1', '', '49078e23a916b4153f9f0ac0dd9b27a0', '61d36d', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (216, 214, '1451200113', '张天信张', '00', '123abc114@qq.com', '18178321613', '1', '', '3a3caa205cdc58bb0dee7544d30d5054', 'a3f413', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (217, 214, '1451200114', '桂A4555555', '00', '123abc115@qq.com', '18178321614', '1', '', '35550fd9f3be19da93e866266bfe8275', '5d4177', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (218, 214, '1451200115', '哈哈哇', '00', '123abc116@qq.com', '18178321615', '1', '', '57104cd4412f2259d5650981607fad96', '5aaa4e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (219, 214, '1451200116', '张天信八三', '00', '123abc117@qq.com', '18178321616', '1', '', '246ccea31b40a1ca4e2e4e299bfea30f', '7f3bfb', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (220, 214, '1451200117', '金悦', '00', '123abc118@qq.com', '18178321617', '1', '', 'd5e027bff5f6907179e27df777e3a5d3', '5872fb', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (221, 214, '1451200118', '林真心', '00', '123abc119@qq.com', '18178321618', '1', '', '0020e267fb7cd6e5a0f655dd5c287b58', '4db624', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (222, 214, '1451200119', '周梅', '00', '123abc120@qq.com', '18178321619', '1', '', '03e28bb487ee992adc2f51e8ad6a0f29', 'bce80e', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (223, 214, '1451200120', '张天信', '00', '123abc121@qq.com', '18178321620', '1', '', 'cc937aa153116053863c237738d5d3a9', '66f69a', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (224, 214, '1451200121', '撒旦艰苦2', '00', '123abc122@qq.com', '18178321621', '1', '', '5b55794699957e9df232408c9272ca4c', '89acba', '0', '0', '', NULL, 'etims', '2019-05-13 14:18:24', '', NULL, '');
INSERT INTO `sys_user` VALUES (225, 207, 'T15512001', '刘老师', '00', 'liu@qq.com', '18178322003', '0', '', 'cf4b4d1a0fa8cfb68e0536599196f046', 'd8cc7e', '0', '0', '127.0.0.1', '2019-05-27 16:26:00', 'etims', '2019-05-14 13:38:46', '', '2019-05-27 16:26:00', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `user_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('3f3303f4-4664-4823-8f2d-86d728553f4e', 'etims', NULL, '系统维护', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', 'on_line', '2019-06-12 11:31:40', '2019-06-12 11:37:04', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (101, 3);
INSERT INTO `sys_user_post` VALUES (102, 3);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 1);
INSERT INTO `sys_user_role` VALUES (101, 105);
INSERT INTO `sys_user_role` VALUES (102, 105);
INSERT INTO `sys_user_role` VALUES (103, 105);
INSERT INTO `sys_user_role` VALUES (104, 105);
INSERT INTO `sys_user_role` VALUES (105, 105);
INSERT INTO `sys_user_role` VALUES (106, 105);
INSERT INTO `sys_user_role` VALUES (107, 105);
INSERT INTO `sys_user_role` VALUES (108, 105);
INSERT INTO `sys_user_role` VALUES (109, 105);
INSERT INTO `sys_user_role` VALUES (110, 105);
INSERT INTO `sys_user_role` VALUES (111, 105);
INSERT INTO `sys_user_role` VALUES (112, 105);
INSERT INTO `sys_user_role` VALUES (113, 105);
INSERT INTO `sys_user_role` VALUES (114, 105);
INSERT INTO `sys_user_role` VALUES (115, 105);
INSERT INTO `sys_user_role` VALUES (116, 105);
INSERT INTO `sys_user_role` VALUES (117, 105);
INSERT INTO `sys_user_role` VALUES (118, 105);
INSERT INTO `sys_user_role` VALUES (119, 105);
INSERT INTO `sys_user_role` VALUES (120, 105);
INSERT INTO `sys_user_role` VALUES (121, 105);
INSERT INTO `sys_user_role` VALUES (122, 105);
INSERT INTO `sys_user_role` VALUES (123, 105);
INSERT INTO `sys_user_role` VALUES (124, 105);
INSERT INTO `sys_user_role` VALUES (125, 105);
INSERT INTO `sys_user_role` VALUES (126, 105);
INSERT INTO `sys_user_role` VALUES (127, 105);
INSERT INTO `sys_user_role` VALUES (128, 105);
INSERT INTO `sys_user_role` VALUES (129, 105);
INSERT INTO `sys_user_role` VALUES (130, 105);
INSERT INTO `sys_user_role` VALUES (131, 105);
INSERT INTO `sys_user_role` VALUES (132, 105);
INSERT INTO `sys_user_role` VALUES (133, 105);
INSERT INTO `sys_user_role` VALUES (134, 105);
INSERT INTO `sys_user_role` VALUES (135, 105);
INSERT INTO `sys_user_role` VALUES (136, 105);
INSERT INTO `sys_user_role` VALUES (137, 105);
INSERT INTO `sys_user_role` VALUES (138, 105);
INSERT INTO `sys_user_role` VALUES (139, 105);
INSERT INTO `sys_user_role` VALUES (140, 105);
INSERT INTO `sys_user_role` VALUES (141, 105);
INSERT INTO `sys_user_role` VALUES (142, 105);
INSERT INTO `sys_user_role` VALUES (143, 105);
INSERT INTO `sys_user_role` VALUES (144, 105);
INSERT INTO `sys_user_role` VALUES (145, 105);
INSERT INTO `sys_user_role` VALUES (146, 105);
INSERT INTO `sys_user_role` VALUES (147, 105);
INSERT INTO `sys_user_role` VALUES (148, 105);
INSERT INTO `sys_user_role` VALUES (149, 105);
INSERT INTO `sys_user_role` VALUES (150, 105);
INSERT INTO `sys_user_role` VALUES (151, 105);
INSERT INTO `sys_user_role` VALUES (152, 105);
INSERT INTO `sys_user_role` VALUES (153, 105);
INSERT INTO `sys_user_role` VALUES (154, 103);
INSERT INTO `sys_user_role` VALUES (155, 105);
INSERT INTO `sys_user_role` VALUES (156, 105);
INSERT INTO `sys_user_role` VALUES (157, 105);
INSERT INTO `sys_user_role` VALUES (158, 105);
INSERT INTO `sys_user_role` VALUES (159, 105);
INSERT INTO `sys_user_role` VALUES (160, 105);
INSERT INTO `sys_user_role` VALUES (161, 105);
INSERT INTO `sys_user_role` VALUES (162, 105);
INSERT INTO `sys_user_role` VALUES (163, 105);
INSERT INTO `sys_user_role` VALUES (164, 105);
INSERT INTO `sys_user_role` VALUES (165, 102);
INSERT INTO `sys_user_role` VALUES (166, 105);
INSERT INTO `sys_user_role` VALUES (167, 105);
INSERT INTO `sys_user_role` VALUES (168, 105);
INSERT INTO `sys_user_role` VALUES (169, 105);
INSERT INTO `sys_user_role` VALUES (170, 105);
INSERT INTO `sys_user_role` VALUES (171, 105);
INSERT INTO `sys_user_role` VALUES (172, 105);
INSERT INTO `sys_user_role` VALUES (173, 106);
INSERT INTO `sys_user_role` VALUES (174, 105);
INSERT INTO `sys_user_role` VALUES (175, 105);
INSERT INTO `sys_user_role` VALUES (176, 105);
INSERT INTO `sys_user_role` VALUES (177, 105);
INSERT INTO `sys_user_role` VALUES (178, 105);
INSERT INTO `sys_user_role` VALUES (179, 105);
INSERT INTO `sys_user_role` VALUES (180, 105);
INSERT INTO `sys_user_role` VALUES (181, 105);
INSERT INTO `sys_user_role` VALUES (182, 105);
INSERT INTO `sys_user_role` VALUES (183, 105);
INSERT INTO `sys_user_role` VALUES (184, 105);
INSERT INTO `sys_user_role` VALUES (185, 105);
INSERT INTO `sys_user_role` VALUES (186, 105);
INSERT INTO `sys_user_role` VALUES (187, 105);
INSERT INTO `sys_user_role` VALUES (188, 105);
INSERT INTO `sys_user_role` VALUES (189, 105);
INSERT INTO `sys_user_role` VALUES (190, 105);
INSERT INTO `sys_user_role` VALUES (191, 105);
INSERT INTO `sys_user_role` VALUES (192, 105);
INSERT INTO `sys_user_role` VALUES (193, 105);
INSERT INTO `sys_user_role` VALUES (194, 105);
INSERT INTO `sys_user_role` VALUES (195, 105);
INSERT INTO `sys_user_role` VALUES (196, 105);
INSERT INTO `sys_user_role` VALUES (197, 105);
INSERT INTO `sys_user_role` VALUES (198, 105);
INSERT INTO `sys_user_role` VALUES (199, 105);
INSERT INTO `sys_user_role` VALUES (200, 105);
INSERT INTO `sys_user_role` VALUES (201, 105);
INSERT INTO `sys_user_role` VALUES (202, 105);
INSERT INTO `sys_user_role` VALUES (203, 105);
INSERT INTO `sys_user_role` VALUES (204, 105);
INSERT INTO `sys_user_role` VALUES (205, 105);
INSERT INTO `sys_user_role` VALUES (206, 105);
INSERT INTO `sys_user_role` VALUES (207, 105);
INSERT INTO `sys_user_role` VALUES (208, 105);
INSERT INTO `sys_user_role` VALUES (209, 105);
INSERT INTO `sys_user_role` VALUES (210, 105);
INSERT INTO `sys_user_role` VALUES (211, 105);
INSERT INTO `sys_user_role` VALUES (212, 105);
INSERT INTO `sys_user_role` VALUES (213, 105);
INSERT INTO `sys_user_role` VALUES (214, 105);
INSERT INTO `sys_user_role` VALUES (215, 105);
INSERT INTO `sys_user_role` VALUES (216, 105);
INSERT INTO `sys_user_role` VALUES (217, 105);
INSERT INTO `sys_user_role` VALUES (218, 105);
INSERT INTO `sys_user_role` VALUES (219, 105);
INSERT INTO `sys_user_role` VALUES (220, 105);
INSERT INTO `sys_user_role` VALUES (221, 105);
INSERT INTO `sys_user_role` VALUES (222, 105);
INSERT INTO `sys_user_role` VALUES (223, 105);
INSERT INTO `sys_user_role` VALUES (224, 105);
INSERT INTO `sys_user_role` VALUES (225, 104);

SET FOREIGN_KEY_CHECKS = 1;
