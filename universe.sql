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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    mass numeric NOT NULL,
    diameter integer NOT NULL,
    description text,
    life boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    width integer NOT NULL,
    density integer NOT NULL,
    volume numeric,
    log text,
    life boolean NOT NULL
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
    name character varying(40) NOT NULL,
    diameter integer NOT NULL,
    surface text,
    water boolean NOT NULL,
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
    name character varying(40) NOT NULL,
    size integer NOT NULL,
    atmosphere text,
    habitable boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    speed integer NOT NULL,
    brightness integer NOT NULL,
    volume numeric,
    log text,
    life boolean NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 4000000, 44000000, 'The supermassive black hole at the center of the Milky Way', false, 1);
INSERT INTO public.black_hole VALUES (2, 'Messier 87*', 62000000000, 120000000, 'The supermassive black hole in the center of the Messier 87 galaxy', false, 5);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 15, 10, 'A stellar-mass black hole in the Cygnus constellation', false, 1);
INSERT INTO public.black_hole VALUES (4, 'V616 Monocerotis', 9, 15, 'A stellar-mass black hole in the Monoceros constellation', false, 2);
INSERT INTO public.black_hole VALUES (5, 'A0620-00', 6.6, 15, 'A stellar-mass black hole in the constellation Monoceros', false, 3);
INSERT INTO public.black_hole VALUES (6, 'GRO J0422+32', 3.6, 20, 'A stellar-mass black hole in the constellation Monoceros', false, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 1, 300000000000000, 'Log for Milky Way', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 2, 400000000000000, 'Log for Andromeda', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 80000, 1, 200000000000000, 'Log for Triangulum', true);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 90000, 2, 250000000000000, 'Log for Centaurus A', true);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 150000, 1, 500000000000000, 'Log for Messier 87', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 110000, 1, 350000000000000, 'Log for Sombrero', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 'Rocky', true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 'Rocky', false, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 3122, 'Ice', true, 3);
INSERT INTO public.moon VALUES (4, 'Titan', 5150, 'Rocky, Ice', true, 4);
INSERT INTO public.moon VALUES (5, 'Triton', 2706, 'Ice', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5262, 'Rocky, Ice', true, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 'Rocky, Ice', true, 6);
INSERT INTO public.moon VALUES (8, 'Io', 3643, 'Rocky, Volcanic', false, 3);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, 'Ice', true, 4);
INSERT INTO public.moon VALUES (10, 'Mimas', 396, 'Rocky', false, 4);
INSERT INTO public.moon VALUES (11, 'Deimos', 12, 'Rocky', false, 2);
INSERT INTO public.moon VALUES (12, 'Charon', 1207, 'Rocky, Ice', true, 7);
INSERT INTO public.moon VALUES (13, 'Luna', 1737, 'Rocky', true, 1);
INSERT INTO public.moon VALUES (14, 'Dione', 1123, 'Rocky, Ice', true, 4);
INSERT INTO public.moon VALUES (15, 'Rhea', 1528, 'Rocky, Ice', false, 4);
INSERT INTO public.moon VALUES (16, 'Oberon', 1523, 'Rocky, Ice', false, 8);
INSERT INTO public.moon VALUES (17, 'Ariel', 1158, 'Rocky, Ice', false, 9);
INSERT INTO public.moon VALUES (18, 'Titania', 1578, 'Rocky, Ice', false, 8);
INSERT INTO public.moon VALUES (19, 'Umbriel', 1169, 'Rocky, Ice', false, 9);
INSERT INTO public.moon VALUES (20, 'Miranda', 471, 'Rocky', false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 'Nitrogen, Oxygen', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6779, 'Carbon dioxide', false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 139820, 'Hydrogen, Helium', false, 5);
INSERT INTO public.planet VALUES (4, 'Saturn', 116460, 'Hydrogen, Helium', false, 5);
INSERT INTO public.planet VALUES (5, 'Neptune', 49532, 'Hydrogen, Helium', false, 6);
INSERT INTO public.planet VALUES (6, 'Uranus', 50724, 'Hydrogen, Helium', false, 6);
INSERT INTO public.planet VALUES (7, 'Mercury', 4879, 'Oxygen, Sodium', false, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 12104, 'Carbon dioxide, Nitrogen', false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 19200, 'Unknown', true, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 15900, 'Unknown', true, 2);
INSERT INTO public.planet VALUES (11, 'HD 40307g', 22000, 'Unknown', true, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 9600, 'Unknown', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 617, 1, 1400000, 'Log for Sun', true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 712, 2, 2000000, 'Log for Sirius', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 660, 2, 1800000, 'Log for Alpha Centauri A', true, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 172, 0, 400000, 'Log for Proxima Centauri', true, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 627, 5, 2600000, 'Log for Betelgeuse', true, 2);
INSERT INTO public.star VALUES (6, 'Vega', 656, 3, 2200000, 'Log for Vega', true, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 6, true);


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
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

