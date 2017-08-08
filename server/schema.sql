DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;
SET SQL_MODE = '';
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'message'
--
-- ---

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `objectId` INTEGER NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  `text` VARCHAR(255) NULL DEFAULT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` TIMESTAMP NOT NULL,
  `fkid_roomname` INTEGER NOT NULL,
  PRIMARY KEY (`objectId`)
);

-- ---
-- Table 'roomname'
--
-- ---

DROP TABLE IF EXISTS `roomname`;

CREATE TABLE `roomname` (
  `id` INTEGER AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---
ALTER TABLE `message` ADD FOREIGN KEY (fkid_roomname) REFERENCES `roomname` (`id`);
-- ---
-- Table Properties
-- ---

-- ALTER TABLE `message` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `roomname` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO roomname (name) VALUES ('room1');
INSERT INTO roomname (name) VALUES ('room2');
INSERT INTO message (username, text, fkid_roomname) VALUES ('testuser', 'hello world', 1);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
