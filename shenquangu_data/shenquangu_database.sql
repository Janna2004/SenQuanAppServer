CREATE DATABASE `shenquangu_sql`;
USE `shenquangu_sql`;
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE `Categories`(
	`catId` INT PRIMARY KEY AUTO_INCREMENT,
	`catName` VARCHAR(30) unique
);
CREATE TABLE `Places`(
	`plId` int PRIMARY KEY AUTO_INCREMENT,
    `catName` VARCHAR(30) REFERENCES `Categories`(`catName`),
    `plName` VARCHAR(30) not null,
    `longitude` decimal(11,8) not null,
    `latitude` decimal(10,8) not null,
    `time` VARCHAR(15),
	`imgUrl` VARCHAR(80),
    `audioUrl` VARCHAR(80),
    `descText` TEXT
);

ALTER TABLE `Places`
ADD FOREIGN KEY(`catName`)
REFERENCES `Categories`(`catName`)
ON DELETE SET NULL;

INSERT INTO `Categories` VALUES(1,"景点");
INSERT INTO `Categories` VALUES(2,"厕所");
INSERT INTO `Categories` VALUES(3,"餐饮");
INSERT INTO `Categories` VALUES(4,"摄影点");
INSERT INTO `Categories` VALUES(5,"网红打卡点");
INSERT INTO `Categories` VALUES(6,"出入口");
INSERT INTO `Categories` VALUES(7,"救助点");
INSERT INTO `Categories` VALUES(8,"娱乐设施");
INSERT INTO `Categories` VALUES(9,"售票处");
INSERT INTO `Categories` VALUES(10,"游客中心");

