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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user2', 0, 0);
INSERT INTO public.users VALUES (3, 'test', 0, 0);
INSERT INTO public.users VALUES (4, 'user_1724132759954', 0, 0);
INSERT INTO public.users VALUES (7, 'user_1724132759953', 0, 0);
INSERT INTO public.users VALUES (13, 'aaaaaaaaaaaaaaaaaaaaaa', 0, 0);
INSERT INTO public.users VALUES (14, 'user_1724132841233', 0, 0);
INSERT INTO public.users VALUES (17, 'user_1724132841232', 0, 0);
INSERT INTO public.users VALUES (23, 'user_1724132896472', 0, 0);
INSERT INTO public.users VALUES (26, 'user_1724132896471', 0, 0);
INSERT INTO public.users VALUES (32, 'user_1724132940363', 0, 0);
INSERT INTO public.users VALUES (35, 'user_1724132940362', 0, 0);
INSERT INTO public.users VALUES (41, 'user_1724133004889', 0, 0);
INSERT INTO public.users VALUES (44, 'user_1724133004888', 0, 0);
INSERT INTO public.users VALUES (50, 'user_1724133019312', 0, 0);
INSERT INTO public.users VALUES (53, 'user_1724133019311', 0, 0);
INSERT INTO public.users VALUES (60, 'user_1724133163541', 0, 0);
INSERT INTO public.users VALUES (61, 'user_1724133163540', 0, 0);
INSERT INTO public.users VALUES (1, 'user1', 1, 1);
INSERT INTO public.users VALUES (63, 'user_1724133278904', 1, 501);
INSERT INTO public.users VALUES (62, 'user_1724133278905', 1, 501);
INSERT INTO public.users VALUES (65, 'user_1724133305776', 1, 443);
INSERT INTO public.users VALUES (64, 'user_1724133305777', 1, 32);
INSERT INTO public.users VALUES (67, 'user_1724133327786', 1, 211);
INSERT INTO public.users VALUES (66, 'user_1724133327787', 1, 455);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 67, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

