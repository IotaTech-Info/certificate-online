------certification_info table------------
CREATE TABLE public."certification_info"(
    certification_id  integer NOT NULL,
    certification_name  character varying(50) NOT NULL,
    expiration_date  integer,
    issuing_authority  character varying(50) NOT NULL,
    certification_level  character varying(1) NOT NULL,
    certification_tag  character varying(10)
);
ALTER TABLE public."certification_info" OWNER TO "certification_id";
--primary key
ALTER TABLE ONLY public."certification_info"
    ADD CONSTRAINT "certification_info_pkey" PRIMARY KEY (certification_id);
--primary key sequnence
CREATE SEQUENCE public."certification_info_certification_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."certification_info_certification_id_seq" OWNED BY public."certification_info".certification_id; 
ALTER TABLE ONLY public."certification_info" ALTER COLUMN certification_id SET DEFAULT nextval('public."certification_info_certification_id_seq"'::regclass);
