--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: exam_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam_type (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.exam_type OWNER TO postgres;

--
-- Name: exam_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exam_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exam_type_id_seq OWNER TO postgres;

--
-- Name: exam_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exam_type_id_seq OWNED BY public.exam_type.id;


--
-- Name: exams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exams (
    id integer NOT NULL,
    name text NOT NULL,
    link text NOT NULL,
    professor_id integer NOT NULL,
    subject_id integer NOT NULL,
    exam_type_id integer NOT NULL
);


ALTER TABLE public.exams OWNER TO postgres;

--
-- Name: exams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exams_id_seq OWNER TO postgres;

--
-- Name: exams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exams_id_seq OWNED BY public.exams.id;


--
-- Name: professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professor (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.professor OWNER TO postgres;

--
-- Name: professor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_id_seq OWNER TO postgres;

--
-- Name: professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professor_id_seq OWNED BY public.professor.id;


--
-- Name: semester; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.semester (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.semester OWNER TO postgres;

--
-- Name: semester_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.semester_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.semester_id_seq OWNER TO postgres;

--
-- Name: semester_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.semester_id_seq OWNED BY public.semester.id;


--
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer NOT NULL,
    name text NOT NULL,
    semester_id integer NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subject_id_seq OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;


--
-- Name: subjects_professors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects_professors (
    id integer NOT NULL,
    professor_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.subjects_professors OWNER TO postgres;

--
-- Name: subjects_professors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_professors_id_seq OWNER TO postgres;

--
-- Name: subjects_professors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_professors_id_seq OWNED BY public.subjects_professors.id;


--
-- Name: exam_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_type ALTER COLUMN id SET DEFAULT nextval('public.exam_type_id_seq'::regclass);


--
-- Name: exams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams ALTER COLUMN id SET DEFAULT nextval('public.exams_id_seq'::regclass);


--
-- Name: professor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor ALTER COLUMN id SET DEFAULT nextval('public.professor_id_seq'::regclass);


--
-- Name: semester id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semester ALTER COLUMN id SET DEFAULT nextval('public.semester_id_seq'::regclass);


--
-- Name: subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);


--
-- Name: subjects_professors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects_professors ALTER COLUMN id SET DEFAULT nextval('public.subjects_professors_id_seq'::regclass);


--
-- Data for Name: exam_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam_type (id, name) FROM stdin;
1	P1
2	P2
3	P3
4	2CH
5	Outras
\.


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exams (id, name, link, professor_id, subject_id, exam_type_id) FROM stdin;
1	2019.1	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	1	1	1
2	2019.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	1	2	4
3	2018.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	2	6	2
4	2018.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	2	4	5
5	2018.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	2	4	3
6	2020.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	3	4	3
7	2020.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	4	1	3
8	2020.2	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	4	2	1
9	2020.1	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	5	5	5
10	2020.1	https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem/provas-e-gabaritos	3	3	1
13	2014.2	https://react.school/styled-components/	2	3	1
\.


--
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professor (id, name) FROM stdin;
1	Andrezza Soares
2	Angelica Rodrigues
3	Bruno Kohn
4	Diego Mamede
5	Erick Silva
\.


--
-- Data for Name: semester; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.semester (id, name) FROM stdin;
1	1º Período
2	2º Período
3	3º Período
4	4º Período
5	5º Período
6	6º Período
\.


--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (id, name, semester_id) FROM stdin;
1	HTML	1
2	CSS	2
3	JavaScript	3
4	React	4
5	NodeJS	5
6	PostgreSQL	6
\.


--
-- Data for Name: subjects_professors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects_professors (id, professor_id, subject_id) FROM stdin;
1	1	1
2	1	2
3	2	1
4	2	2
5	2	3
6	3	3
7	3	4
8	4	4
9	4	5
10	4	6
11	5	6
\.


--
-- Name: exam_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exam_type_id_seq', 12, true);


--
-- Name: exams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exams_id_seq', 16, true);


--
-- Name: professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professor_id_seq', 5, true);


--
-- Name: semester_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.semester_id_seq', 6, true);


--
-- Name: subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_id_seq', 6, true);


--
-- Name: subjects_professors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_professors_id_seq', 11, true);


--
-- Name: exam_type exam_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_type
    ADD CONSTRAINT exam_type_pk PRIMARY KEY (id);


--
-- Name: exams exams_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_pk PRIMARY KEY (id);


--
-- Name: professor professor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pk PRIMARY KEY (id);


--
-- Name: semester semester_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semester
    ADD CONSTRAINT semester_pk PRIMARY KEY (id);


--
-- Name: subject subject_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pk PRIMARY KEY (id);


--
-- Name: subjects_professors subjects_professors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects_professors
    ADD CONSTRAINT subjects_professors_pk PRIMARY KEY (id);


--
-- Name: exams exams_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_fk0 FOREIGN KEY (professor_id) REFERENCES public.professor(id);


--
-- Name: exams exams_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_fk1 FOREIGN KEY (subject_id) REFERENCES public.subject(id);


--
-- Name: exams exams_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_fk2 FOREIGN KEY (exam_type_id) REFERENCES public.exam_type(id);


--
-- Name: subject subject_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_fk0 FOREIGN KEY (semester_id) REFERENCES public.semester(id);


--
-- Name: subjects_professors subjects_professors_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects_professors
    ADD CONSTRAINT subjects_professors_fk0 FOREIGN KEY (professor_id) REFERENCES public.professor(id);


--
-- Name: subjects_professors subjects_professors_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects_professors
    ADD CONSTRAINT subjects_professors_fk1 FOREIGN KEY (subject_id) REFERENCES public.subject(id);


--
-- PostgreSQL database dump complete
--
