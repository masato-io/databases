DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  `objectId` INTEGER NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  `text` VARCHAR(255) NULL DEFAULT NULL,
  `roomname` VARCHAR(20) NOT NULL DEFAULT 'NULL',
  `createdAt` DATETIME NOT NULL,
  `updatedAt` TIMESTAMP NOT NULL,
  PRIMARY KEY (`objectId`)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE `roomname` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

ALTER TABLE `messages` ADD FOREIGN KEY (roomname) REFERENCES `roomname` (`id`);
/*  Execute this file from the command line by typing:

 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
