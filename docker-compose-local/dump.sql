--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

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
-- Name: stock_management; Type: SCHEMA; Schema: -; Owner: bijunwang
--

CREATE SCHEMA stock_management;


ALTER SCHEMA stock_management OWNER TO bijunwang;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: product; Type: TABLE; Schema: stock_management; Owner: bijunwang
--

CREATE TABLE stock_management.product (
    product_id bigint NOT NULL,
    is_deleted boolean,
    price double precision,
    product_create_date timestamp(6) without time zone,
    product_name character varying(255),
    product_update_date timestamp(6) without time zone,
    quantity integer
);


ALTER TABLE stock_management.product OWNER TO bijunwang;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: stock_management; Owner: bijunwang
--

CREATE SEQUENCE stock_management.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stock_management.product_product_id_seq OWNER TO bijunwang;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: stock_management; Owner: bijunwang
--

ALTER SEQUENCE stock_management.product_product_id_seq OWNED BY stock_management.product.product_id;


--
-- Name: product product_id; Type: DEFAULT; Schema: stock_management; Owner: bijunwang
--

ALTER TABLE ONLY stock_management.product ALTER COLUMN product_id SET DEFAULT nextval('stock_management.product_product_id_seq'::regclass);


--
-- Data for Name: product; Type: TABLE DATA; Schema: stock_management; Owner: bijunwang
--

COPY stock_management.product (product_id, is_deleted, price, product_create_date, product_name, product_update_date, quantity) FROM stdin;
3	f	50	2024-04-10 12:50:49.955	Iphone	2024-04-10 12:50:49.955	2
4	f	80	2024-04-10 13:02:59.167	Iphone	2024-04-10 13:02:59.167	5
5	f	30	2024-04-10 13:08:56.988	Airpos	2024-04-10 13:08:56.988	5
6	f	50	2024-04-10 20:01:49.544	Screen	2024-04-10 20:01:49.544	20
7	f	80	2024-04-10 20:06:25.521	mouse	2024-04-10 20:06:25.521	30
8	f	80	2024-04-10 20:09:50.209	mouse	2024-04-10 20:09:50.209	30
2	t	50	2024-04-10 12:49:45.588	Iphone	2024-04-11 11:32:59.992	2
9	f	100	2024-04-11 11:54:07.309	Camera	2024-04-11 11:54:07.309	5
1	t	30	2024-04-10 12:38:19.421	Cup	2024-04-11 11:58:00.976	3
\.


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: stock_management; Owner: bijunwang
--

SELECT pg_catalog.setval('stock_management.product_product_id_seq', 9, true);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: stock_management; Owner: bijunwang
--

ALTER TABLE ONLY stock_management.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- PostgreSQL database dump complete
--

