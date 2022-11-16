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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (141, 2018, 'Final', 770, 771, 4, 2);
INSERT INTO public.games VALUES (142, 2018, 'Third Place', 772, 773, 2, 0);
INSERT INTO public.games VALUES (143, 2018, 'Semi-Final', 771, 773, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Semi-Final', 770, 772, 1, 0);
INSERT INTO public.games VALUES (145, 2018, 'Quarter-Final', 771, 774, 3, 2);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 773, 775, 2, 0);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', 772, 776, 2, 1);
INSERT INTO public.games VALUES (148, 2018, 'Quarter-Final', 770, 777, 2, 0);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', 773, 778, 2, 1);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 775, 779, 1, 0);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 772, 780, 3, 2);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 776, 781, 2, 0);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 771, 782, 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 774, 783, 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 777, 784, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 770, 785, 4, 3);
INSERT INTO public.games VALUES (157, 2014, 'Final', 786, 785, 1, 0);
INSERT INTO public.games VALUES (158, 2014, 'Third Place', 787, 776, 3, 0);
INSERT INTO public.games VALUES (159, 2014, 'Semi-Final', 785, 787, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Semi-Final', 786, 776, 7, 1);
INSERT INTO public.games VALUES (161, 2014, 'Quarter-Final', 787, 788, 1, 0);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 785, 772, 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', 776, 778, 2, 1);
INSERT INTO public.games VALUES (164, 2014, 'Quarter-Final', 786, 770, 1, 0);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', 776, 789, 2, 1);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 778, 777, 2, 0);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 770, 790, 2, 0);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 786, 791, 2, 1);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 787, 781, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 788, 792, 2, 1);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 785, 779, 1, 0);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 772, 793, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (770, 'France');
INSERT INTO public.teams VALUES (771, 'Croatia');
INSERT INTO public.teams VALUES (772, 'Belgium');
INSERT INTO public.teams VALUES (773, 'England');
INSERT INTO public.teams VALUES (774, 'Russia');
INSERT INTO public.teams VALUES (775, 'Sweden');
INSERT INTO public.teams VALUES (776, 'Brazil');
INSERT INTO public.teams VALUES (777, 'Uruguay');
INSERT INTO public.teams VALUES (778, 'Colombia');
INSERT INTO public.teams VALUES (779, 'Switzerland');
INSERT INTO public.teams VALUES (780, 'Japan');
INSERT INTO public.teams VALUES (781, 'Mexico');
INSERT INTO public.teams VALUES (782, 'Denmark');
INSERT INTO public.teams VALUES (783, 'Spain');
INSERT INTO public.teams VALUES (784, 'Portugal');
INSERT INTO public.teams VALUES (785, 'Argentina');
INSERT INTO public.teams VALUES (786, 'Germany');
INSERT INTO public.teams VALUES (787, 'Netherlands');
INSERT INTO public.teams VALUES (788, 'Costa Rica');
INSERT INTO public.teams VALUES (789, 'Chile');
INSERT INTO public.teams VALUES (790, 'Nigeria');
INSERT INTO public.teams VALUES (791, 'Algeria');
INSERT INTO public.teams VALUES (792, 'Greece');
INSERT INTO public.teams VALUES (793, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 172, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 793, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--