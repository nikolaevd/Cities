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

CREATE SEQUENCE auto_nationality_id;
ALTER SEQUENCE auto_nationality_id OWNER TO postgres;

CREATE TABLE nationality(
	id integer NOT NULL DEFAULT nextval(auto_nationality_id),
	nationality varchar(32),
	language varchar(32),
	incipience varchar(32)
	CONSTRAINT key_nationality PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );
ALTER TABLE nationality OWNER TO postgres;

INSERT INTO nationality (nationality, language, incipience) VALUES ('русские', 'русский', 'IX век');
INSERT INTO nationality (nationality, language, incipience) VALUES ('татары', 'татарский', 'VI век');
INSERT INTO nationality (nationality, language, incipience) VALUES ('украинцы', 'украинский', 'IX век');
INSERT INTO nationality (nationality, language, incipience) VALUES ('армяне', 'армянский', 'XIII век');
INSERT INTO nationality (nationality, language, incipience) VALUES ('якуты', 'якутский', 'XI век');

CREATE TABLE population(
	population integer,
	city_id integer REFERENCES cities,
	nationality_id integer REFERENCES nationality
)

WITH ( OIDS=FALSE );
ALTER TABLE operations OWNER TO postgres;

INSERT INTO population (population, language, incipience) VALUES ('русские', 0, 0);