INSERT INTO `Places` VALUES(1,"景点","荷花池",
							106.51085611979167,26.02946560329861,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/荷花池.mp3",
                            "     荷花池，是神泉谷的核心景点之一，面积约160亩，主要品种为大叶荷。每年春、夏两季,荷花池翠绿覆盖。白色、粉红色的荷花伸出头来,亭亭玉立,争妍斗艳，荷花池内设有木栈道、石道，供游客游览。峰林、小溪、草甸、村落环绕其中，是休闲锻炼、消暑纳凉、赏花漫步的绝佳之地！
");
INSERT INTO `Places` VALUES(2,"景点","双子塔",
							106.50638102213541,26.032711588541666,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/双子塔.mp3",
							"    双子塔指的是青龙阁和神泉阁。它们的设计紧密的围绕了中国的太极文化，神泉阁和青龙阁是太极八卦图中的两点，河流就是图上的S线，右边叫龙飞桥，通往青龙阁，左边叫凤舞桥，通往神泉阁，两座桥取龙飞凤舞之意。
");
INSERT INTO `Places` VALUES(3,"景点","露营基地",
							106.50237874348959,26.03377414279514,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/露营基地.mp3",
							'    长顺神泉谷峰景露营地于2023年3月份建设完成，基础设施投资300万，占地面积5万平方米，其中包括露营烧烤、围炉煮茶、儿童乐园、野营区等。共有露营地台40座，烧烤摊位42个。配有男女厕所、男女卫浴、酒水吧台、篝火场地、舞台音响、投影仪等。最大可容纳3000人。
');
INSERT INTO `Places` VALUES(4,"景点","神泉潮井",
							106.50316867404514,26.037156575520832,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/神泉潮井.mp3",
							'    神泉潮井是潮井湿地的水源地，泉水出露于白垩经地层中，溢出形式不规律，因其如溢出似潮涨潮落，故名曰潮井。涨潮时，水从泉眼奔涌而出，就像银花怒放，犹如珍珠滚动，泉水淹没井口四周，持续10-20分钟，退潮时，泉水退下井口两尺多。神泉潮涨潮落周而复始，终年不息，多时每天涨潮七、八次，少时两、三次。因此泉为当地神泉，备受当地民众崇拜，相传取水洗头可除去头屑，用水洗身可治皮肤疾患，饮用可延年益寿，因此专程来此取水的游人络绎不绝。
');
INSERT INTO `Places` VALUES(5,"景点","旅发广场",
							106.50393337673611,26.03650363498264,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/旅发广场.mp3",
							'    旅发广场是黔南州第13届旅游发展大会的主会场，所以被称为旅发广场，广场中间有一个很大的福字，也被人们称为福字广场。
');
INSERT INTO `Places` VALUES(6,"景点","玉带桥",
							106.50405626085069,26.035070258246527,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/玉带桥.mp3",
							'    玉带桥是在个福禄湖正中间的一座石桥，看着就像湖中的一条飘带，所以称为玉带桥，站在桥上，可以看到整个福禄湖的景色，是游客打卡拍照的圣地。
');
INSERT INTO `Places` VALUES(7,"景点","福禄湖",
							106.50385626085069,26.035570258246527,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/福禄湖.mp3",
							'    福禄湖位于景区潮井湿地公园内，亭台水榭、湖光潋滟、把整个福禄湖装扮得婀娜多姿，徜徉其间，会有挥毫抒怀，抚琴舒心的冲动。福禄湖内极具特色的是玉带桥，当地有种说法“玉带桥上走，幸福便长久”。在这里，游客能够体验亲近自然，满足梦境中的奇妙幻景。
');
INSERT INTO `Places` VALUES(8,"景点","品茗轩",
							106.50463948567709,26.03640652126736,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/品茗轩.mp3",
							'    品茗轩位于神泉谷景区内部，由大量的凉亭组建而成，凉亭因造型轻巧，选材不拘，布局灵活，是赏景的绝佳之地。园内山水相映，风景优美，正是“园中有景，园既是景”。游客游玩乏累之时可在品茗轩的凉亭中休憩，品着茗茶，闲谈人生。
');
INSERT INTO `Places` VALUES(9,"景点","高空玻璃吊桥",
							106.50091037326389, 26.037859700520833,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/高空玻璃吊桥.mp3",
							'    高空玻璃桥位于神泉谷两座山峰之间，是一座全透明的高空玻璃桥，总长度为328米，宽度2.5米，垂直高度188米，能同时承载人数1000人，被誉为贵州高空“第一桥”，是目前贵州跨度最长、高度最高的空中玻璃栈道。走在桥上，青山绿水尽收眼底，远望群山如空中流水，是眺望神泉谷风貌的极佳地点，游客可以亲身感受到高空玻璃桥带来的惊险与刺激，让人别有一番激情
');
INSERT INTO `Places` VALUES(10,"景点","逸和园",
							106.50053656684028,26.03753607855903,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/逸和园.mp3",
							'    逸和园位于神泉驿站对面，园中泉流石柱，互相交织，兼具休闲、憩息、生活等功能，有厅堂、亭、阁、池等，具有典型的中国园林建筑特色，游客可在此处感受园林生活气息。
');
INSERT INTO `Places` VALUES(11,"景点","神泉驿站洞穴飞瀑",
							106.49997721354167,26.03848605685764,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/神泉驿站洞穴飞瀑.mp3",
							'    神泉谷景区因地势西高东低，落差较大，地貌奇特等。景区内共有大小瀑布五个，各有特色，其中神泉驿站洞穴飞瀑尤为壮观，让人叹为观止。瀑布直冲而下，在阳光映射下，像悬空的彩链，闪烁着五彩缤纷的霞光，璀璨夺目。
');
INSERT INTO `Places` VALUES(12,"景点","桃花林",
							106.49883273654514,26.04335720486111,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/桃花林.mp3",
							'    桃花林，面积约300余亩，花期在每年3月，在花期，桃花如火，花上枝头，浓淡相间，有的鲜红如碧血，有的艳丽如胭脂，千树万树，织就花的云锦，再现了陶令笔下的意境，耐人寻味。是摄影、亲子、休闲娱乐、赏花回归自然的绝佳之地。
');
INSERT INTO `Places` VALUES(13,"景点","萤火虫酒店",
							106.50237874348959,26.03377414279514,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/萤火虫酒店.mp3",
							'    长顺县萤火虫酒店位于长顺县长寨街道神泉谷景区画家村，该酒店占地面积12575.31平方米，总投资2000万元。萤火虫酒店32栋，总床位47张，分为鸟巢、流萤、精灵、松果四种户型，其中：鸟巢5栋，单栋面积120平方米；流萤5栋，单栋面积58.5平方米；精灵11栋，单栋面积45.7平方米；松果11栋，单栋面积61.25平方米。其中还包括木屋一室一厅、二室一厅、三室一厅、四室一厅。独栋别墅23套：月牙洞8套，烟雨湖9套，红枫林6套。萤火虫酒店于2022年8月26日正式营业。
');
INSERT INTO `Places` VALUES(14,"景点","画家村",
							106.49344807942708,26.0415087890625,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/画家村.mp3",
							'    画家村地处群峰之中，谷深景美，依山就势，依水成景，山、水、房、树一体，美轮美奂，私密性、静谧性较强，是艺术家的创作基地。同时引入书画大师、工艺美术大师、创作大师等入驻，可以为热爱画画的人提供写生、写作、摄影等。在如此美丽、幽静的环境中作画，定能给画家带来不一样的灵感。同时，画家村的存在，给神泉谷景区增添了艺术气息和文化内涵。画家村内有月牙洞、烟雨湖、消水涧、画展中心、画舫创始基地、特色民宿、休闲栈道、水库田园等，别有一番风趣。
');
INSERT INTO `Places` VALUES(15,"景点","越野体验营",
							106.48901177300347,26.042083604600695,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/越野体验营.mp3",
							'    越野卡丁车是一项集竞速和娱乐于一体的运动项目，在不同的地形中飞驰回转，看着飞扬起的尘土，感受着林间草木擦身而过，给人来带一种畅快淋漓的运动体验。赛道的设计上有直角弯、U型弯、S弯，难度和趣味相结合，既能让资深的爱好者尽情享受人车合一的越野过程，也能让新尝试越野车的人感受其中的魅力和乐趣。
');
INSERT INTO `Places` VALUES(16,"景点","紫薇林",
							106.48299614800347,26.03852837456597,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/紫薇林.mp3",
							'    紫薇林，面积约500余亩，是贵州最大的紫薇林，每年6-9月是观赏紫薇花的最佳观赏期。紫薇花的花语寓意为好运、和平、沉迷的爱。相传,它能给人们带来好的运气,象征着好运、幸福。紫薇林也是游客最佳祈福之地。
');
INSERT INTO `Places` VALUES(17,"景点","龙吐水",
							106.48185845269097,26.037424045138888,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/龙吐水.mp3",
							'    夏天时龙头吐水，形成细雾迎风迎面而来，非常的凉爽，在冬季气温比较低的时候，水喷出会结冰，形冰瀑，景色也非常美丽。龙吐水也是一种吉祥的兆头，游客可以到这里祈福。
');
INSERT INTO `Places` VALUES(18,"景点","十三孔桥",
							106.48136637369792,26.037058648003473,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/十三孔桥.mp3",
							'    十三孔桥是红军2万5千里长征的一段缩影，站在桥上，我们可以体会当时革命先烈的艰辛，领会他们的奉献精神，了解革命历史，具有很好的教育意义。
');
INSERT INTO `Places` VALUES(19,"景点","踩水滩",
							106.48035725911457,26.036590983072916,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/踩水滩.mp3",
							'    由乌麻河冲刷而形成的踩水滩，溪水清澈，含沙量少，水质较好。夏天踩水滩清澈冰凉、鱼虾可见，是戏水玩耍、抓鱼捉虾、避暑休闲、亲子娱乐的好去处！
');
INSERT INTO `Places` VALUES(20,"景点","火星花田",
							106.47680555555556,26.03696560329861,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/火星花田.mp3",
							'    火星花为鸢尾科火星花属植物。其花朵排列成一枝枝微显弯曲的圆锥花序，从葱绿的叶丛中向外伸吐，高低错落，疏密有致，火星花抗酷暑，仲夏季节，花事静寂之际花开不绝，适合布置花境、花坛和作切花材料。是一种观赏价值较高的花卉。
');
INSERT INTO `Places` VALUES(21,"景点","高空玻璃滑道漂流",
							106.46844455295138,26.035505642361112,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/高空玻璃滑道漂流.mp3",
							'    玻璃漂流位于景区中心区域，是贵州省黔南州高空第一玻璃滑道漂流，也是贵州省首条玻璃滑道漂流，整个玻璃滑道全长800余米，最大垂直高度近20米，总体落差高度约60米。滑道漂流西起粉黛草观赏区红军瀑布顶端，东至卷云驿站，采用优质不锈钢作为支撑主体，高强度的双层夹胶钢化玻璃作为滑道主体，安全稳固，是游客放心大胆体验刺激的场所。
');
INSERT INTO `Places` VALUES(22,"景点","研学基地",
							106.46760036892361,26.03346218532986,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/研学基地.mp3",
							'    为了促进长顺县多元化旅游发展，满足游客休闲游层次提高想获得深度体验的需要，本项目除了改造仓库为餐饮民宿，进行传统文旅经营以外，进一步结合优美的景观，完整的生态环境、打造自然艺术文化主题，提供给游客有特色的知性体验；同时与自然教育资源结合，为周边幼儿园小学生提供一处有完整生态教育理念的自然基地，为亲子度假游客提供一处理想丰富的吃、住、学、游、购、艺的场所。
');
INSERT INTO `Places` VALUES(23,"景点","粉黛草花田",
							106.46567274305555,26.03422634548611,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/粉黛草花田.mp3",
							'    粉黛草花田，是神泉谷的核心景点之一，面积约为800余亩，是贵州最大的粉黛草花田。粉黛草的花期是每年的9-11月，在这段时间，到处都是粉粉的海洋，伴着微风，掀起一阵阵粉浪。远看如粉紫色云雾，如梦如幻。粉黛草的花语是等待和好运，有个传说，只要亲手握住粉黛草，能把幸福、好运、快乐、爱情、友情传达到远方！
');
INSERT INTO `Places` VALUES(24,"景点","粉黛佳人",
							106.46696223958333,26.03580673828125,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/粉黛佳人.mp3",
							'    利用三百亩粉黛空间打造一个纯粹的粉色领域，让年轻的女孩心生向往。在白天观美景、品茶、休闲、娱乐、旅拍游玩后，夜间有地方特色结合国际电音范的大型演出，让到来的游客释放热情和快乐，增强整个旅途的记忆点和体验感。整个旅游园区氛围主打是轻松、自在、多元化，让来这里的人自由自在。在美食区可设置当地特色美食以及各类网红食品，满足游客的美食需求，另外还可增设适合儿童的餐厅区，让小朋友也体验旅游中美食带来的幸福感。
');
                            
INSERT INTO `Places` VALUES(25,"景点","飞花驿站",
							106.4579345703125,26.034019368489584,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/飞花驿站.mp3",
							'    飞花驿站片片花海让人心醉神往，阵阵幽香沁人心脾。驿站附近有瀑布溪流，花海风车、水上乐园、户外拓展、婚庆广场、休闲餐厅、玩赏一体功能兼具。
');
INSERT INTO `Places` VALUES(26,"景点","音乐餐厅",
							106.45656846788195,26.03559326171875,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/音乐餐厅.mp3",
							'    音乐餐厅不仅能给游客提供不一样的就餐体验，还能为游客营造出一种或温馨或神秘，或怀旧或热烈的氛围，让人沉醉其中，在欣赏音乐的同时，完成就餐，让人心身愉悦。
');
INSERT INTO `Places` VALUES(27,"景点","花海婚庆营地",
							106.45539171006945,26.03563666449653,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/花海婚庆营地.mp3",
							'    花海婚庆度假营地占地面积共1000多平方米, 是青年男女的浪漫约会之地，是新婚燕尔的度假之地，在这里可以感受幸福甜蜜的邂逅；感受玻璃漂流激情的释放；夜游神泉谷，还可以数星星，看月亮，开启难忘的花前月下之旅。
');
INSERT INTO `Places` VALUES(28,"景点","儿童游乐园",
							106.45500868055555,26.035816514756945,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/儿童游乐园.mp3",
							'    景区儿童游乐场里有许多的娱乐设施，不仅能让儿童释放身心，还有语言训练，协调身体机能，培养独立能力等益处。是儿童的娱乐圣地，也是和孩子培养感情的好去处。
');
INSERT INTO `Places` VALUES(29,"景点","自然漂流",
							106.45380588107639,26.035314127604167,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/自然漂流.mp3",
							'    自然漂流位于景区西区，长度约为1.8公里，开工时间2023年6月15日，计划完工时间2023年8月15日。自然漂流的建成将为景区的水上项目增加更多的体验。特别在炎炎的夏日更能为景区带来更多的游客流量和经济效益。
');
INSERT INTO `Places` VALUES(30,"出入口","东出入口",
							106.50298394097223,26.032240397135418,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(31,"出入口","西出入口",
							106.4577978515625,26.034046495225695,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(32,"厕所","双子塔卫生间",
							106.50637613932291,26.03258490668403,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(33,"厕所","东出入口卫生间",
							106.50298394097223,26.032240397135418,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(34,"厕所","露营基地卫生间",
							106.50266086154514,26.033599175347224,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(35,"厕所","神泉潮井卫生间",
							106.5038916015625,26.036829698350694,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(36,"厕所","逸和园卫生间",
							106.50032009548612,26.037481825086804,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(37,"厕所","神泉驿站卫生间",
							106.50057535807292,26.037967664930555,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(38,"厕所","越野体验营卫生间",
							106.48929768880208,26.041759711371526,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(39,"厕所","土井农庄卫生间",
							106.48301513671875,26.038499348958332,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(40,"厕所","踩水滩卫生间",
							106.48102159288194,26.036493326822917,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(41,"厕所","卷云驿站卫生间",
							106.47249945746528,26.03695827907986,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(42,"厕所","玻璃漂流卫生间",
							106.46845648871528,26.03552761501736,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(43,"厕所","飞花驿站卫生间",
							106.4580015733507,26.034072265625,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(44,"厕所","花海卫生间",
							106.45517795138889,26.035790201822916,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(45,"餐饮","潮井商铺",
							106.50222846137153,26.036548665364585,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(46,"餐饮","逸和园餐饮区",
							106.50033799913194,26.037778591579862,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(47,"餐饮","农家大院",
							106.50032090928819,26.037778591579862,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(48,"餐饮","土井农庄",
							106.48693250868055,26.03984619140625,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(49,"餐饮","神泉西米家",
							106.47907769097222,26.03779975043403,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(50,"餐饮","乌麻河山庄",
							106.4683865017361,26.035616590711804,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(51,"餐饮","花海餐饮区",
							106.45563530815973,26.03556830512153,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);   
INSERT INTO `Places` VALUES(52,"餐饮","音乐餐厅",
							106.45656846788195,26.03559326171875,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            "https://blue.squidward.top/shenquangu_data/photo/音乐餐厅.mp3",
							NULL);
INSERT INTO `Places` VALUES(53,"摄影点","荷花池",
							106.51085611979167,26.02946560329861,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/荷花池.mp3",
                            "     荷花池，是神泉谷的核心景点之一，面积约160亩，主要品种为大叶荷。每年春、夏两季,荷花池翠绿覆盖。白色、粉红色的荷花伸出头来,亭亭玉立,争妍斗艳，荷花池内设有木栈道、石道，供游客游览。峰林、小溪、草甸、村落环绕其中，是休闲锻炼、消暑纳凉、赏花漫步的绝佳之地！
");
INSERT INTO `Places` VALUES(54,"摄影点","玉带桥",
							106.50405626085069,26.035070258246527,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/玉带桥.mp3",
							'    玉带桥是在个福禄湖正中间的一座石桥，看着就像湖中的一条飘带，所以称为玉带桥，站在桥上，可以看到整个福禄湖的景色，是游客打卡拍照的圣地。
');
INSERT INTO `Places` VALUES(55,"摄影点","高空玻璃吊桥",
							106.50091037326389, 26.037859700520833,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/高空玻璃吊桥.mp3",
							'    高空玻璃桥位于神泉谷两座山峰之间，是一座全透明的高空玻璃桥，总长度为328米，宽度2.5米，垂直高度188米，能同时承载人数1000人，被誉为贵州高空“第一桥”，是目前贵州跨度最长、高度最高的空中玻璃栈道。走在桥上，青山绿水尽收眼底，远望群山如空中流水，是眺望神泉谷风貌的极佳地点，游客可以亲身感受到高空玻璃桥带来的惊险与刺激，让人别有一番激情
');
INSERT INTO `Places` VALUES(56,"摄影点","神泉驿站洞穴飞瀑",
							106.49997721354167,26.03848605685764,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/神泉驿站洞穴飞瀑.mp3",
							'    神泉谷景区因地势西高东低，落差较大，地貌奇特等。景区内共有大小瀑布五个，各有特色，其中神泉驿站洞穴飞瀑尤为壮观，让人叹为观止。瀑布直冲而下，在阳光映射下，像悬空的彩链，闪烁着五彩缤纷的霞光，璀璨夺目。
');
INSERT INTO `Places` VALUES(57,"摄影点","桃花林",
							106.49883273654514,26.04335720486111,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/桃花林.mp3",
							'    桃花林，面积约300余亩，花期在每年3月，在花期，桃花如火，花上枝头，浓淡相间，有的鲜红如碧血，有的艳丽如胭脂，千树万树，织就花的云锦，再现了陶令笔下的意境，耐人寻味。是摄影、亲子、休闲娱乐、赏花回归自然的绝佳之地。
');
INSERT INTO `Places` VALUES(58,"摄影点","紫薇林",
							106.48299614800347,26.03852837456597,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/紫薇林.mp3",
							'    紫薇林，面积约500余亩，是贵州最大的紫薇林，每年6-9月是观赏紫薇花的最佳观赏期。紫薇花的花语寓意为好运、和平、沉迷的爱。相传,它能给人们带来好的运气,象征着好运、幸福。紫薇林也是游客最佳祈福之地。
');
INSERT INTO `Places` VALUES(59,"摄影点","龙吐水",
							106.48185845269097,26.037424045138888,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/龙吐水.mp3",
							'    夏天时龙头吐水，形成细雾迎风迎面而来，非常的凉爽，在冬季气温比较低的时候，水喷出会结冰，形冰瀑，景色也非常美丽。龙吐水也是一种吉祥的兆头，游客可以到这里祈福。
');
INSERT INTO `Places` VALUES(60,"摄影点","火星花田",
							106.47680555555556,26.03696560329861,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/火星花田.mp3",
							'    火星花为鸢尾科火星花属植物。其花朵排列成一枝枝微显弯曲的圆锥花序，从葱绿的叶丛中向外伸吐，高低错落，疏密有致，火星花抗酷暑，仲夏季节，花事静寂之际花开不绝，适合布置花境、花坛和作切花材料。是一种观赏价值较高的花卉。
');
INSERT INTO `Places` VALUES(61,"摄影点","粉黛草花田",
							106.46567274305555,26.03422634548611,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/粉黛草花田.mp3",
							'    粉黛草花田，是神泉谷的核心景点之一，面积约为800余亩，是贵州最大的粉黛草花田。粉黛草的花期是每年的9-11月，在这段时间，到处都是粉粉的海洋，伴着微风，掀起一阵阵粉浪。远看如粉紫色云雾，如梦如幻。粉黛草的花语是等待和好运，有个传说，只要亲手握住粉黛草，能把幸福、好运、快乐、爱情、友情传达到远方！
');
INSERT INTO `Places` VALUES(62,"售票处","东售票处",
							106.51059299045139,26.028745930989583,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(63,"售票处","高空玻璃吊桥售票处",
							106.50091037326389,26.037859700520833,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(64,"售票处","越野体验营售票处",
							106.48901177300347,26.042083604600695,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(65,"售票处","高空玻璃滑道漂流售票处",
							106.46844455295138,26.035505642361112,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(66,"售票处","西售票处",
							106.4577978515625,26.034046495225695,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(67,"游客中心","东游客中心",
							106.51059299045139,26.028745930989583,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(68,"游客中心","西游客中心",
							106.4577978515625,26.034046495225695,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(69,"网红打卡点","露营基地",
							106.50237874348959,26.03377414279514,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/露营基地.mp3",
							'    长顺神泉谷峰景露营地于2023年3月份建设完成，基础设施投资300万，占地面积5万平方米，其中包括露营烧烤、围炉煮茶、儿童乐园、野营区等。共有露营地台40座，烧烤摊位42个。配有男女厕所、男女卫浴、酒水吧台、篝火场地、舞台音响、投影仪等。最大可容纳3000人。
');
INSERT INTO `Places` VALUES(70,"网红打卡点","神泉潮井",
							106.50316867404514,26.037156575520832,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/神泉潮井.mp3",
							'    神泉潮井是潮井湿地的水源地，泉水出露于白垩经地层中，溢出形式不规律，因其如溢出似潮涨潮落，故名曰潮井。涨潮时，水从泉眼奔涌而出，就像银花怒放，犹如珍珠滚动，泉水淹没井口四周，持续10-20分钟，退潮时，泉水退下井口两尺多。神泉潮涨潮落周而复始，终年不息，多时每天涨潮七、八次，少时两、三次。因此泉为当地神泉，备受当地民众崇拜，相传取水洗头可除去头屑，用水洗身可治皮肤疾患，饮用可延年益寿，因此专程来此取水的游人络绎不绝。
');
INSERT INTO `Places` VALUES(71,"网红打卡点","高空玻璃吊桥",
							106.50091037326389, 26.037859700520833,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/高空玻璃吊桥.mp3",
							'    高空玻璃桥位于神泉谷两座山峰之间，是一座全透明的高空玻璃桥，总长度为328米，宽度2.5米，垂直高度188米，能同时承载人数1000人，被誉为贵州高空“第一桥”，是目前贵州跨度最长、高度最高的空中玻璃栈道。走在桥上，青山绿水尽收眼底，远望群山如空中流水，是眺望神泉谷风貌的极佳地点，游客可以亲身感受到高空玻璃桥带来的惊险与刺激，让人别有一番激情
');
INSERT INTO `Places` VALUES(72,"网红打卡点","桃花林",
							106.49883273654514,26.04335720486111,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/桃花林.mp3",
							'    桃花林，面积约300余亩，花期在每年3月，在花期，桃花如火，花上枝头，浓淡相间，有的鲜红如碧血，有的艳丽如胭脂，千树万树，织就花的云锦，再现了陶令笔下的意境，耐人寻味。是摄影、亲子、休闲娱乐、赏花回归自然的绝佳之地。
');
INSERT INTO `Places` VALUES(73,"网红打卡点","紫薇林",
							106.48299614800347,26.03852837456597,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/紫薇林.mp3",
							'    紫薇林，面积约500余亩，是贵州最大的紫薇林，每年6-9月是观赏紫薇花的最佳观赏期。紫薇花的花语寓意为好运、和平、沉迷的爱。相传,它能给人们带来好的运气,象征着好运、幸福。紫薇林也是游客最佳祈福之地。
');
INSERT INTO `Places` VALUES(74,"网红打卡点","火星花田",
							106.47680555555556,26.03696560329861,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            "https://blue.squidward.top/shenquangu_data/audio/火星花田.mp3",
							'    火星花为鸢尾科火星花属植物。其花朵排列成一枝枝微显弯曲的圆锥花序，从葱绿的叶丛中向外伸吐，高低错落，疏密有致，火星花抗酷暑，仲夏季节，花事静寂之际花开不绝，适合布置花境、花坛和作切花材料。是一种观赏价值较高的花卉。
');
INSERT INTO `Places` VALUES(75,"网红打卡点","粉黛草花田",
							106.46567274305555,26.03422634548611,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png","https://blue.squidward.top/shenquangu_data/audio/粉黛草花田.mp3",
							'    粉黛草花田，是神泉谷的核心景点之一，面积约为800余亩，是贵州最大的粉黛草花田。粉黛草的花期是每年的9-11月，在这段时间，到处都是粉粉的海洋，伴着微风，掀起一阵阵粉浪。远看如粉紫色云雾，如梦如幻。粉黛草的花语是等待和好运，有个传说，只要亲手握住粉黛草，能把幸福、好运、快乐、爱情、友情传达到远方！
');
INSERT INTO `Places` VALUES(76,"娱乐设施","水上碰碰船",
							106.50463840060763,26.03279106987847,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(77,"娱乐设施","儿童乐园",
							106.50137288411459,26.03721950954861,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(78,"娱乐设施","山峰的书房",
							106.49325656467013,26.041375325520832,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(79,"娱乐设施","逍遥秀场",
							106.48927300347222,26.04175998263889,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(80,"娱乐设施","花海小火车",
							106.45789659288195,26.03462700737847,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
INSERT INTO `Places` VALUES(81,"娱乐设施","儿童游乐天地",
							106.45500868055555,26.035816514756945,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            "https://blue.squidward.top/shenquangu_data/audio/儿童游乐园.mp3",
							'    景区儿童游乐场里有许多的娱乐设施，不仅能让儿童释放身心，还有语言训练，协调身体机能，培养独立能力等益处。是儿童的娱乐圣地，也是和孩子培养感情的好去处。
');
INSERT INTO `Places` VALUES(82,"救助点","东服务医务室",
							106.51059299045139,26.028745930989583,"8:30-18:00",
							"https://blue.squidward.top/shenquangu_data/photo/0.png",
                            NULL,
							NULL);
                            
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/露营基地.jpg' 
where `plName`='露营基地';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/荷花池.jpg' 
where `plName`='荷花池';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/福禄湖.jpg' 
where `plName`='福禄湖';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/神泉潮井.jpg' 
where `plName`='神泉潮井';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/逸和园.jpg' 
where `plName`='逸和园';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/高空玻璃吊桥.jpg' 
where `plName`='高空玻璃吊桥';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/画家村.jpg' 
where `plName`='画家村';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/萤火虫酒店.jpg' 
where `plName`='萤火虫酒店';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/紫薇林.jpg' 
where `plName`='紫薇林';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/踩水滩.jpg' 
where `plName`='踩水滩';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/粉黛草花田.jpg' 
where `plName`='粉黛草花田';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/火星花田.jpg' 
where `plName`='火星花田';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/花海婚庆营地.jpg' 
where `plName`='花海婚庆营地';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/神泉驿站洞穴飞瀑.jpg' 
where `plName`='神泉驿站洞穴飞瀑';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/高空玻璃滑道漂流.jpg' 
where `plName`='高空玻璃滑道漂流';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/粉黛佳人.jpg' 
where `plName`='粉黛佳人';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/研学基地.jpg' 
where `plName`='研学基地';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/双子塔.jpg' 
where `plName`='双子塔';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/飞花驿站.jpg' 
where `plName`='飞花驿站';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/十三孔桥.jpg' 
where `plName`='十三孔桥';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/龙吐水.jpg' 
where `plName`='龙吐水';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/玉带桥.jpg' 
where `plName`='玉带桥';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/旅发广场.jpg' 
where `plName`='旅发广场';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/越野体验营.jpg' 
where `plName`='越野体验营';

update `Places` set `imgUrl` = replace(`imgUrl`,'jpg','png');
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/粉黛佳人.jpg' 
where `plName`='粉黛佳人';
update `Places` 
set `imgUrl`='https://blue.squidward.top/shenquangu_data/photo/紫薇林.jpg' 
where `plName`='紫薇林';

update `Places` 
set `audioUrl`="https://blue.squidward.top/shenquangu_data/audio/萤火虫酒店.mp3"
where `plName`='萤火虫酒店';



delete from `Places` where `plId` = 25;


DESCRIBE `Places`;
DESCRIBE `Categories`;

SELECT * FROM `Categories` ORDER BY `catId`;
SELECT * FROM `Places` WHERE `plName`= '萤火虫酒店';

DROP TABLE `Places`;
DROP TABLE `Categories`;