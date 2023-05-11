
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SJIS';
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
------exam table------------
CREATE TABLE public."exam"(
    test_id  integer NOT NULL,
    test_category  character varying(50) NOT NULL,
    test_name  character varying(50) NOT NULL,
    description  character varying(500) NOT NULL,
    create_datetime  timestamp without time zone NOT NULL,
    update_datetime  timestamp without time zone
); 
ALTER TABLE public."exam" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."exam"
    ADD CONSTRAINT "exam_pkey" PRIMARY KEY (test_id);
--foreign key
--primary key sequnence
CREATE SEQUENCE public."Product_Exam_exam_test_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."Product_Exam_exam_test_id_seq" OWNED BY public."exam".test_id;
ALTER TABLE ONLY public."exam" ALTER COLUMN test_id SET DEFAULT nextval('public."Product_Exam_exam_test_id_seq"'::regclass);


------question table------------
CREATE TABLE public."question"(
     question_id  integer NOT NULL,
     test_id  integer NOT NULL,
     text  character varying(500) NOT NULL,
     code  character varying(500),
     right_select_count  integer NOT NULL,
     create_datetime  timestamp without time zone NOT NULL,
     update_datetime  timestamp without time zone
); 
ALTER TABLE public."question" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."question"
ADD PRIMARY KEY(question_id, test_id);
--foreign key


------option table------------
CREATE TABLE public."option"(
      option_id  integer NOT NULL,
      question_id  integer NOT NULL,
      test_id  integer NOT NULL,
      text  character varying(500) NOT NULL,
      right_or_wrong  boolean NOT NULL,
      create_datetime  timestamp without time zone NOT NULL,
      update_datetime  timestamp without time zone
); 
ALTER TABLE public."option" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."option"
ADD PRIMARY KEY(option_id, question_id, test_id);
--foreign key


--Test系
------exam_event table------------
CREATE TABLE public."exam_event"(
    exam_event_id  integer NOT NULL,
    user_id  integer NOT NULL,
    test_id  integer NOT NULL,
    test_result  integer NOT NULL,
    create_datetime  timestamp without time zone NOT NULL,
    update_datetime  timestamp without time zone
);
ALTER TABLE public."exam_event" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."exam_event"
    ADD CONSTRAINT "exam_event_pkey" PRIMARY KEY (exam_event_id);
--foreign key
ALTER TABLE ONLY public."exam_event"
ADD CONSTRAINT "fk_user_id" FOREIGN KEY(user_id)
REFERENCEs public.userinfo(user_id);

ALTER TABLE ONLY public."exam_event"
ADD CONSTRAINT "fk_test_id" FOREIGN KEY(test_id)
REFERENCEs public.exam(test_id);
--primary key sequnence
CREATE SEQUENCE public."Exam_exam_event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."Exam_exam_event_id_seq" OWNED BY public."exam_event".exam_event_id;
ALTER TABLE ONLY public."exam_event" ALTER COLUMN exam_event_id SET DEFAULT nextval('public."Exam_exam_event_id_seq"'::regclass);

------user_test_answer table------------
CREATE TABLE public."user_test_answer"(
    exam_event_id  integer NOT NULL,
    question_id  integer NOT NULL,
    user_answer_right_or_wrong  boolean NOT NULL,
    user_answer_option  character varying(50) NOT NULL,
    create_datetime  timestamp without time zone NOT NULL,
    update_datetime  timestamp without time zone
);
ALTER TABLE public."user_test_answer" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."user_test_answer"
ADD PRIMARY KEY(exam_event_id, question_id);
--foreign key
--primary key sequnence
