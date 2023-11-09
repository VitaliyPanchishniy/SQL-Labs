SELECT c.name AS city_name, r.name AS region_name
FROM cities c, regions r
WHERE c.region = r.uuid
AND c.population > 350000;

SELECT c.name AS city_name
FROM cities c, regions r
WHERE c.region = r.uuid
AND r.name = 'Nord';


SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `Connections`;
CREATE TABLE `Connections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sation1_id` int(10) unsigned NOT NULL,
  `station2_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `Lines`;
CREATE TABLE `Lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `color` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `Stations`;
CREATE TABLE `Stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `line_id` int(10) unsigned NOT NULL,
  `previous_id` int(10) unsigned NOT NULL,
  `next_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;