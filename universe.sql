--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: dust; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dust (
    dust_id integer NOT NULL,
    name character varying(30) NOT NULL,
    relation boolean NOT NULL
);


ALTER TABLE public.dust OWNER TO freecodecamp;

--
-- Name: dust_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dust_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dust_dust_id_seq OWNER TO freecodecamp;

--
-- Name: dust_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dust_dust_id_seq OWNED BY public.dust.dust_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size numeric(5,1),
    type character varying(60) NOT NULL,
    arrived boolean
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
    category character varying(30),
    imitable boolean,
    planet_id integer NOT NULL
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
    name character varying(30),
    significance integer,
    warmed boolean NOT NULL,
    star_id integer,
    CONSTRAINT plannet_significance_check CHECK ((significance <= 10))
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: plannet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plannet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plannet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: plannet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.plannet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    cuteness integer,
    approach text,
    galaxy_id integer NOT NULL
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
-- Name: dust dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dust ALTER COLUMN dust_id SET DEFAULT nextval('public.dust_dust_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.plannet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dust; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dust VALUES (1, 'A', false);
INSERT INTO public.dust VALUES (2, 'B', false);
INSERT INTO public.dust VALUES (3, 'C', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'family', 500.0, 'crowd', true);
INSERT INTO public.galaxy VALUES (2, 'church', 800.0, 'pleased', false);
INSERT INTO public.galaxy VALUES (3, 'work', 300.0, 'bottomline', true);
INSERT INTO public.galaxy VALUES (4, 'friends', 30.4, 'isolated', false);
INSERT INTO public.galaxy VALUES (5, 'authors', 1200.0, 'knoeledgable', false);
INSERT INTO public.galaxy VALUES (6, 'helen', 430.0, 'confused', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'do more for others', 'choice', true, 9);
INSERT INTO public.moon VALUES (2, 'think one step further', 'force', true, 8);
INSERT INTO public.moon VALUES (3, 'determine reason people behave', 'think', true, 10);
INSERT INTO public.moon VALUES (4, 'focus and listen', 'choice', true, 6);
INSERT INTO public.moon VALUES (5, 'focus at the middle of 2 eyes', 'force', true, 4);
INSERT INTO public.moon VALUES (6, 'keep body tidy and clean', 'force', false, 10);
INSERT INTO public.moon VALUES (7, 'keep an eye on energy level', 'choice', true, 3);
INSERT INTO public.moon VALUES (8, 'practice one thing a week', 'force', true, 5);
INSERT INTO public.moon VALUES (9, 'express ideas thoroughly', 'force', true, 8);
INSERT INTO public.moon VALUES (10, 'reflect note on improvement', 'choice', true, 12);
INSERT INTO public.moon VALUES (11, 'complaint less gratitude more', 'choice', true, 9);
INSERT INTO public.moon VALUES (12, 'simple is beautiful', 'choice', true, 1);
INSERT INTO public.moon VALUES (13, 'foster progress with ai', 'choice', true, 2);
INSERT INTO public.moon VALUES (14, 'elevate judgement sense', 'force', true, 4);
INSERT INTO public.moon VALUES (15, 'fear of god', 'obligation', true, 6);
INSERT INTO public.moon VALUES (16, 'love people like myself', 'force', true, 12);
INSERT INTO public.moon VALUES (17, 'be gentle and kind', 'force', true, 3);
INSERT INTO public.moon VALUES (18, 'hold 3 sec b4 speak', 'force', false, 5);
INSERT INTO public.moon VALUES (19, 'surpass expectation', 'choice', false, 9);
INSERT INTO public.moon VALUES (20, 'result packed in stories', 'choice', true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'waited me for grad pic', 7, true, 5);
INSERT INTO public.planet VALUES (2, 'prepare my sandwitches', 7, true, 2);
INSERT INTO public.planet VALUES (3, 'pay attention on me', 7, false, 6);
INSERT INTO public.planet VALUES (4, 'manage discipline of sparks3', 8, true, 4);
INSERT INTO public.planet VALUES (5, 'beautify out ppt', 7, true, 6);
INSERT INTO public.planet VALUES (6, 'distract conversation', 6, false, 2);
INSERT INTO public.planet VALUES (7, 'strong quarrel, not listening', 6, false, 1);
INSERT INTO public.planet VALUES (8, 'working on caring people', 10, false, 3);
INSERT INTO public.planet VALUES (9, 'cards and cakes', 7, true, 3);
INSERT INTO public.planet VALUES (10, 'reminds me the good', 8, false, 6);
INSERT INTO public.planet VALUES (11, 'jog invitation', 6, false, 1);
INSERT INTO public.planet VALUES (12, 'emoji on reels', 7, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'harriet', 6, 'passion', 1);
INSERT INTO public.star VALUES (2, 'vikki', 6, 'hardworking', 1);
INSERT INTO public.star VALUES (3, 'praise', 8, 'cohesion', 2);
INSERT INTO public.star VALUES (4, 'tang ching', 8, 'kind', 2);
INSERT INTO public.star VALUES (5, 'melody', 8, 'gentle', 4);
INSERT INTO public.star VALUES (6, 'tam', 7, 'target-oriented', 2);


--
-- Name: dust_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dust_dust_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: plannet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plannet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dust dust_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dust
    ADD CONSTRAINT dust_name_key UNIQUE (name);


--
-- Name: dust dust_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dust
    ADD CONSTRAINT dust_pkey PRIMARY KEY (dust_id);


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
-- Name: planet plannet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_name_key UNIQUE (name);


--
-- Name: planet plannet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_pkey PRIMARY KEY (planet_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet plannet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

