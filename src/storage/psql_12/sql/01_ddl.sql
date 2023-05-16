
SET statement_timeout = 0;
SET lock_timeout = 0;
SET IDle_in_transaction_session_timeout = 0;
SET client_encoding = 'SJIS';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

------userinfo table------------
CREATE TABLE public."user"(
    userID integer(20) NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    ebworkID integer NOT NULL,
    email character varying(30),
    userType character varying(20)NOT NULL,
    sessionToken character varying(50),
    registerDate timestamp without time zone NOT NULL,
);
ALTER TABLE public."user" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "user_pkey" PRIMARY KEY (userID);
--foreign key
--primary key sequnence
CREATE SEQUENCE public."user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."use_seq" OWNED BY public."user".userID;
ALTER TABLE ONLY public."user" ALTER COLUMN userID SET DEFAULT nextval('public."use_seq"'::regclass);

------categories table------------
CREATE TABLE public."categories"(
    cateID integer NOT NULL,
    certName character varying(50) NOT NULL,
    description character varying(200) NOT NULL
);



ALTER TABLE public."categories" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."categories"
    ADD CONSTRAINT "categories_pkey" PRIMARY KEY (cateID);
--foreign key


------tags table------------
CREATE TABLE public."tags"(
    tagID integer NOT NULL,
    tagName character varying(50) NOT NULL
);

ALTER TABLE public."tags" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."tags"
    ADD CONSTRAINT "tags_pkey" PRIMARY KEY (tagID);
--foreign key



------tagRelate table------------
CREATE TABLE public."tagRelate"(
    cateID  integer NOT NULL,
    tagID  integer NOT NULL,
);
ALTER TABLE public."tagRelate" OWNER TO "user";
--primary key
--foreign key
ALTER TABLE ONLY public."tagRelate"
ADD CONSTRAINT "fk_cateID_tags" FOREIGN KEY(cateID)
REFERENCEs public.categories(cateID);

ALTER TABLE ONLY public."tagRelate"
ADD CONSTRAINT "fk_tagID_tags" FOREIGN KEY(tagID)
REFERENCEs public.tags(tagID);



------certs table------------
CREATE TABLE public."certs"(
    certID  integer NOT NULL,
    userID  integer NOT NULL,
    cateID  integer NOT NULL,
    file  character varying(50) NOT NULL,
    getDate  timestamp without time zone NOT NULL,
    status character varying(20) NOT NULL
);
ALTER TABLE public."certs" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."certs"
    ADD CONSTRAINT "certs_pkey" PRIMARY KEY (certID);
--foreign key
ALTER TABLE ONLY public."cert"
ADD CONSTRAINT "fk_userID" FOREIGN KEY(userID)
REFERENCEs public.user(userID);

ALTER TABLE ONLY public."cert"
ADD CONSTRAINT "fk_cateID" FOREIGN KEY(cateID)
REFERENCEs public.categories(cateID);
--primary key sequnence
CREATE SEQUENCE public."certs_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."certs_seq" OWNED BY public."certs".certID;
ALTER TABLE ONLY public."certs" ALTER COLUMN certID SET DEFAULT nextval('public."certs_seq"'::regclass);



------message table------------
CREATE TABLE public."message"(
      msgID  integer NOT NULL,
      userID  integer NOT NULL,
      msgContent character varying(200) NOT NULL,
      msgDate   timestamp without time zone NOT NULL,
      msgStatus  enum('既読','未読')
);
ALTER TABLE public."message" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."message"
ADD PRIMARY KEY(msgID);
--foreign key
ALTER TABLE ONLY public."message"
ADD CONSTRAINT "fk_user_ID" FOREIGN KEY(userID)
REFERENCEs public.user(userID);
--primary key sequnence
CREATE SEQUENCE public."message_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."message_seq" OWNED BY public."message".msgID;
ALTER TABLE ONLY public."message" ALTER COLUMN msgID SET DEFAULT nextval('public."message_seq"'::regclass);
