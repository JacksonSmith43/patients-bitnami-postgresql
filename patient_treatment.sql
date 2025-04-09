--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: doctors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctors (
    doctor_id integer NOT NULL,
    name character varying(30),
    specialisation character varying(40)
);


ALTER TABLE public.doctors OWNER TO postgres;

--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctors_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_doctor_id_seq OWNER TO postgres;

--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctors_doctor_id_seq OWNED BY public.doctors.doctor_id;


--
-- Name: hospitals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospitals (
    hospital_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.hospitals OWNER TO postgres;

--
-- Name: hospitals_hospital_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hospitals_hospital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hospitals_hospital_id_seq OWNER TO postgres;

--
-- Name: hospitals_hospital_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hospitals_hospital_id_seq OWNED BY public.hospitals.hospital_id;


--
-- Name: illnesses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.illnesses (
    illness_id integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public.illnesses OWNER TO postgres;

--
-- Name: illnesses_illness_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.illnesses_illness_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.illnesses_illness_id_seq OWNER TO postgres;

--
-- Name: illnesses_illness_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.illnesses_illness_id_seq OWNED BY public.illnesses.illness_id;


--
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    patient_id integer NOT NULL,
    first_name character varying(30),
    last_name character varying(30),
    birthdate date,
    place_id integer,
    doctor_id integer
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- Name: patient_patient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patient_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patient_patient_id_seq OWNER TO postgres;

--
-- Name: patient_patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patient_patient_id_seq OWNED BY public.patients.patient_id;


--
-- Name: treatments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treatments (
    treatment_id integer NOT NULL,
    treatment_type character varying(40),
    patient_id integer,
    doctor_id integer,
    illness_id integer,
    hospital_id integer,
    date date
);


ALTER TABLE public.treatments OWNER TO postgres;

--
-- Name: treatments_treatment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treatments_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.treatments_treatment_id_seq OWNER TO postgres;

--
-- Name: treatments_treatment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treatments_treatment_id_seq OWNED BY public.treatments.treatment_id;


--
-- Name: doctors doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctors_doctor_id_seq'::regclass);


--
-- Name: hospitals hospital_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospitals ALTER COLUMN hospital_id SET DEFAULT nextval('public.hospitals_hospital_id_seq'::regclass);


--
-- Name: illnesses illness_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.illnesses ALTER COLUMN illness_id SET DEFAULT nextval('public.illnesses_illness_id_seq'::regclass);


--
-- Name: patients patient_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN patient_id SET DEFAULT nextval('public.patient_patient_id_seq'::regclass);


--
-- Name: treatments treatment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments ALTER COLUMN treatment_id SET DEFAULT nextval('public.treatments_treatment_id_seq'::regclass);


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (doctor_id, name, specialisation) FROM stdin;
1	The Doctor	Weirdo Awareness
2	Hibbert	Neurology
3	Murphy	Endocrinologist
4	Naylor	Cardiology
5	Levy	Pulmonologists
6	Piper	Oncology
7	Ngozi	Psychiatry
\.


--
-- Data for Name: hospitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hospitals (hospital_id, name) FROM stdin;
1	Tardis Hospital
2	San Jose
3	Holby City
4	St James´s
5	Ninewells
6	Ninewells
7	Kings Cross
\.


--
-- Data for Name: illnesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.illnesses (illness_id, name) FROM stdin;
1	Autism
2	Fibromyalgie
3	Diabetes
4	Angina
5	Pneumonia
6	Cancer
7	OCD
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (patient_id, first_name, last_name, birthdate, place_id, doctor_id) FROM stdin;
1	Jackson	Smith	1998-02-23	\N	\N
2	Janet	Jackson	1957-03-24	\N	\N
3	Michael	Yoshi	2023-09-04	\N	\N
4	Donatello	O´Neil	1988-09-13	\N	\N
5	Mikey	Patrenko	1997-12-14	\N	\N
6	Raphael	Fedori	1907-01-02	\N	\N
7	Birgit	Cadogan	2023-02-22	\N	\N
\.


--
-- Data for Name: treatments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.treatments (treatment_id, treatment_type, patient_id, doctor_id, illness_id, hospital_id, date) FROM stdin;
1	Weirdness	\N	\N	\N	\N	2000-01-01
2	Check up	\N	\N	\N	\N	2000-01-01
4	Check up	\N	\N	\N	\N	2024-03-04
8	Check up	\N	\N	\N	\N	2024-07-09
10	Operation	\N	\N	\N	\N	2015-06-07
11	Medication	\N	\N	\N	\N	2014-05-06
14	Operation	\N	\N	\N	\N	2012-04-05
15	Hospitalisation	\N	\N	\N	\N	2001-02-02
\.


--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctors_doctor_id_seq', 7, true);


--
-- Name: hospitals_hospital_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hospitals_hospital_id_seq', 7, true);


--
-- Name: illnesses_illness_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.illnesses_illness_id_seq', 7, true);


--
-- Name: patient_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patient_patient_id_seq', 7, true);


--
-- Name: treatments_treatment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatments_treatment_id_seq', 15, true);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);


--
-- Name: hospitals hospitals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospitals
    ADD CONSTRAINT hospitals_pkey PRIMARY KEY (hospital_id);


--
-- Name: illnesses illnesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.illnesses
    ADD CONSTRAINT illnesses_pkey PRIMARY KEY (illness_id);


--
-- Name: patients patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patient_pkey PRIMARY KEY (patient_id);


--
-- Name: treatments treatments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_pkey PRIMARY KEY (treatment_id);


--
-- Name: treatments treatments_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(doctor_id);


--
-- Name: treatments treatments_hospital_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_hospital_id_fkey FOREIGN KEY (hospital_id) REFERENCES public.hospitals(hospital_id);


--
-- Name: treatments treatments_illness_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_illness_id_fkey FOREIGN KEY (illness_id) REFERENCES public.illnesses(illness_id);


--
-- Name: treatments treatments_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id);


--
-- PostgreSQL database dump complete
--

