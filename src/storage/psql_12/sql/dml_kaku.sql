-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

-- ダミーデータの挿入
INSERT INTO public."employee_info" (employee_code, lastname, firstname, birthday, sex, join_date, city, create_datetime, update_datetime, department, position, superior_employee_code)
VALUES
    (1, 'Smith', 'John', '1990-05-10', 'M', '2020-01-01', 'New York', NOW(), NULL, 'IT', 'Manager', NULL),
    (2, 'Johnson', 'Sarah', '1985-08-15', 'F', '2018-03-15', 'Los Angeles', NOW(), NULL, 'Sales', 'Associate', 1),
    (3, 'Williams', 'David', '1992-02-28', 'M', '2019-07-01', 'Chicago', NOW(), NULL, 'IT', 'Developer', 1),
    (4, 'Brown', 'Emily', '1995-11-20', 'F', '2021-02-10', 'San Francisco', NOW(), NULL, 'HR', 'Coordinator', 1);
