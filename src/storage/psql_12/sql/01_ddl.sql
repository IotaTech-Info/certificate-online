
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


    
--User系

------userinfo table------------
CREATE TABLE public."userinfo"(
    user_id integer NOT NULL,
    lastname character varying(50) NOT NULL,
    firstname character varying(50) NOT NULL,
    birthday character varying(10) NOT NULL,
    sex character varying(1) NOT NULL,
    company character varying(200),
    city character varying(200) NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    update_datetime timestamp without time zone
);
ALTER TABLE public."userinfo" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."userinfo"
    ADD CONSTRAINT "userinfo_pkey" PRIMARY KEY (user_id);
--foreign key
--primary key sequnence
CREATE SEQUENCE public."User_userinfo_use_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."User_userinfo_use_id_seq" OWNED BY public."userinfo".user_id;
ALTER TABLE ONLY public."userinfo" ALTER COLUMN user_id SET DEFAULT nextval('public."User_userinfo_use_id_seq"'::regclass);


------login table------------
CREATE TABLE public."login"(
    user_id integer NOT NULL,
    mail character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    create_datetime  timestamp without time zone NOT NULL,
    update_datetime  timestamp without time zone
);
ALTER TABLE public."login" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."login"
    ADD CONSTRAINT "login_pkey" PRIMARY KEY (user_id);
--foreign key
--primary key sequnence
CREATE SEQUENCE public."User_login_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."User_login_user_id_seq" OWNED BY public."login".user_id;
ALTER TABLE ONLY public."login" ALTER COLUMN user_id SET DEFAULT nextval('public."User_login_user_id_seq"'::regclass);


------login_event table------------
CREATE TABLE public."login_event"(
    user_id integer NOT NULL,
    login_datetime  timestamp without time zone NOT NULL,
    logout_datetime  timestamp without time zone
);
ALTER TABLE public."login_event" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."login_event"
ADD PRIMARY KEY(user_id, login_datetime);
--foreign key
--primary key sequnence


--Product
------certificate table------------
CREATE TABLE public."certificate"(
    certificate_id  integer NOT NULL,
    certificate_category  character varying(50) NOT NULL,
    certificate_name  character varying(50) NOT NULL,
    certificate_description  character varying(500) NOT NULL,
    create_datetime  timestamp without time zone NOT NULL,
    update_datetime  timestamp without time zone
); 
ALTER TABLE public."certificate" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."certificate"
    ADD CONSTRAINT "certificate_pkey" PRIMARY KEY (test_id);
--foreign key
--primary key sequnence
CREATE SEQUENCE public."Product_certificate_certificate_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."Product_certificate_certificate_id_seq" OWNED BY public."certificate".test_id;
ALTER TABLE ONLY public."certificate" ALTER COLUMN test_id SET DEFAULT nextval('public."Product_certificate_certificate_id_seq"'::regclass);


--certificate系
------certificate_event table------------
CREATE TABLE public."certificate_event"(
    certificate_event_id  integer NOT NULL,
    user_id  integer NOT NULL,
    certificate_id  integer NOT NULL,
    certificate_status  integer NOT NULL,
    expected_date timestamp without time zone NOT NULL,
    acquisition_date timestamp without time zone,
    create_datetime  timestamp without time zone NOT NULL,
    update_datetime  timestamp without time zone
);
ALTER TABLE public."certificate_event" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."certificate_event"
    ADD CONSTRAINT "certificate_event_pkey" PRIMARY KEY (certificate_event_id);
--foreign key
ALTER TABLE ONLY public."certificate_event"
ADD CONSTRAINT "fk_user_id" FOREIGN KEY(user_id)
REFERENCEs public.userinfo(user_id);

ALTER TABLE ONLY public."certificate_event"
ADD CONSTRAINT "fk_certificate_id" FOREIGN KEY(certificate_id)
REFERENCEs public.certificate(certificate_id);
--primary key sequnence
CREATE SEQUENCE public."Certificate_certificate_event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."Certificate_certificate_event_id_seq" OWNED BY public."exam_event".exam_event_id;
ALTER TABLE ONLY public."certificate_event" ALTER COLUMN exam_event_id SET DEFAULT nextval('public."Certificate_certificate_event_id_seq"'::regclass);
