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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    name character varying NOT NULL,
    description_id integer NOT NULL,
    age integer,
    random text
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_id_seq OWNER TO freecodecamp;

--
-- Name: description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    forkey integer,
    j integer,
    i integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    i integer,
    j integer
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
    name character varying NOT NULL,
    star_id integer,
    i integer,
    j integer
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
    name character varying NOT NULL,
    distance_from_earth numeric,
    distance_from_sun numeric,
    is_spherical boolean,
    age_in_millions_of_years integer,
    age_in_billions integer,
    has_life boolean,
    galaxy_id integer,
    sup integer
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES ('OP', 1, 2, NULL);
INSERT INTO public.description VALUES ('OP', 2, 2, NULL);
INSERT INTO public.description VALUES ('OP', 3, 2, NULL);
INSERT INTO public.description VALUES ('OP', 4, 2, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Hisham', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'LOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'LOL', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'COC', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'COC', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'HOO', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'HOO', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Hish', 12, 13, true, 122, 222222, true, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Hish', 12, 13, true, 122, 222222, true, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Hish', 12, 13, true, 122, 222222, true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Hish', 12, 13, true, 122, 222222, true, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Hish', 12, 13, true, 122, 222222, true, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Hish', 12, 13, true, 122, 222222, true, NULL, NULL);


--
-- Name: description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 11, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 25, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: description description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_id_key UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_forkey_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_forkey_key UNIQUE (forkey);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_forkey_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_forkey_key UNIQUE (planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_forkey_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_forkey_key UNIQUE (star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sup_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sup_key UNIQUE (sup);


--
-- Name: moon moon_forkey_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_forkey_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_forkey_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_forkey_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_forkey_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_forkey_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

