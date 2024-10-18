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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    email text,
    indian boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    star_id integer,
    indian boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Q', 1, 'M', true);
INSERT INTO public.earth VALUES (2, 'W', 1, 'M', true);
INSERT INTO public.earth VALUES (3, 'E', 1, 'M', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Q', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (2, 'W', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (3, 'E', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (4, 'R', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (5, 'T', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (6, 'Y', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (7, 'U', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (8, 'I', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (9, 'O', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (10, 'P', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (11, 'A', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (12, 'S', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (13, 'D', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (14, 'F', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (15, 'G', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (16, 'H', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (17, 'J', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (18, 'K', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (19, 'L', 1, 'M', 0);
INSERT INTO public.galaxy VALUES (20, 'Z', 1, 'M', 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Q', 1, 'M', 0, 1);
INSERT INTO public.moon VALUES (2, 'W', 1, 'M', 0, 2);
INSERT INTO public.moon VALUES (3, 'R', 1, 'M', 0, 3);
INSERT INTO public.moon VALUES (4, 'T', 1, 'M', 0, 4);
INSERT INTO public.moon VALUES (5, 'Y', 1, 'M', 0, 5);
INSERT INTO public.moon VALUES (6, 'U', 1, 'M', 0, 6);
INSERT INTO public.moon VALUES (7, 'I', 1, 'M', 0, 7);
INSERT INTO public.moon VALUES (8, 'O', 1, 'M', 0, 8);
INSERT INTO public.moon VALUES (9, 'P', 1, 'M', 0, 9);
INSERT INTO public.moon VALUES (10, 'A', 1, 'M', 0, 10);
INSERT INTO public.moon VALUES (11, 'S', 1, 'M', 0, 11);
INSERT INTO public.moon VALUES (12, 'D', 1, 'M', 0, 12);
INSERT INTO public.moon VALUES (13, 'F', 1, 'M', 0, 13);
INSERT INTO public.moon VALUES (14, 'G', 1, 'M', 0, 14);
INSERT INTO public.moon VALUES (15, 'H', 1, 'M', 0, 15);
INSERT INTO public.moon VALUES (17, 'J', 1, 'M', 0, 17);
INSERT INTO public.moon VALUES (18, 'K', 1, 'M', 0, 18);
INSERT INTO public.moon VALUES (19, 'L', 1, 'M', 0, 19);
INSERT INTO public.moon VALUES (20, 'Z', 1, 'M', 0, 20);
INSERT INTO public.moon VALUES (16, 'n', 1, 'M', 0, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Q', 1, 'M', 0, 1, true);
INSERT INTO public.planet VALUES (2, 'W', 1, 'M', 0, 2, true);
INSERT INTO public.planet VALUES (3, 'E', 1, 'M', 0, 3, true);
INSERT INTO public.planet VALUES (4, 'R', 1, 'M', 0, 4, true);
INSERT INTO public.planet VALUES (5, 'T', 1, 'M', 0, 5, true);
INSERT INTO public.planet VALUES (6, 'Y', 1, 'M', 0, 6, true);
INSERT INTO public.planet VALUES (7, 'U', 1, 'M', 0, 7, true);
INSERT INTO public.planet VALUES (8, 'I', 1, 'M', 0, 8, true);
INSERT INTO public.planet VALUES (9, 'O', 1, 'M', 0, 9, true);
INSERT INTO public.planet VALUES (10, 'P', 1, 'M', 0, 10, true);
INSERT INTO public.planet VALUES (11, 'A', 1, 'M', 0, 11, true);
INSERT INTO public.planet VALUES (12, 'S', 1, 'M', 0, 12, true);
INSERT INTO public.planet VALUES (13, 'D', 1, 'M', 0, 13, true);
INSERT INTO public.planet VALUES (14, 'F', 1, 'M', 0, 14, true);
INSERT INTO public.planet VALUES (15, 'G', 1, 'M', 0, 15, true);
INSERT INTO public.planet VALUES (16, 'H', 1, 'M', 0, 16, true);
INSERT INTO public.planet VALUES (17, 'J', 1, 'M', 0, 17, true);
INSERT INTO public.planet VALUES (18, 'K', 1, 'M', 0, 18, true);
INSERT INTO public.planet VALUES (19, 'L', 1, 'M', 0, 19, true);
INSERT INTO public.planet VALUES (20, 'Z', 1, 'M', 0, 20, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Q', 1, 'M', 0, 1);
INSERT INTO public.star VALUES (2, '2', 1, 'M', 0, 2);
INSERT INTO public.star VALUES (3, 'E', 1, 'M', 0, 3);
INSERT INTO public.star VALUES (4, 'R', 1, 'M', 0, 4);
INSERT INTO public.star VALUES (5, 'T', 1, 'M', 0, 5);
INSERT INTO public.star VALUES (6, 'Y', 1, 'M', 0, 6);
INSERT INTO public.star VALUES (7, 'U', 1, 'M', 0, 7);
INSERT INTO public.star VALUES (8, 'I', 1, 'M', 0, 8);
INSERT INTO public.star VALUES (9, 'O', 1, 'M', 0, 9);
INSERT INTO public.star VALUES (10, 'P', 1, 'M', 0, 10);
INSERT INTO public.star VALUES (11, 'A', 1, 'M', 0, 11);
INSERT INTO public.star VALUES (12, 'S', 1, 'M', 0, 12);
INSERT INTO public.star VALUES (13, 'D', 1, 'M', 0, 13);
INSERT INTO public.star VALUES (14, 'F', 1, 'M', 0, 14);
INSERT INTO public.star VALUES (15, 'G', 1, 'M', 0, 15);
INSERT INTO public.star VALUES (16, 'H', 1, 'M', 0, 16);
INSERT INTO public.star VALUES (17, 'J', 1, 'M', 0, 17);
INSERT INTO public.star VALUES (18, 'K', 1, 'M', 0, 18);
INSERT INTO public.star VALUES (19, 'L', 1, 'M', 0, 19);
INSERT INTO public.star VALUES (20, 'Z', 1, 'M', 0, 20);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

