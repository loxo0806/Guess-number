
CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO ******;

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO ******;


ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO ******;


CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO ******

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


SELECT pg_catalog.setval('public.games_game_id_seq', 101, true);


SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);



ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);



ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);

