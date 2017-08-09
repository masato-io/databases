DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;

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
  `objectId` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `roomname` VARCHAR(20) NULL DEFAULT NULL,
  `text` VARCHAR(255) NULL DEFAULT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` TIMESTAMP NOT NULL,
  `fkid_username` INTEGER NOT NULL,
  PRIMARY KEY (`objectId`)
);

-- ---
-- Table 'roomname'
--
-- ---

DROP TABLE IF EXISTS `username`;

CREATE TABLE `username` (
  `id` INTEGER NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---
ALTER TABLE `message` ADD FOREIGN KEY (fkid_username) REFERENCES `username` (`id`);
-- ---
-- Table Properties
-- ---

-- ALTER TABLE `message` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `roomname` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO username (name) VALUES ('user1');
INSERT INTO username (name) VALUES ('user2');
INSERT INTO message (roomname, text, fkid_username) VALUES ('lobby', 'hello world', 1);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
