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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, NULL);
INSERT INTO public.games VALUES (2, 894, NULL);
INSERT INTO public.games VALUES (3, 749, NULL);
INSERT INTO public.games VALUES (4, 723, NULL);
INSERT INTO public.games VALUES (5, 955, NULL);
INSERT INTO public.games VALUES (6, 843, NULL);
INSERT INTO public.games VALUES (7, 341, NULL);
INSERT INTO public.games VALUES (8, 677, NULL);
INSERT INTO public.games VALUES (9, 6, 1);
INSERT INTO public.games VALUES (10, 2, 1);
INSERT INTO public.games VALUES (11, 774, 2);
INSERT INTO public.games VALUES (12, 626, 2);
INSERT INTO public.games VALUES (13, 75, 3);
INSERT INTO public.games VALUES (14, 55, 3);
INSERT INTO public.games VALUES (15, 82, 2);
INSERT INTO public.games VALUES (16, 763, 2);
INSERT INTO public.games VALUES (17, 440, 2);
INSERT INTO public.games VALUES (18, 919, 4);
INSERT INTO public.games VALUES (19, 622, 4);
INSERT INTO public.games VALUES (20, 77, 5);
INSERT INTO public.games VALUES (21, 68, 5);
INSERT INTO public.games VALUES (22, 284, 4);
INSERT INTO public.games VALUES (23, 302, 4);
INSERT INTO public.games VALUES (24, 697, 4);
INSERT INTO public.games VALUES (25, 2, 1);
INSERT INTO public.games VALUES (26, 418, 6);
INSERT INTO public.games VALUES (27, 173, 6);
INSERT INTO public.games VALUES (28, 518, 7);
INSERT INTO public.games VALUES (29, 212, 7);
INSERT INTO public.games VALUES (30, 151, 6);
INSERT INTO public.games VALUES (31, 580, 6);
INSERT INTO public.games VALUES (32, 412, 6);
INSERT INTO public.games VALUES (33, 5, 8);
INSERT INTO public.games VALUES (34, 2, 8);
INSERT INTO public.games VALUES (35, 2, 8);
INSERT INTO public.games VALUES (36, 2, 8);
INSERT INTO public.games VALUES (37, 138, 9);
INSERT INTO public.games VALUES (38, 678, 9);
INSERT INTO public.games VALUES (39, 287, 10);
INSERT INTO public.games VALUES (40, 856, 10);
INSERT INTO public.games VALUES (41, 227, 9);
INSERT INTO public.games VALUES (42, 180, 9);
INSERT INTO public.games VALUES (43, 723, 9);
INSERT INTO public.games VALUES (44, 572, 11);
INSERT INTO public.games VALUES (45, 353, 11);
INSERT INTO public.games VALUES (46, 651, 12);
INSERT INTO public.games VALUES (47, 724, 12);
INSERT INTO public.games VALUES (48, 160, 11);
INSERT INTO public.games VALUES (49, 241, 11);
INSERT INTO public.games VALUES (50, 220, 11);
INSERT INTO public.games VALUES (51, 10, 8);
INSERT INTO public.games VALUES (52, 812, 13);
INSERT INTO public.games VALUES (53, 571, 13);
INSERT INTO public.games VALUES (54, 196, 14);
INSERT INTO public.games VALUES (55, 719, 14);
INSERT INTO public.games VALUES (56, 303, 13);
INSERT INTO public.games VALUES (57, 629, 13);
INSERT INTO public.games VALUES (58, 649, 13);
INSERT INTO public.games VALUES (59, 8, 15);
INSERT INTO public.games VALUES (60, 278, 16);
INSERT INTO public.games VALUES (61, 729, 16);
INSERT INTO public.games VALUES (62, 985, 17);
INSERT INTO public.games VALUES (63, 878, 17);
INSERT INTO public.games VALUES (64, 469, 16);
INSERT INTO public.games VALUES (65, 468, 16);
INSERT INTO public.games VALUES (66, 350, 16);
INSERT INTO public.games VALUES (67, 253, 18);
INSERT INTO public.games VALUES (68, 836, 18);
INSERT INTO public.games VALUES (69, 496, 19);
INSERT INTO public.games VALUES (70, 527, 19);
INSERT INTO public.games VALUES (71, 468, 18);
INSERT INTO public.games VALUES (72, 367, 18);
INSERT INTO public.games VALUES (73, 35, 18);
INSERT INTO public.games VALUES (74, 765, 20);
INSERT INTO public.games VALUES (75, 404, 20);
INSERT INTO public.games VALUES (76, 509, 21);
INSERT INTO public.games VALUES (77, 961, 21);
INSERT INTO public.games VALUES (78, 417, 20);
INSERT INTO public.games VALUES (79, 36, 20);
INSERT INTO public.games VALUES (80, 438, 20);
INSERT INTO public.games VALUES (81, 557, 22);
INSERT INTO public.games VALUES (82, 986, 22);
INSERT INTO public.games VALUES (83, 993, 23);
INSERT INTO public.games VALUES (84, 259, 23);
INSERT INTO public.games VALUES (85, 151, 22);
INSERT INTO public.games VALUES (86, 834, 22);
INSERT INTO public.games VALUES (87, 273, 22);
INSERT INTO public.games VALUES (88, 496, 24);
INSERT INTO public.games VALUES (89, 168, 24);
INSERT INTO public.games VALUES (90, 610, 25);
INSERT INTO public.games VALUES (91, 367, 25);
INSERT INTO public.games VALUES (92, 312, 24);
INSERT INTO public.games VALUES (93, 505, 24);
INSERT INTO public.games VALUES (94, 247, 24);
INSERT INTO public.games VALUES (95, 69, 26);
INSERT INTO public.games VALUES (96, 57, 26);
INSERT INTO public.games VALUES (97, 637, 27);
INSERT INTO public.games VALUES (98, 427, 27);
INSERT INTO public.games VALUES (99, 346, 26);
INSERT INTO public.games VALUES (100, 279, 26);
INSERT INTO public.games VALUES (101, 743, 26);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'hola');
INSERT INTO public.users VALUES (8, 'hola2');
INSERT INTO public.users VALUES (15, 'HOLA3');



--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 101, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

