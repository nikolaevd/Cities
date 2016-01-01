----------------------------------------------------
-- Table: cities
----------------------------------------------------

CREATE TABLE cities(
	id integer NOT NULL,
	city varchar(32) NOT NULL,
	year integer,
	area integer,
	CONSTRAINT key_cities PRIMARY KEY (id)
)
WITH ( OIDS=FALSE );
ALTER TABLE cities OWNER TO postgres;

INSERT INTO cities (id, city, year, area) VALUES (0, 'Москва', 1147, 2561);
INSERT INTO cities (id, city, year, area) VALUES (1, 'Санкт-Петербург', 1703, 1439);
INSERT INTO cities (id, city, year, area) VALUES (2, 'Екатеринбург', 1723, 487);
INSERT INTO cities (id, city, year, area) VALUES (3, 'Самара', 1586, 541);

----------------------------------------------------
-- Table: nationality
----------------------------------------------------

CREATE TABLE nationality(
	id integer NOT NULL,
	nationality varchar(32),
	incipience int,
	CONSTRAINT key_nationality PRIMARY KEY (id)
)
WITH ( OIDS=FALSE );
ALTER TABLE nationality OWNER TO postgres;

INSERT INTO nationality (id, nationality, incipience) VALUES (0, 'русские', '9');
INSERT INTO nationality (id, nationality, incipience) VALUES (1, 'татары', '6');
INSERT INTO nationality (id, nationality, incipience) VALUES (2, 'украинцы', '9');
INSERT INTO nationality (id, nationality, incipience) VALUES (3, 'армяне', '13');
INSERT INTO nationality (id, nationality, incipience) VALUES (4, 'молдаване', '14');

----------------------------------------------------
-- Table: languages
----------------------------------------------------

CREATE TABLE languages(
	id integer NOT NULL,
	language varchar(32),
	CONSTRAINT key_languages PRIMARY KEY (id)
)
WITH ( OIDS=FALSE );
ALTER TABLE languages OWNER TO postgres;

INSERT INTO languages (id, language) VALUES (0, 'русский');
INSERT INTO languages (id, language) VALUES (1, 'татарский');
INSERT INTO languages (id, language) VALUES (2, 'украинский');
INSERT INTO languages (id, language) VALUES (3, 'армянский');
INSERT INTO languages (id, language) VALUES (4, 'молдавский');

----------------------------------------------------
-- Table: national_languages
----------------------------------------------------

CREATE TABLE national_languages(
	nationality_id integer,
	language_id integer,
	CONSTRAINT key_nationality_id FOREIGN KEY (nationality_id)
		REFERENCES nationality (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT key_language_id FOREIGN KEY (language_id)
		REFERENCES languages (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH ( OIDS=FALSE );
ALTER TABLE national_languages OWNER TO postgres;

INSERT INTO national_languages (nationality_id, language_id) VALUES (0, 0);
INSERT INTO national_languages (nationality_id, language_id) VALUES (1, 0);
INSERT INTO national_languages (nationality_id, language_id) VALUES (1, 1);
INSERT INTO national_languages (nationality_id, language_id) VALUES (2, 0);
INSERT INTO national_languages (nationality_id, language_id) VALUES (2, 2);
INSERT INTO national_languages (nationality_id, language_id) VALUES (3, 0);
INSERT INTO national_languages (nationality_id, language_id) VALUES (3, 3);
INSERT INTO national_languages (nationality_id, language_id) VALUES (4, 0);
INSERT INTO national_languages (nationality_id, language_id) VALUES (4, 4);

----------------------------------------------------
-- Table: population
----------------------------------------------------

CREATE TABLE population(
	nationality_id integer,
	city_id integer,
	population integer,
	CONSTRAINT key_nationality_id FOREIGN KEY (nationality_id)
		REFERENCES nationality (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT key_city_id FOREIGN KEY (city_id)
		REFERENCES cities (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH ( OIDS=FALSE );
ALTER TABLE population OWNER TO postgres;

INSERT INTO population (nationality_id, city_id, population) VALUES (0, 0, 9930410);
INSERT INTO population (nationality_id, city_id, population) VALUES (1, 0, 149043);
INSERT INTO population (nationality_id, city_id, population) VALUES (2, 0, 154104);
INSERT INTO population (nationality_id, city_id, population) VALUES (3, 0, 106466);
INSERT INTO population (nationality_id, city_id, population) VALUES (4, 0, 21699);
INSERT INTO population (nationality_id, city_id, population) VALUES (0, 1, 3908753);
INSERT INTO population (nationality_id, city_id, population) VALUES (1, 1, 30857);
INSERT INTO population (nationality_id, city_id, population) VALUES (2, 1, 64446);
INSERT INTO population (nationality_id, city_id, population) VALUES (3, 1, 19971);
INSERT INTO population (nationality_id, city_id, population) VALUES (4, 1, 7200);
INSERT INTO population (nationality_id, city_id, population) VALUES (0, 1, 1106688);
INSERT INTO population (nationality_id, city_id, population) VALUES (1, 1, 46232);
INSERT INTO population (nationality_id, city_id, population) VALUES (2, 1, 12815);
INSERT INTO population (nationality_id, city_id, population) VALUES (3, 1, 5271);
INSERT INTO population (nationality_id, city_id, population) VALUES (4, 1, 2013);
INSERT INTO population (nationality_id, city_id, population) VALUES (0, 1, 986915);
INSERT INTO population (nationality_id, city_id, population) VALUES (1, 1, 39409);
INSERT INTO population (nationality_id, city_id, population) VALUES (2, 1, 12586);
INSERT INTO population (nationality_id, city_id, population) VALUES (3, 1, 7424);
INSERT INTO population (nationality_id, city_id, population) VALUES (4, 1, 1342);