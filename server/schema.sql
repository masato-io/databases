DROP DATABASE chat;

CREATE DATABASE chat;
SET SQL_MODE="";
USE chat;

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `roomname` VARCHAR(20) NULL DEFAULT NULL,
  `text` VARCHAR(255) NULL DEFAULT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` TIMESTAMP NOT NULL,
  `fkid_username` INTEGER NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INTEGER AUTO_INCREMENT,
  `username` VARCHAR(30) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

ALTER TABLE `messages` ADD FOREIGN KEY (fkid_username) REFERENCES `users` (`id`);

INSERT INTO users (username) VALUES ('user1');
INSERT INTO users (username) VALUES ('user2');
INSERT INTO messages (roomname, text, fkid_username) VALUES ('lobby', 'hello world', 1);
