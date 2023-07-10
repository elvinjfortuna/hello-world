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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying NOT NULL,
    light_years integer,
    description text,
    age_in_millions_of_years numeric,
    name character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying,
    threat boolean,
    meteor_name character varying NOT NULL
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    circum_km integer,
    description text,
    color character varying,
    planet_name character varying,
    moon_name character varying NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying NOT NULL,
    latin_name text,
    description text,
    star_name character varying,
    name character varying
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying NOT NULL,
    age numeric,
    dead boolean,
    description text,
    galaxy_name character varying,
    name character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Medina', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Karina', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Blaine', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Menta', NULL, NULL, NULL, NULL);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, NULL, NULL, 'Astrid');
INSERT INTO public.meteor VALUES (2, NULL, NULL, 'Bob');
INSERT INTO public.meteor VALUES (3, NULL, NULL, 'Boinky');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, 'Earth', 'Moon');
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, NULL, '2nd');
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, NULL, '3rd');
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, NULL, '4th');
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, NULL, '5th');
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, NULL, '6th');
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, NULL, 'Billy');
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, NULL, 'Bob');
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, NULL, 'Zoe');
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, NULL, 'Boey');
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, NULL, 'SCreechy Cat');
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, NULL, 'Boyo');
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, NULL, 'AJ');
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, NULL, 'Nico');
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, NULL, 'Elvin');
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, NULL, 'Hoebag');
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, NULL, 'Douchebag');
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, NULL, 'Yokay');
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, NULL, 'I bet');
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, NULL, 'Yo mama');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, 'Little Dipper', NULL);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Saturn', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Venus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Pharos', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Phylos', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Plinko', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Carl', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Anodaone', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Andanodaone', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Cheetos', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Miguel', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Little Dipper', NULL, NULL, NULL, 'Milky Way', NULL);
INSERT INTO public.star VALUES (2, 'Big Dipper', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Minos', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Phinx', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Uranus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Urk', NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_u UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_name_u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_u UNIQUE (meteor_name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_name_u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_u UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_u UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_u UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon fk_planet_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_name FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

