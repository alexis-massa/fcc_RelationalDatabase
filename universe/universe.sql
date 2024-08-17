--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    diameter integer,
    age_in_millions_of_years numeric(6,1),
    description text NOT NULL,
    has_life boolean
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    diameter integer,
    age_in_millions_of_years numeric(6,1),
    description text NOT NULL,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    diameter integer,
    age_in_millions_of_years numeric(6,1),
    description text NOT NULL,
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    diameter integer,
    age_in_millions_of_years numeric(6,1),
    description text NOT NULL,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'AndromedTEST', 'The Andromeda galaxy');
INSERT INTO public.extra VALUES (2, 'Milky Waytes', 'The Milky Way galaxy');
INSERT INTO public.extra VALUES (3, 'Triangulumtest', 'The Triangulum galaxy');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2537000, 220000, NULL, 'The Andromeda galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 0, 120000, NULL, 'The Milky Way galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2723000, 50000, NULL, 'The Triangulum galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'AndromedTEST', 2537000, 220000, NULL, 'The Andromeda galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Waytes', 0, 120000, NULL, 'The Milky Way galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulumtest', 2723000, 50000, NULL, 'The Triangulum galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 123, 13456, NULL, 'Of jupiter', NULL, 1);
INSERT INTO public.moon VALUES (2, 'Io', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (3, 'Moon', 457, 678, NULL, 'Ours', NULL, 3);
INSERT INTO public.moon VALUES (4, 'Europdsa', 123, 13456, NULL, 'Of jupiter', NULL, 1);
INSERT INTO public.moon VALUES (5, 'jIo', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (7, 'Ioz', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (8, 'Ior', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (9, 'Ino', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (10, 'Iow,', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (11, 'Ioq', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (12, 'Iob', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (13, 'Ios', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (14, 'Ivo', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (15, 'Ifo', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (16, 'I  o', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (17, 'Iox', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (18, 'Ioxx', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (19, 'Ioj', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (20, 'Ioh', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (21, 'Iog', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (22, 'Iof', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (23, 'Iod', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (25, 'Ioa', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (6, 'fdsq', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);
INSERT INTO public.moon VALUES (24, 'fdsdsqq', 145678, 13456, NULL, 'Of Jupiter', NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 12760, NULL, 'The Earth', NULL, 2);
INSERT INTO public.planet VALUES (2, 'Mercury', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 778000000, 139822, NULL, 'The Jupiter', NULL, 2);
INSERT INTO public.planet VALUES (5, 'Mercury1', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (6, 'Mercury2', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (7, 'Mercury3', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (8, 'Mercury4', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (9, 'Mercury5', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (10, 'Mercury6', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (11, 'Mercury7', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (12, 'Mercury_8', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (13, 'Mercury14', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (14, 'Mercury12', 77000000, 4878, NULL, 'The Mercury', NULL, 2);
INSERT INTO public.planet VALUES (15, 'new', 778000000, 139822, NULL, 'The Jupiter', NULL, 2);
INSERT INTO public.planet VALUES (4, 'nefdsqw', 0, 12760, NULL, 'The Earth', NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Adhil', 223, NULL, NULL, 'In Andromeda ', NULL, 1);
INSERT INTO public.star VALUES (2, 'Sun', 93000000, NULL, NULL, 'Our Sun', NULL, 2);
INSERT INTO public.star VALUES (3, 'Mirach', 1253, NULL, NULL, 'In Andromeda', NULL, 1);
INSERT INTO public.star VALUES (4, 'Adhifdsql', 223, NULL, NULL, 'In Andrfdsqomeda ', NULL, 3);
INSERT INTO public.star VALUES (5, 'Sunfdq', 93000000, NULL, NULL, 'Our Suqfdsqn', NULL, 4);
INSERT INTO public.star VALUES (6, 'Mirachfdq', 1253, NULL, NULL, 'In Anfddromeda', NULL, 5);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 6, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_name_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_un UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_un UNIQUE (name);


--
-- Name: planet planet_name_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_un UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_un UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

