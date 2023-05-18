-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Data for Name: M_DataType; Type: TABLE DATA; Schema: public; Owner: user
--userinfo
INSERT INTO public."userinfo" (user_id,lastname, firstname, birthday, sex, city,create_datetime) 
VALUES ('1','data', 'test','19980304','1','Tokyo',now());
INSERT INTO public."userinfo" (user_id,lastname, firstname, birthday, sex, city,create_datetime) VALUES ('2','Bruce', 'Lee','19930625','2','Gothm',now());

--login
INSERT INTO public."login" (user_id,mail, password,create_datetime) 
VALUES ('1','datatest@el.com','199803041Tokyo',now());

INSERT INTO public."login" (user_id,mail, password,create_datetime) 
VALUES ('2','BruceLee@el.com','Goyhm199306252',now());





-- SEQUENCE
SELECT pg_catalog.setval('public."User_userinfo_use_id_seq"', 2, true);

SELECT pg_catalog.setval('public."User_login_user_id_seq"', 2, true);


