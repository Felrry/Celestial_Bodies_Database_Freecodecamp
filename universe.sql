--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: construction; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.construction (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.construction OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    diameter_in_light_years integer NOT NULL,
    distance_from_earth_in_light_years numeric(10,2) NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    distance_from_its_planet integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    distance_from_earth numeric(12,0),
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    solar_mass integer NOT NULL,
    constallation character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: construction; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.construction VALUES (2, 2, 1, 1);
INSERT INTO public.construction VALUES (2, 2, 4, 2);
INSERT INTO public.construction VALUES (2, 2, 4, 3);
INSERT INTO public.construction VALUES (2, 2, 5, 5);
INSERT INTO public.construction VALUES (2, 2, 5, 6);
INSERT INTO public.construction VALUES (2, 2, 5, 15);
INSERT INTO public.construction VALUES (2, 2, 6, 7);
INSERT INTO public.construction VALUES (2, 2, 6, 8);
INSERT INTO public.construction VALUES (2, 2, 6, 9);
INSERT INTO public.construction VALUES (2, 2, 6, 16);
INSERT INTO public.construction VALUES (2, 2, 6, 17);
INSERT INTO public.construction VALUES (2, 2, 7, 10);
INSERT INTO public.construction VALUES (2, 2, 7, 11);
INSERT INTO public.construction VALUES (2, 2, 7, 18);
INSERT INTO public.construction VALUES (2, 2, 7, 19);
INSERT INTO public.construction VALUES (2, 2, 8, 12);
INSERT INTO public.construction VALUES (2, 2, 8, 13);
INSERT INTO public.construction VALUES (2, 2, 8, 20);
INSERT INTO public.construction VALUES (2, 6, 9, 14);
INSERT INTO public.construction VALUES (2, 2, 5, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Spiral', 220000, 2500000.00, 'Great spiral galaxy in the constallation Andromeda, the nearest large galaxy.');
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'Spiral', 200000, 0.00, 'Large spiral system consisting of several hundred billion stars, one of which is the Sun.');
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf Galaxy', 'Irregular', 10000, 25000.00, 'Member of the Local Group of galaxies. Lies some 25,000 light-years from the solar system.');
INSERT INTO public.galaxy VALUES (4, 'Cicinus Galaxy', 'Elliptical', 1300, 13000000.00, 'Is a Seyfert galaxy in the constellation of Circinus. It is located 4 degrees below the Galactic plane.');
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Spiral', 60000, 2700000.00, 'Is a spiral galaxy 2.73 million light-years from Earth in the constellation Triangulum.');
INSERT INTO public.galaxy VALUES (6, 'Magellanic Cluds', 'Irregular', 14000, 160000.00, 'Is about 160,000 light-years from Earth. It is 14,000 light-yearsin diameter.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 384300, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 9380, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 24460, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 421600, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 670900, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 1007000, 5);
INSERT INTO public.moon VALUES (7, 'Titan', true, 1221850, 6);
INSERT INTO public.moon VALUES (8, 'Hypirion', false, 1481000, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 238020, 6);
INSERT INTO public.moon VALUES (10, 'Titania', true, 435840, 7);
INSERT INTO public.moon VALUES (11, 'Ariel', true, 191240, 7);
INSERT INTO public.moon VALUES (12, 'Triton', true, 354800, 8);
INSERT INTO public.moon VALUES (13, 'Larissa', false, 736000, 8);
INSERT INTO public.moon VALUES (14, 'Kepler-1625b-I', true, 1000000, 9);
INSERT INTO public.moon VALUES (15, 'Adrastea', false, 12871, 5);
INSERT INTO public.moon VALUES (16, 'Lapetus', true, 3561300, 6);
INSERT INTO public.moon VALUES (17, 'Mimas', true, 185520, 6);
INSERT INTO public.moon VALUES (18, 'Puck', false, 86010, 7);
INSERT INTO public.moon VALUES (19, 'Prospero', false, 16568000, 7);
INSERT INTO public.moon VALUES (20, 'Naiad', false, 48000, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial world', 0, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'Terrestrial world', 77000000, false, 2);
INSERT INTO public.planet VALUES (3, 'Vennus', 'Terrestrial world', 61000000, false, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial world', 54600000, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant', 968000000, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant', 1200000000, false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Gas giant', 3200000000, false, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Gas giant', 4700000000, false, 2);
INSERT INTO public.planet VALUES (9, 'Kepler-42b', 'Terrestrial world', 0, false, 6);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Terrestrial world', 0, false, 6);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'Gas giant', 0, false, 2);
INSERT INTO public.planet VALUES (12, 'Gliese 581d', 'Terrestrial world', 0, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, '', 2);
INSERT INTO public.star VALUES (2, 'Alpha andromedae', 4, 'Andromeda', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 2, 'Canis major', 3);
INSERT INTO public.star VALUES (4, 'Alpha circini', 2, 'Circinus', 4);
INSERT INTO public.star VALUES (5, 'Beta trianguli', 3, 'Triangulum', 5);
INSERT INTO public.star VALUES (6, 'Melnik 34', 138, 'Dorado', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: construction construction_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_pkey PRIMARY KEY (galaxy_id, star_id, planet_id, moon_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: construction construction_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: construction construction_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: construction construction_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: construction construction_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

