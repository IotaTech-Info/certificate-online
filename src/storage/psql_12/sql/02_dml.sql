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
--user
INSERT INTO public."user" (userId, username, password, ebworkid, registerDate, email, userType, sessionToken) VALUES (1,'data', 1, 1, now(),'123@123.com', '社員','xxxxx');
INSERT INTO public."user" (userId, username, password, ebworkid, registerDate, email, userType, sessionToken) VALUES (1,'data', 1, 1, now(),'456@123.com', 'リーダー','xxxxx');
--------categories
INSERT INTO public."certs" (cateID, certName, description) VALUES (1, "JAVA", "Java開発言語の資格証");
INSERT INTO public."certs" (cateID, certName, description) VALUES (2, "Python", "Python開発言語の資格証");
INSERT INTO public."certs" (cateID, certName, description) VALUES (3, "Golang", "Go開発言語の資格証");
--------tags
INSERT INTO public."certs" (tagID, tagName) VALUES (1, "front-end");
INSERT INTO public."certs" (tagID, tagName) VALUES (2, "back-end");
INSERT INTO public."certs" (tagID, tagName) VALUES (3, "DB");
--tagRelate
INSERT INTO public."tagRelate" (cateID, tagID) VALUES (1,1);
INSERT INTO public."tagRelate" (cateID, tagID) VALUES (2,1);
INSERT INTO public."tagRelate" (cateID, tagID) VALUES (3,1);
--------certs
INSERT INTO public."certs" (certId, userId, cateID, getDate, file, status) VALUES (1, 1, 1, now(), "./certs_file/1_1_1.jpg", "承認");
INSERT INTO public."certs" (certId, userId, cateID, getDate, file, status) VALUES (2, 1, 2, now(), "./certs_file/2_1_2.jpg", "拒否");
INSERT INTO public."certs" (certId, userId, cateID, getDate, file, status) VALUES (3, 2, 1, now(), "./certs_file/3_2_1.jpg", "承認待ち");
--message
INSERT INTO public."message" (ID,userId, msgContent, msgDate, msgStatus) VALUES (1,1, 'test',now(),'既読');
INSERT INTO public."message" (ID,userId, msgContent, msgDate, msgStatus) VALUES (2,1, 'test',now(),'未読');
