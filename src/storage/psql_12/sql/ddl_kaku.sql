SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UFT-8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

------employee_info table------------
CREATE TABLE public."employee_info" (
    employee_code integer NOT NULL,
    lastname character varying(50) NOT NULL,
    firstname character varying(50) NOT NULL,
    birthday date NOT NULL,
    sex character varying(1) NOT NULL,
    join_date date NOT NULL,
    city character varying(50) NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    update_datetime timestamp without time zone,
    department character varying(50),
    position character varying(50),
    superior_employee_code integer REFERENCES EMPLOYEE_INFO (employee_code)
);
--primary key
ALTER TABLE ONLY public."employee_info"
    ADD CONSTRAINT "employee_info_pkey" PRIMARY KEY (employee_code);
--foreign key
ALTER TABLE public."employee_info"
    ADD CONSTRAINT "employee_info_fkey" FOREIGN KEY (superior_employee_code)
    REFERENCES public."employee_info" (employee_code);