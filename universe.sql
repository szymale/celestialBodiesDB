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
    name character varying(32),
    stars_quantity integer,
    story text,
    isbig boolean NOT NULL
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
    name character varying(32),
    planet_id integer NOT NULL,
    has_ring boolean,
    history character varying(512)
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
    name character varying(32),
    star_id integer NOT NULL,
    diameter numeric(4,1),
    isinhabitet boolean
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
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(32)
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_id_seq OWNED BY public.satelite.id;


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(32),
    galaxy_id integer NOT NULL,
    planets_quantity integer,
    hasplanets boolean
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
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: satelite id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN id SET DEFAULT nextval('public.satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'bull', 1, 'big bull', true);
INSERT INTO public.galaxy VALUES (2, 'scorpio', 5, 'dangerous scorpio', false);
INSERT INTO public.galaxy VALUES (3, 'Mice', 0, 'small browmnm bear', true);
INSERT INTO public.galaxy VALUES (4, 'casiopeia', 90, 'big one', true);
INSERT INTO public.galaxy VALUES (5, 'Bang', 6, 'spherical', false);
INSERT INTO public.galaxy VALUES (6, 'Crab', 9, 'nothing special', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (3, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (4, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (5, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (6, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (7, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (8, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (9, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (10, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (11, '1', 3, true, 'none');
INSERT INTO public.moon VALUES (12, '1323', 4, true, 'none');
INSERT INTO public.moon VALUES (13, '13254323', 4, true, 'none');
INSERT INTO public.moon VALUES (14, '13254323', 4, true, 'none');
INSERT INTO public.moon VALUES (15, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (16, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (17, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (18, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (19, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (20, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (21, '13254323', 4, false, 'none');
INSERT INTO public.moon VALUES (22, '13254323', 4, false, 'none');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'a1', 1, 3.4, false);
INSERT INTO public.planet VALUES (4, 'a2', 1, 4.5, false);
INSERT INTO public.planet VALUES (5, 'a3', 2, 2.3, false);
INSERT INTO public.planet VALUES (6, 'a61', 1, 3.4, false);
INSERT INTO public.planet VALUES (7, 'a52', 1, 4.5, false);
INSERT INTO public.planet VALUES (8, 'a6', 2, 2.3, false);
INSERT INTO public.planet VALUES (9, 'a231', 1, 3.4, false);
INSERT INTO public.planet VALUES (10, 'a562', 1, 4.5, false);
INSERT INTO public.planet VALUES (11, 'a678', 2, 2.3, false);
INSERT INTO public.planet VALUES (12, 'a25561', 1, 3.4, false);
INSERT INTO public.planet VALUES (13, 'a56442', 1, 4.5, false);
INSERT INTO public.planet VALUES (14, 'a6008', 2, 2.3, false);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 2, NULL);
INSERT INTO public.satelite VALUES (2, 3, NULL);
INSERT INTO public.satelite VALUES (3, 4, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Oreo', 1, 2, true);
INSERT INTO public.star VALUES (2, 'Mars', 2, 3, true);
INSERT INTO public.star VALUES (3, 'Uranus', 3, 3, true);
INSERT INTO public.star VALUES (4, 'Adam', 4, 2, true);
INSERT INTO public.star VALUES (5, 'Eve', 5, 8, true);
INSERT INTO public.star VALUES (6, 'Bob', 6, 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_id_seq', 1, false);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satelite pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT pk PRIMARY KEY (satelite_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelite poi; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT poi UNIQUE (id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet u; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u UNIQUE (name);


--
-- Name: galaxy unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_key UNIQUE (name);


--
-- Name: moon uss; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uss UNIQUE (moon_id);


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

