
CREATE DATABASE universe;


CREATE TABLE galaxy(
	galaxy_id SERIAL PRIMARY KEY NOT NULL, 
	name VARCHAR(30) NOT NULL UNIQUE,
	description VARCHAR(60), 
	has_life BOOLEAN, 
	is_spherical BOOLEAN, 
	age_in_millions_of_years NUMERIC(7,2),
	galaxy_types TEXT,
	distance_from_earth INT,
	num_of_stars INT
	);


INSERT INTO galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, galaxy_types, distance_from_earth, num_of_stars)
VALUES ('Canis Major Dwarf', 'Dwarf Galaxy', TRUE, TRUE, 12565.10, 'Dwarf', 0, 100000);

INSERT INTO galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, galaxy_types, distance_from_earth, num_of_stars)
VALUES ('Milky Way', 'Spiral Galaxy', TRUE, TRUE, 13610.23, 'Spiral', 25000, 100000);

INSERT INTO galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, galaxy_types, distance_from_earth, num_of_stars)
VALUES ('Draco II', 'Irregular Galaxy', TRUE, TRUE, 10500.49, 'Irregular', 70100, 100000);

INSERT INTO galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, galaxy_types, distance_from_earth, num_of_stars)
VALUES ('Tucana III', 'Dwarf Galaxy', TRUE, TRUE, 9001.50, 'Dwarf', 74700, 100000);

INSERT INTO galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, galaxy_types, distance_from_earth, num_of_stars)
VALUES ('Segue 1', 'Elliptical Galaxy', TRUE, TRUE, 8250.32, 'Elliptical', 75000, 100000);

INSERT INTO galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, galaxy_types, distance_from_earth, num_of_stars)
VALUES ('Hydrus I', 'Barred Spiral Galaxy', TRUE, TRUE, 5000.90, 'Barred', 90000, 100000);


CREATE TABLE star(
	star_id SERIAL PRIMARY KEY NOT NULL, 
	galaxy_id INT REFERENCES galaxy(galaxy_id) NOT NULL,
	name VARCHAR(30) NOT NULL UNIQUE,
	description VARCHAR(60), 
	has_life BOOLEAN, 
	is_spherical BOOLEAN, 
	age_in_millions_of_years NUMERIC(7,2),
	star_types TEXT,
	distance_from_earth INT,
	num_of_planets INT);

INSERT INTO star (star_id, galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_types, distance_from_earth, num_of_planets)
VALUES (1, 1, 'Sun', 'Main Sequence Star', FALSE, TRUE, 2345.00, 'G-type', 0, 8);

INSERT INTO star (star_id, galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_types, distance_from_earth, num_of_planets)
VALUES (2, 1, 'Alpha Centauri B', 'Companion star to Alpha Centauri A', FALSE, TRUE, 4500.00, 'K1V', 4, 1);

INSERT INTO star (star_id, galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_types, distance_from_earth, num_of_planets)
VALUES (3, 2, 'Proxima Centauri', 'Closest known star to the Sun', FALSE, TRUE, 4700.00, 'M5.5Ve', 4, 1);

INSERT INTO star (star_id, galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_types, distance_from_earth, num_of_planets)
VALUES (4, 3, 'Betelgeuse', 'Bright red supergiant in Orion', FALSE, TRUE, 8500.00, 'M1-2Ia-Iab', 642, 0);

INSERT INTO star (star_id, galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_types, distance_from_earth, num_of_planets)
VALUES (5, 4, 'Sirius A', 'Brightest star in the night sky', FALSE, TRUE, 242.00, 'A1V', 8.6, 0);

INSERT INTO star (star_id, galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_types, distance_from_earth, num_of_planets)
VALUES (6, 5, 'Vega', 'Brightest star in the constellation Lyra', FALSE, TRUE, 455.00, 'A0V', 25.0, 0);

CREATE TABLE planet(
	planet_id SERIAL PRIMARY KEY NOT NULL, 
	star_id INT REFERENCES star(star_id) NOT NULL,
	name VARCHAR(30) NOT NULL UNIQUE,
	description VARCHAR(60), 
	has_life BOOLEAN, 
	is_spherical BOOLEAN, 
	age_in_millions_of_years NUMERIC(7,2),
	planet_types TEXT,
	distance_from_earth INT,
	num_of_moons INT);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (1, 1, 'Proxima Centauri b', 'Closest known exoplanet to Proxima Centauri', FALSE, FALSE, 4.23, 'Terrestrial', 4, 0);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (2, 1, 'Alpha Centauri Bb', 'Exoplanet orbiting Alpha Centauri B', FALSE, FALSE, 6.30, 'Terrestrial', 4, 0);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (3, 2, 'Kepler-452b', 'Earth-like exoplanet in the habitable zone of Kepler-452', TRUE, TRUE, 1400.00, 'Terrestrial', 1400, 0);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (4, 3, 'Jupiter', 'Largest planet in the Solar System', FALSE, TRUE, 4600.00, 'Gas Giant', 628, 79);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (5, 4, 'Mars', 'Red planet known for its polar ice caps and dusty surface', FALSE, TRUE, 4500.00, 'Terrestrial', 225, 2);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (6, 5, 'Saturn', 'Second-largest planet and known for its rings', FALSE, TRUE, 4600.00, 'Gas Giant', 746, 82);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (7, 6, 'Neptune', 'Farthest planet from the Sun in the Solar System', FALSE, TRUE, 4600.00, 'Ice Giant', 4330, 14);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (8, 3, 'Earth', 'The third planet from the Sun and our home', TRUE, TRUE, 4500.00, 'Terrestrial', 1, 1);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (9, 2, 'Uranus', 'Seventh planet from the Sun known for its extreme axial tilt', FALSE, TRUE, 4600.00, 'Ice Giant', 1784, 27);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (10, 3, 'Mercury', 'Closest planet to the Sun and smallest in the Solar System', FALSE, TRUE, 4600.00, 'Terrestrial', 92, 0);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (11, 6, 'Venus', 'Second planet from the Sun, known for greenhouse effect', FALSE, TRUE, 4600.00, 'Terrestrial', 0.72, 0);

