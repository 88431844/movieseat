/*
Navicat MySQL Data Transfer

Source Server         : movieseat
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : movieseat

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-25 22:21:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '影院名称',
  `phone` varchar(255) DEFAULT NULL COMMENT '影院电话',
  `addr` varchar(255) DEFAULT NULL COMMENT '影院地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES ('1', '积家国际影城', '024-88799800', '沈北新区道义南大街33号积家购物中心5层');
INSERT INTO `cinema` VALUES ('2', '比高电影城', '024-31392828', '大东区津桥路7号天润广场5层');
INSERT INTO `cinema` VALUES ('3', '今世界影城(大东店)', '024-31988300', '大东区东陵西路37号兴隆百货4楼（近黎明文化宫）');
INSERT INTO `cinema` VALUES ('4', '金逸影城(龙之梦IMAX店)', '024-31390386', '大东区滂江街26号龙之梦小商品大世界7层（近龙之梦亚太城）');
INSERT INTO `cinema` VALUES ('5', '华谊兄弟影院(大悦城店)', '024-67910606', '大东区小东路9号大悦城D馆4层-5层');
INSERT INTO `cinema` VALUES ('6', '龙之梦海之心影城', '024-88720099', '大东区滂江街22号龙之梦购物中心');
INSERT INTO `cinema` VALUES ('7', '星美国际影商城(大悦城店)', '024-24357171', '大东区小东路6号沈阳大悦城D馆4层');
INSERT INTO `cinema` VALUES ('8', '万达影城(铁西店)', '400-080-6060', '铁西区兴华南街58-20号万达广场3层（沈辽中路口）');
INSERT INTO `cinema` VALUES ('9', '卢米埃影城(万象汇店)', '024-85908660', '铁西区兴华北街华润万象汇5楼501室（铁西广场）');
INSERT INTO `cinema` VALUES ('10', '上影国际影城(新玛特店)', '024-24357710', '大东区小东路1号新玛特7楼（近中街路）');
INSERT INTO `cinema` VALUES ('11', '悦影绘影城(国瑞购物中心店)', '024-31521818', '大东区东北大马路国瑞购物中心A馆3楼');

-- ----------------------------
-- Table structure for iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `iteminfo`;
CREATE TABLE `iteminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '物品名称',
  `img` varchar(255) DEFAULT NULL COMMENT '物品图片',
  `desc` varchar(255) DEFAULT NULL COMMENT '物品描述',
  `cost` int(10) DEFAULT NULL COMMENT '消耗积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of iteminfo
-- ----------------------------

-- ----------------------------
-- Table structure for madmin
-- ----------------------------
DROP TABLE IF EXISTS `madmin`;
CREATE TABLE `madmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '管理员账号',
  `password` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  `role` int(255) DEFAULT NULL COMMENT '0=admin；1=经理；2=员工',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of madmin
-- ----------------------------
INSERT INTO `madmin` VALUES ('1', 'admin', 'dengluxinyuan', '0');

-- ----------------------------
-- Table structure for movieinfo
-- ----------------------------
DROP TABLE IF EXISTS `movieinfo`;
CREATE TABLE `movieinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `director` varchar(255) DEFAULT NULL COMMENT '导演',
  `screenwriter` varchar(255) DEFAULT NULL COMMENT '编剧',
  `starring` varchar(255) DEFAULT NULL COMMENT '主演',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `language` varchar(255) DEFAULT NULL COMMENT '语言',
  `releasedate` date DEFAULT NULL COMMENT '上映日期',
  `length` int(11) DEFAULT NULL COMMENT '片长',
  `synopsis` text COMMENT '剧情简介',
  `img` varchar(255) DEFAULT NULL COMMENT '影片海报',
  `rating` int(255) DEFAULT NULL COMMENT '评分1-5',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movieinfo
-- ----------------------------
INSERT INTO `movieinfo` VALUES ('1', '地久天长', '王小帅', '阿美 / 王小帅', '王景春 / 咏梅 / 齐溪 / 王源 / 杜江', '剧情', '汉语', '2019-03-22', '175', '影片讲述患难与共的两个家庭因为一场有隐情的意外被迫疏远，他们在时代洪流下历尽伤痛与不安，人生起伏跌宕，最终选择面对真相，坦荡向前的故事。 \r\n　　年轻的刘耀军和沈英明两家人本是挚友，两家儿子沈浩和刘星在郊外嬉戏中，耀军的儿子刘星意外身亡，此事彻底改变了两家人的命运。刘家夫妇远赴南方。多年后，容颜已老的他们再次相聚，隐藏的真相终将因为年轻一代人的坦荡而揭开。岁月流逝，生命滚滚向前……', '1_地久天长.jpg', '1');
INSERT INTO `movieinfo` VALUES ('2', '乐高大电影2', '迈克·米切尔', '菲尔·罗德 / 克里斯托弗·米勒 / 马修·福格尔', '克里斯·帕拉特 / 伊丽莎白·班克斯 / 威尔·阿奈特 / 蒂凡尼·哈迪斯 / 斯蒂芬妮·比翠丝', '喜剧', '英语', '2019-03-22', '106', '风靡全球的经典动画系列新作《乐高大电影2》爆笑来袭。乐高小人艾米特贱萌回归，抱得美人归的他和女友露西过着甜蜜的生活。但是看似平静的表面其实暗藏阴谋，神秘外星入侵者突然降临，他们的破坏速度远在乐高小人的建造速度之上，艾米特的世界再度危在旦夕。外星入侵者甚至能洞察艾米特等人的每一次行动，困难与挑战直线升级，身手敏捷的露西也难逃厄运，陷入危机。艾米特必须联合一众好友，再次拯救世界。这一次，他们将前往遥远未知的新奇世界，见识更多令人大开眼界的乐高世界，同时也将发现真正的自我。', '2_乐高大电影2.jpg', '4');
INSERT INTO `movieinfo` VALUES ('3', '绿皮书', '彼得·法雷里', '尼克·瓦莱隆加 / 布莱恩·海耶斯·库瑞 / 彼得·法雷里', ': 维果·莫腾森 / 马赫沙拉·阿里 / 琳达·卡德里尼 / 塞巴斯蒂安·马尼斯科 / 迪米特·D·马里诺夫', '剧情', '英语', '2019-03-01', '130', '一名黑人钢琴家，为前往种族歧视严重的南方巡演，找了一个粗暴的白人混混做司机。在一路开车南下的过程中，截然不同的两人矛盾不断，引发了不少争吵和笑料。但又在彼此最需要的时候，一起共渡难关。行程临近结束，两人也慢慢放下了偏见...... \r\n　　绿皮书，是一本专为黑人而设的旅行指南， 标注了各城市中允许黑人进入的旅店、餐馆。电影由真实故事改编。', '3_绿皮书.jpg', '4');
INSERT INTO `movieinfo` VALUES ('4', '驯龙高手3', '迪恩·德布洛斯', '迪恩·德布洛斯 / 葛蕾熙达·柯维尔', '杰伊·巴鲁切尔 / 亚美莉卡·费雷拉 / F·默里·亚伯拉罕 / 凯特·布兰切特 / 杰拉德·巴特勒 /', '科幻', '英语', '2019-03-01', '104', '梦工场动画将倾情奉献一段跌宕起伏的故事，主人公们不断成长，寻找面对未知的勇气，始终不离不弃。一位维京少年和一只令人生畏的夜煞飞龙之间看似不可能的友情，已经演变成了一段持续彼此一生的史诗级冒险。这便是即将上映的《驯龙高手3》，也是影史上最受欢迎的动画系列之一《驯龙高手》系列最为浓墨重彩的崭新篇章。 \r\n　　统领伯克岛的酋长嗝嗝，与阿丝翠德共同打造了一个奇妙而热闹的飞龙乌托邦。而一只雌性光煞飞龙的意外出现，加上一个前所未有的威胁的到来，令嗝嗝和没牙仔不得不离开自己唯一的家园，前往他们本以为只存在于神话之中的隐秘之境。在发现自己真正的命运之后，飞龙与骑士将携手殊死奋战，保护他们所珍爱的一切。', '4_驯龙高手3.jpg', '3');
INSERT INTO `movieinfo` VALUES ('5', '流浪地球', '郭帆', '东旭 / 郭帆 / 叶俊策 / 杨治学 / 吴荑 / 叶濡畅 / 沈晶晶 / 刘慈欣', '屈楚萧 / 吴京 / 李光洁 / 吴孟达 / 赵今麦', '科幻', '汉语', '2019-02-05', '125', '近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强（吴京 饰）在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启（屈楚萧 饰）长大，他带着妹妹朵朵（赵今麦 饰）偷偷跑到地表，偷开外公韩子昂（吴孟达 饰）的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……', '5_流浪地球.jpg', '2');
INSERT INTO `movieinfo` VALUES ('6', '比悲伤更悲伤的故事', '林孝谦', '吕安弦', '陈意涵 / 刘以豪 / 张书豪 / 陈庭妮 / 吴映洁', '爱情', '汉语', '2019-03-14', '105', '唱片制作人张哲凯(刘以豪)和王牌作词人宋媛媛(陈意涵)相依为命，两人自幼身世坎坷只有彼此为伴，他们是亲人、是朋友，也彷佛是命中注定的另一半。父亲罹患遗传重症而被母亲抛弃的哲凯，深怕自己随时会发病不久人世，始终没有跨出友谊的界线对媛媛展露爱意。眼见哲凯的病情加重，他暗自决定用剩余的生命完成他们之间的终曲，再为媛媛找个可以托付一生的好男人。这时，事业有 成温柔体贴的医生(张书豪)适时的出现让他成为照顾媛媛的最佳人选，二人按部就班发展着关系。一切看似都在哲凯的计划下进行。然而，故事远比这里所写更要悲伤......', '6_比悲伤更悲伤的故事.jpg', '2');
INSERT INTO `movieinfo` VALUES ('7', '老师·好', '张栾', '张栾 / 徐伟', '于谦 / 汤梦佳 / 王广源 / 秦鸣悦 / 徐子力', '剧情', '汉语', '2019-03-22', '105', '1985年的南宿一中，苗宛秋老师推自行车昂首走在校园，接受着人们艳羡的目光和纷至沓来的恭维。桀傲不驯的洛小乙、温婉可人的安静、新潮前卫的关婷婷、大智若愚的脑袋、舞痴兄弟文明建设、八婆海燕、奸商耗子……三班是一个永远也不缺故事的集体。苗宛秋怎么也不会想到，他即将走进的这个三班将会成为他以及他身边这辆自行车的噩梦。三班的同学也没有想到，这位新来的老师改变了他们的一生。', '7_老师·好.jpg', '1');
INSERT INTO `movieinfo` VALUES ('8', '波西米亚狂想曲', '布莱恩·辛格', '安东尼·麦卡滕 / 皮特·摩根', ': 拉米·马雷克 / 本·哈迪 / 约瑟夫·梅泽罗 / 格威利姆·李 / 艾伦·里奇', '剧情', '汉语', '2019-03-22', '135', '本片是对皇后乐队、传奇主唱弗雷迪·莫库里以及他们音乐的致敬盛宴，这是一段充满爱、痛苦、接纳和音乐的旅程。 \r\n　　弗雷迪·莫库里（拉米·马雷克 饰）曾是希思罗机场的一名普通搬运工，对音乐满腔热血的他，与布莱恩·梅（格威利姆·李 饰）、罗杰·泰勒（本·哈迪 饰）、约 翰·迪肯（约瑟夫·梅泽罗 饰）组成皇后乐队。这个殿堂级乐队的从无到有，从疏离到重聚，从低谷到巅峰，仿佛就是弗雷迪一生的缩影。在最后的日子里，弗雷迪做了生命中最重要的决定——在音乐史上最伟大的“拯救生命”大型摇滚乐演唱会上，将所有热血付诸于歌声。 ©豆瓣', '8_波西米亚狂想曲.jpg', '1');
INSERT INTO `movieinfo` VALUES ('9', '惊奇队长', '安娜·波顿 / 瑞安·弗雷克', '安娜·波顿 / 瑞安·弗雷克 / 吉内瓦·德沃莱特-罗宾森 / 尼科尔·帕尔曼 / 梅格·勒福夫', '布丽·拉尔森 / 裘德·洛 / 塞缪尔·杰克逊 / 本·门德尔森 / 安妮特·贝宁 /', '动作', '英语', '2019-03-08', '124', '　漫画中的初代“惊奇女士”原名Carol Danvers，她曾经是一名美国空军情报局探员，暗恋惊奇先生。此后她得到了超能力，成为“惊奇女士”，在漫画中是非常典型的女性英雄人物。 \r\n　　她可以吸收并控制任意形态的能量，拥有众多超能力。《惊奇队长》将是漫威首部以女性超级英雄为主角的电影。', '9_惊奇队长.jpg', '3');
INSERT INTO `movieinfo` VALUES ('10', '夏目友人帐', '大森贵弘 / 伊藤秀树', '绿川幸 / 村井贞之', '神谷浩史 / 井上和彦 / 高良健吾 / 小林沙苗 / 泽城美雪', '动画', '日语', '2019-03-07', '104', '在人与妖怪之间过着忙碌日子的夏目，偶然与以前的同学结城重逢，由此回忆起了被妖怪缠身的苦涩记忆。此时，夏目认识了在归还名字的妖怪记忆中出现的女性·津村容莉枝。和玲子相识的她，现在和独子椋雄一同过着平稳的生活。夏目通过与他们的交流，心境也变得平和。但这对母子居住的城镇，却似乎潜伏着神秘的妖怪。在调查此事归来后，寄生于猫咪老师身体的“妖之种”，在藤原家的庭院中，一夜之间就长成树结出果实。而吃掉了与自己形状相似果实的猫咪老师，竟然分裂成了3个——！？', '10_夏目友人帐 .jpg', '3');
INSERT INTO `movieinfo` VALUES ('11', '阿丽塔：战斗天使', '罗伯特·罗德里格兹', '詹姆斯·卡梅隆 / 莱塔·卡罗格里迪斯 / 木城幸人', '罗莎·萨拉查 / 克里斯托弗·沃尔兹 / 基恩·约翰逊 / 艾德·斯克林 / 马赫沙拉·阿里', '科幻', '英语', '2019-02-22', '122', '　　故事发生在遥远的26世纪，外科医生依德（克里斯托弗·瓦尔兹 Christoph Waltz 饰）在垃圾场里捡到了只剩下头部的机械少女将她带回家中，给她装上了本来为自己已故的女儿所准备的义体，并取名阿丽塔（罗莎·萨拉扎尔 Rosa Salazar 饰）。苏醒后的阿丽塔对这个五彩斑斓但却暴力而又残酷的世界产生了浓厚的兴趣，在结识了青年雨果（基恩·约翰逊 Keean Johnson 饰）后，阿丽塔开始接触名为机动球的运动，并在比赛中展现出了惊人的格斗天赋。 \r\n　　在废铁城居民们的头顶，漂浮着巨大的浮空城市撒冷，废铁城居民们的一切劳作和付出，都是为了给撒冷提供继续运作的燃料。在大财阀维克特（马赫沙拉·阿里 Mahershala Ali 饰）所设立的机动球比赛中，最终获得冠军的人能够获得前往撒冷生活的资格，阿丽塔决定利用自己的格斗天赋参加比赛，却被卷入了一个巨大的阴谋之中。', '11_阿丽塔：战斗天使.jpg', '5');

-- ----------------------------
-- Table structure for movierecord
-- ----------------------------
DROP TABLE IF EXISTS `movierecord`;
CREATE TABLE `movierecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `moviesessionid` int(11) DEFAULT NULL COMMENT '场次信息id',
  `movieseatid` int(11) DEFAULT NULL COMMENT '座位信息id',
  `movietimeid` int(11) DEFAULT NULL COMMENT '电影价格/开始结束时间信息id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movierecord
-- ----------------------------

-- ----------------------------
-- Table structure for movieseat
-- ----------------------------
DROP TABLE IF EXISTS `movieseat`;
CREATE TABLE `movieseat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row` int(11) DEFAULT NULL COMMENT '第几排',
  `col` int(11) DEFAULT NULL COMMENT '第几列',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movieseat
-- ----------------------------

-- ----------------------------
-- Table structure for moviesession
-- ----------------------------
DROP TABLE IF EXISTS `moviesession`;
CREATE TABLE `moviesession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` int(11) DEFAULT NULL COMMENT '电影id',
  `cinemaid` int(11) DEFAULT NULL COMMENT '影院id',
  `moviedate` date DEFAULT NULL COMMENT '场次日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of moviesession
-- ----------------------------

-- ----------------------------
-- Table structure for movietime
-- ----------------------------
DROP TABLE IF EXISTS `movietime`;
CREATE TABLE `movietime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moviesessionid` int(11) DEFAULT NULL COMMENT '电影-影院-日期关系表id',
  `starttime` datetime DEFAULT NULL COMMENT '电影开场时间',
  `endtime` datetime DEFAULT NULL COMMENT '电影结束时间',
  `price` double(10,2) DEFAULT NULL COMMENT '电影票价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movietime
-- ----------------------------

-- ----------------------------
-- Table structure for muser
-- ----------------------------
DROP TABLE IF EXISTS `muser`;
CREATE TABLE `muser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `phone` int(255) DEFAULT NULL COMMENT '手机号码',
  `cardtype` int(255) DEFAULT '0' COMMENT '0=铜卡；1=银卡；2=金卡',
  `integral` int(255) DEFAULT NULL COMMENT '用户积分',
  `money` int(255) DEFAULT NULL COMMENT '用户钱包；单位（元）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of muser
-- ----------------------------

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '套餐名称',
  `price` double(10,2) DEFAULT NULL COMMENT '套餐价格',
  `desc` varchar(255) DEFAULT NULL COMMENT '套餐介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of package
-- ----------------------------

-- ----------------------------
-- Table structure for packageitem
-- ----------------------------
DROP TABLE IF EXISTS `packageitem`;
CREATE TABLE `packageitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `packageid` int(11) DEFAULT NULL COMMENT '套餐id',
  `itemid` int(11) DEFAULT NULL COMMENT '物品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of packageitem
-- ----------------------------
