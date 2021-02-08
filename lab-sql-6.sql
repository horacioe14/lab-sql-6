use sakila;
drop table if exists films_2020;


CREATE TABLE films_2020 (
  film_id smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  description text,
  release_year year(4) DEFAULT NULL,
  language_id tinyint unsigned NOT NULL,
  original_language_id tinyint unsigned DEFAULT NULL,
  rental_duration varchar(255),
  rental_rate varchar(255),
  length smallint(5) unsigned DEFAULT NULL,
  replacement_cost varchar(255) DEFAULT NULL,
  rating enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (film_id),
  CONSTRAINT FOREIGN KEY (original_language_id) REFERENCES language (language_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=UTF8MB4;
SELECT  * FROM films_2020;

UPDATE sakila.films_2020 SET rental_duration = 3;
UPDATE sakila.films_2020 SET rental_rate = 2.99;
UPDATE sakila.films_2020 SET replacement_cost = 8.99; 

SELECT  * FROM films_2020;
