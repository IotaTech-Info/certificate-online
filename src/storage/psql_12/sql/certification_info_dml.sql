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

INSERT INTO public."certification_info"(certification_id,certification_name,expiration_date,issuing_authority,certification_level,certification_tag)
VALUES('1','基本情報技術者試験','','IPA','2','IT');

INSERT INTO public."certification_info"(certification_id,certification_name,expiration_date,issuing_authority,certification_level,certification_tag)
VALUES('2','Java SE','','Oracle','2','IT');

pg_catalog.setval('public."certification_info_certification_id_seq"', 2, true);