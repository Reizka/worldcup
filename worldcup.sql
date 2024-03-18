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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(60) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 25, 4, 26, 2, 2018);
INSERT INTO public.games VALUES (2, 'Third Place', 27, 2, 28, 0, 2018);
INSERT INTO public.games VALUES (3, 'Semi-Final', 26, 2, 28, 1, 2018);
INSERT INTO public.games VALUES (4, 'Semi-Final', 25, 1, 27, 0, 2018);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 26, 3, 29, 2, 2018);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 28, 2, 30, 0, 2018);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 27, 2, 31, 1, 2018);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 25, 2, 32, 0, 2018);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 28, 2, 33, 1, 2018);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 30, 1, 34, 0, 2018);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 27, 3, 35, 2, 2018);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 31, 2, 36, 0, 2018);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 26, 2, 37, 1, 2018);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 29, 2, 38, 1, 2018);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 32, 2, 39, 1, 2018);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 25, 4, 40, 3, 2018);
INSERT INTO public.games VALUES (17, 'Final', 41, 1, 40, 0, 2014);
INSERT INTO public.games VALUES (18, 'Third Place', 42, 3, 31, 0, 2014);
INSERT INTO public.games VALUES (19, 'Semi-Final', 40, 1, 42, 0, 2014);
INSERT INTO public.games VALUES (20, 'Semi-Final', 41, 7, 31, 1, 2014);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 42, 1, 43, 0, 2014);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 40, 1, 27, 0, 2014);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 31, 2, 33, 1, 2014);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 41, 1, 25, 0, 2014);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 31, 2, 44, 1, 2014);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 33, 2, 32, 0, 2014);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 25, 2, 45, 0, 2014);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 41, 2, 46, 1, 2014);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 42, 2, 36, 1, 2014);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 43, 2, 47, 1, 2014);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 40, 1, 34, 0, 2014);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 27, 2, 48, 1, 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 25);
INSERT INTO public.teams VALUES ('Croatia', 26);
INSERT INTO public.teams VALUES ('Belgium', 27);
INSERT INTO public.teams VALUES ('England', 28);
INSERT INTO public.teams VALUES ('Russia', 29);
INSERT INTO public.teams VALUES ('Sweden', 30);
INSERT INTO public.teams VALUES ('Brazil', 31);
INSERT INTO public.teams VALUES ('Uruguay', 32);
INSERT INTO public.teams VALUES ('Colombia', 33);
INSERT INTO public.teams VALUES ('Switzerland', 34);
INSERT INTO public.teams VALUES ('Japan', 35);
INSERT INTO public.teams VALUES ('Mexico', 36);
INSERT INTO public.teams VALUES ('Denmark', 37);
INSERT INTO public.teams VALUES ('Spain', 38);
INSERT INTO public.teams VALUES ('Portugal', 39);
INSERT INTO public.teams VALUES ('Argentina', 40);
INSERT INTO public.teams VALUES ('Germany', 41);
INSERT INTO public.teams VALUES ('Netherlands', 42);
INSERT INTO public.teams VALUES ('Costa Rica', 43);
INSERT INTO public.teams VALUES ('Chile', 44);
INSERT INTO public.teams VALUES ('Nigeria', 45);
INSERT INTO public.teams VALUES ('Algeria', 46);
INSERT INTO public.teams VALUES ('Greece', 47);
INSERT INTO public.teams VALUES ('United States', 48);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_team_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team_name UNIQUE (name);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

