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
	`imgUrl` VARCHAR(60),
    `audioUrl` VARCHAR(60),
    `descText` TEXT
);

ALTER TABLE `Places`
ADD FOREIGN KEY(`catName`)
REFERENCES `Categories`(`catName`)
ON DELETE SET NULL;

INSERT INTO `Categories` VALUES(1,"景点");
INSERT INTO `Categories` VALUES(2,"洗手间");

INSERT INTO `Places` VALUES(1,"景点","xx山",40.71727401,-74.00898606,"8:00~10:00","/usr/local/shenquangu_data/photo/mountain.jpg","/usr/local/shenquangu_data/audio/7Years.mp3","xx山的详细介绍");
INSERT INTO `Places` VALUES(2,"景点","xx水",10.10101010, 14.00000000,"7:00~11:00","/usr/local/shenquangu_data/photo/river.jpg","/usr/local/shenquangu_data/audio/CityOfStars.mp3","xx水的详细介绍");
INSERT INTO `Places` VALUES(3,"洗手间","洗手间",9.00000000, 10.22000000,"0:00~23:00","/usr/local/shenquangu_data/photo/bathroom.jpg","/usr/local/shenquangu_data/audio/MysteryOfLove.mp3",null);

DESCRIBE `Places`;
DESCRIBE `Categories`;

SELECT * FROM `Categories` WHERE `catName`="景点";
SELECT * FROM `Places` WHERE `catName`="景点";


DROP TABLE `Places`;
DROP TABLE `Categories`;