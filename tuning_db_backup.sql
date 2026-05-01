--
-- PostgreSQL database dump
--

\restrict OZVSuDf2f3RcbPGbdgSaz4gbo9dbqmzrRyeh30WNcBnYRydPstkoyRBQm9cSH9b

-- Dumped from database version 15.17 (Debian 15.17-1.pgdg13+1)
-- Dumped by pg_dump version 15.17 (Debian 15.17-1.pgdg13+1)

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
-- Name: infrastructure_assets; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.infrastructure_assets (
    id integer NOT NULL,
    service_name character varying(50) NOT NULL,
    status character varying(20),
    port integer,
    description text
);


ALTER TABLE public.infrastructure_assets OWNER TO "user";

--
-- Name: infrastructure_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.infrastructure_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infrastructure_assets_id_seq OWNER TO "user";

--
-- Name: infrastructure_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.infrastructure_assets_id_seq OWNED BY public.infrastructure_assets.id;


--
-- Name: tuning_parts; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.tuning_parts (
    id integer NOT NULL,
    part_name character varying(100) NOT NULL,
    category character varying(50),
    gain_estimate character varying(50),
    price_usd integer
);


ALTER TABLE public.tuning_parts OWNER TO "user";

--
-- Name: tuning_parts_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.tuning_parts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tuning_parts_id_seq OWNER TO "user";

--
-- Name: tuning_parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.tuning_parts_id_seq OWNED BY public.tuning_parts.id;


--
-- Name: infrastructure_assets id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.infrastructure_assets ALTER COLUMN id SET DEFAULT nextval('public.infrastructure_assets_id_seq'::regclass);


--
-- Name: tuning_parts id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.tuning_parts ALTER COLUMN id SET DEFAULT nextval('public.tuning_parts_id_seq'::regclass);


--
-- Data for Name: infrastructure_assets; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.infrastructure_assets (id, service_name, status, port, description) FROM stdin;
\.


--
-- Data for Name: tuning_parts; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.tuning_parts (id, part_name, category, gain_estimate, price_usd) FROM stdin;
1	Stage 1 ECU Remap	Двигатель	+30-40 hp	500
2	Coilovers (BC Racing)	Подвеска	Improved handling	1200
3	Cold Air Intake	Впуск	+5-10 hp	350
4	Forged Pistons	Двигатель	High boost ready	800
5	Carbon Fiber Spoiler	Экстерьер	Aero improvement	450
\.


--
-- Name: infrastructure_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.infrastructure_assets_id_seq', 1, false);


--
-- Name: tuning_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.tuning_parts_id_seq', 5, true);


--
-- Name: infrastructure_assets infrastructure_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.infrastructure_assets
    ADD CONSTRAINT infrastructure_assets_pkey PRIMARY KEY (id);


--
-- Name: tuning_parts tuning_parts_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.tuning_parts
    ADD CONSTRAINT tuning_parts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict OZVSuDf2f3RcbPGbdgSaz4gbo9dbqmzrRyeh30WNcBnYRydPstkoyRBQm9cSH9b

