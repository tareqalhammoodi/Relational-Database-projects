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
-- Name: color; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.color (
    color_id integer NOT NULL,
    name character varying(30) NOT NULL,
    uniquecode character varying(30) NOT NULL
);


ALTER TABLE public.color OWNER TO freecodecamp;

--
-- Name: color_element_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.color_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_element_id_seq OWNER TO freecodecamp;

--
-- Name: color_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.color_element_id_seq OWNED BY public.color.color_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer
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
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer
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
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer
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
-- Name: color color_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color ALTER COLUMN color_id SET DEFAULT nextval('public.color_element_id_seq'::regclass);


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
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.color VALUES (1, 'red', '#880808');
INSERT INTO public.color VALUES (2, 'blue', '#00FFFF');
INSERT INTO public.color VALUES (3, 'orange', '#FFBF00');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 2, 'Triangulum Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 3, 'Large Magellanic Cloud', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 4, 'Black Eye Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 5, 'Pinwheel Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 6, 'Cartwheel Galaxy', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 1, 'Phobos', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 1, 'Deimos', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 2, 'Ganymede', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 2, 'Callisto', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 2, 'Europa', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 3, 'Io', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 3, 'Titan', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 3, 'Enceladus', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 4, 'Rhea', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 4, 'Mimas', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 4, 'Triton', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 5, 'Nereid', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 5, 'Charon', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 5, 'Hydra', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 6, 'Nix', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 6, 'Oberon', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 6, 'Titania', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 7, 'Ariel', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 7, 'Miranda', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'Mercury', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 1, 2, 'Venus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 2, 3, 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 2, 4, 'Mars', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 3, 5, 'Planet 2', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 3, 6, 'Jupiter', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 4, 7, 'Uranus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 4, 8, 'Neptune', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 5, 9, 'Saturn', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 5, 10, 'Pluto', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 6, 11, 'Haumea', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 6, 12, 'Ceres', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'Sun', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 2, 2, 'Delta Trianguli', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 3, 3, 'R136a1', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 4, 4, 'NGC 4826 UDF-082935.6+214002.4', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 5, 5, 'NGC 5457 UDF-060241.4+562739.7', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 6, 6, 'ESO 350-40', NULL, NULL, NULL, NULL);


--
-- Name: color_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.color_element_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: color color_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_name_key UNIQUE (name);


--
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (color_id);


--
-- Name: color color_uniquecode_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_uniquecode_key UNIQUE (uniquecode);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--