INSERT INTO planet (planet_id, star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, distance_from_earth, num_of_moons)
VALUES (12, 1, 'Pluto', 'Former ninth planet, a dwarf planet in the Kuiper Belt', FALSE, TRUE, 4500.00, 'Dwarf Planet', 5906, 5);


CREATE TABLE moon(
	moon_id SERIAL PRIMARY KEY NOT NULL, 
	planet_id INT REFERENCES planet(planet_id) NOT NULL,
	name VARCHAR(30) NOT NULL UNIQUE,
	description VARCHAR(60), 
	has_life BOOLEAN, 
	is_spherical BOOLEAN, 
	age_in_millions_of_years NUMERIC(7,2),
	distance_from_earth INT,
	num_of_astronaut_visits INT);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (1, 8, 'Moon', 'Earth''s only natural satellite', FALSE, TRUE, 4500.00, 1, 6);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (2, 4, 'Io', 'Volcanically active moon of Jupiter', FALSE, TRUE, 4600.00, 628, 10);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (3, 4, 'Europa', 'Moon of Jupiter with a subsurface ocean', FALSE, TRUE, 4600.00, 628, 3);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (4, 4, 'Ganymede', 'Largest moon in the Solar System, orbiting Jupiter', FALSE, TRUE, 4600.00, 628, 2);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (5, 4, 'Callisto', 'Outermost of the Galilean moons of Jupiter', FALSE, TRUE, 4600.00, 628, 1);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (6, 6, 'Titan', 'Largest moon of Saturn and has a dense atmosphere', FALSE, TRUE, 4600.00, 746, 1);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (7, 6, 'Enceladus', 'Moon of Saturn with geysers of water vapor', FALSE, TRUE, 4600.00, 746, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (8, 6, 'Mimas', 'Moon of Saturn known for its large impact crater', FALSE, TRUE, 4600.00, 746, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (9, 7, 'Triton', 'Largest moon of Neptune and has a retrograde orbit', FALSE, TRUE, 4600.00, 4330, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (10, 9, 'Titania', 'Largest moon of Uranus and has a young surface', FALSE, TRUE, 4600.00, 1784, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (11, 9, 'Oberon', 'Second-largest moon of Uranus and heavily cratered', FALSE, TRUE, 4600.00, 1784, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (12, 10, 'Mercury', 'Does not have any moons', FALSE, TRUE, 4600.00, 123, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (13, 8, 'Charon', 'Largest Pluto moon, orbits in a binary system with Pluto', FALSE, TRUE, 4.0, 5900, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (14, 5, 'Deimos', 'Smaller moon of Mars, irregularly shaped', FALSE, TRUE, 4.3, 400, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (15, 6, 'Phoebe', 'Moon of Saturn, orbits retrograde and at a large distance', FALSE, TRUE, 4.6, 12980, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (16, 8, 'Luna', 'Earth''s only natural satellite, known for lunar phases', FALSE, TRUE, 4.5, 384400, 12);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (17, 2, 'Miranda', 'Moon of Uranus, known for varied surface features', FALSE, TRUE, 4.4, 12940, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (18, 2, 'Rhea', 'Moon of Saturn, second-largest after Titan', FALSE, TRUE, 4.3, 52700, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (19, 3, 'Malfoy', 'Moon of Uranus, composed of ice and rocky material', FALSE, TRUE, 4.5, 14300, 0);

INSERT INTO moon (moon_id, planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, num_of_astronaut_visits)
VALUES (20, 4, 'Hyperion', 'Moon of Saturn, known for chaotic rotation', FALSE, TRUE, 4.4, 14810, 0);

-- haven't created the table below, NOT SURE WHAT THIS TABLE SHOULD BE!!!!!!!!
CREATE TABLE solar_system(
	name VARCHAR(15) UNIQUE NOT NULL,
	size NUMERIC(7,2) NOT NULL,
	num_of_moons INT,
	has_life BOOLEAN,
	distance_from_sun_au INT
	solar_system_id INT PRIMARY KEY
);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Mercury', 0.055, 0, false, 0);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Venus', 0.815, 0, false, 0);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Earth', 1.000, 1, true, 1);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Mars', 0.107, 2, false, 1);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Jupiter', 317.8, 79, false, 5);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Saturn', 95.2, 82, false, 10);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Uranus', 14.6, 27, false, 20);

INSERT INTO solar_system (name, size, num_of_moons, has_life, distance_from_sun_au)
VALUES ('Neptune', 17.2, 14, false, 30);


WITH numbered_rows AS (
	SELECT name,
			size,
			num_of_moons,
			has_life,
			distance_from_sun_au,
			ROW_NUMBER() OVER (ORDER BY name) AS solar_system_id
	FROM solar_system
)

UPDATE solar_system s
SET solar_system_id= nr.solar_system_id
FROM numbered_rows nr
WHERE s.name = nr.name
