CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `category_goods` (
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`goods_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `category_goods_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `category_goods_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `category` (`id`, `name`, `picture`) VALUES
(1005000, '居家', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/201516e3-25d0-48f5-bcee-7f0cafb14176.png'),
(1005002, '美食', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/cf82e5b4-bf1b-4c68-aa86-96f66e8e5282.png'),
(1010000, '服饰', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/33e1f5de-0fdb-4cfa-9ba9-781233024b53.png'),
(1011000, '母婴', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/b514a526-4010-4ce8-8cb9-757ed382f84a.png'),
(1013001, '个护', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/d38a73b8-cd03-48aa-a60b-e7c4e16667ed.png'),
(1019000, '严选', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/4b02f01f-a365-4b6c-9f7a-8b0f591dda02.png'),
(1043000, '数码', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/9660870d-6a59-4624-8064-b3a8cbf50d5c.png'),
(109243029, '运动', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/7d19752c-baff-49b6-bd02-5ece1d729214.png'),
(19999999, '杂项', 'http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/4ff20b9e-8150-4bd3-87a3-0cd6766938dd.png');

INSERT INTO `goods` (`id`, `name`, `desc`, `price`, `picture`, `orderNum`) VALUES
(3997602, '暖腰暖腹暖胃，蕲艾暖宫腰带', '暖宫暖腰暖胃，大面积热敷≈3片暖宝宝', 49.00, 'https://yanxuan-item.nosdn.127.net/9892cc73945da1591fa5259ad076b23c.jpg', NULL),
(3995284, '新年佳礼，家用SPA多功能按摩床垫', '坐卧两用，随时随地做spa，多个场合随你心意', 599.00, 'https://yanxuan-item.nosdn.127.net/c41003c6df90d7673195dcc2482e13f3.jpg', NULL),
(3993828, '七夕礼物·姐姐同款，穿出自信体态矫姿带', '背薄一寸，年轻十岁，时尚百搭，约会职场小心机', 159.00, 'https://yanxuan-item.nosdn.127.net/a6939f41c48fa9e9c8f7a7ed855351f1.jpg', NULL),
(3993481, '带提手可站立炫彩硅胶热水袋', '杯型式设计，轻松注水防烫伤', 35.00, 'https://yanxuan-item.nosdn.127.net/0b120e1c37f312981f4f2242997cc862.png', NULL),
(3992367, '七夕礼物·挺拔身姿，隐形内穿矫姿带', '众筹爆品回归，专注矫姿20年，轻松矫正身姿', 149.00, 'https://yanxuan-item.nosdn.127.net/7d1bc78607a08c088b2a7cdbe88c05af.png', NULL),
(3991840, '消炎镇痛一贴灵医用冷敷贴60贴/盒', 'ini型尺寸设计性价比更高', 79.00, 'https://yanxuan-item.nosdn.127.net/d3807695c7d42a0247e308a936201d7c.jpg', NULL),
(3987204, '真空拔罐器', '居家养生必备超简便拔罐套装', 49.00, 'https://yanxuan-item.nosdn.127.net/16222847be7d090eb538a944a7e0b01b.jpg', NULL),
(3986121, '艾灸理疗随时随地，灸疗装置8头/12头', '哪里不适灸哪里，全身都可灸', 99.00, 'https://yanxuan-item.nosdn.127.net/941abaee58a88cb104228fe2c4cfdeb1.png', NULL),
(3997974, '入门首选，语音播报电子血压计', '全程语音指导，一键测量，监测心率，贴心守护爸妈健康', 109.00, 'https://yanxuan-item.nosdn.127.net/8f0c15f981c5cbcb1aa17215a259fa62.png', NULL),
(1270008, '黄金玉粟粥米500克', '谷物缤纷，香甜软糯', 9.90, 'https://yanxuan-item.nosdn.127.net/5f62c7ab543b1152383a0e9941c09bfd.png', NULL),
(1269010, '什锦素食粥米500克', '谷香米糯，营养美味', 9.90, 'https://yanxuan-item.nosdn.127.net/dc4826ddb838d8e17f90402adfa3f4fe.png', NULL),
(1135081, '紫米410克', '一年一熟的御田胭脂米', 19.00, 'https://yanxuan-item.nosdn.127.net/a3c0bb3be38ccf510ecaedb81f5bcd9f.png', NULL),
(1135080, '加量50%不加价，贵州兴仁薏仁米600克', '粒粒饱满，颗颗香糯', 19.00, 'https://yanxuan-item.nosdn.127.net/3e93790bba8db8aab54ee5ba72799567.png', NULL),
(1135079, '免浸泡，12种谷物一次同享，五谷米400克', '无需浸泡，同煮同熟', 9.90, 'https://yanxuan-item.nosdn.127.net/bfe70bd66efe94f2f18061c707d2a097.png', NULL),
(1135077, '加量45%不加价，内蒙古赤峰黄小米700克', '赤峰好谷，米香浓郁', 19.00, 'https://yanxuan-item.nosdn.127.net/564eb51c22d898179b468f5dec52d502.png', NULL),
(1135076, '红小豆450克*3袋', '皮薄易煮，粒粒香甜', 19.00, 'https://yanxuan-item.nosdn.127.net/eaec90be370a438e565e10189b7a390a.png', NULL),
(1135075, '来自东北的“黑珍珠”，黑米470克*3袋', '米汁香稠，Q弹醇香', 19.00, 'https://yanxuan-item.nosdn.127.net/1452cfeb14b5d252fb1ba97b278e9cc3.png', NULL),
(3464033, '冻干藤椒豚骨面74克*12盒', '日式风味，汤浓肉鲜，椒麻过瘾', 79.00, 'https://yanxuan-item.nosdn.127.net/7a5ffe313fe5671709d5a9826f5a83a2.jpg', NULL),
(1621018, '懒人瘦出好身材，多功能甩脂塑形机', '懒人福音居家轻松塑身', 589.00, 'https://yanxuan-item.nosdn.127.net/540f84174dbf9b98d4072abbd886819e.png', NULL),
(1593000, '软糯似baby肌肤，男式高领纯小山羊绒衫', '绒毛取自未满1岁的山羊羊羔', 559.00, 'https://yanxuan-item.nosdn.127.net/06156761337ba0fd1f8f51470f698b5f.png', NULL),
(1555000, '舒眠真丝眼罩', '顺滑真丝，感受舒适睡眠', 79.00, 'https://yanxuan-item.nosdn.127.net/85432452d5f40c4798c08f1f0beb4a43.png', NULL),
(1436033, '柔软透气，女式精梳棉内裤6条装', '爱慕供应商柔软透气', 125.00, 'https://yanxuan-item.nosdn.127.net/dc30e9603306e59d959e7fac6968244e.jpg', NULL),
(1281002, '轻灵碳素耐用型羽毛球拍单双拍', '超轻球拍，运动随心', 119.00, 'https://yanxuan-item.nosdn.127.net/89cc3ab3e332bb1df5dc20241b5ca4bb.png', NULL),
(4001285, '英伦长柄自动晴雨伞', '雨天有情调，英伦风设计，给你好品味', 40.90, 'https://yanxuan-item.nosdn.127.net/e77b8f4a8ddd1e777394d84347859f7c.png', NULL),
(4001126, '瑜伽裸感女式运动训练紧身裤', '面料韧性足，修身又舒适', 83.90, 'https://yanxuan-item.nosdn.127.net/872275c2e2edacc917e0364065c90121.png', NULL),
(4000914, '恍若没穿鞋，女式轻软舒弹健步鞋2.0', '宛若没穿鞋的轻盈，体验更自由的奔跑', 159.00, 'https://yanxuan-item.nosdn.127.net/feec7bde4d52521ae70ab4c5010ce992.png', NULL),
(4000620, '「一件三穿好过冬」男中长款鹅绒防水外套', '一件衣服三种穿法，应对多变天气', 659.00, 'https://yanxuan-item.nosdn.127.net/aa9e03278e3274a2a83f3f8e7df5ee6f.png', NULL),
(4027473, '新款LOGO印花时尚学步叫叫鞋', '软底包头叫叫鞋', 259.00, 'https://yanxuan-item.nosdn.127.net/841d7669e6cc23cb249f47d8d39fc17c.jpg', NULL),
(4027466, '儿童气泵软底学步二阶段学步鞋', '气泵大底学步鞋', 239.00, 'https://yanxuan-item.nosdn.127.net/19bedfd20a12842b5d7f7b909a62e877.jpg', NULL),
(4023738, '舒适软弹，糖果色儿童网孔透气运动鞋25-30', '防踢鞋头，透气网孔更舒适', 139.00, 'https://yanxuan-item.nosdn.127.net/c437179bc1d0d5ad77a79f15a5c6f166.png', NULL),
(4023641, '防踢鞋头，儿童学步健康机能鞋21-30', '包头防踢用心呵护', 129.00, 'https://yanxuan-item.nosdn.127.net/33ba674fbb13e2380ee8a74371eacf43.jpg', NULL),
(4023638, '抓绒保暖，毛毛虫儿童运动鞋26-30', '宝贝上脚活力出街', 109.00, 'https://yanxuan-item.nosdn.127.net/d917c92e663c5ed0bb577c7ded73e4ec.png', NULL),
(4007784, '婴幼儿童透气网面学步鞋小童鞋4-6码', '优质透气网布鞋面，轻盈自在', 119.00, 'https://yanxuan-item.nosdn.127.net/a9f428091f172db89977a511f6639fec.jpg', NULL),
(3998535, '学步更自如，婴幼童机能学步鞋4-6码', '宝宝的第一双鞋，成长不将就', 109.00, 'https://yanxuan-item.nosdn