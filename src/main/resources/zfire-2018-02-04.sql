/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : zfire

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-04 21:02:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_ideaback
-- ----------------------------
DROP TABLE IF EXISTS `app_ideaback`;
CREATE TABLE `app_ideaback` (
  `idea_id` char(32) NOT NULL,
  `app_id` char(32) DEFAULT NULL,
  `content` varchar(250) DEFAULT NULL,
  `date_time` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_ideaback
-- ----------------------------
INSERT INTO `app_ideaback` VALUES ('d946999e29644bc9a342c8f07ad61f5d', '0a528d4d328e4491830e8997e884d888', '好人容易好人认同感嘎嘎嘎嘎方法、、', '1398568313863', '0');

-- ----------------------------
-- Table structure for app_image
-- ----------------------------
DROP TABLE IF EXISTS `app_image`;
CREATE TABLE `app_image` (
  `image_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `app_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `image_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `align_type` int(11) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of app_image
-- ----------------------------
INSERT INTO `app_image` VALUES ('3eccaac3b458446fb7708a9f7bb274db', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_6.jpeg', '6', '0', '0');
INSERT INTO `app_image` VALUES ('68cf3af7ffb84319b00147d96abccb50', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_4.jpeg', '4', '0', '0');
INSERT INTO `app_image` VALUES ('760639342fac4a3289435ead4e31a0ba', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_8.jpeg', '8', '0', '0');
INSERT INTO `app_image` VALUES ('84030f557b4149babebef3bb0905ddc8', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_3.jpeg', '3', '0', '0');
INSERT INTO `app_image` VALUES ('849fff85297144b283e7c398f0c5a178', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_1.png', '1', '0', '0');
INSERT INTO `app_image` VALUES ('8c02fca606104e7bbfb2fbdd0b0e524b', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_2.jpeg', '2', '0', '0');
INSERT INTO `app_image` VALUES ('b1dd499d000f4be8a181878d7348600b', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_7.jpeg', '7', '0', '0');
INSERT INTO `app_image` VALUES ('bfae25ac3c914c31832f743cd2bd9739', 'dd9280aca79e4cae94f2c8d0ae990de5', '2', 'http://iv-img.qiniudn.com/hk_5.jpeg', '5', '0', '0');
INSERT INTO `app_image` VALUES ('d082863f2a6945df84af1b32dd273928', 'dd9280aca79e4cae94f2c8d0ae990de5', '1', 'http://iv-img.qiniudn.com/hk_icon.png', '0', '0', '0');

-- ----------------------------
-- Table structure for app_info
-- ----------------------------
DROP TABLE IF EXISTS `app_info`;
CREATE TABLE `app_info` (
  `app_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descrition` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `run_os` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkage_size` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `free` int(11) DEFAULT NULL,
  `star_count` int(11) DEFAULT NULL,
  `down_count` int(11) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `update_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of app_info
-- ----------------------------
INSERT INTO `app_info` VALUES ('dd9280aca79e4cae94f2c8d0ae990de5', '掀美女裙子豪华版', '想办法让MM的裙子飘起来，裙子飘的越高，能看到的风景当然越好啦。把MM掀翻你就赚啦...', '2.0 2.1 2.2 2.3.x 4.0.x 4.1.x', '简体中文', '34.83 MB', '安全', '2.0', '1', '9', '12134', '0', '1', '2014-03-16');

-- ----------------------------
-- Table structure for app_package
-- ----------------------------
DROP TABLE IF EXISTS `app_package`;
CREATE TABLE `app_package` (
  `pkage_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `app_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_src` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkage_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of app_package
-- ----------------------------
INSERT INTO `app_package` VALUES ('4e1af84587f9438d8bae350ce4cd5586', 'dd9280aca79e4cae94f2c8d0ae990de5', '金山快盘', 'http://t1.dfs.kuaipan.cn/cdlsched/getdl?fid=297991548325330945&acc_params=entryid:297991548325330945,pickupCode:', '1', '1');

-- ----------------------------
-- Table structure for a_category
-- ----------------------------
DROP TABLE IF EXISTS `a_category`;
CREATE TABLE `a_category` (
  `c_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `date_time` bigint(20) DEFAULT NULL,
  `enable_flag` int(11) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `info_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of a_category
-- ----------------------------
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78680002', '明星', '明星', '2', '1403934168513', '1', '0', '/channel/star');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '1', '1403934168513', '1', '0', '/channel?c=%E7%BE%8E%E5%A5%B3#%E7%BE%8E%E5%A5%B3');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '4', '1403934168513', '1', '0', '/channel/wallpaper');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '5', '1403934168513', '1', '0', '/channel/funny#%E6%90%9E%E7%AC%91&%E5%85%A8%E9%83%A8&0&0');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '7', '1403934168513', '1', '0', '/channel?c=%E5%8A%A8%E6%BC%AB#%E5%8A%A8%E6%BC%AB');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '8', '1403934168513', '1', '0', '/channel/travel#%E7%83%AD%E9%97%A8%E6%8E%A8%E8%8D%90&%E5%85%A8%E9%83%A8&null&0');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '9', '1403934168513', '1', '0', '/channel?c=%E6%91%84%E5%BD%B1#%E6%91%84%E5%BD%B1');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78c2000b', '家居', '家居', '10', '1403934168513', '1', '0', '/channel?c=%E5%AE%B6%E5%B1%85#%E5%AE%B6%E5%B1%85');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '11', '1403934168513', '1', '0', '/channel?c=%E5%A9%9A%E5%AB%81');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '12', '1403934168513', '1', '0', '/channel?c=%E8%AE%BE%E8%AE%A1#%E8%AE%BE%E8%AE%A1');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '16', '1403934168513', '1', '0', '/channel?c=%E6%B1%BD%E8%BD%A6#%E6%B1%BD%E8%BD%A6');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78ee0012', '真人秀场', '真人秀场', '30', '1403934168513', '1', '0', '/channel?c=%E7%9C%9F%E4%BA%BA%E7%A7%80%E5%9C%BA');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '18', '1403934168513', '1', '0', '/channel?c=%E7%BE%8E%E9%A3%9F#%E7%BE%8E%E9%A3%9F');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '19', '1403934168513', '1', '0', '/channel?c=%E5%AE%A0%E7%89%A9#%E5%AE%A0%E7%89%A9');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '20', '1403934168513', '1', '0', '/channel?c=%E7%BE%8E%E5%A6%86#%E7%BE%8E%E5%A6%86');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '21', '1403934168513', '1', '0', '/channel?c=DIY#DIY');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '22', '1403934168513', '1', '0', '/channel?c=%E5%8A%A8%E7%89%A9#%E5%8A%A8%E7%89%A9');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff79110018', '植物', '植物', '23', '1403934168513', '1', '0', '/channel?c=%E6%A4%8D%E7%89%A9#%E6%A4%8D%E7%89%A9');
INSERT INTO `a_category` VALUES ('4028e4e846e0ff610146e0ff79170019', '军事', '军事', '24', '1403934168513', '1', '0', '/channel?c=%E5%86%9B%E4%BA%8B#%E5%86%9B%E4%BA%8B');

-- ----------------------------
-- Table structure for a_hot
-- ----------------------------
DROP TABLE IF EXISTS `a_hot`;
CREATE TABLE `a_hot` (
  `h_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date_time` bigint(20) DEFAULT NULL,
  `enable_flag` int(11) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `origin` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of a_hot
-- ----------------------------

-- ----------------------------
-- Table structure for a_image
-- ----------------------------
DROP TABLE IF EXISTS `a_image`;
CREATE TABLE `a_image` (
  `iid` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `bid` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '百度image_id',
  `thumbnail_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_width` int(11) DEFAULT NULL,
  `thumbnail_height` int(11) DEFAULT NULL,
  `image_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `simi_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simi_width` int(11) DEFAULT NULL,
  `simi_height` int(11) DEFAULT NULL,
  `abs` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '说明',
  `tags` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of a_image
-- ----------------------------

-- ----------------------------
-- Table structure for a_index
-- ----------------------------
DROP TABLE IF EXISTS `a_index`;
CREATE TABLE `a_index` (
  `m_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `date_time` bigint(20) DEFAULT NULL,
  `origin` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of a_index
-- ----------------------------
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044851c60000', '性感美女壁纸', '壁纸,美女', 'http://d.hiphotos.baidu.com/image/h%3D800%3Bcrop%3D0%2C0%2C1280%2C800/sign=9851a28cfe039245beb5ec0fb7afc7b0/c8177f3e6709c93d2b505ab69d3df8dcd00054d4.jpg', '1', '1404526154122', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852460001', '天马星空创意绘画', '设计,绘画艺术', 'http://f.hiphotos.baidu.com/image/pic/item/0823dd54564e92584cf6b6fb9e82d158cdbf4ee0.jpg', '2', '1404526154308', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852530002', '炫酷跑车', '汽车,跑车', 'http://e.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc8589d699cf11728b47102805.jpg', '3', '1404526154321', '1');
INSERT INTO `a_index` VALUES ('4028e4e64704483201470448525e0003', '唯美风摄影', '摄影,唯美', 'http://e.hiphotos.baidu.com/image/pic/item/f11f3a292df5e0fe3daa4e825e6034a85fdf7287.jpg', '4', '1404526154332', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852670004', '小清新', '美女,小清新', 'http://f.hiphotos.baidu.com/image/pic/item/10dfa9ec8a136327d78183bb938fa0ec09fac7ce.jpg', '5', '1404526154341', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852740005', '足球宝贝', '美女,小清新', 'http://f.hiphotos.baidu.com/image/pic/item/d52a2834349b033b9e3d47de17ce36d3d539bd79.jpg', '6', '1404526154354', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852800006', '金泰熙', '明星,金泰熙', 'http://h.hiphotos.baidu.com/image/pic/item/1f178a82b9014a90494830a4ab773912b31beeb1.jpg', '7', '1404526154366', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852890007', 'by2', '明星,by2', 'http://c.hiphotos.baidu.com/image/pic/item/242dd42a2834349bf943038ccbea15ce36d3be76.jpg', '8', '1404526154375', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852980008', '高圆圆', '明星,高圆圆', 'http://f.hiphotos.baidu.com/image/pic/item/a9d3fd1f4134970a950f2b2c97cad1c8a7865db0.jpg', '9', '1404526154390', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044852a40009', '嫩萝莉', '美女,嫩萝莉', 'http://f.hiphotos.baidu.com/image/pic/item/5fdf8db1cb13495474d8fcef544e9258d0094a72.jpg', '10', '1404526154401', '1');
INSERT INTO `a_index` VALUES ('4028e4e64704483201470448544f000a', '新西兰', '旅游,新西兰', 'http://c.hiphotos.baidu.com/image/pic/item/0823dd54564e925883c2e3919e82d158cdbf4ede.jpg', '10', '1404526154828', '1');
INSERT INTO `a_index` VALUES ('4028e4e647044832014704485462000b', '婚礼甜品', '婚嫁,婚礼甜品', 'http://f.hiphotos.baidu.com/image/pic/item/960a304e251f95ca9c36ce40cb177f3e66095200.jpg', '11', '1404526154848', '1');
INSERT INTO `a_index` VALUES ('4028e4e64704483201470448546f000c', '斯里兰卡', '旅游,斯里兰卡', 'http://h.hiphotos.baidu.com/image/pic/item/ac4bd11373f08202c56fea4049fbfbedaa641bcb.jpg', '12', '1404526154861', '1');
INSERT INTO `a_index` VALUES ('4028e4e647044832014704485484000d', '美食诱惑', '壁纸,美食诱惑', 'http://f.hiphotos.baidu.com/image/pic/item/e1fe9925bc315c60d969f2ee8fb1cb1349547737.jpg', '13', '1404526154874', '1');
INSERT INTO `a_index` VALUES ('4028e4e647044832014704485495000e', '汤唯', '明星,汤唯', 'http://c.hiphotos.baidu.com/image/pic/item/0eb30f2442a7d933c2b70c72af4bd11373f00197.jpg', '14', '1404526154895', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044854a9000f', '保时捷', '壁纸,保时捷', 'http://a.hiphotos.baidu.com/image/pic/item/bf096b63f6246b6004ccb97ce9f81a4c500fa2f3.jpg', '15', '1404526154915', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044854bb0010', '苏州', '旅游,苏州', 'http://f.hiphotos.baidu.com/image/pic/item/b7fd5266d016092476616874d60735fae6cd341d.jpg', '16', '1404526154935', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044854cb0011', '安以轩', '明星,安以轩', 'http://h.hiphotos.baidu.com/image/pic/item/4a36acaf2edda3ccc3363a2703e93901203f92e3.jpg', '17', '1404526154951', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044854dc0012', '光绘', '摄影,光绘', 'http://b.hiphotos.baidu.com/image/pic/item/0b46f21fbe096b63f73928070e338744ebf8ac40.jpg', '18', '1404526154968', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044854f20013', '国家地理', '摄影,国家地理', 'http://g.hiphotos.baidu.com/image/pic/item/9e3df8dcd100baa16bae6f024610b912c9fc2e8c.jpg', '19', '1404526154991', '1');
INSERT INTO `a_index` VALUES ('4028e4e6470448320147044855020014', '萌宠', '宠物,萌宠', 'http://a.hiphotos.baidu.com/image/pic/item/a5c27d1ed21b0ef41b8c7ff4dfc451da81cb3e37.jpg', '20', '1404526155005', '1');

-- ----------------------------
-- Table structure for a_tag
-- ----------------------------
DROP TABLE IF EXISTS `a_tag`;
CREATE TABLE `a_tag` (
  `t_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `c_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_tag` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_tag` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layer` int(11) DEFAULT NULL,
  `date_time` bigint(20) DEFAULT NULL,
  `enable_flag` int(11) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `img_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of a_tag
-- ----------------------------
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280d8b0002', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '明星写真', '明星写真', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/37d12f2eb9389b50c4d222dd8735e5dde7116e14.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280d960003', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '图说八卦', '图说八卦', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/48540923dd54564e2bac39c3b1de9c82d0584f7b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280dab0005', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '明星时尚', '明星时尚', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/faedab64034f78f077dadb577b310a55b2191c44.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280db70006', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金秀贤', '金秀贤', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/e824b899a9014c086309122a087b02087bf4f40a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280dc20007', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '杨幂', '杨幂', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/7af40ad162d9f2d392624eefabec8a136327ccbb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280dcc0008', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林志玲', '林志玲', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/a71ea8d3fd1f4134a38f4e76271f95cad1c85e79.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ddd0009', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张亮', '张亮', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/f11f3a292df5e0fe1534b68e5e6034a85edf7214.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280de9000a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李敏镐', '李敏镐', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/7dd98d1001e93901e811093779ec54e736d196ac.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280df1000b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘诗诗', '刘诗诗', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/8694a4c27d1ed21b0ee5cae5af6eddc451da3f85.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280df8000c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '汤唯', '汤唯', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3812b31bb051f819cf82f655d8b44aed2e73e70e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280dff000d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'Angelababy', 'Angelababy', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/cc11728b4710b91243b0f8f9c1fdfc0392452247.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e05000e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'EXO', 'EXO', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3b292df5e0fe992535fd525336a85edf8db1713b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e0c000f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴奇隆', '吴奇隆', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/bd3eb13533fa828b866e26e2ff1f4134970a5a65.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e150010', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '黄晓明', '黄晓明', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9173ac11327cb3d70cf3ac757e9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e1e0011', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王力宏', '王力宏', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/267f9e2f07082838a520b416ba99a9014c08f187.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e260012', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '鹿晗', '鹿晗', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/6c224f4a20a4462344b67c639a22720e0cf3d7b7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e2f0013', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '少女时代', '少女时代', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da5fb8c1eab4fd5266d0163261.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e370014', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张根硕', '张根硕', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/cefc1e178a82b9016b9b1632718da9773912eff9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e3e0015', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '东方神起', '东方神起', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/c2cec3fdfc03924518a029108594a4c27d1e259c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e450016', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '韩庚', '韩庚', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9213b07eca80653868fd930c95dda144ad34829d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e580017', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'SHINee', 'SHINee', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/faf2b2119313b07e8e2245060ed7912397dd8c24.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e600018', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘亦菲', '刘亦菲', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/faf2b2119313b07eb90d94090ed7912397dd8c7b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e7b001a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '唐嫣', '唐嫣', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/fc1f4134970a304ea9cbbdf0d3c8a786c8175cca.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e88001b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '柳岩', '柳岩', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/dbb44aed2e738bd4189fe330a38b87d6277ff971.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e93001c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '艾薇儿', '艾薇儿', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/03087bf40ad162d96462da1c13dfa9ec8a13cd26.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280e99001d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '全能星战', '全能星战', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/72f082025aafa40f306c8fd4a964034f78f01914.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ea1001e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金贤重', '金贤重', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/3812b31bb051f8190e4eb757d8b44aed2e73e740.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ea8001f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周杰伦', '周杰伦', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/0dd7912397dda144d2bfb2b0b0b7d0a20cf4867a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280eaf0020', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '钟汉良', '钟汉良', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/a2cc7cd98d1001e9d71caa0eba0e7bec54e7978b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280eb70021', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李孝利', '李孝利', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/f9dcd100baa1cd1116c51828bb12c8fcc3ce2d42.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ec00022', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '孙俪', '孙俪', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4034970a304e251f46d333e5a586c9177f3e5383.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ec70023', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林心如', '林心如', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb431691e0767222a4462309f7d33f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ed00024', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '蔡依林', '蔡依林', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/21a4462309f79052b7717e3d0ef3d7ca7bcbd542.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ed70025', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赵薇', '赵薇', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/7e3e6709c93d70cfc497210cfadcd100baa12b46.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ede0026', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '宋茜', '宋茜', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/b999a9014c086e069de0974500087bf40ad1cb70.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ee60027', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '章子怡', '章子怡', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b151f8198618367a03cd78c22c738bd4b31ce56d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ef50029', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王心凌', '王心凌', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/8718367adab44aedf834bcefb11c8701a18bfb47.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280efc002a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金泫雅', '金泫雅', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/48540923dd54564ec4c09a33b1de9c82d1584f16.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f03002b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '苗圃', '苗圃', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/a6efce1b9d16fdfa52a763efb68f8c5495ee7bec.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f22002f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '戚薇', '戚薇', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/9f510fb30f2442a7a04ca5add343ad4bd1130273.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f380032', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '权侑莉', '权侑莉', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/4b90f603738da977330c4828b251f8198618e396.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f400033', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '宋慧乔', '宋慧乔', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/a8014c086e061d95b7cd633079f40ad162d9ca2b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f490034', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '苍井空', '苍井空', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/a044ad345982b2b752d9e7c733adcbef76099b6b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f6a0038', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张歆艺', '张歆艺', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/0bd162d9f2d3572c840c39d68813632763d0c3ca.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f79003a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '蔡卓妍', '蔡卓妍', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/cb8065380cd79123a4d5947faf345982b2b78087.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f8c003c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '尹恩惠', '尹恩惠', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451daf84f64e9b4fd5266d0163272.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280f9d003e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '姚笛', '姚笛', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/8601a18b87d6277fc97dba262a381f30e924fc45.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fa4003f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张萌', '张萌', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/c2cec3fdfc039245e887590e8594a4c27d1e2584.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fb20041', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张馨予', '张馨予', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/8644ebf81a4c510f66025b1b6259252dd52aa5e9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fb90042', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金泰熙', '金泰熙', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/7af40ad162d9f2d3aeca3af2abec8a136227ccd0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fc20043', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '后藤真希', '后藤真希', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb4316b718147422a4462309f7d3bd.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fcd0044', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '霍思燕', '霍思燕', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/2f738bd4b31c8701005ff7fb257f9e2f0608ffc6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fe20047', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '高圆圆', '高圆圆', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/7c1ed21b0ef41bd51c0cffeb53da81cb39db3d55.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280fe90048', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '薛凯琪', '薛凯琪', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/f636afc379310a558d0851e9b54543a9822610fa.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1280ff9004a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张雨绮', '张雨绮', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b58f8c5494eef01fef8393c7e2fe9925bc317d19.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281005004c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郑爽', '郑爽', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/6c224f4a20a4462370b3507c9a22720e0cf3d7b7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281011004e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赵薇', '赵薇', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/faedab64034f78f0f3a15ff27b310a55b3191c0c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281018004f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '车晓', '车晓', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/c2cec3fdfc039245ff7276068594a4c27c1e25f7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128103b0054', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '舒淇', '舒淇', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b64543a98226cffc74d11ebcbb014a90f703eac1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810550058', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '孙燕姿', '孙燕姿', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9f2f070828381f30dc3a5ba1ab014c086e06f093.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128106f005c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '尚雯婕', '尚雯婕', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/574e9258d109b3de8b845c69cebf6c81800a4cf3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281075005d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张韶涵', '张韶涵', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/91529822720e0cf3a6adb6e50846f21fbe09aa52.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128107c005e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈意涵', '陈意涵', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d50735fae6cd7b89b93cb48a0d2442a7d9330e62.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128109d0063', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘惜君', '刘惜君', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/9213b07eca8065385b7a9e1095dda144ad348224.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810a50064', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '萧亚轩', '萧亚轩', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/38dbb6fd5266d01636053736952bd40735fa358b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810ad0065', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'Angelababy', 'Angelababy', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/bd3eb13533fa828b65b943fdff1f4134970a5a12.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810b60066', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王丽坤', '王丽坤', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/e7cd7b899e510fb33e5df189db33c895d1430c63.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810be0067', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '唐嫣', '唐嫣', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/c2cec3fdfc039245bbb78a068594a4c27d1e25bc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810d9006a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '朴信惠', '朴信惠', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6a600c338744ebf849b1a722dbf9d72a6159a7ef.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810e0006b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '翁美玲', '翁美玲', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/9825bc315c6034a88c244589c9134954082376f0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810e9006c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '阿兰', '阿兰', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/3801213fb80e7bec20d23fe82d2eb9389b506baa.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810f0006d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '萧蔷', '萧蔷', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/4afbfbedab64034fbdd8d90dadc379310a551da7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12810f6006e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘雨欣', '刘雨欣', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b999a9014c086e06cf0a414200087bf40ad1cb1d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128111b0073', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '姚晨', '姚晨', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/ca1349540923dd5468e8f060d309b3de9c82481a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811250075', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈好', '陈好', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/29381f30e924b8992ecfdf366c061d950b7bf6c9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811310077', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈妍希', '陈妍希', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/b3fb43166d224f4a0c3b4d9c0bf790529922d19a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128113e0079', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘亦菲', '刘亦菲', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/50da81cb39dbb6fde404f3240b24ab18972b3750.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128114f007c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郑秀妍', '郑秀妍', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/cb8065380cd79123b671e66aaf345982b2b7801e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811680080', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李小璐', '李小璐', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/f11f3a292df5e0fe396e4a095e6034a85edf7240.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128117b0083', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李孝利', '李孝利', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/5243fbf2b2119313cb3122b167380cd791238d45.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811870085', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张含韵', '张含韵', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/f2deb48f8c5494eeaeaa0e132ff5e0fe99257e2b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128118f0086', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张柏芝', '张柏芝', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/6a63f6246b600c33a99bf2c0184c510fd8f9a1d3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811a10089', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '景甜', '景甜', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/342ac65c10385343773466269113b07eca80883a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811b1008c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '安以轩', '安以轩', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8ad4b31c8701a18bfb4ab1419c2f07082838fe1f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811b7008d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林依晨', '林依晨', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/ac4bd11373f08202d361c03749fbfbedaa641bc2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811bd008e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '全智贤', '全智贤', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b21c8701a18b87d6e50bcf1e050828381f30fd62.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811c4008f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王珞丹', '王珞丹', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/10dfa9ec8a136327ec7f6c32938fa0ec08fac725.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811cf0091', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周秀娜', '周秀娜', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/4b90f603738da977a310d822b251f8198618e3f8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811d50092', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林志玲', '林志玲', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/3801213fb80e7becbf87a4e02d2eb9389b506b56.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811da0093', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '谢娜', '谢娜', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d833c895d143ad4b59b711c880025aafa40f0618.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811e80095', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '朱茵', '朱茵', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513dbf55cfd73f6d55fbb2fbd938.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811ee0096', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '高圆圆', '高圆圆', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/6c224f4a20a4462365865d639a22720e0cf3d767.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811f30097', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '董洁', '董洁', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/267f9e2f0708283836240716ba99a9014c08f183.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12811f90098', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '杨紫', '杨紫', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/fcfaaf51f3deb48fbb63cdc0f21f3a292df578a1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281206009a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张嘉倪', '张嘉倪', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d53f8794a4c27d1e7aa626cf19d5ad6eddc4383c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128121c009e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周韦彤', '周韦彤', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/b3fb43166d224f4a6f04ae0c0bf790529822d114.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281223009f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘诗诗', '刘诗诗', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/48540923dd54564ee2abe03eb1de9c82d0584fee.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128122a00a0', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张歆艺', '张歆艺', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/6609c93d70cf3bc7c7d09eedd300baa1cc112ada.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128123000a1', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '甘婷婷', '甘婷婷', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/42a98226cffc1e1787194b304890f603738de909.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128123600a2', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘若英', '刘若英', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/91529822720e0cf3aefbbee60846f21fbe09aa9b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128124300a4', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李小璐', '李小璐', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/8ad4b31c8701a18b37b045479c2f07082838fe5b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128124900a5', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赵丽颖', '赵丽颖', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/1f178a82b9014a90ba25c5b7ab773912b31beea5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128124f00a6', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张馨予', '张馨予', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/54fbb2fb43166d221594fc93442309f79152d2d2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128125c00a8', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '佟丽娅', '佟丽娅', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/63d9f2d3572c11df7802df3e612762d0f603c2d8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128126200a9', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '孙俪', '孙俪', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b64543a98226cffc23204bb3bb014a90f603eaad.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128127400ac', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王珞丹', '王珞丹', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/c9fcc3cec3fdfc03bdd64db6d63f8794a4c22615.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128127a00ad', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赵子琪', '赵子琪', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/c995d143ad4bd113cc51ae3858afa40f4bfb051f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128128100ae', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘羽琦', '刘羽琦', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/03087bf40ad162d98b76fd1213dfa9ec8a13cd20.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128128600af', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '杨幂', '杨幂', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/8326cffc1e178a82379638a1f403738da977e80d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12812b200b6', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '4minute', '4minute', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/2e2eb9389b504fc2c239e904e7dde71190ef6d48.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12812be00b8', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '苗圃', '苗圃', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/a6efce1b9d16fdfae41ab1f0b68f8c5494ee7bbd.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12812c900ba', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '何洁', '何洁', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8601a18b87d6277fe2109f362a381f30e924fcba.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12812d000bb', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '霍思燕', '霍思燕', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/aa18972bd40735fa4cff4da49c510fb30f24089b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12812e200be', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '范冰冰', '范冰冰', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/adaf2edda3cc7cd99ec165db3b01213fb90e91c7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12812ee00c0', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '刘涛', '刘涛', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/37d3d539b6003af37e9cff69372ac65c1038b690.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128130000c3', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金莎', '金莎', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/562c11dfa9ec8a133717b6e7f503918fa0ecc0ac.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128130500c4', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '黄圣依', '黄圣依', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9178f49ae3ecb3d70cf3bc7576b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128131800c7', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '马苏', '马苏', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/30adcbef76094b362a86c3eca1cc7cd98d109d9f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128131e00c8', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '柳岩', '柳岩', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/aa64034f78f0f736d48003090855b319ebc413bf.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128132300c9', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '汤唯', '汤唯', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/d62a6059252dd42a6e9d3ea1013b5bb5c9eab827.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128132a00ca', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赵奕欢', '赵奕欢', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/54fbb2fb43166d2252383997442309f79052d261.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128132f00cb', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '古力娜扎', '古力娜扎', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/18d8bc3eb13533fa2458a127aad3fd1f40345bc8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128133500cc', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周迅', '周迅', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/0b7b02087bf40ad14082f2fd552c11dfa9ecce4d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128133b00cd', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '安以轩', '安以轩', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/0dd7912397dda1442416b8afb0b7d0a20cf48694.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128134200ce', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈乔恩', '陈乔恩', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/b812c8fcc3cec3fd8f33c47dd488d43f879427ac.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128134e00d0', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '徐若瑄', '徐若瑄', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/902397dda144ad34ce1e6685d2a20cf431ad850b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128135500d1', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林青霞', '林青霞', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/730e0cf3d7ca7bcb344cf027bc096b63f624a886.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128135b00d2', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'by2', 'by2', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6d81800a19d8bc3ee2436bc3808ba61ea8d3456b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128136200d3', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '蔡卓妍', '蔡卓妍', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/00e93901213fb80ec1f196c934d12f2eb9389488.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128136800d4', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '伊能静', '伊能静', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/a71ea8d3fd1f4134e9f70474271f95cad0c85ef3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128136e00d5', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '官恩娜', '官恩娜', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/91ef76c6a7efce1bf062e3c0ad51f3deb48f656a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128137400d6', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '梁静茹', '梁静茹', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/e824b899a9014c08892028b8087b02087bf4f490.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128137a00d7', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王心凌', '王心凌', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/c2cec3fdfc039245534492068594a4c27c1e25c1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128138000d8', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王祖贤', '王祖贤', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/342ac65c10385343606377239113b07eca808800.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128138600d9', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'Hebe', 'Hebe', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/63d0f703918fa0ec1d324913249759ee3d6ddb32.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128138d00da', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '佘诗曼', '佘诗曼', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d000baa1cd11728bef8fa520cafcc3cec3fd2c15.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128139700dc', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '钟欣桐', '钟欣桐', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/18d8bc3eb13533fa729e1b29aad3fd1f41345b89.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813b700e1', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '章子怡', '章子怡', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/1f178a82b9014a90ff388ab5ab773912b31beeb0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813be00e2', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李玟', '李玟', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/4afbfbedab64034fefc9ab08adc379310a551db3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813c800e4', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈嘉桦', '陈嘉桦', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/63d0f703918fa0ec2e085604249759ee3c6ddbef.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813ce00e5', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王菲', '王菲', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/3801213fb80e7bec0b0628ea2d2eb9389a506bd8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813d400e6', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '桂纶镁', '桂纶镁', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/c2fdfc039245d688fd3d24aaa6c27d1ed21b2484.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813e400e9', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '蔡依林', '蔡依林', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/a08b87d6277f9e2fbc4d72151d30e924b899f3b7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813ea00ea', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赵雅芝', '赵雅芝', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7ef57b06c3bfffaaf51f3de661d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813f000eb', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '徐熙媛', '徐熙媛', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6c224f4a20a4462312738e6a9a22720e0cf3d778.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12813f700ec', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈静', '陈静', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/1e30e924b899a9012c0fd52b1f950a7b0208f5f1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128140300ee', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周慧敏', '周慧敏', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/0823dd54564e92584405bef09e82d158ccbf4efe.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128140f00f0', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '杨丞琳', '杨丞琳', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/a8773912b31bb051485bde36347adab44aede0b5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128141600f1', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郑秀文', '郑秀文', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb43168d021a7222a4462309f7d39d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128142c00f4', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金泰熙', '金泰熙', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9e3df8dcd100baa189270cb34510b912c8fc2eaa.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128143200f5', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '少女时代', '少女时代', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d833c895d143ad4bf18ab9c180025aafa40f060e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128143d00f7', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林允儿', '林允儿', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/d000baa1cd11728b9eb25220cafcc3cec3fd2c11.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128144800f9', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '宋慧乔', '宋慧乔', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/34fae6cd7b899e5141b89a1c40a7d933c8950d87.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128145500fb', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '苍井优', '苍井优', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/5882b2b7d0a20cf4906905d874094b36acaf9938.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128146b00ff', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金泫雅', '金泫雅', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d62a6059252dd42abfc68e53023b5bb5c8eab87f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814760101', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林志颖', '林志颖', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/d0c8a786c9177f3e0eb8980572cf3bc79f3d562d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128147c0102', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郑嘉颖', '郑嘉颖', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/1f178a82b9014a90690210bcab773912b31beef7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814880104', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '杜淳', '杜淳', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/aa18972bd40735fa982319bb9c510fb30e2408e4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814940106', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '唐禹哲', '唐禹哲', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/6609c93d70cf3bc70807dff1d300baa1cd112aa3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814a10108', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴尊', '吴尊', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/060828381f30e9244841803b4e086e061c95f7d7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814a60109', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '汪东城', '汪东城', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/472309f7905298227ed53ccbd5ca7bcb0b46d4d7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814bb010c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '王力宏', '王力宏', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/8326cffc1e178a82f3d1fcadf403738da877e8ca.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814d90111', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '佟大为', '佟大为', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/ae51f3deb48f8c54c483b13238292df5e0fe7f5e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814e00112', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴彦祖', '吴彦祖', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/c9fcc3cec3fdfc03fca68ab6d63f8794a5c226e5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814f40115', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'EXO', 'EXO', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/3b87e950352ac65c5e8c4370f9f2b21193138a23.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12814fa0116', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '俞灏明', '俞灏明', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/37d3d539b6003af3edbb6a7e372ac65c1038b6af.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128150c0119', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '付辛博', '付辛博', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/738b4710b912c8fc1a9c2dc5fe039245d688214f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281535011e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张杰', '张杰', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b7fd5266d01609244ef2601ad60735fae7cd34d8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128153c011f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '宋承宪', '宋承宪', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d1a20cf431adcbef7eb82219aeaf2edda3cc9f24.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815470121', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '辰亦儒', '辰亦儒', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/c83d70cf3bc79f3d3fce2938b8a1cd11728b298f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815540123', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林峰', '林峰', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/bd315c6034a85edf97fd4a224b540923dd5475b9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128155a0124', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '孙坚', '孙坚', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4a36acaf2edda3cc6f40ee2803e93901213f9215.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815600125', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '明道', '明道', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/b7003af33a87e95033ce906812385343faf2b4dc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815660126', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '冯绍峰', '冯绍峰', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/f9198618367adab4a765314189d4b31c8701e47f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128156c0127', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '乔振宇', '乔振宇', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/a50f4bfbfbedab64442ed3ddf536afc379311e4a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815710128', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周渝民', '周渝民', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/728da9773912b31b5955e6218418367adab4e1f9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815770129', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴秀波', '吴秀波', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b21c8701a18b87d6ee8ed41d050828381e30fde0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281595012e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '钟汉良', '钟汉良', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/f9198618367adab446d32e4189d4b31c8701e4b4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815a10130', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '魏晨', '魏晨', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/64380cd7912397dd7f4126055b82b2b7d0a287f3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815b20133', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '罗志祥', '罗志祥', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/08f790529822720e1cd3faf279cb0a46f21fab9c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815ba0134', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '贺军翔', '贺军翔', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8435e5dde71190ef5ae1fbd1cc1b9d16fdfa60a1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815c10135', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '五月天', '五月天', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/9a504fc2d5628535ea91912692ef76c6a7ef6347.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815c70136', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '黄宗泽', '黄宗泽', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/0e2442a7d933c895455df972d31373f082020093.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815cd0137', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '何晟铭', '何晟铭', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/060828381f30e924903a582c4e086e061d95f715.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815d80139', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金厉旭', '金厉旭', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/9a504fc2d5628535cfbabc2f92ef76c6a7ef6361.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815de013a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '朴施厚', '朴施厚', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9e3df8dcd100baa1e9fdecb94510b912c9fc2eda.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815e3013b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张翰', '张翰', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/0e2442a7d933c895714ee579d31373f0820200fb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815f4013e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '柯震东', '柯震东', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/5d6034a85edf8db15ec24e6d0b23dd54574e74ce.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12815f9013f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '邓超', '邓超', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb4316c5cdc26422a4462308f7d3da.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816030141', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '朴有天', '朴有天', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/c75c10385343fbf224135822b27eca8065388ff0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816090142', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '彭于晏', '彭于晏', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15cec0b5b50bb4003af33a87b25d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816140144', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '胡歌', '胡歌', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513d9bb92bc33f6d55fbb2fbd998.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816200146', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金钟仁', '金钟仁', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/f603918fa0ec08fa1650c1ab5bee3d6d55fbda6e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816260147', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈冠希', '陈冠希', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/c75c10385343fbf211852d24b27eca8065388f08.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816320149', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李东海', '李东海', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/11385343fbf2b211c845b747c88065380cd78e4b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281638014a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金希澈', '金希澈', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9c16fdfaaf51f3de9189e66d96eef01f3a2979fb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128163e014b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '苏有朋', '苏有朋', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7ef11783626fffaaf51f3de6650.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281644014c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈楚生', '陈楚生', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d3de11cc05950a304e251f58fb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128164a014d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郭富城', '郭富城', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/b3119313b07eca803bc00bee932397dda04483f5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128165c0150', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '鹿晗', '鹿晗', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/bf096b63f6246b60cec30377e9f81a4c500fa2e0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816640151', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '邓超', '邓超', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d6ca7bcb0a46f21f134dfe5df4246b600c33ae47.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128166a0152', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '乔振宇', '乔振宇', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dcb595e69fcf11728b47102817.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816720153', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '俞灏明', '俞灏明', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc8bd3dc8fcf11728b461028c5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128167d0155', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴秀波', '吴秀波', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/cf1b9d16fdfaaf51640543bd8e5494eef11f7aca.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816820156', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴亦凡', '吴亦凡', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/0e2442a7d933c8954017fa7fd31373f08202004c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816970159', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈翔', '陈翔', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/ae51f3deb48f8c5488ff852938292df5e0fe7f83.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128169f015a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '井柏然', '井柏然', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/37d12f2eb9389b5087fe6f558735e5dde7116eb0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816aa015b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '黄晓明', '黄晓明', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/29381f30e924b8996f2418316c061d950a7bf69b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816b5015c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '韩庚', '韩庚', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/377adab44aed2e738ecfba258501a18b87d6fa90.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816c0015d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '付辛博', '付辛博', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/aa18972bd40735faf792b4be9c510fb30f240852.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816ca015e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周渝民', '周渝民', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/cf1b9d16fdfaaf517a50b1a08e5494eef01f7a79.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816d80160', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '佟大为', '佟大为', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7ef8efbd739fffaaf51f2de66cb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816de0161', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '陈楚生', '陈楚生', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/08f790529822720e3a3dd0f379cb0a46f31fabc3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816f60165', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林宥嘉', '林宥嘉', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/5243fbf2b21193134263bbb567380cd791238d97.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12816fb0166', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '唐禹哲', '唐禹哲', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d53f8794a4c27d1e4f623ddb19d5ad6eddc4386c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817000167', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '柯震东', '柯震东', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/d058ccbf6c81800abb09bb07b33533fa838b47ce.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128170b0169', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '潘玮柏', '潘玮柏', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/72f082025aafa40fc1809ec0a964034f78f0196c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281717016b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '罗志祥', '罗志祥', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/21a4462309f79052414d103c0ef3d7ca7bcbd566.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128171d016c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林俊杰', '林俊杰', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/eaf81a4c510fd9f9a803ad69272dd42a2834a49e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281722016d', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '明道', '明道', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/a8773912b31bb051a1b2292f347adab44aede027.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128172e016f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴奇隆', '吴奇隆', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/14ce36d3d539b60000e225b5eb50352ac65cb787.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817330170', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '林志颖', '林志颖', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/03087bf40ad162d9352e0b0313dfa9ec8b13cde9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817390171', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '五月天', '五月天', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/bd3eb13533fa828bf496f4e1ff1f4134970a5a7e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817460173', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '言承旭', '言承旭', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/dbb44aed2e738bd416e5ed31a38b87d6267ff9ee.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128174c0174', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '吴彦祖', '吴彦祖', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31c1ca1d4b285d6277f9e2ff81e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817640178', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郭富城', '郭富城', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/314e251f95cad1c8bc6355297d3e6709c83d51e7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128176a0179', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '炎亚纶', '炎亚纶', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/a686c9177f3e6709ee4ce4e239c79f3df8dc555a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281770017a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'bigbang', 'bigbang', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/3b87e950352ac65c12a00f71f9f2b21193138a0e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128177c017c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '马天宇', '马天宇', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/342ac65c1038534370ed67299113b07eca80889c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817950180', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '古天乐', '古天乐', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/0823dd54564e92589a51e4ea9e82d158ccbf4e48.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128179b0181', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张国荣', '张国荣', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc05155693cf11728b4710288c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817a60183', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '周杰伦', '周杰伦', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9c16fdfaaf51f3ded9a4ae6c96eef01f3a2979a7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817b20185', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '朴正洙', '朴正洙', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/622762d0f703918f57163dc1533d269758eec4f2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817b80186', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金厉旭', '金厉旭', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/9a504fc2d5628535cfbabc2f92ef76c6a7ef6361.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817be0187', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '朴有天', '朴有天', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/64380cd7912397dd71fb340e5b82b2b7d0a2873e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817c40188', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '权志龙', '权志龙', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/574e9258d109b3dee5d2fa69cebf6c81800a4c45.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817cf018a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金希澈', '金希澈', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/b8014a90f603738df6469c2cb11bb051f819ecb4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817d4018b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金俊秀', '金俊秀', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/e824b899a9014c08dfe976b8087b02087af4f4d9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817da018c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李准基', '李准基', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/00e93901213fb80efdcea2d734d12f2eb9389497.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817e6018e', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '张根硕', '张根硕', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/d833c895d143ad4bc7dca7c180025aafa50f06c4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817eb018f', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金贤重', '金贤重', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b03533fa828ba61e654d1f2c4334970a304e5916.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817f10190', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '郑允浩', '郑允浩', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/960a304e251f95cad62708b1cb177f3e660952e2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817f70191', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '曺圭贤', '曺圭贤', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/cb8065380cd791239fedc170af345982b2b780a0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12817fd0192', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '金在中', '金在中', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/279759ee3d6d55fb78972a3b6f224f4a20a4dd5e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12818020193', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'Rain', 'Rain', null, '1403936823039', '0', '0', 'http://g.hiphotos.baidu.com/image/pic/item/eaf81a4c510fd9f9a13eb66e272dd42a2834a488.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128180e0195', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李敏镐', '李敏镐', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/aa18972bd40735faa742e4b89c510fb30f240804.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12818140196', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '东方神起', '东方神起', null, '1403936823039', '0', '0', 'http://c.hiphotos.baidu.com/image/pic/item/cdbf6c81800a19d8be20190b31fa828ba61e4698.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128181a0197', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '崔始源', '崔始源', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/cb8065380cd791238428f470af345982b3b780ed.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12818200198', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '赤西仁', '赤西仁', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/fcfaaf51f3deb48ffd588bd5f21f3a292df57883.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12818270199', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '李东海', '李东海', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/0ff41bd5ad6eddc47a512bf53bdbb6fd5266330d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128184f019a', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '沈昌珉', '沈昌珉', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/09fa513d269759ee706bb1d6b0fb43166d22dff0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281855019b', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', '玄彬', '玄彬', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/c9fcc3cec3fdfc03591829b8d63f8794a4c2264a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12818a2019c', '4028e4e846e0ff610146e0ff78680002', '明星', '明星', 'CNBLUE', 'CNBLUE', null, '1403936823039', '0', '0', 'http://a.hiphotos.baidu.com/image/pic/item/fd039245d688d43f87bb69f27f1ed21b0ef43b9b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281bc8019e', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '小清新', '小清新', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/10dfa9ec8a1363275b1007da938fa0ec09fac75e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281bf5019f', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '甜素纯', '甜素纯', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/91ef76c6a7efce1b1ae9f92fad51f3deb58f6510.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281bfd01a0', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '足球宝贝', '足球宝贝', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/a8ec8a13632762d0700432bba2ec08fa513dc6f8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c0701a1', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '清纯', '清纯', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/4034970a304e251fd4e0a570a586c9177f3e5326.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c0f01a2', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '校花', '校花', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/b7003af33a87e95025848ac912385343faf2b487.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c1c01a3', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '网络美女', '网络美女', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c6ee4d8ecd9f16fdfaae5167bc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c2401a4', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '唯美', '唯美', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d4628535e5dde711d7633610a5efce1b9c1661a6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c2c01a5', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '气质', '气质', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/29381f30e924b899818dbebd6c061d950b7bf686.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c3701a6', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '嫩萝莉', '嫩萝莉', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/0b46f21fbe096b63c4af79b40e338744eaf8ac9b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c4301a7', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '长发', '长发', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/503d269759ee3d6d173f422241166d224e4ade5a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c5201a8', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '可爱', '可爱', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/42166d224f4a20a40155f84e92529822730ed0f4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c5c01a9', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '素颜', '素颜', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/dc54564e9258d10932eabe39d358ccbf6c814d2b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c6601aa', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '非主流', '非主流', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9c16fdfaaf51f3de18046f6096eef01f3a297904.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c6f01ab', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '短发', '短发', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/58ee3d6d55fbb2fb3f1dd5fa4d4a20a44623dc20.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281c7901ac', '4028e4e846e0ff610146e0ff788c0004', '美女', '美女', '高雅大气很有范', '高雅大气很有范', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb4316aecc3df722a4462308f7d368.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281fb001ad', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '明星人物', '明星人物', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/caef76094b36acaf6df692fd7ed98d1001e99c98.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281fbe01ae', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '美食诱惑', '美食诱惑', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/e1fe9925bc315c60d969f2ee8fb1cb1349547737.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281fcc01af', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '炫丽多彩', '炫丽多彩', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/b3fb43166d224f4a0b074a190bf790529822d119.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281fd501b0', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '浪漫爱情', '浪漫爱情', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/9f2f070828381f30632336adab014c086e06f0f8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281fde01b1', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '名车', '名车', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/cb8065380cd79123dcd4bc35af345982b2b780be.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281fe701b2', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '动物宠物', '动物宠物', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/279759ee3d6d55fba4ef5e676f224f4a20a4dd41.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1281ffd01b3', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '游戏动漫', '游戏动漫', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128200601b4', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '卡通', '卡通', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128201401b5', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '创意壁纸', '创意壁纸', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128202101b6', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '军事', '军事', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/562c11dfa9ec8a137fe56ee0f503918fa0ecc036.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128202901b7', '4028e4e846e0ff610146e0ff78990005', '壁纸', '壁纸', '手绘素描', '手绘素描', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/63d9f2d3572c11dfa0389762612762d0f603c281.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128210201b9', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '脑残对话', '脑残对话', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/962bd40735fae6cd352d0d390db30f2443a70fc8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128210c01ba', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '搞笑牛人', '搞笑牛人', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/a9d3fd1f4134970aa8e13eba97cad1c8a6865d90.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128211401bb', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '神吐槽', '神吐槽', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/aec379310a55b3192a898fe741a98226cffc172b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128211c01bc', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '百思不得姐', '百思不得姐', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/35a85edf8db1cb138011ddfadf54564e93584bdb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128212801bd', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '搞笑动物', '搞笑动物', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/2f738bd4b31c8701833d6870257f9e2f0608ff99.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128213001be', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '没品图', '没品图', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/e7cd7b899e510fb399170c04db33c895d1430c12.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128213901bf', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '熊孩子', '熊孩子', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/55e736d12f2eb938e9864078d7628535e4dd6f54.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128214101c0', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '暴走漫画', '暴走漫画', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/b21c8701a18b87d6a7f40d4f050828381f30fd28.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128214801c1', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '2B青年', '2B青年', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/0b7b02087bf40ad10e0044b9552c11dfa8ecce80.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12821b601c2', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '萌死你不偿命', '萌死你不偿命', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4b90f603738da977420639c2b251f8198618e32a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12821be01c3', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '哈哈搞笑', '哈哈搞笑', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/4a36acaf2edda3cc916f042403e93901213f922f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12821c601c4', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '神回复', '神回复', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/ae51f3deb48f8c5428c6258538292df5e0fe7f07.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128222001c5', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', 'ps大神', 'ps大神', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/f11f3a292df5e0fecd8cfe035e6034a85edf721f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128222901c6', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '搞笑漫画', '搞笑漫画', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/1b4c510fd9f9d72a81fe4982d62a2834359bbb93.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128223101c7', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '创意趣图', '创意趣图', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/fd039245d688d43ffbbaf57d7f1ed21b0ef43b29.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128223b01c8', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '爆笑瞬间', '爆笑瞬间', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/8b13632762d0f7034442f6770afa513d2797c5ad.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128224501c9', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '错觉', '错觉', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/024f78f0f736afc38a9909e0b119ebc4b6451299.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128224d01ca', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '猎奇', '猎奇', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d788d43f8794a4c22033a0930cf41bd5ad6e3971.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128225701cb', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '糗事', '糗事', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/79f0f736afc379315d7c1385e9c4b74543a91101.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128225f01cc', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '碉堡', '碉堡', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/6f061d950a7b02087a7215ef60d9f2d3572cc800.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128226801cd', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '囧事集', '囧事集', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/9f510fb30f2442a7f7af7055d343ad4bd0130298.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128226f01ce', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '另类', '另类', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/2cf5e0fe9925bc31f339dd915cdf8db1cb137057.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128227701cf', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '喵星人', '喵星人', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7ef515a7627fffaaf51f3de66b7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128227f01d0', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '搞笑汽车', '搞笑汽车', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/060828381f30e9242475d42c4e086e061c95f7de.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128228601d1', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '雷人恶搞', '雷人恶搞', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/bba1cd11728b4710722c3229c1cec3fdfd0323d0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128228e01d2', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '山寨', '山寨', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/55e736d12f2eb938c99a60f8d7628535e4dd6fc0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128229601d3', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '我和我的小伙伴都惊呆了！', '我和我的小伙伴都惊呆了！', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8cb1cb1349540923817a157c9058d109b3de49a4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128229e01d4', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '搞笑人物', '搞笑人物', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/10dfa9ec8a136327f3466f2c938fa0ec08fac702.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822a501d5', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '冷笑话', '冷笑话', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/241f95cad1c8a7864f9f4de46509c93d71cf50a6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822ae01d6', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '标语招牌', '标语招牌', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/e850352ac65c1038dc152bcbb0119313b07e8954.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822b601d7', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '找亮点', '找亮点', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/d31b0ef41bd5ad6e0784ab0f83cb39dbb7fd3cd2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822be01d8', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '神感悟', '神感悟', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/f9198618367adab45309dd3289d4b31c8601e4e2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822c601d9', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '微段子', '微段子', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/c83d70cf3bc79f3d972881bfb8a1cd11738b2977.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822ce01da', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '搞笑明星', '搞笑明星', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/f7246b600c338744448d8363530fd9f9d72aa061.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12822d501db', '4028e4e846e0ff610146e0ff78a00006', '搞笑', '搞笑', '文字截图', '文字截图', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/2cf5e0fe9925bc3109d777785cdf8db1ca137043.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128251a01dd', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '冷先森漫画', '冷先森漫画', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b2de9c82d158ccbfb9ea523e1bd8bc3eb1354164.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128252501de', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '绿豆蛙', '绿豆蛙', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/77c6a7efce1b9d16a3ef81eef1deb48f8c546410.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128257c01df', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '鸡小德职场大乱斗', '鸡小德职场大乱斗', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/314e251f95cad1c828aae1a87d3e6709c93d512f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128258301e0', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '扑克兔', '扑克兔', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/a8ec8a13632762d0f536b944a2ec08fa503dc6c4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128258a01e1', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '脱线城市', '脱线城市', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/63d0f703918fa0ec5071848a249759ee3c6ddb87.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128259001e2', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '请叫我小纯洁', '请叫我小纯洁', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/83025aafa40f4bfb393a85db014f78f0f6361852.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128259701e3', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '动画制作ING', '动画制作ING', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d50735fae6cd7b89b687b5050d2442a7d8330e48.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128259e01e4', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '郭斯特', '郭斯特', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/91529822720e0cf3ce135e740846f21fbf09aa5c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825a601e5', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '麦拉风 婚后80', '麦拉风 婚后80', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/b3119313b07eca8025d92968932397dda0448364.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825ad01e6', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '一般不扯淡', '一般不扯淡', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/5366d0160924ab182015f2b837fae6cd7b890b39.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825b401e7', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '囧学堂', '囧学堂', null, '1403936823039', '0', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb4316648763f522a4462308f7d3a0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825bc01e8', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '小破孩傻笑', '小破孩傻笑', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9213b07eca80653830c1bb9c95dda144ad348211.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825c201e9', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '海贼王', '海贼王', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/c83d70cf3bc79f3d3f442939b8a1cd11728b2916.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825c901ea', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '火影忍者', '火影忍者', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/f3d3572c11dfa9ec65865b0a60d0f703918fc107.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825d001eb', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '摩丝摩丝', '摩丝摩丝', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/a5c27d1ed21b0ef442f2d4d6dfc451da81cb3e1b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825d701ec', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '天朝羽', '天朝羽', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/279759ee3d6d55fbdb4689aa6f224f4a21a4ddbe.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825dd01ed', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '刀刀狗', '刀刀狗', null, '1403936823039', '0', '0', 'http://e.hiphotos.baidu.com/image/pic/item/0bd162d9f2d3572c2d3340508813632763d0c36d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825e201ee', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '呆呆', '呆呆', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/63d0f703918fa0ec597b8d83249759ee3c6ddb84.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825e901ef', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '四格', '四格', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/8694a4c27d1ed21b1922a163af6eddc450da3f48.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825ef01f0', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '达达兔', '达达兔', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/d62a6059252dd42a5b01e924013b5bb5c9eab831.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825f601f1', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '日本漫画', '日本漫画', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/8644ebf81a4c510f59ef1c076259252dd42aa580.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12825fd01f2', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '哈咪猫', '哈咪猫', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/a6efce1b9d16fdfa36620766b68f8c5494ee7b28.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128260301f3', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '小矛漫画', '小矛漫画', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/8435e5dde71190efcc4a6942cc1b9d16fcfa60fe.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128260b01f4', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '伟大的安妮', '伟大的安妮', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb43164fd45ce422a4462308f7d360.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128261101f5', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '彼格梨', '彼格梨', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b7003af33a87e950f7605cf012385343fbf2b433.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128261801f6', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '小明', '小明', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/aec379310a55b319feeb53ef41a98226cffc171d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128261f01f7', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '张小盒', '张小盒', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb4316f0cbd7fb22a4462308f7d35f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128262601f8', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '潘潘达', '潘潘达', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/8694a4c27d1ed21b0caed478af6eddc450da3fc3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128262d01f9', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '谨斯里漫画', '谨斯里漫画', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc6425b10ecf11728b47102810.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128263401fa', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '死神', '死神', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/9a504fc2d56285354c1a3b2892ef76c6a6ef63c5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128263b01fb', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '二次元', '二次元', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d52a2834349b033bee5857d017ce36d3d439bdec.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128264101fc', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '妖精的尾巴', '妖精的尾巴', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/43a7d933c895d143977d7e2271f082025aaf07a3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128264801fd', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '手办', '手办', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7efa985be2efffaaf51f3de6612.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128264e01fe', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '名侦探柯南', '名侦探柯南', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d788d43f8794a4c25d7e62710ff41bd5ad6e390e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128265401ff', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '宫崎骏', '宫崎骏', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/cb8065380cd79123bbd89d7daf345982b2b780fa.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128265a0200', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '哆啦A梦', '哆啦A梦', null, '1403936823039', '0', '0', 'http://f.hiphotos.baidu.com/image/pic/item/f7246b600c338744a661e175530fd9f9d72aa017.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826610201', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '动漫美少女', '动漫美少女', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/a9d3fd1f4134970a4d98132497cad1c8a6865dd5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826680202', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '动画', '动画', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d439b6003af33a87440d9b13c45c10385343b553.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128266e0203', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', 'cosplay', 'cosplay', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d01373f082025aaff958da32f9edab64024f1ae4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826740204', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '古风', '古风', null, '1403936823039', '0', '0', 'http://d.hiphotos.baidu.com/image/pic/item/fd039245d688d43fe43fcef87f1ed21b0ef43b21.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826790205', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '原画', '原画', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/738b4710b912c8fc9f6da8d2fe039245d6882116.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128267f0206', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '手绘', '手绘', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/838ba61ea8d3fd1fc1d3a6b5324e251f94ca5f62.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826840207', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '犬夜叉', '犬夜叉', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/d439b6003af33a87ead46d19c45c10385343b573.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128268a0208', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '银魂', '银魂', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/9d82d158ccbf6c813f7cf0e1be3eb13533fa4074.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826900209', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '七龙珠', '七龙珠', null, '1403936823039', '0', '0', 'http://h.hiphotos.baidu.com/image/pic/item/cefc1e178a82b901bde4fc3b718da9773912ef69.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282696020a', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '场景', '场景', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/d058ccbf6c81800af8b67403b33533fa828b4768.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128269d020b', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '神奇宝贝', '神奇宝贝', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/4e4a20a4462309f7e81c5a0f700e0cf3d7cad6b8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826a3020c', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '魔兽世界', '魔兽世界', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15ce3e3d9b17b4003af33b87b2d8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826aa020d', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '高达', '高达', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d52a2834349b033bdc4105d317ce36d3d439bdea.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826b1020e', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '圣斗士', '圣斗士', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9922720e0cf3d7ca869f486bf01fbe096b63a946.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12826b8020f', '4028e4e846e0ff610146e0ff78b00008', '动漫', '动漫', '生化危机', '生化危机', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/f31fbe096b63f624a49c7a098544ebf81b4ca3f3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ac30211', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '巴西', '巴西', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/eaf81a4c510fd9f9ed187283272dd42a2934a4c8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282acb0212', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '马尔代夫', '马尔代夫', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/c75c10385343fbf2a706df5cb27eca8065388fa2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ad70213', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '九寨沟', '九寨沟', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/d53f8794a4c27d1e7b6c29c519d5ad6eddc4386c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282aee0216', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '泰国', '泰国', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/42166d224f4a20a4b4954fb892529822730ed0c2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282afb0218', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '巴厘岛', '巴厘岛', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b3b7d0a20cf431adb9ab88564936acaf2edd9860.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b24021c', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '西藏', '西藏', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b999a9014c086e06dfa6514200087bf40ad1cba9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b2b021d', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '云南', '云南', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/37d3d539b6003af361a3160f372ac65c1038b640.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b3e021f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '上海', '上海', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/0eb30f2442a7d9334d1eb372af4bd11373f00178.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b5b0222', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '鼓浪屿', '鼓浪屿', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/5bafa40f4bfbfbed6f272e6b7af0f736afc31fa3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b6b0224', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '济州岛', '济州岛', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/5bafa40f4bfbfbed356650007af0f736afc31f95.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b720225', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '普吉岛', '普吉岛', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/cc11728b4710b912f8bb55f0c1fdfc0392452241.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282b7b0226', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '夏威夷', '夏威夷', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/6d81800a19d8bc3e01d7c8a5808ba61ea9d34586.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282baf022a', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '北京', '北京', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/86d6277f9e2f070898567901eb24b899a901f264.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282bcc022e', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '青岛', '青岛', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4d086e061d950a7b71a4d7a308d162d9f3d3c9c0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282bd3022f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '首尔', '首尔', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b17eca8065380cd784efc592a344ad34588281df.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282be90232', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '大理', '大理', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/58ee3d6d55fbb2fbc426c0754d4a20a44623dc4c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282bf10233', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '厦门', '厦门', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/1e30e924b899a9012301c2511f950a7b0208f5a5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c0b0237', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '重庆', '重庆', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/472309f790529822fdc3a1a4d5ca7bcb0b46d4e1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c120238', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '广州', '广州', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/3bf33a87e950352a68e7bf6f5143fbf2b3118bd7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c190239', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '日本', '日本', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8c1001e93901213f0c40bcdc56e736d12f2e95bb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c38023d', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '威尼斯', '威尼斯', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/b3b7d0a20cf431adb87d8b564936acaf2edd9836.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c3f023e', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '乌镇', '乌镇', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/0823dd54564e9258c0d022e79e82d158cdbf4ed6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c47023f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '罗马', '罗马', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/6c224f4a20a44623f344af1d9a22720e0df3d7c7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c560241', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '尼泊尔', '尼泊尔', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/78310a55b319ebc4540c54988026cffc1e1716be.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c6f0245', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '香港', '香港', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/a2cc7cd98d1001e945eadc60ba0e7bec55e7978f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c750246', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '三亚', '三亚', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9922720e0cf3d7ca3f7df119f01fbe096a63a9d2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c7d0247', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '台湾', '台湾', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/060828381f30e924cd870d384e086e061d95f79c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282c850248', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '丽江', '丽江', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/cc11728b4710b91202f43f91c1fdfc03924522ac.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ca0024b', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '澳门', '澳门', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/9d82d158ccbf6c8103f13c97be3eb13532fa408e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ca9024c', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '成都', '成都', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/3812b31bb051f819dd96982dd8b44aed2e73e722.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282cc90250', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '南京', '南京', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc127947fecf11728b4710281d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282cd20251', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '西安', '西安', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/267f9e2f0708283805b6147bba99a9014c08f122.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ceb0254', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '杭州', '杭州', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6a63f6246b600c33742fbfc9184c510fd9f9a159.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282cf30255', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '苏州', '苏州', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b7fd5266d016092476616874d60735fae6cd341d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282cfb0256', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '张家界', '张家界', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/fcfaaf51f3deb48f183168b1f21f3a292df57801.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d030257', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '青海湖', '青海湖', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/6d81800a19d8bc3e1fcacea5808ba61ea9d3459b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d140259', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '凤凰', '凤凰', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/cdbf6c81800a19d8463a016231fa828ba61e4698.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d1b025a', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '桂林', '桂林', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/9345d688d43f8794750c8041d01b0ef41ad53aea.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d23025b', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '黄山', '黄山', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b151f8198618367ad7f8b4b22c738bd4b31ce568.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d3f025e', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '婺源', '婺源', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/9213b07eca8065386b4b6e7c95dda144ad348238.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d47025f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '武汉', '武汉', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/00e93901213fb80eb5e2fab034d12f2eb93894a2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d4f0260', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '香格里拉', '香格里拉', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/42166d224f4a20a47d84f4a892529822730ed0c3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d560261', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '西双版纳', '西双版纳', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/faf2b2119313b07e72ecc96f0ed7912397dd8c00.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d5e0262', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '呼伦贝尔', '呼伦贝尔', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/5366d0160924ab18a5487f3e37fae6cd7b890b58.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d710264', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '哈尔滨', '哈尔滨', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/4b90f603738da9776f981c4cb251f8198618e326.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282d800265', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '敦煌', '敦煌', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/5243fbf2b2119313079766d767380cd790238d85.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282df60268', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '韩国', '韩国', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/962bd40735fae6cde2fdd61e0db30f2442a70f07.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282e78026b', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '东京', '东京', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/e850352ac65c103830f607adb0119313b17e89d1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282e7f026c', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '北海道', '北海道', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/4034970a304e251f3dfadcf8a586c9177f3e53a4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282e8c026e', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '马来西亚', '马来西亚', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/bf096b63f6246b60f2d7cf0be9f81a4c500fa2f0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282e93026f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '印度', '印度', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/203fb80e7bec54e703176661bb389b504ec26ad1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282e990270', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '新加坡', '新加坡', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b8014a90f603738d100f725db11bb051f819ec0c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ea80272', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '柬埔寨', '柬埔寨', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/500fd9f9d72a6059245f99652a34349b033bba05.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282eae0273', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '斯里兰卡', '斯里兰卡', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/ac4bd11373f08202c56fea4049fbfbedaa641bcb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ebc0275', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '曼谷', '曼谷', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15ce617e2a66b4003af33b87b2c9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ecc0277', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '吉隆坡', '吉隆坡', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/8644ebf81a4c510fc87bed656259252dd42aa515.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ed30278', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '朝鲜', '朝鲜', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d1160924ab18972b44e47bb5e4cd7b899f510af6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282eda0279', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '美国', '美国', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/241f95cad1c8a786b8e138716509c93d71cf5081.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ee3027a', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '澳大利亚', '澳大利亚', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/241f95cad1c8a786a63836716509c93d70cf50ba.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282eea027b', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '德国', '德国', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/fc1f4134970a304e4c15de85d3c8a786c9175c9d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ef1027c', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '英国', '英国', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/bf096b63f6246b60f367c074e9f81a4c510fa241.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282ef8027d', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '法国', '法国', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3801213fb80e7bec65237a9e2d2eb9389a506bd7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282eff027e', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '西班牙', '西班牙', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/0df3d7ca7bcb0a460153f0466963f6246b60af58.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282f0b027f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '加拿大', '加拿大', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/bd3eb13533fa828bf83cf89cff1f4134970a5ab5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282f190280', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '新西兰', '新西兰', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/0823dd54564e925883c2e3919e82d158cdbf4ede.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282f220281', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '意大利', '意大利', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8b82b9014a90f603b72896383b12b31bb051ed31.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282f470282', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '瑞士', '瑞士', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/0bd162d9f2d3572cc5d9f8a38813632762d0c392.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1282f870283', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '巴黎', '巴黎', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/8c1001e93901213f6b69d3d256e736d12f2e9562.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283080028a', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '建筑', '建筑', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/8326cffc1e178a828de686a9f403738da877e8e5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283088028b', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '日出', '日出', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/10dfa9ec8a13632723c01f3a938fa0ec08fac78e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128308e028c', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '峡谷', '峡谷', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d31b0ef41bd5ad6e208586e783cb39dbb6fd3cbb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283096028d', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '雪山', '雪山', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/d53f8794a4c27d1e303fe0cd19d5ad6eddc4389a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830ac028e', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '温泉', '温泉', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/5366d0160924ab18a65c783e37fae6cd7b890b74.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830b2028f', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '海滩', '海滩', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7ef29253e2ffffaaf51f3de66bc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830b80290', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '自然风光', '自然风光', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/0dd7912397dda144f0ef54bcb0b7d0a20df486dd.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830bf0291', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '人文景观', '人文景观', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/e1fe9925bc315c60f7eb88e28fb1cb1349547745.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830c60292', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '田园风光', '田园风光', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/0df431adcbef76095398f6962cdda3cc7cd99e23.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830cd0293', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '沙漠', '沙漠', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/a5c27d1ed21b0ef4ab5b8f5fdfc451da81cb3e7b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830d30294', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '古镇', '古镇', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6d81800a19d8bc3e2aea23c2808ba61ea9d345d3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12830e70296', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '五一、端午不宅特价汇总', '五一、端午不宅特价汇总', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128310b029b', '4028e4e846e0ff610146e0ff78b70009', '旅游', '旅游', '全年旅行 3元预售', '全年旅行 3元预售', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283366029d', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '风景', '风景', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/0dd7912397dda1445082345fb0b7d0a20df48650.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283370029e', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '婚礼', '婚礼', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/2fdda3cc7cd98d10dc8fa29b233fb80e7aec90c5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128337b029f', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '光影', '光影', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/c2fdfc039245d6884827b751a6c27d1ed21b2419.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128338802a0', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '长曝光', '长曝光', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/29381f30e924b899bf4a48dd6c061d950b7bf6e4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128339702a1', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', 'lomo', 'lomo', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4d086e061d950a7be99e4f7e08d162d9f3d3c9e5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12833e002a2', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '静物', '静物', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b3fb43166d224f4ad20203b10bf790529922d1fd.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12833ef02a3', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '原创', '原创', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513da868f8d43f6d55fbb3fbd9fe.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12833fa02a4', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '光绘', '光绘', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/f3d3572c11dfa9ecfd87d3ef60d0f703908fc199.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128340402a5', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '时尚', '时尚', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/fd039245d688d43fde05d0697f1ed21b0ff43bf8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128341002a6', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '唯美', '唯美', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/ae51f3deb48f8c5427472ede38292df5e1fe7faf.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128341b02a7', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '微距', '微距', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d53f8794a4c27d1e7fdc2d4619d5ad6edcc438bd.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128346102a8', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '人文纪实', '人文纪实', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/30adcbef76094b363fc8ce4ea1cc7cd98d109d3f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128346c02a9', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '国外摄影', '国外摄影', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/3b87e950352ac65c4ed753d0f9f2b21192138a46.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128347702aa', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '婚纱摄影', '婚纱摄影', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/fc1f4134970a304e52e4a869d3c8a786c8175c5a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128348202ab', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '儿童摄影', '儿童摄影', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/472309f79052982248850e60d5ca7bcb0b46d4da.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12834c702ac', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '摄影技巧', '摄影技巧', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/f603918fa0ec08fa8fca76015bee3d6d54fbda4a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12834d602ad', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '国家地理', '国家地理', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/8ad4b31c8701a18b60870c469c2f07082838fe4f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12834f902ae', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '城市建筑', '城市建筑', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/6609c93d70cf3bc78da7545ed300baa1cc112ad8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128350502af', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '生态摄影', '生态摄影', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/14ce36d3d539b6009725964eeb50352ac75cb764.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128351002b0', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '水下摄影', '水下摄影', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/30adcbef76094b36dfd52ee7a1cc7cd98d109d70.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128352002b1', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '创意摄影', '创意摄影', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/5fdf8db1cb134954107a5808544e9258d1094a71.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128352b02b2', '4028e4e846e0ff610146e0ff78bd000a', '摄影', '摄影', '摄影师', '摄影师', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/9f2f070828381f30fafcbdbfab014c086e06f03a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128376602b4', '4028e4e846e0ff610146e0ff78c2000b', '家居', '家居', '风格', '风格', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/9d82d158ccbf6c81aba56473be3eb13532fa409e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12837b902b5', '4028e4e846e0ff610146e0ff78c2000b', '家居', '家居', '空间', '空间', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/64380cd7912397ddb2c0fb845b82b2b7d1a287f0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12837eb02b6', '4028e4e846e0ff610146e0ff78c2000b', '家居', '家居', '物品', '物品', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/ae51f3deb48f8c542d51284938292df5e1fe7fd2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283b0902b8', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '结婚蛋糕', '结婚蛋糕', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/d1160924ab18972bafb0563ce4cd7b899f510ab9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283bf402b9', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '请柬', '请柬', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/cf1b9d16fdfaaf51984e97508e5494eef11f7aab.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283c6502ba', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '喜糖盒', '喜糖盒', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/5366d0160924ab18efb6b1c137fae6cd7a890ba7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283d1b02bb', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '手捧花', '手捧花', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/e850352ac65c103810fae749b0119313b17e89b0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283d8502bc', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚礼甜品', '婚礼甜品', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/960a304e251f95ca9c36ce40cb177f3e66095200.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283e0802bd', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚礼道具', '婚礼道具', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/902397dda144ad34ada0c571d2a20cf431ad852d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283e9b02be', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '户外婚礼', '户外婚礼', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/242dd42a2834349b2cbc786acbea15ce37d3bea2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f1b02bf', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '海滩婚礼', '海滩婚礼', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d35ff74fef950a304e241f5807.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f3002c0', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚礼跟拍', '婚礼跟拍', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/cb8065380cd79123e86c48feaf345982b3b780a8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f3902c1', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '蕾丝', '蕾丝', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/4a36acaf2edda3cc9e1c19d903e93901203f924b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f4202c2', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '头饰', '头饰', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/e824b899a9014c08e69b895c087b02087af4f4a3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f4a02c3', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚鞋', '婚鞋', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/500fd9f9d72a6059c7f3b8f72a34349b023bba78.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f5402c4', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '主题婚礼', '主题婚礼', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/6a600c338744ebf83c6f72d0dbf9d72a6159a7c6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f5c02c5', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚礼灵感', '婚礼灵感', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/574e9258d109b3de6b307ce2cebf6c81810a4ca9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f6502c6', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '真实婚礼', '真实婚礼', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/377adab44aed2e73efc519a68501a18b87d6fa08.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f6c02c7', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚礼布置', '婚礼布置', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/4610b912c8fcc3ce2a1323b99045d688d53f206d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f7402c8', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚纱摄影', '婚纱摄影', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/b3119313b07eca80c764cf1b932397dda04483ed.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f7c02c9', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', 'DIY创意', 'DIY创意', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/dcc451da81cb39db8896c8bfd2160924aa183080.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f8502ca', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚纱礼服', '婚纱礼服', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/9a504fc2d5628535314856c992ef76c6a6ef63aa.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f8c02cb', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '配饰', '配饰', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/8644ebf81a4c510f66bc5b916259252dd52aa5c5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f9302cc', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '婚戒首饰', '婚戒首饰', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d009b3de9c82d1586b7f934b820a19d8bd3e424f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1283f9a02cd', '4028e4e846e0ff610146e0ff78ca000c', '婚嫁', '婚嫁', '新娘妆', '新娘妆', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/5fdf8db1cb134954d54f1f98544e9258d0094afd.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128427202cf', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '酷站欣赏', '酷站欣赏', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/0b7b02087bf40ad19031c2e8552c11dfa8eccee0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128427802d0', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '壁纸设计', '壁纸设计', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/902397dda144ad340c32a493d2a20cf431ad8510.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842a602d1', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'PPT模板', 'PPT模板', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15ce6a852ff3b4003af33b87b2e5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842ad02d2', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '绘画艺术', '绘画艺术', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc8ae4df37cf11728b461028be.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842b402d3', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '平面设计', '平面设计', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/3b292df5e0fe9925727e952936a85edf8db1715d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842bb02d4', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '工业设计', '工业设计', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/6a63f6246b600c334e699556184c510fd9f9a118.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842c102d5', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '室内设计', '室内设计', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/21a4462309f790523d75e4370ef3d7ca7bcbd555.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842d302d6', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '产品设计', '产品设计', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/34fae6cd7b899e513a45a11d40a7d933c9950deb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842dd02d7', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '建筑设计', '建筑设计', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/b64543a98226cffc1a8670aabb014a90f603ea7e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12842f802d8', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '原创设计', '原创设计', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/0df431adcbef7609ea447d842cdda3cc7cd99e5a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128430902d9', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '经典设计', '经典设计', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/6f061d950a7b02088ada25ea60d9f2d3572cc8ae.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128431002da', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '图标', '图标', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/2e2eb9389b504fc2b82b9371e7dde71190ef6d49.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128431a02db', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'GUI', 'GUI', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/8601a18b87d6277f8ef2035c2a381f30e824fcf5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128432502dc', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '插画', '插画', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/96dda144ad34598244bfa6940ef431adcbef84fb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128432e02dd', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '动漫', '动漫', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/060828381f30e92452af86a04e086e061d95f71c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128433802de', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '影视', '影视', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9f510fb30f2442a73c02c9d7d343ad4bd11302b7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128433f02df', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '手工艺', '手工艺', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/5fdf8db1cb1349546adce6f0544e9258d0094a67.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128434602e0', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '纯艺术', '纯艺术', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/562c11dfa9ec8a13084edf99f503918fa0ecc077.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128434d02e1', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '雕塑', '雕塑', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/e61190ef76c6a7ef46c79f27fffaaf51f2de66c9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128435302e2', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '海报', '海报', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/ac4bd11373f08202b5df5a4c49fbfbedab641b70.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128435a02e3', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '包装', '包装', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15ce6f88287ab4003af33a87b25b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128436102e4', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '灵感', '灵感', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/dc54564e9258d109e866d4b3d358ccbf6c814d2d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128436802e5', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '手绘', '手绘', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/5ab5c9ea15ce36d34585713d38f33a87e950b13e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128436f02e6', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'icon', 'icon', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/e850352ac65c1038ea5b5dcbb0119313b07e8996.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128437602e7', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '创意设计', '创意设计', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/279759ee3d6d55fb09293b216f224f4a21a4ddce.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128437e02e8', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'UI', 'UI', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d1a20cf431adcbef5b420f07aeaf2edda3cc9fb8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128438402e9', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'logo', 'logo', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/96dda144ad345982713c799b0ef431adcbef8401.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128438b02ea', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'banner', 'banner', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/0df3d7ca7bcb0a46cba4b6386963f6246b60af28.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128439202eb', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'web', 'web', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/37d3d539b6003af328dfa160372ac65c1038b64c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128439802ec', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', 'APP', 'APP', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/3c6d55fbb2fb431682e0097b22a4462309f7d330.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128439f02ed', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '字体', '字体', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/8d5494eef01f3a292bf86ec49b25bc315c607c83.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843a502ee', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '网页', '网页', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/71cf3bc79f3df8dc60e3b5f5cf11728b461028f3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843ad02ef', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '色彩', '色彩', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/34fae6cd7b899e5172b7691e40a7d933c8950dfa.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843b302f0', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '素材', '素材', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15cebddd1e04b4003af33a87b288.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843b802f1', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '美术绘画', '美术绘画', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/63d0f703918fa0ec50178404249759ee3c6ddbe3.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843bf02f2', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '视觉', '视觉', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/6d81800a19d8bc3e4dfd9cc3808ba61ea9d345c6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843c502f3', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '博物馆', '博物馆', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/3b292df5e0fe9925815e065836a85edf8db17163.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843cc02f4', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '设计素材', '设计素材', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15ce7b2bdc07b4003af33b87b2f2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843d302f5', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '艺术', '艺术', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/0dd7912397dda1447859ccbbb0b7d0a20cf48663.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843d902f6', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '字体设计', '字体设计', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b219ebc4b74543a90be3bccc1c178a82b9011431.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843e002f7', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '排版', '排版', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d058ccbf6c81800a0eb22e03b33533fa828b4763.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12843e602f8', '4028e4e846e0ff610146e0ff78cf000d', '设计', '设计', '配色', '配色', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/267f9e2f07082838da23bb19ba99a9014c08f195.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128458802fa', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '名车', '名车', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da658dcbe2b4fd5266d0163244.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128459202fb', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '北京车展', '北京车展', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e5b949c657fbb2fb4216d8c7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128459902fc', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '汽车图解', '汽车图解', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/b812c8fcc3cec3fd7a4cd10bd488d43f87942759.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845a002fd', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '高清壁纸', '高清壁纸', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/0e2442a7d933c8958e88240cd31373f0830200d6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845a802fe', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '自主品牌', '自主品牌', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/0d338744ebf81a4c8085a0a2d52a6059252da622.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845b302ff', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '跑车', '跑车', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/a686c9177f3e67092279a0f739c79f3df8dc55b9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845ba0300', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '法拉利', '法拉利', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/2f738bd4b31c8701999a5ee1257f9e2f0708ff8d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845c00301', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '10万以下的车', '10万以下的车', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/48540923dd54564ea979b76db1de9c82d1584f41.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845c80302', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '玛莎拉蒂', '玛莎拉蒂', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/dbb44aed2e738bd4372c0c39a38b87d6277ff9ad.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845cf0303', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '汽车点评', '汽车点评', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3812b31bb051f81917a64e1ed8b44aed2f73e7e7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845d40304', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '兰博基尼', '兰博基尼', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/d009b3de9c82d158088d8ebd820a19d8bc3e42ab.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845da0305', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '豪车', '豪车', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9d82d158ccbf6c81350beae1be3eb13533fa40ff.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845e00306', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '70万以上的车', '70万以上的车', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b3119313b07eca809cb160b3932397dda144832a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845e70307', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '宝马', '宝马', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/4610b912c8fcc3ce4892c1399045d688d43f206d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845ed0308', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '小型车', '小型车', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/6d81800a19d8bc3e9ea74fc3808ba61ea8d3450f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845f60309', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '中型车', '中型车', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6f061d950a7b0208b8f3579f60d9f2d3572cc892.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12845fc030a', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', 'SUV越野车', 'SUV越野车', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/4610b912c8fcc3cefc7575449045d688d43f200b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284602030b', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '保时捷', '保时捷', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/d833c895d143ad4b29d781c980025aafa40f063a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284608030c', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '奥迪', '奥迪', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/00e93901213fb80e3b7f68dd34d12f2eb9389409.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128460d030d', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '老爷车', '老爷车', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/9f510fb30f2442a71eeed7aed343ad4bd01302dc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284613030e', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '概念车', '概念车', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/a686c9177f3e6709282caaf839c79f3df8dc558d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284619030f', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '奔驰', '奔驰', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/359b033b5bb5c9ea776bc5ead739b6003af3b31b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128461f0310', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '阿斯顿.马丁', '阿斯顿.马丁', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/80cb39dbb6fd52665bc84619a918972bd50736df.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12846250311', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '摩托', '摩托', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/810a19d8bc3eb135f02c6ba0a41ea8d3fc1f44c6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128462b0312', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '广州车展', '广州车展', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/9213b07eca806538dd50046495dda144ad34820b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12846310313', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '上海车展', '上海车展', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/d01373f082025aafea9debbcf9edab64034f1a1d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12846370314', '4028e4e846e0ff610146e0ff78e80011', '汽车', '汽车', '成都车展', '成都车展', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/f9198618367adab4333fbd3489d4b31c8601e4de.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12846530315', '4028e4e846e0ff610146e0ff78ee0012', '真人秀场', '真人秀场', '全部', '全部', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128465b0316', '4028e4e846e0ff610146e0ff78ee0012', '真人秀场', '真人秀场', '超星', '超星', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12846610317', '4028e4e846e0ff610146e0ff78ee0012', '真人秀场', '真人秀场', '巨星', '巨星', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12846680318', '4028e4e846e0ff610146e0ff78ee0012', '真人秀场', '真人秀场', '红星', '红星', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128466f0319', '4028e4e846e0ff610146e0ff78ee0012', '真人秀场', '真人秀场', '新星', '新星', null, '1403936823039', '1', '0', '');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12848d1031b', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '家常菜', '家常菜', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513dca371aab3f6d55fbb2fbd922.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128490f031c', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '烤箱食谱', '烤箱食谱', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/377adab44aed2e73476ef1598501a18b86d6fac4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284919031d', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '甜品', '甜品', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31c0d4327cd85d6277f9e2ff84d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284924031e', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '舌尖上的中国', '舌尖上的中国', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/5366d0160924ab18e7e9b9ac37fae6cd7a890ba9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128492e031f', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '煲汤', '煲汤', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/7af40ad162d9f2d31af1c651abec8a136227cca8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849380320', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '私家菜', '私家菜', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/8b13632762d0f7038efdacb40afa513d2697c50e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849420321', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '懒人食谱', '懒人食谱', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/024f78f0f736afc3b77a2210b119ebc4b7451254.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128494b0322', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '单身食谱', '单身食谱', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/91ef76c6a7efce1b657c6ebcad51f3deb48f6575.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849540323', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '咖喱', '咖喱', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/9213b07eca8065384e88b51995dda144ad34825d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128495d0324', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '下饭菜', '下饭菜', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/fcfaaf51f3deb48f08ff98b6f21f3a292cf578c7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849660325', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '早餐食谱', '早餐食谱', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/d1a20cf431adcbef53dd077eaeaf2edda2cc9fd8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849700326', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '海鲜', '海鲜', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b21c8701a18b87d63e636417050828381f30fd91.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128497a0327', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '幼儿食谱', '幼儿食谱', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/0e2442a7d933c895754ae90ed31373f08202008a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849820328', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '炒饭', '炒饭', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/a71ea8d3fd1f413454dddf7e271f95cad0c85ecc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128498c0329', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '秋冬进补', '秋冬进补', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/83025aafa40f4bfb33868321014f78f0f7361874.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284995032a', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '炖', '炖', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/37d3d539b6003af3e89c6116372ac65c1038b6a6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128499f032b', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '面点', '面点', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3801213fb80e7bec058b1a942d2eb9389b506b75.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849a9032c', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '清淡', '清淡', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/77094b36acaf2edde1824f9c8f1001e939019357.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849b3032d', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '烘焙', '烘焙', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/7c1ed21b0ef41bd5415e3aeb53da81cb39db3da4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849bc032e', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '瘦身菜肴', '瘦身菜肴', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/fd039245d688d43f787b6afb7f1ed21b0ff43bed.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849c6032f', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '辣', '辣', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/d439b6003af33a875674a91bc45c10385343b592.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849cf0330', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '免烤', '免烤', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/79f0f736afc379318197df28e9c4b74543a91137.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849d80331', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '中华美食', '中华美食', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/10dfa9ec8a136327eb40573a938fa0ec08fac70e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849e20332', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '西餐', '西餐', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/cdbf6c81800a19d8f8a1d70531fa828ba61e460b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849eb0333', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '蛋糕', '蛋糕', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/7af40ad162d9f2d349de17e7abec8a136227ccee.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849f40334', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '小吃', '小吃', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/d0c8a786c9177f3e6de2790472cf3bc79e3d56e0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12849fe0335', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '巧克力', '巧克力', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/cdbf6c81800a19d8091d440531fa828ba61e4690.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a070336', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '下午茶', '下午茶', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/5243fbf2b211931318b071bd67380cd790238dc8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a100337', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '冰淇淋', '冰淇淋', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/b21c8701a18b87d6ac16160c050828381f30fd49.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a1b0338', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '水果', '水果', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/37d3d539b6003af3b758247e372ac65c1138b6ca.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a240339', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '粤菜', '粤菜', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/6c224f4a20a44623f85bd86b9a22720e0cf3d722.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a2d033a', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '菜品', '菜品', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/dbb44aed2e738bd4c4de1f30a38b87d6277ff930.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a36033b', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '蔬菜', '蔬菜', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/1b4c510fd9f9d72af4ca9c14d62a2834349bbb09.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a3f033c', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '意大利面', '意大利面', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/7af40ad162d9f2d3d0038ceeabec8a136327cca5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a49033d', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '糖果', '糖果', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/500fd9f9d72a605951350e172a34349b033bba92.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a53033e', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '饼干', '饼干', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/503d269759ee3d6d0e6a65c641166d224f4ade0b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a68033f', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '自制面包', '自制面包', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/e824b899a9014c083af8d5ac087b02087af4f4fc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a720340', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '凉菜', '凉菜', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/5ab5c9ea15ce36d3e76e933238f33a87e950b14d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a7b0341', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '主食', '主食', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/fd039245d688d43f828f6cfb7f1ed21b0ef43b90.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284a850342', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '汤羹', '汤羹', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/e850352ac65c1038ee7159cbb0119313b07e89a8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284aa70343', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '油炸', '油炸', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9922720e0cf3d7caf6d7b87ff01fbe096b63a992.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ab20344', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '吃货', '吃货', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/cc11728b4710b9120a0dc7fec1fdfc03934522e5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284abb0345', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '餐厅', '餐厅', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/ac4bd11373f0820228f1df3249fbfbedab641b5f.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ac50346', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '食物原料', '食物原料', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/342ac65c1038534354c703289113b07eca8088ab.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284acf0347', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '餐具厨具', '餐具厨具', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/500fd9f9d72a6059f00dad172a34349b033bba9a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ad90348', '4028e4e846e0ff610146e0ff78f50013', '美食', '美食', '饮料酒水', '饮料酒水', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/94cad1c8a786c917ab6d8234cb3d70cf3bc75755.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284caf034a', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '喵星人', '喵星人', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/35a85edf8db1cb13727d6bb6df54564e92584b7a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cb8034b', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '萌宠', '萌宠', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/a5c27d1ed21b0ef41b8c7ff4dfc451da81cb3e37.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cc0034c', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '狗狗', '狗狗', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c6a2384a4c9f16fdfaae5167ea.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cc7034d', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '猫叔', '猫叔', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/b7003af33a87e9505c53358f12385343faf2b489.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cd3034e', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '哈士奇', '哈士奇', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/7dd98d1001e93901d34130a379ec54e737d196e8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cde034f', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '宠物鼠', '宠物鼠', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/aec379310a55b319dd13747841a98226cefc17d0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cf00350', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '萨摩耶', '萨摩耶', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/54fbb2fb43166d22ee8fb5fc442309f79152d2da.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284cf80351', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '泰迪', '泰迪', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/b3fb43166d224f4a1c17bd0c0bf790529822d127.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284d010352', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '博美', '博美', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/50da81cb39dbb6fd58241f240b24ab18972b37b0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284d080353', '4028e4e846e0ff610146e0ff78fb0014', '宠物', '宠物', '金毛', '金毛', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/0df3d7ca7bcb0a46483139306963f6246b60afac.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284e600355', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '化妆造型', '化妆造型', null, '1403936823039', '1', '0', 'http://h.hiphotos.baidu.com/image/pic/item/060828381f30e9244735b3934e086e061c95f7fb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284e690356', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '潮流彩妆', '潮流彩妆', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/37d12f2eb9389b509184712f8735e5dde7116e50.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284e730357', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '护肤保养', '护肤保养', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/6a63f6246b600c3324704fb5184c510fd9f9a146.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284e800358', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '明星造型', '明星造型', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697d3d69b2057fbb2fb4316d842.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284e8d0359', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '卸妆', '卸妆', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/9825bc315c6034a8352fa281c9134954082376e4.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284e9a035a', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '美发', '美发', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/9825bc315c6034a895dd4288c9134954092376f8.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ea1035b', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '眼妆', '眼妆', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/8b13632762d0f7030a5d30d60afa513d2797c5c9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284eaf035c', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '唇妆', '唇妆', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/64380cd7912397dd3bac620d5b82b2b7d1a287e6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284eb8035d', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '美甲', '美甲', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/cf1b9d16fdfaaf517ff9b6bd8e5494eef01f7a9d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ec0035e', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '彩妆', '彩妆', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/2cf5e0fe9925bc319561fb915cdf8db1cb1370ff.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ecb035f', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '耳环', '耳环', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/8435e5dde71190ef230c94dfcc1b9d16fdfa603e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ed20360', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '手表', '手表', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/95eef01f3a292df5ae1bde1cbe315c6035a873da.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ed80361', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '美白', '美白', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/503d269759ee3d6dd34b1eb641166d224f4ade3a.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ee00362', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '新娘妆', '新娘妆', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/0df3d7ca7bcb0a4682086f306963f6246b60af95.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ee60363', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '护肤', '护肤', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/314e251f95cad1c84e61072e7d3e6709c83d51e5.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284eed0364', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '美容', '美容', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/10dfa9ec8a1363273858383a938fa0ec08fac706.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284ef40365', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '美体', '美体', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/810a19d8bc3eb13537a12ac6a41ea8d3fd1f446c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284efb0366', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '香水', '香水', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/d000baa1cd11728bb1f3772bcafcc3cec2fd2cd9.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284f020367', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '美妆工具', '美妆工具', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/d439b6003af33a8765dcfa13c45c10385343b502.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284f080368', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '发饰', '发饰', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/8b13632762d0f7036b6e91dc0afa513d2797c5d6.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284f0f0369', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '戒指', '戒指', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/4a36acaf2edda3cc3e0db92003e93901203f92c0.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284f15036a', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '发型', '发型', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/3812b31bb051f819e7ec9e37d8b44aed2f73e786.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284f1b036b', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '化妆品评测', '化妆品评测', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/b219ebc4b74543a9df0050b11c178a82b90114b7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1284f23036c', '4028e4e846e0ff610146e0ff79000015', '美妆', '美妆', '化妆技巧', '化妆技巧', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/21a4462309f7905203d9d2430ef3d7ca7acbd58d.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1285099036e', '4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '刺绣', '刺绣', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9e3df8dcd100baa158ba5fc44510b912c8fc2e3e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12850a2036f', '4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '纸艺', '纸艺', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/e7cd7b899e510fb32f86869adb33c895d1430c1b.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12850ab0370', '4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '折纸/剪纸', '折纸/剪纸', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/8601a18b87d6277fa443ddd32a381f30e824fc8c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12850b50371', '4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '手工布艺', '手工布艺', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/500fd9f9d72a60591b6bc4fe2a34349b023bbade.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12850bf0372', '4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '旧物改造', '旧物改造', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/a044ad345982b2b7bc050d5833adcbef77099b97.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12850c90373', '4028e4e846e0ff610146e0ff79060016', 'DIY', 'DIY', '废物利用', '废物利用', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/c2fdfc039245d688f6d22dada6c27d1ed31b24e2.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12852350375', '4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '野生动物', '野生动物', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/574e9258d109b3de74536d61cebf6c81810a4ccf.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128523f0376', '4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '昆虫', '昆虫', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/810a19d8bc3eb13570ecebbba41ea8d3fd1f4482.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12852490377', '4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '鸟类', '鸟类', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/d439b6003af33a8747859813c45c10385243b5cb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12852510378', '4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '海洋生物', '海洋生物', null, '1403936823039', '1', '0', 'http://g.hiphotos.baidu.com/image/pic/item/a50f4bfbfbedab644d3fdcc1f536afc379311e65.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128525a0379', '4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '鱼类', '鱼类', null, '1403936823039', '1', '0', 'http://f.hiphotos.baidu.com/image/pic/item/9345d688d43f8794298c3c2fd01b0ef41bd53abb.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e1285263037a', '4028e4e846e0ff610146e0ff790c0017', '动物', '动物', '家禽家畜', '家禽家畜', null, '1403936823039', '1', '0', 'http://c.hiphotos.baidu.com/image/pic/item/d8f9d72a6059252d76d4850d369b033b5ab5b9fc.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12853bb037c', '4028e4e846e0ff610146e0ff79110018', '植物', '植物', '树木树叶', '树木树叶', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/eaf81a4c510fd9f96e2df360272dd42a2834a485.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12853c3037d', '4028e4e846e0ff610146e0ff79110018', '植物', '植物', '花卉', '花卉', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/b999a9014c086e06455fcf5600087bf40ad1cb3c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12853cb037e', '4028e4e846e0ff610146e0ff79110018', '植物', '植物', '花草', '花草', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/7acb0a46f21fbe09201d0e1d69600c338744ad7c.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12853d2037f', '4028e4e846e0ff610146e0ff79110018', '植物', '植物', '花草树木', '花草树木', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/a71ea8d3fd1f4134e795727c271f95cad1c85e15.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12853dc0380', '4028e4e846e0ff610146e0ff79110018', '植物', '植物', '花花草草', '花花草草', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/f9198618367adab4460b2f6c8ad4b31c8601e4c1.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12855320382', '4028e4e846e0ff610146e0ff79170019', '军事', '军事', '空军', '空军', null, '1403936823039', '1', '0', 'http://d.hiphotos.baidu.com/image/pic/item/a71ea8d3fd1f4134ac714774271f95cad1c85e71.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128553b0383', '4028e4e846e0ff610146e0ff79170019', '军事', '军事', '海军', '海军', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/7e3e6709c93d70cf7f6de600fadcd100baa12b23.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12855430384', '4028e4e846e0ff610146e0ff79170019', '军事', '军事', '航母', '航母', null, '1403936823039', '1', '0', 'http://a.hiphotos.baidu.com/image/pic/item/dcc451da81cb39db9e17e25fd2160924aa1830e7.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e128554d0385', '4028e4e846e0ff610146e0ff79170019', '军事', '军事', '二战', '二战', null, '1403936823039', '1', '0', 'http://e.hiphotos.baidu.com/image/pic/item/b7003af33a87e950610ace6612385343fbf2b49e.jpg');
INSERT INTO `a_tag` VALUES ('4028e4e846e127e20146e12855560386', '4028e4e846e0ff610146e0ff79170019', '军事', '军事', '枪械', '枪械', null, '1403936823039', '1', '0', 'http://b.hiphotos.baidu.com/image/pic/item/37d12f2eb9389b50765a9c588735e5dde7116e16.jpg');

-- ----------------------------
-- Table structure for sys_cvscfg
-- ----------------------------
DROP TABLE IF EXISTS `sys_cvscfg`;
CREATE TABLE `sys_cvscfg` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `uc_id` char(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应的UC的id',
  `flag` int(11) DEFAULT NULL COMMENT '输入输出的标志：1-输入，2-输出',
  `property` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应java中的属性名称',
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应数据库的字段名称',
  `field_len` int(11) DEFAULT NULL COMMENT '字段的数据长度',
  `field_type` int(11) DEFAULT NULL COMMENT '字段的数据类型',
  `java_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'java的属性的字段类型',
  `in_type` int(11) DEFAULT NULL COMMENT '对于输入的属性，1-普通，2-查询条件，3-传值变量',
  `res_type` int(11) DEFAULT NULL COMMENT '查询表达式，eg：=，<> and so on',
  `exist` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sql语句中对应的exist语句',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='UC的输入输出的字段和pojo的对应配置';

-- ----------------------------
-- Records of sys_cvscfg
-- ----------------------------
INSERT INTO `sys_cvscfg` VALUES ('018b7099bcdb4f34b755409a17dc52f2', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'minWidth', 'UVIEW.MIN_WIDTH', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('03f4ff95fe7e40379075adce3d2512cf', 'a9b0da5b4c514887822bdf04e7009152', '2', 'pkageSize', 'AI.PKAGE_SIZE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('04f557da2a4a4b2dab3d3725ea80c7c3', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'delFlag', 'CAT.DEL_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('05689bf89f744a8388a89a56f68d31a3', 'e544ba72caf14b08b88f2924c3c84203', '1', 'ucName', 'T.UC_NAME', '30', '12', 'java.lang.String', '2', '7', null);
INSERT INTO `sys_cvscfg` VALUES ('07e1f8ef14ab4277ab004f888ab81bb9', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'deleteFlag', 'AM.DELETE_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('08490794879e48fe873a99e617027f1b', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'id', 'UVIEW.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('0b0106aaf46d42bfa8596f5f5623da70', 'a9b0da5b4c514887822bdf04e7009152', '2', 'downCount', 'AI.DOWN_COUNT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('0d75cfd40e644f23a178908be2977142', '81c817a7ba56487a8ff07606647dc3e8', '2', 'dateTime', 'AI.DATE_TIME', '20', '-5', 'java.lang.Long', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('12074bcbf4d740ad80f41c5785cd9508', 'a9b0da5b4c514887822bdf04e7009152', '2', 'language', 'AI.LANGUAGE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('124f278f100d45b5872de1a7112c5b75', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'iscache', 'UC.ISCACHE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1527e3b459c7456782e4ff13b8ce4858', 'e544ba72caf14b08b88f2924c3c84203', '2', 'iscache', 'T.ISCACHE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('16902a02718e4ba38c8917d6c6965908', 'a9b0da5b4c514887822bdf04e7009152', '2', 'updateTime', 'UPDATE_TIME', '10', '12', 'java.lang.String', '1', null, '');
INSERT INTO `sys_cvscfg` VALUES ('1863f92003cb4917aa7c05f4d24f9a09', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'type', 'UCSQL.TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1890e7167bd04a94bdf878f707cb0343', '8b34190046584685afb77d0e21b0d1e4', '2', 'pageId', 'LV.PAGE_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1941ca9bf63543bdab761f8b52efd7f1', '398468f219e14e299eed0f28eded0ead', '2', 'dkey', 'T.DKEY', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('19fa4803b3a4478f9f190e01ee9601c4', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'cvsId', 'UVIEW.CVS_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1ae712f38317433cb3372d502889e36b', '81c817a7ba56487a8ff07606647dc3e8', '2', 'image', 'AI.IMAGE', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1bf749156cb04ae98efdb3a1471949c1', '8b34190046584685afb77d0e21b0d1e4', '2', 'id', 'PAGE.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1c6cff0f35f14f4fbced559f0681d90f', 'a9b0da5b4c514887822bdf04e7009152', '2', 'sort', 'AI.SORT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('1eda117afb71481eaeb40667745352e4', '9eda7128f2084a5cb9808ac0c834a986', '2', 'lcode', 'LAY.LCODE', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('201defc985e745e38e3015c5faebede7', 'cf6997b648d74f01aa52d937123f5d06', '2', 'longTitle', 'TAG.LONG_TITLE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('21de1cfbc9894d39a2177305f3588a36', 'cf6997b648d74f01aa52d937123f5d06', '2', 'delFlag', 'TAG.DEL_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('221daf161a2e4810bed36e9adc3a11db', 'fd82c37ebb2c4ead8ed145f927ede30b', '1', 'viewId', 'UVIEW.ID', '32', '1', 'java.lang.String', '2', '0', null);
INSERT INTO `sys_cvscfg` VALUES ('2275115ef0de4b96854b932c9fcb72d8', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'params', 'PAGE.PARAMS', '400', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('22ac073d4fec4345afeec1d807219395', 'cf6997b648d74f01aa52d937123f5d06', '2', 'enableFlag', 'TAG.ENABLE_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('23c70ecd60ae4a7ebec891a38910c715', '62800633107f4da9942348553290964d', '2', 'flag', 'CVS.FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('23cafee63d6c42059f9d48178fa6295b', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'align', 'UVIEW.ALIGN', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('24047afc84384ccda1572d4ffa882e25', 'c945b85569fa4be3ad1358342568d566', '1', 'appId', 'AP.APP_ID', '32', '1', 'java.lang.String', '2', '0', '');
INSERT INTO `sys_cvscfg` VALUES ('2427ddab6b174a93b70fc5d1768dbbac', 'a9b0da5b4c514887822bdf04e7009152', '2', 'appId', 'AI.APP_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('24ac97c8811a4a01b77886e3274af8ce', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'level', 'UVIEW.LEVEL', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('263d65337e9f46de89adbe95c8487da8', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'type', 'AM.TYPE', '10', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('26c4817fb7ca4e7cb0b85a485bff9369', '62800633107f4da9942348553290964d', '2', 'property', 'CVS.PROPERTY', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('2933fd051807428191e925658002416c', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'shortTitle', 'CAT.SHORT_TITLE', '20', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('2af13074f4de4e8abb13320fc2c8c410', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'sort', 'AM.SORT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('2c6668d9679c4f55a6aaffb1a5f4837b', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'tags', 'HOT.TAGS', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('2ce71985066f497cbca1b794a0aca052', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'page', 'PAGE.PAGE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('2d9a4934f6994d9cba0c86619bf8161c', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'csql', 'UCSQL.CSQL', '21845', '-1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('312177fb48354723adf619ec57b9e777', 'f7f8b9d7a22e480cb97a0b04c24719c5', '1', 'appId', 'AM.APP_ID', '32', '12', 'java.lang.String', '2', '0', '');
INSERT INTO `sys_cvscfg` VALUES ('316401f9d47f45ff81df7c7fc5f80b8a', 'cf6997b648d74f01aa52d937123f5d06', '2', 'shortTitle', 'TAG.SHORT_TITLE', '20', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('32cc1722f15d4cb19da3bcece00f925c', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'ucName', 'UC.UC_NAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('33ef16b365334daba95698b5106a6b6c', 'c945b85569fa4be3ad1358342568d566', '2', 'appId', 'AP.APP_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('344ff3e6f2374cd7928f6889cd79519e', '62800633107f4da9942348553290964d', '2', 'ucId', 'CVS.UC_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('34d11c33274146f4ab24ce0a98789bf8', '8b34190046584685afb77d0e21b0d1e4', '2', 'lcId', 'LV.LC_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('356efa0b340844e8a1c8f111c98b0279', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'dataType', 'UVIEW.DATA_TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('356f347149f649c8a63c1be13034f84c', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'beanId', 'UC.BEAN_ID', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('36dd4842438b402d892ff22a71166e30', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'dateTime', 'CAT.DATE_TIME', '20', '-5', 'java.lang.Long', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('37b8cf5b301144ee9e64be027f93fe9e', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'formate', 'UVIEW.FORMATE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('409498e7a9484bf6be0e54a7f03ef430', '8b34190046584685afb77d0e21b0d1e4', '2', 'cname', 'PAGE.CNAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('40dd70a679b2455181b952e77fd04e42', 'cf6997b648d74f01aa52d937123f5d06', '2', 'dateTime', 'TAG.DATE_TIME', '20', '-5', 'java.lang.Long', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('41736bbaa2c84dfbbc48a21a2d9fff07', 'fd82c37ebb2c4ead8ed145f927ede30b', '1', 'ucId', 'UVIEW.UC_ID', '32', '1', 'java.lang.String', '2', '0', null);
INSERT INTO `sys_cvscfg` VALUES ('41d3f968090d4d7b8838aac0c26f4265', 'a9b0da5b4c514887822bdf04e7009152', '2', 'runOs', 'AI.RUN_OS', '50', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('44c83d8132ff4e1087553dd024b62781', '0d7822724f23491d9dc18885c0189249', '2', 'isuse', 'SYS_USER.ISUSE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('45f84ccdb7784cfba362ceefbd4b665d', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'ucId', 'UVIEW.UC_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('48ec36a525cb46a2b683f348d2a5c2a2', '8b34190046584685afb77d0e21b0d1e4', '2', 'lorder', 'LV.LORDER', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('4a228ea887da4a87838f03459d5c2958', 'e544ba72caf14b08b88f2924c3c84203', '2', 'ucode', 'T.UCODE', '8', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('4cdeb9bf04b947d999ba193e9bab3021', '0d7822724f23491d9dc18885c0189249', '2', 'delFlag', 'SYS_USER.DEL_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('4d16119879324b2fb27ae8359301a627', '9b6fae1af62948048a3975c4b3bed270', '2', 'lid', 'LAYT.LID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('4e0a0367e3014e1fb2bcc8edaedc2066', '0d7822724f23491d9dc18885c0189249', '2', 'username', 'SYS_USER.USERNAME', '16', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('4e9ede5b0a78421b85ce7f05f98b0013', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'appId', 'AM.APP_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('5395bf159e054996bf386c08dcf9c73f', '62800633107f4da9942348553290964d', '1', 'cvsId', 'CVS.ID', '32', '1', 'java.lang.String', '2', '0', '');
INSERT INTO `sys_cvscfg` VALUES ('54fc8ba34cb4494984d2ef5e95bdbda9', 'a9b0da5b4c514887822bdf04e7009152', '1', 'appId', 'AI.APP_ID', '32', '12', 'java.lang.String', '2', '0', '');
INSERT INTO `sys_cvscfg` VALUES ('55c72fdc1c56483ea37abdc925749121', 'a9b0da5b4c514887822bdf04e7009152', '2', 'starCount', 'AI.STAR_COUNT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('578ec182282644a79b3d14174854f2dd', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'imageId', 'AM.IMAGE_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('59fad54e7cb642b7869e4eaa08c464b3', '8b34190046584685afb77d0e21b0d1e4', '2', 'pcode', 'PAGE.PCODE', '8', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('5a6cb6ac20504a60bcb384d81d5497a9', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'sort', 'CAT.SORT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('5ac2c38edd684eab9f47a7dc0d8098bb', '62800633107f4da9942348553290964d', '2', 'fieldLen', 'CVS.FIELD_LEN', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('5b098c62735f4f3db893694d3e7260e3', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'dateTime', 'HOT.DATE_TIME', '20', '-5', 'java.lang.Long', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('5be00dd6e5284110822b8470e37a00d0', 'fe7b1cf8b71448c997d2078e6c398e4e', '1', 'ucId', 'UC.ID', '32', '1', 'java.lang.String', '2', '0', null);
INSERT INTO `sys_cvscfg` VALUES ('5d6044b68d6c419fa506a0db378baf84', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'alignType', 'AM.ALIGN_TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('5fd05beff95740978628d53d238f4142', '9b6fae1af62948048a3975c4b3bed270', '2', 'remark', 'LAYT.REMARK', '100', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('601504bacfdd4c7d847d0cbaa11dc505', '62800633107f4da9942348553290964d', '1', 'ucId', 'CVS.UC_ID', '32', '1', 'java.lang.String', '2', '0', null);
INSERT INTO `sys_cvscfg` VALUES ('63163966ebfa43edb499b371db015d9a', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'module', 'PAGE.MODULE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('632ce8ae4ef54a70af757229f3ac9f96', '81c817a7ba56487a8ff07606647dc3e8', '2', 'title', 'AI.TITLE', '20', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('633c507bd59345fcb434090d8997fd0e', '8b34190046584685afb77d0e21b0d1e4', '2', 'lid', 'LV.LID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('6471fde281ff4d819cb04a7511ef20d8', '9b6fae1af62948048a3975c4b3bed270', '2', 'location', 'LAYT.LOCATION', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('6774cd14741a4835b2709c102b830f9f', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'sqlId', 'UCSQL.SQL_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('67af0adfdca3471c94418c15232f2bf8', '8b34190046584685afb77d0e21b0d1e4', '2', 'pModule', 'PAGE.PMODULE', '30', null, 'java.lang.String', '1', null, '');
INSERT INTO `sys_cvscfg` VALUES ('6844d30088da4ff28bac6cd7761f086a', '62800633107f4da9942348553290964d', '2', 'id', 'CVS.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('69bb0724faba4b288a406c478ec04cac', 'e544ba72caf14b08b88f2924c3c84203', '2', 'id', 'T.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('6c7c8d0ecdd844389395cd50fd641640', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'title', 'HOT.TITLE', '20', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('6d1c327293a449e9935cd781b37f6fc6', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'property', 'CVS.PROPERTY', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('6dd9c94acd1f44d0bf7a33a35e6978ee', '96750c9e67514b93b119d0bdc35aefd2', '2', 'id', 'T.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('6fef75d2cfec4490be7810511d44cf01', '96750c9e67514b93b119d0bdc35aefd2', '2', 'remark', 'T.REMARK', '200', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('7029a99172404c22986bebc1ec57dc61', '0d7822724f23491d9dc18885c0189249', '2', 'password', 'SYS_USER.PASSWORD', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('72a4e4057e6f4775ae3444db59faf8ef', 'a9b0da5b4c514887822bdf04e7009152', '2', 'imageUrl', 'IMG.IMAGE_URL', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('72c6f97a18db4a7cbb77aca6cd8e6df2', 'a9b0da5b4c514887822bdf04e7009152', '2', 'deleteFlag', 'AI.DELETE_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('77b91a28550b4967ab51ff70734d7cf2', 'cf6997b648d74f01aa52d937123f5d06', '2', 'imgUrl', 'TAG.IMG_URL', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('781ea6f0b6cb437190613fb6486c7a9f', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'dictNo', 'UVIEW.DICT_NO', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('79dccb2bd37047b5b81379defd15d3e1', 'e544ba72caf14b08b88f2924c3c84203', '2', 'beanId', 'T.BEAN_ID', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('7c0faa8b595346c89194a9c1ed56c5a7', 'e544ba72caf14b08b88f2924c3c84203', '2', 'method', 'T.METHOD', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('7d6e4b7eae584f7192b7f3e1fdf45fe6', 'c945b85569fa4be3ad1358342568d566', '2', 'pkageUrl', 'AP.PKAGE_URL', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('7f0f2d580b574040bc08a84ca20a0aef', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'listHeader', 'PAGE.LIST_HEADER', '200', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('7f87bde54a114782bffa479d847db3bb', 'c945b85569fa4be3ad1358342568d566', '2', 'fromSrc', 'AP.FROM_SRC', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('805df9f2ca1c43abb18c01cf8676f8c9', '9b6fae1af62948048a3975c4b3bed270', '1', 'lid', 'LAYT.LID', '32', '1', 'java.lang.String', '2', '0', '');
INSERT INTO `sys_cvscfg` VALUES ('806f8d2119b642dc81f392a580c81e5b', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'enableFlag', 'CAT.ENABLE_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('80ef9fa8202342afbfe0f41a85da4bb7', 'e544ba72caf14b08b88f2924c3c84203', '2', 'ucName', 'T.UC_NAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('819a42fe645b42209fc5ef34adbbc984', '8b34190046584685afb77d0e21b0d1e4', '2', 'params', 'LV.PARAMS', '200', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('81e29544e0254083a88f1a1b1e5c7997', '62800633107f4da9942348553290964d', '2', 'exist', 'CVS.EXIST', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('851f8566575a45e8bb54f7224d5060b9', '9b6fae1af62948048a3975c4b3bed270', '2', 'id', 'LAYT.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('853eb2dc359a4845bba86dfe9401f130', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'viewFlag', 'UVIEW.VIEW_FLAG', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('85f240bf37e94f5ca20ee55ff76cde97', '9c13fa15208d40ef8c997704ef63bf55', '2', 'orgzCode', 'U.ORGZ_CODE', '32', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('87fe3ff379f84df78ecbcf8ec98f550f', '398468f219e14e299eed0f28eded0ead', '2', 'dvalue', 'T.DVALUE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('89b1c0b4af054d03b28bbce4fd4c8e0a', '8b34190046584685afb77d0e21b0d1e4', '2', 'ltId', 'LV.LT_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('8c9b4c6178ee467987f42ce59c76de23', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'enableFlag', 'HOT.ENABLE_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('8eaeb9ef8d2b4e3296b11b639494197c', '62800633107f4da9942348553290964d', '2', 'fieldType', 'CVS.FIELD_TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('90c935d06df24f3280ec2b8c0beeeac9', '62800633107f4da9942348553290964d', '2', 'field', 'CVS.FIELD', '32', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('94b149cf5da4415f9c936dabb51b7310', 'a9b0da5b4c514887822bdf04e7009152', '2', 'security', 'AI.SECURITY', '50', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9510ecc0fbaa4c2f87c46ddb7afe2e4f', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'type', 'HOT.TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('95343a699f3946b99b44d7c925917bc8', '81c817a7ba56487a8ff07606647dc3e8', '2', 'tags', 'AI.TAGS', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9550713260f44450ab58a9a3896d6a5a', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'cId', 'CAT.C_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('96cfe8457e834c1b9056b86d5637708a', '9c13fa15208d40ef8c997704ef63bf55', '2', 'id', 'U.ID', '32', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('994525198a6744f5ad73de4b9ebf60d9', 'a9b0da5b4c514887822bdf04e7009152', '2', 'version', 'AI.VERSION', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('994ced8442f5449eb365d75356ebaebe', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '1', 'pageid', 'PAGE.ID', '32', '1', 'java.lang.String', '2', '0', null);
INSERT INTO `sys_cvscfg` VALUES ('9957af113c7a45299b29f13aa7bd11aa', '398468f219e14e299eed0f28eded0ead', '2', 'sys', 'T.SYS', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9bc6ef72fab743f68b2fd97c93ce2d1d', 'a9b0da5b4c514887822bdf04e7009152', '2', 'appName', 'AI.APP_NAME', '50', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9d4df9aafb74412d9e92b23e2e31eec1', '9eda7128f2084a5cb9808ac0c834a986', '2', 'id', 'LAY.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9d4eed5876184b31abf3c214681e079c', '8b34190046584685afb77d0e21b0d1e4', '2', 'location', 'LV.LOCATION', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9f6c9b01e7b9466e80aa3ff323b9b9b3', '96750c9e67514b93b119d0bdc35aefd2', '2', 'enable', 'T.ENABLE', '1', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('9f9cb6ab80db47e0baaa615b436ea48d', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'delFlag', 'HOT.DEL_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('a18003ba13f74d1188299be90a64f426', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'method', 'UC.METHOD', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('a33be125ba3547ffa69c6b1474cf1b4f', '9c13fa15208d40ef8c997704ef63bf55', '2', 'cname', 'U.CNAME', '16', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('a446d8d860294bb7bd9f526b4585d127', '8b34190046584685afb77d0e21b0d1e4', '2', 'ename', 'PAGE.ENAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('a629b17671814371bc244fefebbcc786', 'cf6997b648d74f01aa52d937123f5d06', '2', 'shortTag', 'TAG.SHORT_TAG', '20', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('a9e67d53c2584785bb370e7b7b63fad0', 'c945b85569fa4be3ad1358342568d566', '2', 'deleteFlag', 'AP.DELETE_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('aa57468af92f469dac74247096c47217', '0d7822724f23491d9dc18885c0189249', '2', 'cname', 'SYS_USER.CNAME', '16', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ace129d6214f45969b3874c42c76f309', '8b34190046584685afb77d0e21b0d1e4', '2', 'page', 'PAGE.PAGE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('af06103b8dfd4d42bcf95268d8a6d1c0', '9c13fa15208d40ef8c997704ef63bf55', '2', 'delFlag', 'U.DEL_FLAG', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b087c87d3aa44ee98b01368c29a189be', '96750c9e67514b93b119d0bdc35aefd2', '2', 'oname', 'T.ONAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b3ab746ed1f44b7b94ec2284cf90165b', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'href', 'UVIEW.HREF', '200', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b44e0d744b7944659818f710f2832610', '81c817a7ba56487a8ff07606647dc3e8', '2', 'sort', 'AI.SORT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b4e8a0a2efa3405d81d8b996db83296f', '8b34190046584685afb77d0e21b0d1e4', '2', 'pParams', 'PAGE.PPARAMS', '400', null, 'java.lang.String', '1', null, '');
INSERT INTO `sys_cvscfg` VALUES ('b618d444bed348e3875ee7c0872be8b5', '62800633107f4da9942348553290964d', '2', 'javaType', 'CVS.JAVA_TYPE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b6831d59135342f09fe91c21c0cf3ad0', '8b34190046584685afb77d0e21b0d1e4', '2', 'lcode', 'LV.LCODE', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b72bc10c8d4b45f7b1dae47c7a4ea690', 'c945b85569fa4be3ad1358342568d566', '2', 'sort', 'AP.SORT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('b8a804f27ed9446ca75fc023e894aad3', '9c13fa15208d40ef8c997704ef63bf55', '2', 'oname', 'O.ONAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ba6e042bc43240979b199ff232710101', '62800633107f4da9942348553290964d', '2', 'resType', 'CVS.RES_TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('be778929d2c4471492afa37e6796fcd4', '62800633107f4da9942348553290964d', '2', 'inType', 'CVS.IN_TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('c0a7e3da9e57466082609826a4458690', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'title', 'UVIEW.TITLE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('c1cc2c1a274045a381cd6f16b6e02f9e', '96750c9e67514b93b119d0bdc35aefd2', '2', 'code', 'T.CODE', '6', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('c32a3166511c44adbdf3eccc66a1f9f0', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'hId', 'HOT.H_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('c57e9ef0446d4e31800093cadcebba25', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'hrefType', 'UVIEW.HREF_TYPE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('c6af6f1f3537429e8fe59371f67d3274', '8b34190046584685afb77d0e21b0d1e4', '2', 'module', 'LV.MODULE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ca4069df948a464398c8c3b6f5626906', '0d7822724f23491d9dc18885c0189249', '2', 'id', 'SYS_USER.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('cab782d84785406a91dcc0fc70e77ae8', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'pcode', 'PAGE.PCODE', '8', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ce716c49f2f844c68b2edce34244cde7', '81c817a7ba56487a8ff07606647dc3e8', '2', 'origin', 'AI.ORIGIN', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('cec8a755f5444f6ba729023f4bb6115c', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'id', 'UC.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('d0a94de2019e4bf784f7d28b08892bef', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2', 'imageUrl', 'AM.IMAGE_URL', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('d25fac5f71e24d3dbb59d6e84487d653', 'cf6997b648d74f01aa52d937123f5d06', '2', 'longTag', 'TAG.LONG_TAG', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('d5c1f56219834a77b42eeec16d15defb', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'cname', 'PAGE.CNAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('d64786e6f4cb4f87a28b87194e8e58cf', 'cf6997b648d74f01aa52d937123f5d06', '1', 'cId', 'TAG.C_ID', '32', '1', 'java.lang.String', '2', '0', '');
INSERT INTO `sys_cvscfg` VALUES ('d84f4412a294428ba2eed01f2fb723ad', '0df2aee24a41430cb1fd7788eea0d1bb', '2', 'origin', 'HOT.ORIGIN', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('da22a61938654befb1aed4fb38912a84', '0d7822724f23491d9dc18885c0189249', '2', 'orgzId', 'SYS_USER.ORGZ_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('da91732a31bf4b2aaedcd06eae77eb9a', '9c13fa15208d40ef8c997704ef63bf55', '2', 'username', 'U.USERNAME', '16', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('db6f3b0fedc84858b1615d10eca5df97', 'a9b0da5b4c514887822bdf04e7009152', '2', 'descrition', 'AI.DESCRITION', '500', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('dd418320a8ab4770b4e805b5df464de8', '398468f219e14e299eed0f28eded0ead', '2', 'dictno', 'T.DICTNO', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('de457e8f86be462a88cd6b2369124f0e', '4905fd8df68b4c4b87e9ecb5c29911ae', '2', 'longTitle', 'CAT.LONG_TITLE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e0d0d71066234ed498e74d0115c6d1e4', '9eda7128f2084a5cb9808ac0c834a986', '2', 'remark', 'LAY.REMARK', '100', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e1389736afca4ba596408b06148e9d17', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'id', 'PAGE.ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e1e5e23079164805826c1695edd2e8d0', 'fe7b1cf8b71448c997d2078e6c398e4e', '2', 'ucode', 'UC.UCODE', '8', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e224ad7cc63346e6bd4f4ece89d67617', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'ename', 'PAGE.ENAME', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e23497ad8f3e4e2c8b92ae01c303c84f', '9eda7128f2084a5cb9808ac0c834a986', '2', 'module', 'LAY.MODULE', '30', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e6b1999d5e93402fb96037399c3fcdd4', 'cf6997b648d74f01aa52d937123f5d06', '2', 'cId', 'TAG.C_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e7a78fa4eaf54d91adf8ab23915537e0', '9c13fa15208d40ef8c997704ef63bf55', '2', 'isuse', 'U.ISUSE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e7b642038d2240ee81398e5fc62e96d0', 'cf6997b648d74f01aa52d937123f5d06', '2', 'tId', 'TAG.T_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('e9b974bc1ec248c1813864b5dbe9c3be', '9c13fa15208d40ef8c997704ef63bf55', '2', 'password', 'U.PASSWORD', '32', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('eb9957c978f34bb5ac0df38c5c023e72', '9c13fa15208d40ef8c997704ef63bf55', '2', 'iscan', 'U.ISCAN', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ed11f52b4bfc45409e59e0c01d47389b', 'c945b85569fa4be3ad1358342568d566', '2', 'pkageId', 'AP.PKAGE_ID', '32', '1', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('eefd5418c11546aba862a80507316512', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'sort', 'UVIEW.SORT', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('efd0bcdba30046c48904e9c022375854', '8b34190046584685afb77d0e21b0d1e4', '2', 'listHeader', 'PAGE.LIST_HEADER', '200', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('f0ccbc286b6b4fc0a6e5880385ef02d1', 'a9b0da5b4c514887822bdf04e7009152', '2', 'free', 'AI.FREE', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('f55a080abd614152a2bc17d721e8ec44', '398468f219e14e299eed0f28eded0ead', '2', 'remark', 'T.REMARK', '100', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('f8fc9f57823a4eb7b6acf0640009e199', '0d7822724f23491d9dc18885c0189249', '2', 'iscan', 'SYS_USER.ISCAN', '11', '4', 'java.lang.Integer', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('f9aae873fd5f4701a99c8abbe03bae65', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'width', 'UVIEW.WIDTH', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('fc4c889a8f5047f3981ed0dcfbd1f8c1', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'ucIds', 'PAGEUC.UC_IDS', '341', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ff7fd551dd5546c181aa27aa4447b6a1', '81c817a7ba56487a8ff07606647dc3e8', '2', 'mId', 'AI.M_ID', '32', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ff9f231506be45f2a541c59c0ba61d92', 'fd82c37ebb2c4ead8ed145f927ede30b', '2', 'maxWidth', 'UVIEW.MAX_WIDTH', '12', '12', 'java.lang.String', '1', null, null);
INSERT INTO `sys_cvscfg` VALUES ('ffeb8ef5c0b7445c9a22e84ccff562c3', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2', 'ucIds', 'PAGEUC.UC_IDS', '320', '12', 'java.lang.String', '1', null, null);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `sys` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dictno` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dkey` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dvalue` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sys`,`dictno`,`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0001', '1', '输入', 'cvs配置中的输入属性');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0001', '2', '输出', 'cvs配置中的输出属性');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '0', '等于(=?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '1', '不等于(<>?)', 'sql语句中操作符，不等于(<>?)');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '10', '不包含(not in)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '11', 'isNull()', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '12', 'isNotNull( )', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '13', 'and(and?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '14', 'or(or?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '2', '大于(>?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '3', '小于(<?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '4', '小等于(<=?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '5', '大等于(>=?)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '6', 'like(%)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '7', '右like(_%)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '8', '左like(%_)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0002', '9', '包含(in)', 'sql语句中操作符');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0003', '01', '字符串', '数据类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0003', '02', '整数', '数据类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0003', '03', '小数', '数据类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0003', '04', '日期', '数据类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '-1', 'longvarchar', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '-5', 'bigint', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '-8', 'rowid', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '-9', 'nvarchar', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '0', 'null', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '1', 'char', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '1111', 'other', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '12', 'varchar', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '16', 'boolean', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '2', 'numeric', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '2004', 'blob', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '2005', 'clob', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '3', 'decimal', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '4', 'integer', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '6', 'float', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '8', 'double', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '91', 'date', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '92', 'time', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0004', '93', 'timestamp', '字段类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0005', '1', '普通', '参数类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0005', '2', '查询条件', '参数类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0005', '3', '传值变量', '参数类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0006', '0', '不显示', '显示类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0006', '1', '显示', '显示类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0006', '2', '详细显示', '显示类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0007', '1', '弹出', '链接类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0007', '2', '跳转', '链接类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0007', '3', '新页面', '链接类型');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0008', '0', '否', '是否');
INSERT INTO `sys_dict` VALUES ('ZFIRE', '0008', '1', '是', '是否');

-- ----------------------------
-- Table structure for sys_extvalue
-- ----------------------------
DROP TABLE IF EXISTS `sys_extvalue`;
CREATE TABLE `sys_extvalue` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `dkey` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dvalue` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iscan` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_extvalue
-- ----------------------------

-- ----------------------------
-- Table structure for sys_layout
-- ----------------------------
DROP TABLE IF EXISTS `sys_layout`;
CREATE TABLE `sys_layout` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `lcode` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_layout
-- ----------------------------
INSERT INTO `sys_layout` VALUES ('00458794057c4696896cf668eeb3129d', 'image_search', '02', '图片应用');
INSERT INTO `sys_layout` VALUES ('025357dd467443c7bf99f3dd027804a6', null, null, null);
INSERT INTO `sys_layout` VALUES ('30e43f15f5f64540a13ae4149f369f2a', 'edit_uc', '00', 'UC编辑页面');
INSERT INTO `sys_layout` VALUES ('b58a87c6dc664833a11495cfe8b5c92a', 'main', '01', '系统的主页');

-- ----------------------------
-- Table structure for sys_layout_case
-- ----------------------------
DROP TABLE IF EXISTS `sys_layout_case`;
CREATE TABLE `sys_layout_case` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `ltid` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageid` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lorder` int(11) DEFAULT NULL COMMENT 'ÐòºÅ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_layout_case
-- ----------------------------
INSERT INTO `sys_layout_case` VALUES ('0803b3381365457cbc016801b07306b5', 'e774dcc5d88d42a7ab2fc3be337b66c8', '30e2d5090caa45c7b5b23866bd7687b4', '{}', '图片应用', '1');
INSERT INTO `sys_layout_case` VALUES ('0b8bf7927fb94538b811f0dd9e11f052', 'bc66305032cb4c05b35e6673ff1a0df1', '1b3d6a7d32004961894223a2d9667069', '{}', 'UC的view编辑页面', '4');
INSERT INTO `sys_layout_case` VALUES ('1a06ce25f9df44f4a3256491f8e059c9', '4dfc016a31cf4b959f669f6ebe827b91', 'ad4bcbbfbcc84ecdad1dced6b9ceb0b4', '{}', '', null);
INSERT INTO `sys_layout_case` VALUES ('3d4bab8f5165401c8fa02bf79b827a2e', '67078734ee914c529d780bcce90ad1e3', '2e7ffebd761d45caa2ccdceabace5adf', '{}', '图片应用菜单', null);
INSERT INTO `sys_layout_case` VALUES ('4dbd337dcb5049429a214133ca38e253', 'bc66305032cb4c05b35e6673ff1a0df1', '507e6f8416c8422ea0d6772d678264bb', '{}', 'UC的cvs编辑页面', '3');
INSERT INTO `sys_layout_case` VALUES ('63fbd715227a459bb0df9b70d5f99af8', 'e774dcc5d88d42a7ab2fc3be337b66c8', '6a8cb03724d5441ca7df573b60ef1f82', '{}', '图片应用-tags 列表', '2');
INSERT INTO `sys_layout_case` VALUES ('881bc297316142379952d1138303bd1e', 'bc66305032cb4c05b35e6673ff1a0df1', '17cc5c7827ed4c99919663d68179adf5', '{}', '编辑UC页面', '1');
INSERT INTO `sys_layout_case` VALUES ('fa8380942b1c4d2893fd6eae0b4cb1a4', '4dfc016a31cf4b959f669f6ebe827b91', '3e1bfecfded448c3becff65a55060f45', '{}', '', null);

-- ----------------------------
-- Table structure for sys_layout_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_layout_type`;
CREATE TABLE `sys_layout_type` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `lid` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_layout_type
-- ----------------------------
INSERT INTO `sys_layout_type` VALUES ('4dfc016a31cf4b959f669f6ebe827b91', 'b58a87c6dc664833a11495cfe8b5c92a', 'main', 'main页面');
INSERT INTO `sys_layout_type` VALUES ('67078734ee914c529d780bcce90ad1e3', '00458794057c4696896cf668eeb3129d', 'left', '图片应用菜单');
INSERT INTO `sys_layout_type` VALUES ('bc66305032cb4c05b35e6673ff1a0df1', '30e43f15f5f64540a13ae4149f369f2a', 'main', 'UC编辑布局类型');
INSERT INTO `sys_layout_type` VALUES ('e774dcc5d88d42a7ab2fc3be337b66c8', '00458794057c4696896cf668eeb3129d', 'main', '图片应用');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `sys` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hreflink` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pid` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refreshFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_orgz
-- ----------------------------
DROP TABLE IF EXISTS `sys_orgz`;
CREATE TABLE `sys_orgz` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `oname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_orgz_u_ocode` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_orgz
-- ----------------------------
INSERT INTO `sys_orgz` VALUES ('45e2e91deade4d3b889ddc22be943285', '030000', '人力资源', '', '1');
INSERT INTO `sys_orgz` VALUES ('5352f85b7734487484ef089522e97d35', '020000', '信息科技部', '', '1');
INSERT INTO `sys_orgz` VALUES ('6251456e23784fdd8b3ec7198d494332', '020100', '存款核心处', '', '1');
INSERT INTO `sys_orgz` VALUES ('943eb64658f347cbaab51cf011c5721c', '050000', '市场二部', '', '1');
INSERT INTO `sys_orgz` VALUES ('a8b0b83ba9c341e4b89aa79a97cbf76a', '020101', '核心团队', '', '1');
INSERT INTO `sys_orgz` VALUES ('ac3fa3f43feb4e039b9dbcdda1d468d8', '010000', '财务部', '', '1');
INSERT INTO `sys_orgz` VALUES ('c94b33f1bd4f436aae228e445389ef96', '020300', '渠道开发处', '', '1');
INSERT INTO `sys_orgz` VALUES ('d110113592c543d3b94ba2b222164284', '020102', 'ECIF团队', '', '1');
INSERT INTO `sys_orgz` VALUES ('d70da10f65d0427fbbe763c3e5f50702', '000000', '华通银行', '', '1');
INSERT INTO `sys_orgz` VALUES ('e181c0fe5e2244f6a36abd4038cbdedc', '020200', '数据中心', '', '1');
INSERT INTO `sys_orgz` VALUES ('ecf32294fdf647639b1dfa8c04f4ebff', '040000', '市场一部', '', '1');

-- ----------------------------
-- Table structure for sys_page
-- ----------------------------
DROP TABLE IF EXISTS `sys_page`;
CREATE TABLE `sys_page` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `pcode` char(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '页面的编码',
  `cname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中文名称',
  `ename` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '英文名称',
  `module` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '模块（文件夹）',
  `page` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应的jsp页面',
  `params` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '默认的初始参数',
  `list_header` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ä¬ÈÏµÄ³õÊ¼²ÎÊý',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_page
-- ----------------------------
INSERT INTO `sys_page` VALUES ('02aaf820623f43d3acf4af8f26714ecf', '00000001', 'UC列表页面', 'uclistpage', 'frame', 'listlayout', '{\"listid\":\"uclist\"}', '/WEB-INF/jsp/frame/header_uc.jsp');
INSERT INTO `sys_page` VALUES ('14d6f686302f4db2ac76d5f66e10f5f7', '00000018', '用户列表', '用户列表', 'frame', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('17cc5c7827ed4c99919663d68179adf5', '00000003', '编辑UC页面', 'edituc', 'frame', '/frame/edit_uc', '{\"ucname\":\"UC_EDIT_UCANDSQL\",\"pageflag\":0}', null);
INSERT INTO `sys_page` VALUES ('1a8e083f8b0644349f70fb6ec2210ebf', '00000016', '添加组织机构', 'addorgz', 'frame', '/frame/add_orgz', '{\"pageflag\":0}', '');
INSERT INTO `sys_page` VALUES ('1b3d6a7d32004961894223a2d9667069', '00000006', 'UC的view编辑页面', 'editview', 'frame', 'listlayout', '{\"listid\":\"ucviewcfglist\"}', '/WEB-INF/jsp/frame/header_ucview.jsp');
INSERT INTO `sys_page` VALUES ('2e7ffebd761d45caa2ccdceabace5adf', '02010002', '图片应用菜单', 'imageappmenu', 'app', 'app/app_menu', '{}', '');
INSERT INTO `sys_page` VALUES ('309e31d144ff419fa19a0831a0a14a8a', '02000001', '应用列表', 'appinfolist', 'app', 'listlayout', '', '');
INSERT INTO `sys_page` VALUES ('30e2d5090caa45c7b5b23866bd7687b4', '02010001', '图片类别', 'imagecategory', 'app', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('32a554bee0a647d9848b110e0d3dfb00', '00000017', '数据字典', 'dictInfo', 'frame', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('3392a64a282b40f5b029cd17b29e932f', '00000014', '添加布局实例', 'addlayoutcase', 'frame', '/frame/add_layoutcase', '{}', '');
INSERT INTO `sys_page` VALUES ('3e1bfecfded448c3becff65a55060f45', '00001001', '通用表格页面', 'listlayout', 'frame', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('45e3b23acfba464fa9eb5be1f93ea686', '00000010', '添加UC的cvs页面', 'adduccvs', 'frame', '/frame/add_uccvs', '{}', null);
INSERT INTO `sys_page` VALUES ('4ba835628d3a425bb113f11608f1b6be', '02010005', '图片预览', 'imagview', 'app', '/app/image_view', '{}', '');
INSERT INTO `sys_page` VALUES ('507e6f8416c8422ea0d6772d678264bb', '00000005', 'UC的cvs编辑页面', 'editcvs', 'frame', 'listlayout', '{\"listid\":\"uccvscfglist\"}', '/WEB-INF/jsp/frame/header_uccvs.jsp');
INSERT INTO `sys_page` VALUES ('5688b0979df645c38a85236437585d5e', '00000009', '添加UC的viewcfg页面', 'adducview', 'frame', '/frame/add_ucview', '{\"pageflag\":0}', null);
INSERT INTO `sys_page` VALUES ('568b87dbfd0e4ad1b0618b4dade26168', '02010006', '首页推荐', 'imageindex', 'app', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('590c5c6b04074d86be7fbd3d28b2b4b0', '00000002', '添加UC页面', 'adduc', 'frame', '/frame/add_uc', '{}', null);
INSERT INTO `sys_page` VALUES ('6866b7064ef942af94ec995a7791ce53', '00000007', 'Page的列表页面', 'listpage', 'frame', 'listlayout', '{\"listid\":\"pagelist\"}', null);
INSERT INTO `sys_page` VALUES ('6a8cb03724d5441ca7df573b60ef1f82', '02010004', '图片标签', 'imageTagList', 'app', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('82f04c3800194a0a90102a0a2d7e7a3e', '00000013', '添加布局类型', 'addlayouttype', 'frame', '/frame/add_layouttype', '', '');
INSERT INTO `sys_page` VALUES ('96756ed4db3145efb40b7f99f89326b3', '02000003', '应用配置', 'appconfig', 'app', 'app/app_config', '', '');
INSERT INTO `sys_page` VALUES ('9a945cb7a8a64ea5a5bc591bf0b77cbb', '02010003', '热门词条', 'hotimagesearch', 'app', 'listlayout', '{}', '');
INSERT INTO `sys_page` VALUES ('ad4bcbbfbcc84ecdad1dced6b9ceb0b4', '00000011', 'layout列表页面', 'layoutlist', 'frame', 'listlayout', '{\"listid\":\"layoutlist\"}', '');
INSERT INTO `sys_page` VALUES ('be05f3b0b53d46958c26681b7d9f6f88', '00000015', '组织机构列表', 'orgzlist', 'frame', 'list_treelayout', '{\"listid\":\"orgzlist\"}', '');
INSERT INTO `sys_page` VALUES ('d84a8b5f45f146948a79edfdc0ff8c96', '00000012', '添加布局', 'addlayout', 'frame', '/frame/add_layout', '{}', '');
INSERT INTO `sys_page` VALUES ('d89fe3d738f4451984bf8370f1f00b1b', '02000002', '应用查看', 'appinfoview', 'app', 'app/app_view', '', '');
INSERT INTO `sys_page` VALUES ('e467aa96f2cf4a89a55fd58038b7d5b5', '00000008', '添加Page的页面', 'addpage', 'frame', '/frame/add_page', '{\"pageflag\":0}', null);
INSERT INTO `sys_page` VALUES ('ffd9e5c3b7e74d8b8bc3cf77931d0368', '00000004', 'UC的sql编辑页面', 'editsql', 'frame', '/frame/edit_sql', '{}', null);

-- ----------------------------
-- Table structure for sys_page_uc
-- ----------------------------
DROP TABLE IF EXISTS `sys_page_uc`;
CREATE TABLE `sys_page_uc` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ò³ÃæÅäÖÃµÄId',
  `uc_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ucÅäÖÃµÄId',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_page_uc
-- ----------------------------
INSERT INTO `sys_page_uc` VALUES ('01acd2ce9f5e412f9766435432f5beed', '14d6f686302f4db2ac76d5f66e10f5f7', '9c13fa15208d40ef8c997704ef63bf55');
INSERT INTO `sys_page_uc` VALUES ('0f8718e502c04d99b64c33ff1e65227d', '309e31d144ff419fa19a0831a0a14a8a', 'a9b0da5b4c514887822bdf04e7009152');
INSERT INTO `sys_page_uc` VALUES ('1506692e54554c5eb6b5867269aea273', '507e6f8416c8422ea0d6772d678264bb', '62800633107f4da9942348553290964d');
INSERT INTO `sys_page_uc` VALUES ('19d25bf0316248f5a47f576202412b26', '02aaf820623f43d3acf4af8f26714ecf', 'e544ba72caf14b08b88f2924c3c84203');
INSERT INTO `sys_page_uc` VALUES ('52e62b68b7884df4b77074804c1607d6', '32a554bee0a647d9848b110e0d3dfb00', '398468f219e14e299eed0f28eded0ead');
INSERT INTO `sys_page_uc` VALUES ('609325f768884a7fb5cbc7fad63c4081', 'be05f3b0b53d46958c26681b7d9f6f88', '96750c9e67514b93b119d0bdc35aefd2');
INSERT INTO `sys_page_uc` VALUES ('95faea2c51654452a288763768dbf747', '4ba835628d3a425bb113f11608f1b6be', 'ae9ddd0ae18b4755bffebd545fd7e44d');
INSERT INTO `sys_page_uc` VALUES ('9e5c7175d02340f08740d62a3e145ee4', '6a8cb03724d5441ca7df573b60ef1f82', 'cf6997b648d74f01aa52d937123f5d06');
INSERT INTO `sys_page_uc` VALUES ('a342b8630f58425991933548fc9e6609', 'ad4bcbbfbcc84ecdad1dced6b9ceb0b4', '8b34190046584685afb77d0e21b0d1e4');
INSERT INTO `sys_page_uc` VALUES ('a634d77edf76441eaa9bb1038dac30e3', '9a945cb7a8a64ea5a5bc591bf0b77cbb', '0df2aee24a41430cb1fd7788eea0d1bb');
INSERT INTO `sys_page_uc` VALUES ('b7a15d1480684eff8135b58883dcd1df', '6866b7064ef942af94ec995a7791ce53', 'ad7c6110b8164fcbb87c33f3dadc4dd3');
INSERT INTO `sys_page_uc` VALUES ('c32a27b37e0542cfab8988c94f7a9ee9', '568b87dbfd0e4ad1b0618b4dade26168', '81c817a7ba56487a8ff07606647dc3e8');
INSERT INTO `sys_page_uc` VALUES ('dfff109e67ab4b2790f5ea5ce26b2792', '17cc5c7827ed4c99919663d68179adf5', 'fe7b1cf8b71448c997d2078e6c398e4e');
INSERT INTO `sys_page_uc` VALUES ('e2fccedc651841f1a9de420290848682', '30e2d5090caa45c7b5b23866bd7687b4', '4905fd8df68b4c4b87e9ecb5c29911ae');
INSERT INTO `sys_page_uc` VALUES ('eaddbf1fc633479892ec7570f06dbadc', '1b3d6a7d32004961894223a2d9667069', 'fd82c37ebb2c4ead8ed145f927ede30b');
INSERT INTO `sys_page_uc` VALUES ('f6ddf3fb39e74ce893a339d8958f6837', '3e1bfecfded448c3becff65a55060f45', '9c13fa15208d40ef8c997704ef63bf55');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `rname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roleright
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleright`;
CREATE TABLE `sys_roleright` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `rightcode` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='rightcode即为资源的编码:可是是菜单code,layout.co';

-- ----------------------------
-- Records of sys_roleright
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sqlcfg
-- ----------------------------
DROP TABLE IF EXISTS `sys_sqlcfg`;
CREATE TABLE `sys_sqlcfg` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `uc_id` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `csql` text COLLATE utf8_unicode_ci,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='UC的sql相关配置';

-- ----------------------------
-- Records of sys_sqlcfg
-- ----------------------------
INSERT INTO `sys_sqlcfg` VALUES ('054c4a44426746cf979665d96c70f45d', 'cf6997b648d74f01aa52d937123f5d06', '1', 'SELECT *\n  FROM A_TAG TAG\n WHERE @WHERE1=1\n   AND TAG.ENABLE_FLAG = 1\n   AND  TAG.DEL_FLAG = 0\nORDER BY TAG.C_ID', null);
INSERT INTO `sys_sqlcfg` VALUES ('0a090f0535b54694ab49c666c8dc8ec6', 'fe7b1cf8b71448c997d2078e6c398e4e', '1', 'SELECT UC.*,\r\n        UCSQL.ID SQL_ID,\r\n        UCSQL.TYPE,\r\n        UCSQL.CSQL\r\nFROM SYS_UCCFG UC\r\nLEFT JOIN SYS_SQLCFG UCSQL ON UC.ID = UCSQL.UC_ID\r\n@WHERE1=1\r\nORDER BY UC.UCODE', null);
INSERT INTO `sys_sqlcfg` VALUES ('19d3b4ccf4e949278586516e3781d637', '9c13fa15208d40ef8c997704ef63bf55', '1', 'SELECT \n   U.*,O.ONAME \nFROM SYS_USER U INNER \n JOIN SYS_ORGZ O \n   ON U.ORGZ_CODE = O.`CODE` \n@where1=1 order by username ', '查询user的sql语句.');
INSERT INTO `sys_sqlcfg` VALUES ('1f9ab11ee04c4888910a978536748f53', '398468f219e14e299eed0f28eded0ead', '1', 'SELECT * FROM SYS_DICT T @WHERE1=1 ORDER BY T.DICTNO', null);
INSERT INTO `sys_sqlcfg` VALUES ('4831fe99422b4b4780091c09766dd4b2', '81c817a7ba56487a8ff07606647dc3e8', '1', 'SELECT * FROM A_INDEX AI ORDER BY AI.SORT', null);
INSERT INTO `sys_sqlcfg` VALUES ('5a6939d4c77e4d34b3a0f74690290267', '9b6fae1af62948048a3975c4b3bed270', '1', 'SELECT * FROM SYS_LAYOUT_TYPE LAYT @WHERE1=1 ORDER BY LAYT.LOCATION', null);
INSERT INTO `sys_sqlcfg` VALUES ('7de89ebcd5be45b68871d453975cd3c3', 'a9b0da5b4c514887822bdf04e7009152', '1', 'SELECT AI.*,AIM.IMAGE_URL\n  FROM APP_INFO AI\nLEFT JOIN ( SELECT * FROM APP_IMAGE IMG WHERE IMG.TYPE = 1) AIM\n    ON AI.APP_ID = AIM.APP_ID\n WHERE @WHERE1=1\nORDER BY AI.SORT', null);
INSERT INTO `sys_sqlcfg` VALUES ('843f7beecc6a471a8ee470199dfe8ec9', 'c945b85569fa4be3ad1358342568d566', '1', 'SELECT *\n  FROM APP_PACKAGE AP\n WHERE @WHERE1=1\n ORDER BY AP.APP_ID,AP.SORT', null);
INSERT INTO `sys_sqlcfg` VALUES ('89beef64e0ee4353b90d423cc53e2369', '0d7822724f23491d9dc18885c0189249', '1', 'select * from sys_user', null);
INSERT INTO `sys_sqlcfg` VALUES ('96b36571c1d04371a2abf05d29e762e1', 'fd82c37ebb2c4ead8ed145f927ede30b', '1', 'SELECT UVIEW.*,CVS.PROPERTY\nFROM  SYS_CVSCFG CVS,\n		  SYS_VIEWCFG UVIEW\nWHERE CVS.UC_ID =  UVIEW.UC_ID\n	AND CVS.ID = UVIEW.CVS_ID\n	AND @WHERE1=1\nORDER BY UVIEW.VIEW_FLAG,UVIEW.SORT,UVIEW.TITLE', '查询UC的viewcfg的sql语句.');
INSERT INTO `sys_sqlcfg` VALUES ('c9baa9fb6ccd410093d3b555bd06de76', 'e544ba72caf14b08b88f2924c3c84203', '1', 'SELECT * FROM SYS_UCCFG T @WHERE1=1  ORDER BY T.UCODE', '查询UC的sql语句.');
INSERT INTO `sys_sqlcfg` VALUES ('ca51b0ec55654397996dd4128d2c4f03', '96750c9e67514b93b119d0bdc35aefd2', '1', 'SELECT * FROM SYS_ORGZ T @WHERE1=1  ORDER BY T.CODE', null);
INSERT INTO `sys_sqlcfg` VALUES ('cd6c41a482094c23b620e02e6a9e8811', '0df2aee24a41430cb1fd7788eea0d1bb', '1', 'SELECT *\nFROM A_HOT HOT\nWHERE @WHERE1=1\n  AND HOT.ENABLE_FLAG = 1\n  AND HOT.DEL_FLAG = 0', null);
INSERT INTO `sys_sqlcfg` VALUES ('d03031bfbba84584af022b80a8184d92', '62800633107f4da9942348553290964d', '1', 'SELECT * FROM SYS_CVSCFG CVS @WHERE1=1 ORDER BY CVS.FLAG,CVS.PROPERTY', '查询UC的cvscfg的sql语句.');
INSERT INTO `sys_sqlcfg` VALUES ('d11e3f75c21649c488dc136e44152a9a', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '1', 'SELECT PAGE.*,PAGEUC.UC_IDS\nFROM SYS_PAGE PAGE\nLEFT JOIN  ( SELECT PUC.PAGE_ID, GROUP_CONCAT(PUC.UC_ID) UC_IDS\n              FROM SYS_PAGE_UC PUC  GROUP BY PUC.PAGE_ID ) PAGEUC\nON PAGE.ID = PAGEUC.PAGE_ID\n@WHERE1=1\norder by page.pcode', '查询page的sql语句.');
INSERT INTO `sys_sqlcfg` VALUES ('d766628345ec4932b5c752a21c6eb0af', '9eda7128f2084a5cb9808ac0c834a986', '1', 'SELECT * FROM SYS_LAYOUT LAY ORDER BY LAY.LCODE', null);
INSERT INTO `sys_sqlcfg` VALUES ('e066d827a103442c8bd85013c35cd11d', '4905fd8df68b4c4b87e9ecb5c29911ae', '1', 'SELECT *\n  FROM A_CATEGORY CAT\n WHERE @WHERE1=1\n   AND CAT.ENABLE_FLAG = 1\n   AND CAT.DEL_FLAG = 0\nORDER BY CAT.SORT', null);
INSERT INTO `sys_sqlcfg` VALUES ('e62f7d95c9af48adabcff72d92060758', 'f7f8b9d7a22e480cb97a0b04c24719c5', '1', 'SELECT *\n  FROM APP_IMAGE AM\n WHERE @WHERE1=1\n   AND  AM.TYPE = 2\nORDER BY AM.APP_ID,AM.SORT', null);
INSERT INTO `sys_sqlcfg` VALUES ('e81cc6cd4fdc42a5b7064418431dbc73', '8b34190046584685afb77d0e21b0d1e4', '1', 'SELECT LV.*,\n        PAGE.ID,\n        PAGE.CNAME,\n        PAGE.ENAME,\n        PAGE.LIST_HEADER,\n        PAGE.MODULE PMODULE,\n        PAGE.PAGE,\n        PAGE.PARAMS PPARAMS,\n        PAGE.PCODE\nFROM\n  (SELECT T.ID LID,\n					 T.MODULE,\n					 T.LCODE,\n					 LT.ID LT_ID,\n					 LT.LOCATION,\n					 LC.ID LC_ID,\n					 LC.LORDER,\n					 LC.PAGEID PAGE_ID,\n					 LC.PARAMS\n		FROM\n			SYS_LAYOUT T ,\n			SYS_LAYOUT_TYPE LT,\n			SYS_LAYOUT_CASE LC\n		WHERE T.ID = LT.LID\n		AND LT.ID = LC.LTID) LV\nLEFT JOIN SYS_PAGE PAGE\nON LV.PAGE_ID = PAGE.ID\n@WHERE1=1\nORDER BY LV.MODULE,LV.LOCATION,LV.LORDER', null);

-- ----------------------------
-- Table structure for sys_uccfg
-- ----------------------------
DROP TABLE IF EXISTS `sys_uccfg`;
CREATE TABLE `sys_uccfg` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `ucode` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uc_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bean_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iscache` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='UC的s配置';

-- ----------------------------
-- Records of sys_uccfg
-- ----------------------------
INSERT INTO `sys_uccfg` VALUES ('0d7822724f23491d9dc18885c0189249', '00001001', 'UC_QUERY_TEST', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('0df2aee24a41430cb1fd7788eea0d1bb', '02010001', 'UC_QUERY_HOTSEARCH', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('12bf4d62ddf246d0b34a0c2b912870a9', '00000006', 'UC_ADD_PAGE', 'pageService', 'addPages', '0');
INSERT INTO `sys_uccfg` VALUES ('200b12b1839b426ebedfa15c6ea57aad', '00000016', 'UC_ADD_LAYOUT', 'layoutService', 'addLayout', null);
INSERT INTO `sys_uccfg` VALUES ('26fcddd9a90d4c64bdb4aeef64f62573', '00000018', 'UC_ADD_LAYOUTCASE', 'layoutService', 'addLayoutCase', null);
INSERT INTO `sys_uccfg` VALUES ('306dbae478ac4d20934ea6193e1434a5', '00000012', 'UC_UPDATE_UCCVSVIEW', 'functionService', 'updateUcCvsView', null);
INSERT INTO `sys_uccfg` VALUES ('30ff5e6a052149a0ab4b525c3fa5c13b', '00000009', 'UC_ADD_VIEWCFG', 'functionService', 'addViewcfg', '1');
INSERT INTO `sys_uccfg` VALUES ('398468f219e14e299eed0f28eded0ead', '00000023', 'UC_QUERY_DICTS', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('42279b844ba1468bb45a272b019a62e4', '02010009', 'UC_GET_IMAGEINDEX_M', 'imageSearchService', 'queryImageIndex', '1');
INSERT INTO `sys_uccfg` VALUES ('4289d374c85646c2ad6abe3f2ef34960', '00000005', 'UC_DELETE_PAGE', 'pageService', 'deletePage', '0');
INSERT INTO `sys_uccfg` VALUES ('44e4058d3f4644f1a0071dc30799e886', '02000006', 'UC_QUERY_APPPKAGES_M', 'appBoxService', 'queryAppPkages', '1');
INSERT INTO `sys_uccfg` VALUES ('4905fd8df68b4c4b87e9ecb5c29911ae', '02010002', 'UC_QUERY_CATEGORY', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('4a0d5553dd6248dfbda88b2a0dc97302', '00000008', 'UC_QUERY_DICT', 'commonService', 'queryDictByNo', null);
INSERT INTO `sys_uccfg` VALUES ('5b415befc437414fae9207bb3fa14c7f', '02010005', 'UC_GET_CATEGORY_M', 'imageSearchService', 'queryCategorys', '1');
INSERT INTO `sys_uccfg` VALUES ('62800633107f4da9942348553290964d', '00000003', 'UC_QUERY_CVS', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('69e2b143114747e2b705b9ab094224ba', '02010013', 'UC_ADD_IDEABACK_M', 'appBoxService', 'addIdeaBack', null);
INSERT INTO `sys_uccfg` VALUES ('79eca4e3fbe3412e8514abca7935dde5', '00000013', 'UC_ADD_CVSCFG', 'functionService', 'addCvscfg', null);
INSERT INTO `sys_uccfg` VALUES ('81c768d3aa934d9785c891b3b2ab6214', '00000017', 'UC_ADD_LAYOUTTYPE', 'layoutService', 'addLayoutType', null);
INSERT INTO `sys_uccfg` VALUES ('81c817a7ba56487a8ff07606647dc3e8', '02010008', 'UC_GET_IMAGEINDEX', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('8b34190046584685afb77d0e21b0d1e4', '00000015', 'UC_QUERY_LAYOUTTC', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('96750c9e67514b93b119d0bdc35aefd2', '00000021', 'UC_QUERY_ORGS', 'orgzService', 'queryOrgzTree', '1');
INSERT INTO `sys_uccfg` VALUES ('9ae27bafb59a47d082acd2a98c960fbd', '00000002', 'UC_ADD_UC', 'functionService', 'addUccfg', '0');
INSERT INTO `sys_uccfg` VALUES ('9b3e8e8c3fb44ef1bd22ace5e7f26672', '00000022', 'UC_ADD_ORGZ', 'orgzService', 'addOrgz', null);
INSERT INTO `sys_uccfg` VALUES ('9b6fae1af62948048a3975c4b3bed270', '00000020', 'UC_QUERY_LAYOUTTYPE', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('9c13fa15208d40ef8c997704ef63bf55', '10000001', 'UC_QUERY_USERS', 'commonService', 'query', '0');
INSERT INTO `sys_uccfg` VALUES ('9e44e4b5489346bdb9cda9943fbc88fa', '00000025', 'UC_DELETE_VIEWCFG', 'functionService', 'deleteViewcfg', null);
INSERT INTO `sys_uccfg` VALUES ('9eda7128f2084a5cb9808ac0c834a986', '00000019', 'UC_QUERY_LAYOUT', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('a7abbed2846d4abc8d3689cd535349ea', '02010004', 'UC_GET_HOTSEARCH_M', 'imageSearchService', 'queryHotSearch', '1');
INSERT INTO `sys_uccfg` VALUES ('a8d417eafd014c4686fe535b81ddf14d', '02010012', 'UC_GET_APPCONFIG_M', 'imageSearchService', 'getAppConfig', '1');
INSERT INTO `sys_uccfg` VALUES ('a9b0da5b4c514887822bdf04e7009152', '02000001', 'UC_QUERY_APPINFOS', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('ad7c6110b8164fcbb87c33f3dadc4dd3', '00000004', 'UC_QUERY_PAGES', 'commonService', 'query', '0');
INSERT INTO `sys_uccfg` VALUES ('ae9ddd0ae18b4755bffebd545fd7e44d', '02010006', 'UC_GET_IMAGES_M', 'imageSearchService', 'queryImages', null);
INSERT INTO `sys_uccfg` VALUES ('b4c7f4a5b6e04b3fa31d500233471687', '02000007', 'UC_GET_APPDETAILINFO_M', 'appBoxService', 'queryAppInfo', '1');
INSERT INTO `sys_uccfg` VALUES ('c070470eb9b74947b62ef3e54b945664', '00000014', 'UC_LOAD_CACHES', 'commonService', 'reloadCaches', null);
INSERT INTO `sys_uccfg` VALUES ('c945b85569fa4be3ad1358342568d566', '02000003', 'UC_QUERY_APPPKAGES', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('ca9df093ec4641bca333b112ab897c09', '02000004', 'UC_QUERY_APPINFOS_M', 'appBoxService', 'queryAppInfos', '1');
INSERT INTO `sys_uccfg` VALUES ('cc11a0fbb54c4974a545c3a03ac27778', '00000024', 'UC_DELETE_CVSCFG', 'functionService', 'deleteCvscfg', null);
INSERT INTO `sys_uccfg` VALUES ('cf6997b648d74f01aa52d937123f5d06', '02010003', 'UC_QUERY_TAG', 'commonService', 'query', '1');
INSERT INTO `sys_uccfg` VALUES ('da6651cb7c89432492ea43011dbb6a31', '02010007', 'UC_GET_DOWNLOADIMAGE', 'imageSearchService', 'imageView', null);
INSERT INTO `sys_uccfg` VALUES ('e0cd47cea8284777800f4eea30a346a2', '02000005', 'UC_QUERY_APPIMAGES_M', 'appBoxService', 'queryAppImages', '1');
INSERT INTO `sys_uccfg` VALUES ('e544ba72caf14b08b88f2924c3c84203', '00000001', 'UC_QUERY_UCS', 'commonService', 'query', '0');
INSERT INTO `sys_uccfg` VALUES ('ee48189d7450401cbec302d41b52f3e5', '02010010', 'UC_QUERY_TAG_M', 'imageSearchService', 'queryTags', '1');
INSERT INTO `sys_uccfg` VALUES ('eedf047ba0194487b769795554e29a84', '02010011', 'UC_EIDT_APPCONFIG', 'imageSearchService', 'appConfig', '1');
INSERT INTO `sys_uccfg` VALUES ('ef4504fdb6134cc1947584aa31d6e0ea', '00000011', 'UC_EDIT_UCANDSQL', 'functionService', 'updateUccfg', null);
INSERT INTO `sys_uccfg` VALUES ('f7f8b9d7a22e480cb97a0b04c24719c5', '02000002', 'UC_QUERY_APPIMAGES', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('fd82c37ebb2c4ead8ed145f927ede30b', '00000007', 'UC_QUERY_VIEW', 'commonService', 'query', '0');
INSERT INTO `sys_uccfg` VALUES ('fe7b1cf8b71448c997d2078e6c398e4e', '00000010', 'UC_QUERY_UCANDSQL', 'commonService', 'query', null);
INSERT INTO `sys_uccfg` VALUES ('ff80da3103194caf93cfd7cf9b1801ac', '00000026', 'UC_DELETE_UCCFG', 'functionService', 'deleteUccfg', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ÓÃ»§Ãû',
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ÃÜÂë',
  `cname` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ÖÐÎÄÃû³Æ',
  `isuse` int(11) DEFAULT NULL COMMENT 'ÊÇ·ñ¼¤»î',
  `iscan` int(11) DEFAULT NULL COMMENT 'ÊÇ·ñÆôÓÃ',
  `orgz_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '×éÖ¯»ú¹¹Id',
  `del_flag` int(11) DEFAULT NULL COMMENT 'É¾³ý±êÖ¾',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('ef01702d6fd34cfdb2c25072a86a8d78', 'zfire_admin', 'FZhMOX0e0M4ZCwLtO4yCVfTdk/tgZXjU', '余新林', '1', '1', '020102', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `uid` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rid` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_viewcfg
-- ----------------------------
DROP TABLE IF EXISTS `sys_viewcfg`;
CREATE TABLE `sys_viewcfg` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `uc_id` char(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应的UC的id',
  `cvs_id` char(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对应的cvs的id,用于获取property',
  `level` int(11) DEFAULT NULL COMMENT '显示的级别：0-不显示，1-显示，2-详细显示',
  `title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表头的title',
  `dict_no` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字典编号',
  `href_type` int(11) DEFAULT NULL COMMENT '链接类型：1-弹出，2-页面跳转',
  `href` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'href链接',
  `data_type` int(11) DEFAULT NULL COMMENT '显示的数据类型：1-字符串2-整数3-小数4-日期',
  `formate` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对以上的如小数、日期给定格式化的regex',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `align` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '对齐：right，left，center',
  `min_width` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最小宽度',
  `width` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '宽度',
  `max_width` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表格显示时最大宽度',
  `view_flag` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '显示的视图：默认DEFAULT',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_viewcfg
-- ----------------------------
INSERT INTO `sys_viewcfg` VALUES ('0225f434251a4420b4b64125165c28fd', '81c817a7ba56487a8ff07606647dc3e8', 'ce716c49f2f844c68b2edce34244cde7', '1', 'origin', null, null, null, '0', null, '30', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('07de036db1a643f8a8615788805f0b72', '9eda7128f2084a5cb9808ac0c834a986', '1eda117afb71481eaeb40667745352e4', '0', 'lcode', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('07ebbc0af96f4ddaa113f5cc1974dae0', 'a9b0da5b4c514887822bdf04e7009152', 'db6f3b0fedc84858b1615d10eca5df97', '1', '描述', '', null, '', '1', '', '80', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('0a8ba75b1996493d82d789db4f19981b', '96750c9e67514b93b119d0bdc35aefd2', '6dd9c94acd1f44d0bf7a33a35e6978ee', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('0aebd313c5c64b239b76de135dd95a72', 'fe7b1cf8b71448c997d2078e6c398e4e', '356f347149f649c8a63c1be13034f84c', '0', 'beanId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('0edf320a9fbd41d7931d185bda63c29a', '0d7822724f23491d9dc18885c0189249', 'aa57468af92f469dac74247096c47217', '1', '中文名称', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('0ee0e77b3b3c4b1c87fce52bc4ec1d41', '81c817a7ba56487a8ff07606647dc3e8', 'b44e0d744b7944659818f710f2832610', '1', 'sort', '', null, '', '2', '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('12e311aae9974d028744d1812ec9ce3f', 'cf6997b648d74f01aa52d937123f5d06', 'a629b17671814371bc244fefebbcc786', '0', 'shortTag', '', null, '', null, '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('133f069fb3ad4c7299fe68d648c2f3b1', '62800633107f4da9942348553290964d', '8eaeb9ef8d2b4e3296b11b639494197c', '1', '字段类型', '0004', null, '', null, '', '55', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('14179a172a7b478784b65bd56b971810', 'e544ba72caf14b08b88f2924c3c84203', '80ef9fa8202342afbfe0f41a85da4bb7', '1', '名称', '', '3', '/frame/edit_uc.html?ucId={id}', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1514a564ad4d45d1bd18f4df4220584d', '4905fd8df68b4c4b87e9ecb5c29911ae', '2933fd051807428191e925658002416c', '1', '短名', '', null, '', '1', '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('15c0e951d41149828af7f6783d5afa64', 'a9b0da5b4c514887822bdf04e7009152', '94b149cf5da4415f9c936dabb51b7310', '0', 'security', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('15c93aa394f14f98a500d751adfa6d63', 'cf6997b648d74f01aa52d937123f5d06', '40dd70a679b2455181b952e77fd04e42', '0', 'dateTime', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('15fc9f2c4b944519b407f2c2ab52493f', 'a9b0da5b4c514887822bdf04e7009152', '0b0106aaf46d42bfa8596f5f5623da70', '1', '下载', '', null, '', '1', '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('16fac81f2eb34502a4ccb76254c5d516', 'cf6997b648d74f01aa52d937123f5d06', 'e6b1999d5e93402fb96037399c3fcdd4', '0', 'cId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('17444680bfc64630a2e1d974d2446229', '96750c9e67514b93b119d0bdc35aefd2', 'c1cc2c1a274045a381cd6f16b6e02f9e', '1', '组织机构编码', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1932b5624c9c407ca1eed8bcf5e4c353', '0df2aee24a41430cb1fd7788eea0d1bb', 'c32a3166511c44adbdf3eccc66a1f9f0', '0', 'hId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1aad74df641d437fbf3167fe93937ebe', '0d7822724f23491d9dc18885c0189249', '44c83d8132ff4e1087553dd024b62781', '0', 'isuse', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1ad5fba816374d6c899d4e2a0455f968', '398468f219e14e299eed0f28eded0ead', '9957af113c7a45299b29f13aa7bd11aa', '1', '系统名称', '', null, '', '1', '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1c694f58cd064cd4b5f1abc2faa993b1', 'fd82c37ebb2c4ead8ed145f927ede30b', '23cafee63d6c42059f9d48178fa6295b', '1', '对齐', '', null, '', null, '', '60', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1d0674446fd343e88af71ae930d7f81e', 'a9b0da5b4c514887822bdf04e7009152', '2427ddab6b174a93b70fc5d1768dbbac', '0', 'ID', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1e0fb5ab908741f689c0784ed0f5d82e', 'a9b0da5b4c514887822bdf04e7009152', '72a4e4057e6f4775ae3444db59faf8ef', '0', 'imageUrl', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('1f21b32e39694c23b1a7990aff216743', 'e544ba72caf14b08b88f2924c3c84203', '79dccb2bd37047b5b81379defd15d3e1', '1', 'JavaBean名称', null, null, null, '0', null, '30', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('20b8e34516374910a0f1d23130f5af39', 'ad7c6110b8164fcbb87c33f3dadc4dd3', 'cab782d84785406a91dcc0fc70e77ae8', '1', '编码', null, null, null, '0', null, '10', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('2169b8eac0be4ce7b2808edea61c534c', 'a9b0da5b4c514887822bdf04e7009152', '16902a02718e4ba38c8917d6c6965908', '1', '更新时间', '', null, '', '1', '', '75', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('2472c7d30be44745ae20f17407d46169', 'e544ba72caf14b08b88f2924c3c84203', '69bb0724faba4b288a406c478ec04cac', '0', 'ID', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('25f316eab2704d5ebd81e141b7b00968', 'a9b0da5b4c514887822bdf04e7009152', '03f4ff95fe7e40379075adce3d2512cf', '1', '安装包', '', null, '', '1', '', '70', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('263ab162fda64fd8a7aee2f610e9960e', 'fd82c37ebb2c4ead8ed145f927ede30b', '018b7099bcdb4f34b755409a17dc52f2', '1', '最小宽度', '', null, '', null, '', '210', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('2652d8b510374a4992eeb7bd128c0822', '0df2aee24a41430cb1fd7788eea0d1bb', '9f9cb6ab80db47e0baaa615b436ea48d', '1', '删除标识', '', null, '', '1', '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('2deb55a0d7554f3fa3d9158758331a61', '81c817a7ba56487a8ff07606647dc3e8', '632ce8ae4ef54a70af757229f3ac9f96', '1', 'title', '', null, '', '0', '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('2e26a7f5529b4267bf23c11e1212eaba', 'fd82c37ebb2c4ead8ed145f927ede30b', 'c0a7e3da9e57466082609826a4458690', '1', '标题', '', '1', 'page=00000009&viewId={id}&ucId={ucId}&ucname=UC_QUERY_VIEW', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3028496e71784c9588be59b56dc339ef', 'a9b0da5b4c514887822bdf04e7009152', '72c6f97a18db4a7cbb77aca6cd8e6df2', '0', 'deleteFlag', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('302b12e238924c16880aca92f80654d2', 'e544ba72caf14b08b88f2924c3c84203', '1527e3b459c7456782e4ff13b8ce4858', '1', '缓存查询记录', '0008', null, '', null, '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3137d63a62e64882b672110001fb3366', '9c13fa15208d40ef8c997704ef63bf55', '85f240bf37e94f5ca20ee55ff76cde97', '1', '部门代码', '', null, '', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('32bb21209cfe46a39c0ddf77d17ce0f9', '8b34190046584685afb77d0e21b0d1e4', '89b1c0b4af054d03b28bbce4fd4c8e0a', '0', 'ltId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('34050dcef1224ef789e40186e9a3727c', 'a9b0da5b4c514887822bdf04e7009152', '55c72fdc1c56483ea37abdc925749121', '1', '指数', '', null, '', '1', '', '60', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3608561a6b4d4055901d5e8865a3a367', '9c13fa15208d40ef8c997704ef63bf55', '96cfe8457e834c1b9056b86d5637708a', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('36e4a3161841474cac84193a9cc950f7', '8b34190046584685afb77d0e21b0d1e4', 'a446d8d860294bb7bd9f526b4585d127', '0', 'ename', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3827fef501004860987a9df89df8e67c', 'e544ba72caf14b08b88f2924c3c84203', '7c0faa8b595346c89194a9c1ed56c5a7', '1', '方法', null, null, null, '0', null, '40', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('39244617197842d9b003fe2f7a314ae9', '0d7822724f23491d9dc18885c0189249', 'da22a61938654befb1aed4fb38912a84', '0', 'orgzId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3a25d35123174d6b8d58f02f9ed17895', '398468f219e14e299eed0f28eded0ead', '1941ca9bf63543bdab761f8b52efd7f1', '1', '字典键(key)', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3a7b6793f3bd491bb61249d45607b80b', 'cf6997b648d74f01aa52d937123f5d06', 'e7b642038d2240ee81398e5fc62e96d0', '0', 'tId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3b76d7a3b8d3459c9ee8b5519f84b64f', 'fe7b1cf8b71448c997d2078e6c398e4e', '6774cd14741a4835b2709c102b830f9f', '0', 'sqlId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('3fd4d3a39b714ff398407196c4bd2d49', 'fd82c37ebb2c4ead8ed145f927ede30b', '781ea6f0b6cb437190613fb6486c7a9f', '1', '字典', '', null, '', null, '', '44', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('40ca09135210455894cde53da389bf7b', 'fd82c37ebb2c4ead8ed145f927ede30b', '45f84ccdb7784cfba362ceefbd4b665d', '0', 'ucId', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('4406ba9e2e12401f8b3c81796c03995e', '4905fd8df68b4c4b87e9ecb5c29911ae', '5a6cb6ac20504a60bcb384d81d5497a9', '1', '排序', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('4a8a1f7901c34ea98462b9537df79ed3', '0d7822724f23491d9dc18885c0189249', '7029a99172404c22986bebc1ec57dc61', '1', 'password', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('4b555c7ac70a4cf7952417fe90a046e1', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2275115ef0de4b96854b932c9fcb72d8', '1', '默认参数', null, null, null, '0', null, '60', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('4ca036ba3e924202936fb5e0bb6ed46f', 'a9b0da5b4c514887822bdf04e7009152', '12074bcbf4d740ad80f41c5785cd9508', '1', '语言', '', null, '', '1', '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('4f6cb349fa6846eb81e20d13d318cc7f', 'cf6997b648d74f01aa52d937123f5d06', 'd25fac5f71e24d3dbb59d6e84487d653', '1', '长词语', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('53420a6203704f6fab34ce65ac826f41', '9c13fa15208d40ef8c997704ef63bf55', 'a33be125ba3547ffa69c6b1474cf1b4f', '1', '姓名', '', null, '', '1', '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('53f3da5eabdf4d44b5c48ddf9cbaa543', 'fd82c37ebb2c4ead8ed145f927ede30b', '853eb2dc359a4845bba86dfe9401f130', '1', '视图', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('542a878a605a4c57b9d469a98ea9e34d', '96750c9e67514b93b119d0bdc35aefd2', '6fef75d2cfec4490be7810511d44cf01', '1', '描述信息', '', null, '', null, '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('5476a58bb6914f0790975d18cd3e76ed', 'c945b85569fa4be3ad1358342568d566', 'ed11f52b4bfc45409e59e0c01d47389b', '0', 'pkageId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('54efae5ae702417e9be4bc85b206a6d6', '0d7822724f23491d9dc18885c0189249', '4e0a0367e3014e1fb2bcc8edaedc2066', '1', 'username', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('5522017d3e99411b90ac6df0ca6ed217', 'f7f8b9d7a22e480cb97a0b04c24719c5', '07e1f8ef14ab4277ab004f888ab81bb9', '0', 'deleteFlag', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('55dfccdf25b64cc39bddc70032b137eb', '0df2aee24a41430cb1fd7788eea0d1bb', '6c7c8d0ecdd844389395cd50fd641640', '1', '关键字', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('565ef67ec396407ba41105ace67b018d', '8b34190046584685afb77d0e21b0d1e4', '633c507bd59345fcb434090d8997fd0e', '0', 'lid', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('5661b4d3b4364ec6bf58bb4b256692bd', '4905fd8df68b4c4b87e9ecb5c29911ae', '9550713260f44450ab58a9a3896d6a5a', '0', 'cId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('573ada009685435c9aefdab67b6182da', 'a9b0da5b4c514887822bdf04e7009152', '1c6cff0f35f14f4fbced559f0681d90f', '0', 'sort', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('5a629e1a07554587a30223ec7abf7db8', 'a9b0da5b4c514887822bdf04e7009152', '9bc6ef72fab743f68b2fd97c93ce2d1d', '1', '名称', '', null, '', '1', '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('5da9780d334e43968c962ea76367fdae', 'cf6997b648d74f01aa52d937123f5d06', '316401f9d47f45ff81df7c7fc5f80b8a', '0', 'shortTitle', '', null, '', null, '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('5ecc66498a2844bbbdc0e1fae3079059', 'fd82c37ebb2c4ead8ed145f927ede30b', 'ff9f231506be45f2a541c59c0ba61d92', '1', '最大宽度', '', null, '', null, '', '235', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('5f0262ce50314da991d8531f3949ac36', 'fe7b1cf8b71448c997d2078e6c398e4e', '1863f92003cb4917aa7c05f4d24f9a09', '0', 'type', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('615dedfc41764d7085dfdee5565319b2', 'fd82c37ebb2c4ead8ed145f927ede30b', '24ac97c8811a4a01b77886e3274af8ce', '1', '显示', '0006', null, '', null, '', '15', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('639abf0f598849b38befa9962ace67c5', 'ad7c6110b8164fcbb87c33f3dadc4dd3', 'e224ad7cc63346e6bd4f4ece89d67617', '0', '名称(英文)', null, null, null, '0', null, '30', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('64cb32db3b34430baa29b71a2ef457ee', '62800633107f4da9942348553290964d', '344ff3e6f2374cd7928f6889cd79519e', '0', 'ucId', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('671db19e50bf433d986c0b85c6fca777', 'fd82c37ebb2c4ead8ed145f927ede30b', '356efa0b340844e8a1c8f111c98b0279', '1', '数据类型', '0003', null, '', null, '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('676b1acb7c8643bb9b95b7066133fa0a', 'fe7b1cf8b71448c997d2078e6c398e4e', 'a18003ba13f74d1188299be90a64f426', '0', 'method', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('6a57fa084cc846a98efa1c373dba7da5', '81c817a7ba56487a8ff07606647dc3e8', '95343a699f3946b99b44d7c925917bc8', '1', 'tags', null, null, null, '0', null, '20', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('6abb83a687cb408b847fad5aaac8ea8b', '9c13fa15208d40ef8c997704ef63bf55', 'e7a78fa4eaf54d91adf8ab23915537e0', '0', 'isuse', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('6be08b6557684501a80cebc44df1f9ab', '4905fd8df68b4c4b87e9ecb5c29911ae', 'de457e8f86be462a88cd6b2369124f0e', '0', 'longTitle', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('6c1076aede29492f90bfc927913397a0', 'f7f8b9d7a22e480cb97a0b04c24719c5', 'd0a94de2019e4bf784f7d28b08892bef', '0', 'imageUrl', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('6dfb1e81d6eb46e7933f87608a2dcd6e', 'fd82c37ebb2c4ead8ed145f927ede30b', 'eefd5418c11546aba862a80507316512', '1', '排序', '', null, '', null, '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('718a57254d0142ff811d497bb0f98890', '62800633107f4da9942348553290964d', 'ba6e042bc43240979b199ff232710101', '1', '表达式', '0002', null, '', null, '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('72d1221cdaa1447e9532f8271c28a887', 'cf6997b648d74f01aa52d937123f5d06', 'e7b642038d2240ee81398e5fc62e96d0', '0', 'tId', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('731240b8f1bb48c9aab7e0a4e68225e9', 'fd82c37ebb2c4ead8ed145f927ede30b', '19fa4803b3a4478f9f190e01ee9601c4', '0', 'cvsId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('751b82af91234c4aba52862c7eb60bcc', 'a9b0da5b4c514887822bdf04e7009152', '41d3f968090d4d7b8838aac0c26f4265', '1', '系统版本', '', null, '', '1', '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7529a821993e4e85803625d25a9b7c44', '9c13fa15208d40ef8c997704ef63bf55', 'da91732a31bf4b2aaedcd06eae77eb9a', '0', 'username', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('756c4b1a14fa41ee90b7c8b65b7e69df', 'cf6997b648d74f01aa52d937123f5d06', '21de1cfbc9894d39a2177305f3588a36', '1', '删除标识', '', null, '', null, '', '60', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('75846ff975f64b8390e61ef60fd12f91', '9eda7128f2084a5cb9808ac0c834a986', 'e23497ad8f3e4e2c8b92ae01c303c84f', '0', 'module', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('760b1e7e22474a5bb18ce0c97e1d4d60', '8b34190046584685afb77d0e21b0d1e4', '59fad54e7cb642b7869e4eaa08c464b3', '1', '页面编码', '', null, '', null, '', '35', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7730b821d044431598b60175388fe979', 'fd82c37ebb2c4ead8ed145f927ede30b', '6d1c327293a449e9935cd781b37f6fc6', '1', '属性', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('786da846ac924afe9f178c6001c27ed4', '4905fd8df68b4c4b87e9ecb5c29911ae', '5a6cb6ac20504a60bcb384d81d5497a9', '0', 'sort', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('78871e680d034b6aa4b9d08765b2ce31', '398468f219e14e299eed0f28eded0ead', '87fe3ff379f84df78ecbcf8ec98f550f', '1', '字典值(Value)', '', null, '', null, '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('788a91ff9c634c289c61ab41bc8c95d3', 'c945b85569fa4be3ad1358342568d566', 'b72bc10c8d4b45f7b1dae47c7a4ea690', '0', 'sort', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7972b5db22564845a8bb82a4d94ac92f', '8b34190046584685afb77d0e21b0d1e4', 'b6831d59135342f09fe91c21c0cf3ad0', '1', '布局码', '', null, '', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('798b7af59ad24317bd66f36d9a656c4c', '8b34190046584685afb77d0e21b0d1e4', 'efd0bcdba30046c48904e9c022375854', '0', 'listHeader', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7cba5e19e0f349edb09bc37190d5e023', '0df2aee24a41430cb1fd7788eea0d1bb', '2c6668d9679c4f55a6aaffb1a5f4837b', '1', '标题', '', null, '', '1', '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7d189fd20be1491c94d7020ada6b7616', '81c817a7ba56487a8ff07606647dc3e8', '1ae712f38317433cb3372d502889e36b', '1', 'image', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7d1d8f1b75e3498480aeffc301f430a6', 'cf6997b648d74f01aa52d937123f5d06', '201defc985e745e38e3015c5faebede7', '0', 'longTitle', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7edb478e2f8b42a7933b54aa8cab31a8', '62800633107f4da9942348553290964d', '6844d30088da4ff28bac6cd7761f086a', '0', 'id', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('7f59a5cdd1c5414fa083d3c1b9b62c26', 'fe7b1cf8b71448c997d2078e6c398e4e', '2d9a4934f6994d9cba0c86619bf8161c', '0', 'csql', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('81cdd549a1c348f290d7e0a4b4ff409a', '9eda7128f2084a5cb9808ac0c834a986', '9d4df9aafb74412d9e92b23e2e31eec1', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('8213d7d529644d339ee9062d9635dbde', '0df2aee24a41430cb1fd7788eea0d1bb', '5b098c62735f4f3db893694d3e7260e3', '0', 'dateTime', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('83d588f416fb4063ab35969d201cfa90', 'a9b0da5b4c514887822bdf04e7009152', 'f0ccbc286b6b4fc0a6e5880385ef02d1', '0', 'free', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('85f65e776f114f7cad053cf715f4b895', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '63163966ebfa43edb499b371db015d9a', '1', '模块', null, null, null, '0', null, '15', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('86a80d9d05e4494db8bd94e71366a698', 'fd82c37ebb2c4ead8ed145f927ede30b', 'f9aae873fd5f4701a99c8abbe03bae65', '1', '宽度', '', null, '', null, '', '220', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('873556534b274727bb6bcc8b8981d9db', 'cf6997b648d74f01aa52d937123f5d06', '201defc985e745e38e3015c5faebede7', '0', 'longTitle', '', null, '', null, '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('87f6e8fe63b0447c951404d88b898b69', '9b6fae1af62948048a3975c4b3bed270', '4d16119879324b2fb27ae8359301a627', '0', 'lid', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('886a5a52c6504a119192485a01a2396c', '62800633107f4da9942348553290964d', '90c935d06df24f3280ec2b8c0beeeac9', '1', '字段', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('88fec7476ea2420b9dbcea09dbd0f34d', '0df2aee24a41430cb1fd7788eea0d1bb', '9510ecc0fbaa4c2f87c46ddb7afe2e4f', '1', '类型', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('897bfef0b48b4322a0adbb8b8fd0e82e', 'cf6997b648d74f01aa52d937123f5d06', '316401f9d47f45ff81df7c7fc5f80b8a', '1', '分类', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('89b1eebe71ac4a9c90dd65ea69dd1014', '4905fd8df68b4c4b87e9ecb5c29911ae', '806f8d2119b642dc81f392a580c81e5b', '1', '是否启用', '', null, '', '1', '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('8be2fb08dd5d495b83462821e5d0c725', '8b34190046584685afb77d0e21b0d1e4', '819a42fe645b42209fc5ef34adbbc984', '1', 'layout默认参数', '', null, '', null, '', '75', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('8c92a78fabe3446abf36ac1ad42545e9', '9c13fa15208d40ef8c997704ef63bf55', 'af06103b8dfd4d42bcf95268d8a6d1c0', '0', 'delFlag', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('8fd70979907a4b94bcdc985cc310690d', 'fe7b1cf8b71448c997d2078e6c398e4e', '32cc1722f15d4cb19da3bcece00f925c', '0', 'ucName', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('90e74b8096de4afabdd0e45aba8d238f', '81c817a7ba56487a8ff07606647dc3e8', 'ff7fd551dd5546c181aa27aa4447b6a1', '0', 'mId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('92ac093a8d6c49c5882e25de5b04f04d', '62800633107f4da9942348553290964d', '26c4817fb7ca4e7cb0b85a485bff9369', '1', '属性', '', '1', 'page=00000010&cvsId={id}&ucId={ucId}&ucname=UC_QUERY_CVS', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('94208d0f52fc436fb98e9b74d039bece', 'fd82c37ebb2c4ead8ed145f927ede30b', 'b3ab746ed1f44b7b94ec2284cf90165b', '1', '链接', '', null, '', null, '', '150', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('97b0c168a9354450a554998b07512f28', '96750c9e67514b93b119d0bdc35aefd2', '9f6c9b01e7b9466e80aa3ff323b9b9b3', '1', '是/否', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('97d56a3d54ff41fe84016b92fd28d782', 'cf6997b648d74f01aa52d937123f5d06', 'a629b17671814371bc244fefebbcc786', '1', '简短词语', '', null, '', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('99bcd9615ec1471da1705edbdd51103f', 'cf6997b648d74f01aa52d937123f5d06', '77b91a28550b4967ab51ff70734d7cf2', '0', 'imgUrl', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('9a276989c7dc49b990521fc779f54c5b', 'fd82c37ebb2c4ead8ed145f927ede30b', 'c57e9ef0446d4e31800093cadcebba25', '1', '链接类型', '0007', null, '', null, '', '140', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('9be0a2e9ec6d4aa9b6ef87bfa7a6ea0a', '4905fd8df68b4c4b87e9ecb5c29911ae', '2933fd051807428191e925658002416c', '0', 'shortTitle', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('9fae14108e31434ea7108d1a145fbb38', '8b34190046584685afb77d0e21b0d1e4', '9d4eed5876184b31abf3c214681e079c', '1', '位置', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('9fc83fcb5f6b4db4831bee52e2990f10', '9eda7128f2084a5cb9808ac0c834a986', 'e0d0d71066234ed498e74d0115c6d1e4', '0', 'remark', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('a290f39e193140599efc3fe8df65950d', 'a9b0da5b4c514887822bdf04e7009152', '994525198a6744f5ad73de4b9ebf60d9', '0', 'version', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('a377fccbef7f4c2fa22bc60b2043e59d', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '2ce71985066f497cbca1b794a0aca052', '1', '页面', null, null, null, '0', null, '50', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('a49f279a39cd42bd9d2b8ae775535b43', '62800633107f4da9942348553290964d', 'b618d444bed348e3875ee7c0872be8b5', '1', 'java类型', '', null, '', null, '', '70', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('a6dadb505a62446f916de4b4430346ae', '0d7822724f23491d9dc18885c0189249', 'ca4069df948a464398c8c3b6f5626906', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('a7db77b491d14fc88aa17f35caa2ba91', 'c945b85569fa4be3ad1358342568d566', 'a9e67d53c2584785bb370e7b7b63fad0', '0', 'deleteFlag', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('a9cf6409aaac498a8e8d18f18e4ca7c1', '0df2aee24a41430cb1fd7788eea0d1bb', 'd84f4412a294428ba2eed01f2fb723ad', '1', '来源', '', null, '', null, '', '35', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('aa16ec2539ad451e818be9117688e9a9', 'cf6997b648d74f01aa52d937123f5d06', '22ac073d4fec4345afeec1d807219395', '1', '启用标识', '', null, '', null, '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ab87e46a9acf480285d8289a1402c027', 'f7f8b9d7a22e480cb97a0b04c24719c5', '5d6044b68d6c419fa506a0db378baf84', '0', 'alignType', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ad6be21e3d6741a88eac23d6f0b25fb5', '398468f219e14e299eed0f28eded0ead', 'dd418320a8ab4770b4e805b5df464de8', '1', '字典编码', '', null, '', '1', '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ada813ccc57c44f199f94f00e4f4db82', '0df2aee24a41430cb1fd7788eea0d1bb', '8c9b4c6178ee467987f42ce59c76de23', '1', '启用标识', '', null, '', '1', '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ae19040ae0c748e099306a5d67d9544d', '96750c9e67514b93b119d0bdc35aefd2', 'b087c87d3aa44ee98b01368c29a189be', '1', '组织机构名称', '', null, '', null, '', '5', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('b14e69b0e04544e09cabc47a67bd3fe1', '9c13fa15208d40ef8c997704ef63bf55', 'b8a804f27ed9446ca75fc023e894aad3', '1', '部门名称', '', null, '', null, '', '30', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('b1a9c53b026249d8b280316a1f7fd56c', '8b34190046584685afb77d0e21b0d1e4', '1890e7167bd04a94bdf878f707cb0343', '0', 'pageId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('b2cfd215f7de47ba9e239d696a138c2b', '8b34190046584685afb77d0e21b0d1e4', '1bf749156cb04ae98efdb3a1471949c1', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('b54ed02590dd4efbbfd4f52720c12a50', '9c13fa15208d40ef8c997704ef63bf55', 'e9b974bc1ec248c1813864b5dbe9c3be', '0', 'password', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('b5628e79127548cd804a085b84b82c2d', 'cf6997b648d74f01aa52d937123f5d06', 'e6b1999d5e93402fb96037399c3fcdd4', '0', 'cId', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('b6055f287a044dd8bacd4fc5157872ce', '81c817a7ba56487a8ff07606647dc3e8', '0d75cfd40e644f23a178908be2977142', '0', 'dateTime', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('b713c3184bdc4765b7f0570a4a2558bf', 'f7f8b9d7a22e480cb97a0b04c24719c5', '2af13074f4de4e8abb13320fc2c8c410', '0', 'sort', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('bae15f4570ba43f2952b10729bc29f03', '4905fd8df68b4c4b87e9ecb5c29911ae', '36dd4842438b402d892ff22a71166e30', '0', 'dateTime', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('bb28450aea3d46f48e8d10b65faa48c5', '0df2aee24a41430cb1fd7788eea0d1bb', '9510ecc0fbaa4c2f87c46ddb7afe2e4f', '0', 'type', '', null, '', null, '', '200', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('bb69e52c0d3c4507b12635427e12e4b9', 'c945b85569fa4be3ad1358342568d566', '33ef16b365334daba95698b5106a6b6c', '0', 'appId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('bed0677891784afe9a8ded9d1ce247de', '0df2aee24a41430cb1fd7788eea0d1bb', '2c6668d9679c4f55a6aaffb1a5f4837b', '0', 'tags', '', null, '', null, '', '200', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('c14ec679ee324767a822b51aa7432fea', '9b6fae1af62948048a3975c4b3bed270', '5fd05beff95740978628d53d238f4142', '0', 'remark', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c2dc8b7552724a89b388f1f8d371612c', 'fd82c37ebb2c4ead8ed145f927ede30b', '08490794879e48fe873a99e617027f1b', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c2e915c860f14d329bb6c6bb8200af85', '8b34190046584685afb77d0e21b0d1e4', '34d11c33274146f4ab24ce0a98789bf8', '0', 'lcId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c429da268b1742b5a9837906f94bfea3', '0df2aee24a41430cb1fd7788eea0d1bb', '6c7c8d0ecdd844389395cd50fd641640', '0', 'title', '', null, '', null, '', '200', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('c458ff60a18b4452aedde3a9b8d23128', '8b34190046584685afb77d0e21b0d1e4', 'c6af6f1f3537429e8fe59371f67d3274', '0', '模块', '', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c5fdb66ef5f54c90a449126daf502f15', 'fd82c37ebb2c4ead8ed145f927ede30b', '37b8cf5b301144ee9e64be027f93fe9e', '1', '格式', '', null, '', null, '', '200', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c61948169ac4448d9f473d24aad0362f', 'c945b85569fa4be3ad1358342568d566', '7d6e4b7eae584f7192b7f3e1fdf45fe6', '0', 'pkageUrl', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c86c7f61b3834f4f9f83507467599b9f', 'f7f8b9d7a22e480cb97a0b04c24719c5', '263d65337e9f46de89adbe95c8487da8', '0', 'type', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c91a932549bc4e4baeb5b096c15ca3f5', 'cf6997b648d74f01aa52d937123f5d06', 'd25fac5f71e24d3dbb59d6e84487d653', '0', 'longTag', '', null, '', null, '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('c97da7acf52146fe9521adeecbbe35a2', '8b34190046584685afb77d0e21b0d1e4', 'ace129d6214f45969b3874c42c76f309', '1', '页面', '', null, '', null, '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('c9b6ccb310e741f9abaa0a40f0ded04c', 'ad7c6110b8164fcbb87c33f3dadc4dd3', 'fc4c889a8f5047f3981ed0dcfbd1f8c1', '0', 'ucIds', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ced2438f4c124215bb025265d4c3c31e', 'fe7b1cf8b71448c997d2078e6c398e4e', 'e1e5e23079164805826c1695edd2e8d0', '0', 'ucode', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d1582efb51c7427fa64294f415635970', '0d7822724f23491d9dc18885c0189249', 'f8fc9f57823a4eb7b6acf0640009e199', '0', 'iscan', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d176015a246840f69c92c6f09b135a04', '9b6fae1af62948048a3975c4b3bed270', '6471fde281ff4d819cb04a7511ef20d8', '0', 'location', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d179a6c1dafa42dfb6fa6a5f2f5eb3e2', 'fe7b1cf8b71448c997d2078e6c398e4e', 'cec8a755f5444f6ba729023f4bb6115c', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d2aecfbcdb864916b661ee925f3d4aa7', '62800633107f4da9942348553290964d', 'be778929d2c4471492afa37e6796fcd4', '1', '参数类型', '0005', null, '', null, '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d4969c4a28d840e5a60c5be6090630e1', '398468f219e14e299eed0f28eded0ead', 'f55a080abd614152a2bc17d721e8ec44', '1', '描述信息', '', null, '', null, '', '50', 'left', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d5f0effb9fb944078f121edae8029940', '4905fd8df68b4c4b87e9ecb5c29911ae', '04f557da2a4a4b2dab3d3725ea80c7c3', '1', '删除标识', '', null, '', '1', '', '50', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('d64b5b1d96614ef2a2dc23ba43bd80fb', '4905fd8df68b4c4b87e9ecb5c29911ae', '9550713260f44450ab58a9a3896d6a5a', '0', 'cId', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('d708af5394914702bd5bfab74e104754', '0d7822724f23491d9dc18885c0189249', '4cdeb9bf04b947d999ba193e9bab3021', '1', '删除标识', '', null, '', null, '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('da8363ab59ae4b7fa4fecaf236570342', 'c945b85569fa4be3ad1358342568d566', '7f87bde54a114782bffa479d847db3bb', '0', 'fromSrc', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('db7f5f6dd86742528bf147b9ec17985d', '8b34190046584685afb77d0e21b0d1e4', '48ec36a525cb46a2b683f348d2a5c2a2', '1', '序号', '', null, '', null, '', '70', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('dc9b45197838440eb75c8dc8059c1395', '0df2aee24a41430cb1fd7788eea0d1bb', 'd84f4412a294428ba2eed01f2fb723ad', '0', 'origin', '', null, '', null, '', '200', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('ddebd59687164e25a92b2e1824bcf2da', 'ad7c6110b8164fcbb87c33f3dadc4dd3', 'ffeb8ef5c0b7445c9a22e84ccff562c3', '0', 'UC_IDS', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('e1422c98d8bc4834a1d0eb16e0a265a5', '8b34190046584685afb77d0e21b0d1e4', 'b4e8a0a2efa3405d81d8b996db83296f', '1', '页面的默认参数', '', null, '', null, '', '80', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('e64802020c8e41128ee498a48e1ca9b3', '0df2aee24a41430cb1fd7788eea0d1bb', '5b098c62735f4f3db893694d3e7260e3', '0', 'dateTime', '', null, '', null, '', '200', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('e8c49a21e56c4874a801aa4ed04c14a9', 'f7f8b9d7a22e480cb97a0b04c24719c5', '4e9ede5b0a78421b85ce7f05f98b0013', '0', 'appId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ea56c746fd824c55a73d5474a156d7e4', '8b34190046584685afb77d0e21b0d1e4', '67af0adfdca3471c94418c15232f2bf8', '0', 'module', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ec37503946b74c48ba1c306c5aea6dfc', '8b34190046584685afb77d0e21b0d1e4', '409498e7a9484bf6be0e54a7f03ef430', '1', '页面名称', '', null, '', null, '', '40', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ecbedae3fa7443e6a8b6dad2a438f9e6', '9b6fae1af62948048a3975c4b3bed270', '851f8566575a45e8bb54f7224d5060b9', '0', 'id', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f005e527e8e1471eb83d22c90dd1ab50', 'fe7b1cf8b71448c997d2078e6c398e4e', '124f278f100d45b5872de1a7112c5b75', '0', 'iscache', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f076b4f4aa694c6a9ee33eed46280138', '62800633107f4da9942348553290964d', '81e29544e0254083a88f1a1b1e5c7997', '1', 'exist语句', '', null, '', null, '', '100', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f15b2263df4d43fab7317863e05e01cf', '4905fd8df68b4c4b87e9ecb5c29911ae', 'de457e8f86be462a88cd6b2369124f0e', '1', '长名', '', null, '', '1', '', '20', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f1950b0978ba492ba801ac15d3d5c48f', '62800633107f4da9942348553290964d', '23c70ecd60ae4a7ebec891a38910c715', '1', '输入(出)', '0001', null, '', null, '', '10', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f377b81be54b480280377ce886ba6c9b', 'ad7c6110b8164fcbb87c33f3dadc4dd3', 'd5c1f56219834a77b42eeec16d15defb', '1', '名称(中文)', null, '1', 'page=00000008&pageid={id}&ucname=UC_QUERY_PAGES&pageflag=0', '0', null, '20', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f40a51ae3e8e45dc89c2824e839bcd28', '0df2aee24a41430cb1fd7788eea0d1bb', 'c32a3166511c44adbdf3eccc66a1f9f0', '0', 'hId', '', null, '', null, '', '200', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('f51f6cc042f24d0a84c0e0ada3d5a5a0', 'e544ba72caf14b08b88f2924c3c84203', '4a228ea887da4a87838f03459d5c2958', '1', '编码', null, null, null, '0', null, '10', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f8d5551f9cd846488bf3bdc2f157db5d', '9c13fa15208d40ef8c997704ef63bf55', 'eb9957c978f34bb5ac0df38c5c023e72', '0', 'iscan', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('f979733bb7104453a71193532b6bf5fa', 'ad7c6110b8164fcbb87c33f3dadc4dd3', 'e1389736afca4ba596408b06148e9d17', '0', 'ID', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('fae9e6be26084cb58bbf0f146774937f', 'cf6997b648d74f01aa52d937123f5d06', '77b91a28550b4967ab51ff70734d7cf2', '0', 'imgUrl', '', null, '', '1', '', '300', 'left', '', '', '', 'APP');
INSERT INTO `sys_viewcfg` VALUES ('fc2f4ee8a0d94ee3a25848b2baf7de46', '62800633107f4da9942348553290964d', '5ac2c38edd684eab9f47a7dc0d8098bb', '1', '字段长度', '', null, '', null, '', '60', 'center', '', '', '', 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('fe2fe9389f154a6d9a07b702878a3ee2', 'f7f8b9d7a22e480cb97a0b04c24719c5', '578ec182282644a79b3d14174854f2dd', '0', 'imageId', null, null, null, '0', null, '200', 'center', null, null, null, 'DEFAULT');
INSERT INTO `sys_viewcfg` VALUES ('ff31afc984f94b40838c525aa4579463', 'ad7c6110b8164fcbb87c33f3dadc4dd3', '7f0f2d580b574040bc08a84ca20a0aef', '1', '列表头部', '', null, '', null, '', '70', 'center', '', '', '', 'DEFAULT');

-- ----------------------------
-- Table structure for z_data_resource
-- ----------------------------
DROP TABLE IF EXISTS `z_data_resource`;
CREATE TABLE `z_data_resource` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `relationId` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataContent` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extendFlag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleteFlag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataTime` datetime DEFAULT NULL,
  `syncTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of z_data_resource
-- ----------------------------

-- ----------------------------
-- Table structure for z_paser_rule
-- ----------------------------
DROP TABLE IF EXISTS `z_paser_rule`;
CREATE TABLE `z_paser_rule` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `javaScript` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataScript` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regex` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excludeRegex` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `timer` datetime DEFAULT NULL,
  `immediateFlag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleteflag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of z_paser_rule
-- ----------------------------
INSERT INTO `z_paser_rule` VALUES ('3087ee70b78148eea55efdbb75d37ff7', 'http://image.baidu.com/channel#%E7%BE%8E%E5%A5%B3&%E5%85%A8%E9%83%A8&0&0&_fefefefe', '$(\".mod-tags\").find(\".view-con\").find(\"ul\").find(\"li\")', '$(\".mod-tags\").find(\".view-con\").find(\"ul\").find(\"li\").find(\"a\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.ImageTag,table=u_pigtree}\n<a data-nsclick=\".+?\" title=\".+?\" href=\".+?\">${longTag[type[text],flag[false]]}</a>\n${class-end}', '', null, null, null, '1', '1');
INSERT INTO `z_paser_rule` VALUES ('942ebb74da314010843cc8a891029670', 'http://image.baidu.com/channel#%E7%BE%8E%E5%A5%B3&%E5%85%A8%E9%83%A8&0&0', '$(\"#tags-container\").find(\".view-con\").find(\"ul[label=\'美女\']\").find(\"li\")', '$(\"#tags-container\").find(\".view-con\").find(\"ul[label=\'美女\']\").find(\"li\").find(\"a\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.ImageTag,table=u_pigtree}\r\n<a data-nsclick=\".+?\" title=\".+?\" href=\".+?\">${longTag[type[text],flag[false]]}</a>\r\n${class-end}', '', null, null, null, '1', '1');
INSERT INTO `z_paser_rule` VALUES ('9a1af852ce1e44769fffec503de448ea', 'http://image.baidu.com/', '', '$(\".mod-hot-query.one-slide\").find(\"ul\").find(\"li\").find(\"a\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.HotSearch,table=u_pigtree}\r\n<a data-nsclick=\".+?\" target=\"_blank\" href=\".+?\" class=\"tag-item\" title=\"${longTag[type[text],flag[false]]}\">.+?</a>\r\n${class-end}', '<span class=\".*\">.*</span>', null, null, null, '1', '1');
INSERT INTO `z_paser_rule` VALUES ('abe92cfbe6824b09a46224eb4f8ee221', 'http://image.baidu.com/channel/star#all&&null&0', '$(\"#tag-bar\").find(\"ul\").find(\"li\")', '$(\"#tag-bar\").find(\"ul\").find(\"li\").find(\".tag-label\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.ImageTag,table=u_pigtree}\r\n<span class=\"tag-label\">${longTag[type[text],flag[false]]}<span class=\"border-right\"></span></span>\r\n${class-end}', '', null, null, null, null, null);
INSERT INTO `z_paser_rule` VALUES ('ad66059b3ac34523b3ff797ab4435e43', 'http://image.baidu.com/', '$(\"#channelNav\").find(\".box-wrapper\")', '$(\"#channelNav\").find(\".box-wrapper\").find(\"a\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.ImageCategory,table=u_pigtree}\r\n<a href=\"${infoLink[type[text],flag[false]]}\" .+?>${longTitle[type[text],flag[false]]}</a>\r\n${class-end}', '<span .*>.*</span>', null, null, null, '1', '1');
INSERT INTO `z_paser_rule` VALUES ('b295f9cdc7964db996212da76be03e64', 'http://image.baidu.com/channel/funny#%E6%90%9E%E7%AC%91&%E5%85%A8%E9%83%A8&0&0', '$(\"#tags-container\").find(\".view-con\").find(\"ul[label=\'(#)\']\")', '$(\"#tags-container\").find(\".view-con\").find(\"ul[label=\'(#)\']\").find(\"li\").find(\"a\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.ImageTag,table=u_pigtree}\r\n<a data-nsclick=\".+?\" title=\".+?\" href=\".+?\">${longTag[type[text],flag[false]]}</a>\r\n${class-end}', null, null, null, null, null, null);
INSERT INTO `z_paser_rule` VALUES ('b95b686af092404da033cf1c5d082bc9', 'http://image.baidu.com/', '', '$(\"#sheet-container\").find(\".sheet.col\").find(\"a\")', '${class-start：class=com.dev.huining.soft.toolkit.imgsearch.pojo.ImageIndex,table=u_pigtree}\n<a href=\".+?\" class=\"sheet-link\" target=\"_blank\" data-nsclick=\".+?col=${longText[type[text],flag[false]]}.+?tag=${shortText[type[text],flag[false]]}\">  \n<img class=\"sheet-img\" data-load=\"true\" data-src=\".+?\" data-left=\".+?\" src=\"${imgUrl[type[text],flag[false]]}\">.+?</a>\n${class-end}', '<span class=\".*\">.*</span>', null, null, null, '1', '1');
