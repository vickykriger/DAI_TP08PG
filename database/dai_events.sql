--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2026-06-01 11:55:51

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4787 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16403)
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    full_name character varying(250) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL,
    display_order integer
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16402)
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.provinces_id_seq OWNER TO postgres;

--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;


--
-- TOC entry 4634 (class 2604 OID 16406)
-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);


--
-- TOC entry 4781 (class 0 OID 16403)
-- Dependencies: 216
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provinces VALUES (1, 'buenos_aires', 'Buenos Aires', -36.676900, -60.558800, 1);
INSERT INTO public.provinces VALUES (2, 'catamarca', 'Catamarca', -28.469600, -65.785200, 2);
INSERT INTO public.provinces VALUES (3, 'chaco', 'Chaco', -26.386400, -60.765300, 3);
INSERT INTO public.provinces VALUES (4, 'chubut', 'Chubut', -43.293400, -65.111500, 4);
INSERT INTO public.provinces VALUES (5, 'cordoba', 'Córdoba', -31.399300, -64.264400, 5);
INSERT INTO public.provinces VALUES (6, 'corrientes', 'Corrientes', -27.469200, -58.830600, 6);
INSERT INTO public.provinces VALUES (7, 'entre_rios', 'Entre Ríos', -32.058900, -59.201300, 7);
INSERT INTO public.provinces VALUES (8, 'formosa', 'Formosa', -24.895800, -60.016700, 8);
INSERT INTO public.provinces VALUES (9, 'jujuy', 'Jujuy', -23.319300, -65.764300, 9);
INSERT INTO public.provinces VALUES (10, 'la_pampa', 'La Pampa', -36.614800, -64.283900, 10);
INSERT INTO public.provinces VALUES (11, 'la_rioja', 'La Rioja', -29.413100, -66.855800, 11);
INSERT INTO public.provinces VALUES (12, 'mendoza', 'Mendoza', -34.787800, -68.438200, 12);
INSERT INTO public.provinces VALUES (13, 'misiones', 'Misiones', -27.367100, -55.896100, 13);
INSERT INTO public.provinces VALUES (14, 'neuquen', 'Neuquén', -38.641800, -70.118600, 14);
INSERT INTO public.provinces VALUES (15, 'rio_negro', 'Río Negro', -40.826100, -63.000000, 15);
INSERT INTO public.provinces VALUES (16, 'salta', 'Salta', -24.799800, -65.411700, 16);
INSERT INTO public.provinces VALUES (17, 'san_juan', 'San Juan', -30.865400, -68.889500, 17);
INSERT INTO public.provinces VALUES (18, 'san_luis', 'San Luis', -33.296200, -66.329500, 18);
INSERT INTO public.provinces VALUES (19, 'santa_cruz', 'Santa Cruz', -48.815600, -69.955800, 19);
INSERT INTO public.provinces VALUES (20, 'santa_fe', 'Santa Fe', -30.706900, -60.950000, 20);
INSERT INTO public.provinces VALUES (21, 'santiago_del_estero', 'Santiago del Estero', -27.783400, -64.264200, 21);
INSERT INTO public.provinces VALUES (22, 'tierra_del_fuego', 'Tierra del Fuego', -54.805400, -68.324200, 22);
INSERT INTO public.provinces VALUES (23, 'tucuman', 'Tucumán', -26.822100, -65.222600, 23);


--
-- TOC entry 4789 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinces_id_seq', 23, true);


--
-- TOC entry 4636 (class 2606 OID 16408)
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


-- Completed on 2026-06-01 11:55:51

--
-- PostgreSQL database dump complete
--

