--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

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
-- Name: Link; Type: TABLE; Schema: public; Owner: testuser
--

CREATE TABLE public."Link" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description text NOT NULL,
    url text NOT NULL,
    "postedById" text
);


ALTER TABLE public."Link" OWNER TO testuser;

--
-- Name: User; Type: TABLE; Schema: public; Owner: testuser
--

CREATE TABLE public."User" (
    id text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public."User" OWNER TO testuser;

--
-- Name: Vote; Type: TABLE; Schema: public; Owner: testuser
--

CREATE TABLE public."Vote" (
    id integer NOT NULL,
    "linkId" text NOT NULL,
    "userId" text NOT NULL
);


ALTER TABLE public."Vote" OWNER TO testuser;

--
-- Name: Vote_id_seq; Type: SEQUENCE; Schema: public; Owner: testuser
--

CREATE SEQUENCE public."Vote_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Vote_id_seq" OWNER TO testuser;

--
-- Name: Vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testuser
--

ALTER SEQUENCE public."Vote_id_seq" OWNED BY public."Vote".id;


--
-- Name: Vote id; Type: DEFAULT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."Vote" ALTER COLUMN id SET DEFAULT nextval('public."Vote_id_seq"'::regclass);


--
-- Data for Name: Link; Type: TABLE DATA; Schema: public; Owner: testuser
--

COPY public."Link" (id, "createdAt", description, url, "postedById") FROM stdin;
d53d2088-699e-4e74-81be-8ee6f6eaaad0	2023-01-27 18:25:57.706	Prisma gives you a powerful database toolkit 😎	https://prisma.io	\N
c2af31ed-892e-446d-88fb-baad70837645	2023-01-27 18:25:58.506	The best GraphQL client for React	https://www.apollographql.com/docs/react/	\N
626cb4d0-eb77-44cd-a6e8-e6cdc34b4d51	2023-01-27 18:25:59.796	The best learning resource for GraphQL	howtographql.com	\N
953c0bce-8e01-490e-9690-1fe34f3636d1	2023-01-30 18:55:51.752	search engine	https://www.google.com	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
1b2bf307-0fba-4588-9e05-e526d8baf5e3	2023-01-31 00:08:43.177	watch videos	https://youtube.com	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
dcf23875-857e-47b0-b218-ec24be82ef12	2023-01-31 03:05:44.998	container platform	https://www.docker.com	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: testuser
--

COPY public."User" (id, name, email, password) FROM stdin;
be2f8c2a-c2b3-4874-956c-f3c0f7347b26	tester	tester@example.com	$2a$10$Cj/dYU8nNCDLlkAv/ep2x.hdrWFfQ6JUpVGn9VbOjgu2g2X7p0ykO
b7ab685c-72b6-46da-9d7b-9b1d8373c21b	user1	user1	$2a$10$uwkkECnnICpkYzK7gVyJxerDeBDHH4OXC9/jCjpoEfQup0iwxbA5.
56733562-2056-42b3-9bcc-fe834c848aeb	test1	test1@example.com	$2a$10$d5CSKbTKWFNDPmyCVA0saefXYLKx1Rm0l7/uwvGZRPPNP0CYkAEb.
\.


--
-- Data for Name: Vote; Type: TABLE DATA; Schema: public; Owner: testuser
--

COPY public."Vote" (id, "linkId", "userId") FROM stdin;
1	626cb4d0-eb77-44cd-a6e8-e6cdc34b4d51	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
2	c2af31ed-892e-446d-88fb-baad70837645	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
3	d53d2088-699e-4e74-81be-8ee6f6eaaad0	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
4	dcf23875-857e-47b0-b218-ec24be82ef12	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
5	1b2bf307-0fba-4588-9e05-e526d8baf5e3	be2f8c2a-c2b3-4874-956c-f3c0f7347b26
6	dcf23875-857e-47b0-b218-ec24be82ef12	b7ab685c-72b6-46da-9d7b-9b1d8373c21b
7	1b2bf307-0fba-4588-9e05-e526d8baf5e3	b7ab685c-72b6-46da-9d7b-9b1d8373c21b
8	953c0bce-8e01-490e-9690-1fe34f3636d1	b7ab685c-72b6-46da-9d7b-9b1d8373c21b
9	626cb4d0-eb77-44cd-a6e8-e6cdc34b4d51	b7ab685c-72b6-46da-9d7b-9b1d8373c21b
10	c2af31ed-892e-446d-88fb-baad70837645	b7ab685c-72b6-46da-9d7b-9b1d8373c21b
\.


--
-- Name: Vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testuser
--

SELECT pg_catalog.setval('public."Vote_id_seq"', 10, true);


--
-- Name: Link Link_pkey; Type: CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."Link"
    ADD CONSTRAINT "Link_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: Vote Vote_pkey; Type: CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."Vote"
    ADD CONSTRAINT "Vote_pkey" PRIMARY KEY (id);


--
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: testuser
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- Name: Vote_linkId_userId_key; Type: INDEX; Schema: public; Owner: testuser
--

CREATE UNIQUE INDEX "Vote_linkId_userId_key" ON public."Vote" USING btree ("linkId", "userId");


--
-- Name: Link Link_postedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."Link"
    ADD CONSTRAINT "Link_postedById_fkey" FOREIGN KEY ("postedById") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Vote Vote_linkId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."Vote"
    ADD CONSTRAINT "Vote_linkId_fkey" FOREIGN KEY ("linkId") REFERENCES public."Link"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Vote Vote_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: testuser
--

ALTER TABLE ONLY public."Vote"
    ADD CONSTRAINT "Vote_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

