----------------------------------------------------
-- Table: cities
----------------------------------------------------

CREATE SEQUENCE auto_city_id;
ALTER SEQUENCE auto_city_id OWNER TO postgres;

CREATE TABLE cities(
	id integer NOT NULL DEFAULT nextval(auto_city_id),
	name varchar(32) NOT NULL,
	year integer,
	area integer,
	CONSTRAINT key_cities PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );
ALTER TABLE cities OWNER TO postgres;

INSERT INTO cities (name, year, area) VALUES ('Москва', 1147, 2561);
INSERT INTO cities (name, year, area) VALUES ('Санкт-Петербург', 1703, 1439);
INSERT INTO cities (name, year, area) VALUES ('Екатеринбург', 1723, 487);
INSERT INTO cities (name, year, area) VALUES ('Самара', 1586, 541);

----------------------------------------------------
-- Table: nationality
----------------------------------------------------

CREATE SEQUENCE auto_nationality_id;
ALTER SEQUENCE auto_nationality_id OWNER TO postgres;

CREATE TABLE nationality(
	id integer NOT NULL DEFAULT nextval(auto_nationality_id),
	nationality varchar(32),
	incipience varchar(32),
	CONSTRAINT key_nationality PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );
ALTER TABLE nationality OWNER TO postgres;

INSERT INTO nationality (nationality, incipience) VALUES ('русские', 'IX век');
INSERT INTO nationality (nationality, incipience) VALUES ('татары', 'VI век');
INSERT INTO nationality (nationality, incipience) VALUES ('украинцы', 'IX век');
INSERT INTO nationality (nationality, incipience) VALUES ('армяне', 'XIII век');
INSERT INTO nationality (nationality, incipience) VALUES ('молдаване', 'XIV век');

----------------------------------------------------
-- Table: languages
----------------------------------------------------

CREATE SEQUENCE auto_language_id;
ALTER SEQUENCE auto_language_id OWNER TO postgres;

CREATE TABLE languages(
	id integer NOT NULL DEFAULT nextval(auto_language_id),
	language varchar(32)
)

WITH ( OIDS=FALSE );
ALTER TABLE languages OWNER TO postgres;

INSERT INTO languages (language) VALUES ('русский');
INSERT INTO languages (language) VALUES ('татарский');
INSERT INTO languages (language) VALUES ('украинский');
INSERT INTO languages (language) VALUES ('армянский');
INSERT INTO languages (language) VALUES ('молдавский');

----------------------------------------------------
-- Table: national_languages
----------------------------------------------------

CREATE TABLE national_languages(
	nationality_id integer REFERENCES nationality,
	langugage_id integer REFERENCES languages	
)

WITH ( OIDS=FALSE );
ALTER TABLE national_languages OWNER TO postgres;

INSERT INTO national_languages (nationality_id, lang_id) VALUES (0, 0);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (1, 0);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (1, 1);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (2, 0);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (2, 2);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (3, 0);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (3, 3);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (4, 0);
INSERT INTO national_languages (nationality_id, lang_id) VALUES (4, 4);

----------------------------------------------------
-- Table: population
----------------------------------------------------

CREATE TABLE population(
	nationality_id integer REFERENCES nationality,
	city_id integer REFERENCES cities,
	population integer
)

WITH ( OIDS=FALSE );
ALTER TABLE operations OWNER TO postgres;

INSERT INTO population (nationality_id, city_id, population) VALUES (0, 0, 9930410);
INSERT INTO population (nationality_id, city_id, population) VALUES (1, 0, 149043);
INSERT INTO population (nationality_id, city_id, population) VALUES (2, 0, 154104);
INSERT INTO population (nationality_id, city_id, population) VALUES (3, 0, 106466);
INSERT INTO population (nationality_id, city_id, population) VALUES (4, 0, 21699);