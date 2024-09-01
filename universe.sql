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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    planet_id integer NOT NULL,
    dummy_id integer NOT NULL,
    unique_col integer,
    name character varying(20)
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy2 (
    name character varying(20),
    age integer NOT NULL,
    height integer NOT NULL,
    dummy2_id integer NOT NULL
);


ALTER TABLE public.dummy2 OWNER TO freecodecamp;

--
-- Name: dummy2_dummy2_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy2_dummy2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy2_dummy2_id_seq OWNER TO freecodecamp;

--
-- Name: dummy2_dummy2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy2_dummy2_id_seq OWNED BY public.dummy2.dummy2_id;


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distance integer,
    description text,
    is_far boolean NOT NULL
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
    name character varying(20),
    planet_id integer NOT NULL,
    one integer,
    two integer,
    three integer
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
    name character varying(20),
    age integer,
    is_big boolean,
    radius numeric(10,2),
    star_id integer NOT NULL
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
    name character varying(20),
    galaxy_id integer NOT NULL,
    three integer,
    two integer,
    one integer
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
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_dummy_id_seq'::regclass);


--
-- Name: dummy2 dummy2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy2 ALTER COLUMN dummy2_id SET DEFAULT nextval('public.dummy2_dummy2_id_seq'::regclass);


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
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 1, NULL, NULL);
INSERT INTO public.dummy VALUES (2, 2, NULL, NULL);
INSERT INTO public.dummy VALUES (3, 3, NULL, NULL);
INSERT INTO public.dummy VALUES (4, 4, NULL, NULL);
INSERT INTO public.dummy VALUES (5, 5, NULL, NULL);
INSERT INTO public.dummy VALUES (6, 6, NULL, NULL);
INSERT INTO public.dummy VALUES (7, 7, NULL, NULL);


--
-- Data for Name: dummy2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy2 VALUES (NULL, 1, 1, 1);
INSERT INTO public.dummy2 VALUES (NULL, 2, 2, 2);
INSERT INTO public.dummy2 VALUES (NULL, 3, 3, 3);
INSERT INTO public.dummy2 VALUES (NULL, 4, 4, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gal1', 11, 'dummy', true);
INSERT INTO public.galaxy VALUES (2, 'gal2', 12, 'dummy', true);
INSERT INTO public.galaxy VALUES (3, 'gal3', 13, 'dummy', true);
INSERT INTO public.galaxy VALUES (4, 'gal4', 14, 'dummy', true);
INSERT INTO public.galaxy VALUES (5, 'gal5', 15, 'dummy', true);
INSERT INTO public.galaxy VALUES (6, 'gal6', 16, 'dummy', true);
INSERT INTO public.galaxy VALUES (7, 'gal7', 17, 'dummy', true);
INSERT INTO public.galaxy VALUES (8, 'gal8', 18, 'dummy', true);
INSERT INTO public.galaxy VALUES (9, 'gal9', 19, 'dummy', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon2', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'moon21', 2, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'plan1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'plan2', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'plan3', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'plan4', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'plan5', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'plan6', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'plan7', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'plan8', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'plan9', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'plan10', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'plan11', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'plan12', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'plan13', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'plan14', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, 'plan15', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (16, 'plan16', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'plan17', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (18, 'plan18', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 'plan19', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (20, 'plan20', NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 3, NULL, NULL, NULL);


--
-- Name: dummy2_dummy2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy2_dummy2_id_seq', 4, true);


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_dummy_id_seq', 7, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: dummy2 dummy2_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy2
    ADD CONSTRAINT dummy2_name_key UNIQUE (name);


--
-- Name: dummy2 dummy2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy2
    ADD CONSTRAINT dummy2_pkey PRIMARY KEY (dummy2_id);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


--
-- Name: dummy dummy_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_unique_col_key UNIQUE (unique_col);


--
-- Name: galaxy galaxy_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_key UNIQUE (distance);


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
-- Name: dummy dummy_plannn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_plannn_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

